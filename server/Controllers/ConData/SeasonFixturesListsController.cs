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

  public partial class SeasonFixturesListsController : ODataController
  {
    private VirtualLeague.Data.ConDataContext context;

    public SeasonFixturesListsController(VirtualLeague.Data.ConDataContext context)
    {
      this.context = context;
    }

    [HttpGet]
    [EnableQuery(MaxExpansionDepth=10,MaxAnyAllExpressionDepth=10,MaxNodeCount=1000)]
    [Route("odata/ConData/SeasonFixturesListsFunc(SeasonID={SeasonID})")]
    public IActionResult SeasonFixturesListsFunc([FromODataUri] int SeasonID)
    {
        this.OnSeasonFixturesListsDefaultParams(ref SeasonID);

        var items = this.context.SeasonFixturesLists.FromSqlRaw("EXEC [dbo].[SeasonFixturesList] {0}", SeasonID).ToList().AsQueryable();

        this.OnSeasonFixturesListsInvoke(ref items);

        return Ok(items);
    }

    partial void OnSeasonFixturesListsDefaultParams(ref int SeasonID);

    partial void OnSeasonFixturesListsInvoke(ref IQueryable<Models.ConData.SeasonFixturesList> items);
  }
}
