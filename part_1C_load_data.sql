/* Lets be inclusive. Genders from Facebook.*/
LOAD DATA LOCAL INFILE 'part_1C_data/genders.csv' INTO TABLE genders
    LINES TERMINATED BY '\n';

LOAD DATA LOCAL INFILE 'part_1C_data/players.csv' INTO TABLE players
    FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' 
    (first_name, last_name, gender, handle, dob, country);

LOAD DATA LOCAL INFILE 'part_1C_data/teams.csv' INTO TABLE teams
    FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' LINES TERMINATED BY '\n'
    (team_name, date_formed, date_disbanded);

LOAD DATA LOCAL INFILE 'part_1C_data/team_players.csv' INTO TABLE team_players
    FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' LINES TERMINATED BY '\n'
    (team_id, player_id);

LOAD DATA LOCAL INFILE 'part_1C_data/events.csv' INTO TABLE events
    FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' LINES TERMINATED BY '\n'
    (event_name, event_city, event_state, start_date, end_date, grand_prize, event_winner);

LOAD DATA LOCAL INFILE 'part_1C_data/event_teams.csv' INTO TABLE event_teams
    FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' LINES TERMINATED BY '\n'
    (event_id, team_id);

LOAD DATA LOCAL INFILE 'part_1C_data/matches.csv' INTO TABLE matches
    FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n'
    (event_id, winning_team);

LOAD DATA LOCAL INFILE 'part_1C_data/match_results.csv' INTO TABLE match_results
    FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n'
    (match_id, team_id, wins);

