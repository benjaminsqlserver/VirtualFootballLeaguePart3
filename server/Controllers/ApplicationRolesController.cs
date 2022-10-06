using System.Linq;
using System.Collections.Generic;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
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
    
    [Route("auth/ApplicationRoles")]
    public partial class ApplicationRolesController : ODataController
    {
       private readonly RoleManager<IdentityRole> roleManager;
       private readonly Microsoft.AspNetCore.Hosting.IWebHostEnvironment env;
       private readonly ApplicationIdentityDbContext context;

       public ApplicationRolesController(RoleManager<IdentityRole> roleManager, Microsoft.AspNetCore.Hosting.IWebHostEnvironment env, ApplicationIdentityDbContext context)
       {
           this.roleManager = roleManager;
           this.env = env;
           this.context = context;
       }

       partial void OnRolesRead(ref IQueryable<IdentityRole> roles);

       [EnableQuery]
       [HttpGet]
       public IEnumerable<IdentityRole> Get()
       {
           var roles = roleManager.Roles;
           OnRolesRead(ref roles);

           return roles;
       }

       partial void OnRoleCreated(IdentityRole role);

       [HttpPost]
       public async Task<IActionResult> Post([FromBody] IdentityRole role)
       {
           if (role == null)
           {
               return BadRequest();
           }

           OnRoleCreated(role);

           var result = await roleManager.CreateAsync(role);

           if (!result.Succeeded)
           {
               var message = string.Join(", ", result.Errors.Select(error => error.Description));

               return BadRequest(new { error = new { message }});
           }

           return Created($"auth/Roles('{role.Id}')", role);
       }

       partial void OnRoleDeleted(IdentityRole role);

       [HttpDelete("{Id}")]
       public async Task<IActionResult> Delete(string key)
       {
           var role = await roleManager.FindByIdAsync(key);

           if (role == null)
           {
               return NotFound();
           }

           OnRoleDeleted(role);

           var result = await roleManager.DeleteAsync(role);

           if (!result.Succeeded)
           {
               var message = string.Join(", ", result.Errors.Select(error => error.Description));

               return BadRequest(new { error = new { message }});
           }

           return new NoContentResult();
       }
    }
}
