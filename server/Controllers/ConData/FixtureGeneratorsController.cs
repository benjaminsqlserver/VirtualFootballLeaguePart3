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

  public partial class FixtureGeneratorsController : ODataController
  {
    private VirtualLeague.Data.ConDataContext context;

    public FixtureGeneratorsController(VirtualLeague.Data.ConDataContext context)
    {
      this.context = context;
    }

    [HttpGet]
    [EnableQuery(MaxExpansionDepth=10,MaxAnyAllExpressionDepth=10,MaxNodeCount=1000)]
    [Route("odata/ConData/FixtureGeneratorsFunc(Team1={Team1},Team2={Team2},Team3={Team3},Team4={Team4},Team5={Team5},Team6={Team6},Team7={Team7},Team8={Team8},Team9={Team9},Team10={Team10},Team11={Team11},Team12={Team12},Team13={Team13},Team14={Team14},Team15={Team15},Team16={Team16},Team17={Team17},Team18={Team18},Team19={Team19},Team20={Team20})")]
    public IActionResult FixtureGeneratorsFunc([FromODataUri] string Team1, [FromODataUri] string Team2, [FromODataUri] string Team3, [FromODataUri] string Team4, [FromODataUri] string Team5, [FromODataUri] string Team6, [FromODataUri] string Team7, [FromODataUri] string Team8, [FromODataUri] string Team9, [FromODataUri] string Team10, [FromODataUri] string Team11, [FromODataUri] string Team12, [FromODataUri] string Team13, [FromODataUri] string Team14, [FromODataUri] string Team15, [FromODataUri] string Team16, [FromODataUri] string Team17, [FromODataUri] string Team18, [FromODataUri] string Team19, [FromODataUri] string Team20)
    {
        this.OnFixtureGeneratorsDefaultParams(ref Team1, ref Team2, ref Team3, ref Team4, ref Team5, ref Team6, ref Team7, ref Team8, ref Team9, ref Team10, ref Team11, ref Team12, ref Team13, ref Team14, ref Team15, ref Team16, ref Team17, ref Team18, ref Team19, ref Team20);

        var items = this.context.FixtureGenerators.FromSqlRaw("EXEC [dbo].[FixtureGenerator] {0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}, {8}, {9}, {10}, {11}, {12}, {13}, {14}, {15}, {16}, {17}, {18}, {19}", Team1, Team2, Team3, Team4, Team5, Team6, Team7, Team8, Team9, Team10, Team11, Team12, Team13, Team14, Team15, Team16, Team17, Team18, Team19, Team20).ToList().AsQueryable();

        this.OnFixtureGeneratorsInvoke(ref items);

        return Ok(items);
    }

    partial void OnFixtureGeneratorsDefaultParams(ref string Team1, ref string Team2, ref string Team3, ref string Team4, ref string Team5, ref string Team6, ref string Team7, ref string Team8, ref string Team9, ref string Team10, ref string Team11, ref string Team12, ref string Team13, ref string Team14, ref string Team15, ref string Team16, ref string Team17, ref string Team18, ref string Team19, ref string Team20);

    partial void OnFixtureGeneratorsInvoke(ref IQueryable<Models.ConData.FixtureGenerator> items);
  }
}
