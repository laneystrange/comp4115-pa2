CREATE TABLE `event` (
  `eid` int(11) NOT NULL DEFAULT '0',
  `ename` varchar(30) DEFAULT NULL,
  `prize` int(11) DEFAULT NULL,
  `location` varchar(30) DEFAULT NULL,
  `dates` date DEFAULT NULL,
  `winner` int(11) DEFAULT NULL,
  PRIMARY KEY (`eid`),
  KEY `winner` (`winner`),
  CONSTRAINT `event_ibfk_1` FOREIGN KEY (`winner`) REFERENCES `team` (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `game` (
  `gid` int(11) NOT NULL DEFAULT '0',
  `mat_id` int(11) NOT NULL DEFAULT '0',
  `gwinner` int(11) DEFAULT NULL,
  PRIMARY KEY (`gid`,`mat_id`),
  KEY `gwinner` (`gwinner`),
  KEY `mat_id` (`mat_id`),
  CONSTRAINT `game_ibfk_1` FOREIGN KEY (`gwinner`) REFERENCES `team` (`tid`),
  CONSTRAINT `game_ibfk_2` FOREIGN KEY (`mat_id`) REFERENCES `matches` (`mat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `matches` (
  `mat_id` int(11) NOT NULL DEFAULT '0',
  `eid` int(11) DEFAULT NULL,
  `teamA` int(11) DEFAULT NULL,
  `teamB` int(11) DEFAULT NULL,
  `mat_winner` int(11) DEFAULT NULL,
  PRIMARY KEY (`mat_id`),
  KEY `mat_winner` (`mat_winner`),
  KEY `teamA` (`teamA`),
  KEY `teamB` (`teamB`),
  KEY `eid` (`eid`),
  CONSTRAINT `matches_ibfk_1` FOREIGN KEY (`mat_winner`) REFERENCES `team` (`tid`),
  CONSTRAINT `matches_ibfk_2` FOREIGN KEY (`teamA`) REFERENCES `team` (`tid`),
  CONSTRAINT `matches_ibfk_3` FOREIGN KEY (`teamB`) REFERENCES `team` (`tid`),
  CONSTRAINT `matches_ibfk_4` FOREIGN KEY (`eid`) REFERENCES `event` (`eid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `member` (
  `mid` int(11) NOT NULL DEFAULT '0',
  `tid` int(11) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `pseudoname` varchar(30) DEFAULT NULL,
  `gender` enum('M','F') DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`mid`),
  KEY `tid` (`tid`),
  CONSTRAINT `member_ibfk_1` FOREIGN KEY (`tid`) REFERENCES `team` (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





CREATE TABLE `team` (
  `tid` int(11) NOT NULL DEFAULT '0',
  `teamname` varchar(30) DEFAULT NULL,
  `dateformed` date DEFAULT NULL,
  `datedisbaned` date DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



