CREATE TABLE `events` (
  `eid` int(11) NOT NULL,
  `ename` varchar(25) DEFAULT NULL,
  `prizeAmount` int(11) DEFAULT NULL,
  `location` varchar(25) DEFAULT NULL,
  `Eventdate` date DEFAULT NULL,
  `EventWinner` int(11) DEFAULT NULL,
  PRIMARY KEY (`eid`),
  KEY `EventWinner` (`EventWinner`),
  CONSTRAINT `events_ibfk_1` FOREIGN KEY (`EventWinner`) REFERENCES `teams` (`tid`)
);

CREATE TABLE `games` (
  `gameid` int(11) NOT NULL DEFAULT '0',
  `matchid` int(11) NOT NULL DEFAULT '0',
  `gamewinner` int(11) DEFAULT NULL,
  PRIMARY KEY (`gameid`,`matchid`),
  KEY `gamewinner` (`gamewinner`),
  CONSTRAINT `games_ibfk_1` FOREIGN KEY (`gamewinner`) REFERENCES `teams` (`tid`)
);

CREATE TABLE `matches` (
  `matchid` int(11) NOT NULL,
  `eid` int(11) DEFAULT NULL,
  `team1` int(11) DEFAULT NULL,
  `team2` int(11) DEFAULT NULL,
  `matchwinner` int(11) DEFAULT NULL,
  PRIMARY KEY (`matchid`),
  KEY `eid` (`eid`),
  KEY `team1` (`team1`),
  KEY `team2` (`team2`),
  KEY `matchwinner` (`matchwinner`),
  CONSTRAINT `matches_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `events` (`eid`),
  CONSTRAINT `matches_ibfk_2` FOREIGN KEY (`team1`) REFERENCES `teams` (`tid`),
  CONSTRAINT `matches_ibfk_3` FOREIGN KEY (`team2`) REFERENCES `teams` (`tid`),
  CONSTRAINT `matches_ibfk_4` FOREIGN KEY (`matchwinner`) REFERENCES `teams` (`tid`)
);

CREATE TABLE `players` (
  `pid` int(11) NOT NULL,
  `tid` int(11) DEFAULT NULL,
  `name` varchar(25) DEFAULT NULL,
  `handle` varchar(25) DEFAULT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `country` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `tid` (`tid`),
  CONSTRAINT `players_ibfk_1` FOREIGN KEY (`tid`) REFERENCES `teams` (`tid`)
);

CREATE TABLE `teams` (
  `tid` int(11) NOT NULL,
  `teamname` varchar(20) DEFAULT NULL,
  `dateformed` date DEFAULT NULL,
  `datedisbanded` date DEFAULT NULL,
  PRIMARY KEY (`tid`)
);


