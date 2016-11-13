/*
Navicat MySQL Data Transfer

Source Server         : altis
Source Server Version : 50712
Source Host           : localhost:3306
Source Database       : steve_db

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2016-11-13 01:59:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cellphone
-- ----------------------------
DROP TABLE IF EXISTS `cellphone`;
CREATE TABLE `cellphone` (
  `pid` varchar(64) NOT NULL,
  `playerName` varchar(32) NOT NULL,
  `messages` text NOT NULL,
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of cellphone
-- ----------------------------

-- ----------------------------
-- Table structure for containers
-- ----------------------------
DROP TABLE IF EXISTS `containers`;
CREATE TABLE `containers` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `pid` varchar(17) NOT NULL,
  `classname` varchar(32) NOT NULL,
  `pos` varchar(64) DEFAULT NULL,
  `inventory` text NOT NULL,
  `gear` text NOT NULL,
  `dir` varchar(128) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `owned` tinyint(1) DEFAULT '0',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of containers
-- ----------------------------

-- ----------------------------
-- Table structure for dynmarket
-- ----------------------------
DROP TABLE IF EXISTS `dynmarket`;
CREATE TABLE `dynmarket` (
  `id` int(11) NOT NULL DEFAULT '1',
  `prices` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dynmarket
-- ----------------------------

-- ----------------------------
-- Table structure for economy
-- ----------------------------
DROP TABLE IF EXISTS `economy`;
CREATE TABLE `economy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resource` varchar(50) NOT NULL,
  `buyprice` int(12) NOT NULL DEFAULT '1',
  `sellprice` int(12) NOT NULL DEFAULT '1',
  `varprice` int(12) NOT NULL DEFAULT '1',
  `maxprice` int(12) NOT NULL DEFAULT '1',
  `minprice` int(12) NOT NULL DEFAULT '1',
  `factor` int(12) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`,`resource`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of economy
-- ----------------------------
INSERT INTO `economy` VALUES ('1', 'pickaxe', '750', '350', '1', '350', '350', '0');
INSERT INTO `economy` VALUES ('2', 'defibrillator', '900', '450', '1', '450', '450', '0');
INSERT INTO `economy` VALUES ('3', 'toolkit', '350', '100', '1', '100', '100', '0');
INSERT INTO `economy` VALUES ('4', 'fuelEmpty', '-1', '10', '1', '10', '10', '0');
INSERT INTO `economy` VALUES ('5', 'fuelFull', '850', '500', '1', '500', '500', '0');
INSERT INTO `economy` VALUES ('6', 'spikeStrip', '2500', '1200', '1', '1200', '1200', '0');
INSERT INTO `economy` VALUES ('7', 'lockpick', '150', '75', '1', '75', '75', '0');
INSERT INTO `economy` VALUES ('8', 'goldbar', '-1', '95000', '95', '114000', '47500', '1');
INSERT INTO `economy` VALUES ('9', 'blastingcharge', '35000', '10000', '1', '10000', '10000', '0');
INSERT INTO `economy` VALUES ('10', 'boltcutter', '7500', '1000', '1', '1000', '1000', '0');
INSERT INTO `economy` VALUES ('11', 'defusekit', '2500', '2000', '1', '2000', '2000', '0');
INSERT INTO `economy` VALUES ('12', 'storagesmall', '75000', '50000', '1', '50000', '50000', '0');
INSERT INTO `economy` VALUES ('13', 'storagebig', '150000', '125000', '1', '125000', '125000', '0');
INSERT INTO `economy` VALUES ('14', 'oil_unprocessed', '-1', '-1', '1', '-1', '-1', '0');
INSERT INTO `economy` VALUES ('15', 'oil_processed', '-1', '3200', '3', '3840', '1600', '2');
INSERT INTO `economy` VALUES ('16', 'copper_unrefined', '-1', '-1', '1', '-1', '-1', '0');
INSERT INTO `economy` VALUES ('17', 'copper_refined', '-1', '1500', '2', '1800', '750', '2');
INSERT INTO `economy` VALUES ('18', 'iron_unrefined', '-1', '-1', '1', '-1', '-1', '0');
INSERT INTO `economy` VALUES ('19', 'iron_refined', '-1', '3200', '3', '3840', '1600', '2');
INSERT INTO `economy` VALUES ('20', 'salt_unrefined', '-1', '-1', '1', '-1', '-1', '0');
INSERT INTO `economy` VALUES ('21', 'salt_refined', '-1', '1450', '1', '1740', '725', '2');
INSERT INTO `economy` VALUES ('22', 'sand', '-1', '-1', '1', '-1', '-1', '0');
INSERT INTO `economy` VALUES ('23', 'glass', '-1', '1450', '2', '1740', '725', '2');
INSERT INTO `economy` VALUES ('24', 'diamond_uncut', '-1', '750', '1', '750', '750', '0');
INSERT INTO `economy` VALUES ('25', 'diamond_cut', '-1', '2000', '2', '2400', '1000', '2');
INSERT INTO `economy` VALUES ('26', 'rock', '-1', '-1', '1', '-1', '-1', '0');
INSERT INTO `economy` VALUES ('27', 'cement', '-1', '1950', '2', '2340', '975', '2');
INSERT INTO `economy` VALUES ('28', 'heroin_unprocessed', '-1', '-1', '1', '-1', '-1', '0');
INSERT INTO `economy` VALUES ('29', 'heroin_processed', '3500', '2560', '2', '3072', '1280', '1');
INSERT INTO `economy` VALUES ('30', 'cannabis', '-1', '-1', '1', '-1', '-1', '0');
INSERT INTO `economy` VALUES ('31', 'marijuana', '2800', '2350', '2', '2820', '1175', '1');
INSERT INTO `economy` VALUES ('32', 'cocaine_unprocessed', '-1', '-1', '1', '-1', '-1', '0');
INSERT INTO `economy` VALUES ('33', 'cocaine_processed', '7000', '5000', '4', '6000', '2500', '1');
INSERT INTO `economy` VALUES ('34', 'redgull', '1500', '200', '1', '200', '200', '0');
INSERT INTO `economy` VALUES ('35', 'coffee', '10', '5', '1', '5', '5', '0');
INSERT INTO `economy` VALUES ('36', 'waterBottle', '10', '5', '1', '5', '5', '0');
INSERT INTO `economy` VALUES ('37', 'apple', '65', '50', '1', '60', '25', '2');
INSERT INTO `economy` VALUES ('38', 'peach', '68', '55', '1', '66', '27', '2');
INSERT INTO `economy` VALUES ('39', 'tbacon', '75', '25', '1', '25', '25', '0');
INSERT INTO `economy` VALUES ('40', 'donuts', '120', '60', '1', '60', '60', '0');
INSERT INTO `economy` VALUES ('41', 'rabbit_raw', '-1', '95', '1', '114', '47', '3');
INSERT INTO `economy` VALUES ('42', 'rabbit', '150', '115', '1', '115', '115', '0');
INSERT INTO `economy` VALUES ('43', 'salema_raw', '-1', '45', '1', '54', '23', '3');
INSERT INTO `economy` VALUES ('44', 'salema', '75', '55', '1', '55', '55', '0');
INSERT INTO `economy` VALUES ('45', 'ornate_raw', '-1', '40', '1', '48', '20', '3');
INSERT INTO `economy` VALUES ('46', 'ornate', '175', '150', '1', '150', '150', '0');
INSERT INTO `economy` VALUES ('47', 'mackerel_raw', '-1', '175', '1', '210', '88', '3');
INSERT INTO `economy` VALUES ('48', 'mackerel', '250', '200', '1', '200', '200', '0');
INSERT INTO `economy` VALUES ('49', 'tuna_raw', '-1', '700', '1', '840', '350', '3');
INSERT INTO `economy` VALUES ('50', 'tuna', '1250', '1000', '1', '1000', '1000', '0');
INSERT INTO `economy` VALUES ('51', 'mullet_raw', '-1', '250', '1', '300', '125', '3');
INSERT INTO `economy` VALUES ('52', 'mullet', '600', '400', '1', '400', '400', '0');
INSERT INTO `economy` VALUES ('53', 'catshark_raw', '-1', '300', '1', '360', '150', '3');
INSERT INTO `economy` VALUES ('54', 'catshark', '750', '500', '1', '500', '500', '0');
INSERT INTO `economy` VALUES ('55', 'turtle_raw', '-1', '3000', '6', '3600', '1500', '1');
INSERT INTO `economy` VALUES ('56', 'turtle_soup', '1000', '750', '1', '750', '750', '0');
INSERT INTO `economy` VALUES ('57', 'hen_raw', '-1', '65', '1', '78', '33', '3');
INSERT INTO `economy` VALUES ('58', 'hen', '115', '85', '1', '85', '85', '0');
INSERT INTO `economy` VALUES ('59', 'rooster_raw', '-1', '65', '1', '78', '33', '3');
INSERT INTO `economy` VALUES ('60', 'rooster', '90', '85', '1', '85', '85', '0');
INSERT INTO `economy` VALUES ('61', 'sheep_raw', '-1', '95', '1', '114', '48', '3');
INSERT INTO `economy` VALUES ('62', 'sheep', '155', '115', '1', '115', '115', '0');
INSERT INTO `economy` VALUES ('63', 'goat_raw', '-1', '115', '1', '138', '58', '3');
INSERT INTO `economy` VALUES ('64', 'goat', '175', '135', '1', '135', '135', '0');
INSERT INTO `economy` VALUES ('64', 'handcuffs', '500', '250', '1', '250', '250', '0');
INSERT INTO `economy` VALUES ('64', 'key', '50', '25', '1', '25', '25', '0');

-- ----------------------------
-- Table structure for gangs
-- ----------------------------
DROP TABLE IF EXISTS `gangs`;
CREATE TABLE `gangs` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `owner` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `members` text,
  `maxmembers` int(3) DEFAULT '8',
  `bank` int(100) DEFAULT '0',
  `active` tinyint(1) DEFAULT '1',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of gangs
-- ----------------------------

-- ----------------------------
-- Table structure for houses
-- ----------------------------
DROP TABLE IF EXISTS `houses`;
CREATE TABLE `houses` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `pid` varchar(17) NOT NULL,
  `pos` varchar(64) DEFAULT NULL,
  `owned` tinyint(1) DEFAULT '0',
  `garage` tinyint(1) NOT NULL DEFAULT '0',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of houses
-- ----------------------------

-- ----------------------------
-- Table structure for perso
-- ----------------------------
DROP TABLE IF EXISTS `perso`;
CREATE TABLE `perso` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `pid` varchar(50) NOT NULL DEFAULT '',
  `persoCop` text NOT NULL,
  `persoMed` text NOT NULL,
  `persoCiv` text NOT NULL,
  `persoEast` text NOT NULL,
  `Erstellungsdatum` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Aenderungsdatum` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of perso
-- ----------------------------

-- ----------------------------
-- Table structure for players
-- ----------------------------
DROP TABLE IF EXISTS `players`;
CREATE TABLE `players` (
  `uid` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `aliases` text NOT NULL,
  `pid` varchar(17) NOT NULL,
  `cash` int(100) NOT NULL DEFAULT '0',
  `bankacc` int(100) NOT NULL DEFAULT '0',
  `adminlevel` enum('0','1','2','3','4','5') NOT NULL DEFAULT '0',
  `coplevel` enum('0','1','2','3','4','5','6','7','8','9','10','11') NOT NULL DEFAULT '0',
  `mediclevel` enum('0','1','2','3','4','5','6','7','8','9') NOT NULL DEFAULT '0',
  `adaclevel` enum('0','1','2','3','4','5','6','7','8','9') NOT NULL DEFAULT '0',
  `seklevel` enum('0','1','2','3','4','5') NOT NULL DEFAULT '0',
  `civ_licenses` text NOT NULL,
  `cop_licenses` text NOT NULL,
  `med_licenses` text NOT NULL,
  `adac_licenses` text NOT NULL,
  `civ_gear` text NOT NULL,
  `cop_gear` text NOT NULL,
  `med_gear` text NOT NULL,
  `adac_gear` text NOT NULL,
  `civ_stats` varchar(32) NOT NULL DEFAULT '"[100,100,0]"',
  `cop_stats` varchar(32) NOT NULL DEFAULT '"[100,100,0]"',
  `med_stats` varchar(32) NOT NULL DEFAULT '"[100,100,0]"',
  `adac_stats` varchar(32) NOT NULL DEFAULT '"[100,100,0]"',
  `arrested` tinyint(1) NOT NULL DEFAULT '0',
  `donorlevel` enum('0','1','2','3','4','5') NOT NULL DEFAULT '0',
  `blacklist` tinyint(1) NOT NULL DEFAULT '0',
  `civ_alive` tinyint(1) NOT NULL DEFAULT '0',
  `civ_position` varchar(64) NOT NULL DEFAULT '"[]"',
  `playtime` varchar(32) NOT NULL DEFAULT '"[0,0,0]"',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_seen` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `pid` (`pid`),
  KEY `name` (`name`),
  KEY `blacklist` (`blacklist`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of players
-- ----------------------------
INSERT INTO `players` VALUES ('1', 'Steve', '\"[`Steve`]\"', '76561198060389305', '948249', '58875', '5', '11', '9', '9', '5', '\"[[`license_civ_driver`,0],[`license_civ_einbuergerung`,0],[`license_civ_boat`,0],[`license_civ_pilot`,0],[`license_civ_trucking`,0],[`license_civ_gun`,0],[`license_civ_dive`,0],[`license_civ_home`,0],[`license_civ_oil`,0],[`license_civ_diamond`,0],[`license_civ_salt`,0],[`license_civ_sand`,0],[`license_civ_iron`,0],[`license_civ_copper`,0],[`license_civ_cement`,0],[`license_civ_medmarijuana`,0],[`license_civ_cocaine`,0],[`license_civ_heroin`,0],[`license_civ_marijuana`,0],[`license_civ_rebel`,0]]\"', '\"[[`license_cop_cAir`,1],[`license_cop_cg`,1]]\"', '\"[]\"', '\"[]\"', '\"[`U_C_Poloshirt_blue`,``,``,``,``,[`ItemMap`,`ItemCompass`,`ItemWatch`],``,``,[],[],[],[],[],[],[``,``,``,``],[``,``,``,``],[]]\"', '\"[`U_Rangemaster`,`V_Rangemaster_belt`,``,``,``,[`ItemMap`,`ItemCompass`,`ItemWatch`,`ItemGPS`],``,`hgun_P07_snds_F`,[],[`16Rnd_9x21_Mag`,`16Rnd_9x21_Mag`,`16Rnd_9x21_Mag`],[],[],[],[`16Rnd_9x21_Mag`,`16Rnd_9x21_Mag`,`16Rnd_9x21_Mag`],[``,``,``,``],[`muzzle_snds_L`,``,``,``],[]]\"', '\"[]\"', '\"[]\"', '\"[100,100,0]\"', '\"[100,100,0]\"', '\"[100,100,0]\"', '\"[100,100,0]\"', '0', '0', '0', '1', '\"[8446.55,25236.5,0.000747681]\"', '\"[4,0,13]\"', '2016-10-13 20:57:58', '2016-11-03 18:31:27');
INSERT INTO `players` VALUES ('2', '[THD] Shooter', '\"[`[THD] Shooter`]\"', '76561197993498791', '0', '100000', '5', '11', '9', '9', '5', '\"[[`license_civ_driver`,0],[`license_civ_einbuergerung`,0],[`license_civ_boat`,0],[`license_civ_pilot`,0],[`license_civ_trucking`,0],[`license_civ_gun`,0],[`license_civ_dive`,0],[`license_civ_home`,0],[`license_civ_oil`,0],[`license_civ_diamond`,0],[`license_civ_salt`,0],[`license_civ_sand`,0],[`license_civ_iron`,0],[`license_civ_copper`,0],[`license_civ_cement`,0],[`license_civ_medmarijuana`,0],[`license_civ_cocaine`,0],[`license_civ_heroin`,0],[`license_civ_marijuana`,0],[`license_civ_rebel`,0]]\"', '\"[]\"', '\"[]\"', '\"[]\"', '\"[`U_C_Commoner1_1`,``,``,``,``,[`ItemMap`,`ItemCompass`,`ItemWatch`],``,``,[],[],[],[],[],[],[``,``,``,``],[``,``,``,``],[]]\"', '\"[]\"', '\"[]\"', '\"[]\"', '\"[100,100,0]\"', '\"[100,100,0]\"', '\"[100,100,0]\"', '\"[100,100,0]\"', '0', '0', '0', '1', '\"[3519.44,12952.8,0.00135612]\"', '\"[0,0,8]\"', '2016-10-26 21:12:24', '2016-11-08 21:14:16');

-- ----------------------------
-- Table structure for vehicles
-- ----------------------------
DROP TABLE IF EXISTS `vehicles`;
CREATE TABLE `vehicles` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `side` varchar(16) NOT NULL,
  `classname` varchar(64) NOT NULL,
  `type` varchar(16) NOT NULL,
  `pid` varchar(17) NOT NULL,
  `alive` tinyint(1) NOT NULL DEFAULT '1',
  `blacklist` tinyint(1) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `plate` int(20) NOT NULL,
  `color` int(20) NOT NULL,
  `inventory` text NOT NULL,
  `gear` text NOT NULL,
  `fuel` double NOT NULL DEFAULT '1',
  `damage` varchar(256) NOT NULL,
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `insure` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `side` (`side`),
  KEY `pid` (`pid`),
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of vehicles
-- ----------------------------

-- ----------------------------
-- Table structure for wanted
-- ----------------------------
DROP TABLE IF EXISTS `wanted`;
CREATE TABLE `wanted` (
  `wantedID` varchar(64) NOT NULL,
  `wantedName` varchar(32) NOT NULL,
  `wantedCrimes` text NOT NULL,
  `wantedBounty` int(100) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`wantedID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of wanted
-- ----------------------------

-- ----------------------------
-- Procedure structure for deleteDeadVehicles
-- ----------------------------
DROP PROCEDURE IF EXISTS `deleteDeadVehicles`;
DELIMITER ;;
CREATE DEFINER=`steve_us`@`localhost` PROCEDURE `deleteDeadVehicles`()
BEGIN
  DELETE FROM `vehicles` WHERE `alive` = 0;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for deleteInactiveWanteds
-- ----------------------------
DROP PROCEDURE IF EXISTS `deleteInactiveWanteds`;
DELIMITER ;;
CREATE DEFINER=`steve_us`@`localhost` PROCEDURE `deleteInactiveWanteds`()
BEGIN
  DELETE FROM `wanted` WHERE `active` = 0;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for deleteOldContainers
-- ----------------------------
DROP PROCEDURE IF EXISTS `deleteOldContainers`;
DELIMITER ;;
CREATE DEFINER=`steve_us`@`localhost` PROCEDURE `deleteOldContainers`()
BEGIN
  DELETE FROM `containers` WHERE `owned` = 0;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for deleteOldGangs
-- ----------------------------
DROP PROCEDURE IF EXISTS `deleteOldGangs`;
DELIMITER ;;
CREATE DEFINER=`steve_us`@`localhost` PROCEDURE `deleteOldGangs`()
BEGIN
  DELETE FROM `gangs` WHERE `active` = 0;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for deleteOldHouses
-- ----------------------------
DROP PROCEDURE IF EXISTS `deleteOldHouses`;
DELIMITER ;;
CREATE DEFINER=`steve_us`@`localhost` PROCEDURE `deleteOldHouses`()
BEGIN
  DELETE FROM `houses` WHERE `owned` = 0;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for resetLifeVehicles
-- ----------------------------
DROP PROCEDURE IF EXISTS `resetLifeVehicles`;
DELIMITER ;;
CREATE DEFINER=`steve_us`@`localhost` PROCEDURE `resetLifeVehicles`()
BEGIN
  UPDATE `vehicles` SET `active`= 0;
END
;;
DELIMITER ;
SET FOREIGN_KEY_CHECKS=1;
