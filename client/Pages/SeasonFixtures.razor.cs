using System;
using System.Linq;
using System.Collections.Generic;
using System.Threading.Tasks;
using Radzen;
using Radzen.Blazor;
using VirtualLeague.Models.ConData;

namespace VirtualLeague.Pages
{
    public partial class SeasonFixturesComponent
    {
        //method to generate a fixtures for seasons

        private async Task GenerateSeasonMatches()
        {
            try
            {
                //get list of all created seasons
                ODataServiceResult<Models.ConData.LeagueSeason> seasons1 = await ConData.GetLeagueSeasons();
                //convert seasons1 to IEnumerable
                IEnumerable<Models.ConData.LeagueSeason> seasons = seasons1.Value.AsODataEnumerable();

                //get the list of teams

                ODataServiceResult<Models.ConData.Team> teams1 = await ConData.GetTeams();
                //convert teams1 to IEnumerable
                IEnumerable<Models.ConData.Team> teams = teams1.Value.AsODataEnumerable();


                if (seasons.Any())
                {

                    foreach (Models.ConData.LeagueSeason season in seasons)
                    {
                        //check if season fixtures list have been generated

                        ODataServiceResult<Models.ConData.SeasonFixturesList> seasonFixtureList1 = await ConData.GetSeasonFixturesLists(season.SeasonID);
                        IEnumerable<Models.ConData.SeasonFixturesList> seasonFixturesLists = seasonFixtureList1.Value.AsODataEnumerable();
                        if (seasonFixturesLists.Any())
                        {
                            //This implies that season's fixtures have been generated
                        }
                        else
                        {
                            //generate fixtures list for season
                            await GenerateFixtureListForASeason(season, teams);
                        }

                    }
                }

                //NotificationService.Notify(NotificationSeverity.Success, "Fixture Generation Success", "Fixrures List Has Been Updated Successfully.", 7000);

                //reload current page from server
                UriHelper.NavigateTo("season-fixtures", true);
            }
            catch (Exception ex)
            {
                //Display error message in notification
                NotificationService.Notify(NotificationSeverity.Error, "App Error", ex.Message, 7000);
            }
        }

        private async Task GenerateFixtureListForASeason(LeagueSeason season, IEnumerable<Models.ConData.Team> teams)
        {
            try
            {
                //let us get number of teams
                int numberOfTeams = teams.Count();

                //get matchdays

                var matchDays1 = await ConData.GetMatchDays();
                IEnumerable<Models.ConData.MatchDay> matchDays = matchDays1.Value.AsODataEnumerable();

                //let us create a list of teams in random order
                var dynamicTeamList = new List<Models.ConData.Team>();
                //let us create a random instance

                Random random = new Random();

                while (dynamicTeamList.Count < numberOfTeams)
                {
                    //add next team to dynamicTeamList
                    var nextTeam = teams.ElementAt(random.Next(numberOfTeams));
                    dynamicTeamList.Add(nextTeam);
                }

                if (dynamicTeamList.Count == numberOfTeams)//all teams have been added to dynamic Team List
                {
                    ODataServiceResult<FixtureGenerator> leagueFixtures1 = await ConData.GetFixtureGenerators(dynamicTeamList[0].TeamName, dynamicTeamList[1].TeamName, dynamicTeamList[2].TeamName, dynamicTeamList[3].TeamName, dynamicTeamList[4].TeamName, dynamicTeamList[5].TeamName, dynamicTeamList[6].TeamName, dynamicTeamList[7].TeamName, dynamicTeamList[8].TeamName, dynamicTeamList[9].TeamName, dynamicTeamList[10].TeamName, dynamicTeamList[11].TeamName, dynamicTeamList[12].TeamName, dynamicTeamList[13].TeamName, dynamicTeamList[14].TeamName, dynamicTeamList[15].TeamName, dynamicTeamList[16].TeamName, dynamicTeamList[17].TeamName, dynamicTeamList[18].TeamName, dynamicTeamList[19].TeamName);
                    IEnumerable<FixtureGenerator> leagueFixtures = leagueFixtures1.Value.AsODataEnumerable();

                    //add fixtures to the database

                    if (leagueFixtures.Any())
                    {
                        foreach (var fixture in leagueFixtures)
                        {
                            //Replace + Symbol with empty space
                            fixture.HomeTeam = fixture.HomeTeam.Replace("+", " ");
                            fixture.AwayTeam = fixture.AwayTeam.Replace("+", " ");
                            var homeTeam = teams.First(p => p.TeamName == fixture.HomeTeam);
                            var awayTeam = teams.First(p => p.TeamName == fixture.AwayTeam);



                            //get matchday for fixture 

                            int matchday = (int)(Math.Ceiling((decimal)fixture.TemplateID / 10));
                            var matchDayName = matchday.ToString();
                            Models.ConData.MatchDay matchDay = matchDays.First(p => p.MatchDayName == matchDayName);

                            //create a new season fixture

                            var newSeasonFixture = new Models.ConData.SeasonFixture { AwayTeamID = awayTeam.TeamID, HomeTeamID = homeTeam.TeamID, Played = false, SeasonID = season.SeasonID, MatchDayID = matchDay.MatchDayID };

                            await ConData.CreateSeasonFixture(newSeasonFixture);
                        }
                    }

                }



            }
            catch (Exception ex)
            {
                //Display error message in notification
                NotificationService.Notify(NotificationSeverity.Error, "App Error", ex.Message, 7000);
            }
        }
    }
}