create database shadowkeep;

use shadowkeep;

create table players (
ID int not null auto_increment,
name varchar(45) not null,
handle varchar(45) not null,
DOB date not null,
country varchar(45) not null,
gender char,
Primary key (ID));

create table teams (teamName varchar(45) not null, dateFormed date not null, dateDisbanded date,
memberIDNum1 int not null,
memberIDNum2 int not null,
memberIDNum3 int not null,
memberIDNum4 int,
memberIDNum5 int,
memberIDNum6 int,
memberIDNum7 int,
workAround int,
primary key (teamName),
foreign key (memberIDNum1) references players (ID),
foreign key (memberIDNum2) references players (ID),
foreign key (memberIDNum3) references players (ID),
foreign key (memberIDNum4) references players (ID),
foreign key (memberIDNum5) references players (ID),
foreign key (memberIDNum6) references players (ID),
foreign key (memberIDNum7) references players (ID));

create table tournament (name varchar(45) not null, grandPrize int not null,
location varchar(45) not null, startDate date not null, endDate date not null,
winningTeam varchar(45), primary key (name));

create table matchResults (winningTeam varchar(45) not null,
losingTeam varchar(45) not null, tournament varchar(45) not null, losingTeamRoundsWon int,
primary key (winningTeam, losingTeam, tournament),
foreign key (winningTeam) references teams (teamName),
foreign key (losingTeam) references teams (teamName),
foreign key (tournament) references tournament (name));

