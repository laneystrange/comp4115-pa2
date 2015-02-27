CREATE TABLE team(
teamid int auto_increment primary key, 
team_name varchar(20),
members int,
date_formed date, 
date_disbanded date);


CREATE TABLE player(
id int auto_increment primary key,
name varchar(20), 
handle varchar(20),
date_of_birth date, 
country varchar(20),
gender enum('Female','Male'), 
teamid int,
FOREIGN KEY (teamid) REFERENCES team(teamid));


CREATE TABLE game(
gameid int,
matchid int,
gamewinnerid int,
PRIMARY KEY(gameid,matchid));


CREATE TABLE matches(
matchid int auto_increment primary key,
team1id int, 
team2id int,
winnerid int, 
eventid int, 
FOREIGN KEY(eventid) REFERENCES event(eventid)); 


CREATE TABLE event(
eventid int auto_increment primary key,
name varchar(20),
date date,
grand_prize int,
location varchar(20));

	




