select name, DOB from player where gender='F';
select nickname,name from player where nationality='croatia';\
select MatchID from Matches where (teamAwins=3 && teamBwins=0) || (teamBwins=3 && teamAwins=0);
select sum(prize) from tournament;
select count(teamID) from teams where datedisbanded is NULL;
select name from player where playerID in (select playerID from teamMember where teamID in (select teamID from teams where datedisbanded is not null));
select teamName from teams where teamID in(select max(teamwinner) from tournament);
select teamName from teams where teamID in(select teamwinner from (select teamwinner,max(coun) from  (select teamwinner,count(teamwinner) as coun from tournament group by teamwinner desc) as tempq) as tempq2);
select prize,teamwinner from tournament where teamwinner in(select teamID from teamMember where playerID in(select playerID from player where name='Jesica'));
select max(coun) from  (select teamwinner,count(teamwinner) as coun from tournament group by teamwinner desc) as tempq;
