#Kyle Mallard
#Dr. Strange
#Databases
#Programming Assignment 2

CREATE TABLE Players (id INT NOT NULL AUTO_INCREMENT, firstName VARCHAR(26), lastName VARCHAR(26), handle VARCHAR(26), gender VARCHAR(10), DOB DATE, phone VARCHAR(11), country VARCHAR(26), PRIMARY KEY (id));
CREATE TABLE Teams (name VARCHAR(26), id INT, originDate DATE, dissolveDate DATE, underdog VARCHAR(10), FOREIGN KEY (id) REFERENCES Players(id));
CREATE TABLE Tourney (matchName VARCHAR(26), date DATE, grandPrize INT, location VARCHAR(26), state VARCHAR(26), attendance INT, PRIMARY KEY (matchName));
CREATE TABLE Results (matchName VARCHAR(26), winner VARCHAR(26), loser VARCHAR(26), winningGame VARCHAR(26), dateofWin DATE, FOREIGN KEY (matchName) REFERENCES Tourney(matchName));
CREATE TABLE Matches (winner VARCHAR(26), loser VARCHAR(26), date DATE, sweepStats VARCHAR(26));