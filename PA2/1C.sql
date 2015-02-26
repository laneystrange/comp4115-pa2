create table team(teamid int auto_increment primary key, team_name varcha
r(20),numberof_members int,date_formed date, date_disbanded date);
create table player(id int auto_increment primary key,name varchar(20), h
andle varchar(20),dob date, country varchar(20),gender enum('Female','Male'), te
amid int REFERENCES team(teamid));
create table event(eventid int auto_increment primary key,name varchar(20
),date date,prize_amount int, city varchar(20), state varchar(20),Ewinnerid int);
create table match(matchid int auto_increment primary key,teamAid int, teamBid int,winnerid int, eventid int, FOREIGN KEY(eventid) REFERENCES event(eventid)); 	
create table game(gameid int,matchid int,gwinnerid int,PRIMARY KEY(gameid,matchid));

