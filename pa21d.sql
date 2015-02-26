1) select name,dob from players where gender='F';

2) select playername, handle from players where country='pakistan';

3) select matchid, count(matchid) as swept from games group by matchid having swept=3;

4) select sum(grandprize) from tournamentinfo;

5) select count(*) from teams where datedisbanded is null;

6) select playername from players where teamid in(select teamid from teams where datedisbanded is not null);

7) select tournamentwinner from tournamentinfo group by tournamentwinner order by count(tournamentwinner) desc limit 1;

8) select tournamentwinner from tournamentinfo group by tournamentwinner order by count(tounamentwinner) desc limit 1;

9) select sum(grandprize), tournamentwinner from tournamentinfo group by tounamentwinner having tournamentwinner in(select teamid from players where name="karishma");

10) How many matches does the team 1 played till now?

select((select count(team1) from matchresults where team1=1)+(select count(team2) from matchresults where team2=1)) as total;
