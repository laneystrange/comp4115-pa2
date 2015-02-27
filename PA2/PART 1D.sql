SELECT name,date_of_birth
FROM player 
WHERE gender='female';


SELECT handle,name 
FROM player 
WHERE country="us";


SELECT gamewinnerid,
COUNT(gamewinnerid) AS wincount 
FROM game
HAVING wincount>=3;


SELECT sum(grand_prize) 
FROM event;


SELECT COUNT(*) 
FROM team 
WHERE date_disbanded is null;


SELECT name  
FROM player 
WHERE teamid in (SELECT teamid 
FROM team 
WHERE date_disbanded is not null);


SELECT team_name 
FROM team,matches,event
GROUP BY winnerid 
ORDER BY sum(grand_prize)
DESC limit 1;


SELECT team_name
FROM event,matches,team
GROUP BY winnerid 
ORDER BY COUNT(winnerid)
DESC limit 1;


SELECT sum(grand_prize),team_name
FROM event,team,matches
GROUP BY winnerid 
HAVING winnerid IN(SELECT teamid 
FROM player 
WHERE name="poonam");


SELECT name,handle,date_of_birth
FROM player
WHERE country="China";
