SELECT first_name, last_name, DOB FROM players WHERE gender="F";

SELECT handle, first_name, last_name FROM players WHERE country="USA";

SELECT event_name, team1, team2, winner FROM tourny_match WHERE game4_win=" " and game5_win=" ";

SELECT SUM(grand_prize) FROM tournament;

SELECT name FROM teams WHERE date_disbanded="0000-00-00";

SELECT DISTINCT first_name, last_name FROM players JOIN teams WHERE players.id=teams.player1_id or players.id=teams.player2_id or players.id=teams.player3_id and teams.date_disbanded!="0000-00-00";

SELECT SUM(grand_prize), winner FROM tourny_match JOIN tournament WHERE tourny_match.event_name=tournament.event_name and round="Finals" GROUP BY winner ORDER BY SUM(grand_prize) DESC limit 1;

SELECT COUNT(winner), winner FROM tourny_match GROUP BY winner ORDER BY COUNT(winner) DESC limit 1;

SELECT name FROM teams WHERE player1_id=4 or player2_id=4 or player3_id=4;