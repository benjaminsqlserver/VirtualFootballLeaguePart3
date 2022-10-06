using System;
using System.Net;
using System.Data;
using System.Linq;
using Microsoft.Data.SqlClient;
using System.Collections.Generic;
using Newtonsoft.Json.Linq;
using Microsoft.AspNetCore.Mvc;

using Microsoft.AspNetCore.OData.Query;
using Microsoft.AspNetCore.OData.Routing.Controllers;
using Microsoft.AspNetCore.OData.Results;
using Microsoft.AspNetCore.OData.Deltas;
using Microsoft.AspNetCore.OData.Formatter;

using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Internal;




namespace VirtualLeague.Controllers.ConData
{
  using Models;
  using Data;
  using Models.ConData;

  [Route("odata/ConData/SeasonFixtures")]
  public partial class SeasonFixturesController : ODataController
  {
    private VirtualLeague.Data.ConDataContext context;

    public SeasonFixturesController(VirtualLeague.Data.ConDataContext context)
    {
      this.context = context;
    }
    // GET /odata/ConData/SeasonFixtures
    [EnableQuery(MaxExpansionDepth=10,MaxAnyAllExpressionDepth=10,MaxNodeCount=1000)]
    [HttpGet]
    public IEnumerable<Models.ConData.SeasonFixture> GetSeasonFixtures()
    {
      var items = this.context.SeasonFixtures.AsQueryable<Models.ConData.SeasonFixture>();
      this.OnSeasonFixturesRead(ref items);

      return items;
    }

    partial void OnSeasonFixturesRead(ref IQueryable<Models.ConData.SeasonFixture> items);

    partial void OnSeasonFixtureGet(ref SingleResult<Models.ConData.SeasonFixture> item);

    [EnableQuery(MaxExpansionDepth=10,MaxAnyAllExpressionDepth=10,MaxNodeCount=1000)]
    [HttpGet("/odata/ConData/SeasonFixtures(FixtureID={FixtureID})")]
    public SingleResult<SeasonFixture> GetSeasonFixture(Int64 key)
    {
        var items = this.context.SeasonFixtures.Where(i=>i.FixtureID == key);
        var result = SingleResult.Create(items);

        OnSeasonFixtureGet(ref result);

        return result;
    }
    partial void OnSeasonFixtureDeleted(Models.ConData.SeasonFixture item);
    partial void OnAfterSeasonFixtureDeleted(Models.ConData.SeasonFixture item);

    [HttpDelete("/odata/ConData/SeasonFixtures(FixtureID={FixtureID})")]
    public IActionResult DeleteSeasonFixture(Int64 key)
    {
        try
        {
            if(!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }


            var items = this.context.SeasonFixtures
                .Where(i => i.FixtureID == key)
                .AsQueryable();

            items = EntityPatch.ApplyTo<Models.ConData.SeasonFixture>(Request, items);

            var item = items.FirstOrDefault();

            if (item == null)
            {
                return StatusCode((int)HttpStatusCode.PreconditionFailed);
            }

            this.OnSeasonFixtureDeleted(item);
            this.context.SeasonFixtures.Remove(item);
            this.context.SaveChanges();
            this.OnAfterSeasonFixtureDeleted(item);

            return new NoContentResult();
        }
        catch(Exception ex)
        {
            ModelState.AddModelError("", ex.Message);
            return BadRequest(ModelState);
        }
    }

    partial void OnSeasonFixtureUpdated(Models.ConData.SeasonFixture item);
    partial void OnAfterSeasonFixtureUpdated(Models.ConData.SeasonFixture item);

    [HttpPut("/odata/ConData/SeasonFixtures(FixtureID={FixtureID})")]
    [EnableQuery(MaxExpansionDepth=10,MaxAnyAllExpressionDepth=10,MaxNodeCount=1000)]
    public IActionResult PutSeasonFixture(Int64 key, [FromBody]Models.ConData.SeasonFixture newItem)
    {
        try
        {
            if(!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            var items = this.context.SeasonFixtures
                .Where(i => i.FixtureID == key)
                .AsQueryable();

            items = EntityPatch.ApplyTo<Models.ConData.SeasonFixture>(Request, items);

            var item = items.FirstOrDefault();

            if (item == null)
            {
                return StatusCode((int)HttpStatusCode.PreconditionFailed);
            }

            this.OnSeasonFixtureUpdated(newItem);
            this.context.SeasonFixtures.Update(newItem);
            this.context.SaveChanges();

            var itemToReturn = this.context.SeasonFixtures.Where(i => i.FixtureID == key);
            Request.QueryString = Request.QueryString.Add("$expand", "LeagueSeason,MatchDay,Team,Team1");
            this.OnAfterSeasonFixtureUpdated(newItem);
            return new ObjectResult(SingleResult.Create(itemToReturn));
        }
        catch(Exception ex)
        {
            ModelState.AddModelError("", ex.Message);
            return BadRequest(ModelState);
        }
    }

    [HttpPatch("/odata/ConData/SeasonFixtures(FixtureID={FixtureID})")]
    [EnableQuery(MaxExpansionDepth=10,MaxAnyAllExpressionDepth=10,MaxNodeCount=1000)]
    public IActionResult PatchSeasonFixture(Int64 key, [FromBody]Delta<Models.ConData.SeasonFixture> patch)
    {
        try
        {
            if(!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            var items = this.context.SeasonFixtures.Where(i => i.FixtureID == key);

            items = EntityPatch.ApplyTo<Models.ConData.SeasonFixture>(Request, items);

            var item = items.FirstOrDefault();

            if (item == null)
            {
                return StatusCode((int)HttpStatusCode.PreconditionFailed);
            }

            patch.Patch(item);

            this.OnSeasonFixtureUpdated(item);
            this.context.SeasonFixtures.Update(item);
            this.context.SaveChanges();

            var itemToReturn = this.context.SeasonFixtures.Where(i => i.FixtureID == key);
            Request.QueryString = Request.QueryString.Add("$expand", "LeagueSeason,MatchDay,Team,Team1");
            return new ObjectResult(SingleResult.Create(itemToReturn));
        }
        catch(Exception ex)
        {
            ModelState.AddModelError("", ex.Message);
            return BadRequest(ModelState);
        }
    }

    partial void OnSeasonFixtureCreated(Models.ConData.SeasonFixture item);
    partial void OnAfterSeasonFixtureCreated(Models.ConData.SeasonFixture item);

    [HttpPost]
    [EnableQuery(MaxExpansionDepth=10,MaxAnyAllExpressionDepth=10,MaxNodeCount=1000)]
    public IActionResult Post([FromBody] Models.ConData.SeasonFixture item)
    {
        try
        {
            if(!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (item == null)
            {
                return BadRequest();
            }

            this.OnSeasonFixtureCreated(item);
            this.context.SeasonFixtures.Add(item);
            this.context.SaveChanges();

            var key = item.FixtureID;

            var itemToReturn = this.context.SeasonFixtures.Where(i => i.FixtureID == key);

            Request.QueryString = Request.QueryString.Add("$expand", "LeagueSeason,MatchDay,Team,Team1");

            this.OnAfterSeasonFixtureCreated(item);

            return new ObjectResult(SingleResult.Create(itemToReturn))
            {
                StatusCode = 201
            };
        }
        catch(Exception ex)
        {
            ModelState.AddModelError("", ex.Message);
            return BadRequest(ModelState);
        }
    }
  }
}
