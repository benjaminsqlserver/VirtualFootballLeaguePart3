using System;
using System.Linq;
using System.Collections.Generic;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;

using Microsoft.AspNetCore.OData.Query;
using Microsoft.AspNetCore.OData.Routing.Controllers;
using Microsoft.AspNetCore.OData.Results;
using Microsoft.AspNetCore.OData.Deltas;

using Microsoft.Extensions.Hosting;
using VirtualLeague.Data;
using VirtualLeague.Models;

namespace VirtualLeague.Controllers
{
    [Authorize]
    [Route("auth/ApplicationUsers")]
    public partial class ApplicationUsersController : ODataController
    {
        private readonly UserManager<ApplicationUser> userManager;
        private readonly Microsoft.AspNetCore.Hosting.IWebHostEnvironment env;
        private readonly ApplicationIdentityDbContext context;

        public ApplicationUsersController(UserManager<ApplicationUser> userManager, Microsoft.AspNetCore.Hosting.IWebHostEnvironment env, ApplicationIdentityDbContext context)
        {
            this.userManager = userManager;
            this.env = env;
            this.context = context;
        }

        partial void OnUsersRead(ref IQueryable<ApplicationUser> users);

        [Authorize]
        [EnableQuery]
        [HttpGet]
        public IEnumerable<ApplicationUser> Get()
        {
            var users = userManager.Users;
            OnUsersRead(ref users);

            return users;
        }

        partial void OnUserRead(ApplicationUser user);

        [EnableQuery]
        [HttpGet("{Id}")]
        public async Task<IActionResult> GetApplicationUser(string key)
        {
            var user = await userManager.FindByIdAsync(key);

            if (user == null)
            {
                if (env.EnvironmentName == "Development")
                {
                    var name = HttpContext.User.FindFirst(System.Security.Claims.ClaimTypes.Name);
                    var email = HttpContext.User.FindFirst(System.Security.Claims.ClaimTypes.Email);

                    if (name?.Value == "admin" && email?.Value == "admin")
                    {
                        return new ObjectResult(new ApplicationUser { UserName = email?.Value, Email = email?.Value });
                    }
                }

                return NotFound();
            }

            OnUserRead(user);

            user.RoleNames = await userManager.GetRolesAsync(user);

            return new ObjectResult(user);
        }

        partial void OnUserDeleted(ApplicationUser user);

        [Authorize]
        [HttpDelete("{Id}")]
        public async Task<IActionResult> Delete(string key)
        {
            var user = await userManager.FindByIdAsync(key);

            if (user == null)
            {
                return NotFound();
            }

            OnUserDeleted(user);

            var result = await userManager.DeleteAsync(user);

            if (!result.Succeeded)
            {
                return IdentityError(result);
            }

            return new NoContentResult();
        }

        partial void OnUserUpdated(ApplicationUser user);

        [Authorize]
        [HttpPatch("{Id}")]
        public async Task<IActionResult> Patch(string key, [FromBody] System.Dynamic.ExpandoObject json)
        {
            var user = await userManager.FindByIdAsync(key);

            if (user == null)
            {
                return NotFound();
            }

            var data = System.Text.Json.JsonSerializer.Deserialize<ApplicationUser>(System.Text.Json.JsonSerializer.Serialize(json));

            var roles = data.RoleNames;

            OnUserUpdated(user);

            IdentityResult result = null;

            if (roles != null)
            {
                result = await userManager.RemoveFromRolesAsync(user, await userManager.GetRolesAsync(user));

                if (!result.Succeeded)
                {
                    return IdentityError(result);
                }

                if(roles.Any()) 
                {
                    result = await userManager.AddToRolesAsync(user, roles);
                }

                if (!result.Succeeded)
                {
                    return IdentityError(result);
                }
            }

            var password = data.Password;

            if (!string.IsNullOrEmpty(password))
            {
                result = await userManager.RemovePasswordAsync(user);

                if (!result.Succeeded)
                {
                    return IdentityError(result);
                }

                result = await userManager.AddPasswordAsync(user, password);

                if (!result.Succeeded)
                {
                    return IdentityError(result);
                }
            }

            EntityPatch.Apply(user, data);

            result = await userManager.UpdateAsync(user);

            if (!result.Succeeded)
            {
                return IdentityError(result);
            }

            return new NoContentResult();
        }

        partial void OnUserCreated(ApplicationUser user);

        [Authorize]
        [HttpPost]
        public async Task<IActionResult> Post([FromBody] System.Dynamic.ExpandoObject json)
        {
            var data = System.Text.Json.JsonSerializer.Deserialize<ApplicationUser>(System.Text.Json.JsonSerializer.Serialize(json));
            var email = data.Email;
            var password = data.Password;

            var user = new ApplicationUser { UserName = email, Email = email };

            EntityPatch.Apply(user, data);

            OnUserCreated(user);

            IdentityResult result = null;

            result = await userManager.CreateAsync(user, password);

            if (result.Succeeded)
            {
                var roles = data.RoleNames;

                if (roles != null && roles.Any())
                {
                    result = await userManager.AddToRolesAsync(user, roles);

                    if (!result.Succeeded)
                    {
                        return IdentityError(result);
                    }
                }

                user.RoleNames = roles;
                return Created($"auth/Users('{user.Id}')", user);
            }
            else
            {
                return IdentityError(result);
            }
        }

        private IActionResult IdentityError(IdentityResult result)
        {
            var message = string.Join(", ", result.Errors.Select(error => error.Description));

            return BadRequest(new { error = new { message } });
        }
    }

}
