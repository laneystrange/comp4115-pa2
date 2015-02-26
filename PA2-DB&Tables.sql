CREATE database shadowkeep;

USE shadowkeep;

CREATE TABLE players(id INT PRIMARY KEY, first_name VARCHAR(45), last_name VARCHAR(45), handle VARCHAR(45), DOB DATE, country VARCHAR(45), gender VARCHAR(1));

CREATE TABLE teams(name VARCHAR(45) PRIMARY KEY, date_formed DATE, date_disbanded DATE, player1_id INT NOT NULL, player2_id INT NOT NULL, player3_id INT NOT NULL, player4_id INT, player5_id INT, player6_id INT, player7_id INT);

CREATE TABLE tournament( event_name VARCHAR(45) PRIMARY KEY, date_begin DATE NOT NULL, date_end DATE NOT NULL, grand_prize INT, city VARCHAR(45) NOT NULL);

CREATE TABLE tourny_match(event_name VARCHAR(45), team1 VARCHAR(45), team2 VARCHAR(45), match_date DATE, round VARCHAR(45), game1_win VARCHAR(45) NOT NULL, game2_win VARCHAR(45) NOT NULL, game3_win VARCHAR(45) NOT NULL, game4_win VARCHAR(45), game5_win VARCHAR(45), winner VARCHAR(45), PRIMARY KEY (event_name, team1, team2));