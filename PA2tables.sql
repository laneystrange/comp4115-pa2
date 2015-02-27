create database PA2;
use PA2;

create table player(playerID int, name varchar(20), nickname varchar(20), DOB date, nationality varchar(20), gender enum('M','F'), primary key (playerID));

create table teams(teamID int, teamName varchar(20), dateformed date, datedisbanded date, primary key (teamID));

create table teamMember(playerID int, teamID int, primary key(playerID), foreign key(playerID) references player(playerID), foreign key(teamID) references teams(teamID));

create table tournament(tournamentName varchar(20), eventdate date, prize int, location varchar(20), teamwinner int, primary key (tournamentName), foreign key(teamwinner) references teams(teamID));

create table Matches(MatchID int, teamA int, teamB int, teamAwins int, teamBwins int, tournamentName varchar(20), primary key (MatchID), foreign key (teamA) references teams(teamID), foreign key (teamB) references teams(teamID), foreign key (tournamentName) references tournament(tournamentName));

