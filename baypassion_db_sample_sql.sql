-- phpMyAdmin SQL Dump
-- version 4.0.10.14
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Apr 08, 2017 at 05:54 PM
-- Server version: 5.6.34
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `thepoppo_baypassion_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `ad_post`
--

CREATE TABLE IF NOT EXISTS `ad_post` (
  `AD_POST_ID` int(11) NOT NULL AUTO_INCREMENT,
  `AUTO_REPOST_AD` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AUTO_REPOST_AD_AFTER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `DISPLAY_OPTIONS` tinyint(1) DEFAULT NULL,
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
  `TITLE` text COLLATE utf8_unicode_ci,
  `VIDEO` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ZIP_CODE` int(11) DEFAULT NULL,
  `CATEGORY_ITEM_ID` int(11) DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `IS_APPROVE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IS_DELETED` int(11) DEFAULT NULL,
  `AUTO_REPOST_AD_CHECK` bit(1) DEFAULT NULL,
  `MOVE_AD_TOP_CHECK` bit(1) DEFAULT NULL,
  `SPONSER_AD_CHECK` bit(1) DEFAULT NULL,
  `CREATE_DATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UPDATE_DATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IS_EMAIL_VERIFICATION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EXPIRY_DATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `STATE_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`AD_POST_ID`),
  KEY `FKmba4321at775k8g20fq7lb9yk` (`CATEGORY_ITEM_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=69 ;

--
-- Dumping data for table `ad_post`
--

INSERT INTO `ad_post` (`AD_POST_ID`, `AUTO_REPOST_AD`, `AUTO_REPOST_AD_AFTER`, `DESCRIPTION`, `DISPLAY_OPTIONS`, `EMAIL_ID`, `IMAGE`, `location`, `MAP_LINK`, `MOBILE_NUMBER`, `MOBILE_NOTIFICATION`, `MOVE_AD_TO_TOP`, `NEAR_BY_CITY`, `NO_OF_TIMES`, `NUMBER_OF_WEEK`, `SELLING_PRICE`, `SPONSOR_Ad`, `TERM_OF_USE`, `TITLE`, `VIDEO`, `ZIP_CODE`, `CATEGORY_ITEM_ID`, `USER_ID`, `IS_APPROVE`, `IS_DELETED`, `AUTO_REPOST_AD_CHECK`, `MOVE_AD_TOP_CHECK`, `SPONSER_AD_CHECK`, `CREATE_DATE`, `UPDATE_DATE`, `IS_EMAIL_VERIFICATION`, `EXPIRY_DATE`, `STATE_ID`) VALUES
(39, NULL, NULL, '<p>proper test</p>', 0, 'deepika.choubey1095@gmail.com', NULL, '', '', '', '', NULL, NULL, NULL, '0', NULL, '', '1', '<p>test</p>', '', NULL, 1, 11, NULL, 0, NULL, NULL, NULL, 'Apr 5, 2017 3:44:51 PM', NULL, 'Y', '05-05-2017', 1),
(40, NULL, NULL, '<p>again test</p>', 0, 'deepika.choubey1095@gmail.com', NULL, '', '', '', '', NULL, NULL, NULL, '0', NULL, '', '1', '<p>tset</p>', '', NULL, 1, 11, NULL, 0, NULL, NULL, NULL, 'Apr 5, 2017 3:50:04 PM', NULL, 'N', '05/05/2017', 1),
(41, NULL, NULL, '<p>testign purpose<img class="tiny-emoji" style="width: 20px!important; height: 20px!important;" src="js/lib/jquery/tinyMce/plugins/emoticons/img/Emoji Natur-92.png" alt="Emoji Natur-92.png" /></p>', 0, 'deepika.choubey1095@gmail.com', NULL, '', '', '', '', NULL, NULL, NULL, '0.25', NULL, '', '1', '<p>test<img class="tiny-emoji" style="width: 20px!important; height: 20px!important;" src="js/lib/jquery/tinyMce/plugins/emoticons/img/Emoji Natur-100.png" alt="Emoji Natur-100.png" /></p>', '', NULL, 1, 11, NULL, 0, NULL, NULL, b'1', 'Apr 5, 2017 5:33:41 PM', NULL, 'Y', '05-05-2017', 1),
(42, NULL, NULL, '<p>tested</p>', 0, 'vjmali121@gmail.com', NULL, '', '', '', '', NULL, NULL, NULL, '0', NULL, '', '1', '<p>again test</p>', '', NULL, 1, 11, NULL, 0, NULL, NULL, NULL, 'Apr 5, 2017 5:45:59 PM', NULL, 'Y', '05-05-2017', 1),
(43, NULL, NULL, '<p>resrrrsrrs</p>', 0, 'vjmali121@gmail.com', NULL, '', '', '', '', NULL, NULL, NULL, '0', NULL, '', '1', '<p>testestest</p>', '', NULL, 1, 11, NULL, 0, NULL, NULL, NULL, 'Apr 5, 2017 5:47:35 PM', NULL, 'N', '05-05-2017', 1),
(44, NULL, NULL, '<p>nmvcbxbmcnv</p>', 0, 'deepika.choubey1095@gmail.com', NULL, '', '', '', '', NULL, NULL, NULL, '0', NULL, '', '1', '<p>xmcnvbmxv</p>', '', NULL, 1, 11, NULL, 0, NULL, NULL, NULL, 'Apr 5, 2017 5:54:22 PM', NULL, 'N', '05-05-2017', 1),
(45, NULL, NULL, '<p>testertester</p>', 1, 'deepika.choubey1095@gmail.com', NULL, '', '', '', '', NULL, NULL, NULL, '0', NULL, '', '1', '<p>testes</p>', '', NULL, 1, 11, NULL, 0, NULL, NULL, NULL, 'Apr 5, 2017 6:41:39 PM', NULL, 'Y', '05-05-2017', 1),
(46, NULL, NULL, '<p>test</p>', 0, 'vjmali121@gmail.com', NULL, '', '', '', '', NULL, NULL, NULL, '0', NULL, '', '1', '<p>tested</p>', '', NULL, 1, 11, NULL, 0, NULL, NULL, NULL, 'Apr 5, 2017 6:47:38 PM', NULL, 'Y', '05-05-2017', 1),
(47, NULL, NULL, '<p>software</p>', 0, 'deepika.choubey1095@gmail.com', NULL, '', '', '', '', NULL, NULL, NULL, '0', NULL, '', '1', '<p>job</p>', '', NULL, 1, 11, NULL, 0, NULL, NULL, NULL, 'Apr 5, 2017 6:58:39 PM', NULL, 'N', '05-05-2017', 1),
(48, NULL, NULL, '<p>software</p>', 0, 'deepika.choubey1095@gmail.com', NULL, '', '', '', '', NULL, NULL, NULL, '0', NULL, '', '1', '<p>job</p>', '', NULL, 1, 11, NULL, 0, NULL, NULL, NULL, 'Apr 5, 2017 7:02:11 PM', NULL, 'N', '05-05-2017', 1),
(49, NULL, NULL, '<p>again</p>', 0, 'deepika.choubey1095@gmail.com', NULL, '', '', '', '', NULL, NULL, NULL, '0', NULL, '', '1', '<p>test</p>', '', NULL, 1, 11, NULL, 0, NULL, NULL, NULL, 'Apr 5, 2017 7:06:16 PM', NULL, 'N', '05-05-2017', 1),
(50, NULL, NULL, '<p>zxczcxz</p>', 0, 'vjmali121@gmail.com', NULL, '', '', '', '', NULL, NULL, NULL, '0', NULL, '', '1', '<p>cczzxc</p>', '', NULL, 1, 11, NULL, 0, NULL, NULL, NULL, 'Apr 5, 2017 7:07:27 PM', NULL, 'N', '05-05-2017', 1),
(51, NULL, NULL, '<p>testing</p>', 0, 'deepika.choubey1095@gmail.com', NULL, '', '', '', '', NULL, NULL, NULL, '0', NULL, '', '1', '<p>job</p>', '', NULL, 1, 11, NULL, 0, NULL, NULL, NULL, 'Apr 5, 2017 7:10:53 PM', NULL, 'Y', '05-05-2017', 1),
(52, NULL, NULL, '<p>test</p>', 0, 'deepika.choubey1095@gmail.com', NULL, '', '', '', '', NULL, NULL, NULL, '0', NULL, '', '1', '<p>latest test</p>', 'Free motion.mp4', NULL, 1, 11, NULL, 0, NULL, NULL, NULL, 'Apr 5, 2017 7:43:37 PM', NULL, 'Y', '05-05-2017', 1),
(53, NULL, NULL, '<p>software</p>', 0, 'vjmali121@gmail.com', NULL, '', '', '', '', NULL, NULL, NULL, '0', NULL, '', '1', '<p>job vvvvv</p>', '', NULL, 1, 11, NULL, 0, NULL, NULL, NULL, 'Apr 5, 2017 7:47:11 PM', NULL, 'Y', '05-05-2017', 1),
(54, NULL, NULL, '<p>test<img class="tiny-emoji" style="width: 20px!important; height: 20px!important;" src="js/lib/jquery/tinyMce/plugins/emoticons/img/Emoji Natur-93.png" alt="Emoji Natur-93.png" /></p>', 1, 'deepika.choubey1095@gmail.com', NULL, '', '', '', '', NULL, NULL, NULL, '0', NULL, '', '1', '<p>final test</p>', '', NULL, 1, 11, 'Y', 0, NULL, NULL, NULL, 'Apr 5, 2017 8:40:26 PM', NULL, 'Y', '05-05-2017', 1),
(55, NULL, NULL, '<p>Post ad for testing</p>', 1, 'vjmali121@gmail.com', NULL, 'Plasia', '', '9875642318', '9856423186', NULL, NULL, NULL, '0', 10, '', '1', '<p>Test ads</p>', '', 452001, 1, 11, NULL, 0, NULL, NULL, NULL, 'Apr 5, 2017 10:01:10 PM', NULL, 'Y', '05-05-2017', 1),
(56, NULL, NULL, '<p><img class="tiny-emoji" style="width: 20px!important; height: 20px!important;" src="js/lib/jquery/tinyMce/plugins/emoticons/img/Emoji Objects-80.png" alt="Emoji Objects-80.png" /><img class="tiny-emoji" style="width: 20px!important; height: 20px!important;" src="js/lib/jquery/tinyMce/plugins/emoticons/img/Emoji Objects-80.png" alt="Emoji Objects-80.png" /><img class="tiny-emoji" style="width: 20px!important; height: 20px!important;" src="js/lib/jquery/tinyMce/plugins/emoticons/img/Emoji Objects-80.png" alt="Emoji Objects-80.png" />Test<img class="tiny-emoji" style="width: 20px!important; height: 20px!important;" src="js/lib/jquery/tinyMce/plugins/emoticons/img/Emoji Objects-80.png" alt="Emoji Objects-80.png" /><img class="tiny-emoji" style="width: 20px!important; height: 20px!important;" src="js/lib/jquery/tinyMce/plugins/emoticons/img/Emoji Objects-80.png" alt="Emoji Objects-80.png" /><img class="tiny-emoji" style="width: 20px!important; height: 20px!important;" src="js/lib/jquery/tinyMce/plugins/emoticons/img/Emoji Objects-80.png" alt="Emoji Objects-80.png" /></p>', 1, 'vjmali121@gmail.com', NULL, 'Sakaet', '', '', '', NULL, NULL, NULL, '0', 100, '', '1', '<p><img class="tiny-emoji" style="width: 20px!important; height: 20px!important;" src="js/lib/jquery/tinyMce/plugins/emoticons/img/Emoji Objects-80.png" alt="Emoji Objects-80.png" /><img class="tiny-emoji" style="width: 20px!important; height: 20px!important;" src="js/lib/jquery/tinyMce/plugins/emoticons/img/Emoji Objects-80.png" alt="Emoji Objects-80.png" />Paid post<img class="tiny-emoji" style="width: 20px!important; height: 20px!important;" src="js/lib/jquery/tinyMce/plugins/emoticons/img/Emoji Objects-80.png" alt="Emoji Objects-80.png" /><img class="tiny-emoji" style="width: 20px!important; height: 20px!important;" src="js/lib/jquery/tinyMce/plugins/emoticons/img/Emoji Objects-80.png" alt="Emoji Objects-80.png" /></p>', '', 4522201, 17, 11, NULL, 0, NULL, NULL, NULL, 'Apr 5, 2017 10:04:46 PM', NULL, 'Y', '05-05-2017', 1),
(57, NULL, NULL, '<p style="text-align: right;">Ggggggf</p>', 1, 'deepika.choubey1095@gmail.com', NULL, '', '', '566677777', '67655555', NULL, NULL, NULL, '0', NULL, '', '1', '<h1 style="text-align: right;">Ggggggh</h1>', '', NULL, 1, 11, NULL, 0, NULL, NULL, NULL, 'Apr 5, 2017 10:05:05 PM', NULL, 'Y', '05-05-2017', 1),
(58, NULL, NULL, '<p><strong>test&nbsp;</strong></p>', 1, 'vjmali121@gmail.com', NULL, '', '', '', '', NULL, NULL, NULL, '0', 10, '', '1', '<p>Test entry</p>', '', 452001, 6, 11, NULL, 0, NULL, NULL, NULL, 'Apr 5, 2017 10:44:31 PM', NULL, 'Y', '05-05-2017', NULL),
(59, NULL, NULL, '<p>Rest test call&nbsp;</p>', 1, 'ajayjirati@gmail.com', NULL, 'Indore', 'Indore', '3457898667', '98665555', NULL, NULL, NULL, '0', 126644, '', '1', '<p>Rest Test call&nbsp;</p>', '', 452001, 1, 11, NULL, 0, NULL, NULL, b'1', 'Apr 5, 2017 10:44:26 PM', NULL, 'N', '05-05-2017', NULL),
(60, NULL, NULL, '<p><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">Selling my 2011 Mercedes Benz SLK 300</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">**Clean Title/CarFax</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">**36,000 Original Miles&nbsp;</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">**Automatic Transmission&nbsp;</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">**AMG Package</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">**Selling By Owner</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">**All Services Up to Date</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">**Recent Oil Change</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">**New Tires Recently Installed</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">**In Beautiful Condition</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">&bull; Drivetrain: Rear-Wheel Drive</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">&bull; Drive Type: 2WD</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">&bull; Engine: V6</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">&bull; Transmission: Automatic</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">&bull; Engine Size: 3.0L engine</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">&bull; ABS Brakes</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">&bull; Air Conditioning</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">&bull; Alloy Wheels</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">&bull; AM/FM Stereo</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">&bull; Automatic Transmission</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">&bull; Auxiliary Audio Input</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">&bull; Bluetooth</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">&bull; Convertible Roof Power Retractable Hard Top</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">&bull; 19 MPG City</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">&bull; 26 MPG Highway </span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">&bull; CD Audio</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">&bull; Cruise Control</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">&bull; Phone Wireless Data Link Bluetooth</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">&bull; Hard Top</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">&bull; Leather Seats</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">&bull; Memory Seats</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">&bull; Power Locks</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">&bull; Rain Sensing Wipers</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">&bull; Power Mirrors</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">&bull; Power Windows</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">&bull; Rear Defroster</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">&bull; Side Airbags</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">&bull; Traction Control</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">Up for sale, a beautiful Mercedes Benz with very low miles. I''ve owned this car since 9,000 miles. Clean title, Clean CarFax upon request. Drives perfectly without any issues. Interior and exterior are both in very good condition. Car has been maintained regularly without any finances spared. Both brakes and tires have been recently changed. All electronics work beautifully without any issue.&nbsp;</span></p>', 1, 'joe38888@gmail.com', NULL, '', '', '', '', NULL, NULL, NULL, '0', NULL, '', '1', '<p>testing 91&nbsp;</p>', '', NULL, 1, 16, NULL, 0, NULL, NULL, NULL, 'Apr 5, 2017 11:08:05 AM', NULL, 'Y', '06-05-2017', 1),
(61, NULL, NULL, '<p>tet test test tet test test tet test test&nbsp;<br /><br />tet test test tet test test&nbsp;<br />测试删减图片</p>', 0, 'julietechusa@gmail.com', NULL, 'la', 'LA', '5678998889', '', NULL, NULL, NULL, '0', 89, '', '1', '<p>testttttt 测试删减图片</p>', '', 78889, 1, 12, NULL, 0, NULL, NULL, NULL, 'Apr 5, 2017 2:17:50 PM', NULL, 'Y', '07-05-2017', 1),
(62, NULL, NULL, '<p><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">Selling my 2011 Mercedes Benz SLK 300</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">**Clean Title/CarFax</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">**36,000 Original Miles&nbsp;</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">**Automatic Transmission&nbsp;</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">**AMG Package</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">**Selling By Owner</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">**All Services Up to Date</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">**Recent Oil Change</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">**New Tires Recently Installed</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">**In Beautiful Condition</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">&bull; Drivetrain: Rear-Wheel Drive</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">&bull; Drive Type: 2WD</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">&bull; Engine: V6</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">&bull; Transmission: Automatic</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">&bull; Engine Size: 3.0L engine</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">&bull; ABS Brakes</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">&bull; Air Conditioning</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">&bull; Alloy Wheels</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">&bull; AM/FM Stereo</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">&bull; Automatic Transmission</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">&bull; Auxiliary Audio Input</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">&bull; Bluetooth</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">&bull; Convertible Roof Power Retractable Hard Top</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">&bull; 19 MPG City</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">&bull; 26 MPG Highway </span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">&bull; CD Audio</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">&bull; Cruise Control</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">&bull; Phone Wireless Data Link Bluetooth</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">&bull; Hard Top</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">&bull; Leather Seats</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">&bull; Memory Seats</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">&bull; Power Locks</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">&bull; Rain Sensing Wipers</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">&bull; Power Mirrors</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">&bull; Power Windows</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">&bull; Rear Defroster</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">&bull; Side Airbags</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">&bull; Traction Control</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">Up for sale, a beautiful Mercedes Benz with very low miles. I''ve owned this car since 9,000 miles. Clean title, Clean CarFax upon request. Drives perfectly without any issues. Interior and exterior are both in very good condition. Car has been maintained regularly without any finances spared. Both brakes and tires have been recently changed. All electronics work beautifully without any issue.&nbsp;</span></p>', 0, 'joe38888@gmail.com', NULL, '', '', '', '', NULL, NULL, NULL, '0', NULL, '', '1', '<p>testing teesing testing&nbsp;</p>', '', NULL, 1, 16, NULL, 0, NULL, NULL, NULL, 'Apr 5, 2017 11:22:32 AM', NULL, 'N', '05-05-2017', 1),
(63, NULL, NULL, '<p>just for testing purpose</p>', 1, 'mohammadzeeshan1210@gmail.com', NULL, 'Ujjain', 'Chatri-chowk', '9165900137', '7999664140', NULL, NULL, NULL, '0', 1, '', '1', '<p>testing post</p>', 'birdsVideo.mp4', 456006, 1, 15, NULL, 0, NULL, NULL, b'1', 'Apr 6, 2017 10:30:14 AM', NULL, 'Y', '06-05-2017', 1),
(64, NULL, NULL, '<p>tested</p>', 0, 'deepika.choubey1095@gmail.com', NULL, '', '', '', '', NULL, NULL, NULL, '0', NULL, '', '1', '<p>test</p>', '', NULL, 1, 11, NULL, 0, NULL, NULL, NULL, 'Apr 6, 2017 8:50:56 PM', NULL, 'N', '06-05-2017', 1),
(65, NULL, NULL, '<p>test teattss&nbsp;<img class="tiny-emoji" style="width: 20px!important; height: 20px!important;" src="js/lib/jquery/tinyMce/plugins/emoticons/img/Emoji Natur-15.png" alt="Emoji Natur-15.png" /><img class="tiny-emoji" style="width: 20px!important; height: 20px!important;" src="js/lib/jquery/tinyMce/plugins/emoticons/img/Emoji Natur-41.png" alt="Emoji Natur-41.png" /></p>', 0, 'julietechusa@gmail.com', NULL, 'la', 'la', '8999999999', '', NULL, NULL, NULL, '0', 90, '', '1', '<p>Test estsssssssssssssssssssssssss<img class="tiny-emoji" style="width: 20px!important; height: 20px!important;" src="js/lib/jquery/tinyMce/plugins/emoticons/img/Emoji Natur-41.png" alt="Emoji Natur-41.png" /><img class="tiny-emoji" style="width: 20px!important; height: 20px!important;" src="js/lib/jquery/tinyMce/plugins/emoticons/img/Emoji Natur-42.png" alt="Emoji Natur-42.png" /><img class="tiny-emoji" style="width: 20px!important; height: 20px!important;" src="js/lib/jquery/tinyMce/plugins/emoticons/img/Emoji Natur-92.png" alt="Emoji Natur-92.png" /></p>', '', 79788, 1, 12, NULL, 0, NULL, NULL, NULL, 'Apr 6, 2017 12:49:17 PM', NULL, 'Y', '07-05-2017', 1),
(66, NULL, NULL, '<p><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">004 Chevy Impala&nbsp;</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">TRANNY WONT MOVE WHEN PUT IN DRIVE. Reverse works but other forward gears don''t work. Mechanic told me he can fix it for 250 but would rather sale.&nbsp;</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">No time to fix so selling to whoever comes and get it first&nbsp;</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">Starts right up every time&nbsp;</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">Last registered 2016</span><br style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;" /><span style="color: #222222; font-family: ''Bitstream Vera Serif'', ''Times New Roman'', serif; font-size: medium;">All paperwork ready to go&nbsp;</span></p>', 0, 'joe38888@gmail.com', NULL, '', '', '', '', NULL, NULL, NULL, '0', NULL, '', '1', '<p>testing testing&nbsp;</p>', '', NULL, 1, 16, NULL, 0, NULL, NULL, NULL, 'Apr 6, 2017 11:37:30 AM', NULL, 'Y', '08-05-2017', 1),
(67, NULL, NULL, '<p>again description</p>', 0, 'deepika.choubey1095@gmail.com', NULL, '', '', '', '', NULL, NULL, NULL, '0', NULL, '', '1', '<p>testeting7 apr</p>', '', NULL, 1, 11, NULL, 0, NULL, NULL, NULL, 'Apr 7, 2017 8:20:42 PM', NULL, 'N', '07-05-2017', 1),
(68, NULL, NULL, '<p>des</p>', 0, 'deepika.choubey1095@gmail.com', NULL, '', '', '', '', NULL, NULL, NULL, '0', NULL, '', '1', '<p>title</p>', '', NULL, 1, 11, NULL, 0, NULL, NULL, NULL, 'Apr 7, 2017 8:29:52 PM', NULL, 'N', '07-05-2017', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ad_post_city`
--

CREATE TABLE IF NOT EXISTS `ad_post_city` (
  `AD_POST_ID` int(11) NOT NULL,
  `CITY_ID` int(11) NOT NULL,
  PRIMARY KEY (`AD_POST_ID`,`CITY_ID`),
  KEY `FK7lo45vuo6cj6t9p408f04maun` (`CITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ad_post_city`
--

INSERT INTO `ad_post_city` (`AD_POST_ID`, `CITY_ID`) VALUES
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(41, 2),
(43, 2),
(44, 2),
(47, 2),
(48, 2),
(51, 2),
(53, 2),
(58, 2),
(59, 2),
(63, 2),
(65, 2),
(67, 2),
(41, 3),
(43, 3),
(44, 3),
(47, 3),
(48, 3),
(51, 3),
(53, 3),
(56, 3),
(58, 3),
(59, 3),
(63, 3),
(65, 3),
(41, 4),
(43, 4),
(44, 4),
(47, 4),
(48, 4),
(51, 4),
(53, 4),
(56, 4),
(58, 4),
(59, 4),
(63, 4),
(65, 4),
(43, 5),
(44, 5),
(47, 5),
(48, 5),
(51, 5),
(53, 5),
(56, 5),
(58, 5),
(59, 5),
(63, 5),
(53, 6),
(58, 6),
(59, 6),
(63, 6),
(53, 7),
(58, 7),
(59, 7),
(63, 7),
(58, 8),
(59, 8),
(63, 8),
(58, 9),
(59, 9),
(60, 9),
(63, 9);

-- --------------------------------------------------------

--
-- Table structure for table `auto_repost`
--

CREATE TABLE IF NOT EXISTS `auto_repost` (
  `AUTO_REPOST_ID` int(11) NOT NULL AUTO_INCREMENT,
  `AFTER_HOURS` int(11) DEFAULT NULL,
  `AUTO_REPOST_AD_CHECK` bit(1) DEFAULT NULL,
  `CREATED_DATE` datetime DEFAULT NULL,
  `INITIAL_NUMBER` double DEFAULT NULL,
  `LISTING_EVERY_DAYS` int(11) DEFAULT NULL,
  `NUMBER_OF_TIMES` double DEFAULT NULL,
  `AD_POST_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`AUTO_REPOST_ID`),
  KEY `FK10kjp7cq7dua98qf7atb24ud1` (`AD_POST_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `auto_repost`
--

INSERT INTO `auto_repost` (`AUTO_REPOST_ID`, `AFTER_HOURS`, `AUTO_REPOST_AD_CHECK`, `CREATED_DATE`, `INITIAL_NUMBER`, `LISTING_EVERY_DAYS`, `NUMBER_OF_TIMES`, `AD_POST_ID`) VALUES
(1, NULL, b'0', NULL, 1.02, NULL, 0, 39),
(2, NULL, b'0', NULL, 1.02, NULL, 0, 40),
(3, NULL, b'1', NULL, 2.52, NULL, 2.52, 41),
(4, NULL, b'0', NULL, 1.02, NULL, 0, 42),
(5, NULL, b'0', NULL, 7.02, NULL, 0, 43),
(6, NULL, b'0', NULL, 7.02, NULL, 0, 44),
(7, NULL, b'0', NULL, 1.02, NULL, 0, 45),
(8, NULL, b'0', NULL, 1.02, NULL, 0, 46),
(9, NULL, b'0', NULL, 7.02, NULL, 0, 47),
(10, NULL, b'0', NULL, 7.02, NULL, 0, 48),
(11, NULL, b'0', NULL, 1.02, NULL, 0, 49),
(12, NULL, b'0', NULL, 1.02, NULL, 0, 50),
(13, NULL, b'0', NULL, 7.02, NULL, 0, 51),
(14, NULL, b'0', NULL, 1.02, NULL, 0, 52),
(15, 15, b'1', NULL, 8.52, 3, 34.08, 53),
(16, NULL, b'0', NULL, 1.02, NULL, 0, 54),
(17, NULL, b'0', NULL, 1.02, NULL, 0, 55),
(18, 16, b'1', NULL, 5.52, NULL, 11.04, 56),
(19, NULL, b'0', NULL, 1.02, NULL, 0, 57),
(20, NULL, b'0', NULL, NULL, NULL, 0, 58),
(21, NULL, b'0', NULL, NULL, NULL, 0, 59),
(22, 8, b'1', NULL, 2.52, NULL, 2.52, 60),
(23, NULL, b'0', NULL, 1.02, NULL, 0, 61),
(24, NULL, b'0', NULL, 1.02, NULL, 0, 62),
(25, NULL, b'0', NULL, NULL, NULL, 0, 63),
(26, NULL, b'0', NULL, 1.02, NULL, 0, 64),
(27, NULL, b'0', NULL, 1.02, NULL, 0, 65),
(28, NULL, b'0', NULL, 1.02, NULL, 0, 66),
(29, NULL, b'0', NULL, 1.02, NULL, 0, 67),
(30, NULL, b'0', NULL, 1.02, NULL, 0, 68);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `CATEGORY_ID` int(5) NOT NULL AUTO_INCREMENT,
  `CATEGORY_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CATEGORY_FLAG` tinyint(5) DEFAULT NULL,
  PRIMARY KEY (`CATEGORY_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CATEGORY_ID`, `CATEGORY_NAME`, `CATEGORY_FLAG`) VALUES
(1, 'local places', 0),
(2, 'automotive', 0),
(3, 'dating', 0),
(4, 'jobs', 0),
(5, 'community', 0),
(6, 'musician', 0),
(7, 'adult', 0),
(8, 'buy/ sell/ trade', 0),
(9, 'rentals', 0),
(10, 'real estate', 0),
(11, 'services', 0);

-- --------------------------------------------------------

--
-- Table structure for table `category_items`
--

CREATE TABLE IF NOT EXISTS `category_items` (
  `CATEGORY_ITEM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CATEGORY_ITEM_NAME` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CATEGORY_ID` int(11) DEFAULT NULL,
  `CATEGORY_ITEM_FLAG` tinyint(5) DEFAULT NULL,
  PRIMARY KEY (`CATEGORY_ITEM_ID`),
  KEY `FK6jyw3tg2v0k6u2ypcfx4xpqqh` (`CATEGORY_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=92 ;

--
-- Dumping data for table `category_items`
--

INSERT INTO `category_items` (`CATEGORY_ITEM_ID`, `CATEGORY_ITEM_NAME`, `CATEGORY_ID`, `CATEGORY_ITEM_FLAG`) VALUES
(1, 'events', 1, 0),
(2, 'bars/clubs', 1, 0),
(3, 'restaurants', 1, 0),
(4, 'salons/nails/spas', 1, 0),
(5, 'auto-truck-rv', 2, 0),
(6, 'auto parts', 2, 0),
(7, 'services', 2, 0),
(8, 'women > men', 3, 0),
(9, 'men > women', 3, 0),
(10, 'men > men', 3, 0),
(11, 'women > women', 3, 0),
(12, 't >', 3, 0),
(13, 'acctg/finance', 4, 0),
(14, 'admin/office', 4, 0),
(15, 'computer/technical', 4, 0),
(16, 'customer service', 4, 0),
(17, 'domestic', 4, 0),
(18, 'driver/delivery/courier', 4, 0),
(19, 'education', 4, 0),
(20, 'focus group/studies', 4, 0),
(21, 'job wanted/resume', 4, 0),
(22, 'mgmt/professional', 4, 0),
(23, 'medical/health', 4, 0),
(24, 'miscellaneous', 4, 0),
(25, 'real estate', 4, 0),
(26, 'rest/retail/hotel', 4, 0),
(27, 'sales/mktg', 4, 0),
(28, 'salon/spa', 4, 0),
(29, 'show biz/audition', 4, 0),
(30, 'trades/labor', 4, 0),
(31, 'childcare', 5, 0),
(32, 'classes/workshops', 5, 0),
(33, 'general', 5, 0),
(34, 'groups', 5, 0),
(35, 'lost & found', 5, 0),
(36, 'volunteers', 5, 0),
(37, 'available/wanted', 6, 0),
(38, 'equip/instruments', 6, 0),
(39, 'instruction', 6, 0),
(40, 'services', 6, 0),
(41, 'plug the band', 6, 0),
(42, 'escorts', 7, 0),
(43, 'body rubs', 7, 0),
(44, 'strippers & strip clubs', 7, 0),
(45, 'dom & fetish', 7, 0),
(46, 'ts', 7, 0),
(47, 'male escorts', 7, 0),
(48, 'phone & websites', 7, 0),
(49, 'adult jobs', 7, 0),
(50, 'antiq.-collectibles', 8, 0),
(51, 'appliances', 8, 0),
(52, 'business', 8, 0),
(53, 'boats & motorcycles', 8, 0),
(54, 'clothing/jewelry', 8, 0),
(55, 'farm/garden', 8, 0),
(56, 'computers/electronics', 8, 0),
(57, 'free', 8, 0),
(58, 'furniture', 8, 0),
(59, 'household items', 8, 0),
(60, 'miscellaneous', 8, 0),
(61, 'pets, pet supplies', 8, 0),
(62, 'sports equip.', 8, 0),
(63, 'tickets', 8, 0),
(64, 'tools/materials', 8, 0),
(65, 'yard sales', 8, 0),
(66, 'want-trade', 8, 0),
(67, 'roommates', 9, 0),
(68, 'apt/condo/house', 9, 0),
(69, 'commercial', 9, 0),
(70, 'vacation', 9, 0),
(71, 'miscellaneous', 9, 0),
(72, 'rentals wanted', 9, 0),
(73, 'house/condo', 10, 0),
(74, 'land for sale', 10, 0),
(75, 'commercial', 10, 0),
(76, 'misc', 10, 0),
(77, 'wanted', 10, 0),
(78, 'biz opps', 11, 0),
(79, 'business', 11, 0),
(80, 'cleaning', 11, 0),
(81, 'computer', 11, 0),
(82, 'creative', 11, 0),
(83, 'financial', 11, 0),
(84, 'health & beauty', 11, 0),
(85, 'home improvement', 11, 0),
(86, 'landscape/lawn', 11, 0),
(87, 'labor/moving', 11, 0),
(88, 'legal', 11, 0),
(89, 'massage', 11, 0),
(90, 'misc.', 11, 0),
(91, 'real estate', 11, 0);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE IF NOT EXISTS `city` (
  `CITY_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CITY_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `STATE_ID` int(11) DEFAULT NULL,
  `CITY_PRICE` double DEFAULT NULL,
  PRIMARY KEY (`CITY_ID`),
  KEY `FKkek8puqyya8jx793h9lecieeu` (`STATE_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=445 ;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`CITY_ID`, `CITY_NAME`, `STATE_ID`, `CITY_PRICE`) VALUES
(1, 'Auburn', 1, 0.25),
(2, 'Birmingham', 1, 0.25),
(3, 'Dothan', 1, 0.25),
(4, 'Gadsden', 1, 0.25),
(5, 'Huntsville', 1, 0.25),
(6, 'Mobile', 1, 0.25),
(7, 'Montgomery', 1, 0.25),
(8, 'Muscle Shoals', 1, 0.25),
(9, 'Tuscaloosa', 1, 0.25),
(10, 'Anchorage', 2, 0.25),
(11, 'Fairbanks', 2, 0.25),
(12, 'Juneau', 2, 0.25),
(13, 'Kenai Peninsula', 2, 0.25),
(14, 'Flagstaff/Sedona', 3, 0.25),
(15, 'Mohave County', 3, 0.25),
(16, 'Phoenix', 3, 0.25),
(17, 'Prescott', 3, 0.25),
(18, 'Show Low', 3, 0.25),
(19, 'Sierra Vista', 3, 0.25),
(20, 'Tucson', 3, 0.25),
(21, 'Yuma', 3, 0.25),
(22, 'Fayetteville', 4, 0.25),
(23, 'Fort Smith', 4, 0.25),
(24, 'Jonesboro', 4, 0.25),
(25, 'Little Rock', 4, 0.25),
(26, 'Bakersfield', 5, 0.25),
(27, 'Chico', 5, 0.25),
(28, 'Chico', 5, 0.25),
(29, 'Fresno', 5, 0.25),
(30, 'Humboldt County', 5, 0.25),
(31, 'Imperial County', 5, 0.25),
(32, 'Inland Empire', 5, 0.25),
(33, 'Long Beach', 5, 0.25),
(34, 'Los Angeles', 5, 0.25),
(35, 'Mendocino', 5, 0.25),
(36, 'Merced\r\n', 5, 0.25),
(37, 'Modesto', 5, 0.25),
(38, 'Monterey', 5, 0.25),
(39, 'North Bay', 5, 0.25),
(40, 'North Bay', 5, 0.25),
(41, 'Oakland/East Bay', 5, 0.25),
(42, 'Orange County', 5, 0.25),
(43, 'Palm Springs', 5, 0.25),
(44, 'Palmdale/Lancaster', 5, 0.25),
(45, 'Redding', 5, 0.25),
(46, 'Sacramento', 5, 0.25),
(47, 'Sacramento', 5, 0.25),
(48, 'San Diego', 5, 0.25),
(49, 'San Fernando Valley', 5, 0.25),
(50, 'San Francisco', 5, 0.25),
(51, 'San Gabriel Valley', 5, 0.25),
(52, 'San Jose', 5, 0.25),
(53, 'San Jose', 5, 0.25),
(54, 'San Luis Obispo', 5, 0.25),
(55, 'San Mateo', 5, 0.25),
(56, 'Santa Barbara', 5, 0.25),
(57, 'Santa Cruz', 5, 0.25),
(58, 'Santa Maria', 5, 0.25),
(59, 'Siskiyou', 5, 0.25),
(60, 'Stockton', 5, 0.25),
(61, 'Stockton', 5, 0.25),
(62, 'Susanville', 5, 0.25),
(63, 'Ventura', 5, 0.25),
(64, 'Visalia', 5, 0.25),
(67, 'Boulder', 6, 0.25),
(68, 'Colorado Springs', 6, 0.25),
(69, 'Denver', 6, 0.25),
(70, 'Fort Collins', 6, 0.25),
(71, 'Pueblo', 6, 0.25),
(72, 'Rockies', 6, 0.25),
(73, 'Western Slope', 6, 0.25),
(74, 'Bridgeport', 7, 0.25),
(75, 'Eastern Connecticut', 7, 0.25),
(76, 'Hartford', 7, 0.25),
(77, 'New Haven', 7, 0.25),
(78, 'Northwest ', 7, 0.25),
(79, 'Connecticut', 7, 0.25),
(80, 'Northern Virginia', 9, 0.25),
(81, 'Southern Maryland', 9, 0.25),
(82, 'Washington D.C.', 9, 0.25),
(83, 'Daytona', 10, 0.25),
(84, 'Fort Lauderdale', 10, 0.25),
(85, 'Fort Myers', 10, 0.25),
(86, 'Gainesville', 10, 0.25),
(87, 'Jacksonville', 10, 0.25),
(88, 'Keys', 10, 0.25),
(89, 'Lakeland', 10, 0.25),
(90, 'Miami', 10, 0.25),
(91, 'Ocala', 10, 0.25),
(92, 'Okaloosa', 10, 0.25),
(93, 'Orlando', 10, 0.25),
(94, 'Palm Bay', 10, 0.25),
(95, 'Panama City', 10, 0.25),
(96, 'Pensacola', 10, 0.25),
(97, 'Sarasota/Bradenton', 10, 0.25),
(98, 'Space Coast', 10, 0.25),
(99, 'St. Augustine\r\n', 10, 0.25),
(100, 'Tallahassee', 10, 0.25),
(101, 'Tampa', 10, 0.25),
(102, 'Treasure Coast', 10, 0.25),
(103, 'West Palm Beach', 10, 0.25),
(104, 'Albany', 11, 0.25),
(105, 'Athens', 11, 0.25),
(106, 'Atlanta', 11, 0.25),
(107, 'Augusta', 11, 0.25),
(108, 'Brunswick', 11, 0.25),
(109, 'Columbus', 11, 0.25),
(110, 'Macon', 11, 0.25),
(111, 'Northwest Georgia', 11, 0.25),
(112, 'Savannah', 11, 0.25),
(113, 'Statesboro', 11, 0.25),
(114, 'Valdosta', 11, 0.25),
(115, 'Big Island', 12, 0.25),
(116, 'Honolulu', 12, 0.25),
(117, 'Kauai', 12, 0.25),
(118, 'Maui', 12, 0.25),
(119, 'Boise', 13, 0.25),
(120, 'East Idaho', 13, 0.25),
(121, 'Lewiston', 13, 0.25),
(122, 'Twin Falls', 13, 0.25),
(123, 'Bloomington', 14, 0.25),
(124, 'Carbondale', 14, 0.25),
(125, 'Chambana', 14, 0.25),
(126, 'Chicago', 14, 0.25),
(127, 'Decatur', 14, 0.25),
(128, 'La Salle County', 14, 0.25),
(129, 'Mattoon', 14, 0.25),
(130, 'Peoria', 14, 0.25),
(131, 'Rockford', 14, 0.25),
(132, 'Springfield', 14, 0.25),
(133, 'Western Illinois', 14, 0.25),
(134, 'Bloomington', 15, 0.25),
(135, 'Evansville', 15, 0.25),
(136, 'Ft Wayne', 15, 0.25),
(137, 'Indianapolis', 15, 0.25),
(138, 'Indianapolis', 15, 0.25),
(139, 'Kokomo', 15, 0.25),
(140, 'Lafayette', 15, 0.25),
(141, 'Muncie', 15, 0.25),
(142, 'Richmond', 15, 0.25),
(143, 'South Bend', 15, 0.25),
(144, 'Terre Haute', 15, 0.25),
(145, 'Ames', 16, 0.25),
(146, 'Cedar Rapids', 16, 0.25),
(147, 'Desmoines', 16, 0.25),
(148, 'Dubuque', 16, 0.25),
(149, 'Fort Dodge', 16, 0.25),
(150, 'Iowa City', 16, 0.25),
(151, 'Mason City', 16, 0.25),
(152, 'Quad Cities', 16, 0.25),
(153, 'Sioux City', 16, 0.25),
(154, 'Southest Iowa', 16, 0.25),
(155, 'Waterloo\r\n', 16, 0.25),
(156, 'Lawrence', 17, 0.25),
(157, 'Manhattan', 17, 0.25),
(158, 'Salina', 17, 0.25),
(159, 'Topeka', 17, 0.25),
(160, 'Wichita', 17, 0.25),
(161, 'Bowling Green', 18, 0.25),
(162, 'Eastern Kentucky', 18, 0.25),
(163, 'Lexington', 18, 0.25),
(164, 'Louisville', 18, 0.25),
(165, 'Owensboro\r\n', 18, 0.25),
(166, 'Western Kentucky', 18, 0.25),
(167, 'Alexandria', 19, 0.25),
(168, 'Baton Rouge', 19, 0.25),
(169, 'Houma', 19, 0.25),
(170, 'Lafayette', 19, 0.25),
(171, 'Lake Charles', 19, 0.25),
(172, 'Monroe', 19, 0.25),
(173, 'New Orleans', 19, 0.25),
(174, 'Shreveport', 19, 0.25),
(175, 'Annapolis', 21, 0.25),
(176, 'Baltimore', 21, 0.25),
(177, 'Cumberland Valley', 21, 0.25),
(178, 'Eastern Shore', 21, 0.25),
(179, 'Frederick', 21, 0.25),
(180, 'Western Maryland', 21, 0.25),
(181, 'Boston', 22, 0.25),
(182, 'Brockton', 22, 0.25),
(183, 'Cape Cod', 22, 0.25),
(184, 'Lowell', 22, 0.25),
(185, 'South Coast', 22, 0.25),
(186, 'Springfield', 22, 0.25),
(187, 'Worcester', 22, 0.25),
(188, 'Ann Arbor', 23, 0.25),
(189, 'Battle Creek', 23, 0.25),
(190, 'Central Michigan', 23, 0.25),
(191, 'Detroit', 23, 0.25),
(192, 'Flint', 23, 0.25),
(193, 'Grand Rapids', 23, 0.25),
(194, 'Holland', 23, 0.25),
(195, 'Jackson', 23, 0.25),
(196, 'Kalamazoo', 23, 0.25),
(197, 'Lansing', 23, 0.25),
(198, 'Monroe', 23, 0.25),
(199, 'Muskegon', 23, 0.25),
(200, 'Northern Michigan', 23, 0.25),
(201, 'Port Huron', 23, 0.25),
(202, 'Saginaw', 23, 0.25),
(203, 'Southwest Michigan', 23, 0.25),
(204, 'Upper Peninsula', 23, 0.25),
(205, 'Bemidji', 24, 0.25),
(206, 'Brainerd', 24, 0.25),
(207, 'Duluth', 24, 0.25),
(208, 'Mankato', 24, 0.25),
(209, 'Minneapolis / St. Paul', 24, 0.25),
(210, 'Rochester', 24, 0.25),
(211, 'St. Cloud', 24, 0.25),
(212, 'Biloxi', 25, 0.25),
(213, 'Hattiesburg', 25, 0.25),
(214, 'Jackson', 25, 0.25),
(215, 'Meridian', 25, 0.25),
(216, 'North Mississippi', 25, 0.25),
(217, 'Southwest Mississippi', 25, 0.25),
(218, 'Columbia/Jeff City', 26, 0.25),
(219, 'Joplin', 26, 0.25),
(220, 'Kansas City', 26, 0.25),
(221, 'Kirksville', 26, 0.25),
(222, 'Lake Of The Ozarks', 26, 0.25),
(223, 'Southeast Missouri', 26, 0.25),
(224, 'Springfield', 26, 0.25),
(225, 'St Joseph', 26, 0.25),
(226, 'St. Louis', 26, 0.25),
(227, 'Billings', 27, 0.25),
(228, 'Bozeman', 27, 0.25),
(229, 'Butte', 27, 0.25),
(230, 'Great Falls', 27, 0.25),
(231, 'Helena', 27, 0.25),
(232, 'Kalispell', 27, 0.25),
(233, 'Missoula', 27, 0.25),
(234, 'Grand Island', 28, 0.25),
(235, 'Lincoln', 28, 0.25),
(236, 'North Platte', 28, 0.25),
(237, 'Omaha', 28, 0.25),
(238, 'Scottsbluff', 28, 0.25),
(239, 'Elko', 29, 0.25),
(240, 'Las Vegas', 29, 0.25),
(241, 'Reno', 29, 0.25),
(242, 'Reno', 29, 0.25),
(243, 'Albuquerque', 31, 0.25),
(244, 'Clovis / Portales', 31, 0.25),
(245, 'Farmington', 31, 0.25),
(246, 'Las Cruces', 31, 0.25),
(247, 'Roswell / Carlsbad', 31, 0.25),
(248, 'Albany', 32, 0.25),
(249, 'Binghamton', 32, 0.25),
(250, 'Bronx', 32, 0.25),
(251, 'Brooklyn', 32, 0.25),
(252, 'Buffalo', 32, 0.25),
(253, 'Catskills', 32, 0.25),
(254, 'Chautauqua', 32, 0.25),
(255, 'Elmira', 32, 0.25),
(256, 'Fairfield', 32, 0.25),
(257, 'Finger Lakes', 32, 0.25),
(258, 'Glens Falls', 32, 0.25),
(259, 'Hudson Valley', 32, 0.25),
(260, 'Ithaca', 32, 0.25),
(261, 'Long Island', 32, 0.25),
(262, 'Manhattan', 32, 0.25),
(263, 'Oneonta', 32, 0.25),
(264, 'Plattsburgh', 32, 0.25),
(265, 'Potsdam', 32, 0.25),
(266, 'Queens', 32, 0.25),
(267, 'Rochester', 32, 0.25),
(268, 'Staten Island', 32, 0.25),
(269, 'Syracuse\r\n', 32, 0.25),
(270, 'Twin Tiers\r\n', 32, 0.25),
(271, 'Utica', 32, 0.25),
(272, 'Watertown', 32, 0.25),
(273, 'Westchester', 32, 0.25),
(274, 'Asheville', 33, 0.25),
(275, 'Boone', 33, 0.25),
(276, 'Charlotte', 33, 0.25),
(277, 'Eastern', 33, 0.25),
(278, 'Fayetteville', 33, 0.25),
(279, 'Greensboro', 33, 0.25),
(280, 'Hickory', 33, 0.25),
(281, 'High Point', 33, 0.25),
(282, 'Outer Banks', 33, 0.25),
(283, 'Raleigh-Durham', 33, 0.25),
(284, 'Wilmington', 33, 0.25),
(285, 'Winston-Salem', 33, 0.25),
(286, 'Bismarck\r\n', 34, 0.25),
(287, 'Fargo', 34, 0.25),
(288, 'Grand Forks', 34, 0.25),
(289, 'Minot', 34, 0.25),
(290, 'Akron/Canton', 35, 0.25),
(291, 'Ashtabula', 35, 0.25),
(292, 'Athens', 35, 0.25),
(293, 'Chillicothe', 35, 0.25),
(294, 'Cincinnati', 35, 0.25),
(295, 'Cleveland\r\n', 35, 0.25),
(296, 'Columbus', 35, 0.25),
(297, 'Dayton', 35, 0.25),
(298, 'Huntington/Ashland', 35, 0.25),
(299, 'Lima/Findlay', 35, 0.25),
(300, 'Mansfield', 35, 0.25),
(301, 'Sandusky', 35, 0.25),
(302, 'Toledo', 35, 0.25),
(303, 'Tuscarawas County', 35, 0.25),
(304, 'Youngstown', 35, 0.25),
(305, 'Zanesville/Cambridge', 35, 0.25),
(306, 'Lawton', 36, 0.25),
(307, 'Norman', 36, 0.25),
(308, 'Oklahoma City', 36, 0.25),
(309, 'Stillwater', 36, 0.25),
(310, 'Tulsa', 36, 0.25),
(311, 'Bend', 37, 0.25),
(312, 'Corvallis', 37, 0.25),
(313, 'East Oregon', 37, 0.25),
(314, 'Eugene', 37, 0.25),
(315, 'Klamath Falls', 37, 0.25),
(316, 'Medford', 37, 0.25),
(317, 'Oregon Coast', 37, 0.25),
(318, 'Portland', 37, 0.25),
(319, 'Portland', 37, 0.25),
(320, 'Roseburg', 37, 0.25),
(321, 'Salem', 37, 0.25),
(322, 'Allentown', 38, 0.25),
(323, 'Altoona', 38, 0.25),
(324, 'Chambersburg', 38, 0.25),
(325, 'Erie', 38, 0.25),
(326, 'Harrisburg', 38, 0.25),
(327, 'Lancaster', 38, 0.25),
(328, 'Meadville', 38, 0.25),
(329, 'Penn State', 38, 0.25),
(330, 'Philadelphia', 38, 0.25),
(331, 'Pittsburgh', 38, 0.25),
(332, 'Poconos', 38, 0.25),
(333, 'Reading', 38, 0.25),
(334, 'Scranton', 38, 0.25),
(335, 'Williamsport', 38, 0.25),
(336, 'York', 38, 0.25),
(337, 'Providence', 39, 0.25),
(338, 'Warwick\r\n', 39, 0.25),
(339, 'Charleston', 40, 0.25),
(340, 'Columbia', 40, 0.25),
(341, 'Florence', 40, 0.25),
(342, 'Greenville', 40, 0.25),
(343, 'Hilton Head', 40, 0.25),
(344, 'Myrtle Beach', 40, 0.25),
(345, 'Aberdeen', 41, 0.25),
(346, 'Pierre', 41, 0.25),
(347, 'Rapid City', 41, 0.25),
(348, 'Sioux Falls', 41, 0.25),
(349, 'Chattanooga', 42, 0.25),
(350, 'Clarksville', 42, 0.25),
(351, 'Cookeville\r\n', 42, 0.25),
(352, 'Johnson City', 42, 0.25),
(353, 'Knoxville', 42, 0.25),
(354, 'Memphis', 42, 0.25),
(355, 'Memphis', 42, 0.25),
(356, 'Nashville', 42, 0.25),
(357, 'Nashville', 42, 0.25),
(358, 'Tri-Cities', 42, 0.25),
(359, 'Abilene', 43, 0.25),
(360, 'Amarillo', 43, 0.25),
(361, 'Austin', 43, 0.25),
(362, 'Beaumont', 43, 0.25),
(363, 'Brownsville', 43, 0.25),
(364, 'College Station', 43, 0.25),
(365, 'Corpus Christi', 43, 0.25),
(366, 'Dallas', 43, 0.25),
(367, 'Del Rio', 43, 0.25),
(368, 'Denton', 43, 0.25),
(369, 'El Paso', 43, 0.25),
(370, 'Fort Worth', 43, 0.25),
(371, 'Fort Worth', 43, 0.25),
(372, 'Galveston', 43, 0.25),
(373, 'Houston', 43, 0.25),
(374, 'Huntsville', 43, 0.25),
(375, 'Killeen', 43, 0.25),
(376, 'Laredo', 43, 0.25),
(377, 'Longview', 43, 0.25),
(378, 'Lubbock', 43, 0.25),
(379, 'Mcallen', 43, 0.25),
(380, 'Mid Cities', 43, 0.25),
(381, 'Odessa', 43, 0.25),
(382, 'San Antonio', 43, 0.25),
(383, 'San Marcos', 43, 0.25),
(384, 'Texarkana', 43, 0.25),
(385, 'Texoma', 43, 0.25),
(386, 'Tyler', 43, 0.25),
(387, 'Victoria', 43, 0.25),
(388, 'Waco', 43, 0.25),
(389, 'Wichita Falls', 43, 0.25),
(390, 'Logan', 44, 0.25),
(391, 'Ogden', 44, 0.25),
(392, 'Provo', 44, 0.25),
(393, 'Salt Lake City', 44, 0.25),
(394, 'St. George', 44, 0.25),
(395, 'Charlottesville', 46, 0.25),
(396, 'Chesapeake', 46, 0.25),
(397, 'Danville', 46, 0.25),
(398, 'Fredericksburg', 46, 0.25),
(399, 'Hampton', 46, 0.25),
(400, 'Harrisonburg', 46, 0.25),
(401, 'Lynchburg', 46, 0.25),
(402, 'New River Valley', 46, 0.25),
(403, 'Newport News', 46, 0.25),
(404, 'Norfolk', 46, 0.25),
(405, 'Portsmouth\r\n', 46, 0.25),
(406, 'Richmond', 46, 0.25),
(407, 'Roanoke', 46, 0.25),
(408, 'Southwest Virginia', 46, 0.25),
(409, 'Suffolk', 46, 0.25),
(410, 'Virginia Beach', 46, 0.25),
(411, 'Bellingham', 47, 0.25),
(412, 'Everett', 47, 0.25),
(413, 'Moses Lake', 47, 0.25),
(414, 'Mt. Vernon', 47, 0.25),
(415, 'Olympia', 47, 0.25),
(416, 'Pullman', 47, 0.25),
(417, 'Seattle', 47, 0.25),
(418, 'Spokane / Coeur ', 47, 0.25),
(419, 'D''Alene', 47, 0.25),
(420, 'Tacoma', 47, 0.25),
(421, 'Tri-Cities', 47, 0.25),
(422, 'Wenatchee', 47, 0.25),
(423, 'Yakima', 47, 0.25),
(424, 'Charleston', 48, 0.25),
(425, 'Huntington', 48, 0.25),
(426, 'Martinsburg\r\n', 48, 0.25),
(427, 'Morgantown', 48, 0.25),
(428, 'Parkersburg', 48, 0.25),
(429, 'Southern West Virginia', 48, 0.25),
(430, 'Wheeling', 48, 0.25),
(431, 'Appleton', 49, 0.25),
(432, 'Eau Claire', 49, 0.25),
(433, 'Green Bay', 49, 0.25),
(434, 'Janesville', 49, 0.25),
(435, 'La Crosse', 49, 0.25),
(436, 'Madison', 49, 0.25),
(437, 'Milwaukee', 49, 0.25),
(438, 'Racine', 49, 0.25),
(439, 'Sheboygan', 49, 0.25),
(440, 'Wausau', 49, 0.25),
(441, 'Central Jersey', 51, 0.25),
(442, 'Jersey Shore', 51, 0.25),
(443, 'North Jersey', 51, 0.25),
(444, 'South Jersey', 51, 0.25);

-- --------------------------------------------------------

--
-- Table structure for table `contactUs`
--

CREATE TABLE IF NOT EXISTS `contactUs` (
  `CONTACT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `AD_TITLE_OR_LINK` varchar(255) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `LOCATION` varchar(255) DEFAULT NULL,
  `MESSAGE` varchar(255) DEFAULT NULL,
  `QUERY_CATEGORY` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CONTACT_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `contactUs`
--

INSERT INTO `contactUs` (`CONTACT_ID`, `AD_TITLE_OR_LINK`, `EMAIL`, `LOCATION`, `MESSAGE`, `QUERY_CATEGORY`) VALUES
(1, '', '', 'Huntsville', '', 'I can not find my ad.');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE IF NOT EXISTS `country` (
  `COUNTRY_ID` int(11) NOT NULL AUTO_INCREMENT,
  `COUNTRY_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`COUNTRY_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`COUNTRY_ID`, `COUNTRY_NAME`) VALUES
(1, 'United State');

-- --------------------------------------------------------

--
-- Table structure for table `move_ad`
--

CREATE TABLE IF NOT EXISTS `move_ad` (
  `MOVE_AD_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CREATED_DATE` datetime DEFAULT NULL,
  `NEXT_PER_HOUR` varchar(255) DEFAULT NULL,
  `PRICE` double DEFAULT NULL,
  `AD_POST_ID` int(11) DEFAULT NULL,
  `MOVE_CHECK_BOX` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`MOVE_AD_ID`),
  KEY `FKqn2539er1vek8lax0wcutas9n` (`AD_POST_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `move_ad`
--

INSERT INTO `move_ad` (`MOVE_AD_ID`, `CREATED_DATE`, `NEXT_PER_HOUR`, `PRICE`, `AD_POST_ID`, `MOVE_CHECK_BOX`) VALUES
(1, '2017-04-06 19:46:52', '1', 1, 39, 0),
(2, '2017-04-06 19:46:52', '1', 1, 40, 0),
(3, '2017-04-06 19:46:52', '24', 4, 41, 1),
(4, '2017-04-06 19:46:52', '1', 1, 42, 0),
(5, '2017-04-06 19:46:52', '1', 5, 43, 0),
(6, '2017-04-06 19:46:52', '1', 5, 44, 0),
(7, '2017-04-06 19:46:52', '1', 1, 45, 0),
(8, '2017-04-06 19:46:52', '1', 1, 46, 0),
(9, '2017-04-06 19:46:52', '1', 5, 47, 0),
(10, '2017-04-06 19:46:52', '1', 5, 48, 0),
(11, '2017-04-06 19:46:52', '1', 1, 49, 0),
(12, '2017-04-06 19:46:52', '1', 1, 50, 0),
(13, '2017-04-06 19:46:52', '1', 5, 51, 0),
(14, '2017-04-06 19:46:52', '1', 1, 52, 0),
(15, '2017-04-06 19:46:52', '2', 6, 53, 1),
(16, '2017-04-06 19:46:52', '1', 1, 54, 0),
(17, '2017-04-06 19:46:52', '1', 1, 55, 0),
(18, '2017-04-06 19:46:52', '12', 36, 56, 1),
(19, '2017-04-06 19:46:52', '1', 1, 57, 0),
(20, '2017-04-06 19:46:52', '1', 1, 58, 0),
(21, '2017-04-06 19:46:52', '1', 1, 59, 0),
(22, '2017-04-06 19:46:52', '3', 6, 60, 1),
(23, '2017-04-06 19:46:52', '1', 1, 61, 1),
(24, '2017-04-06 19:46:52', '1', 1, 62, 0),
(25, '2017-04-06 19:46:52', '1', 1, 63, 0),
(26, '2017-04-07 20:23:54', '2', 1, 64, 1),
(27, '2017-04-06 22:20:27', '1', 1, 65, 0),
(28, '2017-04-07 00:07:51', '1', 1, 66, 0),
(29, '2017-04-07 20:23:07', '2', 2, 67, 1),
(30, '2017-04-07 20:30:24', '1', 1, 68, 0);

-- --------------------------------------------------------

--
-- Table structure for table `post_add`
--

CREATE TABLE IF NOT EXISTS `post_add` (
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
  KEY `FK_post_add` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `prohibit_Words`
--

CREATE TABLE IF NOT EXISTS `prohibit_Words` (
  `PROHIBIT_WORD_ID` int(11) NOT NULL AUTO_INCREMENT,
  `IS_DELETED` int(11) DEFAULT NULL,
  `WORD_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PROHIBIT_WORD_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `prohibit_Words`
--

INSERT INTO `prohibit_Words` (`PROHIBIT_WORD_ID`, `IS_DELETED`, `WORD_NAME`) VALUES
(1, 1, 'BAD'),
(2, 1, 'hate'),
(3, 1, 'XXXu'),
(4, 1, 'vvvv'),
(5, 1, 'xxx'),
(6, 0, 'xxx');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE IF NOT EXISTS `state` (
  `STATE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `STATE_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COUNTRY_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`STATE_ID`),
  KEY `FKit11p5l5munscwopy3tk7diur` (`COUNTRY_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=52 ;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`STATE_ID`, `STATE_NAME`, `COUNTRY_ID`) VALUES
(1, 'Alabama', 1),
(2, 'Alaska', 1),
(3, 'Arizona', 1),
(4, 'Arkansas', 1),
(5, 'California', 1),
(6, 'Colorado', 1),
(7, 'Connecticut', 1),
(8, 'Delaware', 1),
(9, 'District of Columbia', 1),
(10, 'Florida', 1),
(11, 'Georgia', 1),
(12, 'Hawaii', 1),
(13, 'Idaho', 1),
(14, 'Illinois', 1),
(15, 'Indiana', 1),
(16, 'Iowa', 1),
(17, 'Kansas', 1),
(18, 'Kentucky', 1),
(19, 'Louisiana', 1),
(20, 'Maine', 1),
(21, 'Maryland', 1),
(22, 'Massachusetts', 1),
(23, 'Michigan', 1),
(24, 'Minnesota', 1),
(25, 'Mississippi', 1),
(26, 'Missouri', 1),
(27, 'Montana', 1),
(28, 'Nebraska', 1),
(29, 'Nevada', 1),
(30, 'New Hampshire', 1),
(31, 'New Mexico', 1),
(32, 'New York', 1),
(33, 'North Carolina', 1),
(34, 'North Dakota', 1),
(35, 'Ohio', 1),
(36, 'Oklahoma', 1),
(37, 'Oregon', 1),
(38, 'Pennsylvania', 1),
(39, 'Rhoae Island', 1),
(40, 'South Carolina', 1),
(41, 'South Dakota', 1),
(42, 'Tennessee', 1),
(43, 'Texas', 1),
(44, 'Utah', 1),
(45, 'Vermont', 1),
(46, 'Virginia', 1),
(47, 'Washington', 1),
(48, 'West Virginia', 1),
(49, 'Wisconsin', 1),
(50, 'Wyoming', 1),
(51, 'New Jersey', 1);

-- --------------------------------------------------------

--
-- Table structure for table `uploaded_images`
--

CREATE TABLE IF NOT EXISTS `uploaded_images` (
  `IMAGE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `IMAGE_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `POST_ID` int(11) DEFAULT NULL,
  `IS_DELETED` int(11) DEFAULT NULL,
  PRIMARY KEY (`IMAGE_ID`),
  KEY `FK6ykifudqmjqpc1m52ubirl5ii` (`POST_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=47 ;

--
-- Dumping data for table `uploaded_images`
--

INSERT INTO `uploaded_images` (`IMAGE_ID`, `IMAGE_NAME`, `POST_ID`, `IS_DELETED`) VALUES
(1, '39_sale-img.png', 39, 0),
(2, '41_sale-img.png', 41, 0),
(3, '44_sale-img.png', 44, 0),
(4, '52_sale-img.png', 52, 0),
(5, '55_download.jpg', 55, 0),
(6, '55_HD-wallpapers-for-windows-7-free-download.jpg', 55, 0),
(7, '56_diff.png', 56, 0),
(8, '58_HD-wallpapers-for-windows-7-free-download.jpg', 58, 0),
(9, '60_Cute Girl Fb Cover Pic.jpg', 60, 0),
(10, '60_d2216faa20232551f20b3c2935f330c4.jpg', 60, 0),
(11, '60_download.jpg', 60, 0),
(12, '60_images (50).jpg', 60, 0),
(13, '60_picmonkey_twitter_02.24fd38f81e59.jpg', 60, 0),
(14, '60_Smart-Cute-Children-Facebook-Covers.jpg', 60, 0),
(15, '61_7.jpg', 61, 0),
(16, '61_6.jpg', 61, 0),
(17, '61_5.jpg', 61, 0),
(18, '61_4.jpg', 61, 0),
(19, '62_2bf98a20547e80d89ca123e79eb29180.jpg', 62, 0),
(20, '62_650743-red-and-white-roses.jpg', 62, 0),
(21, '62_beautiful-heart-pic-beautiful-pictures-31395948-333-500.jpg', 62, 0),
(22, '62_ca06-1-1.jpg', 62, 0),
(23, '62_Cute Girl Fb Cover Pic.jpg', 62, 0),
(24, '62_d2216faa20232551f20b3c2935f330c4.jpg', 62, 0),
(25, '62_download.jpg', 62, 0),
(26, '62_images (50).jpg', 62, 0),
(27, '62_picmonkey_twitter_02.24fd38f81e59.jpg', 62, 0),
(28, '62_Smart-Cute-Children-Facebook-Covers.jpg', 62, 0),
(29, '60_ca06-1-1.jpg', 60, 0),
(30, '63_422813.png', 63, 0),
(31, '63_171916.jpg', 63, 0),
(32, '63_46380.png', 63, 0),
(33, '63_31173.jpg', 63, 0),
(34, '63_20345.png', 63, 0),
(35, '61_Sale.png', 61, 0),
(36, '65_location.png', 65, 0),
(37, '61_logo.png', 61, 0),
(38, '66_Cute Girl Fb Cover Pic.jpg', 66, 0),
(39, '66_d2216faa20232551f20b3c2935f330c4.jpg', 66, 0),
(40, '66_download.jpg', 66, 0),
(41, '66_images (50).jpg', 66, 0),
(42, '66_picmonkey_twitter_02.24fd38f81e59.jpg', 66, 0),
(43, '66_Smart-Cute-Children-Facebook-Covers.jpg', 66, 0),
(44, '65_6.jpg', 65, 0),
(45, '65_5.jpg', 65, 0),
(46, '65_4.jpg', 65, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `USER_ID` int(5) NOT NULL AUTO_INCREMENT,
  `EMAIL` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PASSWORD` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ROLE_ID` int(11) DEFAULT NULL,
  `IS_ADMIN` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FIRST_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTACT_NO` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`USER_ID`),
  KEY `FK_users` (`ROLE_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=18 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`USER_ID`, `EMAIL`, `PASSWORD`, `ROLE_ID`, `IS_ADMIN`, `FIRST_NAME`, `LAST_NAME`, `CONTACT_NO`) VALUES
(1, 'admin@gmail.com', '123456', NULL, 'Y', 'Admin', NULL, NULL),
(11, 'vjmali121@gmail.com', '12345678', NULL, 'N', 'vijay', 'mali', NULL),
(12, 'julietechusa@gmail.com', 'Baypassion@123', NULL, 'N', 'Julie', 'Bay', NULL),
(14, 'sodanishubham@gmail.com', '12345678', NULL, 'N', 'shubham', 'sodani', NULL),
(15, 'mohammadzeeshan1210@gmail.com', '12345678', NULL, 'N', 'Mohammad', 'Zeeshan', NULL),
(16, 'joe38888@gmail.com', '9716659w', NULL, 'N', 'joe', 'huang', NULL),
(17, 'zheng.li@hpe.com', '23571113', NULL, 'N', 'jeff', 'lee', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE IF NOT EXISTS `user_role` (
  `ROLE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ROLE_NAME` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`ROLE_ID`, `ROLE_NAME`) VALUES
(1, 'ADMIN'),
(2, 'USER');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ad_post`
--
ALTER TABLE `ad_post`
  ADD CONSTRAINT `FKmba4321at775k8g20fq7lb9yk` FOREIGN KEY (`CATEGORY_ITEM_ID`) REFERENCES `category_items` (`CATEGORY_ITEM_ID`);

--
-- Constraints for table `ad_post_city`
--
ALTER TABLE `ad_post_city`
  ADD CONSTRAINT `FK4hr2fvfff8o7oubfe761duwkm` FOREIGN KEY (`AD_POST_ID`) REFERENCES `ad_post` (`AD_POST_ID`),
  ADD CONSTRAINT `FK7lo45vuo6cj6t9p408f04maun` FOREIGN KEY (`CITY_ID`) REFERENCES `city` (`CITY_ID`);

--
-- Constraints for table `category_items`
--
ALTER TABLE `category_items`
  ADD CONSTRAINT `FK6jyw3tg2v0k6u2ypcfx4xpqqh` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `category` (`CATEGORY_ID`),
  ADD CONSTRAINT `FK_category_items` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `category` (`CATEGORY_ID`);

--
-- Constraints for table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `FKkek8puqyya8jx793h9lecieeu` FOREIGN KEY (`STATE_ID`) REFERENCES `state` (`STATE_ID`);

--
-- Constraints for table `post_add`
--
ALTER TABLE `post_add`
  ADD CONSTRAINT `FK_post_add` FOREIGN KEY (`USER_ID`) REFERENCES `users` (`USER_ID`);

--
-- Constraints for table `state`
--
ALTER TABLE `state`
  ADD CONSTRAINT `FKit11p5l5munscwopy3tk7diur` FOREIGN KEY (`COUNTRY_ID`) REFERENCES `country` (`COUNTRY_ID`);

--
-- Constraints for table `uploaded_images`
--
ALTER TABLE `uploaded_images`
  ADD CONSTRAINT `FK6ykifudqmjqpc1m52ubirl5ii` FOREIGN KEY (`POST_ID`) REFERENCES `ad_post` (`AD_POST_ID`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FK7sgyvs08apdt4srrhh5g0yswj` FOREIGN KEY (`ROLE_ID`) REFERENCES `user_role` (`ROLE_ID`),
  ADD CONSTRAINT `FK_users` FOREIGN KEY (`ROLE_ID`) REFERENCES `user_role` (`ROLE_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
