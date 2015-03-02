CREATE TABLE player (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(30) DEFAULT NULL,
  `lastName` varchar(30) DEFAULT NULL,
  `handle` varchar(30) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL,
  `gender` enum('m','f') DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE team (
  `name` varchar(50) NOT NULL DEFAULT '',
  `formed` date DEFAULT NULL,
  `disbanded` date DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE event (
  `title` varchar(50) NOT NULL DEFAULT '',
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `prize` double DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL,
  `winner` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`title`),
  KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE roster (
  `team` varchar(50) NOT NULL DEFAULT '',
  `playerid` int(11) NOT NULL,
  PRIMARY KEY (`team`,`playerid`),
  KEY `team` (`team`,`playerid`),
  KEY `playerid` (`playerid`),
  CONSTRAINT `roster_ibfk_1` FOREIGN KEY (`team`) REFERENCES `team` (`name`),
  CONSTRAINT `roster_ibfk_2` FOREIGN KEY (`playerid`) REFERENCES `player` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE matchresult (
  `teamOne` varchar(50) NOT NULL DEFAULT '',
  `teamTwo` varchar(50) NOT NULL DEFAULT '',
  `event` varchar(50) NOT NULL DEFAULT '',
  `matchOne` enum('one','two') NOT NULL,
  `matchTwo` enum('one','two') NOT NULL,
  `matchThree` enum('one','two') NOT NULL,
  `matchFour` enum('one','two','') DEFAULT NULL,
  `matchFive` enum('one','two','') DEFAULT NULL,
  `winner` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`teamOne`,`teamTwo`,`event`),
  CONSTRAINT `matchresult_ibfk_1` FOREIGN KEY (`teamOne`) REFERENCES `team` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `matchresult_ibfk_2` FOREIGN KEY (`teamTwo`) REFERENCES `team` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `matchresult_ibfk_3` FOREIGN KEY (`event`) REFERENCES `event` (`title`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;