using System;
using System.Web;
using System.Linq;
using System.Collections.Generic;
using System.Net.Http;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Components;
using System.Security.Claims;
using VirtualLeague.Models;
using Microsoft.AspNetCore.Components.WebAssembly.Hosting;
using Radzen;
using System.Text;
using System.Text.Json;
using Microsoft.AspNetCore.Components.Authorization;

namespace VirtualLeague
{
    public partial class SecurityService
    {
        public event Action Authenticated;

        private readonly HttpClient httpClient;
        private readonly Uri baseUri;
        private readonly NavigationManager navigationManager;
        private readonly GlobalsService globals;
        private readonly IWebAssemblyHostEnvironment env;

        public SecurityService(NavigationManager navigationManager,
            HttpClient httpClient, GlobalsService globals,
            IWebAssemblyHostEnvironment env)
        {
            this.httpClient = httpClient;
            this.baseUri = new Uri($"{navigationManager.BaseUri}auth/");
            this.navigationManager = navigationManager;
            this.globals = globals;
            this.env = env;
        }

        ApplicationUser user;
        public ApplicationUser User
        {
            get
            {
                if(user == null)
                {
                    return new ApplicationUser() { Name = "Anonymous" };
                }

                return user;
            }
        }

        public ClaimsPrincipal Principal { get; set; }

        public bool IsInRole(params string[] roles)
        {
            if (env.IsDevelopment() && User.Name == "admin")
            {
                return true;
            }

            if (roles.Contains("Everybody"))
            {
                return true;
            }

            if (!IsAuthenticated())
            {
                return false;
            }

            if (roles.Contains("Authenticated"))
            {
                return true;
            }

            return roles.Any(role => Principal.IsInRole(role));
        }

        public bool IsAuthenticated()
        {
            return Principal != null ? Principal.Identity.IsAuthenticated : false;
        }

        public async Task<bool> InitializeAsync(AuthenticationStateProvider authenticationStateProvider)
        {
            var result = await authenticationStateProvider.GetAuthenticationStateAsync();

            Principal = result.User;

            if (Principal != null)
            {
                var userId = Principal.FindFirstValue("sub");
                if (userId != null)
                {
                    user = await GetUserById(userId);
                    Authenticated?.Invoke();
                }
            }

            return IsAuthenticated();
        }

        public async Task Logout()
        {
            navigationManager.NavigateTo("Account/Logout", true);
        }

        public async Task<bool> Login(string userName, string password)
        {
            navigationManager.NavigateTo("Login", true);

            return true;
        }

        // Roles
        public async System.Threading.Tasks.Task<IEnumerable<IdentityRole>> GetRoles()
        {
            var uri = new Uri(baseUri, $"ApplicationRoles");

            uri = uri.GetODataUri();

            var httpRequestMessage = new HttpRequestMessage(HttpMethod.Get, uri);

            var response = await httpClient.SendAsync(httpRequestMessage);

            var result = await response.ReadAsync<ODataServiceResult<IdentityRole>>();

            return result.Value;
        }

        public async System.Threading.Tasks.Task<IdentityRole> CreateRole(IdentityRole role = default(IdentityRole))
        {
            var uri = new Uri(baseUri, $"ApplicationRoles");

            var httpRequestMessage = new HttpRequestMessage(HttpMethod.Post, uri);

            httpRequestMessage.Content = new StringContent(ODataJsonSerializer.Serialize(role), Encoding.UTF8, "application/json");

            var response = await httpClient.SendAsync(httpRequestMessage);

            return await response.ReadAsync<IdentityRole>();
        }

        public async System.Threading.Tasks.Task<HttpResponseMessage> DeleteRole(string id = default(string))
        {
            var uri = new Uri(baseUri, $"ApplicationRoles('{id}')");

            var httpRequestMessage = new HttpRequestMessage(HttpMethod.Delete, uri);

            return await httpClient.SendAsync(httpRequestMessage);
        }

        // Users
        public async System.Threading.Tasks.Task<IEnumerable<ApplicationUser>> GetUsers()
        {
            var uri = new Uri(baseUri, $"ApplicationUsers");


            uri = uri.GetODataUri();

            var httpRequestMessage = new HttpRequestMessage(HttpMethod.Get, uri);

            var response = await httpClient.SendAsync(httpRequestMessage);

            var result = await response.ReadAsync<ODataServiceResult<ApplicationUser>>();

            return result.Value;
        }

        public async System.Threading.Tasks.Task<ApplicationUser> CreateUser(ApplicationUser user = default(ApplicationUser))
        {
            var uri = new Uri(baseUri, $"ApplicationUsers");

            var httpRequestMessage = new HttpRequestMessage(HttpMethod.Post, uri);
            httpRequestMessage.Content = new StringContent(JsonSerializer.Serialize(user), Encoding.UTF8, "application/json");

            var response = await httpClient.SendAsync(httpRequestMessage);

            return await response.ReadAsync<ApplicationUser>();
        }

        public async System.Threading.Tasks.Task<HttpResponseMessage> DeleteUser(string id = default(string))
        {
            var uri = new Uri(baseUri, $"ApplicationUsers('{id}')");

            var httpRequestMessage = new HttpRequestMessage(HttpMethod.Delete, uri);

            return await httpClient.SendAsync(httpRequestMessage);
        }

        public async System.Threading.Tasks.Task<ApplicationUser> GetUserById(string id = default(string))
        {
            var uri = new Uri(baseUri, $"ApplicationUsers('{id}')");

            var httpRequestMessage = new HttpRequestMessage(HttpMethod.Get, uri);

            var response = await httpClient.SendAsync(httpRequestMessage);

            if (response.StatusCode == System.Net.HttpStatusCode.NotFound)
            {
                return null;
            }

            return await response.ReadAsync<ApplicationUser>();
        }

        public async System.Threading.Tasks.Task<HttpResponseMessage> UpdateUser(string id = default(string), ApplicationUser user = default(ApplicationUser))
        {
            var uri = new Uri(baseUri, $"ApplicationUsers('{id}')");

            var httpRequestMessage = new HttpRequestMessage(HttpMethod.Patch, uri);

            httpRequestMessage.Content = new StringContent(JsonSerializer.Serialize(user), Encoding.UTF8, "application/json");

            return await httpClient.SendAsync(httpRequestMessage);
        }
    }
}
