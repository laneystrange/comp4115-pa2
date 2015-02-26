//female players
select name, dob from Player where gender = 'f';

//players from Canada
select handle, name from Player where homeCountry = "Canada";

//How much Prize Money Given Out
select sum(prize) from Event;

//teams still active
select count(*) from Team where dateEnded is null;

//team swept

//players from defunct teams
select distinct name from player where id in (select playerId from TeamMember where teamId in (select id from Team where dateEnded is not null));

//most winning team
select name from Team where id = (select winnerId, count(*) as c FROM Game GROUP BY winnerId order by c desc limit 1);

//which team earned the most money
select name from Team where id = (select winningTeamId from Event order by prize desc limit 1);

//how much did player 'Win' make?
select sum(prize) from event  where winningteamid in (select teamId from teamMember where playerId = (select id from Player where name = "Win"));

//what teams was win on?
select name from team where id in (select teamId from teamMember where playerId = (select id from Player where name = "Win"));

