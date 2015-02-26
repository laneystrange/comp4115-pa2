select realName, dob from players where gender = 'female';

select realName, handle from players where country = 'Australia';

select * from matches where (team1_score = 0 AND team2_score = 3) OR (team1_score = 3 AND team2_score = 0);

select sum(prize) from tournaments;

select count(*) from teams where activity = 'active';

select distinct(realName) from players  join members on memberName = handle join teams on teams.teamId = members.teamId where teams.activity = 'not active';













* Which team has been the most successful (won the most money)?

* Which team has been the winningest (won the most matches)?

* How much money has player [PlayerName] won at tournaments, and playing for which teams?

* Another query of your choosing. Ask something interesting about your data.








 List the real name and birthdate of every female player.

* Give the handle and real name of every player from [Croatia]. <-- replace with a country you have in your database.

* List all matches where one team swept the other (i.e., the score was 3 games to 0).

* How much total prize money has been given out since the tournament began?

* How many teams are still active?

* List the real names of players from the defunct teams, without repetition.

* Which team has been the most successful (won the most money)?

* Which team has been the winningest (won the most matches)?

* How much money has player [PlayerName] won at tournaments, and playing for which teams?

* Another query of your choosing. Ask something interesting about your data.

