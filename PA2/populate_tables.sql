#Kyle Mallard
#Dr. Strange
#Databases
#Programming Assignment 2

load data local infile '/tmp/pop_players.csv' into table Players fields terminated by ',' lines terminated by '\n' (id, firstName, lastName, handle, gender, DOB, phone, country);
load data local infile '/tmp/pop_teams.csv' into table Teams fields terminated by ',' lines terminated by '\n' (name, id, originDate, dissolveDate, underdog);
load data local infile '/tmp/pop_tourney.csv' into table Tourney fields terminated by ',' lines terminated by '\n' (matchName, date, grandPrize, location, state, attendance);
load data local infile '/tmp/pop_results.csv' into table Results fields terminated by ',' lines terminated by '\n' (matchName, winner, loser, winningGame, dateofWin);
load data local infile '/tmp/pop_matches.csv' into table Matches fields terminated by ',' lines terminated by '\n' (winner, loser, date, sweepStats);