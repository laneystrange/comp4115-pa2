select realName, dob from players where gender = 'female';

select realName, handle from players where country = 'Australia';

select * from matches 
where (team1_score = 0 AND team2_score = 3) 
OR (team1_score = 3 AND team2_score = 0);

select sum(prize) from tournaments;

select count(*) from teams where activity = 'active';

select distinct(realName) 
from players join members on memberName = handle 
join teams on teams.teamId = members.teamId 
where teams.activity = 'not active';

select winner from tournaments where prize = 
(select max(prize) from tournaments where winner is not null);

select winner from matches group by winner order by count(*) desc limit 1;

select winner from tournaments where winner in 
(select teamName from teams where teamId in 
(select teamId from members where memberName = "GingerRoots75")) 
UNION select sum(prize) from tournaments where winner in 
(select teamName from teams where teamId in 
(select teamId from members where memberName = "GingerRoots75"));

select distinct(realName) from players join members 
on members.memberName = players.handle join teams on teams.teamId = members.teamId 
join tournaments on tournaments.winner = teams.teamName where gender = 'female';
