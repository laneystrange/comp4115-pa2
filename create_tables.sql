create table players(id int NOT NULL AUTO_INCREMENT, name varchar(30), handle varchar(30), dateOfBirth date, homeCountry varchar(30), PRIMARY KEY(id));

create table teams(teamID int NOT NULL AUTO_INCREMENT, teamName varchar(30), formed date, disbanded);

create table teamMembers(teamID int not null, playerID int not null, handle varchar(30), primary key(teamID, playerID));

create table tournaments(name varchar(45), prize int, location varchar(30), primary key(name));

create table matches( matchID int not null auto_increment, teamA varChar(30), teamB varchar(30), Awins int, Bwins int, winner varchar(30), primary key(matchID));

alter table players add gender enum('m', 'f');

