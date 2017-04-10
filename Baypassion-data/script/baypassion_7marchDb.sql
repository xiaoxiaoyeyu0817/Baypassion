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

/*Table structure for table `ad_post` */

DROP TABLE IF EXISTS `ad_post`;

CREATE TABLE `ad_post` (
  `AD_POST_ID` int(11) NOT NULL AUTO_INCREMENT,
  `AUTO_REPOST_AD` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AUTO_REPOST_AD_AFTER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DISPLAY_OPTIONS` bit(1) DEFAULT NULL,
  `EMAIL_ID` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IMAGE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MAP_LINK` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MOBILE_NUMBER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MOBILE_NOTIFICATION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MOVE_AD_TO_TOP` int(11) DEFAULT NULL,
  `NEAR_BY_CITY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NO_OF_TIMES` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NUMBER_OF_WEEK` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SELLING_PRICE` int(11) DEFAULT NULL,
  `SPONSOR_Ad` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TERM_OF_USE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VIDEO` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ZIP_CODE` int(11) DEFAULT NULL,
  `CATEGORY_ITEM_ID` int(11) DEFAULT NULL,
  `CITY_ID` int(11) DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`AD_POST_ID`),
  KEY `FKmba4321at775k8g20fq7lb9yk` (`CATEGORY_ITEM_ID`),
  KEY `FK8g5668n9l3sol9268dx3aahn` (`CITY_ID`),
  CONSTRAINT `FK8g5668n9l3sol9268dx3aahn` FOREIGN KEY (`CITY_ID`) REFERENCES `city` (`CITY_ID`),
  CONSTRAINT `FKmba4321at775k8g20fq7lb9yk` FOREIGN KEY (`CATEGORY_ITEM_ID`) REFERENCES `category_items` (`CATEGORY_ITEM_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `ad_post` */

insert  into `ad_post`(`AD_POST_ID`,`AUTO_REPOST_AD`,`AUTO_REPOST_AD_AFTER`,`DESCRIPTION`,`DISPLAY_OPTIONS`,`EMAIL_ID`,`IMAGE`,`location`,`MAP_LINK`,`MOBILE_NUMBER`,`MOBILE_NOTIFICATION`,`MOVE_AD_TO_TOP`,`NEAR_BY_CITY`,`NO_OF_TIMES`,`NUMBER_OF_WEEK`,`SELLING_PRICE`,`SPONSOR_Ad`,`TERM_OF_USE`,`TITLE`,`VIDEO`,`ZIP_CODE`,`CATEGORY_ITEM_ID`,`CITY_ID`,`USER_ID`) values (1,'dds','dsd','sdd','','0',NULL,'sddddd','sdsd','56565656',NULL,0,'dssdds','sddd','2',233,'2323','dsd2','sddd',NULL,232323,1,NULL,NULL),(3,'1 Day','7 PM','nvbnm vnm','','66556','','nmbmb','bjbjb','765567','578678',3,'','26 times for $1.02 ','1 week ($0.00)',67867,'','','gjgj','',76767676,5,5,NULL),(4,'1 Day','7 PM','hhjhjhkjhjhj','','76767676','','7887876','67666786','66666','76868',1,'','26 times for $1.02 ','1 week ($0.00)',888778,'','','kjkjkjkj','',76776,1,1,NULL),(5,'1 Day','7 PM','hhhhhh','','8888','','8888','88888','88888','88888',16,'','26 times for $1.02 ','1 week ($0.00)',78888,'','','hhj','',8888,1,1,NULL),(6,'1 Day','8 PM','vnvn','','6565656','','5555','5656565','555565656','55555656',15,'','26 times for $1.02 ','1 week ($0.00)',5655656,'','','vnvn','',5565656,5,5,NULL),(7,'1 Day','7 PM','hhh','','6676','','77777','7','6675657','7867676',15,'','26 times for $1.02 ','1 week ($0.00)',777,'','','hkhkh','',77787676,1,1,NULL),(8,'1 Day','7 PM','gjgjgh','','565656','','75757','575765','5656565656','56555656',14,'','26 times for $1.02 ','1 week ($0.00)',55555,'','','gjg','',57656,3,3,NULL),(9,'1 Day','8 PM','gjghjghjkgj','','7676','','7676767676','7676767676','565557657','565656566556',12,'','26 times for $1.02 ','1 week ($0.00)',666767676,'','','gjgjg','',66767676,1,1,NULL),(10,'1 Day','7 PM','hhhjhjhjhj','','766676','','666','666','767676','7666767676',1,'','52 times for $2.04 ','1 week ($0.00)',76766676,'','','hjhjhjhjhjhj','',666,6,6,NULL),(11,'1 Day','7 PM','hhkhkhkh','','7777','','7777','777','77777','77777',1,'','26 times for $1.02 ','1 week ($0.00)',777777,'','','hjkhhjhl','',777,5,5,NULL),(12,'1 Day','7 PM','ghggg','','76766','','76767676','76767676767','666','666',1,'','26 times for $1.02 ','1 week ($0.00)',767676,'','','gghghjghghghghgh','',676767676,5,5,4),(13,'1 Day','7 PM','ghjfhjf','','dfsfvnsf','','55565656','565555','64654','546546',18,'','26 times for $1.02 ','1 week ($0.00)',56555,'','','ndfvnsvf','',56565656,2,2,NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=445 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `city` */

insert  into `city`(`CITY_ID`,`CITY_NAME`,`STATE_ID`) values (1,'Auburn',1),(2,'Birmingham',1),(3,'Dothan',1),(4,'Gadsden',1),(5,'Huntsville',1),(6,'Mobile',1),(7,'Montgomery',1),(8,'Muscle Shoals',1),(9,'Tuscaloosa',1),(10,'Anchorage',2),(11,'Fairbanks',2),(12,'Juneau',2),(13,'Kenai Peninsula',2),(14,'Flagstaff/Sedona',3),(15,'Mohave County',3),(16,'Phoenix',3),(17,'Prescott',3),(18,'Show Low',3),(19,'Sierra Vista',3),(20,'Tucson',3),(21,'Yuma',3),(22,'Fayetteville',4),(23,'Fort Smith',4),(24,'Jonesboro',4),(25,'Little Rock',4),(26,'Bakersfield',5),(27,'Chico',5),(28,'Chico',5),(29,'Fresno',5),(30,'Humboldt County',5),(31,'Imperial County',5),(32,'Inland Empire',5),(33,'Long Beach',5),(34,'Los Angeles',5),(35,'Mendocino',5),(36,'Merced\r\n',5),(37,'Modesto',5),(38,'Monterey',5),(39,'North Bay',5),(40,'North Bay',5),(41,'Oakland/East Bay',5),(42,'Orange County',5),(43,'Palm Springs',5),(44,'Palmdale/Lancaster',5),(45,'Redding',5),(46,'Sacramento',5),(47,'Sacramento',5),(48,'San Diego',5),(49,'San Fernando Valley',5),(50,'San Francisco',5),(51,'San Gabriel Valley',5),(52,'San Jose',5),(53,'San Jose',5),(54,'San Luis Obispo',5),(55,'San Mateo',5),(56,'Santa Barbara',5),(57,'Santa Cruz',5),(58,'Santa Maria',5),(59,'Siskiyou',5),(60,'Stockton',5),(61,'Stockton',5),(62,'Susanville',5),(63,'Ventura',5),(64,'Visalia',5),(67,'Boulder',6),(68,'Colorado Springs',6),(69,'Denver',6),(70,'Fort Collins',6),(71,'Pueblo',6),(72,'Rockies',6),(73,'Western Slope',6),(74,'Bridgeport',7),(75,'Eastern Connecticut',7),(76,'Hartford',7),(77,'New Haven',7),(78,'Northwest ',7),(79,'Connecticut',7),(80,'Northern Virginia',9),(81,'Southern Maryland',9),(82,'Washington D.C.',9),(83,'Daytona',10),(84,'Fort Lauderdale',10),(85,'Fort Myers',10),(86,'Gainesville',10),(87,'Jacksonville',10),(88,'Keys',10),(89,'Lakeland',10),(90,'Miami',10),(91,'Ocala',10),(92,'Okaloosa',10),(93,'Orlando',10),(94,'Palm Bay',10),(95,'Panama City',10),(96,'Pensacola',10),(97,'Sarasota/Bradenton',10),(98,'Space Coast',10),(99,'St. Augustine\r\n',10),(100,'Tallahassee',10),(101,'Tampa',10),(102,'Treasure Coast',10),(103,'West Palm Beach',10),(104,'Albany',11),(105,'Athens',11),(106,'Atlanta',11),(107,'Augusta',11),(108,'Brunswick',11),(109,'Columbus',11),(110,'Macon',11),(111,'Northwest Georgia',11),(112,'Savannah',11),(113,'Statesboro',11),(114,'Valdosta',11),(115,'Big Island',12),(116,'Honolulu',12),(117,'Kauai',12),(118,'Maui',12),(119,'Boise',13),(120,'East Idaho',13),(121,'Lewiston',13),(122,'Twin Falls',13),(123,'Bloomington',14),(124,'Carbondale',14),(125,'Chambana',14),(126,'Chicago',14),(127,'Decatur',14),(128,'La Salle County',14),(129,'Mattoon',14),(130,'Peoria',14),(131,'Rockford',14),(132,'Springfield',14),(133,'Western Illinois',14),(134,'Bloomington',15),(135,'Evansville',15),(136,'Ft Wayne',15),(137,'Indianapolis',15),(138,'Indianapolis',15),(139,'Kokomo',15),(140,'Lafayette',15),(141,'Muncie',15),(142,'Richmond',15),(143,'South Bend',15),(144,'Terre Haute',15),(145,'Ames',16),(146,'Cedar Rapids',16),(147,'Desmoines',16),(148,'Dubuque',16),(149,'Fort Dodge',16),(150,'Iowa City',16),(151,'Mason City',16),(152,'Quad Cities',16),(153,'Sioux City',16),(154,'Southest Iowa',16),(155,'Waterloo\r\n',16),(156,'Lawrence',17),(157,'Manhattan',17),(158,'Salina',17),(159,'Topeka',17),(160,'Wichita',17),(161,'Bowling Green',18),(162,'Eastern Kentucky',18),(163,'Lexington',18),(164,'Louisville',18),(165,'Owensboro\r\n',18),(166,'Western Kentucky',18),(167,'Alexandria',19),(168,'Baton Rouge',19),(169,'Houma',19),(170,'Lafayette',19),(171,'Lake Charles',19),(172,'Monroe',19),(173,'New Orleans',19),(174,'Shreveport',19),(175,'Annapolis',21),(176,'Baltimore',21),(177,'Cumberland Valley',21),(178,'Eastern Shore',21),(179,'Frederick',21),(180,'Western Maryland',21),(181,'Boston',22),(182,'Brockton',22),(183,'Cape Cod',22),(184,'Lowell',22),(185,'South Coast',22),(186,'Springfield',22),(187,'Worcester',22),(188,'Ann Arbor',23),(189,'Battle Creek',23),(190,'Central Michigan',23),(191,'Detroit',23),(192,'Flint',23),(193,'Grand Rapids',23),(194,'Holland',23),(195,'Jackson',23),(196,'Kalamazoo',23),(197,'Lansing',23),(198,'Monroe',23),(199,'Muskegon',23),(200,'Northern Michigan',23),(201,'Port Huron',23),(202,'Saginaw',23),(203,'Southwest Michigan',23),(204,'Upper Peninsula',23),(205,'Bemidji',24),(206,'Brainerd',24),(207,'Duluth',24),(208,'Mankato',24),(209,'Minneapolis / St. Paul',24),(210,'Rochester',24),(211,'St. Cloud',24),(212,'Biloxi',25),(213,'Hattiesburg',25),(214,'Jackson',25),(215,'Meridian',25),(216,'North Mississippi',25),(217,'Southwest Mississippi',25),(218,'Columbia/Jeff City',26),(219,'Joplin',26),(220,'Kansas City',26),(221,'Kirksville',26),(222,'Lake Of The Ozarks',26),(223,'Southeast Missouri',26),(224,'Springfield',26),(225,'St Joseph',26),(226,'St. Louis',26),(227,'Billings',27),(228,'Bozeman',27),(229,'Butte',27),(230,'Great Falls',27),(231,'Helena',27),(232,'Kalispell',27),(233,'Missoula',27),(234,'Grand Island',28),(235,'Lincoln',28),(236,'North Platte',28),(237,'Omaha',28),(238,'Scottsbluff',28),(239,'Elko',29),(240,'Las Vegas',29),(241,'Reno',29),(242,'Reno',29),(243,'Albuquerque',31),(244,'Clovis / Portales',31),(245,'Farmington',31),(246,'Las Cruces',31),(247,'Roswell / Carlsbad',31),(248,'Albany',32),(249,'Binghamton',32),(250,'Bronx',32),(251,'Brooklyn',32),(252,'Buffalo',32),(253,'Catskills',32),(254,'Chautauqua',32),(255,'Elmira',32),(256,'Fairfield',32),(257,'Finger Lakes',32),(258,'Glens Falls',32),(259,'Hudson Valley',32),(260,'Ithaca',32),(261,'Long Island',32),(262,'Manhattan',32),(263,'Oneonta',32),(264,'Plattsburgh',32),(265,'Potsdam',32),(266,'Queens',32),(267,'Rochester',32),(268,'Staten Island',32),(269,'Syracuse\r\n',32),(270,'Twin Tiers\r\n',32),(271,'Utica',32),(272,'Watertown',32),(273,'Westchester',32),(274,'Asheville',33),(275,'Boone',33),(276,'Charlotte',33),(277,'Eastern',33),(278,'Fayetteville',33),(279,'Greensboro',33),(280,'Hickory',33),(281,'High Point',33),(282,'Outer Banks',33),(283,'Raleigh-Durham',33),(284,'Wilmington',33),(285,'Winston-Salem',33),(286,'Bismarck\r\n',34),(287,'Fargo',34),(288,'Grand Forks',34),(289,'Minot',34),(290,'Akron/Canton',35),(291,'Ashtabula',35),(292,'Athens',35),(293,'Chillicothe',35),(294,'Cincinnati',35),(295,'Cleveland\r\n',35),(296,'Columbus',35),(297,'Dayton',35),(298,'Huntington/Ashland',35),(299,'Lima/Findlay',35),(300,'Mansfield',35),(301,'Sandusky',35),(302,'Toledo',35),(303,'Tuscarawas County',35),(304,'Youngstown',35),(305,'Zanesville/Cambridge',35),(306,'Lawton',36),(307,'Norman',36),(308,'Oklahoma City',36),(309,'Stillwater',36),(310,'Tulsa',36),(311,'Bend',37),(312,'Corvallis',37),(313,'East Oregon',37),(314,'Eugene',37),(315,'Klamath Falls',37),(316,'Medford',37),(317,'Oregon Coast',37),(318,'Portland',37),(319,'Portland',37),(320,'Roseburg',37),(321,'Salem',37),(322,'Allentown',38),(323,'Altoona',38),(324,'Chambersburg',38),(325,'Erie',38),(326,'Harrisburg',38),(327,'Lancaster',38),(328,'Meadville',38),(329,'Penn State',38),(330,'Philadelphia',38),(331,'Pittsburgh',38),(332,'Poconos',38),(333,'Reading',38),(334,'Scranton',38),(335,'Williamsport',38),(336,'York',38),(337,'Providence',39),(338,'Warwick\r\n',39),(339,'Charleston',40),(340,'Columbia',40),(341,'Florence',40),(342,'Greenville',40),(343,'Hilton Head',40),(344,'Myrtle Beach',40),(345,'Aberdeen',41),(346,'Pierre',41),(347,'Rapid City',41),(348,'Sioux Falls',41),(349,'Chattanooga',42),(350,'Clarksville',42),(351,'Cookeville\r\n',42),(352,'Johnson City',42),(353,'Knoxville',42),(354,'Memphis',42),(355,'Memphis',42),(356,'Nashville',42),(357,'Nashville',42),(358,'Tri-Cities',42),(359,'Abilene',43),(360,'Amarillo',43),(361,'Austin',43),(362,'Beaumont',43),(363,'Brownsville',43),(364,'College Station',43),(365,'Corpus Christi',43),(366,'Dallas',43),(367,'Del Rio',43),(368,'Denton',43),(369,'El Paso',43),(370,'Fort Worth',43),(371,'Fort Worth',43),(372,'Galveston',43),(373,'Houston',43),(374,'Huntsville',43),(375,'Killeen',43),(376,'Laredo',43),(377,'Longview',43),(378,'Lubbock',43),(379,'Mcallen',43),(380,'Mid Cities',43),(381,'Odessa',43),(382,'San Antonio',43),(383,'San Marcos',43),(384,'Texarkana',43),(385,'Texoma',43),(386,'Tyler',43),(387,'Victoria',43),(388,'Waco',43),(389,'Wichita Falls',43),(390,'Logan',44),(391,'Ogden',44),(392,'Provo',44),(393,'Salt Lake City',44),(394,'St. George',44),(395,'Charlottesville',46),(396,'Chesapeake',46),(397,'Danville',46),(398,'Fredericksburg',46),(399,'Hampton',46),(400,'Harrisonburg',46),(401,'Lynchburg',46),(402,'New River Valley',46),(403,'Newport News',46),(404,'Norfolk',46),(405,'Portsmouth\r\n',46),(406,'Richmond',46),(407,'Roanoke',46),(408,'Southwest Virginia',46),(409,'Suffolk',46),(410,'Virginia Beach',46),(411,'Bellingham',47),(412,'Everett',47),(413,'Moses Lake',47),(414,'Mt. Vernon',47),(415,'Olympia',47),(416,'Pullman',47),(417,'Seattle',47),(418,'Spokane / Coeur ',47),(419,'D\'Alene',47),(420,'Tacoma',47),(421,'Tri-Cities',47),(422,'Wenatchee',47),(423,'Yakima',47),(424,'Charleston',48),(425,'Huntington',48),(426,'Martinsburg\r\n',48),(427,'Morgantown',48),(428,'Parkersburg',48),(429,'Southern West Virginia',48),(430,'Wheeling',48),(431,'Appleton',49),(432,'Eau Claire',49),(433,'Green Bay',49),(434,'Janesville',49),(435,'La Crosse',49),(436,'Madison',49),(437,'Milwaukee',49),(438,'Racine',49),(439,'Sheboygan',49),(440,'Wausau',49),(441,'Central Jersey',51),(442,'Jersey Shore',51),(443,'North Jersey',51),(444,'South Jersey',51);

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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `state` */

insert  into `state`(`STATE_ID`,`STATE_NAME`,`COUNTRY_ID`) values (1,'Alabama',1),(2,'Alaska',1),(3,'Arizona',1),(4,'Arkansas',1),(5,'California',1),(6,'Colorado',1),(7,'Connecticut',1),(8,'Delaware',1),(9,'District of Columbia',1),(10,'Florida',1),(11,'Georgia',1),(12,'Hawaii',1),(13,'Idaho',1),(14,'Illinois',1),(15,'Indiana',1),(16,'Iowa',1),(17,'Kansas',1),(18,'Kentucky',1),(19,'Louisiana',1),(20,'Maine',1),(21,'Maryland',1),(22,'Massachusetts',1),(23,'Michigan',1),(24,'Minnesota',1),(25,'Mississippi',1),(26,'Missouri',1),(27,'Montana',1),(28,'Nebraska',1),(29,'Nevada',1),(30,'New Hampshire',1),(31,'New Mexico',1),(32,'New York',1),(33,'North Carolina',1),(34,'North Dakota',1),(35,'Ohio',1),(36,'Oklahoma',1),(37,'Oregon',1),(38,'Pennsylvania',1),(39,'Rhoae Island',1),(40,'South Carolina',1),(41,'South Dakota',1),(42,'Tennessee',1),(43,'Texas',1),(44,'Utah',1),(45,'Vermont',1),(46,'Virginia',1),(47,'Washington',1),(48,'West Virginia',1),(49,'Wisconsin',1),(50,'Wyoming',1),(51,'New Jersey',1);

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
  `FIRST_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`USER_ID`),
  KEY `FK_users` (`ROLE_ID`),
  CONSTRAINT `FK7sgyvs08apdt4srrhh5g0yswj` FOREIGN KEY (`ROLE_ID`) REFERENCES `user_role` (`ROLE_ID`),
  CONSTRAINT `FK_users` FOREIGN KEY (`ROLE_ID`) REFERENCES `user_role` (`ROLE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`USER_ID`,`EMAIL`,`PASSWORD`,`ROLE_ID`,`IS_ADMIN`,`FIRST_NAME`,`LAST_NAME`) values (1,'sddssdg',NULL,NULL,NULL,NULL,NULL),(2,'sddssdg',NULL,NULL,NULL,NULL,NULL),(3,'gfdgdfg','dgdfgd',NULL,NULL,NULL,NULL),(4,'fghfghffhfh','hgffgfghfhfgh',NULL,NULL,NULL,NULL),(5,'sdfsfs@sf','reerre',NULL,NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
