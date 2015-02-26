/* Get female players' real names and birthdays */
SELECT CONCAT(first_name, ' ', last_name) AS `Real Name`,dob AS `Date of Birth`
    FROM players WHERE gender = 'Female' ORDER BY dob;

/* Get handles and names for all players from Canada */
SELECT handle AS Handle, CONCAT(first_name, ' ', last_name) AS `Real Name`
    FROM players WHERE country = 'Canada';

/* Get the event, match id, and team names where the team defeated their oponent 3-0 */
SELECT e.event_name AS Event, m.match_id AS `Match ID`, t.team_name AS `Winning Team` FROM matches as m
    JOIN 
        (SELECT * FROM match_results WHERE wins = 0 GROUP BY match_id) AS q 
            ON m.match_id = q.match_id 
    JOIN 
        events AS e ON e.event_id = m.event_id
    JOIN 
        teams AS t ON t.team_id = m.winning_team ORDER BY m.match_id;

/* Find total prize money */
SELECT CONCAT('$', FORMAT(SUM(grand_prize), 2)) AS `Total Prize Money Awarded` FROM events;

/* Active teams */
SELECT COUNT(*) AS `Active Teams` FROM teams WHERE date_disbanded IS NULL;

/* names of players that were part of disbanded teams, though they could have 
joined other teams */
SELECT DISTINCT CONCAT(p.first_name, ' ', p.last_name) AS `Player Name` FROM players AS p
    JOIN 
        team_players AS tp ON tp.player_id = p.player_id
    JOIN 
        teams AS t ON t.team_id = tp.team_id
    WHERE
        t.date_disbanded IS NULL;

/* Which team has been the most successful */
SELECT t.team_name as Team, SUM(e.grand_prize) as `Prize Money Earned` from events as e 
    JOIN
        teams as t ON e.event_winner = t.team_id
    GROUP BY e.event_winner 
    ORDER BY `Prize Money Earned` DESC LIMIT 1;
    
/* Which team has won the most matches? */
SELECT t.team_name AS Team, count(m.winning_team) AS `Matches Won` FROM matches AS m
    JOIN
        teams AS t ON m.winning_team = t.team_id 
    GROUP BY m.winning_team
    ORDER BY `Matches Won` DESC LIMIT 1;

/* How much money did Felicia Day win? (Approximately since the team members varies */
SELECT t.team_name AS Team, CONCAT(p.first_name, ' ', p.last_name) AS  Player, FORMAT(e.grand_prize/4.0,2) AS `Share of Prize` FROM players AS p 
    JOIN 
        team_players AS tp ON tp.player_id = p.player_id 
    JOIN 
        teams AS t ON t.team_id = tp.team_id 
    JOIN events AS e ON e.event_winner = t.team_id 
    WHERE first_name = 'Felicia' && last_name = 'Day';

/* List the players that are members of more than one team */
SELECT CONCAT(p.first_name, ' ', p.last_name) AS Player, COUNT(tp.player_id) as `Number of Teams` FROM team_players as tp 
    JOIN 
        players as p ON tp.player_id = p.player_id 
    GROUP BY tp.player_id 
    HAVING `Number of Teams` > 1
    ORDER BY p.last_name;
