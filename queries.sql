select name dateOfBirth from players where gender = 'f';

select name handle from players where homeCountry = 'Canada';

select * from matches where (Awins = 3 and Bwins = 0) OR (Awins = 0 AND Bwins = 3);

select sum(prize) as prizeSum from tournaments;

select count(*) from teams where disbanded is null;

select name from players where id in (select playerID from teamMembers where teamID in (select teamID from teams where disbanded is not null));

select * from matches where (Awins = 2 and Bwins = 3) OR (Bwins = 2 and Awins - 3);
