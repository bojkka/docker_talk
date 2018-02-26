SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP DATABASE IF EXISTS `lidl`;
CREATE DATABASE `lidl` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `lidl`;

DROP TABLE IF EXISTS `docker`;
CREATE TABLE `docker` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `docker` (`id`, `entry`) VALUES
(1,	'docker is cool');

