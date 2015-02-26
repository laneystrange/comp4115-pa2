/*Delete the database if it exists so that there will not be any key mismatch
issues when the tables are populated */
DROP DATABASE IF EXISTS shadowkeep;

CREATE DATABASE shadowkeep;
USE shadowkeep;

CREATE TABLE genders(gender VARCHAR(25) NOT NULL PRIMARY KEY);

CREATE TABLE players(player_id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    first_name VARCHAR(15),
    last_name VARCHAR(15),
    gender VARCHAR(25),
    handle VARCHAR(20),
    dob DATE,
    country VARCHAR(50),
    CONSTRAINT gender_selection
        FOREIGN KEY(gender) REFERENCES genders(gender));

CREATE TABLE teams(team_id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    team_name VARCHAR(50),
    date_formed DATE,
    date_disbanded DATE);

CREATE TABLE team_players(team_player_id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    team_id INT,
    player_id INT,
    CONSTRAINT 
        FOREIGN KEY(team_id) REFERENCES teams(team_id),
    CONSTRAINT
        FOREIGN KEY(player_id) REFERENCES players(player_id));

CREATE TABLE events(event_id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    event_name VARCHAR(50),
    event_city VARCHAR(30),
    event_state VARCHAR(50),
    start_date DATE,
    end_date DATE,
    grand_prize DOUBLE,
    event_winner INT,
    CONSTRAINT
        FOREIGN KEY(event_winner) REFERENCES teams(team_id));

CREATE TABLE event_teams(team_event_id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    event_id INT,
    team_id INT,
    CONSTRAINT 
        FOREIGN KEY(event_id) REFERENCES events(event_id),
    CONSTRAINT
        FOREIGN KEY(team_id) REFERENCES teams(team_id));

CREATE TABLE matches(match_id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    event_id INT,
    winning_team INT,
    CONSTRAINT
        FOREIGN KEY(event_id) REFERENCES events(event_id),
    CONSTRAINT
        FOREIGN KEY(winning_team) REFERENCES teams(team_id));

CREATE TABLE match_results(match_result_id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    match_id INT,
    team_id INT,
    wins INT,
    CONSTRAINT
        FOREIGN KEY(team_id) REFERENCES teams(team_id));
/*
CREATE TABLE rounds(round_id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    match_id INT,
    round_number TINYINT,
    victor INT,
    CONSTRAINT
        FOREIGN KEY(match_id) REFERENCES matches(match_id),
    CONSTRAINT
        FOREIGN KEY(victor) REFERENCES teams(team_id));
*/
