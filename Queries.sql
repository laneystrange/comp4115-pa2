select first_name, last_name from players where gender = 'f';

select first_name, handle from players where home_country = 'usa';

#Fun shortcut here. Because you know any series that doesn't have a game 4 is a clean sweep you can just check for that.
select * from matches where game_4_result is null;

select sum(prize) from tournaments;

select * from teams where date_disbanded is null;

select distinct first_name, last_name from players join players_in_teams on players.id = player_id join teams on team_id = teams.id where date_disbanded is not null;

select teams.name,sum(prize) as winnings from tournaments join teams on tournaments.winner = teams.id group by winner order by winnings desc limit 1;

select teams.name, count(*) as wins from teams join matches on teams.id = matches.winner_id group by winner_id order by wins desc limit 1;

select teams.name,players.id as player_id,first_name,last_name,tournaments.name,prize from players join players_in_teams on players.id = player_id join teams on team_id = teams.id join tournaments on teams.id = tournaments.winner where players.id = (select id from players where first_name = 'John' AND last_name = 'Doe' limit 1);

#What teams managed to win a set after losing the first two games?
select teams.name from matches join teams on matches.winner_id = teams.id where game_1_result != winner_id AND game_2_result != winner_id group by teams.id;