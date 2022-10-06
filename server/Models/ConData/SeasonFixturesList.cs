using System;
using System.Text.Json;
using System.Text.Json.Serialization;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace VirtualLeague.Models.ConData
{
  [Table("SeasonFixturesList", Schema = "dbo")]
  public partial class SeasonFixturesList
  {
    [NotMapped]
    [JsonIgnore(Condition = JsonIgnoreCondition.WhenWritingNull)]
    [JsonPropertyName("@odata.etag")]
    public string ETag
    {
        get;
        set;
    }

    [Key]
    public Int64 FixtureID
    {
      get;
      set;
    }
    [ConcurrencyCheck]
    public int SeasonID
    {
      get;
      set;
    }
    [ConcurrencyCheck]
    public int MatchDayID
    {
      get;
      set;
    }
    [ConcurrencyCheck]
    public int HomeTeamID
    {
      get;
      set;
    }
    [ConcurrencyCheck]
    public int AwayTeamID
    {
      get;
      set;
    }
    [ConcurrencyCheck]
    public bool Played
    {
      get;
      set;
    }
  }
}
