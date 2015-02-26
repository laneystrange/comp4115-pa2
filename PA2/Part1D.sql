select name,dob from member where gender = 'F'; 
select pseudoname,name from member where country = 'Russia';
select mat_id from game group by mat_id having count(mat_id) < 4;
select sum(prize) from event;
select count(tid) from team where datedisbaned < (select curdate());
select distinct name from member where tid IN (select tid from team where datedisbaned is NOT NULL);
select winner from event group by winner order by sum(prize) desc LIMIT 1;
select winner from event group by winner order by count(winner) desc LIMIT 1;
select winner as team_id,teamname,sum(prize) as amount_won from event a, member b, team c where b.name="antonio" and a.winner=b.tid and c.tid=b.tid group by winner;
-- All player names with team name who won tournaments till today.
select a.tid as winning_team_id, teamname, name as player_names, country from member a, team b where a.tid=b.tid and b.tid IN (select distinct winner from event);