/*
SQLyog Enterprise - MySQL GUI v8.14 
MySQL - 5.7.17-0ubuntu0.16.04.1 : Database - baypassion_db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`baypassion_db` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `baypassion_db`;

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `CATEGORY_ID` int(5) NOT NULL AUTO_INCREMENT,
  `CATEGORY_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CATEGORY_FLAG` tinyint(5) DEFAULT NULL,
  PRIMARY KEY (`CATEGORY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `category` */

insert  into `category`(`CATEGORY_ID`,`CATEGORY_NAME`,`CATEGORY_FLAG`) values (1,'local places',0),(2,'automotive',0),(3,'dating',0),(4,'jobs',0),(5,'community',0),(6,'musician',0),(7,'adult',0),(8,'buy/ sell/ trade',0),(9,'rentals',0),(10,'real estate',0),(11,'services',0);

/*Table structure for table `category_items` */

DROP TABLE IF EXISTS `category_items`;

CREATE TABLE `category_items` (
  `CATEGORY_ITEM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CATEGORY_ITEM_NAME` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CATEGORY_ID` int(11) DEFAULT NULL,
  `CATEGORY_ITEM_FLAG` tinyint(5) DEFAULT NULL,
  PRIMARY KEY (`CATEGORY_ITEM_ID`),
  KEY `FK6jyw3tg2v0k6u2ypcfx4xpqqh` (`CATEGORY_ID`),
  CONSTRAINT `FK6jyw3tg2v0k6u2ypcfx4xpqqh` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `category` (`CATEGORY_ID`),
  CONSTRAINT `FK_category_items` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `category` (`CATEGORY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `category_items` */

insert  into `category_items`(`CATEGORY_ITEM_ID`,`CATEGORY_ITEM_NAME`,`CATEGORY_ID`,`CATEGORY_ITEM_FLAG`) values (1,'events',1,0),(2,'bars/clubs',1,0),(3,'restaurants',1,0),(4,'salons/nails/spas',1,0),(5,'auto-truck-rv',2,0),(6,'auto parts',2,0),(7,'services',2,0),(8,'women > men',3,0),(9,'men > women',3,0),(10,'men > men',3,0),(11,'women > women',3,0),(12,'t >',3,0),(13,'acctg/finance',4,0),(14,'admin/office',4,0),(15,'computer/technical',4,0),(16,'customer service',4,0),(17,'domestic',4,0),(18,'driver/delivery/courier',4,0),(19,'education',4,0),(20,'focus group/studies',4,0),(21,'job wanted/resume',4,0),(22,'mgmt/professional',4,0),(23,'medical/health',4,0),(24,'miscellaneous',4,0),(25,'real estate',4,0),(26,'rest/retail/hotel',4,0),(27,'sales/mktg',4,0),(28,'salon/spa',4,0),(29,'show biz/audition',4,0),(30,'trades/labor',4,0),(31,'childcare',5,0),(32,'classes/workshops',5,0),(33,'general',5,0),(34,'groups',5,0),(35,'lost & found',5,0),(36,'volunteers',5,0),(37,'available/wanted',6,0),(38,'equip/instruments',6,0),(39,'instruction',6,0),(40,'services',6,0),(41,'plug the band',6,0),(42,'escorts',7,0),(43,'body rubs',7,0),(44,'strippers & strip clubs',7,0),(45,'dom & fetish',7,0),(46,'ts',7,0),(47,'male escorts',7,0),(48,'phone & websites',7,0),(49,'adult jobs',7,0),(50,'antiq.-collectibles',8,0),(51,'appliances',8,0),(52,'business',8,0),(53,'boats & motorcycles',8,0),(54,'clothing/jewelry',8,0),(55,'farm/garden',8,0),(56,'computers/electronics',8,0),(57,'free',8,0),(58,'furniture',8,0),(59,'household items',8,0),(60,'miscellaneous',8,0),(61,'pets, pet supplies',8,0),(62,'sports equip.',8,0),(63,'tickets',8,0),(64,'tools/materials',8,0),(65,'yard sales',8,0),(66,'want-trade',8,0),(67,'roommates',9,0),(68,'apt/condo/house',9,0),(69,'commercial',9,0),(70,'vacation',9,0),(71,'miscellaneous',9,0),(72,'rentals wanted',9,0),(73,'house/condo',10,0),(74,'land for sale',10,0),(75,'commercial',10,0),(76,'misc',10,0),(77,'wanted',10,0),(78,'biz opps',11,0),(79,'business',11,0),(80,'cleaning',11,0),(81,'computer',11,0),(82,'creative',11,0),(83,'financial',11,0),(84,'health & beauty',11,0),(85,'home improvement',11,0),(86,'landscape/lawn',11,0),(87,'labor/moving',11,0),(88,'legal',11,0),(89,'massage',11,0),(90,'misc.',11,0),(91,'real estate',11,0);

/*Table structure for table `city` */

DROP TABLE IF EXISTS `city`;

CREATE TABLE `city` (
  `CITY_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CITY_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `STATE_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`CITY_ID`),
  KEY `FKkek8puqyya8jx793h9lecieeu` (`STATE_ID`),
  CONSTRAINT `FKkek8puqyya8jx793h9lecieeu` FOREIGN KEY (`STATE_ID`) REFERENCES `state` (`STATE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `city` */

insert  into `city`(`CITY_ID`,`CITY_NAME`,`STATE_ID`) values (1,'Auburn',1),(2,'Birmingham',1),(3,'Dothan',1),(4,'Gadsden',1),(5,'Huntsville',1),(6,'Mobile',1),(7,'Montgomery',1),(8,'Muscle Shoals',1),(9,'Tuscaloosa',1),(10,'Anchorage',2),(11,'Fairbanks',2),(12,'Juneau',2),(13,'Kenai Peninsula',2),(14,'Flagstaff/Sedona',3),(15,'Mohave County',3),(16,'Phoenix',3),(17,'Prescott',3),(18,'Show Low',3),(19,'Sierra Vista',3),(20,'Tucson',3),(21,'Yuma',3),(22,'Fayetteville',4),(23,'Fort Smith',4),(24,'Jonesboro',4),(25,'Little Rock',4);

/*Table structure for table `country` */

DROP TABLE IF EXISTS `country`;

CREATE TABLE `country` (
  `COUNTRY_ID` int(11) NOT NULL AUTO_INCREMENT,
  `COUNTRY_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`COUNTRY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `country` */

insert  into `country`(`COUNTRY_ID`,`COUNTRY_NAME`) values (1,'United State');

/*Table structure for table `post_add` */

DROP TABLE IF EXISTS `post_add`;

CREATE TABLE `post_add` (
  `POST_ADD_ID` int(11) NOT NULL AUTO_INCREMENT,
  `POST_ADD_TITLE` varchar(1000) DEFAULT NULL,
  `POST_ADD_DESCRIPTION` varchar(20000) DEFAULT NULL,
  `POST_ADD_SELLING_PRICE` varchar(100) DEFAULT NULL,
  `POST_ADD_CREATE_MAP_LINK` varchar(500) DEFAULT NULL,
  `POST_ADD_ZIP_CODE` varchar(100) DEFAULT NULL,
  `POST_ADD_EMAIL_ADDRESS` varchar(100) DEFAULT NULL,
  `POST_ADD_PHONE_NUMBER` bigint(20) DEFAULT NULL,
  `POST_ADD_MOBILE_NUMBER` bigint(20) DEFAULT NULL,
  `POST_ADD_DISPLAY_OPTION` int(10) DEFAULT '0',
  `POST_ADD_VIDEO` varchar(100) DEFAULT NULL,
  `POST_ADD_IMAGE` varchar(100) DEFAULT NULL,
  `POST_ADD_MOVE_ADD_TOP_LISTING_DECISION` int(100) DEFAULT '0',
  `POST_ADD_MOVE_ADD_TOP_LISTING_HOURS` varchar(50) DEFAULT NULL,
  `POST_ADD_ADD_NEARBY_CITIES` varchar(50) DEFAULT NULL,
  `POST_ADD_TOTAL_AMOUNT` varchar(500) DEFAULT '0',
  `POST_ADD_AUTO_REPOST_ADD_MOVE_ON_DECISION` int(10) DEFAULT NULL,
  `POST_ADD_AUTO_REPOST_ADD_MOVE_ON_DAY` int(100) DEFAULT NULL,
  `POST_ADD_AUTO_REPOST_ADD_TIME` varchar(30) DEFAULT NULL,
  `POST_ADD_AUTO_REPOST_ADD_NO_OF_TIMES` varchar(50) DEFAULT NULL,
  `POST_ADD_SPONSOR_ADD` int(50) DEFAULT '0',
  `POST_ADD_SPONSOR_ADD_NO_OF_WEEKS` varchar(50) DEFAULT NULL,
  `POST_ADD_DATE` date DEFAULT NULL,
  `USER_ID` int(3) DEFAULT NULL,
  `CREATED_DATE` date DEFAULT NULL,
  `UPDATED_DATE` date DEFAULT NULL,
  PRIMARY KEY (`POST_ADD_ID`),
  KEY `FK_post_add` (`USER_ID`),
  CONSTRAINT `FK_post_add` FOREIGN KEY (`USER_ID`) REFERENCES `users` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `post_add` */

/*Table structure for table `state` */

DROP TABLE IF EXISTS `state`;

CREATE TABLE `state` (
  `STATE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `STATE_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COUNTRY_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`STATE_ID`),
  KEY `FKit11p5l5munscwopy3tk7diur` (`COUNTRY_ID`),
  CONSTRAINT `FKit11p5l5munscwopy3tk7diur` FOREIGN KEY (`COUNTRY_ID`) REFERENCES `country` (`COUNTRY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `state` */

insert  into `state`(`STATE_ID`,`STATE_NAME`,`COUNTRY_ID`) values (1,'Alabama',1),(2,'Alaska',1),(3,'Arizona',1),(4,'Arkansas',1),(5,'California',1),(6,'Colorado',1),(7,'Connecticut',1),(8,'Delaware',1),(9,'District of Columbia',1),(10,'Florida',1),(11,'Georgia',1),(12,'Hawaii',1),(13,'Idaho',1),(14,'Illinois',1),(15,'Indiana',1),(16,'Iowa',1),(17,'Kansas',1),(18,'Kentucky',1),(19,'Louisiana',1),(20,'Maine',1),(21,'Maryland',1),(22,'Massachusetts',1),(23,'Michigan',1),(24,'Minnesota',1),(25,'Mississippi',1),(26,'Missouri',1),(27,'Montana',1),(28,'Nebraska',1),(29,'Nevada',1),(30,'New Hampshire',1),(31,'New Mexico',1),(32,'New York',1),(33,'North Carolina',1),(34,'North Dakota',1),(35,'Ohio',1),(36,'Oklahoma',1),(37,'Oregon',1),(38,'Pennsylvania',1),(39,'Rhoae Island',1),(40,'South Carolina',1),(41,'South Dakota',1),(42,'Tennessee',1),(43,'Texas',1),(44,'Utah',1),(45,'Vermont',1),(46,'Virginia',1),(47,'Washington',1),(48,'West Virginia',1),(49,'Wisconsin',1),(50,'Wyoming',1);

/*Table structure for table `user_role` */

DROP TABLE IF EXISTS `user_role`;

CREATE TABLE `user_role` (
  `ROLE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ROLE_NAME` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `user_role` */

insert  into `user_role`(`ROLE_ID`,`ROLE_NAME`) values (1,'ADMIN'),(2,'USER');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `USER_ID` int(5) NOT NULL AUTO_INCREMENT,
  `EMAIL` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PASSWORD` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ROLE_ID` int(11) DEFAULT NULL,
  `IS_ADMIN` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`USER_ID`),
  KEY `FK_users` (`ROLE_ID`),
  CONSTRAINT `FK7sgyvs08apdt4srrhh5g0yswj` FOREIGN KEY (`ROLE_ID`) REFERENCES `user_role` (`ROLE_ID`),
  CONSTRAINT `FK_users` FOREIGN KEY (`ROLE_ID`) REFERENCES `user_role` (`ROLE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`USER_ID`,`EMAIL`,`PASSWORD`,`ROLE_ID`,`IS_ADMIN`) values (1,'sddssdg',NULL,NULL,NULL),(2,'sddssdg',NULL,NULL,NULL),(3,'gfdgdfg','dgdfgd',NULL,NULL),(4,'fghfghffhfh','hgffgfghfhfgh',NULL,NULL),(5,'sdfsfs@sf','reerre',NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
