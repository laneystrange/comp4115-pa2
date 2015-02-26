CREATE TABLE Player (id INT AUTO_INCREMENT, firstName VARCHAR(20) NOT NULL, lastName VARCHAR(20) NOT NULL, alias VARCHAR(20), dob DATE NOT NULL, country VARCHAR(20) NOT NULL, gender ENUM('M','F') NOT NULL, PRIMARY KEY(id)) ENGINE=InnoDB;
CREATE TABLE Team (id INT, name VARCHAR(20) NOT NULL, dateFormed DATE NOT NULL, dateDisbanded DATE, PRIMARY KEY(id)) ENGINE=InnoDB;
CREATE TABLE TeamMember (teamID INT, playerID INT, PRIMARY KEY(teamID), FOREIGN KEY(teamID) REFERENCES Team(id), FOREIGN KEY(playerID) REFERENCES Player(id)) ENGINE=InnoDB;
CREATE TABLE Tournament (tourneyName VARCHAR(20), startDate DATE NOT NULL, endDate DATE NOT NULL, city VARCHAR(20) NOT NULL, state VARCHAR(2) NOT NULL, grandPrize INT NOT NULL, winner INT, PRIMARY KEY(tourneyName), FOREIGN KEY (winner) REFERENCES Team(id)) ENGINE=InnoDB;
CREATE TABLE Matches (matchID INT AUTO_INCREMENT, tourneyName VARCHAR(20), teamOne INT, teamTwo INT, teamOneWins INT, teamTwoWins INT, PRIMARY KEY(matchID), FOREIGN KEY (teamOne) REFERENCES Team(id), FOREIGN KEY(teamTwo) REFERENCES Team(id), FOREIGN KEY(tourneyName) REFERENCES Tournament(tourneyName)) ENGINE=InnoDB;
