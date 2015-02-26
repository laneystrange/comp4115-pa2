select name,dob from player where gender='female';
select handle,name from player where country="India";
select matchid,count(matchid) as wincount from game group by matchid havi
ng wincount=3;
select sum(prize_amount) from event;
select  count(*) from team where date_disbanded is null;
select name  from player where teamid in (select  teamid from team where
date_disbanded is not null);
select Ewinnerid from event group by Ewinnerid order by sum(prize_amount)
 desc limit 1;
select Ewinnerid from event GROUP BY Ewinnerid order by count(Ewinnerid)
desc limit 1;
select sum(prize_amount),Ewinnerid from event group by Ewinnerid having E
winnerid in (select teamid from player where name="Rahul");
select eventid,matchid from matches where winnerid=1;