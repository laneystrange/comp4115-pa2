CREATE TABLE players (
  `id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(25) NOT NULL,
  `last_name` VARCHAR(25) NOT NULL,
  `handle` VARCHAR(15) NOT NULL,
  `date_of_birth` DATE NULL,
  `home_country` VARCHAR(30) NOT NULL,
  `gender` ENUM('m','f') NOT NULL,
  PRIMARY KEY (`id`));
  
  CREATE TABLE teams (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(25) NOT NULL,
  `date_formed` DATE NOT NULL,
  `date_disbanded` DATE NULL,
  PRIMARY KEY (`id`));


CREATE TABLE players_in_teams (
  `team_id` INT NOT NULL,
  `player_id` INT NOT NULL,
  PRIMARY KEY (`team_id`, `player_id`),
  INDEX `player_id_idx` (`player_id` ASC),
  CONSTRAINT `team_id`
    FOREIGN KEY (`team_id`)
    REFERENCES `teams` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `player_id`
    FOREIGN KEY (`player_id`)
    REFERENCES `players` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
CREATE TABLE tournaments (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `date` date NOT NULL,
  `prize` int(11) NOT NULL,
  `location` varchar(20) NOT NULL,
  `winner` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `winner_pk_idx` (`winner`),
  CONSTRAINT `winner_pk` FOREIGN KEY (`winner`) REFERENCES `teams` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
  
  CREATE TABLE matches (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `team_a_id` int(11) NOT NULL,
  `team_b_id` int(11) NOT NULL,
  `winner_id` int(11) NOT NULL,
  `tournament_id` int(11) NOT NULL,
  `game_1_result` int(11) NOT NULL,
  `game_2_result` int(11) NOT NULL,
  `game_3_result` int(11) NOT NULL,
  `game_4_result` int(11) DEFAULT NULL,
  `game_5_result` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `teams_relations_idx` (`team_a_id`),
  KEY `tournament_relations_idx` (`tournament_id`),
  KEY `team_b_fk_idx` (`team_b_id`),
  KEY `winner_fk_idx` (`winner_id`),
  KEY `result_1_fk_idx` (`game_1_result`),
  KEY `result_2_fk_idx` (`game_2_result`),
  KEY `result_3_fk_idx` (`game_3_result`),
  KEY `result_4_fk_idx` (`game_4_result`),
  KEY `result_5_fk_idx` (`game_5_result`),
  CONSTRAINT `result_1_fk` FOREIGN KEY (`game_1_result`) REFERENCES `teams` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `result_2_fk` FOREIGN KEY (`game_2_result`) REFERENCES `teams` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `result_3_fk` FOREIGN KEY (`game_3_result`) REFERENCES `teams` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `result_4_fk` FOREIGN KEY (`game_4_result`) REFERENCES `teams` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `result_5_fk` FOREIGN KEY (`game_5_result`) REFERENCES `teams` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `team_a_fk` FOREIGN KEY (`team_a_id`) REFERENCES `teams` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `team_b_fk` FOREIGN KEY (`team_b_id`) REFERENCES `teams` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `tournament_relations` FOREIGN KEY (`tournament_id`) REFERENCES `tournaments` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `winner_fk` FOREIGN KEY (`winner_id`) REFERENCES `teams` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

