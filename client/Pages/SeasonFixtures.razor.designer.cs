using System;
using System.Linq;
using System.Collections.Generic;
using System.Threading.Tasks;
using Microsoft.JSInterop;
using Microsoft.AspNetCore.Components;
using Microsoft.AspNetCore.Components.Authorization;
using Microsoft.AspNetCore.Components.Web;
using Radzen;
using Radzen.Blazor;
using VirtualLeague.Models.ConData;
using Microsoft.AspNetCore.Identity;
using VirtualLeague.Models;
using VirtualLeague.Client.Pages;

namespace VirtualLeague.Pages
{
    public partial class SeasonFixturesComponent : ComponentBase
    {
        [Parameter(CaptureUnmatchedValues = true)]
        public IReadOnlyDictionary<string, dynamic> Attributes { get; set; }

        public void Reload()
        {
            InvokeAsync(StateHasChanged);
        }

        public void OnPropertyChanged(PropertyChangedEventArgs args)
        {
        }

        [Inject]
        protected IJSRuntime JSRuntime { get; set; }

        [Inject]
        protected NavigationManager UriHelper { get; set; }

        [Inject]
        protected DialogService DialogService { get; set; }

        [Inject]
        protected TooltipService TooltipService { get; set; }

        [Inject]
        protected ContextMenuService ContextMenuService { get; set; }

        [Inject]
        protected NotificationService NotificationService { get; set; }

        [Inject]
        protected SecurityService Security { get; set; }

        [Inject]
        protected AuthenticationStateProvider AuthenticationStateProvider { get; set; }

        [Inject]
        protected ConDataService ConData { get; set; }
        protected RadzenDataGrid<VirtualLeague.Models.ConData.SeasonFixture> grid0;

        string _search;
        protected string search
        {
            get
            {
                return _search;
            }
            set
            {
                if (!object.Equals(_search, value))
                {
                    var args = new PropertyChangedEventArgs(){ Name = "search", NewValue = value, OldValue = _search };
                    _search = value;
                    OnPropertyChanged(args);
                    Reload();
                }
            }
        }

        IEnumerable<VirtualLeague.Models.ConData.SeasonFixture> _getSeasonFixturesResult;
        protected IEnumerable<VirtualLeague.Models.ConData.SeasonFixture> getSeasonFixturesResult
        {
            get
            {
                return _getSeasonFixturesResult;
            }
            set
            {
                if (!object.Equals(_getSeasonFixturesResult, value))
                {
                    var args = new PropertyChangedEventArgs(){ Name = "getSeasonFixturesResult", NewValue = value, OldValue = _getSeasonFixturesResult };
                    _getSeasonFixturesResult = value;
                    OnPropertyChanged(args);
                    Reload();
                }
            }
        }

        int _getSeasonFixturesCount;
        protected int getSeasonFixturesCount
        {
            get
            {
                return _getSeasonFixturesCount;
            }
            set
            {
                if (!object.Equals(_getSeasonFixturesCount, value))
                {
                    var args = new PropertyChangedEventArgs(){ Name = "getSeasonFixturesCount", NewValue = value, OldValue = _getSeasonFixturesCount };
                    _getSeasonFixturesCount = value;
                    OnPropertyChanged(args);
                    Reload();
                }
            }
        }

        protected override async System.Threading.Tasks.Task OnInitializedAsync()
        {
            await Security.InitializeAsync(AuthenticationStateProvider);
            if (!Security.IsAuthenticated())
            {
                UriHelper.NavigateTo("Login", true);
            }
            else
            {
                await Load();
            }
        }
        protected async System.Threading.Tasks.Task Load()
        {
            if (string.IsNullOrEmpty(search)) {
                search = "";
            }
        }

        protected async System.Threading.Tasks.Task Button1Click(MouseEventArgs args)
        {
            await GenerateSeasonMatches();
        }

        protected async System.Threading.Tasks.Task Splitbutton0Click(RadzenSplitButtonItem args)
        {
            if (args?.Value == "csv")
            {
                await ConData.ExportSeasonFixturesToCSV(new Query() { Filter = $@"{(string.IsNullOrEmpty(grid0.Query.Filter)? "true" : grid0.Query.Filter)}", OrderBy = $"{grid0.Query.OrderBy}", Expand = "LeagueSeason,MatchDay,Team,Team1", Select = "FixtureID,LeagueSeason.SeasonName as LeagueSeasonSeasonName,MatchDay.MatchDayName as MatchDayMatchDayName,Team.TeamName as TeamTeamName,Team1.TeamName as Team1TeamName,Played" }, $"Season Fixtures");

            }

            if (args == null || args.Value == "xlsx")
            {
                await ConData.ExportSeasonFixturesToExcel(new Query() { Filter = $@"{(string.IsNullOrEmpty(grid0.Query.Filter)? "true" : grid0.Query.Filter)}", OrderBy = $"{grid0.Query.OrderBy}", Expand = "LeagueSeason,MatchDay,Team,Team1", Select = "FixtureID,LeagueSeason.SeasonName as LeagueSeasonSeasonName,MatchDay.MatchDayName as MatchDayMatchDayName,Team.TeamName as TeamTeamName,Team1.TeamName as Team1TeamName,Played" }, $"Season Fixtures");

            }
        }

        protected async System.Threading.Tasks.Task Grid0LoadData(LoadDataArgs args)
        {
            try
            {
                var conDataGetSeasonFixturesResult = await ConData.GetSeasonFixtures(filter:$@"{(string.IsNullOrEmpty(args.Filter)? "true" : args.Filter)}", orderby:$"{args.OrderBy}", expand:$"LeagueSeason,MatchDay,Team,Team1", top:args.Top, skip:args.Skip, count:args.Top != null && args.Skip != null);
                getSeasonFixturesResult = conDataGetSeasonFixturesResult.Value.AsODataEnumerable();

                getSeasonFixturesCount = conDataGetSeasonFixturesResult.Count;
            }
            catch (System.Exception conDataGetSeasonFixturesException)
            {
                NotificationService.Notify(new NotificationMessage(){ Severity = NotificationSeverity.Error,Summary = $"Error",Detail = $"Unable to load SeasonFixtures" });
            }
        }

        protected async System.Threading.Tasks.Task GridDeleteButtonClick(MouseEventArgs args, dynamic data)
        {
            try
            {
                if (await DialogService.Confirm("Are you sure you want to delete this record?") == true)
                {
                    var conDataDeleteSeasonFixtureResult = await ConData.DeleteSeasonFixture(fixtureId:data.FixtureID);
                    if (conDataDeleteSeasonFixtureResult != null && conDataDeleteSeasonFixtureResult.StatusCode == System.Net.HttpStatusCode.NoContent)
                    {
                        await grid0.Reload();
                    }

                    if (conDataDeleteSeasonFixtureResult != null && conDataDeleteSeasonFixtureResult.StatusCode != System.Net.HttpStatusCode.NoContent)
                    {
                        NotificationService.Notify(new NotificationMessage(){ Severity = NotificationSeverity.Error,Summary = $"Error",Detail = $"Unable to delete SeasonFixture" });
                    }
                }
            }
            catch (System.Exception conDataDeleteSeasonFixtureException)
            {
                NotificationService.Notify(new NotificationMessage(){ Severity = NotificationSeverity.Error,Summary = $"Error",Detail = $"Unable to delete SeasonFixture" });
            }
        }
    }
}
