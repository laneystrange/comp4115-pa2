select real_name,DoB from player where gender = "F";
select real_name,handle from player where home_country= "Korea";
select match_number from tournament_score where winner_score = 3 and loser_score =0;
select grand_prize from events;
select team_name from teams where date_disbanded = "00-000-00";
select real_name from player where team_name in(select loser from tournament_score);
select team_name from teams where team_name in (select winner from tournament_score where event_name ="LCS");
select team_name from teams where team_name in(select winner from tournament_score having count(match_winner) >2);
select events.grand_prize,teams.team_name from teams join tournament_score on teams.team_name = tournament_score.winner join events on events.event_name = tournament_score.event_name where teams.player1 = "Arvan Chaudhary" or teams.player2 = "Arvan Chaudhary" or teams.player3 = "Arvan Chaudhary" and tournament_score.tournament_winner is not null;
select real_name from player where team_name in(select winner from tournament_score where tournament_winner is not null);

