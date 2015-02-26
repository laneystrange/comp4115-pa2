select name dateOfBirth from players where gender = 'f';

select name handle from players where homeCountry = 'Canada';

select * from matches where (Awins = 3 and Bwins = 0) OR (Awins = 0 AND Bwins = 3);

select sum(prize) as prizeSum from tournaments;

select count(*) from teams where disbanded is null;

