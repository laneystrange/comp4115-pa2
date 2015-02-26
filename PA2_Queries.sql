create database games;
use games;
create table player(id int not null auto_increment, real_name varchar(30), handle varChar(30),DoB date, home_country varchar(30),gender varchar(1), team_name varchar(30),primary key (id));
create table teams(team_name varchar(20), player1 varchar(20) not null, player2 varchar(20) not null, player3 varchar(20) not null, player4 varchar(20), player5 varchar(20), player6 varchar(20), player7 varchar(20), date_founded date, date_disbanded date, primary key(team_name));
create table events(event_name varChar(20),event_date date, location varchar(20), grand_prize int(15), main_sponser varchar(30), number_teams_attending int(3), primary key(event_name));
create table ticket(ticket_number int(10), status varChar(10), primary key(ticket_number));
create table tournament_score(event_name varChar(20),match_number int(1),winner varChar(20),loser varChar(20),winner_score int(1),loser_score int(1),match_winner varChar(20),tournament_winner varChar(20),primary key (event_name));
