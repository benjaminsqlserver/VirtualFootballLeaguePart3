using System;
using System.Linq;
using System.Net.Http;
using System.Collections.Generic;
using System.Threading.Tasks;
using System.Text;
using Microsoft.AspNetCore.Components.WebAssembly.Hosting;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;
using Radzen;

namespace VirtualLeague
{
    public partial class Program
    {
        static partial void OnConfigureBuilder(WebAssemblyHostBuilder builder);

        public static async Task Main(string[] args)
        {
            var builder = WebAssemblyHostBuilder.CreateDefault(args);
            builder.RootComponents.Add<Client.App>("app");
            builder.RootComponents.Add<Microsoft.AspNetCore.Components.Web.HeadOutlet>("head::after");
            builder.Services.AddScoped<DialogService>();
            builder.Services.AddScoped<NotificationService>();
            builder.Services.AddScoped<TooltipService>();
            builder.Services.AddScoped<ContextMenuService>();
            builder.Services.AddScoped<GlobalsService>();

            builder.Services.AddScoped<SecurityService>();

            builder.Services.AddHttpClient("VirtualLeague.ServerAPI", client => client.BaseAddress = new Uri(builder.HostEnvironment.BaseAddress))
                .AddHttpMessageHandler<Microsoft.AspNetCore.Components.WebAssembly.Authentication.BaseAddressAuthorizationMessageHandler>();

            builder.Services.AddTransient(sp => sp.GetRequiredService<IHttpClientFactory>().CreateClient("VirtualLeague.ServerAPI"));
            builder.Services.AddApiAuthorization().AddAccountClaimsPrincipalFactory<RolesClaimsPrincipalFactory>();

            builder.Services.AddScoped<ConDataService>();

            OnConfigureBuilder(builder);

            var host = builder.Build();

            await host.RunAsync();
        }
    }

    public class RolesClaimsPrincipalFactory : Microsoft.AspNetCore.Components.WebAssembly.Authentication.AccountClaimsPrincipalFactory<Microsoft.AspNetCore.Components.WebAssembly.Authentication.RemoteUserAccount>
    {
        public RolesClaimsPrincipalFactory(Microsoft.AspNetCore.Components.WebAssembly.Authentication.Internal.IAccessTokenProviderAccessor accessor) : base(accessor)
        {
        }

        public override async ValueTask<System.Security.Claims.ClaimsPrincipal> CreateUserAsync(Microsoft.AspNetCore.Components.WebAssembly.Authentication.RemoteUserAccount account, Microsoft.AspNetCore.Components.WebAssembly.Authentication.RemoteAuthenticationUserOptions options)
        {
            var user = await base.CreateUserAsync(account, options);
            if (user.Identity.IsAuthenticated)
            {
                var identity = (System.Security.Claims.ClaimsIdentity)user.Identity;
                var roleClaims = identity.FindAll(identity.RoleClaimType).ToList();
                if (roleClaims != null && roleClaims.Any())
                {
                    foreach (var existingClaim in roleClaims)
                    {
                        identity.RemoveClaim(existingClaim);
                    }

                    var rolesElem = account.AdditionalProperties[identity.RoleClaimType];
                    if (rolesElem is System.Text.Json.JsonElement roles)
                    {
                        if (roles.ValueKind == System.Text.Json.JsonValueKind.Array)
                        {
                            foreach (var role in roles.EnumerateArray())
                            {
                                identity.AddClaim(new System.Security.Claims.Claim(options.RoleClaim, role.GetString()));
                            }
                        }
                        else
                        {
                            identity.AddClaim(new System.Security.Claims.Claim(options.RoleClaim, roles.GetString()));
                        }
                    }
                }
            }

            return user;
        }
    }
}
