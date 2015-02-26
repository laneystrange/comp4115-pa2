select firstName, lastName, dob from player where gender='f';

select handle, firstName, lastName from player where country='Croatia';

select * from matchresult where matchFour='' and matchFive='';

select sum(prize) from event;

select count(*) from team where disbanded='0000-00-00';

select distinct firstName, lastName from player where id in (select playerid from roster where team in (select name from team where disbanded!='0000-00-00'));

select winner, sum(prize) from event group by winner order by sum(prize) desc limit 1;

select winner, count(*) from matchresult group by winner order by count(*) desc limit 1;

select winner, sum(prize) from event where winner in (select team from roster where playerid in (select id from player where handle='Player1')) group by winner;

select firstName, lastName, handle from player where id in (select playerid from roster group by playerid having count(*) > 1);