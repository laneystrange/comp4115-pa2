LOAD DATA LOCAL INFILE 'Player.csv' INTO TABLE Player FIELDS TERMINATED BY ',' ENCLOSED BY '"' IGNORE 1 LINES (id,firstName,lastName,handle,dob,country,gender);
LOAD DATA LOCAL INFILE 'Team.csv' INTO TABLE Team FIELDS TERMINATED BY ',' ENCLOSED BY '"' IGNORE 1 LINES (id,teamName,dateFormed,dateDisbanded);
LOAD DATA LOCAL INFILE 'TeamMember.csv' INTO TABLE TeamMember FIELDS TERMINATED BY ',' ENCLOSED BY '"' IGNORE 1 LINES (teamID,memberID);
LOAD DATA LOCAL INFILE 'Event.csv' INTO TABLE Event FIELDS TERMINATED BY ',' ENCLOSED BY '"' IGNORE 1 LINES (name,prize,city,state,winningTeamID);
LOAD DATA LOCAL INFILE 'MatchScore.csv' INTO TABLE MatchScore FIELDS TERMINATED BY ',' ENCLOSED BY '"' IGNORE 1 LINES (id,teamA,TeamB,teamAWins,teamBWins,Event);