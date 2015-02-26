select name, DOB from players where gender = 'F';

select name, handle from players where country = 'USA';

select * from matchresults where losingTeamRoundsWon = 0;

select sum(grandprize) from tournament where winningTeam is not NULL;

select count(*) from teams where dateDisbanded is NULL;

select name from players where ID in (select memberIDNum1 from(
select teamName, memberIDNum1 from (select memberIDNum1, memberIDNum2, memberIDNum3, memberIDNum4, memberIDNum5, memberIDNum6, memberIDNum7, teamName from teams where teamName IN (select losingTeam from matchResults group by losingTeam))MyTable union all 
select teamName, memberIDNum2 from (select memberIDNum1, memberIDNum2, memberIDNum3, memberIDNum4, memberIDNum5, memberIDNum6, memberIDNum7, teamName from teams where teamName IN (select losingTeam from matchResults group by losingTeam))MyTable union all 
select teamName, memberIDNum3 from (select memberIDNum1, memberIDNum2, memberIDNum3, memberIDNum4, memberIDNum5, memberIDNum6, memberIDNum7, teamName from teams where teamName IN (select losingTeam from matchResults group by losingTeam))MyTable union all 
select teamName, memberIDNum4 from (select memberIDNum1, memberIDNum2, memberIDNum3, memberIDNum4, memberIDNum5, memberIDNum6, memberIDNum7, teamName from teams where teamName IN (select losingTeam from matchResults group by losingTeam))MyTable union all 
select teamName, memberIDNum5 from (select memberIDNum1, memberIDNum2, memberIDNum3, memberIDNum4, memberIDNum5, memberIDNum6, memberIDNum7, teamName from teams where teamName IN (select losingTeam from matchResults group by losingTeam))MyTable union all  
select teamName, memberIDNum6 from (select memberIDNum1, memberIDNum2, memberIDNum3, memberIDNum4, memberIDNum5, memberIDNum6, memberIDNum7, teamName from teams where teamName IN (select losingTeam from matchResults group by losingTeam))MyTable union all 
select teamName, memberIDNum7 from (select memberIDNum1, memberIDNum2, memberIDNum3, memberIDNum4, memberIDNum5, memberIDNum6, memberIDNum7, teamName from teams where teamName IN (select losingTeam from matchResults group by losingTeam))MyTable)MyTable where memberIDNum1 is not null group by memberIDNum1);

select winningTeam, sum(grandprize) from tournament where winningTeam <> ' ' group by winningTeam order by sum(grandprize) desc limit 1;

select winningTeam, count(winningTeam) from matchResults group by winningTeam order by count(winningTeam) desc limit 1;

select location from tournament;
