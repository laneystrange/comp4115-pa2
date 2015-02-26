select firstName, lastName, dob from player where gender='F';

select handle, firstName, lastName from player where country='Croatia';

select * from matches where matchFour='' and matchFive='';

select sum(prize) from event;

select count(*) from team where disbanded='0000-00-00';

select distinct firstName, lastName from player where id in (select playerid from roster where team in (select name from team where disbanded!='0000-00-00'));

select winner, sum(prize) from event group by winner order by sum(prize) desc limit 1;

select winningTeam, count(*) from matches group by winningTeam order by count(*) desc limit 1;

select winner, sum(prize) from event where winner in (select team from roster where playerid in (select id from player where handle='ThaPresident')) group by winner;

SELECT COUNT( * ) FROM player GROUP BY dob HAVING COUNT( * ) > 1
