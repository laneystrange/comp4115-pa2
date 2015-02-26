load data infile 'players.csv' into table players fields terminated by ',' lines terminated by '\r\n'  (first_name, last_name, handle, date_of_birth, home_country, gender);
load data infile 'teams.csv' into table teams fields terminated by ',' lines terminated by '\r\n'  (name, date_formed, date_disbanded);
#Disabling foreign key restraints while I import data since the data is bogus anyway. DB will be full of anomalies, but a proper application would restrict input better.
set foreign_key_checks = 0;
load data infile 'players_in_teams.csv' into table players_in_teams fields terminated by ',' lines terminated by '\r\n'  (team_id, player_id);
load data infile 'matches.csv' into table matches fields terminated by ',' lines terminated by '\r\n'  (team_a_id, team_b_id, winner_id, tournament_id, game_1_result, game_2_result, game_3_result, game_4_result, game_5_result);
load data infile 'tournaments.csv' into table tournaments fields terminated by ',' lines terminated by '\r\n'  (name, date,prize,location,winner);
#Re-enabling foreign key restraints
set foreign_key_checks = 1;