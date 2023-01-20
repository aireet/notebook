
CREATE DATABASE IF NOT EXISTS `loc`  CHARACTER SET utf8mb4;

CREATE TABLE IF NOT EXISTS `loc`.`loc_case`(
   `id` INT UNSIGNED AUTO_INCREMENT,
   `name` VARCHAR(100) NOT NULL,
   `ts` TIMESTAMP NOT NULL,
   `dt` DATETIME NOT NULL,
   PRIMARY KEY ( `id` )
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- 写不受timezone影响
INSERT INTO `loc`.`loc_case` (`id`,`name`,`ts`,`dt`) VALUES  (1, "a", "2023-01-01 15:04:05","2023-01-01 15:04:05") ON DUPLICATE KEY UPDATE ts = "2023-01-01 15:04:05",dt="2023-01-01 15:04:05";


SELECT * FROM `loc`.loc_case;
/*
   1	a	2023-01-01 15:04:05	2023-01-01 15:04:05
*/

SET @@session.time_zone = "+00:00";
SELECT * FROM `loc`.loc_case;
/*
   1	a	2023-01-01 15:04:05	2023-01-01 15:04:05
*/

SET @@session.time_zone = "+08:00";
SELECT * FROM `loc`.loc_case;
/*
   1	a	2023-01-01 23:04:05	2023-01-01 15:04:05
*/



