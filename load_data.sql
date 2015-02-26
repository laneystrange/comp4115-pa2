load data local infile '/home/adam/DBHW/comp4115-pa2/teamMembers.csv' into table teamMembers fields terminated by ',' (teamID, playerID, handle);

load data local infile '/home/adam/DBHW/comp4115-pa2/matches.csv' into table matches fields terminated by ',' (teamA, teamB, Awins, Bwins, winner);

load data local infile '/home/adam/DBHW/comp4115-pa2/players.csv' into table players fields terminated by ',' (name, handle, dateOfBirth, homeCountry, gender);

load data local infile '/home/adam/DBHW/comp4115-pa2/teams.csv' into table teams fields terminated by ',' (teamName, formed, disbanded);

load data local infile '/home/adam/DBHW/comp4115-pa2/tournaments.csv' into table tournaments fields terminated by ',' (name, prize, location);