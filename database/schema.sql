-- SQL server start /usr/local/Cellar/mysql\@5.7/5.7.23/bin/mysql.server start
-- Load schema /usr/local/Cellar/mysql\@5.7/5.7.23/bin/mysql -u root < schema.sql

DROP DATABASE IF EXISTS test;
CREATE DATABASE test;
USE test;

-- ---
-- Table 'candidates'
-- ---

DROP TABLE IF EXISTS `candidates`;

CREATE TABLE `candidates` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,
  `times_id` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'times'
-- ---

DROP TABLE IF EXISTS `times`;

CREATE TABLE `times` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,
  `interviewer_id` INTEGER NULL DEFAULT NULL,
  `slot` DATETIME,
  PRIMARY KEY (`id`)
);

-- ---
-- Foreign Keys
-- ---

-- ALTER TABLE `songs` ADD FOREIGN KEY (artist_id) REFERENCES `artists` (`id`);

-- ---
-- Test Data
-- ---

-- INSERT INTO `artists` (`name`, `artist_imageUrl`) VALUES
-- ('','');
