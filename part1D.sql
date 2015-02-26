select real_name,dob from players where gender = 'F';

select handle,real_name from players where country = 'india';

select match_id,count(match_id) as p from game group by match_id having p = 3;

select sum(grand_prize) from event;

select count(team_name) from team where date_disformed > (select curdate());

select real_name from players join team on (team.team_id=players.team_id) where date_disformed < (select curdate());

select event_winner from event group by event_winner order by sum(grand_prize) desc limit 1;

select event_winner from event group by event_winner order by count(event_winner) desc limit 1;

select sum(grand_prize),event_winner from event group by event_winner having event_winner in (select team_id from players where real_name="Hari");
