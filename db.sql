/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 10.3.10-MariaDB : Database - main
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`main` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci */;

USE `main`;

/*Table structure for table `actions` */

DROP TABLE IF EXISTS `actions`;

CREATE TABLE `actions` (
  `action_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `summary` text CHARACTER SET utf32 COLLATE utf32_slovenian_ci NOT NULL,
  `message` text CHARACTER SET utf32 COLLATE utf32_slovenian_ci NOT NULL,
  `errors` text NOT NULL,
  `type` text NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` int(11) NOT NULL,
  PRIMARY KEY (`action_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `actions` */

/*Table structure for table `asset_equipment` */

DROP TABLE IF EXISTS `asset_equipment`;

CREATE TABLE `asset_equipment` (
  `equipment_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `equipment_name` text COLLATE utf32_slovenian_ci NOT NULL,
  `equipment_code` text COLLATE utf32_slovenian_ci NOT NULL,
  `equipment_description` text COLLATE utf32_slovenian_ci NOT NULL,
  `equipment_category` text COLLATE utf32_slovenian_ci NOT NULL,
  `equipment_location` text COLLATE utf32_slovenian_ci NOT NULL,
  `latitude` text COLLATE utf32_slovenian_ci NOT NULL,
  `longitude` text COLLATE utf32_slovenian_ci NOT NULL,
  `contact_name` text COLLATE utf32_slovenian_ci NOT NULL,
  `contact_surname` text COLLATE utf32_slovenian_ci NOT NULL,
  `contact_phone` text COLLATE utf32_slovenian_ci NOT NULL,
  PRIMARY KEY (`equipment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf32 COLLATE=utf32_slovenian_ci;

/*Data for the table `asset_equipment` */

insert  into `asset_equipment`(`equipment_id`,`employee_id`,`equipment_name`,`equipment_code`,`equipment_description`,`equipment_category`,`equipment_location`,`latitude`,`longitude`,`contact_name`,`contact_surname`,`contact_phone`) values 
(1,NULL,'PROJEKTOR','3163','','PREDSTAVITVENA OPREMA','Pod hribom 55, Ljubljana, Slovenia','46.066576','14.47787530000005','Miha ','Hocevar','+38641317700'),
(2,NULL,'TABLICA','KJFHIUZKDJGHKD','ASUS ČRNA TABLICA','COMPUTER','Pod hribom, Ljubljana, Slovenia','46.0671957','14.481467100000032','ANDREJ','SEDEU','547643265');

/*Table structure for table `asset_other` */

DROP TABLE IF EXISTS `asset_other`;

CREATE TABLE `asset_other` (
  `asset_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `asset_name` text COLLATE utf32_slovenian_ci NOT NULL,
  `asset_description` text COLLATE utf32_slovenian_ci NOT NULL,
  `asset_location` text COLLATE utf32_slovenian_ci NOT NULL,
  `longitude` text COLLATE utf32_slovenian_ci NOT NULL,
  `latitude` text COLLATE utf32_slovenian_ci NOT NULL,
  `contact_name` text COLLATE utf32_slovenian_ci NOT NULL,
  `contact_surname` text COLLATE utf32_slovenian_ci NOT NULL,
  `contact_phone` text COLLATE utf32_slovenian_ci NOT NULL,
  PRIMARY KEY (`asset_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf32 COLLATE=utf32_slovenian_ci;

/*Data for the table `asset_other` */

insert  into `asset_other`(`asset_id`,`employee_id`,`asset_name`,`asset_description`,`asset_location`,`longitude`,`latitude`,`contact_name`,`contact_surname`,`contact_phone`) values 
(1,NULL,'VLAŽNA MUCA','muca k muca... jebiga','Pod hribom 55, Ljubljana, Slovenia','14.47787530000005','46.066576','Grega','Goricki','040377772');

/*Table structure for table `asset_place` */

DROP TABLE IF EXISTS `asset_place`;

CREATE TABLE `asset_place` (
  `place_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `place_name` text COLLATE utf32_slovenian_ci NOT NULL,
  `place_description` text COLLATE utf32_slovenian_ci NOT NULL,
  `place_room` text COLLATE utf32_slovenian_ci NOT NULL,
  `place_floor` int(11) NOT NULL,
  `place_address` text COLLATE utf32_slovenian_ci NOT NULL,
  `latitude` text COLLATE utf32_slovenian_ci NOT NULL,
  `longitude` text COLLATE utf32_slovenian_ci NOT NULL,
  `contact_name` text COLLATE utf32_slovenian_ci NOT NULL,
  `contact_surname` text COLLATE utf32_slovenian_ci NOT NULL,
  `contact_phone` text COLLATE utf32_slovenian_ci NOT NULL,
  PRIMARY KEY (`place_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf32 COLLATE=utf32_slovenian_ci;

/*Data for the table `asset_place` */

insert  into `asset_place`(`place_id`,`employee_id`,`place_name`,`place_description`,`place_room`,`place_floor`,`place_address`,`latitude`,`longitude`,`contact_name`,`contact_surname`,`contact_phone`) values 
(1,NULL,'SEX SOBA','bum tresk, fiju fiju','69',102,'Pod hribom 55, Ljubljana','','','Back Sit Jesy','Dobr','090 666 999');

/*Table structure for table `asset_vehicles` */

DROP TABLE IF EXISTS `asset_vehicles`;

CREATE TABLE `asset_vehicles` (
  `vehicle_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT NULL,
  `vehicle_type` text COLLATE utf32_slovenian_ci NOT NULL,
  `fuel_type` text COLLATE utf32_slovenian_ci NOT NULL,
  `vehicle_vin` text COLLATE utf32_slovenian_ci NOT NULL,
  `vehicle_year` text COLLATE utf32_slovenian_ci NOT NULL,
  `vehicle_mileage` text COLLATE utf32_slovenian_ci NOT NULL,
  `vehicle_brand` text COLLATE utf32_slovenian_ci NOT NULL,
  `vehicle_model` text COLLATE utf32_slovenian_ci NOT NULL,
  `vehicle_registration` text COLLATE utf32_slovenian_ci NOT NULL,
  `vehicle_seats` int(11) NOT NULL,
  `vehicle_vignette` int(11) NOT NULL,
  `permanent_reservation` int(11) NOT NULL DEFAULT 0,
  `vehicle_insurancedate` text COLLATE utf32_slovenian_ci NOT NULL,
  `vehicle_registrationdate` text COLLATE utf32_slovenian_ci NOT NULL,
  `vehicle_servicedate` text COLLATE utf32_slovenian_ci NOT NULL,
  PRIMARY KEY (`vehicle_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf32 COLLATE=utf32_slovenian_ci;

/*Data for the table `asset_vehicles` */

insert  into `asset_vehicles`(`vehicle_id`,`owner_id`,`vehicle_type`,`fuel_type`,`vehicle_vin`,`vehicle_year`,`vehicle_mileage`,`vehicle_brand`,`vehicle_model`,`vehicle_registration`,`vehicle_seats`,`vehicle_vignette`,`permanent_reservation`,`vehicle_insurancedate`,`vehicle_registrationdate`,`vehicle_servicedate`) values 
(1,62,'Personal','Petrol','V8745271KNF875V','2018','6000','MERCEDES BENZ','B 200','LJ-488-LU',5,1,1,'','',''),
(2,NULL,'Company','Diesel','','2014','85200','FORD','kuga','LJ 295 ID',5,1,0,'','',''),
(3,62,'Personal','Diesel','gjfljgriuzkf56f4hljtlkjhčdh','2015','100000','bmw','gt3','lj56478483',5,1,0,'2018-11-23','2018-11-23','2018-10-05');

/*Table structure for table `blacklist` */

DROP TABLE IF EXISTS `blacklist`;

CREATE TABLE `blacklist` (
  `blacklist_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `blacklist_phone` text COLLATE utf32_slovenian_ci NOT NULL,
  `blacklist_reason` text COLLATE utf32_slovenian_ci NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`blacklist_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_slovenian_ci;

/*Data for the table `blacklist` */

/*Table structure for table `business_premises` */

DROP TABLE IF EXISTS `business_premises`;

CREATE TABLE `business_premises` (
  `premise_id` int(11) NOT NULL AUTO_INCREMENT,
  `premise_mark` text NOT NULL,
  `premise_taxnumber` text NOT NULL,
  `premise_type` text NOT NULL,
  `premise_cadastralnr` text NOT NULL,
  `premise_buildingnr` text NOT NULL,
  `premise_buildingsectionnr` text NOT NULL,
  `premise_street` text NOT NULL,
  `premise_housenr` text NOT NULL,
  `premise_housenradditional` text NOT NULL,
  `premise_city` text NOT NULL,
  `premise_post` text NOT NULL,
  `premise_postalcode` text NOT NULL,
  `premise_status` int(11) NOT NULL DEFAULT 1,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`premise_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `business_premises` */

/*Table structure for table `call_reminders` */

DROP TABLE IF EXISTS `call_reminders`;

CREATE TABLE `call_reminders` (
  `reminder_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `call_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `phone_number` varchar(200) COLLATE utf8mb4_slovenian_ci DEFAULT NULL,
  `datetime` varchar(200) COLLATE utf8mb4_slovenian_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_slovenian_ci DEFAULT NULL,
  `active` int(11) DEFAULT 1,
  `created_on` varchar(200) COLLATE utf8mb4_slovenian_ci DEFAULT NULL,
  PRIMARY KEY (`reminder_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_slovenian_ci;

/*Data for the table `call_reminders` */

insert  into `call_reminders`(`reminder_id`,`employee_id`,`call_id`,`customer_id`,`phone_number`,`datetime`,`notes`,`active`,`created_on`) values 
(1,1,2,2,'+38651206449','2018-09-25 09:33','20let',0,'2018-09-25 09:23:44'),
(2,61,6,1,'+38631412345','2018-09-28 16:14','gaga',0,'2018-09-28 16:13:33'),
(5,1,10,1,'+38631415246','2018-10-01 12:00','gagagag',0,'2018-10-01 11:50:10'),
(7,1,11,1,'+38631415246','2018-10-01 13:40','gagaga',0,'2018-10-01 13:30:35');

/*Table structure for table `calls` */

DROP TABLE IF EXISTS `calls`;

CREATE TABLE `calls` (
  `call_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `phonenumber` text NOT NULL,
  `call_start` text NOT NULL,
  `call_end` text NOT NULL,
  `type` text NOT NULL,
  PRIMARY KEY (`call_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `calls` */

/*Table structure for table `calltrack` */

DROP TABLE IF EXISTS `calltrack`;

CREATE TABLE `calltrack` (
  `call_id` int(11) NOT NULL AUTO_INCREMENT,
  `custuid` text COLLATE utf32_slovenian_ci NOT NULL,
  `dialeduid` text COLLATE utf32_slovenian_ci NOT NULL,
  `status` text COLLATE utf32_slovenian_ci NOT NULL,
  `call_datetime` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`call_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf32 COLLATE=utf32_slovenian_ci;

/*Data for the table `calltrack` */

insert  into `calltrack`(`call_id`,`custuid`,`dialeduid`,`status`,`call_datetime`) values 
(1,'12345678',' 1538745471.235','dialed','2018-09-26 10:44:33'),
(2,'1538390623.38',' 1538405083.159','dialed','2018-10-01 15:39:42'),
(3,'1538400749.107',' 1538405821.168','dialed','2018-10-01 15:51:04'),
(4,'1538456895.18','1538456895.18','done','2018-10-02 09:30:49'),
(5,'1538646931.10',' 1538647228.20','done','2018-10-04 11:58:43'),
(6,'1538726069.40',' 1538728099.58','done','2018-10-05 10:14:51'),
(7,'','','done','2018-10-05 10:15:10'),
(8,'1538728410.64',' 1538728435.67','done','2018-10-05 10:33:55'),
(9,'1538728361.61','1538728361.61','done','2018-10-05 10:34:07'),
(10,'1538731099.70',' 1538734352.73','done','2018-10-05 12:12:32'),
(11,'1538735102.90',' 1538735112.93','done','2018-10-05 12:25:12'),
(12,'1538737443.108','1538737443.108','done','2018-10-05 13:04:49'),
(13,'1538737468.111','1538737468.111','done','2018-10-05 13:04:49'),
(14,'1538737530.114',' 1538737655.121','done','2018-10-05 13:07:18'),
(15,'1538737649.118','1538737649.118','done','2018-10-05 13:07:47'),
(16,'1538737707.124',' 1538737715.127','done','2018-10-05 13:08:35'),
(17,'1538737789.137',' 1538737800.140','done','2018-10-05 13:10:00'),
(18,'1538737825.143',' 1538737848.149','done','2018-10-05 13:10:48'),
(19,'1538737836.146','1538737836.146','done','2018-10-05 13:10:59'),
(20,'1538738629.152',' 1538739747.161','done','2018-10-05 13:41:48'),
(21,'1538743710.186',' 1538744064.193','done','2018-10-05 14:54:24'),
(22,'1538744955.210',' 1538745433.233','done','2018-10-05 15:17:13'),
(23,'1538745498.242',' 1538745547.260','done','2018-10-05 15:18:41'),
(24,'1538745536.254',' 1538745718.274','done','2018-10-05 15:19:04'),
(25,'1538745510.246','1538745510.246','done','2018-10-05 15:29:46'),
(26,'1538747827.359',' 1538747891.368','done','2018-10-05 15:58:11'),
(27,'1538747228.328','1538747228.328','done','2018-10-05 15:58:23'),
(28,'1538983526.386',' 1538983606.392','done','2018-10-08 09:26:46'),
(29,'1538993579.476','1538993579.476','done','2018-10-09 14:11:40'),
(30,'1538993499.472','1538993499.472','done','2018-10-09 14:11:40'),
(31,'1538988190.465','1538988190.465','done','2018-10-09 14:11:40');

/*Table structure for table `campaign_lists` */

DROP TABLE IF EXISTS `campaign_lists`;

CREATE TABLE `campaign_lists` (
  `list_id` int(11) NOT NULL AUTO_INCREMENT,
  `list_name` text NOT NULL,
  `subscribers` text CHARACTER SET utf8 COLLATE utf8_slovenian_ci NOT NULL,
  `from_name` text NOT NULL,
  `from_email` text NOT NULL,
  `permission_reminder` text NOT NULL,
  `mailchimp_id` text NOT NULL,
  `workgroup_id` int(11) DEFAULT NULL,
  `list_type` int(11) NOT NULL,
  `created_on` text NOT NULL,
  PRIMARY KEY (`list_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `campaign_lists` */

insert  into `campaign_lists`(`list_id`,`list_name`,`subscribers`,`from_name`,`from_email`,`permission_reminder`,`mailchimp_id`,`workgroup_id`,`list_type`,`created_on`) values 
(1,'Crm Track d.o.o.','Gregor|Goricki|info@btrack.io','Gregor','info@btrack.io','You are receiving this email because you opted in via our website.','d7aad0099c',NULL,0,'2018-09-25T15:30:52+00:00'),
(2,'upokojenci','mateja|svet|040427227','upokojenci','upokojenci','','',7,1,'2018-10-07 22:07:52');

/*Table structure for table `campaigns` */

DROP TABLE IF EXISTS `campaigns`;

CREATE TABLE `campaigns` (
  `campaign_id` int(11) NOT NULL AUTO_INCREMENT,
  `campaign_name` text COLLATE utf8_slovenian_ci NOT NULL,
  `campaign_subject` text COLLATE utf8_slovenian_ci NOT NULL,
  `campaign_content` text COLLATE utf8_slovenian_ci NOT NULL,
  `mailchimp_id` text COLLATE utf8_slovenian_ci NOT NULL,
  `list_id` int(11) NOT NULL,
  `workgroup_id` int(11) DEFAULT NULL,
  `campaign_type` int(11) NOT NULL,
  `send_time` text COLLATE utf8_slovenian_ci NOT NULL,
  `recipients` int(11) NOT NULL DEFAULT 0,
  `opens` int(11) NOT NULL DEFAULT 0,
  `created_on` text COLLATE utf8_slovenian_ci NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`campaign_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

/*Data for the table `campaigns` */

insert  into `campaigns`(`campaign_id`,`campaign_name`,`campaign_subject`,`campaign_content`,`mailchimp_id`,`list_id`,`workgroup_id`,`campaign_type`,`send_time`,`recipients`,`opens`,`created_on`,`status`) values 
(1,'zadovoljstvo uporabnikov','zadovoljstvo uporabnikov','vkxjvxkvnxncm n','',0,7,1,'',1,0,'2018-10-07 22:07:39',0),
(2,'zadovoljstvo uporabnikov','zadovoljstvo uporabnikov','happy customers','',2,7,1,'',1,0,'2018-10-07 22:10:25',0);

/*Table structure for table `contacts` */

DROP TABLE IF EXISTS `contacts`;

CREATE TABLE `contacts` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `subsidiary_id` int(11) DEFAULT NULL,
  `employee_id` int(11) NOT NULL,
  `contact_type` text COLLATE utf32_slovenian_ci NOT NULL,
  `contact_name` text CHARACTER SET utf8 COLLATE utf8_slovenian_ci NOT NULL,
  `contact_surname` text CHARACTER SET utf8 COLLATE utf8_slovenian_ci NOT NULL,
  `contact_position` text COLLATE utf32_slovenian_ci NOT NULL,
  `contact_email` text COLLATE utf32_slovenian_ci NOT NULL,
  `contact_phone` text COLLATE utf32_slovenian_ci NOT NULL,
  `contact_notes` text COLLATE utf32_slovenian_ci NOT NULL,
  `last_modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_on` text COLLATE utf32_slovenian_ci NOT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf32 COLLATE=utf32_slovenian_ci;

/*Data for the table `contacts` */

insert  into `contacts`(`contact_id`,`customer_id`,`subsidiary_id`,`employee_id`,`contact_type`,`contact_name`,`contact_surname`,`contact_position`,`contact_email`,`contact_phone`,`contact_notes`,`last_modified`,`created_on`) values 
(1,1,NULL,62,'Client','Jasmin','Zivanovic','AIR','it@goricki.si','+38651206449','','2018-10-08 10:39:20','2018-10-08 10:39'),
(2,1,NULL,62,'Client','Anže ','Babnik','IT','it@goricki.si','+38651206449','asdvd','2018-10-08 13:59:09','2018-10-08 13:59'),
(3,3,NULL,63,'Partner','OKTAVIJAN','ARAM','direktor','info@institut-mak.si','+38651689685','test 2','2018-10-08 15:03:52','2018-10-08 15:03');

/*Table structure for table `crmcalls` */

DROP TABLE IF EXISTS `crmcalls`;

CREATE TABLE `crmcalls` (
  `call_id` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_id` int(11) DEFAULT NULL,
  `reminder_id` int(11) DEFAULT NULL,
  `employee_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `subsidiary_id` int(11) DEFAULT NULL,
  `contact_id` int(11) DEFAULT NULL,
  `missed_callback` int(11) DEFAULT 0,
  `call_phonenumber` text COLLATE utf32_slovenian_ci NOT NULL,
  `call_duration` text COLLATE utf32_slovenian_ci NOT NULL,
  `call_type` int(11) NOT NULL DEFAULT 1,
  `call_answered` int(11) NOT NULL DEFAULT 1,
  `call_source` text COLLATE utf32_slovenian_ci NOT NULL,
  `call_datetime` timestamp NOT NULL DEFAULT current_timestamp(),
  `call_resolution_time` int(11) DEFAULT NULL,
  `json_data` text COLLATE utf32_slovenian_ci DEFAULT NULL,
  `template_id` int(11) DEFAULT 1,
  PRIMARY KEY (`call_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf32 COLLATE=utf32_slovenian_ci;

/*Data for the table `crmcalls` */

insert  into `crmcalls`(`call_id`,`ticket_id`,`reminder_id`,`employee_id`,`customer_id`,`subsidiary_id`,`contact_id`,`missed_callback`,`call_phonenumber`,`call_duration`,`call_type`,`call_answered`,`call_source`,`call_datetime`,`call_resolution_time`,`json_data`,`template_id`) values 
(1,NULL,NULL,62,2,NULL,NULL,0,'051206449','',1,1,'Telephone','2018-10-08 10:31:59',8,'{\"missed_callback\":\"0\",\"input-4449\":\"G1\",\"textarea-5932\":\"G1\"}',1),
(2,1,NULL,62,1,NULL,1,0,'051206449','00:00:03',0,1,'Telephone','2018-10-08 10:39:54',89,'{\"call_id\":\"2\",\"input-4449\":\",nm.\",\"textarea-5932\":\"nm.mn.\"}',1),
(3,2,NULL,62,1,NULL,NULL,0,'051206449','00:00:12',1,1,'Telephone','2018-10-08 10:43:47',10,'{\"call_id\":\"3\",\"input-4449\":\"Poklical naz\",\"textarea-5932\":\"NAZAD\"}',1),
(4,4,NULL,62,1,NULL,NULL,0,'051206449','00:00:00',0,1,'Telephone','2018-10-08 13:59:44',3,'{\"call_type\":\"0\",\"missed_callback\":\"0\",\"input-4449\":\"sC\",\"textarea-5932\":\"ASC\"}',1),
(5,11,NULL,62,1,NULL,NULL,0,'051206449','00:00:02',0,1,'Telephone','2018-10-09 14:10:26',28,'{\"call_type\":\"0\",\"missed_callback\":\"0\",\"input-4449\":\"Stranka poklicala spra\\u0161uje po \",\"textarea-5932\":\"Stranka poklicala spra\\u0161uje po Stranka poklicala spra\\u0161uje po Stranka poklicala spra\\u0161uje po Stranka poklicala spra\\u0161uje po Stranka poklicala spra\\u0161uje po Stranka poklicala spra\\u0161uje po Stranka poklicala spra\\u0161uje po Stranka poklicala spra\\u0161uje po Stranka poklicala spra\\u0161uje po Stranka poklicala spra\\u0161uje po Stranka poklicala spra\\u0161uje po Stranka poklicala spra\\u0161uje po Stranka poklicala spra\\u0161uje po Stranka poklicala spra\\u0161uje po Stranka poklicala spra\\u0161uje po Stranka poklicala spra\\u0161uje po \"}',1);

/*Table structure for table `customers` */

DROP TABLE IF EXISTS `customers`;

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_vat` text COLLATE utf8_slovenian_ci NOT NULL,
  `business_entity` int(11) NOT NULL,
  `taxpayer` int(11) NOT NULL,
  `customer_name` text COLLATE utf8_slovenian_ci NOT NULL,
  `client_name` text COLLATE utf8_slovenian_ci DEFAULT NULL,
  `client_surname` text COLLATE utf8_slovenian_ci DEFAULT NULL,
  `customer_phone` text COLLATE utf8_slovenian_ci NOT NULL,
  `customer_email` text COLLATE utf8_slovenian_ci NOT NULL,
  `customer_website` text COLLATE utf8_slovenian_ci NOT NULL,
  `customer_building` text COLLATE utf8_slovenian_ci NOT NULL,
  `customer_address` text COLLATE utf8_slovenian_ci NOT NULL,
  `customer_industry` text COLLATE utf8_slovenian_ci NOT NULL,
  `latitude` text COLLATE utf8_slovenian_ci NOT NULL,
  `longitude` text COLLATE utf8_slovenian_ci NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `customer_notes` text COLLATE utf8_slovenian_ci NOT NULL,
  `customer_importance` int(11) NOT NULL,
  `customer_visibility` int(11) NOT NULL DEFAULT 1,
  `low_sla` int(11) NOT NULL DEFAULT 240,
  `normal_sla` int(11) NOT NULL DEFAULT 120,
  `high_sla` int(11) NOT NULL DEFAULT 60,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

/*Data for the table `customers` */

insert  into `customers`(`customer_id`,`customer_vat`,`business_entity`,`taxpayer`,`customer_name`,`client_name`,`client_surname`,`customer_phone`,`customer_email`,`customer_website`,`customer_building`,`customer_address`,`customer_industry`,`latitude`,`longitude`,`employee_id`,`customer_notes`,`customer_importance`,`customer_visibility`,`low_sla`,`normal_sla`,`high_sla`,`created_on`,`created_by`) values 
(1,'62464124',1,1,'BITNET, INFORMACIJSKE STORITVE, ŽIGA BABNIK S.P.',NULL,NULL,'+38651206449','babnik.ziga@gmail.com','','SMD','ROŽNA DOLINA, CESTA IV 22 , 1000 LJUBLJANA','Information technology','46.0474705','14.484151900000029',0,'',5,1,240,120,60,'2018-10-08 10:38:52',62),
(2,'',0,0,'','Grega','Goricki','+38640377772','grega@goricki.si','','','Pod hribom 55, Ljubljana, Slovenia','','46.066576','14.47787530000005',65,'',7,1,240,120,60,'2018-10-08 14:51:56',65),
(3,'49901133',1,1,'ZAVOD INŠTITUT MAK, POSLOVNE STORITVE',NULL,NULL,'+38651689685','jasmina@institut-mak.si','','3','MARINOVŠEVA CESTA 3, 1000 LJUBLJANA','Information technology','46.1152943','14.460030700000061',0,'',5,1,240,120,60,'2018-10-08 15:03:14',63),
(4,'',0,0,'','Žiga','Babnik','+38651206449','babnik.ziga@gmail.com','','','Pod hribom 55, Ljubljana, Slovenia','','46.066576','14.47787530000005',60,'',5,1,240,120,60,'2018-10-08 15:58:38',62);

/*Table structure for table `departments` */

DROP TABLE IF EXISTS `departments`;

CREATE TABLE `departments` (
  `department_id` int(11) NOT NULL AUTO_INCREMENT,
  `department_name` text NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

/*Data for the table `departments` */

insert  into `departments`(`department_id`,`department_name`,`created_on`) values 
(1,'Servis','2018-09-17 14:55:52'),
(8,'Dev','2018-09-25 07:45:01'),
(15,'NETKO','2018-10-03 09:13:28'),
(16,'PODPORA','2018-10-03 09:14:08'),
(17,'Reklamacije','2018-10-03 11:21:46'),
(18,'PRODAJA','2018-10-03 14:17:12');

/*Table structure for table `email` */

DROP TABLE IF EXISTS `email`;

CREATE TABLE `email` (
  `email_id` int(11) NOT NULL AUTO_INCREMENT,
  `mail_id` text NOT NULL,
  `conversation_id` int(11) DEFAULT NULL,
  `ticket_id` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `opened_by` int(11) DEFAULT NULL,
  `message_id` text NOT NULL,
  `notes` text NOT NULL,
  `status` int(11) NOT NULL,
  `opened` int(11) NOT NULL DEFAULT 0,
  `opened_on` text DEFAULT NULL,
  `email_subject` varchar(500) DEFAULT NULL,
  `email_body` text DEFAULT NULL,
  `email_from` text DEFAULT NULL,
  `email_to` text DEFAULT NULL,
  `email_date` varchar(500) DEFAULT NULL,
  `created_on` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`email_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

/*Data for the table `email` */

insert  into `email`(`email_id`,`mail_id`,`conversation_id`,`ticket_id`,`employee_id`,`opened_by`,`message_id`,`notes`,`status`,`opened`,`opened_on`,`email_subject`,`email_body`,`email_from`,`email_to`,`email_date`,`created_on`) values 
(1,'206',NULL,5,NULL,NULL,'1538727205206','',1,0,'2018-10-08 14:46:29','TEST','<html>\r\n  <head>\r\n\r\n    <meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\">\r\n  </head>\r\n  <body text=\"#000000\" bgcolor=\"#FFFFFF\">\r\n    <p><br>\r\n    </p>\r\n    <div class=\"moz-signature\">-- <br>\r\n      <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n      <title>Žiga Babnik</title>\r\n      <table valign=\"top\" style=\"font-family: Calibri; font-size:\r\n        medium; \" cellspacing=\"0\" width=\"100%\" border=\"0\">\r\n        <tbody>\r\n          <tr>\r\n            <td valign=\"top\" align=\"center\" width=\"150\"><img\r\n                src=\"file://T:/Podpis/podpisgrega/netko-logo-podpis.png\"\r\n                style=\"padding-top:5px\" height=\"40\" width=\"135\"></td>\r\n            <td style=\"color: rgb(102, 102, 102); \" valign=\"top\">\r\n              <p style=\"font-family: Arial, Helvetica, sans-serif;\r\n                font-size: 12px; \"><b>Žiga Babnik<br>\r\n                </b>IT</p>\r\n              <p style=\"font-family: Arial, Helvetica, sans-serif;\r\n                font-size: 12px; \">+386 51 206 449<br>\r\n                <a class=\"moz-txt-link-abbreviated\"\r\n                  href=\"mailto:grega@goricki.si\">ziga@netko.it</a><br>\r\n                Netko d.o.o., Primoži?eva 1, 1000 Ljubljana, Slovenija<br>\r\n                <a moz-do-not-send=\"true\" href=\"http://www.goricki.si/\"\r\n                  class=\"email_link\" style=\"color: rgb(51, 153, 255); \">www.netko.it</a></p>\r\n              <p style=\"font-family: Arial, Helvetica, sans-serif;\r\n                font-size: 12px; \"><br>\r\n              </p>\r\n              <div style=\"font-family: Calibri, sans-serif; font-size:\r\n                14px; color: rgb(0, 0, 0); \"><span\r\n                  class=\"Apple-style-span\" style=\"font-size: 10px;\r\n                  font-family: Arial, sans-serif; \">To elektronsko\r\n                  sporo?ilo in vse morebitne priloge so poslovna\r\n                  skrivnost, z avtorsko zaš?ito in namenjene izklju?no\r\n                  naslovniku. ?e ste sporo?ilo prejeli pomotoma, Vas\r\n                  prosimo, da obvestite pošiljatelja, sporo?ilo pa takoj\r\n                  uni?ite. </span></div>\r\n              <div style=\"font-family: Calibri, sans-serif; font-size:\r\n                14px; color: rgb(0, 0, 0); \"><span\r\n                  class=\"Apple-style-span\" style=\"font-size: 10px;\r\n                  font-family: Arial, sans-serif; \">Kakršnokoli\r\n                  razkritje, distribucija ali kopiranje vsebine\r\n                  sporo?ila je  prepovedano. Ni nujno, da to sporo?ilo\r\n                  odraža uradno stališ?e družbe. </span></div>\r\n            </td>\r\n          </tr>\r\n        </tbody>\r\n      </table>\r\n    </div>\r\n  </body>\r\n</html>\r\n','it@goricki.si','ziga.babnik@btrack.io','2018-10-05 10:13:25','2018-10-08 09:49:45'),
(2,'205',NULL,NULL,NULL,NULL,'1538726718205','',1,0,'2018-10-08 14:42:34','TEST','<html>\r\n  <head>\r\n\r\n    <meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\">\r\n  </head>\r\n  <body text=\"#000000\" bgcolor=\"#FFFFFF\">\r\n    <p><br>\r\n    </p>\r\n    <div class=\"moz-signature\">-- <br>\r\n      <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n      <title>Žiga Babnik</title>\r\n      <table valign=\"top\" style=\"font-family: Calibri; font-size:\r\n        medium; \" cellspacing=\"0\" width=\"100%\" border=\"0\">\r\n        <tbody>\r\n          <tr>\r\n            <td valign=\"top\" align=\"center\" width=\"150\"><img\r\n                src=\"file://T:/Podpis/podpisgrega/netko-logo-podpis.png\"\r\n                style=\"padding-top:5px\" height=\"40\" width=\"135\"></td>\r\n            <td style=\"color: rgb(102, 102, 102); \" valign=\"top\">\r\n              <p style=\"font-family: Arial, Helvetica, sans-serif;\r\n                font-size: 12px; \"><b>Žiga Babnik<br>\r\n                </b>IT</p>\r\n              <p style=\"font-family: Arial, Helvetica, sans-serif;\r\n                font-size: 12px; \">+386 51 206 449<br>\r\n                <a class=\"moz-txt-link-abbreviated\"\r\n                  href=\"mailto:grega@goricki.si\">ziga@netko.it</a><br>\r\n                Netko d.o.o., Primoži?eva 1, 1000 Ljubljana, Slovenija<br>\r\n                <a moz-do-not-send=\"true\" href=\"http://www.goricki.si/\"\r\n                  class=\"email_link\" style=\"color: rgb(51, 153, 255); \">www.netko.it</a></p>\r\n              <p style=\"font-family: Arial, Helvetica, sans-serif;\r\n                font-size: 12px; \"><br>\r\n              </p>\r\n              <div style=\"font-family: Calibri, sans-serif; font-size:\r\n                14px; color: rgb(0, 0, 0); \"><span\r\n                  class=\"Apple-style-span\" style=\"font-size: 10px;\r\n                  font-family: Arial, sans-serif; \">To elektronsko\r\n                  sporo?ilo in vse morebitne priloge so poslovna\r\n                  skrivnost, z avtorsko zaš?ito in namenjene izklju?no\r\n                  naslovniku. ?e ste sporo?ilo prejeli pomotoma, Vas\r\n                  prosimo, da obvestite pošiljatelja, sporo?ilo pa takoj\r\n                  uni?ite. </span></div>\r\n              <div style=\"font-family: Calibri, sans-serif; font-size:\r\n                14px; color: rgb(0, 0, 0); \"><span\r\n                  class=\"Apple-style-span\" style=\"font-size: 10px;\r\n                  font-family: Arial, sans-serif; \">Kakršnokoli\r\n                  razkritje, distribucija ali kopiranje vsebine\r\n                  sporo?ila je  prepovedano. Ni nujno, da to sporo?ilo\r\n                  odraža uradno stališ?e družbe. </span></div>\r\n            </td>\r\n          </tr>\r\n        </tbody>\r\n      </table>\r\n    </div>\r\n  </body>\r\n</html>\r\n','it@goricki.si','ziga.babnik@btrack.io','2018-10-05 10:05:18','2018-10-08 09:49:45'),
(3,'204',NULL,NULL,NULL,NULL,'1538726343204','',1,0,'2018-10-08 14:07:38','Re: TEST','<html>\r\n  <head>\r\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n  </head>\r\n  <body text=\"#000000\" bgcolor=\"#FFFFFF\">\r\n    <p>x<br>\r\n    </p>\r\n    <br>\r\n    <div class=\"moz-cite-prefix\">On 05/10/2018 09:58,\r\n      <a class=\"moz-txt-link-abbreviated\" href=\"mailto:ziga.babnik@btrack.io\">ziga.babnik@btrack.io</a> wrote:<br>\r\n    </div>\r\n    <blockquote type=\"cite\"\r\ncite=\"mid:5XEEPlb671AUpG4TvfoQyxFcLwh8C1wC3CvYQptizM@main.btrackcore.com\">\r\n      <meta http-equiv=\"content-type\" content=\"text/html; charset=UTF-8\">\r\n      <div style=\"background-color: #fff; margin: 0 auto 0 auto;\r\n        padding: 30px 0 30px 0; color: #4f565d; font-size: 13px;\r\n        line-height: 20px; font-family: Helvetica Neue,Arial,sans-serif;\r\n        text-align: left;\">\r\n        <center>\r\n          <table style=\"width: 550px; text-align: center;\">\r\n            <tbody>\r\n              <tr>\r\n                <td style=\"padding: 0 0 20px 0; border-bottom: 1px solid\r\n                  #e9edee;\"> </td>\r\n              </tr>\r\n              <tr>\r\n                <td style=\"padding: 30px 0;\" colspan=\"2\">\r\n                  <p style=\"color: #1d2227; line-height: 28px;\r\n                    font-size: 22px; margin: 12px 10px 20px 10px;\r\n                    font-weight: 400;\">Greetings</p>\r\n                  <p style=\"margin: 0 10px 10px 10px; padding: 0; color:\r\n                    black;\">This e-mail has been generated automatically\r\n                    in response to the creation of a support ticket <strong>#TKT-201858</strong> with\r\n                    the subject - <strong>TEST</strong>. We will handle\r\n                    your request as soon as possible. If you have any\r\n                    additional questions, please reply to this e-mail\r\n                    and we\'ll get back to you.</p>\r\n                </td>\r\n              </tr>\r\n              <tr>\r\n                <td style=\"padding: 30px 0 0 0; border-top: 1px solid\r\n                  #e9edee; color: #9b9fa5;\" colspan=\"2\"> </td>\r\n              </tr>\r\n            </tbody>\r\n          </table>\r\n        </center>\r\n      </div>\r\n    </blockquote>\r\n    <br>\r\n    <div class=\"moz-signature\">-- <br>\r\n      <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n      <title>Žiga Babnik</title>\r\n      <table valign=\"top\" style=\"font-family: Calibri; font-size:\r\n        medium; \" cellspacing=\"0\" width=\"100%\" border=\"0\">\r\n        <tbody>\r\n          <tr>\r\n            <td valign=\"top\" align=\"center\" width=\"150\"><img\r\n                src=\"file://T:/Podpis/podpisgrega/netko-logo-podpis.png\"\r\n                style=\"padding-top:5px\" height=\"40\" width=\"135\"></td>\r\n            <td style=\"color: rgb(102, 102, 102); \" valign=\"top\">\r\n              <p style=\"font-family: Arial, Helvetica, sans-serif;\r\n                font-size: 12px; \"><b>Žiga Babnik<br>\r\n                </b>IT</p>\r\n              <p style=\"font-family: Arial, Helvetica, sans-serif;\r\n                font-size: 12px; \">+386 51 206 449<br>\r\n                <a class=\"moz-txt-link-abbreviated\"\r\n                  href=\"mailto:grega@goricki.si\">ziga@netko.it</a><br>\r\n                Netko d.o.o., Primoži?eva 1, 1000 Ljubljana, Slovenija<br>\r\n                <a moz-do-not-send=\"true\" href=\"http://www.goricki.si/\"\r\n                  class=\"email_link\" style=\"color: rgb(51, 153, 255); \">www.netko.it</a></p>\r\n              <p style=\"font-family: Arial, Helvetica, sans-serif;\r\n                font-size: 12px; \"><br>\r\n              </p>\r\n              <div style=\"font-family: Calibri, sans-serif; font-size:\r\n                14px; color: rgb(0, 0, 0); \"><span\r\n                  class=\"Apple-style-span\" style=\"font-size: 10px;\r\n                  font-family: Arial, sans-serif; \">To elektronsko\r\n                  sporo?ilo in vse morebitne priloge so poslovna\r\n                  skrivnost, z avtorsko zaš?ito in namenjene izklju?no\r\n                  naslovniku. ?e ste sporo?ilo prejeli pomotoma, Vas\r\n                  prosimo, da obvestite pošiljatelja, sporo?ilo pa takoj\r\n                  uni?ite. </span></div>\r\n              <div style=\"font-family: Calibri, sans-serif; font-size:\r\n                14px; color: rgb(0, 0, 0); \"><span\r\n                  class=\"Apple-style-span\" style=\"font-size: 10px;\r\n                  font-family: Arial, sans-serif; \">Kakršnokoli\r\n                  razkritje, distribucija ali kopiranje vsebine\r\n                  sporo?ila je  prepovedano. Ni nujno, da to sporo?ilo\r\n                  odraža uradno stališ?e družbe. </span></div>\r\n            </td>\r\n          </tr>\r\n        </tbody>\r\n      </table>\r\n    </div>\r\n  </body>\r\n</html>\r\n','it@goricki.si','ziga.babnik@btrack.io','2018-10-05 09:59:03','2018-10-08 09:49:45'),
(4,'203',NULL,NULL,NULL,NULL,'1538726300203','',1,0,NULL,'TEST','','it@goricki.si','','2018-10-05 09:58:20','2018-10-08 09:49:45'),
(5,'202',NULL,NULL,NULL,NULL,'1538557628202','',1,0,'2018-10-08 14:07:35','Marketing in 2020 ????','<!-- start coded_template: id:5677628597 path:Custom/email/email/OneOffEmail2018.html --><!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\"><html xmlns=\"http://www.w3.org/1999/xhtml\" xmlns:v=\"urn:schemas-microsoft-com:vml\" xmlns:o=\"urn:schemas-microsoft-com:office:office\"><head>\r\n<!--[if gte mso 9]><xml>\r\n<o:OfficeDocumentSettings>\r\n<o:AllowPNG/>\r\n<o:PixelsPerInch>96</o:PixelsPerInch>\r\n</o:OfficeDocumentSettings>\r\n</xml><![endif]-->\r\n<title>Hubspot</title>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0 \">\r\n<meta name=\"format-detection\" content=\"telephone=no\">\r\n<style type=\"text/css\" id=\"hs-inline-css\">\r\nbody {\r\n	margin: 0 !important;\r\n	padding: 0 !important;\r\n	-webkit-text-size-adjust: 100% !important;\r\n	-ms-text-size-adjust: 100% !important;\r\n	-webkit-font-smoothing: antialiased !important;\r\n}\r\nimg {\r\n	border: 0 !important;\r\n	outline: none !important;\r\n}\r\np {\r\n	Margin: 0px !important;\r\n	Padding: 0px !important;\r\n}\r\ntable {\r\n	border-collapse: collapse;\r\n	mso-table-lspace: 0px;\r\n	mso-table-rspace: 0px;\r\n}\r\ntd, a, span {\r\n	border-collapse: collapse;\r\n	mso-line-height-rule: exactly;\r\n}\r\n.ExternalClass * {\r\n	line-height: 100%;\r\n}\r\n.em_defaultlink a {\r\n	color: inherit !important;\r\n	text-decoration: none !important;\r\n}\r\nspan.MsoHyperlink {\r\n	mso-style-priority: 99;\r\n	color: inherit;\r\n}\r\nspan.MsoHyperlinkFollowed {\r\n	mso-style-priority: 99;\r\n	color: inherit;\r\n}\r\n.em_grey a {\r\n	color: #33475b;\r\n	text-decoration: none;\r\n}\r\n.em_grey2 a {\r\n	color: #516f90;\r\n	text-decoration: none;\r\n}\r\n.em_grey3 a {\r\n	color: #2d3e50;\r\n	text-decoration: none;\r\n}\r\n.em_grey4 a {\r\n	color: #425b76;\r\n	text-decoration: none;\r\n}\r\n.em_grey4_u a {\r\n	color: #425b76;\r\n	text-decoration: underline;\r\n}\r\n.em_white a {\r\n	color: #ffffff;\r\n	text-decoration: none;\r\n}\r\n.em_skyblue a {\r\n	color: #0091ae;\r\n	text-decoration: none;\r\n}\r\n@media only screen and (min-width:481px) and (max-width:599px) {\r\n.em_main_table {\r\n	width: 100% !important;\r\n}\r\n.em_wrapper {\r\n	width: 100% !important;\r\n}\r\n.em_side {\r\n	width: 10px !important;\r\n}\r\n.em_hide {\r\n	display: none !important;\r\n}\r\n.em_img img {\r\n	width: 100% !important;\r\n	height: auto !important;\r\n	max-width: 100% !important;\r\n}\r\n.em_height {\r\n	height: 20px !important;\r\n}\r\n.em_top {\r\n	padding-top: 20px !important;\r\n}\r\n.em_pad {\r\n	padding: 0 10px !important;\r\n}\r\n.em_padall {\r\n	padding: 20px 10px !important;\r\n}\r\n.em_padtop10 {\r\n	padding: 10px 0 0 0 !important;\r\n}\r\n.em_padall {\r\n	padding: 20px 10px !important;\r\n}\r\n.em_pad2 {\r\n	padding: 20px 10px 0 10px !important;\r\n}\r\n.em_pabtm {\r\n	padding: 0 0 20px 0 !important;\r\n}\r\n.em_padnone {\r\n	padding: 0 !important;\r\n}\r\n.em_font55 {\r\n	font-size: 34px !important;\r\n	line-height: 36px !important;\r\n}\r\n.em_font24 {\r\n	font-size: 22px !important;\r\n	line-height: 24px !important;\r\n}\r\n.em_pad {\r\n	padding-left: 10px !important;\r\n	padding-right: 10px !important;\r\n}\r\n.em_pad2 {\r\n	padding-left: 10px !important;\r\n	padding-right: 10px !important;\r\n	padding-bottom: 20px !important;\r\n}\r\n.em_pad3 {\r\n	padding-left: 10px !important;\r\n	padding-right: 10px !important;\r\n	padding-bottom: 20px !important;\r\n	padding-top: 20px !important;\r\n}\r\n.em_pad4 {\r\n	padding-left: 10px !important;\r\n	padding-right: 10px !important;\r\n	padding-top: 20px !important;\r\n}\r\n.em_auto {\r\n	height: auto !important;\r\n}\r\n.em_center {\r\n	text-align: center !important;\r\n}\r\n}\r\n@media screen and (max-width: 480px) {\r\n.em_main_table {\r\n	width: 100% !important;\r\n}\r\n.em_wrapper {\r\n	width: 100% !important;\r\n}\r\n.em_side {\r\n	width: 10px !important;\r\n}\r\n.em_hide {\r\n	display: none !important;\r\n}\r\n.em_img img {\r\n	width: 100% !important;\r\n	height: auto !important;\r\n	max-width: 100% !important;\r\n}\r\n.em_height {\r\n	height: 20px !important;\r\n}\r\n.em_top {\r\n	padding-top: 20px !important;\r\n}\r\n.em_pad {\r\n	padding: 0 10px !important;\r\n}\r\n.em_font55 {\r\n	font-size: 26px !important;\r\n	line-height: 28px !important;\r\n}\r\n.em_font24 {\r\n	font-size: 14px !important;\r\n	line-height: 16px !important;\r\n}\r\n.em_padall {\r\n	padding: 20px 10px !important;\r\n}\r\n.em_padtop10 {\r\n	padding: 10px 0 0 0 !important;\r\n}\r\n.em_pad2 {\r\n	padding: 20px 10px 0 10px !important;\r\n}\r\n.em_pabtm {\r\n	padding: 0 0 20px 0 !important;\r\n}\r\n.em_padnone {\r\n	padding: 0 !important;\r\n}\r\nu + .em_body .em_full_wrap {\r\n	width: 100% !important;\r\n	width: 100vw !important;\r\n}\r\n.em_pad {\r\n	padding-left: 10px !important;\r\n	padding-right: 10px !important;\r\n}\r\n.em_pad2 {\r\n	padding-left: 10px !important;\r\n	padding-right: 10px !important;\r\n	padding-bottom: 20px !important;\r\n}\r\n.em_pad3 {\r\n	padding-left: 10px !important;\r\n	padding-right: 10px !important;\r\n	padding-bottom: 20px !important;\r\n	padding-top: 20px !important;\r\n}\r\n.em_pad4 {\r\n	padding-left: 10px !important;\r\n	padding-right: 10px !important;\r\n	padding-top: 20px !important;\r\n}\r\n.em_auto {\r\n	height: auto !important;\r\n}\r\n.em_center {\r\n	text-align: center !important;\r\n}\r\n}\r\n</style>\r\n<meta name=\"generator\" content=\"HubSpot\"><meta property=\"og:url\" content=\"https://www.hubspot.com/-temporary-slug-bd763e79-5cc0-4044-aff9-2de3daa06d03\"><meta name=\"x-apple-disable-message-reformatting\"></head>\r\n<body class=\"em_body\" style=\"-webkit-text-size-adjust:100% !important; -ms-text-size-adjust:100% !important; -webkit-font-smoothing:antialiased !important; margin:0px; padding:0px\" bgcolor=\"#eaf0f6\">\r\n<div id=\"preview_text\" style=\"display:none;font-size:1px;color:#f2f2f2;line-height:1px;max-height:0px;max-width:0px;opacity:0;overflow:hidden;\">Your 15-part video crash course on bringing live chat, Facebook Messenger, and bots into your inbound strategy for the first time.</div>\r\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"em_full_wrap\" bgcolor=\"#eaf0f6\" style=\"border-collapse:collapse; mso-table-lspace:0px; mso-table-rspace:0px\">\r\n  <tbody><tr>\r\n    <td align=\"center\" valign=\"top\" style=\"border-collapse:collapse; mso-line-height-rule:exactly\"><table align=\"center\" width=\"600\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"em_main_table\" style=\"border-collapse:collapse; mso-table-lspace:0px; mso-table-rspace:0px; width:600px\">\r\n        <tbody><tr>\r\n          <td align=\"center\" valign=\"middle\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; padding:10px 0; font-family:Avenir, Arial, sans-serif; font-size:11px; line-height:14px; color:#425b77\"></td>\r\n        </tr>\r\n        <tr>\r\n          <td align=\"center\" valign=\"top\" style=\"border-collapse:collapse; mso-line-height-rule:exactly\"><table align=\"center\" class=\"em_wrapper\" style=\"border-collapse:collapse; mso-table-lspace:0px; mso-table-rspace:0px; width:600px\" width=\"600\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#ffffff\">\r\n              <tbody><tr>\r\n                <td align=\"center\" valign=\"top\" height=\"75\" background=\"images/img_bg.jpg\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; background-position:center top; background-repeat:no-repeat\" bgcolor=\"#ed7b55\"><!--[if gte mso 9]>\r\n  <v:rect xmlns:v=\"urn:schemas-microsoft-com:vml\" fill=\"true\" stroke=\"false\" style=\"width:600px;height:75px;\">\r\n    <v:fill type=\"tile\" src=\"http://edmimages.net/edm/2018/march/1520951220318/img_bg.jpg\" color=\"#ed7b55\" />\r\n    <v:textbox inset=\"0,0,0,0\">\r\n  <![endif]-->\r\n                  \r\n                  <table align=\"center\" class=\"em_wrapper\" style=\"border-collapse:collapse; mso-table-lspace:0px; mso-table-rspace:0px; width:600px\" width=\"600\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                    <tbody><tr>\r\n                      <td align=\"center\" valign=\"middle\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; padding:23px\"> <div id=\"hs_cos_wrapper_Logo\" class=\"hs_cos_wrapper hs_cos_wrapper_widget hs_cos_wrapper_type_linked_image\" style=\"color: inherit; font-size: inherit; line-height: inherit;\" data-hs-cos-general-type=\"widget\" data-hs-cos-type=\"linked_image\"><a href=\"https://www.hubspot.com/e2t/c/*W1qMsW91GnyK3VkTwjK24s6JB0/*W3m16Sw5SnmGzVwgfP934tntj0/5/f18dQhb0S82_8YHsZzW34_sfm78kN-HW76pMLb34R3hlW1kP_hc2HydbkW6ZTsyx3jpqPJW3s0GPP47s_SLW3sm0yM4DsPgJW4kFK8z3sWZhWW5Q4-WD5k56dDW2HVTVM3CcrhnW3MbN9Z6T3_RVW5-KSWS4LhT_GW16jsGZ4hr32GW1ZtGk82gdnrrW3GV6v445y_ZnW2pz3-_25Dg4gW4wGSPF5gJytVVH_6LL1fBhbGW2X1fQG7bgrcVW3HdNg63SQgn2W3_CV3g3V_TcnVxZ29g41TlcRW3Tx3Jb5ThdHgW3s1XjF51GcQGMBjLtvwKJnCV3qXSR3nNRKSW8xPx3750VrhQW7YgwjN2yc2tZN4tWLWqsk4dRW3BBr-385MQPZN72qqQtVppbVW15GNJs81djcyVVFxZd5FL-YSW5bbDYK4Pv86fV5XG0v45V58J102\" target=\"_blank\" id=\"hs-link-Logo\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; border-width:0px; border:0px\" data-hs-link-id=\"0\"><img src=\"https://cdn2.hubspot.net/hub/1964904/hubfs/EM/i1519023257363/logo.png?noresize&amp;t=1538556133136&amp;width=100&amp;name=logo.png\" class=\"hs-image-widget \" style=\"outline:none !important; max-height:29px; border-width:0px; border:0px; width:100px; max-width:100px; display:block; font-family:Arial, sans-serif; font-size:18px; line-height:22px; color:#ffffff; font-weight:bold\" width=\"100\" alt=\"HubSpot\" title=\"HubSpot\"></a></div></td>\r\n                    </tr>\r\n                  </tbody></table>\r\n                  \r\n                  <!--[if gte mso 9]>\r\n    </v:textbox>\r\n  </v:rect>\r\n  <![endif]--></td>\r\n              </tr>\r\n            </tbody></table></td>\r\n        </tr>\r\n        <!-- Main Header Section -->\r\n        <tr>\r\n          <td valign=\"top\" align=\"center\" style=\"border-collapse:collapse; mso-line-height-rule:exactly\"><table align=\"center\" class=\"em_wrapper\" style=\"border-collapse:collapse; mso-table-lspace:0px; mso-table-rspace:0px; width:600px\" width=\"600\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#ffffff\">\r\n              <tbody><tr>\r\n                <td align=\"center\" valign=\"middle\" class=\"em_grey em_padall\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; padding:24px 22px; font-family:Avenir, Arial, sans-serif; font-size:24px; line-height:26px; color:#33475b; font-weight:bold\"> <a href=\"https://www.hubspot.com/e2t/c/*W1qMsW91GnyK3VkTwjK24s6JB0/*W8RJGgz77wF6HW48Rttl2XpWls0/5/f18dQhb0S6QJ2dYyBZVCCXlH1cbj96W7MCJ7Z6Lj66QW5CljP-1NNwqvW1g8h6S7XVjL1W1nrzXy6wN80rW3wJ5Kv3ldMDpVst_Zm3Kz0CbV_v2l13WHTJCW8qM9Fq5-PDJhW73vSC_5K8FVPW7TzPC-6pMdZ6N4sZjWFXvBVrW8RHgMj659VWsW2T9TNW2wtbd2N51cwF8S4F-KW3_xtZT7266jTN2sTxyzrmp0TW5f6vrs3WTJS3W56P_Mh1f7Cm-W2v0gGD5bVpjbW62gtnc2g6JDkW7-XvsP4LTmDVV4w3y31BCX8hW1V_tGn44PT6FW8TtZg07Ds3L6W1gBRRD3zq4lrW4x7kD12LrJGRW2Bj9BR1bsn7rW3nrfW58KG6WWVndk4K5bvqbmN7BXQxTFxKM1W7XL18B2LxVHxMXn_5mWWZZqVGH6FD29j-yHW20gdC41XlvdsW7w4cGQ8c5l89W6NSZHn4-XgL5W13Rmjw1qggkBW3tlsms8FD0vtW1LltF-87ZCnBW6K9W3G1B75d5W7LgVRv2jhbprW2QQmKl8nGLNDW5w4zvC8tYLZmdBGxTJ02\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; color:#33475b; text-decoration:none; display:block\" data-hs-link-id=\"0\" target=\"_blank\"><img alt=\"Display images to show real-time content\" style=\"outline:none !important; border:0; display:block\" border=\"0\" src=\"http://ink1001.hubspot.com/p/rp/1d368b34ead4d1d0.png?mi_u=ziga.babnik@btrack.io&amp;mi_name=Žiga\"></a></td>\r\n              </tr>\r\n            </tbody></table></td>\r\n        </tr>\r\n        <!-- //Main Header Section --> \r\n         <!-- Countdown Section -->\r\n        <tr>\r\n          <td valign=\"top\" align=\"center\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; padding:0 0 5px 0\" bgcolor=\"#ffffff\">\r\n          \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            </td>\r\n            \r\n        </tr>\r\n        <!-- //Countdown Section -->\r\n     \r\n        <!-- Single Image Section -->\r\n        <tr>\r\n          <td valign=\"top\" align=\"center\" style=\"border-collapse:collapse; mso-line-height-rule:exactly\"> \r\n            \r\n            \r\n            \r\n            \r\n            \r\n             </td>\r\n        </tr>\r\n        <!-- //Single Image Section --> \r\n        <!-- Gif with content Section -->\r\n        <tr>\r\n          <td valign=\"top\" align=\"center\" style=\"border-collapse:collapse; mso-line-height-rule:exactly\"> \r\n            \r\n            \r\n            \r\n            <table align=\"center\" style=\"border-collapse:collapse; mso-table-lspace:0px; mso-table-rspace:0px; width:600px\" class=\"em_wrapper\" width=\"600\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n              <tbody>\r\n                <!-- Gif Image Section -->\r\n                <tr>\r\n                  <td valign=\"top\" align=\"center\" class=\"em_img\" style=\"border-collapse:collapse; mso-line-height-rule:exactly\"><div id=\"hs_cos_wrapper_Gif_Image\" class=\"hs_cos_wrapper hs_cos_wrapper_widget hs_cos_wrapper_type_linked_image\" style=\"color: inherit; font-size: inherit; line-height: inherit;\" data-hs-cos-general-type=\"widget\" data-hs-cos-type=\"linked_image\"></div></td>\r\n                </tr>\r\n                <!-- //Gif Image Section --> \r\n                <!-- Plain Text Section -->\r\n                <tr>\r\n                  <td valign=\"top\" align=\"center\" style=\"border-collapse:collapse; mso-line-height-rule:exactly\"><table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\" style=\"border-collapse:collapse; mso-table-lspace:0px; mso-table-rspace:0px\">\r\n                      <tbody>\r\n                        <tr>\r\n                          <td valign=\"top\" bgcolor=\"#ffffff\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; padding:25px 30px 30px 30px\" class=\"em_padall\"><table align=\"center\" width=\"540\" class=\"em_wrapper\" style=\"border-collapse:collapse; mso-table-lspace:0px; mso-table-rspace:0px; width:540px\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                              <tbody><tr>\r\n                                <td align=\"left\" valign=\"middle\" class=\"em_grey3 em_center\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; padding:0 0 12px 0; font-family:Avenir, Arial, sans-serif; font-size:22px; line-height:24px; color:#2d3e50; font-weight:bold\"> </td>\r\n                              </tr>\r\n                              <tr>\r\n                                <td align=\"left\" valign=\"middle\" class=\"em_grey3 em_center\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; padding:0 0 14px 0; font-family:Avenir, Arial, sans-serif; font-size:14px; line-height:22px; color:#2d3e50\"><p style=\"margin-bottom: 1em; Margin:0px !important; Padding:0px !important\"><g class=\"gr_ gr_11 gr-alert gr_gramm gr_inline_cards gr_run_anim Style multiReplace\" id=\"11\" data-gr-id=\"11\">Hi&nbsp;</g>Žiga<g class=\"gr_ gr_11 gr-alert gr_gramm gr_inline_cards gr_disable_anim_appear Style multiReplace\" id=\"11\" data-gr-id=\"11\">,</g></p>\r\n<p style=\"margin-bottom: 1em; Margin:0px !important; Padding:0px !important\">&nbsp;</p>\r\n<p style=\"margin-bottom: 1em; Margin:0px !important; Padding:0px !important\"><span style=\"border-collapse:collapse; mso-line-height-rule:exactly; font-weight:400\"><g class=\"gr_ gr_8 gr-alert gr_spell gr_inline_cards gr_run_anim ContextualSpelling ins-del multiReplace\" id=\"8\" data-gr-id=\"8\">HubBot\'s</g> right - I have </span><i><span style=\"border-collapse:collapse; mso-line-height-rule:exactly; font-weight:400\">just</span></i><span style=\"border-collapse:collapse; mso-line-height-rule:exactly; font-weight:400\"> the thing to help you use messaging to delight prospects and customers by 2020. </span></p>\r\n<p style=\"margin-bottom: 1em; Margin:0px !important; Padding:0px !important\">&nbsp;</p>\r\n<p style=\"margin-bottom: 1em; Margin:0px !important; Padding:0px !important\"><span style=\"border-collapse:collapse; mso-line-height-rule:exactly; font-weight:400\"><strong>HubSpot partnered with industry experts to&nbsp;<span style=\"border-collapse:collapse; mso-line-height-rule:exactly; text-decoration:underline; color:#3288e6\"><a href=\"https://www.hubspot.com/e2t/c/*W1qMsW91GnyK3VkTwjK24s6JB0/*W3lgjtW8lpRS2W7n3H786h9-tF0/5/f18dQhb0S82_8YHsZzW34_sfm78kN-HW76pMLb34R3hlW1kP_hc2HydbkW6ZTsyx3jpqPJW3s0GPP47s_SLW3sm0yM4DsPgJW4kFK8z3sWZhWW5Q4-WD5k56dDW2HVTVM3CcrhnW3MbN9Z6T3_RVW5-KSWS4LhT_GW16jsGZ4hr32GW1ZtGk82gdnrrW3GV6v445y_ZnW2pz3-_25Dg4gW4wGSPF5gJytVVH_6LL1fBhbGW2X1fQG7bgrcVW3HdNg63SQgn2W3_CV3g3V_TcnVxZ29g41TlcRW3Tx3Jb5ThdHgW3s1XjF51GcQGMBjLtvwKJnCV3qXSR3nNRKSW8xPx3750VrhQW7YgwjN2yc2tZN4tWLWqsk4dRW3BBr-385MQPZN72qqQtVppbVW15GNJs81djcyVVFxZd5FL-YSW5bbDYK5ZDFd9M5XYs7C9fgD102\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; text-decoration:none; color:#3288e6\" rel=\" noopener\" data-hs-link-id=\"1\" target=\"_blank\">create a 15-video crash course</a></span> on using live chat, Facebook Messenger, and bots.</strong> </span></p>\r\n<p style=\"margin-bottom: 1em; Margin:0px !important; Padding:0px !important\">&nbsp;</p>\r\n<p style=\"margin-bottom: 1em; Margin:0px !important; Padding:0px !important\"><span style=\"border-collapse:collapse; mso-line-height-rule:exactly; font-weight:400\">This free course has everything you need to get started with conversational marketing <g class=\"gr_ gr_10 gr-alert gr_gramm gr_inline_cards gr_run_anim Style multiReplace\" id=\"10\" data-gr-id=\"10\">at </g>CRM TRACK D.O.O.<g class=\"gr_ gr_10 gr-alert gr_gramm gr_inline_cards gr_disable_anim_appear Style multiReplace\" id=\"10\" data-gr-id=\"10\">.</g></span>&nbsp;&nbsp;</p> </td>\r\n                              </tr>\r\n                              <tr>\r\n                                <td valign=\"top\" align=\"left\" style=\"border-collapse:collapse; mso-line-height-rule:exactly\"><table align=\"left\" class=\"em_wrapper\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"border-collapse:collapse; mso-table-lspace:0px; mso-table-rspace:0px\">\r\n                                    <tbody>\r\n                                      <tr>\r\n                                        <td valign=\"top\" align=\"left\" style=\"border-collapse:collapse; mso-line-height-rule:exactly\"><table align=\"center\" style=\"border-collapse:collapse; mso-table-lspace:0px; mso-table-rspace:0px; width:135px; border-radius:3px\" width=\"135\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#ff7a59\">\r\n                                            <tbody><tr>\r\n                                              <td align=\"center\" valign=\"middle\" class=\"em_white\" height=\"45\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; font-family:Avenir, Arial, sans-serif; font-size:15px; color:#ffffff\"><strong><a href=\"https://www.hubspot.com/e2t/c/*W1qMsW91GnyK3VkTwjK24s6JB0/*W68Dp951THv4wW39FZDN8-y8y60/5/f18dQhb0S82_8YHsZzW34_sfm78kN-HW76pMLb34R3hlW1kP_hc2HydbkW6ZTsyx3jpqPJW3s0GPP47s_SLW3sm0yM4DsPgJW4kFK8z3sWZhWW5Q4-WD5k56dDW2HVTVM3CcrhnW3MbN9Z6T3_RVW5-KSWS4LhT_GW16jsGZ4hr32GW1ZtGk82gdnrrW3GV6v445y_ZnW2pz3-_25Dg4gW4wGSPF5gJytVVH_6LL1fBhbGW2X1fQG7bgrcVW3HdNg63SQgn2W3_CV3g3V_TcnVxZ29g41TlcRW3Tx3Jb5ThdHgW3s1XjF51GcQGMBjLtvwKJnCV3qXSR3nNRKSW8xPx3750VrhQW7YgwjN2yc2tZN4tWLWqsk4dRW3BBr-385MQPZN72qqQtVppbVW15GNJs81djcyVVFxZd5FL-YSW5bbDYK5n2W9cV5XQt36rkZ3Q102\" rel=\" noopener\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; color:#ffffff; text-decoration:none\" data-hs-link-id=\"2\" target=\"_blank\">Start Course</a></strong> </td>\r\n                                            </tr>\r\n                                          </tbody></table></td>\r\n                                      </tr>\r\n                                    </tbody>\r\n                                  </table></td>\r\n                              </tr>\r\n                            </tbody></table></td>\r\n                        </tr>\r\n                      </tbody>\r\n                    </table></td>\r\n                </tr>\r\n                <!-- //Plain Text Section -->\r\n              </tbody>\r\n            </table>\r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n             </td>\r\n        </tr>\r\n        <!-- //Gif with content Section --> \r\n        <!-- Video Section -->\r\n        <tr>\r\n          <td valign=\"top\" align=\"center\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; padding:0 0 30px 0\" bgcolor=\"#f5f8fa\" class=\"em_pabtm\"><table align=\"center\" style=\"border-collapse:collapse; mso-table-lspace:0px; mso-table-rspace:0px; width:600px\" class=\"em_wrapper\" width=\"600\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n              <tbody>\r\n                <tr>\r\n                  <td valign=\"top\" align=\"center\" class=\"em_img\" style=\"border-collapse:collapse; mso-line-height-rule:exactly\"><div id=\"hs_cos_wrapper_Video_Image\" class=\"hs_cos_wrapper hs_cos_wrapper_widget hs_cos_wrapper_type_linked_image\" style=\"color: inherit; font-size: inherit; line-height: inherit;\" data-hs-cos-general-type=\"widget\" data-hs-cos-type=\"linked_image\"></div></td>\r\n                </tr>\r\n              </tbody>\r\n            </table></td>\r\n        </tr>\r\n        <!-- //Video Section --> \r\n        <!-- Flipflop Section Start Here -->\r\n        <tr>\r\n          <td valign=\"top\" align=\"center\" style=\"border-collapse:collapse; mso-line-height-rule:exactly\"> \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n             </td>\r\n        </tr>\r\n        <!-- // Flipflop Section End Here --> \r\n        \r\n        <!-- Left Image Right Content Section 1 Start Here -->\r\n        <tr>\r\n          <td valign=\"top\" align=\"center\" style=\"border-collapse:collapse; mso-line-height-rule:exactly\"> \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n             </td>\r\n        </tr>\r\n        <!-- // Left Image Right Content Section 1 End Here --> \r\n        <!-- Signature Section -->\r\n        <tr>\r\n          <td valign=\"top\" align=\"center\" style=\"border-collapse:collapse; mso-line-height-rule:exactly\"><table bgcolor=\"#ffffff\" align=\"center\" style=\"border-collapse:collapse; mso-table-lspace:0px; mso-table-rspace:0px; width:600px\" class=\"em_wrapper\" width=\"600\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n              <tbody>\r\n                <tr>\r\n                  <td valign=\"top\" align=\"center\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; padding:31px 60px 24px\" class=\"em_padall\"><table align=\"center\" style=\"border-collapse:collapse; mso-table-lspace:0px; mso-table-rspace:0px; width:460px\" class=\"em_wrapper\" width=\"460\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody>\r\n                        <tr>\r\n                          <td class=\"em_grey\" valign=\"top\" align=\"center\" style=\"border-collapse:collapse; mso-line-height-rule:exactly\"><div id=\"hs_cos_wrapper_Signature_Image\" class=\"hs_cos_wrapper hs_cos_wrapper_widget hs_cos_wrapper_type_linked_image\" style=\"color: inherit; font-size: inherit; line-height: inherit;\" data-hs-cos-general-type=\"widget\" data-hs-cos-type=\"linked_image\"><img src=\"https://cdn2.hubspot.net/hub/53/hubfs/Tova.jpeg?t=1538556133136&amp;width=363&amp;name=Tova.jpeg\" class=\"hs-image-widget \" style=\"outline:none !important; max-height:363px; border-width:0px; border:0px; width:100px; max-width:100px; display:block\" width=\"100\" alt=\"Tova Miller\" title=\"Tova Miller\" srcset=\"https://cdn2.hubspot.net/hub/53/hubfs/Tova.jpeg?t=1538556133136&amp;width=363&amp;name=Tova.jpeg 363w, https://cdn2.hubspot.net/hub/53/hubfs/Tova.jpeg?t=1538556133136&amp;width=726&amp;name=Tova.jpeg 726w\" sizes=\"(max-width: 363px) 100vw, 363px\"></div></td>\r\n                        </tr>\r\n                        <tr>\r\n                          <td class=\"em_grey2\" valign=\"top\" align=\"center\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; font-family:Avenir, Arial, sans-serif; font-size:16px; line-height:18px; color:#33475b; padding:18px 0 0 0; font-weight:600\">Tova Miller</td>\r\n                        </tr>\r\n                        <tr>\r\n                          <td valign=\"top\" align=\"center\" class=\"em_skyblue\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; font-family:Avenir, Arial, sans-serif; font-size:13px; line-height:17px; color:#516f90; padding:10px 0 0 0\">Demand Generation Marketing Manager @ HubSpot</td>\r\n                        </tr>\r\n                        <tr>\r\n                          <td valign=\"top\" class=\"em_grey3\" align=\"center\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; font-family:Avenir, Arial, sans-serif; font-size:14px; line-height:22px; color:#2d3e50; padding:10px 0 0 0\"><div style=\"text-align: center;\">&nbsp;Ready to get started now? Sign up for our free tool, <span style=\"border-collapse:collapse; mso-line-height-rule:exactly; text-decoration:underline; color:#3288e6\"><a href=\"https://www.hubspot.com/e2t/c/*W1qMsW91GnyK3VkTwjK24s6JB0/*W1rDV9q2Zd1WzW7GwkJ84ngxRw0/5/f18dQhb0S8358Z99g0W69-WvK4ZyJ3ZW4VJFz_69DK53W4sgMdv5m41RhW4CB_lb4bp9sKN61kVkFH-TTWW3ptNTF9dmDDFW5lR-jn5YmcwzW9dHcPR5ZnW4bW7vsFSx9bTNXYW954KlM4P0Yt6W2c4ST74FVLJfW35_0LJ8ln7tzW62nF-n5G7R9xV4KXfY5w-47sN4xXrqxn0GzlVKnr984KDVq4W9cn3cL3cF-sxVKzxbr2Mn9WgW4Mm1VK19861RW19tCKL2N33B5W3_t0gL32Gf2QW4dnWJc69NG1wW6Pr5q24MVYQ_W5tg24_7WgkRyW8bR3Vb72zrXTW712wFM1mJXtLW5Q2vBF5B2W41W8HLz3j5rbnpVW5y6fRH19rcTfW7fyDfn84G4xgW83xxTp2_32f8W74b1jP148D65W2_zHNr1wbHZtN1tj03zVL6QTS1n33mflM1102\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; text-decoration:none; color:#3288e6\" data-hs-link-id=\"0\" target=\"_blank\">HubSpot Conversations</a></span>, to set up live chat, Facebook Messenger and bots to help build your business.</div></td>\r\n                        </tr>\r\n                      </tbody>\r\n                    </table></td>\r\n                </tr>\r\n              </tbody>\r\n            </table></td>\r\n        </tr>\r\n        <!-- //Signature Section --> \r\n        <!-- Footer Section -->\r\n        <tr>\r\n          <td valign=\"top\" style=\"border-collapse:collapse; mso-line-height-rule:exactly\"><table align=\"center\" class=\"em_wrapper\" style=\"border-collapse:collapse; mso-table-lspace:0px; mso-table-rspace:0px; width:600px\" width=\"600\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n              <tbody><tr>\r\n                <td valign=\"top\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; padding:30px 114px 25px\" class=\"em_padall\"><table align=\"center\" class=\"em_wrapper\" width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"border-collapse:collapse; mso-table-lspace:0px; mso-table-rspace:0px\">\r\n                    <tbody><tr>\r\n                      <td valign=\"top\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; padding:0 0 15px 0\"><table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"border-collapse:collapse; mso-table-lspace:0px; mso-table-rspace:0px\">\r\n                          <tbody><tr> \r\n                            <td align=\"center\" valign=\"middle\" width=\"20\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; padding:0 9px 0 0\"> <div id=\"hs_cos_wrapper_Instagram_Icon\" class=\"hs_cos_wrapper hs_cos_wrapper_widget hs_cos_wrapper_type_linked_image\" style=\"color: inherit; font-size: inherit; line-height: inherit;\" data-hs-cos-general-type=\"widget\" data-hs-cos-type=\"linked_image\"><a href=\"https://www.hubspot.com/e2t/c/*W1qMsW91GnyK3VkTwjK24s6JB0/*VXpShP8Gd8zqW1SFv2v4d-CjQ0/5/f18dQhb0SfHB8Y9-QKW69-WvK4ZyJ3ZW4VJFz_69DK53W2hTwxz5m41RhW4CB_lb4bph3KW8h2zmv5Z8dL3W8mQCyL57T8DRW4PrYKL7JtTqnW8mnw907bjnYCW3ltj351rvX4tW1h4JC02qJw2pW3WZyts66kLY2N3HfPk17txNzW1bVmWq1l1X1DN4cPlLBtBNv4MLKvmT4dg_fW55F8NJ1TxP_cN8GcYXb2-Rx8W1BXkwf55nSC9W1VJH714c2Rr9W7Mv7Zr49z-4PN2MV0XLbG0m9W8W1JLS2KSnZJW4HrzTg45Ly2MVkwRN48b68zKW2PzMpf2KCp6ZW7tqJ2b1wtkwjW7SQL__3xxDzVVJgC_T8NpWVLVgG-gV7923YGW8XblKc895ffGW7d_0H07SnMYmN4h0hx0Vs7V_VVmd3D7lvTlf102\" target=\"_blank\" id=\"hs-link-Instagram_Icon\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; border-width:0px; border:0px\" data-hs-link-id=\"0\"><img src=\"https://cdn2.hubspot.net/hub/1964904/hubfs/EM/i1519023257363/img_instagram.png?noresize&amp;t=1538556133136&amp;width=20&amp;name=img_instagram.png\" class=\"hs-image-widget \" style=\"outline:none !important; max-height:19px; border-width:0px; border:0px; width:20px; max-width:20px; display:block; font-family:Arial, sans-serif; font-size:13px; line-height:16px; color:#2d3e50\" width=\"20\" alt=\"insta\" title=\"insta\"></a></div> </td>\r\n                            \r\n                            \r\n                            <td align=\"center\" valign=\"middle\" width=\"11\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; padding:0 9px 0 0\"><div id=\"hs_cos_wrapper_Facebook_Icon2\" class=\"hs_cos_wrapper hs_cos_wrapper_widget hs_cos_wrapper_type_linked_image\" style=\"color: inherit; font-size: inherit; line-height: inherit;\" data-hs-cos-general-type=\"widget\" data-hs-cos-type=\"linked_image\"><a href=\"https://www.hubspot.com/e2t/c/*W1qMsW91GnyK3VkTwjK24s6JB0/*W672Xwc6mr0H3W7ygh4T6tP98C0/5/f18dQhb0SfHr8Z99g0W69-WvK4ZyJ3ZW4VJFz_69DK53W3s__Fv5m41RhW4CB_lb4bpd-4W8mw3VT9d2YPWW9cYnPC7JDmr-W9cmBwR5mNLNvW7bqTzM7vp5QyW4m26Pm2CkRYhV7sR_-2dCXqFW8zSJDJ3WZjFjW4vtPW37mKPnCW8f4ypY4N7b3XW49f-Gl93jf4sW1bhFy-1k_jJpW6wSXCK8X4nq8W7s-t_h4NkbBkW548GrJ5lKvt_N5420y5JVPYnW3CPQ_B5D8zFFVjPrmg6W3RDgVHcPQx2srR0pMVzQv-Vn7DDW12G_sB1Th93LW5lcw1M1T1TL8W2L3WnG6B3STZVb2_nM6PxM50W89r-tw7SdTGfW1pm9lR7xXKQnW7d5T7J6_dTXzW6Vm7_23Dz92qMtJCL43_BXCf8Lpg1711\" target=\"_blank\" id=\"hs-link-Facebook_Icon2\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; border-width:0px; border:0px\" data-hs-link-id=\"0\"><img src=\"https://cdn2.hubspot.net/hub/1964904/hubfs/EM/i1519023257363/img_facebook.png?noresize&amp;t=1538556133136&amp;width=11&amp;name=img_facebook.png\" class=\"hs-image-widget \" style=\"outline:none !important; max-height:19px; border-width:0px; border:0px; width:11px; max-width:11px; display:block; font-family:Arial, sans-serif; font-size:13px; line-height:16px; color:#2d3e50\" width=\"11\" alt=\"fb\" title=\"fb\"></a></div></td>\r\n                            \r\n                            \r\n                            <td align=\"center\" valign=\"middle\" width=\"19\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; padding:0 9px 0 0\"> <div id=\"hs_cos_wrapper_Linkedin_Icon\" class=\"hs_cos_wrapper hs_cos_wrapper_widget hs_cos_wrapper_type_linked_image\" style=\"color: inherit; font-size: inherit; line-height: inherit;\" data-hs-cos-general-type=\"widget\" data-hs-cos-type=\"linked_image\"><a href=\"https://www.hubspot.com/e2t/c/*W1qMsW91GnyK3VkTwjK24s6JB0/*VPCkTQ3j0T1CW65wJ4-21GpMy0/5/f18dQhb0S8388Y9_CnW69-WvK4ZyJ3ZW4VJFz_69DK53W1Rcp_85m41RhW4CB_lb4bpbTsW6WNhkb7s-LSPW9cY9wP1Jkrj7W7NW2wG1ydqyNW7GPrcB7mHF3-V7-wNH8tsRJSW93P7YY67HG72W1p8KBV1wyXkJN7MMYJySFdjmW6_46R68kVS2VW33_f125G1FCGVlxSdc8t3KD3W78TF5w5HwySGN3jKb4LxprF6V22kcg3DY0WNW7xR9_s2Vjhb0W5bPQ0k7v4vH3VMBCsf6Rj2vmW38kffx24ZF-xW1ZY5-P8QqJhkN1zW062zD-dgW1s-SzN6f09SYW6Y9Sfv6WwP_NW60KF7Y8lJRK0W4xH9rQ4r5l5jW7ss5ms5FNbQnW6XtV4K6XjwL8W4Cv_b880-4dvVgH7_h95-PpwW2pglVT6vc-Z6W24Jbqh11fKzR0\" target=\"_blank\" id=\"hs-link-Linkedin_Icon\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; border-width:0px; border:0px\" data-hs-link-id=\"0\"><img src=\"https://cdn2.hubspot.net/hub/1964904/hubfs/EM/i1519023257363/img_linkedin.png?noresize&amp;t=1538556133136&amp;width=19&amp;name=img_linkedin.png\" class=\"hs-image-widget \" style=\"outline:none !important; max-height:19px; border-width:0px; border:0px; width:19px; max-width:19px; display:block; font-family:Arial, sans-serif; font-size:13px; line-height:16px; color:#2d3e50\" width=\"19\" alt=\"in\" title=\"in\"></a></div> </td>\r\n                            \r\n                            \r\n                            <td align=\"center\" valign=\"middle\" width=\"19\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; padding:0 9px 0 0\"> <div id=\"hs_cos_wrapper_Twitter_Icon\" class=\"hs_cos_wrapper hs_cos_wrapper_widget hs_cos_wrapper_type_linked_image\" style=\"color: inherit; font-size: inherit; line-height: inherit;\" data-hs-cos-general-type=\"widget\" data-hs-cos-type=\"linked_image\"><a href=\"https://www.hubspot.com/e2t/c/*W1qMsW91GnyK3VkTwjK24s6JB0/*W241QT01Nlw2kW9lNb993blzWJ0/5/f18dQhb0SfHF8Y9ZMRW69-WvK4ZyJ3ZW4VJFz_69DK53Vy8hmH5m41RhW4CBRX47tFsVPW1gyCXT3ptPMYN61kVkFJsFHFW83_Pyq834DLzW8XWrlB187TkXW17Rn1f7jpLcrW1bqkQH5rcdj2W8yKSzY8m1qPfW5m1rd_5q54sPW2_YWrs1yTGwtW9f8CdM5sH1-8W4xQVKb32lFT7W7JlQLK2bF5xqW3Vpjnb8W2c9WW32CQ2l8jxMNSW1Vx3Vl7qRvPVW328h7y3_lZX3W5mZjbq31H380VcNLWd6GTq08W8Ph58-594SN8W6lWKG_7MV8SKW7q79_x2FnVQxW2QyCW37sJb52W5mSYQ16M0xyCW64cMt087d6yFW7CTC6R7YlvPvW6WWl6x48Q-FjN5p818jVMPVbVVrLq87rDM-5dyCD1q04\" target=\"_blank\" id=\"hs-link-Twitter_Icon\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; border-width:0px; border:0px\" data-hs-link-id=\"0\"><img src=\"https://cdn2.hubspot.net/hub/1964904/hubfs/EM/i1519023257363/img_twitter.png?noresize&amp;t=1538556133136&amp;width=19&amp;name=img_twitter.png\" class=\"hs-image-widget \" style=\"outline:none !important; max-height:16px; border-width:0px; border:0px; width:19px; max-width:19px; display:block; font-family:Arial, sans-serif; font-size:13px; line-height:16px; color:#2d3e50\" width=\"19\" alt=\"tw\" title=\"tw\"></a></div> </td>\r\n                            \r\n                            \r\n                            \r\n                            <td align=\"center\" valign=\"middle\" width=\"19\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; padding:0 9px 0 0\"> <div id=\"hs_cos_wrapper_Youtube_Icon\" class=\"hs_cos_wrapper hs_cos_wrapper_widget hs_cos_wrapper_type_linked_image\" style=\"color: inherit; font-size: inherit; line-height: inherit;\" data-hs-cos-general-type=\"widget\" data-hs-cos-type=\"linked_image\"><a href=\"https://www.hubspot.com/e2t/c/*W1qMsW91GnyK3VkTwjK24s6JB0/*W1mP8bB5l2H3xW1Jz9Qz8JSYM90/5/f18dQhb0S82-8Z98X2W69-WvK4ZyJ3ZW4VJFz_69DK53W2pP8265m41RhW4CB_lb4bpgXqW7JtSwq35bY56W3ptWX47Mz9VXW7JDmgv9cmBwRW5mNLNv7bqTzMW7vp5Qy4m26PmN2CkRYh7sR_-W2dCXqF8zSJDJW3WZjFj4vtPW3W7mKPnC8f4ypYW4N7b3X49f-GlW93jf4s1bhFy-W1k_jJp6wSXCKW8X4nq87s-t_hW4NkbBk548GrJW5lKvt_5420y5VJVPYn3CPQ_BW5D8zFF2XTs7nW52g2707NM5zGW73zJYx6kxyZlW2bzNQY5ZS0xnW6fPBlQ8-xGgmW8SVkhr5lFPMbW5prcvl8VvVT-W8mhVQY1KvftXW3TRFQD91FSJ8W8Z17Xz90WJqQW44vcTv12JF33N8lDRk7cYJKQW7dJ18n4dQ0Nzf179m4n04\" target=\"_blank\" id=\"hs-link-Youtube_Icon\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; border-width:0px; border:0px\" data-hs-link-id=\"0\"><img src=\"https://cdn2.hubspot.net/hub/1964904/hubfs/EM/i1519023257363/img_youtube.png?noresize&amp;t=1538556133136&amp;width=19&amp;name=img_youtube.png\" class=\"hs-image-widget \" style=\"outline:none !important; max-height:15px; border-width:0px; border:0px; width:19px; max-width:19px; display:block; font-family:Arial, sans-serif; font-size:13px; line-height:16px; color:#2d3e50\" width=\"19\" alt=\"yt\" title=\"yt\"></a></div> </td>\r\n                            \r\n                            \r\n                            \r\n                            <td align=\"center\" valign=\"middle\" width=\"18\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; padding:0 9px 0 0\"> <div id=\"hs_cos_wrapper_Icon2\" class=\"hs_cos_wrapper hs_cos_wrapper_widget hs_cos_wrapper_type_linked_image\" style=\"color: inherit; font-size: inherit; line-height: inherit;\" data-hs-cos-general-type=\"widget\" data-hs-cos-type=\"linked_image\"><a href=\"https://www.hubspot.com/e2t/c/*W1qMsW91GnyK3VkTwjK24s6JB0/*W1yP95m8wclZVW6FtL1F8yLZmW0/5/f18dQhb0S8388Y9_CnW69-WvK4ZyJ3ZW4VJFz_69DK53W1Rcp_85m41RhW4CB_lb4bp9sKN61kVkFH-TTWW3ptNWj5rP40lW5lR-jl8Gd5ldW85H8bh7JtTqnW8mnw907bjnYCW3ltj351rvX4tW1h4JC02qJw2pW3WZyts66kLY2N3HfPk17txNzW1bVmWq1l1X1DN4cPlLBtBNv4MLKvmT4dg_fW55F8NJ1TxP_cN8GcYXb2-Rz8W7m0DbN625bx1W6Gj8TS6bVy-5N25hvjFHZ5KNW5D8zFF5m3ZGGW96dt4S4r1QvYW65_Gy91Q68w6W1MMh8v25k-X8W3Kzl7s1mhHCyW3K3Lsj5s7PNjN3Q2fl6q45KkW4c-1T-6ZQxG9W6hpjXX2RHW64W5MKxDq556f-lW4Dnhrl4pCq_ZN7h4VC0ZpcmqV9ZLds1q_rcq111\" target=\"_blank\" id=\"hs-link-Icon2\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; border-width:0px; border:0px\" data-hs-link-id=\"0\"><img src=\"https://cdn2.hubspot.net/hub/53/hubfs/podcasticon-2.png?t=1538556133136&amp;width=354&amp;name=podcasticon-2.png\" class=\"hs-image-widget \" style=\"outline:none !important; max-height:386px; border-width:0px; border:0px; width:18px; max-width:18px; display:block; font-family:Arial, sans-serif; font-size:13px; line-height:16px; color:#2d3e50\" width=\"18\" alt=\"pc\" title=\"pc\" srcset=\"https://cdn2.hubspot.net/hub/53/hubfs/podcasticon-2.png?t=1538556133136&amp;width=354&amp;name=podcasticon-2.png 354w, https://cdn2.hubspot.net/hub/53/hubfs/podcasticon-2.png?t=1538556133136&amp;width=708&amp;name=podcasticon-2.png 708w\" sizes=\"(max-width: 354px) 100vw, 354px\"></a></div> </td>\r\n                            \r\n                             </tr>\r\n                        </tbody></table></td>\r\n                    </tr>\r\n                    <tr>\r\n                      <td align=\"center\" valign=\"middle\" class=\"em_grey4_u\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; font-family:Avenir, Arial, sans-serif; font-size:12px; line-height:20px; color:#425b76\"> <p style=\"margin-bottom: 1em; Margin:0px !important; Padding:0px !important\">One Dockland Central Dublin 1 HubSpot International Limited Ireland </p>\r\n<p style=\"margin-bottom: 1em; Margin:0px !important; Padding:0px !important\">You received this email because you are subscribed <g class=\"gr_ gr_5 gr-alert gr_gramm gr_inline_cards gr_run_anim Style multiReplace\" id=\"5\" data-gr-id=\"5\"><g class=\"gr_ gr_5 gr-alert gr_gramm gr_inline_cards gr_run_anim Style multiReplace\" id=\"5\" data-gr-id=\"5\">to&nbsp;</g></g>Education, Content &amp; Resources<g class=\"gr_ gr_5 gr-alert gr_gramm gr_inline_cards gr_disable_anim_appear Style multiReplace\" id=\"5\" data-gr-id=\"5\"><g class=\"gr_ gr_5 gr-alert gr_gramm gr_inline_cards gr_disable_anim_appear Style multiReplace\" id=\"5\" data-gr-id=\"5\">&nbsp;from</g></g> HubSpot.</p>\r\n<p class=\"p1\" style=\"margin-bottom: 1em; Margin:0px !important; Padding:0px !important\">Manage Your&nbsp;<a href=\"https://www.hubspot.com/hs/manage-preferences/unsubscribe?d=eyJlYSI6InppZ2EuYmFibmlrQGJ0cmFjay5pbyIsImVjIjo2NjM4OTc3NSwic3Vic2NyaXB0aW9uSWQiOjE2LCJldCI6MTUzODU1NzAyOTY5NywiZXUiOiJmNmRiMTNiNi04OWIwLTRjOGQtOTJiZC02NjAxYTY1NzZmNTMifQ%3D%3D&v=1&utm_campaign=GLOBAL%20Acq.%20%5Ben%5D%20How%20to%20Be%20Really%20Good%20at%20Marketing%20in%202020&utm_source=hs_email&utm_medium=email&utm_content=66389775\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; color:#425b76; text-decoration:underline\" data-hs-link-id=\"0\" target=\"_blank\">email preferences</a>&nbsp;or&nbsp;<a href=\"https://www.hubspot.com/hs/manage-preferences/unsubscribe-all?d=eyJlYSI6InppZ2EuYmFibmlrQGJ0cmFjay5pbyIsImVjIjo2NjM4OTc3NSwic3Vic2NyaXB0aW9uSWQiOjE2LCJldCI6MTUzODU1NzAyOTY5NywiZXUiOiJmNmRiMTNiNi04OWIwLTRjOGQtOTJiZC02NjAxYTY1NzZmNTMifQ%3D%3D&v=1&utm_campaign=GLOBAL%20Acq.%20%5Ben%5D%20How%20to%20Be%20Really%20Good%20at%20Marketing%20in%202020&utm_source=hs_email&utm_medium=email&utm_content=66389775\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; color:#425b76; text-decoration:underline\" data-hs-link-id=\"0\" target=\"_blank\">Unsubscribe</a> from all future emails.</p>\r\n<table border=\"0\" width=\"1\" cellspacing=\"0\" cellpadding=\"0\" style=\"border-collapse:collapse; mso-table-lspace:0px; mso-table-rspace:0px\">\r\n<tbody>\r\n<tr>\r\n<td style=\"border-collapse:collapse; mso-line-height-rule:exactly; font-size:0px; line-height:0px\"><img src=\"http://ink1001.hubspot.com/p/cp/e562c9a2335cf0a1/o.gif?mi_u=ziga.babnik@btrack.io\" width=\"1\" height=\"1\" alt=\"\" aria-hidden=\"true\" style=\"border:0 !important; outline:none !important\"></td>\r\n</tr>\r\n</tbody>\r\n</table> </td>\r\n                    </tr>\r\n                    <tr>\r\n                      <td class=\"em_footer\" align=\"center\" height=\"0\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; font-family:Arial, sans-serif; font-size:0px; line-height:0px; color:#eaf0f6; display:none; text-decoration:none; height:0\">HubSpot International Limited, One Dockland Central, Dublin 1, Ireland, https://www.hubspot.com/hs/manage-preferences/unsubscribe?d=eyJlYSI6InppZ2EuYmFibmlrQGJ0cmFjay5pbyIsImVjIjo2NjM4OTc3NSwic3Vic2NyaXB0aW9uSWQiOjE2LCJldCI6MTUzODU1NzAyOTY5NywiZXUiOiJmNmRiMTNiNi04OWIwLTRjOGQtOTJiZC02NjAxYTY1NzZmNTMifQ%3D%3D&amp;v=1</td>\r\n                    </tr>\r\n                  </tbody></table></td>\r\n              </tr>\r\n            </tbody></table></td>\r\n        </tr>\r\n        <!-- //Footer Section -->\r\n        \r\n        <tr>\r\n          <td class=\"em_hide\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; line-height:1px; min-width:600px; background-color:#eaf0f6\" bgcolor=\"#eaf0f6\"><img alt=\"\" src=\"images/spacer.gif\" height=\"1\" width=\"600\" style=\"border:0 !important; outline:none !important; max-height:1px; min-height:1px; display:block; width:600px; min-width:600px\" border=\"0\"></td>\r\n        </tr>\r\n      </tbody></table></td>\r\n  </tr>\r\n</tbody></table>\r\n<div class=\"em_hide\" style=\"white-space: nowrap; display: none; font-size:0px; line-height:0px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</div>\r\n<!-- end coded_template: id:5677628597 path:Custom/email/email/OneOffEmail2018.html -->\r\n<img src=\"https://www.hubspot.com/e2t/o/*W2PPG2f7XTbBMV93q3t1V2lKd0/*V4MJPv7hj9XpN5lqdRwsgYXn0/5/f18dQhb0J6w1f0mlN8Pf1rBWdbJYW1--3jR24W6FXW1xWM0j2xMf7YW26rPR92F3VMtW3j28Hf4txxkQW1Jx4cW41S-DYW3Cg0rr3F8JJLW437p7n17f7hvW7M222T5GlpPgW5l4cr75DnfK0N90WmN428SXjW5rzVSY197RDHf6BppHd02\" alt=\"\" width=\"1\" height=\"1\" border=\"0\" style=\"display:none!important;min-height:1px!important;width:1px!important;border-width:0!important;margin-top:0!important;margin-bottom:0!important;margin-right:0!important;margin-left:0!important;padding-top:0!important;padding-bottom:0!important;padding-right:0!important;padding-left:0!important\"><style>@media print{#_hs { background-image: url(\'https://www.hubspot.com/e2t/o/*W2PPG2f7XTbBMV93q3t1V2lKd0/*W10cRsb7SZzxMW48YzqX2FM7Ry0/5/f18dQhb0J6x1dBVLN8PfrXcWdbJYW1--3jR24W6FXW1xX8zK2HFv8PLs7yK2xwK0MvlGxKPnqLpW3yMjjk3CcvQ9W2m1YZC3z8ndqN3T1B-9Zy6J8VkqyLV6xpGF9W87838459p1DcW8wGsSr8_nTvyW7_h1KG1D3mmFf4WgCP-01\');}} div.OutlookMessageHeader {background-image:url(\'https://www.hubspot.com/e2t/o/*W2PPG2f7XTbBMV93q3t1V2lKd0/*W2v6Phq2Zcs8CW7PX40f8MkZmw0/5/f18dQhb0J6z1cMYwN8PggTtWdbJYW1--3jR24W6FXW1xX-Fw30t6jFF2vyZ_8vFvnTDk7H2bs-SdW3S-ph03C640TW3T00j24fM_2ZN3XtNZDB-Sw9VmWFfy87Lzk-N72wBbl25rxyW74p7Xd7bz6MNVWSPVb7nlmQlV1DfDk5zGS1T103\')} table.moz-email-headers-table {background-image:url(\'https://www.hubspot.com/e2t/o/*W2PPG2f7XTbBMV93q3t1V2lKd0/*W2v6Phq2Zcs8CW7PX40f8MkZmw0/5/f18dQhb0J6z1cMYwN8PggTtWdbJYW1--3jR24W6FXW1xX-Fw30t6jFF2vyZ_8vFvnTDk7H2bs-SdW3S-ph03C640TW3T00j24fM_2ZN3XtNZDB-Sw9VmWFfy87Lzk-N72wBbl25rxyW74p7Xd7bz6MNVWSPVb7nlmQlV1DfDk5zGS1T103\')} blockquote #_hs {background-image:url(\'https://www.hubspot.com/e2t/o/*W2PPG2f7XTbBMV93q3t1V2lKd0/*W2v6Phq2Zcs8CW7PX40f8MkZmw0/5/f18dQhb0J6z1cMYwN8PggTtWdbJYW1--3jR24W6FXW1xX-Fw30t6jFF2vyZ_8vFvnTDk7H2bs-SdW3S-ph03C640TW3T00j24fM_2ZN3XtNZDB-Sw9VmWFfy87Lzk-N72wBbl25rxyW74p7Xd7bz6MNVWSPVb7nlmQlV1DfDk5zGS1T103\')} #MailContainerBody #_hs {background-image:url(\'https://www.hubspot.com/e2t/o/*W2PPG2f7XTbBMV93q3t1V2lKd0/*W2v6Phq2Zcs8CW7PX40f8MkZmw0/5/f18dQhb0J6z1cMYwN8PggTtWdbJYW1--3jR24W6FXW1xX-Fw30t6jFF2vyZ_8vFvnTDk7H2bs-SdW3S-ph03C640TW3T00j24fM_2ZN3XtNZDB-Sw9VmWFfy87Lzk-N72wBbl25rxyW74p7Xd7bz6MNVWSPVb7nlmQlV1DfDk5zGS1T103\')}</style><div id=\"_hs\"></div></body></html>','tova@hubspot.com','ziga.babnik@btrack.io','2018-10-03 11:07:08','2018-10-08 09:49:45'),
(6,'201',NULL,NULL,NULL,NULL,'1538040028201','',1,0,NULL,'Re:Re:Get your finger enlargment pills today!','','neicrihar@gmail.com','','2018-09-27 11:20:28','2018-10-08 09:49:45'),
(7,'200',NULL,NULL,NULL,NULL,'1538040024200','',1,0,'2018-10-08 14:07:31','Re:Re:Test responder','\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<div><center>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td> </td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Greetings</p>\r\n<p>This e-mail has been generated automatically in response to the creation of a support ticket <strong>#30</strong> with the subject - <strong>Re:Test responder</strong>. We will handle your request as soon as possible. If you have any additional questions, please reply to this e-mail and we&#39;ll get back to you.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td> </td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</center></div>\r\n</body>\r\n</html>\r\n','neicrihar@gmail.com','ziga.babnik@btrack.io','2018-09-27 11:20:24','2018-10-08 09:49:45'),
(8,'199',NULL,NULL,NULL,NULL,'1538034298199','',1,0,NULL,'Test responder','','neicrihar@gmail.com','','2018-09-27 09:44:58','2018-10-08 09:49:45'),
(9,'198',NULL,NULL,NULL,NULL,'1537985035198','',1,0,NULL,'test','','it@netko.it','','2018-09-26 20:03:55','2018-10-08 09:49:45'),
(10,'197',NULL,NULL,NULL,NULL,'1537984985197','',1,0,NULL,'test','','it@netko.it','','2018-09-26 20:03:05','2018-10-08 09:49:45'),
(11,'196',NULL,NULL,NULL,NULL,'1537968767196','',1,0,NULL,'Get your finger enlargment pills today!','','neicrihar@gmail.com','','2018-09-26 15:32:47','2018-10-08 09:49:45'),
(12,'195',NULL,NULL,NULL,NULL,'1537968390195','',1,0,NULL,'aaa','','neicrihar@gmail.com','','2018-09-26 15:26:30','2018-10-08 09:49:45'),
(13,'194',NULL,NULL,NULL,NULL,'1537873098194','',1,0,NULL,'Re:Team alignment','','globalmarketing@hubspot.com','','2018-09-25 12:58:18','2018-10-08 09:49:45'),
(14,'193',NULL,NULL,NULL,NULL,'1537871028193','',1,0,NULL,'RE: asd','','btrackcrm@btrackcrm365.com','','2018-09-25 12:23:48','2018-10-08 09:49:45'),
(15,'192',NULL,NULL,NULL,NULL,'1537870948192','',1,0,'2018-10-08 14:07:55','Team alignment','<!-- start coded_template: id:5677628597 path:Custom/email/email/OneOffEmail2018.html --><!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\"><html xmlns=\"http://www.w3.org/1999/xhtml\" xmlns:v=\"urn:schemas-microsoft-com:vml\" xmlns:o=\"urn:schemas-microsoft-com:office:office\"><head>\r\n<!--[if gte mso 9]><xml>\r\n<o:OfficeDocumentSettings>\r\n<o:AllowPNG/>\r\n<o:PixelsPerInch>96</o:PixelsPerInch>\r\n</o:OfficeDocumentSettings>\r\n</xml><![endif]-->\r\n<title>Hubspot</title>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0 \">\r\n<meta name=\"format-detection\" content=\"telephone=no\">\r\n<style type=\"text/css\" id=\"hs-inline-css\">\r\nbody {\r\n	margin: 0 !important;\r\n	padding: 0 !important;\r\n	-webkit-text-size-adjust: 100% !important;\r\n	-ms-text-size-adjust: 100% !important;\r\n	-webkit-font-smoothing: antialiased !important;\r\n}\r\nimg {\r\n	border: 0 !important;\r\n	outline: none !important;\r\n}\r\np {\r\n	Margin: 0px !important;\r\n	Padding: 0px !important;\r\n}\r\ntable {\r\n	border-collapse: collapse;\r\n	mso-table-lspace: 0px;\r\n	mso-table-rspace: 0px;\r\n}\r\ntd, a, span {\r\n	border-collapse: collapse;\r\n	mso-line-height-rule: exactly;\r\n}\r\n.ExternalClass * {\r\n	line-height: 100%;\r\n}\r\n.em_defaultlink a {\r\n	color: inherit !important;\r\n	text-decoration: none !important;\r\n}\r\nspan.MsoHyperlink {\r\n	mso-style-priority: 99;\r\n	color: inherit;\r\n}\r\nspan.MsoHyperlinkFollowed {\r\n	mso-style-priority: 99;\r\n	color: inherit;\r\n}\r\n.em_grey a {\r\n	color: #33475b;\r\n	text-decoration: none;\r\n}\r\n.em_grey2 a {\r\n	color: #516f90;\r\n	text-decoration: none;\r\n}\r\n.em_grey3 a {\r\n	color: #2d3e50;\r\n	text-decoration: none;\r\n}\r\n.em_grey4 a {\r\n	color: #425b76;\r\n	text-decoration: none;\r\n}\r\n.em_grey4_u a {\r\n	color: #425b76;\r\n	text-decoration: underline;\r\n}\r\n.em_white a {\r\n	color: #ffffff;\r\n	text-decoration: none;\r\n}\r\n.em_skyblue a {\r\n	color: #0091ae;\r\n	text-decoration: none;\r\n}\r\n@media only screen and (min-width:481px) and (max-width:599px) {\r\n.em_main_table {\r\n	width: 100% !important;\r\n}\r\n.em_wrapper {\r\n	width: 100% !important;\r\n}\r\n.em_side {\r\n	width: 10px !important;\r\n}\r\n.em_hide {\r\n	display: none !important;\r\n}\r\n.em_img img {\r\n	width: 100% !important;\r\n	height: auto !important;\r\n	max-width: 100% !important;\r\n}\r\n.em_height {\r\n	height: 20px !important;\r\n}\r\n.em_top {\r\n	padding-top: 20px !important;\r\n}\r\n.em_pad {\r\n	padding: 0 10px !important;\r\n}\r\n.em_padall {\r\n	padding: 20px 10px !important;\r\n}\r\n.em_padtop10 {\r\n	padding: 10px 0 0 0 !important;\r\n}\r\n.em_padall {\r\n	padding: 20px 10px !important;\r\n}\r\n.em_pad2 {\r\n	padding: 20px 10px 0 10px !important;\r\n}\r\n.em_pabtm {\r\n	padding: 0 0 20px 0 !important;\r\n}\r\n.em_padnone {\r\n	padding: 0 !important;\r\n}\r\n.em_font55 {\r\n	font-size: 34px !important;\r\n	line-height: 36px !important;\r\n}\r\n.em_font24 {\r\n	font-size: 22px !important;\r\n	line-height: 24px !important;\r\n}\r\n.em_pad {\r\n	padding-left: 10px !important;\r\n	padding-right: 10px !important;\r\n}\r\n.em_pad2 {\r\n	padding-left: 10px !important;\r\n	padding-right: 10px !important;\r\n	padding-bottom: 20px !important;\r\n}\r\n.em_pad3 {\r\n	padding-left: 10px !important;\r\n	padding-right: 10px !important;\r\n	padding-bottom: 20px !important;\r\n	padding-top: 20px !important;\r\n}\r\n.em_pad4 {\r\n	padding-left: 10px !important;\r\n	padding-right: 10px !important;\r\n	padding-top: 20px !important;\r\n}\r\n.em_auto {\r\n	height: auto !important;\r\n}\r\n.em_center {\r\n	text-align: center !important;\r\n}\r\n}\r\n@media screen and (max-width: 480px) {\r\n.em_main_table {\r\n	width: 100% !important;\r\n}\r\n.em_wrapper {\r\n	width: 100% !important;\r\n}\r\n.em_side {\r\n	width: 10px !important;\r\n}\r\n.em_hide {\r\n	display: none !important;\r\n}\r\n.em_img img {\r\n	width: 100% !important;\r\n	height: auto !important;\r\n	max-width: 100% !important;\r\n}\r\n.em_height {\r\n	height: 20px !important;\r\n}\r\n.em_top {\r\n	padding-top: 20px !important;\r\n}\r\n.em_pad {\r\n	padding: 0 10px !important;\r\n}\r\n.em_font55 {\r\n	font-size: 26px !important;\r\n	line-height: 28px !important;\r\n}\r\n.em_font24 {\r\n	font-size: 14px !important;\r\n	line-height: 16px !important;\r\n}\r\n.em_padall {\r\n	padding: 20px 10px !important;\r\n}\r\n.em_padtop10 {\r\n	padding: 10px 0 0 0 !important;\r\n}\r\n.em_pad2 {\r\n	padding: 20px 10px 0 10px !important;\r\n}\r\n.em_pabtm {\r\n	padding: 0 0 20px 0 !important;\r\n}\r\n.em_padnone {\r\n	padding: 0 !important;\r\n}\r\nu + .em_body .em_full_wrap {\r\n	width: 100% !important;\r\n	width: 100vw !important;\r\n}\r\n.em_pad {\r\n	padding-left: 10px !important;\r\n	padding-right: 10px !important;\r\n}\r\n.em_pad2 {\r\n	padding-left: 10px !important;\r\n	padding-right: 10px !important;\r\n	padding-bottom: 20px !important;\r\n}\r\n.em_pad3 {\r\n	padding-left: 10px !important;\r\n	padding-right: 10px !important;\r\n	padding-bottom: 20px !important;\r\n	padding-top: 20px !important;\r\n}\r\n.em_pad4 {\r\n	padding-left: 10px !important;\r\n	padding-right: 10px !important;\r\n	padding-top: 20px !important;\r\n}\r\n.em_auto {\r\n	height: auto !important;\r\n}\r\n.em_center {\r\n	text-align: center !important;\r\n}\r\n}\r\n</style>\r\n<meta name=\"generator\" content=\"HubSpot\"><meta property=\"og:url\" content=\"https://www.hubspot.com/-temporary-slug-a83af694-46b7-4341-abce-c6178e1f4c86\"><meta name=\"x-apple-disable-message-reformatting\"></head>\r\n<body class=\"em_body\" style=\"-webkit-text-size-adjust:100% !important; -ms-text-size-adjust:100% !important; -webkit-font-smoothing:antialiased !important; margin:0px; padding:0px\" bgcolor=\"#eaf0f6\">\r\n<div id=\"preview_text\" style=\"display:none;font-size:1px;color:#f2f2f2;line-height:1px;max-height:0px;max-width:0px;opacity:0;overflow:hidden;\">Have you used something like this to calculate your SLA?</div>\r\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"em_full_wrap\" bgcolor=\"#eaf0f6\" style=\"border-collapse:collapse; mso-table-lspace:0px; mso-table-rspace:0px\">\r\n  <tbody><tr>\r\n    <td align=\"center\" valign=\"top\" style=\"border-collapse:collapse; mso-line-height-rule:exactly\"><table align=\"center\" width=\"600\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"em_main_table\" style=\"border-collapse:collapse; mso-table-lspace:0px; mso-table-rspace:0px; width:600px\">\r\n        <tbody><tr>\r\n          <td align=\"center\" valign=\"middle\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; padding:10px 0; font-family:Avenir, Arial, sans-serif; font-size:11px; line-height:14px; color:#425b77\"></td>\r\n        </tr>\r\n        <tr>\r\n          <td align=\"center\" valign=\"top\" style=\"border-collapse:collapse; mso-line-height-rule:exactly\"><table align=\"center\" class=\"em_wrapper\" style=\"border-collapse:collapse; mso-table-lspace:0px; mso-table-rspace:0px; width:600px\" width=\"600\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#ffffff\">\r\n              <tbody><tr>\r\n                <td align=\"center\" valign=\"top\" height=\"75\" background=\"images/img_bg.jpg\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; background-position:center top; background-repeat:no-repeat\" bgcolor=\"#ed7b55\"><!--[if gte mso 9]>\r\n  <v:rect xmlns:v=\"urn:schemas-microsoft-com:vml\" fill=\"true\" stroke=\"false\" style=\"width:600px;height:75px;\">\r\n    <v:fill type=\"tile\" src=\"http://edmimages.net/edm/2018/march/1520951220318/img_bg.jpg\" color=\"#ed7b55\" />\r\n    <v:textbox inset=\"0,0,0,0\">\r\n  <![endif]-->\r\n                  \r\n                  <table align=\"center\" class=\"em_wrapper\" style=\"border-collapse:collapse; mso-table-lspace:0px; mso-table-rspace:0px; width:600px\" width=\"600\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                    <tbody><tr>\r\n                      <td align=\"center\" valign=\"middle\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; padding:23px\"> <div id=\"hs_cos_wrapper_Logo\" class=\"hs_cos_wrapper hs_cos_wrapper_widget hs_cos_wrapper_type_linked_image\" style=\"color: inherit; font-size: inherit; line-height: inherit;\" data-hs-cos-general-type=\"widget\" data-hs-cos-type=\"linked_image\"><a href=\"https://www.hubspot.com/e1t/c/*VQ4fTm6mn-DYW49rnqP2KQTng0/*W58__FG6fcXhyW6GMj-74StYdx0/5/f18dQhb0Sjvd8Y9WkYW69-WvK4ZyJ3GW6Pn-d95VSl3BW3PMX985m41RhW4CC0bs6CPSvFW6X_V4M8gX_CKW6YHzwY9ggW-PW859KwQ8mnpBqW7Jy_1035sc00W7HDfjW7NQFP6W85YKfT12ZzVlW1gPXXv5LrDS3W7b9mLB83C24xW7NqX_P4gBHyKW7vpk4M7NM5DDW7JtTqn8mnw90W2wpZtm6gMycyW6dyl7W16jsvtW4lSMGH57wdw6W1y9W1g6813hFW6WrPlH7Cqy9KN8DHkwF7jzMWW6N2CMl31nFKcN1PCRNgTJ66sW1FS9CN265VBJW22-vhJ1Q4cMNW2vrpcL1nnQd3W38kffx24ZFZYW3RF5r25dgxp8MrPpMvrJh2DW904ZN35DHPHPW2J51d55DyYgJW1my8tw7Z5BGZV42cYP3nNLH7W9hNrHG1Zly99W2TrZV98Hy9XxW9jQF3T3vc3fbN4c_y9mLG01PDrTzpYthy6f4D5Wn003\" target=\"_blank\" id=\"hs-link-Logo\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; border-width:0px; border:0px\" data-hs-link-id=\"0\"><img src=\"https://cdn2.hubspot.net/hub/53/hubfs/logo-406.png?t=1537869333286&amp;width=100&amp;name=logo-406.png\" class=\"hs-image-widget \" style=\"outline:none !important; max-height:29px; border-width:0px; border:0px; width:100px; max-width:100px; display:block; font-family:Arial, sans-serif; font-size:18px; line-height:22px; color:#ffffff; font-weight:bold\" width=\"100\" alt=\"logo-406.png\" title=\"logo-406.png\" srcset=\"https://cdn2.hubspot.net/hub/53/hubfs/logo-406.png?t=1537869333286&amp;width=100&amp;name=logo-406.png 100w, https://cdn2.hubspot.net/hub/53/hubfs/logo-406.png?t=1537869333286&amp;width=200&amp;name=logo-406.png 200w\" sizes=\"(max-width: 100px) 100vw, 100px\"></a></div></td>\r\n                    </tr>\r\n                  </tbody></table>\r\n                  \r\n                  <!--[if gte mso 9]>\r\n    </v:textbox>\r\n  </v:rect>\r\n  <![endif]--></td>\r\n              </tr>\r\n            </tbody></table></td>\r\n        </tr>\r\n        <!-- Main Header Section -->\r\n        <tr>\r\n          <td valign=\"top\" align=\"center\" style=\"border-collapse:collapse; mso-line-height-rule:exactly\"><table align=\"center\" class=\"em_wrapper\" style=\"border-collapse:collapse; mso-table-lspace:0px; mso-table-rspace:0px; width:600px\" width=\"600\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#ffffff\">\r\n              <tbody><tr>\r\n                <td align=\"center\" valign=\"middle\" class=\"em_grey em_padall\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; padding:24px 22px; font-family:Avenir, Arial, sans-serif; font-size:24px; line-height:26px; color:#33475b; font-weight:bold\"> <p class=\"hero__subheader\" style=\"margin-bottom: 1em; Margin:0px !important; Padding:0px !important\"><a href=\"https://www.hubspot.com/e1t/c/*VQ4fTm6mn-DYW49rnqP2KQTng0/*VXwdGj2WmTKgVrn7kx6xfbwt0/5/f18dQhb0Sjvd8Y9WkYW69-WvK4ZyJ3GW6Pn-d95VSl3BW3PMX985m41RhW4CC0bs6CPSvFW6X_V4M8gX_CKW6YHzwY9ggW-PW859KwQ8mnpBqW7Jy_1035sc00W7HDfjW7NQFP6W85YKfT12ZzVlW1gPXXv5LrDS3W7b9mLB83C24xW7NqX_P4gBHyKW7vpk4M7NM5DDW7JtTqn8mnw90W2wpZtm6gMycyW6dyl7W16jsvtW4lSMGH57wdw6W1y9W1g6813hFW6WrPlH7Cqy9KN8DHkwF7jzMWW6N2CMl31nFKcN1PCRNgTJ66sW1FS9CN265VBJW22-vhJ1Q4cMNW2vrpcL1nnQd3W38kffx24ZFZYW3RF5r25dgxp8MrPpMvrJh2DW904ZN35DHPHPW2J51d55DyYgJW1my8tw7Z5BGZV42cYP3nNLH7W9hNrHG1Zly99W2TrZV98Hy9XxW9jQF3T3vc3fbN4c_y9mLG01PMtS5X614G5gf2sJGH403\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; color:#33475b; text-decoration:none\" data-hs-link-id=\"1\" target=\"_blank\">Calculate Your Teams SLA</a></p></td>\r\n              </tr>\r\n            </tbody></table></td>\r\n        </tr>\r\n        <!-- //Main Header Section --> \r\n         <!-- Countdown Section -->\r\n        <tr>\r\n          <td valign=\"top\" align=\"center\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; padding:0 0 5px 0\" bgcolor=\"#ffffff\">\r\n          \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            </td>\r\n            \r\n        </tr>\r\n        <!-- //Countdown Section -->\r\n     \r\n        <!-- Single Image Section -->\r\n        <tr>\r\n          <td valign=\"top\" align=\"center\" style=\"border-collapse:collapse; mso-line-height-rule:exactly\"> \r\n            \r\n            \r\n            \r\n            \r\n            \r\n             </td>\r\n        </tr>\r\n        <!-- //Single Image Section --> \r\n        <!-- Gif with content Section -->\r\n        <tr>\r\n          <td valign=\"top\" align=\"center\" style=\"border-collapse:collapse; mso-line-height-rule:exactly\"> \r\n            \r\n            \r\n            \r\n            <table align=\"center\" style=\"border-collapse:collapse; mso-table-lspace:0px; mso-table-rspace:0px; width:600px\" class=\"em_wrapper\" width=\"600\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n              <tbody>\r\n                <!-- Gif Image Section -->\r\n                <tr>\r\n                  <td valign=\"top\" align=\"center\" class=\"em_img\" style=\"border-collapse:collapse; mso-line-height-rule:exactly\"><div id=\"hs_cos_wrapper_Gif_Image\" class=\"hs_cos_wrapper hs_cos_wrapper_widget hs_cos_wrapper_type_linked_image\" style=\"color: inherit; font-size: inherit; line-height: inherit;\" data-hs-cos-general-type=\"widget\" data-hs-cos-type=\"linked_image\"><a href=\"https://www.hubspot.com/e1t/c/*VQ4fTm6mn-DYW49rnqP2KQTng0/*VWwq5t2Zw6X7W4DMswl88K6hk0/5/f18dQhb0Sjvd8Y9WkYW69-WvK4ZyJ3GW6Pn-d95VSl3BW3PMX985m41RhW4CC0bs6CPSvFW6X_V4M8gX_CKW6YHzwY9ggW-PW859KwQ8mnpBqW7Jy_1035sc00W7HDfjW7NQFP6W85YKfT12ZzVlW1gPXXv5LrDS3W7b9mLB83C24xW7NqX_P4gBHyKW7vpk4M7NM5DDW7JtTqn8mnw90W2wpZtm6gMycyW6dyl7W16jsvtW4lSMGH57wdw6W1y9W1g6813hFW6WrPlH7Cqy9KN8DHkwF7jzMWW6N2CMl31nFKcN1PCRNgTJ66sW1FS9CN265VBJW22-vhJ1Q4cMNW2vrpcL1nnQd3W38kffx24ZFZYW3RF5r25dgxp8MrPpMvrJh2DW904ZN35DHPHPW2J51d55DyYgJW1my8tw7Z5BGZV42cYP3nNLH7W9hNrHG1Zly99W2TrZV98Hy9XxW9jQF3T3vc3fbN4c_y9mLG048DrTzpYKxs8d8pdZq03\" target=\"_blank\" id=\"hs-link-Gif_Image\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; border-width:0px; border:0px\" data-hs-link-id=\"2\"><img src=\"https://cdn2.hubspot.net/hub/53/hubfs/SLA%20Calculator-1.jpg?t=1537869333286&amp;width=1200&amp;name=SLA%20Calculator-1.jpg\" class=\"hs-image-widget \" style=\"outline:none !important; max-height:375px; border-width:0px; border:0px; width:600px; max-width:600px; display:block\" width=\"600\" alt=\"Marketing &amp; Sales SLA Calculator\" title=\"Marketing &amp; Sales SLA Calculator\" srcset=\"https://cdn2.hubspot.net/hub/53/hubfs/SLA%20Calculator-1.jpg?t=1537869333286&amp;width=1200&amp;name=SLA%20Calculator-1.jpg 1200w, https://cdn2.hubspot.net/hub/53/hubfs/SLA%20Calculator-1.jpg?t=1537869333286&amp;width=2400&amp;name=SLA%20Calculator-1.jpg 2400w\" sizes=\"(max-width: 1200px) 100vw, 1200px\"></a></div></td>\r\n                </tr>\r\n                <!-- //Gif Image Section --> \r\n                <!-- Plain Text Section -->\r\n                <tr>\r\n                  <td valign=\"top\" align=\"center\" style=\"border-collapse:collapse; mso-line-height-rule:exactly\"><table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\" style=\"border-collapse:collapse; mso-table-lspace:0px; mso-table-rspace:0px\">\r\n                      <tbody>\r\n                        <tr>\r\n                          <td valign=\"top\" bgcolor=\"#ffffff\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; padding:25px 30px 30px 30px\" class=\"em_padall\"><table align=\"center\" width=\"540\" class=\"em_wrapper\" style=\"border-collapse:collapse; mso-table-lspace:0px; mso-table-rspace:0px; width:540px\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                              <tbody><tr>\r\n                                <td align=\"left\" valign=\"middle\" class=\"em_grey3 em_center\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; padding:0 0 12px 0; font-family:Avenir, Arial, sans-serif; font-size:22px; line-height:24px; color:#2d3e50; font-weight:bold\"> </td>\r\n                              </tr>\r\n                              <tr>\r\n                                <td align=\"left\" valign=\"middle\" class=\"em_grey3 em_center\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; padding:0 0 14px 0; font-family:Avenir, Arial, sans-serif; font-size:14px; line-height:22px; color:#2d3e50\"><p style=\"margin-bottom: 1em; Margin:0px !important; Padding:0px !important\"><g class=\"gr_ gr_17 gr-alert gr_gramm gr_inline_cards gr_run_anim Style multiReplace\" id=\"17\" data-gr-id=\"17\">Hi</g><span style=\"border-collapse:collapse; mso-line-height-rule:exactly\"><g class=\"gr_ gr_17 gr-alert gr_gramm gr_inline_cards gr_disable_anim_appear Style multiReplace\" id=\"17\" data-gr-id=\"17\">&nbsp;</g></span>Žiga<g class=\"gr_ gr_17 gr-alert gr_gramm gr_inline_cards gr_disable_anim_appear Style multiReplace\" id=\"17\" data-gr-id=\"17\">,</g></p>\r\n<p style=\"margin-bottom: 1em; Margin:0px !important; Padding:0px !important\">&nbsp;</p>\r\n<p style=\"margin-bottom: 1em; Margin:0px !important; Padding:0px !important\"><strong><span style=\"border-collapse:collapse; mso-line-height-rule:exactly\">Historically, marketing and sales teams have not had the strongest relationships.</span></strong></p>\r\n<p style=\"margin-bottom: 1em; Margin:0px !important; Padding:0px !important\">&nbsp;</p>\r\n<p style=\"margin-bottom: 1em; Margin:0px !important; Padding:0px !important\">Our research has shown that&nbsp;<span style=\"border-collapse:collapse; mso-line-height-rule:exactly\">companies who align their sales and marketing teams see an average 20% annual revenue growth, in comparison to 4% at companies where they don\'t work together.&nbsp;</span></p>\r\n<p style=\"margin-bottom: 1em; Margin:0px !important; Padding:0px !important\">&nbsp;</p>\r\n<p style=\"margin-bottom: 1em; Margin:0px !important; Padding:0px !important\">That\'s why we\'ve&nbsp;<span style=\"border-collapse:collapse; mso-line-height-rule:exactly\">built this <strong><span style=\"border-collapse:collapse; mso-line-height-rule:exactly; text-decoration:underline\"><span style=\"border-collapse:collapse; mso-line-height-rule:exactly; color:#3288e6\"><a href=\"https://www.hubspot.com/e1t/c/*VQ4fTm6mn-DYW49rnqP2KQTng0/*W7xGQy88tg0BwW6-gBsw1p5xmh0/5/f18dQhb0Sjvd8Y9WkYW69-WvK4ZyJ3GW6Pn-d95VSl3BW3PMX985m41RhW4CC0bs6CPSvFW6X_V4M8gX_CKW6YHzwY9ggW-PW859KwQ8mnpBqW7Jy_1035sc00W7HDfjW7NQFP6W85YKfT12ZzVlW1gPXXv5LrDS3W7b9mLB83C24xW7NqX_P4gBHyKW7vpk4M7NM5DDW7JtTqn8mnw90W2wpZtm6gMycyW6dyl7W16jsvtW4lSMGH57wdw6W1y9W1g6813hFW6WrPlH7Cqy9KN8DHkwF7jzMWW6N2CMl31nFKcN1PCRNgTJ66sW1FS9CN265VBJW22-vhJ1Q4cMNW2vrpcL1nnQd3W38kffx24ZFZYW3RF5r25dgxp8MrPpMvrJh2DW904ZN35DHPHPW2J51d55DyYgJW1my8tw7Z5BGZV42cYP3nNLH7W9hNrHG1Zly99W2TrZV98Hy9XxW9jQF3T3vc3fbN4c_y9mLG048MtS5X61Rxfvf24-bFd03\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; color:#3288e6; text-decoration:underline\" data-hs-link-id=\"3\" target=\"_blank\">customisable Service Level Agreement (SLA) template</a></span></span></strong> to help you calculate and agree upon your lead goals based on sales headcount and marketing &amp; sales conversion rates.</span>&nbsp;</p>\r\n<p style=\"margin-bottom: 1em; Margin:0px !important; Padding:0px !important\">&nbsp;</p>\r\n<p style=\"margin-bottom: 1em; Margin:0px !important; Padding:0px !important\"><a href=\"https://www.hubspot.com/e1t/c/*VQ4fTm6mn-DYW49rnqP2KQTng0/*W6ljmg28RHwgTN4vBxxJJdjFW0/5/f18dQhb0Sjvd8Y9WkYW69-WvK4ZyJ3GW6Pn-d95VSl3BW3PMX985m41RhW4CC0bs6CPSvFW6X_V4M8gX_CKW6YHzwY9ggW-PW859KwQ8mnpBqW7Jy_1035sc00W7HDfjW7NQFP6W85YKfT12ZzVlW1gPXXv5LrDS3W7b9mLB83C24xW7NqX_P4gBHyKW7vpk4M7NM5DDW7JtTqn8mnw90W2wpZtm6gMycyW6dyl7W16jsvtW4lSMGH57wdw6W1y9W1g6813hFW6WrPlH7Cqy9KN8DHkwF7jzMWW6N2CMl31nFKcN1PCRNgTJ66sW1FS9CN265VBJW22-vhJ1Q4cMNW2vrpcL1nnQd3W38kffx24ZFZYW3RF5r25dgxp8MrPpMvrJh2DW904ZN35DHPHPW2J51d55DyYgJW1my8tw7Z5BGZV42cYP3nNLH7W9hNrHG1Zly99W2TrZV98Hy9XxW9jQF3T3vc3fbN4c_y9mLG02-MrTzpY1Z2sMf54M_Xq03\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; color:#2d3e50; text-decoration:none\" data-hs-link-id=\"4\" target=\"_blank\"><strong><span style=\"border-collapse:collapse; mso-line-height-rule:exactly; text-decoration:underline; color:#3288e6\">Download your guide now</span></strong></a>&nbsp;to get started on your SLA.</p>\r\n<p style=\"margin-bottom: 1em; Margin:0px !important; Padding:0px !important\">&nbsp;</p> </td>\r\n                              </tr>\r\n                              <tr>\r\n                                <td valign=\"top\" align=\"left\" style=\"border-collapse:collapse; mso-line-height-rule:exactly\"><table align=\"left\" class=\"em_wrapper\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"border-collapse:collapse; mso-table-lspace:0px; mso-table-rspace:0px\">\r\n                                    <tbody>\r\n                                      <tr>\r\n                                        <td valign=\"top\" align=\"left\" style=\"border-collapse:collapse; mso-line-height-rule:exactly\"><table align=\"center\" style=\"border-collapse:collapse; mso-table-lspace:0px; mso-table-rspace:0px; width:135px; border-radius:3px\" width=\"135\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#ff7a59\">\r\n                                            <tbody><tr>\r\n                                              <td align=\"center\" valign=\"middle\" class=\"em_white\" height=\"45\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; font-family:Avenir, Arial, sans-serif; font-size:15px; color:#ffffff\"><strong><a href=\"https://www.hubspot.com/e1t/c/*VQ4fTm6mn-DYW49rnqP2KQTng0/*W5f8x2x8jJ-s-W2N7mDM6WnhSY0/5/f18dQhb0Sjvd8Y9WkYW69-WvK4ZyJ3GW6Pn-d95VSl3BW3PMX985m41RhW4CC0bs6CPSvFW6X_V4M8gX_CKW6YHzwY9ggW-PW859KwQ8mnpBqW7Jy_1035sc00W7HDfjW7NQFP6W85YKfT12ZzVlW1gPXXv5LrDS3W7b9mLB83C24xW7NqX_P4gBHyKW7vpk4M7NM5DDW7JtTqn8mnw90W2wpZtm6gMycyW6dyl7W16jsvtW4lSMGH57wdw6W1y9W1g6813hFW6WrPlH7Cqy9KN8DHkwF7jzMWW6N2CMl31nFKcN1PCRNgTJ66sW1FS9CN265VBJW22-vhJ1Q4cMNW2vrpcL1nnQd3W38kffx24ZFZYW3RF5r25dgxp8MrPpMvrJh2DW904ZN35DHPHPW2J51d55DyYgJW1my8tw7Z5BGZV42cYP3nNLH7W9hNrHG1Zly99W2TrZV98Hy9XxW9jQF3T3vc3fbN4c_y9mLG02-DtS5X6BMWjf6GCvzn03\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; color:#ffffff; text-decoration:none\" data-hs-link-id=\"5\" target=\"_blank\">Download&nbsp;Now</a></strong> </td>\r\n                                            </tr>\r\n                                          </tbody></table></td>\r\n                                      </tr>\r\n                                    </tbody>\r\n                                  </table></td>\r\n                              </tr>\r\n                            </tbody></table></td>\r\n                        </tr>\r\n                      </tbody>\r\n                    </table></td>\r\n                </tr>\r\n                <!-- //Plain Text Section -->\r\n              </tbody>\r\n            </table>\r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n             </td>\r\n        </tr>\r\n        <!-- //Gif with content Section --> \r\n        <!-- Video Section -->\r\n        <tr>\r\n          <td valign=\"top\" align=\"center\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; padding:0 0 30px 0\" bgcolor=\"#f5f8fa\" class=\"em_pabtm\"><table align=\"center\" style=\"border-collapse:collapse; mso-table-lspace:0px; mso-table-rspace:0px; width:600px\" class=\"em_wrapper\" width=\"600\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n              <tbody>\r\n                <tr>\r\n                  <td valign=\"top\" align=\"center\" class=\"em_img\" style=\"border-collapse:collapse; mso-line-height-rule:exactly\"><div id=\"hs_cos_wrapper_Video_Image\" class=\"hs_cos_wrapper hs_cos_wrapper_widget hs_cos_wrapper_type_linked_image\" style=\"color: inherit; font-size: inherit; line-height: inherit;\" data-hs-cos-general-type=\"widget\" data-hs-cos-type=\"linked_image\"></div></td>\r\n                </tr>\r\n              </tbody>\r\n            </table></td>\r\n        </tr>\r\n        <!-- //Video Section --> \r\n        <!-- Flipflop Section Start Here -->\r\n        <tr>\r\n          <td valign=\"top\" align=\"center\" style=\"border-collapse:collapse; mso-line-height-rule:exactly\"> \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n             </td>\r\n        </tr>\r\n        <!-- // Flipflop Section End Here --> \r\n        \r\n        <!-- Left Image Right Content Section 1 Start Here -->\r\n        <tr>\r\n          <td valign=\"top\" align=\"center\" style=\"border-collapse:collapse; mso-line-height-rule:exactly\"> \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n             </td>\r\n        </tr>\r\n        <!-- // Left Image Right Content Section 1 End Here --> \r\n        <!-- Signature Section -->\r\n        <tr>\r\n          <td valign=\"top\" align=\"center\" style=\"border-collapse:collapse; mso-line-height-rule:exactly\"><table bgcolor=\"#ffffff\" align=\"center\" style=\"border-collapse:collapse; mso-table-lspace:0px; mso-table-rspace:0px; width:600px\" class=\"em_wrapper\" width=\"600\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n              <tbody>\r\n                <tr>\r\n                  <td valign=\"top\" align=\"center\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; padding:31px 60px 24px\" class=\"em_padall\"><table align=\"center\" style=\"border-collapse:collapse; mso-table-lspace:0px; mso-table-rspace:0px; width:460px\" class=\"em_wrapper\" width=\"460\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody>\r\n                        <tr>\r\n                          <td class=\"em_grey\" valign=\"top\" align=\"center\" style=\"border-collapse:collapse; mso-line-height-rule:exactly\"><div id=\"hs_cos_wrapper_Signature_Image\" class=\"hs_cos_wrapper hs_cos_wrapper_widget hs_cos_wrapper_type_linked_image\" style=\"color: inherit; font-size: inherit; line-height: inherit;\" data-hs-cos-general-type=\"widget\" data-hs-cos-type=\"linked_image\"><img src=\"https://cdn2.hubspot.net/hub/53/hubfs/Mark%20Whelan%20headshot.jpg?t=1537869333286&amp;width=900&amp;name=Mark%20Whelan%20headshot.jpg\" class=\"hs-image-widget \" style=\"outline:none !important; max-height:900px; border-width:0px; border:0px; width:100px; max-width:100px; display:block\" width=\"100\" alt=\"Mark Whelan headshot.jpg\" title=\"Mark Whelan headshot.jpg\" srcset=\"https://cdn2.hubspot.net/hub/53/hubfs/Mark%20Whelan%20headshot.jpg?t=1537869333286&amp;width=900&amp;name=Mark%20Whelan%20headshot.jpg 900w, https://cdn2.hubspot.net/hub/53/hubfs/Mark%20Whelan%20headshot.jpg?t=1537869333286&amp;width=1800&amp;name=Mark%20Whelan%20headshot.jpg 1800w\" sizes=\"(max-width: 900px) 100vw, 900px\"></div></td>\r\n                        </tr>\r\n                        <tr>\r\n                          <td class=\"em_grey2\" valign=\"top\" align=\"center\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; font-family:Avenir, Arial, sans-serif; font-size:16px; line-height:18px; color:#33475b; padding:18px 0 0 0; font-weight:600\"><span style=\"border-collapse:collapse; mso-line-height-rule:exactly\">Mark Whelan</span></td>\r\n                        </tr>\r\n                        <tr>\r\n                          <td valign=\"top\" align=\"center\" class=\"em_skyblue\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; font-family:Avenir, Arial, sans-serif; font-size:13px; line-height:17px; color:#516f90; padding:10px 0 0 0\"><span style=\"border-collapse:collapse; mso-line-height-rule:exactly\">Senior Marketing Manager @ HubSpot EMEA</span></td>\r\n                        </tr>\r\n                        <tr>\r\n                          <td valign=\"top\" class=\"em_grey3\" align=\"center\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; font-family:Avenir, Arial, sans-serif; font-size:14px; line-height:22px; color:#2d3e50; padding:10px 0 0 0\"></td>\r\n                        </tr>\r\n                      </tbody>\r\n                    </table></td>\r\n                </tr>\r\n              </tbody>\r\n            </table></td>\r\n        </tr>\r\n        <!-- //Signature Section --> \r\n        <!-- Footer Section -->\r\n        <tr>\r\n          <td valign=\"top\" style=\"border-collapse:collapse; mso-line-height-rule:exactly\"><table align=\"center\" class=\"em_wrapper\" style=\"border-collapse:collapse; mso-table-lspace:0px; mso-table-rspace:0px; width:600px\" width=\"600\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n              <tbody><tr>\r\n                <td valign=\"top\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; padding:30px 114px 25px\" class=\"em_padall\"><table align=\"center\" class=\"em_wrapper\" width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"border-collapse:collapse; mso-table-lspace:0px; mso-table-rspace:0px\">\r\n                    <tbody><tr>\r\n                      <td valign=\"top\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; padding:0 0 15px 0\"><table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"border-collapse:collapse; mso-table-lspace:0px; mso-table-rspace:0px\">\r\n                          <tbody><tr> \r\n                            <td align=\"center\" valign=\"middle\" width=\"20\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; padding:0 9px 0 0\"> <div id=\"hs_cos_wrapper_Instagram_Icon\" class=\"hs_cos_wrapper hs_cos_wrapper_widget hs_cos_wrapper_type_linked_image\" style=\"color: inherit; font-size: inherit; line-height: inherit;\" data-hs-cos-general-type=\"widget\" data-hs-cos-type=\"linked_image\"><a href=\"https://www.hubspot.com/e1t/c/*VQ4fTm6mn-DYW49rnqP2KQTng0/*W2kJrvl97zb2XN7D4k2NX9WXx0/5/f18dQhb0SfHv8XJbnsW34_sfm78kN-xW83MqyP2YXVddVgB7HS2HydbkW6ZTs6p6NMmLMW47xh9M2-BkClW49X0wH2zY4jXW2pd9Dn4Bs6cnW4yym9n2p0tdzW5Q4CL56gGyqXW2p3HKH2YfZVsW5n1GjJ69_8tdW1vkc8n2FKSJPN4LG27Lbv4n0Vh4qQS1YZmpKF6PQhgTkrQzW5LztdW79Tg5xW1ZJ9Ff96zRPSW6bT6L38RRjRDW5CkCbg1T4BRJW5D8zFF6bJ-pxW7nwG0k6bnMRgW4Nskpq3f_5_KW4p7yDT2BPMnkW38thRc8y_jDMW8nDkbG1l9KC_W1pP0HS8pWkfqW7mt3V-2QTSdfN4Cj0khz2ngXW5Q8ryZ6PZH_pV2Zcny8X2BP6W7MXJHd3wPByYW3wqskP88C6_3111\" target=\"_blank\" id=\"hs-link-Instagram_Icon\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; border-width:0px; border:0px\" data-hs-link-id=\"0\"><img src=\"https://cdn2.hubspot.net/hub/1964904/hubfs/EM/i1519023257363/img_instagram.png?noresize&amp;t=1537869333286&amp;width=20&amp;name=img_instagram.png\" class=\"hs-image-widget \" style=\"outline:none !important; max-height:19px; border-width:0px; border:0px; width:20px; max-width:20px; display:block; font-family:Arial, sans-serif; font-size:13px; line-height:16px; color:#2d3e50\" width=\"20\" alt=\"insta\" title=\"insta\"></a></div> </td>\r\n                            \r\n                            \r\n                            <td align=\"center\" valign=\"middle\" width=\"11\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; padding:0 9px 0 0\"><div id=\"hs_cos_wrapper_Facebook_Icon2\" class=\"hs_cos_wrapper hs_cos_wrapper_widget hs_cos_wrapper_type_linked_image\" style=\"color: inherit; font-size: inherit; line-height: inherit;\" data-hs-cos-general-type=\"widget\" data-hs-cos-type=\"linked_image\"><a href=\"https://www.hubspot.com/e1t/c/*VQ4fTm6mn-DYW49rnqP2KQTng0/*W2dQXL-6HZmmxV-Pf8k54Q5-_0/5/f18dQhb0SfHz8XJbnsW34_sfm78kN-xW83MqyP2YXVddW299yTt2HydbkW6ZTs6p6NMlHYW49MxYY4F0M5HW4DZt5x3SQHK_W4DH99G3SLYcbW49JfBw3C8bwHW6lG-Hw5-Y2vSW3VnFgH1ZvvLWW9h-F_32xFrcPW6Dd8BT7Qk6sdN74m00M4fNGgW782NLZ1rms4_W7kxKW77sx0r-W50MWLc25xd2SW2xZTW3567bYVW5lKvt_5420y5MJVPYMVVW1HW32p-C34cMfVrW3Kqlz72KFZxKW3Z7vtq8PXmZbW3ygvH88c3mppVHT8Yj2Xwx02W2QwY1q4knwh3W2KCpv67s5T3TW5hfQL48p0Ny5W7Khv7h2Md3HgVnbD7X29jw1yN8_q3psLgP1fW4yZYy25V9WFRW3f5_rb2TvJ9LdhPPw604\" target=\"_blank\" id=\"hs-link-Facebook_Icon2\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; border-width:0px; border:0px\" data-hs-link-id=\"0\"><img src=\"https://cdn2.hubspot.net/hub/1964904/hubfs/EM/i1519023257363/img_facebook.png?noresize&amp;t=1537869333286&amp;width=11&amp;name=img_facebook.png\" class=\"hs-image-widget \" style=\"outline:none !important; max-height:19px; border-width:0px; border:0px; width:11px; max-width:11px; display:block; font-family:Arial, sans-serif; font-size:13px; line-height:16px; color:#2d3e50\" width=\"11\" alt=\"fb\" title=\"fb\"></a></div></td>\r\n                            \r\n                            \r\n                            <td align=\"center\" valign=\"middle\" width=\"19\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; padding:0 9px 0 0\"> <div id=\"hs_cos_wrapper_Linkedin_Icon\" class=\"hs_cos_wrapper hs_cos_wrapper_widget hs_cos_wrapper_type_linked_image\" style=\"color: inherit; font-size: inherit; line-height: inherit;\" data-hs-cos-general-type=\"widget\" data-hs-cos-type=\"linked_image\"><a href=\"https://www.hubspot.com/e1t/c/*VQ4fTm6mn-DYW49rnqP2KQTng0/*W76FZVH4-Dmp9W2MN3Nk70tddp0/5/f18dQhb0SfHB8XJ9T0W34_sfm78kN-xW83MqyP2YXVddW2k3LVc2HydbkW6ZTs6p6NMkF6W3snFGC3MtFF6N4DZmt6SGXVVN8zvZJxNDqz3W8ws82v8mp2bwV3_fYc8WhTQcN3pL153sk4ldW4SN9pt5j0mgcW2MkKmC2pz0RsW2ypvtn2z8ZTqW2mfJtS5_zPbwW7NQrx480B7MyVgmVKB8q4WcnW1lbtlr6bs2nfW7xR9_s2Vjhb0W5bPQ0k7v4vH3VMBCsf27JDbVW38kffx24ZF-xW1ZY5-P8Q4nnrN1zW062zD-dgW1tV6DQ6f09SYW6Y9Sfv6WwP_NW60KF7Y8lJRK0W4xH9rQ24RqJ8VlLSj18MM-1TW2nz0CW7Mc-qrW4nNkgh71byjyW87sC_N26wV0qMrLh9QrHzmHf3fjqxk02\" target=\"_blank\" id=\"hs-link-Linkedin_Icon\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; border-width:0px; border:0px\" data-hs-link-id=\"0\"><img src=\"https://cdn2.hubspot.net/hub/1964904/hubfs/EM/i1519023257363/img_linkedin.png?noresize&amp;t=1537869333286&amp;width=19&amp;name=img_linkedin.png\" class=\"hs-image-widget \" style=\"outline:none !important; max-height:19px; border-width:0px; border:0px; width:19px; max-width:19px; display:block; font-family:Arial, sans-serif; font-size:13px; line-height:16px; color:#2d3e50\" width=\"19\" alt=\"in\" title=\"in\"></a></div> </td>\r\n                            \r\n                            \r\n                            <td align=\"center\" valign=\"middle\" width=\"19\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; padding:0 9px 0 0\"> <div id=\"hs_cos_wrapper_Twitter_Icon\" class=\"hs_cos_wrapper hs_cos_wrapper_widget hs_cos_wrapper_type_linked_image\" style=\"color: inherit; font-size: inherit; line-height: inherit;\" data-hs-cos-general-type=\"widget\" data-hs-cos-type=\"linked_image\"><a href=\"https://www.hubspot.com/e1t/c/*VQ4fTm6mn-DYW49rnqP2KQTng0/*V3Lhjv7nlQh-W4r6qBL6S03h40/5/f18dQhb0SnG_98D_56W34_sfm78kN-xW83MqyP2YXVddW1hRrP12HydbkW6ZTmWS3LRdrWW5jRxGR6nPg2pW30Gxbb51h2ycW41_WgK41yjTPW4tYJGp6qD2D-W5jCs8T5gM38wVd-sG73TtR88W26MF4d67ybsdW3H2N2160BXg0W7pxxdc32MTzVW4DmGd449y4lJW1KlzVv7lZwJDW5CCyWc3jL1hnW5Hsr_p5G2WvyV656Qc2StQ5cW6DGDBz8tzC3FW8q-1xg5CMQpDW8bMM4872zrXTW712jqc1mJXtLW5Q2vBF5B2W41W8HLz3j5rbnpVW5y6fRH19rc8kW7nZ6Pm61vy-LN5vs7lxMpdc4W4nB6_X8GHQqJW1qzC8r93YX5hW2pglVT6vc-Z6N5PqVk7DyK1P0\" target=\"_blank\" id=\"hs-link-Twitter_Icon\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; border-width:0px; border:0px\" data-hs-link-id=\"0\"><img src=\"https://cdn2.hubspot.net/hub/1964904/hubfs/EM/i1519023257363/img_twitter.png?noresize&amp;t=1537869333286&amp;width=19&amp;name=img_twitter.png\" class=\"hs-image-widget \" style=\"outline:none !important; max-height:16px; border-width:0px; border:0px; width:19px; max-width:19px; display:block; font-family:Arial, sans-serif; font-size:13px; line-height:16px; color:#2d3e50\" width=\"19\" alt=\"tw\" title=\"tw\"></a></div> </td>\r\n                            \r\n                            \r\n                            \r\n                            <td align=\"center\" valign=\"middle\" width=\"19\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; padding:0 9px 0 0\"> <div id=\"hs_cos_wrapper_Youtube_Icon\" class=\"hs_cos_wrapper hs_cos_wrapper_widget hs_cos_wrapper_type_linked_image\" style=\"color: inherit; font-size: inherit; line-height: inherit;\" data-hs-cos-general-type=\"widget\" data-hs-cos-type=\"linked_image\"><a href=\"https://www.hubspot.com/e1t/c/*VQ4fTm6mn-DYW49rnqP2KQTng0/*W6qDsZ98KyNvFW7VnNlj1HwrWp0/5/f18dQhb0SfHp8XJ9T0W34_sfm78kN-xW83MqyP2YXVddVT7VLQ2HydbkW6ZTs6p6NMmGCW3SLXMK6d8bfsW6nhHGr3WgzV_W3SQHFf4DH3t7W2HVTVM3CcrhnW3MbN9Z6gMycyW6dyl7W16jsvtW4lSMGH3S_lz1N2lL9kms-vvMW7sRx2H7l5x42W7jLvY56clSgJW2N-40T96m8pPW7p093k6NqPj9W1lwh5w3Hc5mCW3SQgn23_CV3gN3V_TcnxZ29qW41TlcR3Tw-3WW68Kwdg4Dl4vzW3sxGC-9hh9gKMrPpMvrJh2DW904ZN35DHPHPW2J51d55DyYgJW1my8tw7Z5BGZV42cYP3nNLH7W9hNrHG1Zly99W2TrZV98Hy9XxW9jQF3T3vc3fbN4c_y9mLG01PMrTzpY13PsVf33T7vM03\" target=\"_blank\" id=\"hs-link-Youtube_Icon\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; border-width:0px; border:0px\" data-hs-link-id=\"0\"><img src=\"https://cdn2.hubspot.net/hub/1964904/hubfs/EM/i1519023257363/img_youtube.png?noresize&amp;t=1537869333286&amp;width=19&amp;name=img_youtube.png\" class=\"hs-image-widget \" style=\"outline:none !important; max-height:15px; border-width:0px; border:0px; width:19px; max-width:19px; display:block; font-family:Arial, sans-serif; font-size:13px; line-height:16px; color:#2d3e50\" width=\"19\" alt=\"yt\" title=\"yt\"></a></div> </td>\r\n                            \r\n                            \r\n                            \r\n                             </tr>\r\n                        </tbody></table></td>\r\n                    </tr>\r\n                    <tr>\r\n                      <td align=\"center\" valign=\"middle\" class=\"em_grey4_u\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; font-family:Avenir, Arial, sans-serif; font-size:12px; line-height:20px; color:#425b76\"> <p style=\"margin-bottom: 1em; Margin:0px !important; Padding:0px !important\"><strong>HubSpot International Limited</strong></p>\r\n<p style=\"margin-bottom: 1em; Margin:0px !important; Padding:0px !important\"><strong>One Dockland Central</strong></p>\r\n<p style=\"margin-bottom: 1em; Margin:0px !important; Padding:0px !important\">Dublin 1</p>\r\n<p style=\"margin-bottom: 1em; Margin:0px !important; Padding:0px !important\">Ireland&nbsp;</p>\r\n<p style=\"margin-bottom: 1em; Margin:0px !important; Padding:0px !important\">You received this email because you are subscribed<span style=\"border-collapse:collapse; mso-line-height-rule:exactly\">&nbsp;</span><g class=\"gr_ gr_5 gr-alert gr_gramm gr_inline_cards gr_run_anim Style multiReplace\" id=\"5\" data-gr-id=\"5\">to&nbsp;</g>Education, Content &amp; Resources<g class=\"gr_ gr_5 gr-alert gr_gramm gr_inline_cards gr_disable_anim_appear Style multiReplace\" id=\"5\" data-gr-id=\"5\">&nbsp;from</g><span style=\"border-collapse:collapse; mso-line-height-rule:exactly\">&nbsp;</span>HubSpot.</p>\r\n<p class=\"p1\" style=\"margin-bottom: 1em; Margin:0px !important; Padding:0px !important\">Manage Your&nbsp;<a href=\"https://www.hubspot.com/hs/manage-preferences/unsubscribe?d=eyJlYSI6InppZ2EuYmFibmlrQGJ0cmFjay5pbyIsImVjIjo2NjE3MzQxMSwic3Vic2NyaXB0aW9uSWQiOjE2LCJldCI6MTUzNzg3MDEwNjM4NSwiZXUiOiIwZjgwMWZkMy1iMzM3LTQzZTUtODljMC05NGMwYWRlNGJlOTAifQ%3D%3D&amp;v=1&amp;utm_campaign=EMEA%20en%20%7C%20Offer%20Revamp%20%7C%202018%20SLA%20Lead%20Goal%20Calculator&amp;utm_source=hs_email&amp;utm_medium=email&amp;utm_content=66173411\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; color:#425b76; text-decoration:underline\" data-hs-link-id=\"0\" target=\"_blank\">email preferences</a>&nbsp;or&nbsp;<a href=\"https://www.hubspot.com/hs/manage-preferences/unsubscribe-all?d=eyJlYSI6InppZ2EuYmFibmlrQGJ0cmFjay5pbyIsImVjIjo2NjE3MzQxMSwic3Vic2NyaXB0aW9uSWQiOjE2LCJldCI6MTUzNzg3MDEwNjM4NSwiZXUiOiIwZjgwMWZkMy1iMzM3LTQzZTUtODljMC05NGMwYWRlNGJlOTAifQ%3D%3D&amp;v=1&amp;utm_campaign=EMEA%20en%20%7C%20Offer%20Revamp%20%7C%202018%20SLA%20Lead%20Goal%20Calculator&amp;utm_source=hs_email&amp;utm_medium=email&amp;utm_content=66173411\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; color:#425b76; text-decoration:underline\" data-hs-link-id=\"0\" target=\"_blank\">Unsubscribe</a><span style=\"border-collapse:collapse; mso-line-height-rule:exactly\">&nbsp;</span>from all future emails.</p> </td>\r\n                    </tr>\r\n                    <tr>\r\n                      <td class=\"em_footer\" align=\"center\" height=\"0\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; font-family:Arial, sans-serif; font-size:0px; line-height:0px; color:#eaf0f6; display:none; text-decoration:none; height:0\">HubSpot International Limited, One Dockland Central, Dublin 1, Ireland, https://www.hubspot.com/hs/manage-preferences/unsubscribe?d=eyJlYSI6InppZ2EuYmFibmlrQGJ0cmFjay5pbyIsImVjIjo2NjE3MzQxMSwic3Vic2NyaXB0aW9uSWQiOjE2LCJldCI6MTUzNzg3MDEwNjM4NSwiZXUiOiIwZjgwMWZkMy1iMzM3LTQzZTUtODljMC05NGMwYWRlNGJlOTAifQ%3D%3D&amp;v=1</td>\r\n                    </tr>\r\n                  </tbody></table></td>\r\n              </tr>\r\n            </tbody></table></td>\r\n        </tr>\r\n        <!-- //Footer Section -->\r\n        \r\n        <tr>\r\n          <td class=\"em_hide\" style=\"border-collapse:collapse; mso-line-height-rule:exactly; line-height:1px; min-width:600px; background-color:#eaf0f6\" bgcolor=\"#eaf0f6\"><img alt=\"\" src=\"images/spacer.gif\" height=\"1\" width=\"600\" style=\"border:0 !important; outline:none !important; max-height:1px; min-height:1px; display:block; width:600px; min-width:600px\" border=\"0\"></td>\r\n        </tr>\r\n      </tbody></table></td>\r\n  </tr>\r\n</tbody></table>\r\n<div class=\"em_hide\" style=\"white-space: nowrap; display: none; font-size:0px; line-height:0px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</div>\r\n<!-- end coded_template: id:5677628597 path:Custom/email/email/OneOffEmail2018.html -->\r\n<img src=\"https://www.hubspot.com/e1t/o/*W5mkHc12DFmK1W7pxs3j4KBHQG0/*W7c_Gg-99dDZGMR32_mnxdn40/5/f18dQhb0J6v1fqRZN8PdCZZWdbJYW1--37k1V1BHpW1xWM0j2xMf7YW26rPR92F3VMtW3j1MbD4txxkQW1Jx4cW41S-DYW3Cg0rr3F8JJLW437p7n15gBJzW5j4cty53sY9FW50khY54-3_lZN98k4PQWtKSCF4MgbCMVVJ9f71z1gM03\" alt=\"\" width=\"1\" height=\"1\" border=\"0\" style=\"display:none!important;min-height:1px!important;width:1px!important;border-width:0!important;margin-top:0!important;margin-bottom:0!important;margin-right:0!important;margin-left:0!important;padding-top:0!important;padding-bottom:0!important;padding-right:0!important;padding-left:0!important\"><style>@media print{#_hs { background-image: url(\'https://www.hubspot.com/e1t/o/*W5mkHc12DFmK1W7pxs3j4KBHQG0/*N6NxbjwVQTxYW4Z06MQ2LHTs-0/5/f18dQhb0J6w1f0mlN8Pf1rBWdbJYW1--37k1V1BHpW1xX8zK2HFv8PLs7yK2xwK0MvlGr-PnqLpW3yMjjk3CcvQ9W2m1YZC3z8ndqN3T1B-9ZxKcwVjWKFg8MFgcQW8c1pVP8nVGQZN6TWrKCyPqLdW7ysCJT197GbKf2NGs4W02\');}} div.OutlookMessageHeader {background-image:url(\'https://www.hubspot.com/e1t/o/*W5mkHc12DFmK1W7pxs3j4KBHQG0/*W4SY4h-1WgXvKVh-nYq3dxdcL0/5/f18dQhb0J6y1d9q6N8PfTnSWdbJYW1--37k1V1BHpW1xX-Fw30t6jFF2vyZ_8vFvnTDk7H28vrl2W3S-ph03C640TW3T00j24fM_2ZN3XtNZDB-Sw8VmWcMH9gknJnN5Bb4yw25BfpW85dLnq4ZSJqsW5kkk6k8dhh-4W3PKm4W3yn_R-0\')} table.moz-email-headers-table {background-image:url(\'https://www.hubspot.com/e1t/o/*W5mkHc12DFmK1W7pxs3j4KBHQG0/*W4SY4h-1WgXvKVh-nYq3dxdcL0/5/f18dQhb0J6y1d9q6N8PfTnSWdbJYW1--37k1V1BHpW1xX-Fw30t6jFF2vyZ_8vFvnTDk7H28vrl2W3S-ph03C640TW3T00j24fM_2ZN3XtNZDB-Sw8VmWcMH9gknJnN5Bb4yw25BfpW85dLnq4ZSJqsW5kkk6k8dhh-4W3PKm4W3yn_R-0\')} blockquote #_hs {background-image:url(\'https://www.hubspot.com/e1t/o/*W5mkHc12DFmK1W7pxs3j4KBHQG0/*W4SY4h-1WgXvKVh-nYq3dxdcL0/5/f18dQhb0J6y1d9q6N8PfTnSWdbJYW1--37k1V1BHpW1xX-Fw30t6jFF2vyZ_8vFvnTDk7H28vrl2W3S-ph03C640TW3T00j24fM_2ZN3XtNZDB-Sw8VmWcMH9gknJnN5Bb4yw25BfpW85dLnq4ZSJqsW5kkk6k8dhh-4W3PKm4W3yn_R-0\')} #MailContainerBody #_hs {background-image:url(\'https://www.hubspot.com/e1t/o/*W5mkHc12DFmK1W7pxs3j4KBHQG0/*W4SY4h-1WgXvKVh-nYq3dxdcL0/5/f18dQhb0J6y1d9q6N8PfTnSWdbJYW1--37k1V1BHpW1xX-Fw30t6jFF2vyZ_8vFvnTDk7H28vrl2W3S-ph03C640TW3T00j24fM_2ZN3XtNZDB-Sw8VmWcMH9gknJnN5Bb4yw25BfpW85dLnq4ZSJqsW5kkk6k8dhh-4W3PKm4W3yn_R-0\')}</style><div id=\"_hs\"></div></body></html>','markw@hubspot.com','ziga.babnik@btrack.io','2018-09-25 12:22:28','2018-10-08 09:49:45'),
(16,'AAMkADljZDMzODBkLTJlMjMtNGM0Yy1hMTJiLTYwNzI1ZjAyMDBhNABGAAAAAADLUeJl8-KbS7e0VLNxqJJXBwB6P_2Me_vISI_4Fx0TvKenAAAAAAEMAAB6P_2Me_vISI_4Fx0TvKenAAA2RbwiAAA=',1,NULL,NULL,NULL,'<cfb9a52722ea469e8e600fc5060bbbb6-JVKUGUBNKBZG6ZBNIJHDE7CPGM3DKTLFONZWCZ3FINSW45DFOJ6E2ZLTONQWOZKDMVXHIZLSIRUWOZLTOR6FG3LUOA======@microsoft.com>','',0,0,NULL,'Weekly digest: Office 365 changes','<html>\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<meta content=\"text/html; charset=utf-8\">\r\n<meta name=\"ROBOTS\" content=\"NOINDEX, NOFOLLOW\">\r\n<style>\r\n<!--\r\na\r\n	{text-decoration:none}\r\na:hover\r\n	{text-decoration:underline}\r\n.afooter\r\n	{color:#fff!important}\r\n-->\r\n</style>\r\n</head>\r\n<body>\r\n<table id=\"top\" width=\"800\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\">\r\n<tbody>\r\n<tr bgcolor=\"#F9F9F9\" height=\"60\">\r\n<td width=\"20\"></td>\r\n<td width=\"380\" align=\"left\" cellpadding=\"20\"><img src=\"http://image.email2.office.com/lib/fe81137272620d7a7d/m/1/logo_office365_large_corrected.png\">\r\n</td>\r\n<td width=\"380\" align=\"right\"><img src=\"http://image.email2.office.com/lib/fe81137272620d7a7d/m/1/logo_MSFT_rgb_corrected.png\">\r\n</td>\r\n<td width=\"20\"></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table width=\"800\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><br>\r\n<h1 style=\"text-align:center; color:#d83b01; font-size:18pt; font-family:Segoe UI Light\">\r\nHere is a summary of your messages from last week</h1>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"font-family:Segoe UI Light; font-size:13pt\"><br>\r\n<span style=\"font-family:Segoe UI semibold; font-size:13pt\">Organization:</span> HOTSPOT D.O.O.\r\n</td>\r\n</tr>\r\n<tr>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table width=\"800\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\">\r\n<tbody>\r\n<tr height=\"30\">\r\n</tr>\r\n<tr height=\"40\">\r\n<td width=\"20\" bgcolor=\"#CCE3F5\"></td>\r\n<td align=\"left\" bgcolor=\"#CCE3F5\" style=\"font-family:Segoe UI Light\">Is this digest useful to you? &nbsp;\r\n<a href=\"https://forms.office.com/Pages/ResponsePage.aspx?id=v4j5cvGGr0GRqy180BHbR-rMMzjkh-5MjuvzignA2eJUQURBR1k1MkRBUEY5MFRBSDNBWldWQlM4NC4u\" style=\"font-family:Segoe UI Light; color:#0078d7\">\r\nGive us feedback</a> </td>\r\n</tr>\r\n<tr height=\"10\">\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table width=\"800\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\">\r\n<tbody>\r\n<tr height=\"10\">\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table width=\"800\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td align=\"left\" cellpadding=\"20\" style=\"color:#d83b01; font-size:14pt; font-family:Segoe UI\">\r\nOffice 365 announcements from last week </td>\r\n<td align=\"right\"><a href=\"https://portal.office.com/adminportal/home?ref=MessageCenter?showPref=1\" title=\"set email\" style=\"color:#0078d7; font-family:Segoe UI Light; font-size:13pt\">Edit Message center preferences</a>\r\n</td>\r\n</tr>\r\n<tr height=\"50\">\r\n<td align=\"left\" cellpadding=\"20\" style=\"font-size:14pt; font-family:Segoe UI\">Please sign into your\r\n<u>admin</u> account to use any of the links below </td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table width=\"800\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\" style=\"font-size:13pt; font-family:Segoe UI light\">\r\n<tbody>\r\n<tr>\r\n<td width=\"80\" valign=\"top\">Oct 05</td>\r\n<td width=\"35\" valign=\"top\"><img src=\"http://image.email2.office.com/lib/fe81137272620d7a7d/m/1/logo_Exchange.gif\"></td>\r\n<td><span style=\"color:#0078d7; font-family:Segoe UI semibold; font-size:13pt\">New feature: Conditional access for non-compliant devices</span><br>\r\n<span>Outlook on the web - Conditional access for non-compliant devices is a new Office 365 feature. We\'ll begin rolling this feature out soon. This message is associated with Microsoft 365 Roadmap ID: 30617.</span><span style=\"float:right; color:#0078d7\"><a href=\"https://portal.office.com/adminportal/home#/MessageCenter?id=MC150197&amp;MCLinkSource=DigestMail\" style=\"float:right\">\r\n More ...</a></span><br>\r\n<span style=\"color:#969696\">MC150197&nbsp;<a href=\"https://portal.office.com/adminportal/home#/MessageCenter?rating=5MC150197\">Like</a>&nbsp;|&nbsp;<a href=\"https://portal.office.com/adminportal/home#/MessageCenter?rating=1MC150197\">Dislike<br>\r\n</a><br>\r\n</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table width=\"800\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\" style=\"font-size:13pt; font-family:Segoe UI light\">\r\n<tbody>\r\n<tr>\r\n<td width=\"80\" valign=\"top\">Oct 02</td>\r\n<td width=\"35\" valign=\"top\"><img src=\"http://image.email2.office.com/lib/fe81137272620d7a7d/m/1/logo_Office365.gif\"></td>\r\n<td><span style=\"color:#0078d7; font-family:Segoe UI semibold; font-size:13pt\">We’re updating the look of Office 365 desktop apps</span><br>\r\n<span>We’re updating the look of the top line ribbon and the icons for Office\'s desktop applications. We began rolling this change out to Targeted Release organizations in late September. This message is associated with Microsoft 365 Roadmap ID: 31519.</span><span style=\"float:right; color:#0078d7\"><a href=\"https://portal.office.com/adminportal/home#/MessageCenter?id=MC149826&amp;MCLinkSource=DigestMail\" style=\"float:right\">\r\n More ...</a></span><br>\r\n<span style=\"color:#969696\">MC149826&nbsp;<a href=\"https://portal.office.com/adminportal/home#/MessageCenter?rating=5MC149826\">Like</a>&nbsp;|&nbsp;<a href=\"https://portal.office.com/adminportal/home#/MessageCenter?rating=1MC149826\">Dislike<br>\r\n</a><br>\r\n</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table width=\"800\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\" style=\"font-family:Segoe UI semibold; font-size:11pt; color:#d83b01\">\r\n<tbody>\r\n<tr height=\"5\">\r\n</tr>\r\n<tr>\r\n<td><a href=\"https://portal.office.com/adminportal/home?switchtomodern=true#/MessageCenter\" style=\"color:#d83b01\">See all my messages on Office 365 message center &nbsp;\r\n<img src=\"http://image.email2.office.com/lib/fe81137272620d7a7d/m/1/button_go.png\" style=\"vertical-align:middle\"></a>\r\n</td>\r\n</tr>\r\n<tr height=\"25\">\r\n</tr>\r\n<tr>\r\n<td style=\"color:#737373\">Need help translating these messages? <a href=\"https://support.office.com/en-us/article/Turn-on-language-translation-for-Message-center-posts-9f7c2ff2-af65-4557-8840-0b84ce96d9bc?ui=en-US&amp;rs=en-US&amp;ad=US\" style=\"color:#0078d7\">\r\nClick Here</a> </td>\r\n</tr>\r\n<tr height=\"25\">\r\n</tr>\r\n<tr>\r\n<td valign=\"middle\" style=\"font-family:Segoe UI Light; font-size:13pt; color:#212121\">\r\nThanks, <br>\r\nThe Microsoft Office 365 team </td>\r\n</tr>\r\n<tr height=\"25\">\r\n</tr>\r\n<tr>\r\n<td><img src=\"http://image.email2.office.com/lib/fe81137272620d7a7d/m/1/logo_MSFT_rgb_wht.png\">\r\n</td>\r\n</tr>\r\n<tr height=\"20\">\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table width=\"800\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\">\r\n<tbody>\r\n<tr style=\"font-family:Segoe UI light; font-size:11pt; color:#737373\">\r\n<td>This admin digest email may not include all Message Center announcements from the past week. It is personalized for your organization and reflects your individual preferences.\r\n<br>\r\n<br>\r\nTo customize what\'s included in this email, who gets it, or to unsubscribe, <a href=\"https://portal.office.com/adminportal/home?ref=MessageCenter?showPref=1\" title=\"set email preferences\" style=\"color:#0078d7\">\r\nset your Message center preferences.</a> If you are receiving this email because your Admin added you as a recipient, please contact your Admin to unsubscribe.\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table width=\"800\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\" style=\"font-family:Segoe UI light; font-size:11pt\">\r\n<tbody>\r\n<tr height=\"25\">\r\n</tr>\r\n<tr>\r\n<td><i>Microsoft respects your privacy. To learn more, please read our <a href=\"http://www.microsoft.com/privacystatement/en-us/core/default.aspx\" title=\"Privacy\" style=\"color:#0072C6; text-decoration:underline\">\r\nPrivacy Statement.</a></i></td>\r\n</tr>\r\n<tr height=\"20\">\r\n</tr>\r\n<tr>\r\n<td><i>Microsoft Corporation<br>\r\nOne Microsoft Way<br>\r\nRedmond, WA, USA 98052</i></td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n</tr>\r\n<tr height=\"20\">\r\n</tr>\r\n<tr style=\"font-size:9pt\">\r\n<td><a href=\"https://portal.office.com/adminportal/home?ref=MessageCenter?showPref=true\" title=\"edit email settings\" style=\"color:#737373; text-decoration:underline\">Unsubscribe</a>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<img src=\"https://mucp.api.account.microsoft.com/m/v2/v?d=AIAAD2SH6GJOYCDXFOWHG7PUB6JQWPJLXP24HAWH7AQRAMNDNO2ETHMJE37RU3CKUFMWEGBWJLQFKGZ2KV66RKZUBQBPUGJSE2IPUC5COBDOLSNYL6YMF43FD4UGHI2OUZ6SOEM5Q53YCKXLQNGNYT4XXR22OXA&amp;i=AIAAD7RNP4EAVEDHV656UIYTO6KRCXLTNXVGR2Z53W4GOJDGOIGZTOQXTQ3PW64SCNUPTTZVHLQYUCGUMHSR6R7V6GU6SSSGTYILH2UKX4DLSUXWHYA3MKK5EXHUIQZKZOW3ZHYCAO5N2DFHZFLBCX3B42UHXHF3PDVPLYGUVUWWSFPTWOLBE2V45WDEBEN7RWZSO42DAVRQLGVCTUIQAMIBNSNPAJVZ2KW2VEVFVP66ABFMSL3MLPA2VAXEP5WO6QVLQ2BG6KG4XYQD3MLG2TKZWBZAANQ\" width=\"1\" height=\"1\">\r\n</body>\r\n</html>\r\n','o365mc@microsoft.com','btrackcrm@btrackcrm365.com','2018-10-08 06:21:15','2018-10-08 14:46:50'),
(17,'AAMkADljZDMzODBkLTJlMjMtNGM0Yy1hMTJiLTYwNzI1ZjAyMDBhNABGAAAAAADLUeJl8-KbS7e0VLNxqJJXBwB6P_2Me_vISI_4Fx0TvKenAAAAAAEMAAB6P_2Me_vISI_4Fx0TvKenAAAzxNDTAAA=',2,NULL,NULL,NULL,'<dffc0d9726dab761cd119d9533008672@btrack.io>','',1,0,'2018-10-08 14:49:38','Ponudba','aaaaaa\r\n','ziga.babnik@btrack.io','btrackcrm@btrackcrm365.com','2018-10-05 10:05:36','2018-10-08 14:46:51'),
(18,'AAMkADljZDMzODBkLTJlMjMtNGM0Yy1hMTJiLTYwNzI1ZjAyMDBhNABGAAAAAADLUeJl8-KbS7e0VLNxqJJXBwB6P_2Me_vISI_4Fx0TvKenAAAAAAEMAAB6P_2Me_vISI_4Fx0TvKenAAAzxNDSAAA=',3,NULL,NULL,NULL,'<CAAsNt8Pj5G8y+WfRkOo2a+wYyxYHbFch9R+DDF_c+5LBh5prLA@mail.gmail.com>','',1,0,NULL,'Ponudba','<html>\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<meta content=\"text/html; charset=utf-8\">\r\n</head>\r\n<body>\r\n<div dir=\"ltr\">Ponudba</div>\r\n</body>\r\n</html>\r\n','neicrihar@gmail.com','btrackcrm@btrackcrm365.com','2018-10-05 10:04:09','2018-10-08 14:46:51'),
(19,'AAMkADljZDMzODBkLTJlMjMtNGM0Yy1hMTJiLTYwNzI1ZjAyMDBhNABGAAAAAADLUeJl8-KbS7e0VLNxqJJXBwB6P_2Me_vISI_4Fx0TvKenAAAAAAEMAAB6P_2Me_vISI_4Fx0TvKenAAAx7tWqAAA=',4,NULL,NULL,NULL,'<169c26f79e5245baa6810344dd5d500d-JVKUGUBNKBZG6ZBNIJHDE7CPGM3DKTLFONZWCZ3FINSW45DFOJ6E2ZLTONQWOZKDMVXHIZLSIRUWOZLTOR6FG3LUOA======@microsoft.com>','',1,0,NULL,'Weekly digest: Office 365 changes','<html>\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<meta content=\"text/html; charset=utf-8\">\r\n<meta name=\"ROBOTS\" content=\"NOINDEX, NOFOLLOW\">\r\n<style>\r\n<!--\r\na\r\n	{text-decoration:none}\r\na:hover\r\n	{text-decoration:underline}\r\n.afooter\r\n	{color:#fff!important}\r\n-->\r\n</style>\r\n</head>\r\n<body>\r\n<table id=\"top\" width=\"800\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\">\r\n<tbody>\r\n<tr bgcolor=\"#F9F9F9\" height=\"60\">\r\n<td width=\"20\"></td>\r\n<td width=\"380\" align=\"left\" cellpadding=\"20\"><img src=\"http://image.email2.office.com/lib/fe81137272620d7a7d/m/1/logo_office365_large_corrected.png\">\r\n</td>\r\n<td width=\"380\" align=\"right\"><img src=\"http://image.email2.office.com/lib/fe81137272620d7a7d/m/1/logo_MSFT_rgb_corrected.png\">\r\n</td>\r\n<td width=\"20\"></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table width=\"800\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><br>\r\n<h1 style=\"text-align:center; color:#d83b01; font-size:18pt; font-family:Segoe UI Light\">\r\nHere is a summary of your messages from last week</h1>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"font-family:Segoe UI Light; font-size:13pt\"><br>\r\n<span style=\"font-family:Segoe UI semibold; font-size:13pt\">Organization:</span> HOTSPOT D.O.O.\r\n</td>\r\n</tr>\r\n<tr>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table width=\"800\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\">\r\n<tbody>\r\n<tr height=\"30\">\r\n</tr>\r\n<tr height=\"40\">\r\n<td width=\"20\" bgcolor=\"#CCE3F5\"></td>\r\n<td align=\"left\" bgcolor=\"#CCE3F5\" style=\"font-family:Segoe UI Light\">Is this digest useful to you? &nbsp;\r\n<a href=\"https://forms.office.com/Pages/ResponsePage.aspx?id=v4j5cvGGr0GRqy180BHbR-rMMzjkh-5MjuvzignA2eJUQURBR1k1MkRBUEY5MFRBSDNBWldWQlM4NC4u\" style=\"font-family:Segoe UI Light; color:#0078d7\">\r\nGive us feedback</a> </td>\r\n</tr>\r\n<tr height=\"10\">\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table width=\"800\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\">\r\n<tbody>\r\n<tr height=\"10\">\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table width=\"800\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td align=\"left\" cellpadding=\"20\" style=\"color:#d83b01; font-size:14pt; font-family:Segoe UI\">\r\nOffice 365 announcements from last week </td>\r\n<td align=\"right\"><a href=\"https://portal.office.com/adminportal/home?ref=MessageCenter?showPref=1\" title=\"set email\" style=\"color:#0078d7; font-family:Segoe UI Light; font-size:13pt\">Edit Message center preferences</a>\r\n</td>\r\n</tr>\r\n<tr height=\"50\">\r\n<td align=\"left\" cellpadding=\"20\" style=\"font-size:14pt; font-family:Segoe UI\">Please sign into your\r\n<u>admin</u> account to use any of the links below </td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table width=\"800\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\" style=\"font-size:13pt; font-family:Segoe UI light\">\r\n<tbody>\r\n<tr>\r\n<td width=\"80\" valign=\"top\">Sep 27</td>\r\n<td width=\"35\" valign=\"top\"><img src=\"http://image.email2.office.com/lib/fe81137272620d7a7d/m/1/logo_Office365.gif\"></td>\r\n<td><span style=\"color:#0078d7; font-family:Segoe UI semibold; font-size:13pt\">New feature: Ideas in Excel and PowerPoint Online</span><br>\r\n<span>Office continues infusing AI technologies across its apps to help people do their best work. Ideas is about bringing together related services and features in an intelligent way to create smart, actionable suggestions that save you time and enhance your\r\n content. Ideas proactively surfaces suggestions that are relevant and tailored to what you\'re working on, and meets you where you are in your workflow to reduce the time and effort you need to spend to get things done in Office. This message is...</span><span style=\"float:right; color:#0078d7\"><a href=\"https://portal.office.com/adminportal/home#/MessageCenter?id=MC149159&amp;MCLinkSource=DigestMail\" style=\"float:right\">\r\n More ...</a></span><br>\r\n<span style=\"color:#969696\">MC149159&nbsp;<a href=\"https://portal.office.com/adminportal/home#/MessageCenter?rating=5MC149159\">Like</a>&nbsp;|&nbsp;<a href=\"https://portal.office.com/adminportal/home#/MessageCenter?rating=1MC149159\">Dislike<br>\r\n</a><br>\r\n</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table width=\"800\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\" style=\"font-size:13pt; font-family:Segoe UI light\">\r\n<tbody>\r\n<tr>\r\n<td width=\"80\" valign=\"top\">Sep 27</td>\r\n<td width=\"35\" valign=\"top\"><img src=\"http://image.email2.office.com/lib/fe81137272620d7a7d/m/1/logo_Office365.gif\"></td>\r\n<td><span style=\"color:#0078d7; font-family:Segoe UI semibold; font-size:13pt\">Updated feature: New Calls app button location in Microsoft Teams</span><br>\r\n<span>In order to make the calling in Microsoft Teams more accessible, we are adding an additional calls app button to the left rail in the Teams home page. There is no change in available functionality, and if you have previously disabled calling in Microsoft\r\n Teams your settings will be honored. We’ll begin rolling this feature out soon. This message is associated with Microsoft 365 Roadmap ID: 33579.</span><span style=\"float:right; color:#0078d7\"><a href=\"https://portal.office.com/adminportal/home#/MessageCenter?id=MC149373&amp;MCLinkSource=DigestMail\" style=\"float:right\">\r\n More ...</a></span><br>\r\n<span style=\"color:#969696\">MC149373&nbsp;<a href=\"https://portal.office.com/adminportal/home#/MessageCenter?rating=5MC149373\">Like</a>&nbsp;|&nbsp;<a href=\"https://portal.office.com/adminportal/home#/MessageCenter?rating=1MC149373\">Dislike<br>\r\n</a><br>\r\n</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table width=\"800\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\" style=\"font-size:13pt; font-family:Segoe UI light\">\r\n<tbody>\r\n<tr>\r\n<td width=\"80\" valign=\"top\">Sep 27</td>\r\n<td width=\"35\" valign=\"top\"><img src=\"http://image.email2.office.com/lib/fe81137272620d7a7d/m/1/logo_Office365.gif\"></td>\r\n<td><span style=\"color:#0078d7; font-family:Segoe UI semibold; font-size:13pt\">Microsoft Search is now available for your organization</span><br>\r\n<span><img src=\"http://image.email2.office.com/lib/fe81137272620d7a7d/m/1/logo_actionrequired.png\"><b>&nbsp; Major Update:\r\n</b>General Availability</span><br>\r\n<span>With Microsoft Search, we’re introducing new organizational search experiences into the apps you use every day, including Bing.com and Windows, and our vision is to connect across your organization’s network of data. We’ll begin rolling this opt-in preview\r\n out starting today beginning with organizations located in EN locales, and the rollout will continue to other regions thereafter. This message is associated with Microsoft 365 Roadmap ID: 32738.</span><span style=\"float:right; color:#0078d7\"><a href=\"https://portal.office.com/adminportal/home#/MessageCenter?id=MC149212&amp;MCLinkSource=DigestMail\" style=\"float:right\">\r\n More ...</a></span><br>\r\n<span style=\"color:#969696\">MC149212&nbsp;<a href=\"https://portal.office.com/adminportal/home#/MessageCenter?rating=5MC149212\">Like</a>&nbsp;|&nbsp;<a href=\"https://portal.office.com/adminportal/home#/MessageCenter?rating=1MC149212\">Dislike<br>\r\n</a><br>\r\n</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table width=\"800\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\" style=\"font-size:13pt; font-family:Segoe UI light\">\r\n<tbody>\r\n<tr>\r\n<td width=\"80\" valign=\"top\">Sep 27</td>\r\n<td width=\"35\" valign=\"top\"><img src=\"http://image.email2.office.com/lib/fe81137272620d7a7d/m/1/logo_Office365.gif\"></td>\r\n<td><span style=\"color:#0078d7; font-family:Segoe UI semibold; font-size:13pt\">We’re rolling out multiple improvements to Project Online</span><br>\r\n<span>We’re excited to announce that multiple new and updated features are coming to Project Online. We are gradually starting to roll these changes out now.</span><span style=\"float:right; color:#0078d7\"><a href=\"https://portal.office.com/adminportal/home#/MessageCenter?id=MC148693&amp;MCLinkSource=DigestMail\" style=\"float:right\">\r\n More ...</a></span><br>\r\n<span style=\"color:#969696\">MC148693&nbsp;<a href=\"https://portal.office.com/adminportal/home#/MessageCenter?rating=5MC148693\">Like</a>&nbsp;|&nbsp;<a href=\"https://portal.office.com/adminportal/home#/MessageCenter?rating=1MC148693\">Dislike<br>\r\n</a><br>\r\n</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table width=\"800\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\" style=\"font-size:13pt; font-family:Segoe UI light\">\r\n<tbody>\r\n<tr>\r\n<td width=\"80\" valign=\"top\">Sep 26</td>\r\n<td width=\"35\" valign=\"top\"><img src=\"http://image.email2.office.com/lib/fe81137272620d7a7d/m/1/logo_Exchange.gif\"></td>\r\n<td><span style=\"color:#0078d7; font-family:Segoe UI semibold; font-size:13pt\">Outlook for Windows now blocks external content in S/MIME messages by default</span><br>\r\n<span><img src=\"http://image.email2.office.com/lib/fe81137272620d7a7d/m/1/logo_actionrequired.png\">&nbsp; Act By: Oct 10</span><br>\r\n<span>We are introducing added security measures in Outlook for Windows by blocking external content in S/MIME encrypted and signed messages by default and preventing overrides on a per-message basis. External content in this case refers to images that have\r\n been inserted as HTML URL to an external site often found in newsletters and advertisements and does not refer to inline rich content and inline images. Inline images, attachments, and other Outlook-supported content will continue to work in...</span><span style=\"float:right; color:#0078d7\"><a href=\"https://portal.office.com/adminportal/home#/MessageCenter?id=MC149276&amp;MCLinkSource=DigestMail\" style=\"float:right\">\r\n More ...</a></span><br>\r\n<span style=\"color:#969696\">MC149276&nbsp;<a href=\"https://portal.office.com/adminportal/home#/MessageCenter?rating=5MC149276\">Like</a>&nbsp;|&nbsp;<a href=\"https://portal.office.com/adminportal/home#/MessageCenter?rating=1MC149276\">Dislike<br>\r\n</a><br>\r\n</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table width=\"800\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\" style=\"font-size:13pt; font-family:Segoe UI light\">\r\n<tbody>\r\n<tr>\r\n<td width=\"80\" valign=\"top\">Sep 26</td>\r\n<td width=\"35\" valign=\"top\"><img src=\"http://image.email2.office.com/lib/fe81137272620d7a7d/m/1/logo_Office365.gif\"></td>\r\n<td><span style=\"color:#0078d7; font-family:Segoe UI semibold; font-size:13pt\">Multiple new Microsoft Secure Score features are now available</span><br>\r\n<span>We’re updating Microsoft Secure Score with multiple new features aimed at improving your organizations security. These new features are rolling out today. This message is associated with Microsoft 365 Roadmap ID: 27885. .</span><span style=\"float:right; color:#0078d7\"><a href=\"https://portal.office.com/adminportal/home#/MessageCenter?id=MC149266&amp;MCLinkSource=DigestMail\" style=\"float:right\">\r\n More ...</a></span><br>\r\n<span style=\"color:#969696\">MC149266&nbsp;<a href=\"https://portal.office.com/adminportal/home#/MessageCenter?rating=5MC149266\">Like</a>&nbsp;|&nbsp;<a href=\"https://portal.office.com/adminportal/home#/MessageCenter?rating=1MC149266\">Dislike<br>\r\n</a><br>\r\n</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table width=\"800\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\" style=\"font-size:13pt; font-family:Segoe UI light\">\r\n<tbody>\r\n<tr>\r\n<td width=\"80\" valign=\"top\">Sep 25</td>\r\n<td width=\"35\" valign=\"top\"><img src=\"http://image.email2.office.com/lib/fe81137272620d7a7d/m/1/logo_Office365.gif\"></td>\r\n<td><span style=\"color:#0078d7; font-family:Segoe UI semibold; font-size:13pt\">New schedule management and Home screen features coming to Teams; StaffHub will be retired</span><br>\r\n<span>We are pleased to announce that Microsoft Teams is evolving to include a new set of capabilities that will simplify schedule management and help deliver the tools for every worker to get the job done. Because our investments in schedule management have\r\n been developed with Firstline Workers in mind, we’ve decided to retire Microsoft StaffHub and bring this capability in addition to a new Home screen experience, into Teams, making it the platform for all workers.Customers using Microsoft...</span><span style=\"float:right; color:#0078d7\"><a href=\"https://portal.office.com/adminportal/home#/MessageCenter?id=MC149144&amp;MCLinkSource=DigestMail\" style=\"float:right\">\r\n More ...</a></span><br>\r\n<span style=\"color:#969696\">MC149144&nbsp;<a href=\"https://portal.office.com/adminportal/home#/MessageCenter?rating=5MC149144\">Like</a>&nbsp;|&nbsp;<a href=\"https://portal.office.com/adminportal/home#/MessageCenter?rating=1MC149144\">Dislike<br>\r\n</a><br>\r\n</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table width=\"800\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\" style=\"font-size:13pt; font-family:Segoe UI light\">\r\n<tbody>\r\n<tr>\r\n<td width=\"80\" valign=\"top\">Sep 25</td>\r\n<td width=\"35\" valign=\"top\"><img src=\"http://image.email2.office.com/lib/fe81137272620d7a7d/m/1/logo_Office365.gif\"></td>\r\n<td><span style=\"color:#0078d7; font-family:Segoe UI semibold; font-size:13pt\">New feature: Autosave will now be enabled by-default</span><br>\r\n<span><img src=\"http://image.email2.office.com/lib/fe81137272620d7a7d/m/1/logo_actionrequired.png\"><b>&nbsp; Major Update:\r\n</b>General Availability</span><br>\r\n<span>AutoSave will be enabled by default in the upcoming semi-annual release of Office. This message is associated with Microsoft 365 Roadmap ID: 33017.</span><span style=\"float:right; color:#0078d7\"><a href=\"https://portal.office.com/adminportal/home#/MessageCenter?id=MC149133&amp;MCLinkSource=DigestMail\" style=\"float:right\">\r\n More ...</a></span><br>\r\n<span style=\"color:#969696\">MC149133&nbsp;<a href=\"https://portal.office.com/adminportal/home#/MessageCenter?rating=5MC149133\">Like</a>&nbsp;|&nbsp;<a href=\"https://portal.office.com/adminportal/home#/MessageCenter?rating=1MC149133\">Dislike<br>\r\n</a><br>\r\n</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table width=\"800\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\" style=\"font-family:Segoe UI semibold; font-size:11pt; color:#d83b01\">\r\n<tbody>\r\n<tr height=\"5\">\r\n</tr>\r\n<tr>\r\n<td><a href=\"https://portal.office.com/adminportal/home?switchtomodern=true#/MessageCenter\" style=\"color:#d83b01\">See all my messages on Office 365 message center &nbsp;\r\n<img src=\"http://image.email2.office.com/lib/fe81137272620d7a7d/m/1/button_go.png\" style=\"vertical-align:middle\"></a>\r\n</td>\r\n</tr>\r\n<tr height=\"25\">\r\n</tr>\r\n<tr>\r\n<td style=\"color:#737373\">Need help translating these messages? <a href=\"https://support.office.com/en-us/article/Turn-on-language-translation-for-Message-center-posts-9f7c2ff2-af65-4557-8840-0b84ce96d9bc?ui=en-US&amp;rs=en-US&amp;ad=US\" style=\"color:#0078d7\">\r\nClick Here</a> </td>\r\n</tr>\r\n<tr height=\"25\">\r\n</tr>\r\n<tr>\r\n<td valign=\"middle\" style=\"font-family:Segoe UI Light; font-size:13pt; color:#212121\">\r\nThanks, <br>\r\nThe Microsoft Office 365 team </td>\r\n</tr>\r\n<tr height=\"25\">\r\n</tr>\r\n<tr>\r\n<td><img src=\"http://image.email2.office.com/lib/fe81137272620d7a7d/m/1/logo_MSFT_rgb_wht.png\">\r\n</td>\r\n</tr>\r\n<tr height=\"20\">\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table width=\"800\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\">\r\n<tbody>\r\n<tr style=\"font-family:Segoe UI light; font-size:11pt; color:#737373\">\r\n<td>This admin digest email may not include all Message Center announcements from the past week. It is personalized for your organization and reflects your individual preferences.\r\n<br>\r\n<br>\r\nTo customize what\'s included in this email, who gets it, or to unsubscribe, <a href=\"https://portal.office.com/adminportal/home?ref=MessageCenter?showPref=1\" title=\"set email preferences\" style=\"color:#0078d7\">\r\nset your Message center preferences.</a> If you are receiving this email because your Admin added you as a recipient, please contact your Admin to unsubscribe.\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table width=\"800\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\" style=\"font-family:Segoe UI light; font-size:11pt\">\r\n<tbody>\r\n<tr height=\"25\">\r\n</tr>\r\n<tr>\r\n<td><i>Microsoft respects your privacy. To learn more, please read our <a href=\"http://www.microsoft.com/privacystatement/en-us/core/default.aspx\" title=\"Privacy\" style=\"color:#0072C6; text-decoration:underline\">\r\nPrivacy Statement.</a></i></td>\r\n</tr>\r\n<tr height=\"20\">\r\n</tr>\r\n<tr>\r\n<td><i>Microsoft Corporation<br>\r\nOne Microsoft Way<br>\r\nRedmond, WA, USA 98052</i></td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n</tr>\r\n<tr height=\"20\">\r\n</tr>\r\n<tr style=\"font-size:9pt\">\r\n<td><a href=\"https://portal.office.com/adminportal/home?ref=MessageCenter?showPref=true\" title=\"edit email settings\" style=\"color:#737373; text-decoration:underline\">Unsubscribe</a>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<img src=\"https://mucp.api.account.microsoft.com/m/v2/v?d=AIAADHC63LQHMOBHONGWWKHPINGMTYS3C7L2Q6DUIOLLGDZ77TGL2Z3R2GRIELWWYO3ED5EPWFOLCLYKZPTYPWNFQOKRYDFTJATOPFUHGWXT7T4RZBAZ4UNJDCLTOJOCGCHAPAJDFAWZQTV5DXN3HXF4HTBSJEQ&amp;i=AIAAD6CSETI5VYSK7Y2NMMMOALSDQIAPGSNNMYJW5PPL5KN3R7W67CDCPV7OYQV5FUT6DDRXUYBI72MLQTOJX2MXTL2QR3SNRF7YLSQIL6TCEFI6DYDJOEUX4LXRXYTAE3AVFVN45RIUGNV5TKGV6FLFYYNU233HDTCDJJT73UOIH3UOP44WXQUL7XDEJHEMUZVZ5HQFNW23IXXVV5JDUKPGHPP7CYSJCUNQ4U4KXFNXAH2WTLC7ZS5G3VUL46N5TCCAF4GWNVNWBXQ2RROLTGTVXTAMYIA\" width=\"1\" height=\"1\">\r\n</body>\r\n</html>\r\n','o365mc@microsoft.com','btrackcrm@btrackcrm365.com','2018-10-01 06:23:12','2018-10-08 14:46:51'),
(20,'AAMkADljZDMzODBkLTJlMjMtNGM0Yy1hMTJiLTYwNzI1ZjAyMDBhNABGAAAAAADLUeJl8-KbS7e0VLNxqJJXBwB6P_2Me_vISI_4Fx0TvKenAAAAAAEMAAB6P_2Me_vISI_4Fx0TvKenAAAvcxMPAAA=',5,NULL,NULL,NULL,'<7ebdde8004434422989ad601d5114482-JVKUGUBNKBZG6ZBNIJHDE7CPGM3DKTLFONZWCZ3FINSW45DFOJ6E2ZLTONQWOZKDMVXHIZLSJVQWU33SINUGC3THMV6FG3LUOA======@microsoft.com>','',1,0,NULL,'Message Center Major Change Update Notification','<html>\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<meta content=\"text/html; charset=utf-8\">\r\n<meta name=\"ROBOTS\" content=\"NOINDEX, NOFOLLOW\">\r\n<style>\r\n<!--\r\na\r\n	{text-decoration:none}\r\na:hover\r\n	{text-decoration:underline}\r\n.afooter\r\n	{color:#fff!important}\r\n-->\r\n</style>\r\n</head>\r\n<body>\r\n<table id=\"top\" width=\"800\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\">\r\n<tbody>\r\n<tr bgcolor=\"#F9F9F9\" height=\"60\">\r\n<td width=\"20\"></td>\r\n<td width=\"380\" align=\"left\" cellpadding=\"20\"><img src=\"http://image.email2.office.com/lib/fe81137272620d7a7d/m/1/logo_office365_large_corrected.png\">\r\n</td>\r\n<td width=\"380\" align=\"right\"><img src=\"http://image.email2.office.com/lib/fe81137272620d7a7d/m/1/logo_MSFT_rgb_corrected.png\">\r\n</td>\r\n<td width=\"20\"></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table width=\"800\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size:13pt\"><br>\r\n<span style=\"font-size:13pt\">Organization:</span> HOTSPOT D.O.O. </td>\r\n</tr>\r\n<tr>\r\n<td style=\"font-size:13pt\"><span style=\"font-size:13pt\"><b>Microsoft Search is now available for your organization</b></span>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table height=\"10\" width=\"800\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\">\r\n</table>\r\n<table height=\"60\" width=\"800\" cellpadding=\"2\" bgcolor=\"#E6E6E6\" cellspacing=\"5\" border=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td width=\"3\" bgcolor=\"#E6E6E6\"></td>\r\n<td valign=\"bottom\">Major update: General Availability rollout started </td>\r\n<td valign=\"bottom\"></td>\r\n</tr>\r\n<tr>\r\n<td width=\"3\" bgcolor=\"#E6E6E6\"></td>\r\n<td valign=\"top\">Applied to: All customers </td>\r\n<td></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table width=\"800\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><br>\r\n<table width=\"800\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\" style=\"font-size:13pt; font-family:Segoe UI light\">\r\nWith Microsoft Search, we’re introducing new organizational search experiences into the apps you use every day, including Bing.com and Windows, and our vision is to connect across your organization’s network of data.<br>\r\n<br>\r\nWe’ll begin rolling this opt-in preview out starting today beginning with organizations located in EN locales, and the rollout will continue to other regions thereafter.\r\n<br>\r\n<br>\r\nThis message is associated with Microsoft 365 Roadmap ID: <a href=\"https://products.office.com/business/office-365-roadmap?filters=&amp;featureid=32738\">\r\n32738</a>.<br>\r\n<br>\r\n[How does this affect me?] <br>\r\nMicrosoft Search is a new search offering that helps you save time by bringing you the best of the web and work in a single experience. Microsoft Search in Bing contains a tenant-level on/off switch, to give you some control with the rollout of this within\r\n your organization. Microsoft Search in Bing is currently released off-by-default, to give you a chance to explore the new capabilities and decide whether or not you would like to enable the service for your organization.\r\n<br>\r\n<br>\r\nThis feature is not available for sovereign cloud environments Gallatin, Blackforest, GCC, or GCC High.\r\n<br>\r\n<br>\r\n[What do I need to do to prepare for this change?] <br>\r\nIf you would like to enable Microsoft Search for your organization, please click <a href=\"https://www.bing.com/business/explore\">\r\nhere</a> to enroll. Microsoft Search is currently off-by-default.<br>\r\n<br>\r\nPlease click Additional information to learn more about controls to enable and disable Microsoft Search, as well as questions on security, trust and compliance.\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table height=\"60\" width=\"800\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\">\r\n<tbody>\r\n<tr height=\"15\">\r\n</tr>\r\n<tr>\r\n<td><a href=\"https://portal.office.com/adminportal/home\" title=\"set email\" style=\"color:#0078d7\">Sign in to the Office 365 Admin center</a> to use the links below:\r\n</td>\r\n</tr>\r\n<tr height=\"15\">\r\n</tr>\r\n<tr>\r\n<td><a href=\"https://portal.office.com/adminportal/home#/MessageCenter?id=MC149212&amp;MCLinkSource=MajorUpdate\" title=\"set email\" style=\"color:#0078d7\">View this message in the Office 365 message center</a>\r\n</td>\r\n</tr>\r\n<tr height=\"15\">\r\n</tr>\r\n<tr>\r\n<td>To customize what\'s included in this email, who gets it, or to unsubscribe, <a href=\"https://portal.office.com/adminportal/home?ref=MessageCenter?showPref=1\" title=\"set email\" style=\"color:#0078d7\">\r\nset your Message center preferences.</a> <br>\r\nIf you are receiving this email because your Admin added you as a recipient, please contact your Admin to unsubscribe.\r\n</td>\r\n</tr>\r\n<tr height=\"15\">\r\n</tr>\r\n<tr>\r\n<td><a href=\"https://portal.office.com/adminportal/home#/companyprofile\" title=\"set email\" style=\"color:#0078d7\">Edit release preferences</a>\r\n<br>\r\nChoose the release track for your organization. Use these settings to join First Release if you haven\'t already.\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<br>\r\n<table width=\"800\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\" style=\"font-size:11pt\">\r\n<tbody>\r\n<tr>\r\n<td><i>Microsoft respects your privacy. To learn more, please read our <a href=\"http://www.microsoft.com/privacystatement/en-us/core/default.aspx\" title=\"Privacy\" style=\"color:#0072C6; text-decoration:underline\">\r\nPrivacy Statement.</a></i></td>\r\n</tr>\r\n<tr height=\"20\">\r\n</tr>\r\n<tr>\r\n<td><i>Microsoft Corporation<br>\r\nOne Microsoft Way<br>\r\nRedmond, WA, USA 98052</i></td>\r\n</tr>\r\n<tr height=\"20\">\r\n</tr>\r\n<tr style=\"font-size:9pt\">\r\n<td><a href=\"https://portal.office.com/adminportal/home?ref=MessageCenter?showPref=true\" title=\"edit email settings\" style=\"color:#737373; text-decoration:underline\">Unsubscribe</a>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<img src=\"https://mucp.api.account.microsoft.com/m/v2/v?d=AIAADOJNLXNA65DL4BZC6PGI3MWRTD7XBB2YMLJCRLBGEXOU2ZO27TSURG45PYBQQBYEXLKR55FSCLQWIION6L2YOKIC64NCOEUAXFCFPUGMYJ6VZTMGFXO6PJTSN7I4DHUBDRHDFF3ACERDSBVWTKY6EM5ID7A&amp;i=AIAACFW3YLWL5TSHPBQEFUBIEMFDWMTN7GS6GKJU3RYTKJOUIUZX5JK7SUELQBPWFI6GVNS5UGHHZY5BKEZTFPYIFVDCFSO2RZP6PSYHNG25GFZ7ZCJGTK5CPEY7XDSO45YXAZC2QKKCA7MDQQMVGPX4ZW6XKBEGVJHMGVZBSAPE2MZLFXONNP4FJSC6UF7IX2POE7WFA2N66R4VE7WIWKOM3MJPFO7DVROH7ERK52VPVSSRUEI73O62CAOP7MFTWYZHSH2NPXU6JUSO4Z4CZDZFUFNAL3Y\" width=\"1\" height=\"1\">\r\n</body>\r\n</html>\r\n','o365mc@microsoft.com','btrackcrm@btrackcrm365.com','2018-09-28 10:11:28','2018-10-08 14:46:51'),
(21,'AAMkADljZDMzODBkLTJlMjMtNGM0Yy1hMTJiLTYwNzI1ZjAyMDBhNABGAAAAAADLUeJl8-KbS7e0VLNxqJJXBwB6P_2Me_vISI_4Fx0TvKenAAAAAAEMAAB6P_2Me_vISI_4Fx0TvKenAAAvcxMOAAA=',6,NULL,NULL,NULL,'<CAAsNt8N54t3HjyJDGdyTtNwgunZ_-W+rarQmHt8rP=nO42q_7g@mail.gmail.com>','',1,0,NULL,'To je ?isto novi mail z novim subjectom','<html>\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<meta content=\"text/html; charset=utf-8\">\r\n</head>\r\n<body>\r\n<div dir=\"ltr\">aaaaa</div>\r\n</body>\r\n</html>\r\n','neicrihar@gmail.com','btrackcrm@btrackcrm365.com','2018-09-27 15:21:06','2018-10-08 14:46:51'),
(22,'AAMkADljZDMzODBkLTJlMjMtNGM0Yy1hMTJiLTYwNzI1ZjAyMDBhNABGAAAAAADLUeJl8-KbS7e0VLNxqJJXBwB6P_2Me_vISI_4Fx0TvKenAAAAAAEMAAB6P_2Me_vISI_4Fx0TvKenAAAue5r9AAA=',7,NULL,NULL,NULL,'<e8f170ce362f4a818e01d8ed9bdf1096-JVKUGUBNKBZG6ZBNIJHDE7CPGM3DKTLFONZWCZ3FINSW45DFOJ6E2ZLTONQWOZKDMVXHIZLSJVQWU33SINUGC3THMV6FG3LUOA======@microsoft.com>','',1,0,NULL,'Message Center Major Change Update Notification','<html>\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<meta content=\"text/html; charset=utf-8\">\r\n<meta name=\"ROBOTS\" content=\"NOINDEX, NOFOLLOW\">\r\n<style>\r\n<!--\r\na\r\n	{text-decoration:none}\r\na:hover\r\n	{text-decoration:underline}\r\n.afooter\r\n	{color:#fff!important}\r\n-->\r\n</style>\r\n</head>\r\n<body>\r\n<table id=\"top\" width=\"800\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\">\r\n<tbody>\r\n<tr bgcolor=\"#F9F9F9\" height=\"60\">\r\n<td width=\"20\"></td>\r\n<td width=\"380\" align=\"left\" cellpadding=\"20\"><img src=\"http://image.email2.office.com/lib/fe81137272620d7a7d/m/1/logo_office365_large_corrected.png\">\r\n</td>\r\n<td width=\"380\" align=\"right\"><img src=\"http://image.email2.office.com/lib/fe81137272620d7a7d/m/1/logo_MSFT_rgb_corrected.png\">\r\n</td>\r\n<td width=\"20\"></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table width=\"800\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size:13pt\"><br>\r\n<span style=\"font-size:13pt\">Organization:</span> HOTSPOT D.O.O. </td>\r\n</tr>\r\n<tr>\r\n<td style=\"font-size:13pt\"><span style=\"font-size:13pt\"><b>New feature: Autosave will now be enabled by-default</b></span>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table height=\"10\" width=\"800\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\">\r\n</table>\r\n<table height=\"60\" width=\"800\" cellpadding=\"2\" bgcolor=\"#E6E6E6\" cellspacing=\"5\" border=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td width=\"3\" bgcolor=\"#E6E6E6\"></td>\r\n<td valign=\"bottom\">Major update: General Availability rollout started </td>\r\n<td valign=\"bottom\"></td>\r\n</tr>\r\n<tr>\r\n<td width=\"3\" bgcolor=\"#E6E6E6\"></td>\r\n<td valign=\"top\">Applied to: All Customers </td>\r\n<td></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table width=\"800\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><br>\r\n<table width=\"800\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\" style=\"font-size:13pt; font-family:Segoe UI light\">\r\nAutoSave will be enabled by default in the upcoming semi-annual release of Office.\r\n<br>\r\n<br>\r\nThis message is associated with Microsoft 365 Roadmap ID: <a href=\"https://products.office.com/business/office-365-roadmap?filters=&amp;featureid=33017\">\r\n33017</a>.<br>\r\n<br>\r\n[How does this affect me?]<br>\r\nThis change means that for documents stored in OneDrive for Business or SharePoint Online, your users will not have to worry about losing their changes. Changes will be stored in the cloud automatically, and users will no longer have to explicitly press Ctrl\r\n &#43; S or the Save button. <br>\r\n<br>\r\nHowever, they will have to understand this change in behavior so that they do not make accidental changes to documents when they are working with template documents, performing hypothetical changes to spreadsheets, or reading a finalized document.<br>\r\n<br>\r\nThis change will apply in the upcoming Semi-Annual Channel release in late September and will initially apply to Targeted Release organizations, then it will become available in the Semi-Annual Channel release in January 2019 for all Office 365 organizations.<br>\r\n<br>\r\n[What do I need to do to prepare for this change?]<br>\r\nWe recommend that you notify your users about this upcoming change and educate them about how to best take advantage of this new feature in Office 365. Please review\r\n<a href=\"https://support.office.com/article/what-it-administrators-should-know-about-autosave-88e0f80f-e5ea-441b-9c5a-259f08490ae7\">\r\nthis page</a> for an Office 365 administrator guide to AutoSave.<br>\r\n<br>\r\nFor a more general guide on the AutoSave feature, click Additional Information below.\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table height=\"60\" width=\"800\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\">\r\n<tbody>\r\n<tr height=\"15\">\r\n</tr>\r\n<tr>\r\n<td><a href=\"https://portal.office.com/adminportal/home\" title=\"set email\" style=\"color:#0078d7\">Sign in to the Office 365 Admin center</a> to use the links below:\r\n</td>\r\n</tr>\r\n<tr height=\"15\">\r\n</tr>\r\n<tr>\r\n<td><a href=\"https://portal.office.com/adminportal/home#/MessageCenter?id=MC149133&amp;MCLinkSource=MajorUpdate\" title=\"set email\" style=\"color:#0078d7\">View this message in the Office 365 message center</a>\r\n</td>\r\n</tr>\r\n<tr height=\"15\">\r\n</tr>\r\n<tr>\r\n<td>To customize what\'s included in this email, who gets it, or to unsubscribe, <a href=\"https://portal.office.com/adminportal/home?ref=MessageCenter?showPref=1\" title=\"set email\" style=\"color:#0078d7\">\r\nset your Message center preferences.</a> <br>\r\nIf you are receiving this email because your Admin added you as a recipient, please contact your Admin to unsubscribe.\r\n</td>\r\n</tr>\r\n<tr height=\"15\">\r\n</tr>\r\n<tr>\r\n<td><a href=\"https://portal.office.com/adminportal/home#/companyprofile\" title=\"set email\" style=\"color:#0078d7\">Edit release preferences</a>\r\n<br>\r\nChoose the release track for your organization. Use these settings to join First Release if you haven\'t already.\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<br>\r\n<table width=\"800\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\" style=\"font-size:11pt\">\r\n<tbody>\r\n<tr>\r\n<td><i>Microsoft respects your privacy. To learn more, please read our <a href=\"http://www.microsoft.com/privacystatement/en-us/core/default.aspx\" title=\"Privacy\" style=\"color:#0072C6; text-decoration:underline\">\r\nPrivacy Statement.</a></i></td>\r\n</tr>\r\n<tr height=\"20\">\r\n</tr>\r\n<tr>\r\n<td><i>Microsoft Corporation<br>\r\nOne Microsoft Way<br>\r\nRedmond, WA, USA 98052</i></td>\r\n</tr>\r\n<tr height=\"20\">\r\n</tr>\r\n<tr style=\"font-size:9pt\">\r\n<td><a href=\"https://portal.office.com/adminportal/home?ref=MessageCenter?showPref=true\" title=\"edit email settings\" style=\"color:#737373; text-decoration:underline\">Unsubscribe</a>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<img src=\"https://mucp.api.account.microsoft.com/m/v2/v?d=AIAAD33EWGG5RM7LDASTAD3QP6KAZ6HFU2OGXNWYWHAQDPCGFW6DSU3X2AMAT5WGDIIEH4OHFPJ3U5P3TQV5DUO5XQY4F5M2C76FIJ6LCX4QB3N6G3FS2DFFDSPWO3UET3OFBRA23MZYDCYNEOQJK7SA6GEXFGI&amp;i=AIAACAOCZHMPBCX3HRYTNZAIQS4YAOFNN7ZUYU237YRLTC2VXPBDZOS4HXYYYLPGUBYIOZ6Z7GZL2NXSS3K36DKQ7D6DASHAFRX52T7OWM7EXCBJKUJIBRHFPVJJHGCRY3M5K4QWCDX2UIAKTTI5PXLQ4NUIUXWX4XDOVAVDC5YLG53XZPQCJYHLRBKTST2CR2VY5LNC4CKIKFJS3NJ5DFXYU2HKC3727E3HCJC7HAW66XEFBYN2GDTJVTTJIRXGBK55BHQHB2SMUMBW4HRCE3AUVFDDBGA\" width=\"1\" height=\"1\">\r\n</body>\r\n</html>\r\n','o365mc@microsoft.com','btrackcrm@btrackcrm365.com','2018-09-26 21:56:12','2018-10-08 14:46:51'),
(23,'AAMkADljZDMzODBkLTJlMjMtNGM0Yy1hMTJiLTYwNzI1ZjAyMDBhNABGAAAAAADLUeJl8-KbS7e0VLNxqJJXBwB6P_2Me_vISI_4Fx0TvKenAAAAAAEMAAB6P_2Me_vISI_4Fx0TvKenAAAuF_rWAAA=',8,NULL,NULL,NULL,'<CAAsNt8MPWN5kxCG=NbT7Etxvnqd8TnQj3=VS5sg+Bnuaza17Mw@mail.gmail.com>','',1,0,NULL,'Re: Test conversation','<html>\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<meta content=\"text/html; charset=utf-8\">\r\n</head>\r\n<body>\r\n<div dir=\"ltr\">this is a reply to the reply</div>\r\n<br>\r\n<div class=\"gmail_quote\">\r\n<div dir=\"ltr\">V V tor., 25. sep. 2018 ob 10:40 je oseba Jasmina Zivanovic &lt;<a href=\"mailto:btrackcrm@btrackcrm365.com\">btrackcrm@btrackcrm365.com</a>&gt; napisala:<br>\r\n</div>\r\n<blockquote class=\"gmail_quote\" style=\"margin:0 0 0 .8ex; border-left:1px #ccc solid; padding-left:1ex\">\r\n<div>\r\n<p>this is a reply</p>\r\n</div>\r\n</blockquote>\r\n</div>\r\n</body>\r\n</html>\r\n','neicrihar@gmail.com','btrackcrm@btrackcrm365.com','2018-09-25 10:41:07','2018-10-08 14:46:51'),
(24,'AAMkADljZDMzODBkLTJlMjMtNGM0Yy1hMTJiLTYwNzI1ZjAyMDBhNABGAAAAAADLUeJl8-KbS7e0VLNxqJJXBwB6P_2Me_vISI_4Fx0TvKenAAAAAAEMAAB6P_2Me_vISI_4Fx0TvKenAAAuF_rVAAA=',8,NULL,NULL,NULL,'<CAAsNt8PrrZJtao28P9vUXT_K9mGnzgEpD5y5+90wksFTVy9_JQ@mail.gmail.com>','',1,0,NULL,'Test conversation','<html>\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<meta content=\"text/html; charset=utf-8\">\r\n</head>\r\n<body>\r\n<div dir=\"ltr\">aaaaa</div>\r\n</body>\r\n</html>\r\n','neicrihar@gmail.com','btrackcrm@btrackcrm365.com','2018-09-25 10:39:18','2018-10-08 14:46:51'),
(25,'AAMkADljZDMzODBkLTJlMjMtNGM0Yy1hMTJiLTYwNzI1ZjAyMDBhNABGAAAAAADLUeJl8-KbS7e0VLNxqJJXBwB6P_2Me_vISI_4Fx0TvKenAAAAAAEMAAB6P_2Me_vISI_4Fx0TvKenAAAp2dXAAAA=',9,NULL,NULL,NULL,'<6fe631f4369e4eaea917e83ef424c957-JVKUGUBNKBZG6ZBNIJHDE7CPGM3DKTLFONZWCZ3FINSW45DFOJ6E2ZLTONQWOZKDMVXHIZLSIRUWOZLTOR6FG3LUOA======@microsoft.com>','',1,0,NULL,'Weekly digest: Office 365 changes','<html>\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<meta content=\"text/html; charset=utf-8\">\r\n<meta name=\"ROBOTS\" content=\"NOINDEX, NOFOLLOW\">\r\n<style>\r\n<!--\r\na\r\n	{text-decoration:none}\r\na:hover\r\n	{text-decoration:underline}\r\n.afooter\r\n	{color:#fff!important}\r\n-->\r\n</style>\r\n</head>\r\n<body>\r\n<table id=\"top\" width=\"800\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\">\r\n<tbody>\r\n<tr bgcolor=\"#F9F9F9\" height=\"60\">\r\n<td width=\"20\"></td>\r\n<td width=\"380\" align=\"left\" cellpadding=\"20\"><img src=\"http://image.email2.office.com/lib/fe81137272620d7a7d/m/1/logo_office365_large_corrected.png\">\r\n</td>\r\n<td width=\"380\" align=\"right\"><img src=\"http://image.email2.office.com/lib/fe81137272620d7a7d/m/1/logo_MSFT_rgb_corrected.png\">\r\n</td>\r\n<td width=\"20\"></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table width=\"800\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><br>\r\n<h1 style=\"text-align:center; color:#d83b01; font-size:18pt; font-family:Segoe UI Light\">\r\nHere is a summary of your messages from last week</h1>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"font-family:Segoe UI Light; font-size:13pt\"><br>\r\n<span style=\"font-family:Segoe UI semibold; font-size:13pt\">Organization:</span> HOTSPOT D.O.O.\r\n</td>\r\n</tr>\r\n<tr>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table width=\"800\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\">\r\n<tbody>\r\n<tr height=\"30\">\r\n</tr>\r\n<tr height=\"40\">\r\n<td width=\"20\" bgcolor=\"#CCE3F5\"></td>\r\n<td align=\"left\" bgcolor=\"#CCE3F5\" style=\"font-family:Segoe UI Light\">Is this digest useful to you? &nbsp;\r\n<a href=\"https://forms.office.com/Pages/ResponsePage.aspx?id=v4j5cvGGr0GRqy180BHbR-rMMzjkh-5MjuvzignA2eJUQURBR1k1MkRBUEY5MFRBSDNBWldWQlM4NC4u\" style=\"font-family:Segoe UI Light; color:#0078d7\">\r\nGive us feedback</a> </td>\r\n</tr>\r\n<tr height=\"10\">\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table width=\"800\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\">\r\n<tbody>\r\n<tr height=\"10\">\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table width=\"800\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td align=\"left\" cellpadding=\"20\" style=\"color:#d83b01; font-size:14pt; font-family:Segoe UI\">\r\nOffice 365 announcements from last week </td>\r\n<td align=\"right\"><a href=\"https://portal.office.com/adminportal/home?ref=MessageCenter?showPref=1\" title=\"set email\" style=\"color:#0078d7; font-family:Segoe UI Light; font-size:13pt\">Edit Message center preferences</a>\r\n</td>\r\n</tr>\r\n<tr height=\"50\">\r\n<td align=\"left\" cellpadding=\"20\" style=\"font-size:14pt; font-family:Segoe UI\">Please sign into your\r\n<u>admin</u> account to use any of the links below </td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table width=\"800\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\" style=\"font-size:13pt; font-family:Segoe UI light\">\r\n<tbody>\r\n<tr>\r\n<td width=\"80\" valign=\"top\">Sep 18</td>\r\n<td width=\"35\" valign=\"top\"><img src=\"http://image.email2.office.com/lib/fe81137272620d7a7d/m/1/logo_Office365.gif\"></td>\r\n<td><span style=\"color:#0078d7; font-family:Segoe UI semibold; font-size:13pt\">We’re rolling out multiple improvements to Project Online</span><br>\r\n<span>We’re excited to announce that multiple new and updated features are coming to Project Online. We are gradually starting to roll these changes out now.</span><span style=\"float:right; color:#0078d7\"><a href=\"https://portal.office.com/adminportal/home#/MessageCenter?id=MC148693&amp;MCLinkSource=DigestMail\" style=\"float:right\">\r\n More ...</a></span><br>\r\n<span style=\"color:#969696\">MC148693&nbsp;<a href=\"https://portal.office.com/adminportal/home#/MessageCenter?rating=5MC148693\">Like</a>&nbsp;|&nbsp;<a href=\"https://portal.office.com/adminportal/home#/MessageCenter?rating=1MC148693\">Dislike<br>\r\n</a><br>\r\n</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table width=\"800\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\" style=\"font-family:Segoe UI semibold; font-size:11pt; color:#d83b01\">\r\n<tbody>\r\n<tr height=\"5\">\r\n</tr>\r\n<tr>\r\n<td><a href=\"https://portal.office.com/adminportal/home?switchtomodern=true#/MessageCenter\" style=\"color:#d83b01\">See all my messages on Office 365 message center &nbsp;\r\n<img src=\"http://image.email2.office.com/lib/fe81137272620d7a7d/m/1/button_go.png\" style=\"vertical-align:middle\"></a>\r\n</td>\r\n</tr>\r\n<tr height=\"25\">\r\n</tr>\r\n<tr>\r\n<td style=\"color:#737373\">Need help translating these messages? <a href=\"https://support.office.com/en-us/article/Turn-on-language-translation-for-Message-center-posts-9f7c2ff2-af65-4557-8840-0b84ce96d9bc?ui=en-US&amp;rs=en-US&amp;ad=US\" style=\"color:#0078d7\">\r\nClick Here</a> </td>\r\n</tr>\r\n<tr height=\"25\">\r\n</tr>\r\n<tr>\r\n<td valign=\"middle\" style=\"font-family:Segoe UI Light; font-size:13pt; color:#212121\">\r\nThanks, <br>\r\nThe Microsoft Office 365 team </td>\r\n</tr>\r\n<tr height=\"25\">\r\n</tr>\r\n<tr>\r\n<td><img src=\"http://image.email2.office.com/lib/fe81137272620d7a7d/m/1/logo_MSFT_rgb_wht.png\">\r\n</td>\r\n</tr>\r\n<tr height=\"20\">\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table width=\"800\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\">\r\n<tbody>\r\n<tr style=\"font-family:Segoe UI light; font-size:11pt; color:#737373\">\r\n<td>This admin digest email may not include all Message Center announcements from the past week. It is personalized for your organization and reflects your individual preferences.\r\n<br>\r\n<br>\r\nTo customize what\'s included in this email, who gets it, or to unsubscribe, <a href=\"https://portal.office.com/adminportal/home?ref=MessageCenter?showPref=1\" title=\"set email preferences\" style=\"color:#0078d7\">\r\nset your Message center preferences.</a> If you are receiving this email because your Admin added you as a recipient, please contact your Admin to unsubscribe.\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table width=\"800\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\" style=\"font-family:Segoe UI light; font-size:11pt\">\r\n<tbody>\r\n<tr height=\"25\">\r\n</tr>\r\n<tr>\r\n<td><i>Microsoft respects your privacy. To learn more, please read our <a href=\"http://www.microsoft.com/privacystatement/en-us/core/default.aspx\" title=\"Privacy\" style=\"color:#0072C6; text-decoration:underline\">\r\nPrivacy Statement.</a></i></td>\r\n</tr>\r\n<tr height=\"20\">\r\n</tr>\r\n<tr>\r\n<td><i>Microsoft Corporation<br>\r\nOne Microsoft Way<br>\r\nRedmond, WA, USA 98052</i></td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n</tr>\r\n<tr height=\"20\">\r\n</tr>\r\n<tr style=\"font-size:9pt\">\r\n<td><a href=\"https://portal.office.com/adminportal/home?ref=MessageCenter?showPref=true\" title=\"edit email settings\" style=\"color:#737373; text-decoration:underline\">Unsubscribe</a>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<img src=\"https://mucp.api.account.microsoft.com/m/v2/v?d=AIAACBBSI6M6WVULTZ2VY53OSCYT7XFQLF7RVJNVNSPOMOBLCNAIPHZR3LAQWAIEZIO3C2OIMUD22TJPIUMTGEGVZKBDR3BZRQJYZ4U7TSSFBWNT2EY4SX4ULU3JJNZMUIZDPW342FJUBQITQI4SDSHRK5LTSFA&amp;i=AIAACLEHULNTQVXSKTZHXECU5JSG2OYCCOIHSU7OWZBVJMJJD4KHL4B5QPMSCUG5KJ3EY3QWTVOS3DXOYOTJ6N2T6WOZR3WIA273GB7A7WUXDQPOUHG5UKETZ77XH6RGJCCBLG22ZHJ6SO2KPOEN7XFTCCJ2D4DNKBKB7FYNZZF7H7MHV4J2AFLBBODKFNUQ267MVAKGT65ZWBRVJFGKHDVKCSERY3BFOCOK6VO4JT2324EL3LSMDEFPN34CHRGBP47ZAA7PTR6J72DZL4HMQGM6P6VTBOI\" width=\"1\" height=\"1\">\r\n</body>\r\n</html>\r\n','o365mc@microsoft.com','btrackcrm@btrackcrm365.com','2018-09-24 06:14:41','2018-10-08 14:46:51'),
(26,'AAMkADljZDMzODBkLTJlMjMtNGM0Yy1hMTJiLTYwNzI1ZjAyMDBhNABGAAAAAADLUeJl8-KbS7e0VLNxqJJXBwB6P_2Me_vISI_4Fx0TvKenAAAAAAEMAAB6P_2Me_vISI_4Fx0TvKenAAAp2dW-AAA=',10,NULL,NULL,NULL,'<CAAsNt8P69PcCQ9ZT=KZ_W5oJ4bPkJBn3f5z88zHNtiqXQO1sxA@mail.gmail.com>','',1,0,NULL,'Test','<html>\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<meta content=\"text/html; charset=utf-8\">\r\n</head>\r\n<body>\r\n<div dir=\"ltr\">test</div>\r\n</body>\r\n</html>\r\n','neicrihar@gmail.com','btrackcrm@btrackcrm365.com','2018-09-20 11:29:56','2018-10-08 14:46:51'),
(27,'AAMkADljZDMzODBkLTJlMjMtNGM0Yy1hMTJiLTYwNzI1ZjAyMDBhNABGAAAAAADLUeJl8-KbS7e0VLNxqJJXBwB6P_2Me_vISI_4Fx0TvKenAAAAAAEMAAB6P_2Me_vISI_4Fx0TvKenAAAp2dW_AAA=',11,NULL,NULL,NULL,'<0005883b-9b11-49b1-9a18-8b25e26b7763@xtnvmta101.xt.local>','',1,0,NULL,'Oglejte si svoj Office 365 Business Essentials (mese?no) izpisek ra?unov','<html>\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<meta content=\"text/html; charset=utf-8\">\r\n<style>\r\n<!--\r\na\r\n	{text-decoration:none}\r\na:hover\r\n	{text-decoration:underline}\r\n.afooter\r\n	{color:#0044cc!important}\r\nbody\r\n	{background:#fff;\r\n	margin:0;\r\n	padding:0}\r\n.bodywrap\r\n	{max-width:640px!important;\r\n	margin:auto;\r\n	overflow-x:hidden}\r\ntable\r\n	{max-width:640px}\r\ntable td\r\n	{border-collapse:collapse;\r\n	margin:0;\r\n	padding:0}\r\nimg\r\n	{border:none}\r\np\r\n	{margin-bottom:1em}\r\n-->\r\n</style>\r\n</head>\r\n<body leftmargin=\"0\" topmargin=\"0\">\r\n<style type=\"text/css\">\r\n<!--\r\ndiv.preheader\r\n	{display:none!important}\r\n-->\r\n</style>\r\n<div class=\"preheader\" style=\"font-size:1px; display:none!important\">Vaš izpisek ra?unov je pripravljen. Vpišite se zdaj in preglejte svoj izpisek.</div>\r\n<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td align=\"center\" valign=\"top\" width=\"640\" class=\"bodywrap\">\r\n<table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td width=\"640\" align=\"right\" valign=\"middle\" style=\"color:#3d3d3d; font-family:\'Segoe UI\',Arial,sans-serif; font-size:12px; font-weight:bold; padding:12px 0\">\r\n<p><span class=\"mobileBlock\">Vaš izpisek ra?unov je pripravljen. <a href=\"https://click.email.microsoftonline.com/?qs=b6065001ba4837482720aa9b49df05e917d4284f1970bf96bf4e5a72e5fe1c739cce2ab9478806a0da80c35f8abaa78c85f61f05b497528abae05b7825c3d07d\" title=\"Vpišite se\" style=\"color:#0044cc\">\r\nVpišite se</a> zdaj in preglejte svoj izpisek.</span><span class=\"mobileHidden\">&nbsp;|&nbsp;</span><span class=\"mobileBlock\"><a href=\"https://view.email.microsoftonline.com/?qs=c93c570b24e9ea61d638a7ccf68b672a845c57558546c13c4e5c334c0a4fe2cfcb543b139209623b4eba4fbca5821bd53c124349556ffe14237945a8054ab21d5029391fc29c1e1d08cf0130681d1857fcbc9d03eabf4468\" title=\"Oglejte si to e-poštno sporo?ilo v brskalniku.\" style=\"color:#0044cc; text-decoration:underline\">Oglejte\r\n si to e-poštno sporo?ilo v brskalniku.</a></span> </p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td width=\"20\" valign=\"middle\" style=\"color:#000000; font-family:\'Segoe UI\',Arial,sans-serif; font-size:12px; font-weight:bold; padding:20px 0\">\r\n&nbsp;</td>\r\n<td width=\"600\" valign=\"middle\" style=\"color:#000000; font-family:\'Segoe UI\',Arial,sans-serif; font-size:12px; font-weight:bold; padding:20px 0\">\r\n<img src=\"http://image.email.microsoftonline.com/lib/fe95157074600c7e7c/m/1/33520_LogoOrange_Office_160.png\" width=\"160\" height=\"35\" alt=\"Office 365\" border=\"0\">\r\n<h1 class=\"h1Header\" style=\"color:#000000; font-family:\'Segoe UI Light\',\'Segoe UI\',Arial,sans-serif; font-size:38px; font-weight:100; line-height:38px; margin-bottom:12px; padding:0\">\r\nVaš izpisek Office 365 Business Essentials (mese?no) je pripravljen </h1>\r\n</td>\r\n<td width=\"20\" valign=\"middle\" style=\"color:#000000; font-family:\'Segoe UI\',Arial,sans-serif; font-size:12px; font-weight:bold; padding:20px 0\">\r\n&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td width=\"20\" valign=\"middle\" style=\"color:#000000; font-family:\'Segoe UI\',Arial,sans-serif; font-size:12px; padding:0 0 30px\">\r\n&nbsp;</td>\r\n<td width=\"600\" align=\"left\" valign=\"top\" style=\"font-family:\'Segoe UI\',Arial,sans-serif; font-size:13px; line-height:16px; padding:0 0 30px\">\r\n<p><strong>Organizacija:</strong> Hotspot d.o.o.<br>\r\n<strong>Domena:</strong> btrackcrm365.com </p>\r\n<p>Vaš izpisek ra?unov je pripravljen za prikaz. </p>\r\n<p><strong>Prikaz izpiska:</strong> </p>\r\n<p><a href=\"https://click.email.microsoftonline.com/?qs=74df69ae73d10cb3cc2441a70104c44ed259a646276eafb5861ebf3f0de318a8a1321ff4b2fae38263a2c59d710ea72f7c58809d2e580c166f81b927bf570fd4\" title=\"Vpišite se v portal za stranke\" style=\"color:#0044cc\">Vpišite se\r\n v portal za stranke</a> s svojim ID-jem uporabnika: </p>\r\n<p><strong>Ime: </strong>Jasmina Zivanovic<br>\r\n<strong>ID uporabnika: </strong><a href=\"\" style=\"color:#000000; text-decoration:none\">btrackcrm@btrackcrm365.com</a>\r\n</p>\r\n<p>Opomba: ?e pla?ujete s kreditno kartico ali direktno obremenitvijo, bo na?in pla?ila bremenjen en dan po datumu ra?una.\r\n</p>\r\n<p>Kliknite tukaj za <a href=\"https://click.email.microsoftonline.com/?qs=3cd5cf4e5dc9c0ceae50f6ec9bf29262b41a01632575b709df1a45c0286936e49be02b3cfc567c24f4ed8a6dab515e0e4831b8081f88ce8beef328dadc31e912\" title=\"navodila za branje dokumenta PDF z NVDA\" style=\"color:#0044cc\">\r\nnavodila za branje dokumenta PDF z NVDA</a> in zagotovite kakovostno uporabniško izkušnjo.\r\n</p>\r\n<p>Hvala,<br>\r\nskupina za Microsoftove spletne storitve </p>\r\n</td>\r\n<td width=\"20\" valign=\"middle\" style=\"color:#000000; font-family:\'Segoe UI\',Arial,sans-serif; font-size:12px; padding:0 0 30px\">\r\n&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td width=\"640\" valign=\"middle\" bgcolor=\"#f2f2f2\" style=\"color:#000000; font-family:\'Segoe UI\',Arial,sans-serif; font-size:12px; padding:20px 0\">\r\n<table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td width=\"20\" valign=\"middle\" bgcolor=\"#f2f2f2\" style=\"color:#000000; font-family:\'Segoe UI\',Arial,sans-serif; font-size:12px; padding:0\">\r\n&nbsp;</td>\r\n<td width=\"460\" colspan=\"2\" align=\"left\" valign=\"bottom\" bgcolor=\"#f2f2f2\" class=\"mobileBlock\" style=\"color:#000000; font-family:\'Segoe UI\',Arial,sans-serif; font-size:12px; line-height:16px; padding:0\">\r\n<p>To je obvezno sporo?ilo o storitvi. ?e želite spremeniti nastavitve za prejemanje drugih sporo?il,<a href=\"https://click.email.microsoftonline.com/?qs=d81d41d178e94336e1db3fa079f67d40c8f85e4a51cd7af154b4324a9deb81ec47984d4835fa805819ca05763bf239cabba610dd76c110aaf0b01195c286868b\" title=\" kliknite tukaj\" style=\"color:#0072c6; text-decoration:underline\">\r\n kliknite tukaj</a>. </p>\r\n<p>To sporo?ilo je bilo poslano e-poštnega naslova, ki ga ne spremljamo. Ne odgovarjajte nanj.<a href=\"https://click.email.microsoftonline.com/?qs=9b5edfe924c93ace81635216b14ae6a31fb96e152e8f935dd913f2410753f54d0f3914665b83db25d74ee58c7c05285415a97bb3546f9f56715a28b7c8be76d3\" title=\"\" style=\"color:#0072c6; text-decoration:underline\"></a><br>\r\n<a href=\"https://click.email.microsoftonline.com/?qs=79b64ec10d11e375421923aa7bf3ae2dadf872483bb768aaf176501e36fb56956713b62c667883f96e974766246a4d88ef0fc13c00464c5097ccb933b919d780\" title=\"Zasebnost\" style=\"color:#0072c6; text-decoration:underline\">Zasebnost</a>\r\n | <a href=\"https://click.email.microsoftonline.com/?qs=5da695420be58312ae8ecc9a0b0172f04db602554cfda4874b2c370ddae6e262e460554722ed8f2e3c52105f887afb4070d3a9e1f23d6cbbd7fd17288a3e5e8a\" title=\"Pravni pouk\" style=\"color:#0072c6; text-decoration:underline\">\r\nPravni pouk</a> </p>\r\n<p><span dir=\"ltr\">Microsoft Office<br>\r\nOne Microsoft Way<br>\r\nRedmond, WA<br>\r\n98052-6399 ZDA</span> </p>\r\n</td>\r\n<td width=\"40\" valign=\"middle\" bgcolor=\"#f2f2f2\" class=\"mobileHidden\" style=\"color:#000000; font-family:\'Segoe UI\',Arial,sans-serif; font-size:12px; padding:0\">\r\n&nbsp;</td>\r\n<td width=\"100\" align=\"left\" valign=\"bottom\" bgcolor=\"#f2f2f2\" class=\"mobileBlock\" style=\"color:#000000; font-family:\'Segoe UI\',Arial,sans-serif; font-size:12px; line-height:16px; padding:0\">\r\n<p><img src=\"http://image.email.microsoftonline.com/lib/fe95157074600c7e7c/m/1/33520_Logo_Microsoft_Grey_100x22.png\" width=\"100\" height=\"22\" alt=\"Microsoft\" border=\"0\">\r\n</p>\r\n</td>\r\n<td width=\"20\" valign=\"middle\" bgcolor=\"#f2f2f2\" style=\"color:#000000; font-family:\'Segoe UI\',Arial,sans-serif; font-size:12px; padding:0\">\r\n&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<img src=\"https://click.email.microsoftonline.com/open.aspx?ffcb10-fec21c75766d057e-fdfa15737d62007b76147574-fe96157074600c7e7d-ff6615707d-fdff15737562007e72107071-fe8b157472640c757d&amp;d=40057\" width=\"1\" height=\"1\">\r\n</body>\r\n</html>\r\n','msonlineservicesteam@email.microsoftonline.com','btrackcrm@btrackcrm365.com','2018-09-19 12:38:49','2018-10-08 14:46:51'),
(28,'AAMkADljZDMzODBkLTJlMjMtNGM0Yy1hMTJiLTYwNzI1ZjAyMDBhNABGAAAAAADLUeJl8-KbS7e0VLNxqJJXBwB6P_2Me_vISI_4Fx0TvKenAAAAAAEMAAB6P_2Me_vISI_4Fx0TvKenAAAp2dW9AAA=',12,NULL,NULL,NULL,'<502f8abb6a3746b0ab1dbb924f9b5c7b-JVKUGUBNKBZG6ZBNINMTE7CEMVWWK5DFOJ6EE2LMNRUW4Z2JNZ3G62LDMU======@microsoft.com>','',1,0,NULL,'Vaš izpisek ra?unov za Office 365','<html>\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<meta content=\"text/html; charset=utf-8\">\r\n<style type=\"text/css\">\r\n<!--\r\na:hover, a:active, a:visited\r\n	{color:#006cd8;\r\n	text-decoration:none}\r\nh1 a:active, h2 a:active, h3 a:active, h1 a:visited, h2 a:visited, h3 a:visited\r\n	{color:#006cd8!important}\r\n-->\r\n</style>\r\n</head>\r\n<body>\r\n<table class=\"body\" bgcolor=\"#ffffff\" style=\"font-size:15px; height:100%; font-family:\'Segoe UI\',Arial,sans-serif; width:100%; background:#ffffff; border-collapse:collapse; font-weight:normal; color:#000000; padding-bottom:0px; text-align:left; padding-top:0px; padding-left:0px; border-spacing:0; margin:0px; line-height:18px; padding-right:0px\">\r\n<tbody>\r\n<tr>\r\n<td class=\"center\" valign=\"top\" align=\"center\" style=\"font-size:15px; font-family:\'Segoe UI\',Arial,sans-serif; vertical-align:top; border-collapse:collapse!important; font-weight:normal; color:#000000; padding-bottom:0px; text-align:center; padding-top:0px; padding-left:0px; margin:0px; line-height:18px; padding-right:0px\">\r\n<center style=\"width:100%; min-width:650px\">\r\n<table class=\"container\" style=\"width:650px; border-collapse:collapse; border-spacing:0\">\r\n<tbody>\r\n<tr>\r\n<td valign=\"top\" align=\"left\" style=\"font-size:15px; font-family:\'Segoe UI\',Arial,sans-serif; vertical-align:top; border-collapse:collapse!important; font-weight:normal; color:#000000; padding-bottom:0px; text-align:left; padding-top:0px; padding-left:0px; margin:0px; line-height:18px; padding-right:0px\">\r\n<table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" border=\"0\">\r\n<tbody>\r\n<tr>\r\n<td class=\"mobile-no-side-padding\" bgcolor=\"#ffffff\" style=\"padding-left:10px; padding-right:10px\">\r\n<table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" border=\"0\">\r\n<tbody>\r\n<tr>\r\n<td class=\"mobile-top-padding-10\" align=\"left\" style=\"padding-bottom:20px; padding-top:30px\">\r\n<table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" border=\"0\">\r\n<tbody>\r\n<tr>\r\n<td class=\"mobile-side-padding-15\" bgcolor=\"#ffffff\" valign=\"top\" align=\"left\" style=\"padding-left:10px; padding-right:10px\">\r\n<table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" border=\"0\">\r\n<tbody>\r\n<tr>\r\n<td valign=\"top\">\r\n<table class=\"mobile-full-width\" cellspacing=\"0\" cellpadding=\"0\" width=\"200\" align=\"left\" border=\"0\" style=\"width:200px; border-collapse:collapse; min-width:200px\">\r\n<tbody>\r\n<tr>\r\n<td class=\"mobile-top-padding-10\" valign=\"top\" align=\"left\"><a href=\"https://portal.office.com\"><img border=\"0\" alt=\"Office 365\" src=\"http://image.email.microsoftonline.com/lib/fe95157074600c7e7c/m/1/33520_LogoOrange_Office_160.png\" width=\"160\" height=\"35\" style=\"border-top-style:none; border-left-style:none; border-bottom-style:none; border-right-style:none; outline-style:none; display:block\"></a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table class=\"row\" style=\"border-spacing:0; border-collapse:collapse; width:100%; display:block\">\r\n<tbody>\r\n<tr>\r\n<td class=\"wrapper\" align=\"left\" valign=\"top\" style=\"border-collapse:collapse!important; vertical-align:top; text-align:left; color:#000000; font-family:\'Segoe UI\',Arial,sans-serif; font-weight:normal; font-size:15px; line-height:18px; margin:0; padding:0px 38px\">\r\n<table class=\"twelve columns\" style=\"border-spacing:0; border-collapse:collapse; width:574px\">\r\n<tbody>\r\n<tr>\r\n<td class=\"header\" align=\"left\" valign=\"top\" style=\"border-collapse:collapse!important; vertical-align:top; text-align:left; color:#000000; font-family:\'Segoe UI Light\',\'Segoe UI\',Arial,sans-serif; font-weight:normal; font-size:46px; line-height:60px; margin:0; padding:0px\">\r\nVaš izpisek ra?unov za Office 365 je pripravljen </td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"spacer\" align=\"left\" valign=\"top\" style=\"border-collapse:collapse!important; vertical-align:top; text-align:left; color:#000000; font-family:\'Segoe UI\',Arial,sans-serif; font-weight:normal; font-size:1px; line-height:1px; margin:0; padding:0\">\r\n<img class=\"hide-for-small\" width=\"1\" height=\"14\" src=\"http://compass.microsoft.com/assets/42/bc/42bc405d-604a-43e1-9074-57ec6a37e574.gif?n=msm_spacer.gif\" border=\"0\" alt=\"\" align=\"left\" style=\"text-decoration:none; float:left; clear:both; display:block\">\r\n<img width=\"1\" height=\"12\" src=\"http://compass.microsoft.com/assets/42/bc/42bc405d-604a-43e1-9074-57ec6a37e574.gif?n=msm_spacer.gif\" border=\"0\" alt=\"\" align=\"left\" style=\"text-decoration:none; float:left; clear:both; display:block\">\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<br>\r\n<p><strong>Organizacija: Hotspot d.o.o.</strong> </p>\r\n<p><strong>Domena: btrackcrm365.com </strong></p>\r\n<p>Vaš izpisek ra?unov je pripravljen za pregled in je priložen temu e-poštnemu sporo?ilu.</p>\r\n<p>Hvala, <br>\r\nekipa Microsoftovih spletnih storitev</p>\r\n<table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" border=\"0\">\r\n<tbody>\r\n<tr>\r\n<td bgcolor=\"#f1f1f1\" style=\"padding-left:10px; padding-right:10px\">\r\n<table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" border=\"0\">\r\n<tbody>\r\n<tr>\r\n<td align=\"left\" style=\"padding-bottom:30px; padding-top:20px; padding-left:10px; padding-right:10px\">\r\n<table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" border=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"padding-bottom:20px\">\r\n<table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" border=\"0\" style=\"min-width:100%\">\r\n<tbody>\r\n<tr>\r\n<th class=\"drop\" valign=\"middle\" align=\"left\" style=\"font-weight:normal; padding-bottom:7px; padding-top:7px\">\r\n<table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" border=\"0\">\r\n<tbody>\r\n<tr>\r\n<td><img alt=\"Microsoft\" src=\"https://asgcdn.azureedge.net/sfdc/Logos/logo_ms_double.png\" width=\"100\" height=\"22\" style=\"border-top-style:none; border-left-style:none; border-bottom-style:none; border-right-style:none; outline-style:none; display:block\"></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</th>\r\n<th class=\"drop mobile-top-padding-20\" valign=\"top\" align=\"right\" style=\"vertical-align:top; font-weight:normal\">\r\n<table cellspacing=\"0\" cellpadding=\"0\" align=\"right\" border=\"0\">\r\n<tbody>\r\n<tr>\r\n<td align=\"left\" style=\"font-size:10px; font-family:\'Segoe UI\',SUWR,Verdana,sans-serif; color:#919396; padding-bottom:0px; line-height:14px\">\r\nMicrosoft Corporation</td>\r\n</tr>\r\n<tr>\r\n<td align=\"left\" style=\"font-size:10px; font-family:\'Segoe UI\',SUWR,Verdana,sans-serif; color:#919396; padding-bottom:0px; line-height:14px\">\r\nOne Microsoft Way </td>\r\n</tr>\r\n<tr>\r\n<td align=\"left\" style=\"font-size:10px; font-family:\'Segoe UI\',SUWR,Verdana,sans-serif; color:#919396; padding-bottom:0px; line-height:14px\">\r\nRedmond, WA 98052 ZDA </td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</th>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td valign=\"top\" align=\"left\">\r\n<table cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\r\n<tbody>\r\n<tr>\r\n<td align=\"left\" style=\"font-size:10px; font-family:\'Segoe UI\',SUWR,Verdana,sans-serif; color:#919396; padding-bottom:0px; line-height:14px\">\r\nTo e-pošto ste prejeli, ker ste se naro?ili na Microsoft Office 365. </td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td align=\"left\" style=\"padding-bottom:2px\">\r\n<table cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\r\n<tbody>\r\n<tr>\r\n<td align=\"left\" style=\"font-size:10px; font-family:\'Segoe UI\',SUWR,Verdana,sans-serif; color:#919395; line-height:14px\">\r\nCopyright 2017 Microsoft Corporation <a href=\"http://go.microsoft.com/fwlink/?LinkId=521839\" style=\"text-decoration:underline; color:#919396\">\r\n<span style=\"text-decoration:underline; color:#919396\">Izjava o zasebnosti</span></a>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</center>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<img src=\"https://mucp.api.account.microsoft.com/m/v2/v?d=AIAACSHH6FLVP3EKOMUAXZVPPZMSCDZUDWNHSTGBFDKD5Q6FHJ6HUPHO4CICF2S5NKVVNEWAX6YV3RV5O77KO5VFS3GJXOOELLANDBVU2NXNJ7666UBACROJEKZXCXQ2JARUVQAWZPEI6GYVJXRPY2O67JXSXCI&amp;i=AIAADC2MMQZN6JR3DZVV4OCM4AVP2VU5NAZIGINSJV32XAGJDXXU67LCAB7VMSMRXYDIMX2WDLGFRW2KBY4LN7ALEHLSOHY3YZRAL2U5VE2F4MKJKTANFCCSHQ7UFFRLCQJONTC7OQTRC23TMDXY3SU2BAVQPTNJF2G6NP2GTBZQBX2O3UBBEXDLZBP5MNPJ6OS32VRMCHLYUZGU34DKWWGXYEMZR42LZUNB2BBV4N63HDVLYJJN4I43EQRFHWDJR3FJCYQVENRLTBLR4QUGCMYTXODKGKY\" width=\"1\" height=\"1\">\r\n</body>\r\n</html>\r\n','maccount@microsoft.com','btrackcrm@btrackcrm365.com','2018-09-19 12:38:47','2018-10-08 14:46:51'),
(29,'AAMkADljZDMzODBkLTJlMjMtNGM0Yy1hMTJiLTYwNzI1ZjAyMDBhNABGAAAAAADLUeJl8-KbS7e0VLNxqJJXBwB6P_2Me_vISI_4Fx0TvKenAAAAAAEMAAB6P_2Me_vISI_4Fx0TvKenAAAlYCCHAAA=',13,NULL,NULL,NULL,'<wTUxWO9LT0884gcFvq7C5ZzVYOFdwyHjjUJQUSoRk@eltus.btrackcore.com>','',1,0,NULL,'Re: asd','<html>\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<meta content=\"text/html; charset=us-ascii\">\r\n</head>\r\n<body>\r\n<p>etet</p>\r\n</body>\r\n</html>\r\n','ziga.babnik@btrack.io','btrackcrm@btrackcrm365.com','2018-09-17 16:06:52','2018-10-08 14:46:51'),
(30,'AAMkADljZDMzODBkLTJlMjMtNGM0Yy1hMTJiLTYwNzI1ZjAyMDBhNABGAAAAAADLUeJl8-KbS7e0VLNxqJJXBwB6P_2Me_vISI_4Fx0TvKenAAAAAAEMAAB6P_2Me_vISI_4Fx0TvKenAAAlYCCGAAA=',14,NULL,NULL,NULL,'<9a6a1d3a-7d94-4c15-9c83-a9bded49daf3@xtnvmta410.xt.local>','',1,0,NULL,'Storitev Office 365 Business Essentials (mese?no) bo samodejno obnovljena dne 16.10.2018.','<html>\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<meta content=\"text/html; charset=utf-8\">\r\n<style>\r\n<!--\r\nbody\r\n	{margin:0;\r\n	padding:0}\r\n.bodywrap\r\n	{max-width:600px!important;\r\n	margin:auto}\r\nimg[class=\"hero\"]\r\n	{max-width:600px;\r\n	width:100%!important;\r\n	height:auto!important}\r\na\r\n	{text-decoration:none}\r\na:hover\r\n	{text-decoration:underline}\r\ntable\r\n	{max-width:600px}\r\ntable td\r\n	{border-collapse:collapse;\r\n	margin:0;\r\n	padding:0;\r\n	font-family:\'Segoe UI\',Helvetica,Arial,sans-serif}\r\np\r\n	{border-collapse:collapse}\r\nimg\r\n	{border:none}\r\n-->\r\n</style>\r\n</head>\r\n<body leftmargin=\"0\" topmargin=\"0\">\r\n<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td align=\"center\" valign=\"top\" class=\"bodywrap\" style=\"width:600px!important\">\r\n<table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td width=\"600\" align=\"right\" valign=\"middle\" style=\"color:#3d3d3d; font-family:\'Segoe UI\',Arial,sans-serif; font-size:10px; font-weight:normal; padding:12px 0 6px\">\r\n<p>Naro?nina na Office 365 bo samodejno obnovljena.<br>\r\n<a href=\"https://view.email.microsoftonline.com/?qs=34730a7f78abd9d210b50e27668bd1a17a9b52a4c3925b146c89dab221c2449899cb6b7b8d2afa21d13bd4740291add2541d47383e3df41c0bf0d479a76d3266f814b5ad40c25193b8ab8c304b2ae01aa8be2dcbeef54d18\" title=\"Oglejte si to e-poštno sporo?ilo v svojem brskalniku\" style=\"color:#3c3c3c; text-decoration:underline\">Oglejte\r\n si to e-poštno sporo?ilo v svojem brskalniku</a>. </p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td width=\"30\" valign=\"middle\" bgcolor=\"#0072c6\" style=\"color:#0072c6; font-family:\'Segoe UI\',Arial,sans-serif; font-size:12px; font-weight:normal; padding:25px 0 15px\">\r\n– </td>\r\n<td width=\"540\" align=\"left\" valign=\"middle\" bgcolor=\"#0072c6\" style=\"color:#ffffff; font-family:\'Segoe UI\',Arial,sans-serif; font-size:12px; font-weight:normal; padding:25px 0 25px\">\r\n<img src=\"http://image.email.microsoftonline.com/lib/fe95157074600c7e7c/m/1/33520_LogoWhite_Office365_160.png\" width=\"160\" height=\"35\" alt=\"Office 365\" border=\"0\">\r\n<img src=\"http://image.email.microsoftonline.com/lib/fe95157074600c7e7c/m/1/33337_W15P2_Microsoft.png\" width=\"70\" height=\"14\" alt=\"Microsoft\" align=\"right\" border=\"0\">\r\n<br>\r\n<br>\r\n<br>\r\n<h1 style=\"color:#ffffff; font-family:\'Segoe UI Light\',\'Segoe UI\',Arial,sans-serif; font-size:30px; font-weight:100; line-height:40px; margin:0; padding:0\">\r\nNaro?nina na Office 365 bo samodejno obnovljena dne 16.10.2018 </h1>\r\n</td>\r\n<td width=\"30\" valign=\"middle\" bgcolor=\"#0072c6\" style=\"color:#0072c6; font-family:\'Segoe UI\',Arial,sans-serif; font-size:12px; font-weight:normal; padding:25px 0 15px\">\r\n– </td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td width=\"30\" valign=\"middle\" style=\"color:#ffffff; font-family:\'Segoe UI\',Arial,sans-serif; font-size:12px; padding:20px 0\">\r\n– </td>\r\n<td width=\"540\" align=\"left\" valign=\"middle\" style=\"color:#3d3d3d; font-family:\'Segoe UI\',Arial,sans-serif; font-size:12px; padding:20px 0\">\r\n<p><b>Postopek je zaklju?en!</b> </p>\r\n<p>Uporabili bomo vaš trenutni na?in pla?ila, stroški obnovitve naro?nine pa bodo prikazani na naslednjem ra?unu.\r\n</p>\r\n<p>Hvala, ker ste se naro?ili na Office 365. Upamo, da bomo še naprej uspešno sodelovali.\r\n</p>\r\n</td>\r\n<td width=\"30\" valign=\"middle\" style=\"color:#ffffff; font-family:\'Segoe UI\',Arial,sans-serif; font-size:12px; padding:20px 0\">\r\n– </td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td width=\"70\" valign=\"middle\" style=\"color:#ffffff; font-family:\'Segoe UI\',Arial,sans-serif; font-size:12px; font-weight:normal; padding:0 0 25px\">\r\n– </td>\r\n<td width=\"500\" align=\"left\" valign=\"middle\" style=\"color:#002050; font-family:\'Segoe UI\',Arial,sans-serif; font-size:12px; padding:0 0 25px\">\r\n<strong style=\"color:#3d3d3d\">Informacije o naro?nini:</strong> <br>\r\n<strong style=\"color:#3d3d3d\">Organizacija:</strong> Hotspot d.o.o.<br>\r\n<strong style=\"color:#3d3d3d\">Domena:</strong> btrackcrm365.com<br>\r\n<strong style=\"color:#3d3d3d\">Naro?nina:</strong> Office 365 Business Essentials (mese?no)<br>\r\n<strong style=\"color:#3d3d3d\">ID naro?nine:</strong> 0a994c51-a9e5-4fd1-954c-cf383c0da0c8<br>\r\n</td>\r\n<td width=\"30\" valign=\"middle\" style=\"color:#ffffff; font-family:\'Segoe UI\',Arial,sans-serif; font-size:12px; font-weight:normal; padding:0 0 25px\">\r\n– </td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td width=\"30\" valign=\"middle\" bgcolor=\"#0072c6\" style=\"color:#0072c6; font-family:\'Segoe UI\',Arial,sans-serif; font-size:12px; font-weight:normal; padding:15px 0 25px\">\r\n– </td>\r\n<td width=\"540\" align=\"left\" valign=\"middle\" bgcolor=\"#0072c6\" style=\"color:#fefefe; font-family:\'Segoe UI\',Arial,sans-serif; font-size:12px; padding:15px 0 25px\">\r\n<strong>Koristni viri</strong> <br>\r\n<br>\r\n<a href=\"https://click.email.microsoftonline.com/?qs=ca3f850127ddc0c0c856e4ed3a2cc6c84dab9bf8134952b0338acf7eea8e337ae7bdf60a579031bdb9532a41bc8f02cc9379ae20051ee085f916ebdf05b07062\" title=\"Upravljanje naro?nin\" style=\"color:#fffffe; font-weight:normal; text-decoration:underline\">Upravljanje\r\n naro?nin</a><br>\r\n<a href=\"https://click.email.microsoftonline.com/?qs=0f3cf2ca193fb9a5ec21c6eac003f3a7260cf750a32e254eb12e77e15e7fd19be239b469126d8bf472c578d891f2e07eb6a0bde0bb434c3da4316e815ecdfea9\" title=\"Kako posodobiti podatke kreditne kartice\" style=\"color:#fffffe; font-weight:normal; text-decoration:underline\">Kako\r\n posodobiti podatke kreditne kartice</a><br>\r\n<a href=\"https://click.email.microsoftonline.com/?qs=b300ab805011914ab77c882854b63bd24cfd98e6fa3c52642f859315f52a0d67c494f06b6ec8f4d3faaedf06dc041e21011dcb7c8a3fe454531c9f479f90e7cc\" title=\"Kako najbolje izkoristiti Office 365\" style=\"color:#fffffe; font-weight:normal; text-decoration:underline\">Kako\r\n najbolje izkoristiti Office 365</a><br>\r\n<a href=\"https://click.email.microsoftonline.com/?qs=2dcd7123a4947d8a6d0ae96363aaf8e7f1614267a56469f51824a21fdf51005c009cee43fb424a01270eceed02cf220fb018b2adb666e2342bd7cc324647461b\" title=\"Pomo? in podpora za Office 365\" style=\"color:#fffffe; font-weight:normal; text-decoration:underline\">Pomo?\r\n in podpora za Office 365</a><br>\r\n</td>\r\n<td width=\"30\" valign=\"middle\" bgcolor=\"#0072c6\" style=\"color:#0072c6; font-family:\'Segoe UI\',Arial,sans-serif; font-size:12px; font-weight:normal; padding:15px 0 25px\">\r\n– </td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td width=\"30\" valign=\"middle\" style=\"color:#ffffff; font-family:\'Segoe UI\',Arial,sans-serif; font-size:12px; font-weight:normal; padding:20px 0 0 0\">\r\n– </td>\r\n<td width=\"540\" align=\"left\" valign=\"middle\" colspan=\"2\" style=\"color:#3d3d3d; font-family:\'Segoe UI Light\',\'Segoe UI\',Arial,sans-serif; font-size:10px; font-weight:100; padding:20px 0 0 0\">\r\n<p>To je obvezno sporo?ilo o storitvi. ?e želite spremeniti nastavitve za prejemanje drugih sporo?il,<a href=\"https://click.email.microsoftonline.com/?qs=c7200eb2e452e232b9a4680d05c3e2918bdae9f98c583c106f5abd11c5966bd2a00a02598dd02cbad645471d02c18767bd3a793d8b933f4d72b7488a72be836e\" title=\" kliknite tukaj\" style=\"color:#0072c6; text-decoration:underline\">\r\n kliknite tukaj</a>.<a href=\"https://click.email.microsoftonline.com/?qs=6210eb29d77cc355715b42ee8446d3f655e5e1c4b2a8857c53e83e3d07b1abd620f3f61adbe322189feb0551cafda967268ea0a804979e8c\" title=\"\" style=\"color:#0072c6; text-decoration:underline\"></a>\r\n</p>\r\n<p>To sporo?ilo je bilo poslano e-poštnega naslova, ki ga ne spremljamo. Ne odgovarjajte nanj.<a href=\"https://click.email.microsoftonline.com/?qs=7dfcf9f1697395acf7a31a6f399aa793a847bccd3c9273b59ba4512e277a5001c9e0065d6e1c82b16e859d91c64d1bf5fe69774bb4f1d323\" title=\"\" style=\"color:#0072c6; text-decoration:underline\"></a><a href=\"https://click.email.microsoftonline.com/?qs=d3c9c352db1840c8fc299a827a3abd6489edfd258294c2ab847d4fd82eba47b0e1a2e8098b4ec44e7a817b05b8bee420f8d6c56249bdbbe5\" title=\"\" style=\"color:#0072c6; text-decoration:underline\"></a>\r\n<br>\r\n<a href=\"https://click.email.microsoftonline.com/?qs=7daf02d4b064b7fe5fa514e25e3dd845027c05b065fcd7d1dfee80dfdc9a4cd4cce7e84095224708693f27719d0d82b429ce8f1febda12db0b734be7c5facdb3\" title=\"Zasebnost\" style=\"color:#0072c6; text-decoration:underline\">Zasebnost</a>\r\n | <a href=\"https://click.email.microsoftonline.com/?qs=73bb80a09ceb02df3dd49e08e692f8c3d33c32fc20dae4505b0d7bd68b64e6a00bbb938f8614c12ce6c08e06c491a8ed4b0fb53dc5bb6d816cdd56f41796c142\" title=\"Pravni pouk\" style=\"color:#0072c6; text-decoration:underline\">\r\nPravni pouk</a> </p>\r\n</td>\r\n<td width=\"30\" valign=\"middle\" style=\"color:#ffffff; font-family:\'Segoe UI\',Arial,sans-serif; font-size:12px; font-weight:normal; padding:20px 0 0 0\">\r\n– </td>\r\n</tr>\r\n<tr>\r\n<td width=\"30\" valign=\"middle\" style=\"color:#ffffff; font-family:\'Segoe UI\',Arial,sans-serif; font-size:12px; font-weight:normal; padding:10px 0 20px 0\">\r\n– </td>\r\n<td width=\"400\" align=\"left\" valign=\"middle\" style=\"color:#3d3d3d; font-family:\'Segoe UI Light\',\'Segoe UI\',Arial,sans-serif; font-size:10px; font-weight:100; padding:10px 0 20px 0\">\r\n<p><span dir=\"ltr\">Microsoft Office<br>\r\nOne Microsoft Way<br>\r\nRedmond, WA<br>\r\n98052-6399 ZDA</span> </p>\r\n</td>\r\n<td width=\"140\" align=\"right\" valign=\"bottom\" style=\"color:#3d3d3d; font-family:\'Segoe UI Light\',\'Segoe UI\',Arial,sans-serif; font-size:10px; font-weight:100; padding:10px 0 20px 0\">\r\n<img src=\"http://image.email.microsoftonline.com/lib/fe96157074600c7e7d/m/2/33520_Logo_Microsoft122.png\" alt=\"Microsoft\" width=\"122\" height=\"26\" border=\"0\" style=\"display:block; padding-bottom:20px\">\r\n</td>\r\n<td width=\"30\" valign=\"middle\" style=\"color:#ffffff; font-family:\'Segoe UI\',Arial,sans-serif; font-size:12px; font-weight:normal; padding:10px 0 20px 0\">\r\n– </td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<img src=\"https://click.email.microsoftonline.com/open.aspx?ffcb10-feba1c75776d0074-fdfa15737d62007b76147574-fe96157074600c7e7d-ff6615707d-fdff15737562007e72107071-fec217757c640075&amp;d=40058\" width=\"1\" height=\"1\">\r\n</body>\r\n</html>\r\n','Office365@email.microsoftonline.com','btrackcrm@btrackcrm365.com','2018-09-17 15:15:43','2018-10-08 14:46:51'),
(31,'225',NULL,NULL,NULL,NULL,'1539085279225','',1,0,'2018-10-09 15:38:37','TEST','<html>\r\n  <head>\r\n\r\n    <meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\">\r\n  </head>\r\n  <body text=\"#000000\" bgcolor=\"#FFFFFF\">\r\n    <p><br>\r\n    </p>\r\n    <div class=\"moz-signature\">-- <br>\r\n      <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n      <title>Žiga Babnik</title>\r\n      <table valign=\"top\" style=\"font-family: Calibri; font-size:\r\n        medium; \" cellspacing=\"0\" width=\"100%\" border=\"0\">\r\n        <tbody>\r\n          <tr>\r\n            <td valign=\"top\" align=\"center\" width=\"150\"><img\r\n                src=\"file://T:/Podpis/podpisgrega/netko-logo-podpis.png\"\r\n                style=\"padding-top:5px\" height=\"40\" width=\"135\"></td>\r\n            <td style=\"color: rgb(102, 102, 102); \" valign=\"top\">\r\n              <p style=\"font-family: Arial, Helvetica, sans-serif;\r\n                font-size: 12px; \"><b>Žiga Babnik<br>\r\n                </b>IT</p>\r\n              <p style=\"font-family: Arial, Helvetica, sans-serif;\r\n                font-size: 12px; \">+386 51 206 449<br>\r\n                <a class=\"moz-txt-link-abbreviated\"\r\n                  href=\"mailto:grega@goricki.si\">ziga@netko.it</a><br>\r\n                Netko d.o.o., Primoži?eva 1, 1000 Ljubljana, Slovenija<br>\r\n                <a moz-do-not-send=\"true\" href=\"http://www.goricki.si/\"\r\n                  class=\"email_link\" style=\"color: rgb(51, 153, 255); \">www.netko.it</a></p>\r\n              <p style=\"font-family: Arial, Helvetica, sans-serif;\r\n                font-size: 12px; \"><br>\r\n              </p>\r\n              <div style=\"font-family: Calibri, sans-serif; font-size:\r\n                14px; color: rgb(0, 0, 0); \"><span\r\n                  class=\"Apple-style-span\" style=\"font-size: 10px;\r\n                  font-family: Arial, sans-serif; \">To elektronsko\r\n                  sporo?ilo in vse morebitne priloge so poslovna\r\n                  skrivnost, z avtorsko zaš?ito in namenjene izklju?no\r\n                  naslovniku. ?e ste sporo?ilo prejeli pomotoma, Vas\r\n                  prosimo, da obvestite pošiljatelja, sporo?ilo pa takoj\r\n                  uni?ite. </span></div>\r\n              <div style=\"font-family: Calibri, sans-serif; font-size:\r\n                14px; color: rgb(0, 0, 0); \"><span\r\n                  class=\"Apple-style-span\" style=\"font-size: 10px;\r\n                  font-family: Arial, sans-serif; \">Kakršnokoli\r\n                  razkritje, distribucija ali kopiranje vsebine\r\n                  sporo?ila je  prepovedano. Ni nujno, da to sporo?ilo\r\n                  odraža uradno stališ?e družbe. </span></div>\r\n            </td>\r\n          </tr>\r\n        </tbody>\r\n      </table>\r\n    </div>\r\n  </body>\r\n</html>\r\n','it@goricki.si','ziga.babnik@btrack.io','2018-10-09 13:41:19','2018-10-09 13:58:36'),
(32,'220',NULL,NULL,NULL,NULL,'1535451878220','',2,0,NULL,'ZIGAZAGA','','test.omrezja@gmail.com','','2018-08-28 12:24:38','2018-10-09 13:58:36'),
(33,'224',NULL,NULL,NULL,NULL,'1535446654224','',1,0,NULL,'SEO audit','','markw@hubspot.com','','2018-08-28 10:57:34','2018-10-09 13:58:36'),
(34,'223',NULL,NULL,NULL,NULL,'1535442829223','',1,0,NULL,'6','','it@goricki.si','','2018-08-28 09:53:49','2018-10-09 13:58:36'),
(35,'222',NULL,NULL,NULL,NULL,'1535442070222','',1,0,NULL,'Re: TESTIS SMD','','it@goricki.si','','2018-08-28 09:41:10','2018-10-09 13:58:36'),
(36,'158',NULL,NULL,NULL,NULL,'1535442033158','',1,0,NULL,'TESTIS SMD','','it@goricki.si','','2018-08-28 09:40:33','2018-10-09 13:58:36'),
(37,'226',NULL,NULL,NULL,NULL,'1539091259226','',1,0,NULL,'Mail delivery failed: returning message to sender','','Mailer-Daemon@vm3.yubi.si','','2018-10-09 15:20:59','2018-10-09 15:22:11');

/*Table structure for table `email_conversations` */

DROP TABLE IF EXISTS `email_conversations`;

CREATE TABLE `email_conversations` (
  `conversation_id` int(11) NOT NULL AUTO_INCREMENT,
  `conversation_key` text COLLATE utf8mb4_slovenian_ci DEFAULT NULL,
  `created_on` text COLLATE utf8mb4_slovenian_ci DEFAULT NULL,
  PRIMARY KEY (`conversation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_slovenian_ci;

/*Data for the table `email_conversations` */

insert  into `email_conversations`(`conversation_id`,`conversation_key`,`created_on`) values 
(1,'AAQkADljZDMzODBkLTJlMjMtNGM0Yy1hMTJiLTYwNzI1ZjAyMDBhNAAQAPJmtGNR8IhBkmvphjH1l6c=','2018-10-08 14:46:50'),
(2,'AAQkADljZDMzODBkLTJlMjMtNGM0Yy1hMTJiLTYwNzI1ZjAyMDBhNAAQAJ-AzY9oMWFNu6nljvqXKWU=','2018-10-08 14:46:51'),
(3,'AAQkADljZDMzODBkLTJlMjMtNGM0Yy1hMTJiLTYwNzI1ZjAyMDBhNAAQABBrxkZjrGZMnjlOIt2tDro=','2018-10-08 14:46:51'),
(4,'AAQkADljZDMzODBkLTJlMjMtNGM0Yy1hMTJiLTYwNzI1ZjAyMDBhNAAQABNlRpgKQsVPl4XSPEzD_JM=','2018-10-08 14:46:51'),
(5,'AAQkADljZDMzODBkLTJlMjMtNGM0Yy1hMTJiLTYwNzI1ZjAyMDBhNAAQAH2OLzN8ZRtIrMu-zizqPeU=','2018-10-08 14:46:51'),
(6,'AAQkADljZDMzODBkLTJlMjMtNGM0Yy1hMTJiLTYwNzI1ZjAyMDBhNAAQAKDUmx3jZSdLsnmDZowHuzQ=','2018-10-08 14:46:51'),
(7,'AAQkADljZDMzODBkLTJlMjMtNGM0Yy1hMTJiLTYwNzI1ZjAyMDBhNAAQAK8V0V6_sINDoBpy3Uk-Dec=','2018-10-08 14:46:51'),
(8,'AAQkADljZDMzODBkLTJlMjMtNGM0Yy1hMTJiLTYwNzI1ZjAyMDBhNAAQALycfM9ngPpCoAmkeqa5vmw=','2018-10-08 14:46:51'),
(9,'AAQkADljZDMzODBkLTJlMjMtNGM0Yy1hMTJiLTYwNzI1ZjAyMDBhNAAQACIpiFdpcZtBkc9tLoY8Pog=','2018-10-08 14:46:51'),
(10,'AAQkADljZDMzODBkLTJlMjMtNGM0Yy1hMTJiLTYwNzI1ZjAyMDBhNAAQABxqpB1cO6dEoOwaNmr9btU=','2018-10-08 14:46:51'),
(11,'AAQkADljZDMzODBkLTJlMjMtNGM0Yy1hMTJiLTYwNzI1ZjAyMDBhNAAQAO6cEjAxI-5ArzFH6UVJPaA=','2018-10-08 14:46:51'),
(12,'AAQkADljZDMzODBkLTJlMjMtNGM0Yy1hMTJiLTYwNzI1ZjAyMDBhNAAQAOKgzQHjHqNMqs5Oe4ApG9o=','2018-10-08 14:46:51'),
(13,'AAQkADljZDMzODBkLTJlMjMtNGM0Yy1hMTJiLTYwNzI1ZjAyMDBhNAAQADGNDu0cjCNKtSEC8OV5vKE=','2018-10-08 14:46:51'),
(14,'AAQkADljZDMzODBkLTJlMjMtNGM0Yy1hMTJiLTYwNzI1ZjAyMDBhNAAQAEJsUq-xYFhJqEi7153qQGk=','2018-10-08 14:46:51');

/*Table structure for table `email_filters` */

DROP TABLE IF EXISTS `email_filters`;

CREATE TABLE `email_filters` (
  `filter_id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_text` varchar(200) COLLATE utf8_slovenian_ci NOT NULL,
  `filter_mailbox` varchar(200) COLLATE utf8_slovenian_ci NOT NULL,
  `employee_id` int(11) NOT NULL,
  `created_on` varchar(45) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `filter_email` varchar(200) COLLATE utf8_slovenian_ci NOT NULL,
  `filter_field` varchar(200) COLLATE utf8_slovenian_ci NOT NULL,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

/*Data for the table `email_filters` */

/*Table structure for table `email_history` */

DROP TABLE IF EXISTS `email_history`;

CREATE TABLE `email_history` (
  `history_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `ticket_id` int(11) DEFAULT NULL,
  `email_id` int(11) DEFAULT NULL,
  `description` text COLLATE utf8mb4_slovenian_ci DEFAULT NULL,
  `created_on` varchar(200) COLLATE utf8mb4_slovenian_ci DEFAULT NULL,
  PRIMARY KEY (`history_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_slovenian_ci;

/*Data for the table `email_history` */

insert  into `email_history`(`history_id`,`employee_id`,`ticket_id`,`email_id`,`description`,`created_on`) values 
(1,62,5,1,'Ticket with subject Subject #1 created','2018-10-08 14:06:55'),
(2,62,5,NULL,'Ticket with subject Subject #1 edited','2018-10-08 14:07:09'),
(3,62,NULL,1,'E-mail sent to it@goricki.si','2018-10-08 14:38:58'),
(4,62,NULL,1,'E-mail sent to ziga@netko.it','2018-10-08 14:40:05'),
(5,62,NULL,2,'E-mail sent to it@goricki.si','2018-10-08 14:42:27'),
(6,62,NULL,1,'E-mail sent to ziga@netko.it','2018-10-08 14:43:05'),
(7,62,NULL,1,'E-mail sent to neicrihar@gmail.com','2018-10-08 14:45:49');

/*Table structure for table `emailtemplates` */

DROP TABLE IF EXISTS `emailtemplates`;

CREATE TABLE `emailtemplates` (
  `template_id` int(11) NOT NULL AUTO_INCREMENT,
  `template_title` text NOT NULL,
  `template_subject` text NOT NULL,
  `template_content` text NOT NULL,
  PRIMARY KEY (`template_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `emailtemplates` */

insert  into `emailtemplates`(`template_id`,`template_title`,`template_subject`,`template_content`) values 
(1,'Event reminder','bTrack Event Reminder','<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<div style=\"background-color: #fff; margin: 0 auto 0 auto; padding: 30px 0 30px 0; color: #4f565d; font-size: 13px; line-height: 20px; font-family: 1Helvetica Neue\\\',Arial,sans-serif; text-align: left;\"><center>\r\n<table style=\"width: 550px; text-align: center;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"padding: 0 0 20px 0; border-bottom: 1px solid #e9edee;\"><a style=\"display: block; margin: 0 auto;\" href=\"https://www.netko.it\" target=\"_blank\" rel=\"noopener noreferrer\">&nbsp;</a></td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding: 30px 0;\" colspan=\"2\">\r\n<p style=\"color: #1d2227; line-height: 28px; font-size: 22px; margin: 12px 10px 20px 10px; font-weight: 400;\">Hey %name%</p>\r\n<p style=\"margin: 0 10px 10px 10px; padding: 0; color: black;\">You have an event&nbsp;scheduled on <strong>%eventdate%</strong>. The meeting will begin in <strong>%time%</strong> from now. The subject of the meeting is <strong>%meetingsubject%</strong>.<br /><br /></p>\r\n<p style=\"margin: 0 10px 10px 10px; padding: 0; color: black;\">Description:</p>\r\n<p style=\"margin: 0 10px 10px 10px; padding: 0; color: black;\"><strong>%eventdescription%</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding: 30px 0 0 0; border-top: 1px solid #e9edee; color: #9b9fa5;\" colspan=\"2\">If you have any questions you can contact us at <a style=\"color: #666d74; text-decoration: none;\" href=\"mailto:support@btrack.si\" target=\"_blank\" rel=\"noopener noreferrer\">support@btrack.si</a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</center></div>\r\n</body>\r\n</html>'),
(2,'Autoresponder e-mail','Automatic System E-mail','<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<div style=\"background-color: #fff; margin: 0 auto 0 auto; padding: 30px 0 30px 0; color: #4f565d; font-size: 13px; line-height: 20px; font-family: Helvetica Neue,Arial,sans-serif; text-align: left;\"><center>\r\n<table style=\"width: 550px; text-align: center;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"padding: 0 0 20px 0; border-bottom: 1px solid #e9edee;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding: 30px 0;\" colspan=\"2\">\r\n<p style=\"color: #1d2227; line-height: 28px; font-size: 22px; margin: 12px 10px 20px 10px; font-weight: 400;\">Greetings</p>\r\n<p style=\"margin: 0 10px 10px 10px; padding: 0; color: black;\">This e-mail has been generated automatically in response to the creation of a support ticket <strong>#%ticketnumber%</strong>&nbsp;with the subject -&nbsp;<strong>%subject%</strong>. We will handle your request as soon as possible. If you have any additional questions, please reply to this e-mail and we\'ll get back to you.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding: 30px 0 0 0; border-top: 1px solid #e9edee; color: #9b9fa5;\" colspan=\"2\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</center></div>\r\n</body>\r\n</html>');

/*Table structure for table `employee_settings` */

DROP TABLE IF EXISTS `employee_settings`;

CREATE TABLE `employee_settings` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `calendar_view` tinyint(1) NOT NULL DEFAULT 1,
  `fingerprint_auth` tinyint(1) NOT NULL DEFAULT 0,
  `calendar_startday` int(11) NOT NULL DEFAULT 1,
  `automatic_tracking` tinyint(1) NOT NULL DEFAULT 1,
  `navigation_screen_on` tinyint(1) NOT NULL DEFAULT 1,
  `gps_interval` int(11) NOT NULL DEFAULT 3,
  `voiced_navigation` tinyint(1) NOT NULL DEFAULT 1,
  `navigation_volume` int(11) NOT NULL DEFAULT 5,
  `tracking_notifications` tinyint(1) NOT NULL DEFAULT 1,
  `reservation_notification` int(11) NOT NULL DEFAULT 30,
  `general_notifications` tinyint(1) NOT NULL DEFAULT 1,
  `notification_vibrations` tinyint(1) NOT NULL DEFAULT 0,
  `event_notification` int(11) NOT NULL DEFAULT 60,
  `telephony_autoresponder` int(11) DEFAULT 0,
  `ticketing_autoresponder` int(11) DEFAULT 0,
  `telephony_imaphost` varchar(500) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `telephony_imapssl` int(11) DEFAULT NULL,
  `telephony_imapcertificate` int(11) DEFAULT NULL,
  `telephony_imapport` int(11) DEFAULT NULL,
  `telephony_imapoutboundport` int(11) DEFAULT NULL,
  `telephony_imapuser` varchar(200) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `telephony_imappassword` varchar(200) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `ticketing_imaphost` varchar(500) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `ticketing_imapssl` int(11) DEFAULT NULL,
  `ticketing_imapcertificate` int(11) DEFAULT NULL,
  `ticketing_imapport` int(11) DEFAULT NULL,
  `ticketing_imapoutboundport` int(11) DEFAULT NULL,
  `ticketing_imapuser` varchar(200) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `ticketing_imappassword` varchar(200) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `webmail_imaphost` varchar(500) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `webmail_imapssl` int(11) DEFAULT NULL,
  `webmail_imapcertificate` int(11) DEFAULT NULL,
  `webmail_imapport` int(11) DEFAULT NULL,
  `webmail_imapoutboundport` int(11) DEFAULT NULL,
  `webmail_imapuser` varchar(200) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `webmail_imappassword` varchar(200) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `telephony_exchangehost` varchar(500) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `telephony_exchangeuser` varchar(200) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `telephony_exchangepassword` varchar(200) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `ticketing_exchangehost` varchar(500) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `ticketing_exchangeuser` varchar(200) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `ticketing_exchangepassword` varchar(200) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `webmail_exchangehost` varchar(500) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `webmail_exchangeuser` varchar(200) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `webmail_exchangepassword` varchar(200) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `telephony_365access_token` text COLLATE utf8_slovenian_ci DEFAULT NULL,
  `telephony_365refresh_token` text COLLATE utf8_slovenian_ci DEFAULT NULL,
  `telephony_365expiration_date` varchar(200) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `ticketing_365access_token` text COLLATE utf8_slovenian_ci DEFAULT NULL,
  `ticketing_365refresh_token` text COLLATE utf8_slovenian_ci DEFAULT NULL,
  `ticketing_365expiration_date` varchar(200) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `webmail_365access_token` text COLLATE utf8_slovenian_ci DEFAULT NULL,
  `webmail_365refresh_token` text COLLATE utf8_slovenian_ci DEFAULT NULL,
  `webmail_365expiration_date` varchar(200) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `telephony_googletoken` text COLLATE utf8_slovenian_ci DEFAULT NULL,
  `ticketing_googletoken` text COLLATE utf8_slovenian_ci DEFAULT NULL,
  `webmail_googletoken` text COLLATE utf8_slovenian_ci DEFAULT NULL,
  `last_modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`setting_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

/*Data for the table `employee_settings` */

insert  into `employee_settings`(`setting_id`,`employee_id`,`calendar_view`,`fingerprint_auth`,`calendar_startday`,`automatic_tracking`,`navigation_screen_on`,`gps_interval`,`voiced_navigation`,`navigation_volume`,`tracking_notifications`,`reservation_notification`,`general_notifications`,`notification_vibrations`,`event_notification`,`telephony_autoresponder`,`ticketing_autoresponder`,`telephony_imaphost`,`telephony_imapssl`,`telephony_imapcertificate`,`telephony_imapport`,`telephony_imapoutboundport`,`telephony_imapuser`,`telephony_imappassword`,`ticketing_imaphost`,`ticketing_imapssl`,`ticketing_imapcertificate`,`ticketing_imapport`,`ticketing_imapoutboundport`,`ticketing_imapuser`,`ticketing_imappassword`,`webmail_imaphost`,`webmail_imapssl`,`webmail_imapcertificate`,`webmail_imapport`,`webmail_imapoutboundport`,`webmail_imapuser`,`webmail_imappassword`,`telephony_exchangehost`,`telephony_exchangeuser`,`telephony_exchangepassword`,`ticketing_exchangehost`,`ticketing_exchangeuser`,`ticketing_exchangepassword`,`webmail_exchangehost`,`webmail_exchangeuser`,`webmail_exchangepassword`,`telephony_365access_token`,`telephony_365refresh_token`,`telephony_365expiration_date`,`ticketing_365access_token`,`ticketing_365refresh_token`,`ticketing_365expiration_date`,`webmail_365access_token`,`webmail_365refresh_token`,`webmail_365expiration_date`,`telephony_googletoken`,`ticketing_googletoken`,`webmail_googletoken`,`last_modified`) values 
(1,1,1,1,2,1,1,3,1,7,1,30,1,1,0,0,1,'vm3.yubi.si',1,0,993,NULL,'ziga.babnik@btrack.io','12Tojegeslo#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'vm3.yubi.si',1,0,993,465,'ziga.babnik@btrack.io','12Tojegeslo#','mail.zelva.si','zahtevki','Zelva2018Zah',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-01-01 01:00:00',NULL,NULL,NULL,'eyJ0eXAiOiJKV1QiLCJub25jZSI6IkFRQUJBQUFBQUFEWHpaM2lmci1HUmJEVDQ1ek5TRUZFVjhqdzQ5dmV1Q3l1Y2NOcUN3b2xHSTFsUXRiUEZLcVptdTZacEpINWlKVndQaVNfMVlra2JHa2JoNjJTVU4yamV2VGRZT09fcDdPU2FwTHJhdU1SV1NBQSIsImFsZyI6IlJTMjU2IiwieDV0IjoiaTZsR2szRlp6eFJjVWIyQzNuRVE3c3lISmxZIiwia2lkIjoiaTZsR2szRlp6eFJjVWIyQzNuRVE3c3lISmxZIn0.eyJhdWQiOiJodHRwczovL2dyYXBoLm1pY3Jvc29mdC5jb20iLCJpc3MiOiJodHRwczovL3N0cy53aW5kb3dzLm5ldC8xZjUwYTM4Zi05NjA0LTQ5NjctODA0ZC1iYzZhN2NmNzA1YWUvIiwiaWF0IjoxNTM5MDY5ODQ1LCJuYmYiOjE1MzkwNjk4NDUsImV4cCI6MTUzOTA3Mzc0NSwiYWNjdCI6MCwiYWNyIjoiMSIsImFpbyI6IkFTUUEyLzhJQUFBQUFoQkgwc0R1bjUrU3RLZ1p5d2ZMNEtUWDRMZ0d2Um5pMFo1bG9pZHBobE09IiwiYW1yIjpbInB3ZCJdLCJhcHBfZGlzcGxheW5hbWUiOiJiVHJhY2tDUk0iLCJhcHBpZCI6ImMyNzg1MDcwLWYxNmQtNDZmNS1iYzEyLTMwNDQxMGVjYThhZCIsImFwcGlkYWNyIjoiMSIsImZhbWlseV9uYW1lIjoiWml2YW5vdmljIiwiZ2l2ZW5fbmFtZSI6Ikphc21pbmEiLCJpcGFkZHIiOiI5My4xMDMuMTU5LjgiLCJuYW1lIjoiSmFzbWluYSBaaXZhbm92aWMiLCJvaWQiOiI1MzdlNzFhZC1hYWYyLTQ5MGItODkwZi1hNjM3ZmI3MWMxZDUiLCJwbGF0ZiI6IjMiLCJwdWlkIjoiMTAwMzdGRkVBQzY4RDUyQSIsInNjcCI6IkNhbGVuZGFycy5SZWFkV3JpdGUgQ29udGFjdHMuUmVhZFdyaXRlIEZpbGVzLlJlYWRXcml0ZSBGaWxlcy5SZWFkV3JpdGUuQWxsIE1haWwuUmVhZCBNYWlsLlJlYWRXcml0ZSBNYWlsLlNlbmQgb3BlbmlkIHByb2ZpbGUgVGFza3MuUmVhZFdyaXRlIGVtYWlsIiwic3ViIjoib21MamJNZWVETXp6SVpPRGl2bHRBZkprT3Noc2Vwa1pNWW9hdGwzbXVxayIsInRpZCI6IjFmNTBhMzhmLTk2MDQtNDk2Ny04MDRkLWJjNmE3Y2Y3MDVhZSIsInVuaXF1ZV9uYW1lIjoiYnRyYWNrY3JtQGJ0cmFja2NybTM2NS5jb20iLCJ1cG4iOiJidHJhY2tjcm1AYnRyYWNrY3JtMzY1LmNvbSIsInV0aSI6IklRN1RaUGR4clVDcUttQ0tDSmQ4QUEiLCJ2ZXIiOiIxLjAiLCJ3aWRzIjpbIjYyZTkwMzk0LTY5ZjUtNDIzNy05MTkwLTAxMjE3NzE0NWUxMCJdLCJ4bXNfc3QiOnsic3ViIjoiQm85OFhXMlFhYXdBUV9HTmpRMlZZbTNHeDdYVW9NYmQ5cjJJWGlWM2FucyJ9LCJ4bXNfdGNkdCI6MTUzMTgyMDIxMH0.fVu7WNt9p94J7qeUmi_2r887TkTPiKNVeWoIVSi8EOKLAaDOhPd1f3iVj-trl-kO697I1sOdjzGz7-yYbjElKRKVElknDq-T3rEzhT3W1-K5syclj2ynvD2xLLfX-JQbMxcQcI3T7bI8QKbCQWP3cHRPwzTiXxLKsoBIFRMzHIdQabHHQelmwKJoIN8IrVCe-KEySC1S1xQGRqEk5LdynCRMfnZ-GRRrY-Wb473WBtwPE6oe7Mm5jPfAf529RTaYN_5C7Fei7l5eq2EBVvDfIzhE0gzTTNJUHS4KdQAQr5UaPBcekDnF7-5ZArAmuFQtWElAoCE_5N6BbA32fjRG_w','OAQABAAAAAADXzZ3ifr-GRbDT45zNSEFEkrgBFxjjNnZF4QibQePFxlWatFsBU5e3g90ALDuAIH2cGJ2F9g_QwoO1HhpFBixox2fqFe3RoCnPICALoXJvQU3DjrTKRRAXUuo4K5zYAX2fALrH00DTXWW4MS7EaJiHhhaT4oB4qr0-dZnPNXH5a1ilfP10LRUyh_7gWUDlYJ25YCm1FjCi25DXPHnG-QYyjrY61UwYkcPwPCMl5ozEzvKRF_EoXxNQX0oUjxzkBtN8kRApPgfa5kNknH-9_h6RLbjdIpfEaQOZfwOMNml_GYSVGVNNx6sYxpQ0bgM1P8ALcRwvEuEQ9jULQ8d6sU6ntiz5ttRMn-HDb8q9D7nKdinDbNRatPFsyfmRfznz-TkjltdYcpS2KJRuWqEbuRrXAz6H9hcGR-LVJhXdHgoVmFYB32c-ogclSFpOxc_UWcu1UwxuyGXX6FoRKoEtwHJiU3-aAqz5k4mj5qezV2htH7G1P_7Z2qXcNyHh0PC-6RMgtdCOmQkuXo1Zkq1uQK8wiLm6VVZDST-sSX_ELT33Fl2RbtX7ZIUqf9QR9eJNa4JzOGNdB2inXMZUFRcX_Xexon8hkfAMcdRuIF_4Js_P1fZZ-OyVegOWktetjQbenR646ptfMOsmqvdXWxQspdVURU8IP4e_Khcbwsyz1zrYhncSOhZcLxIcBnuJjOOaaSWANCclmxPxDxdNh8IZnCGt6YDMu6vXVkd0DdI5tvKW3yxAhiKeyX2D8fTBEfQxTC30Obnn2f1FdNjW7b1niyAHzdhqBZQ1JLI6qhNGvXcTuevXCmdDlYd-5P20fq_aZj_OY7U33ocUFlUCVNur8eIuIAA','2018-10-09 10:29:04',NULL,NULL,NULL,'2018-10-09 09:29:05'),
(29,60,1,0,1,1,1,3,1,5,1,30,1,0,60,0,0,'vm3.yubi.si',1,0,993,NULL,'ziga.babnik@btrack.io','12Tojegeslo#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-09-25 08:42:15'),
(30,61,1,0,1,1,1,3,1,5,1,30,1,0,60,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'mail.zelva.si','zahtevki','Zelva2018Zah',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-09-28 16:12:42'),
(31,62,1,0,1,1,1,3,1,5,1,30,1,0,60,0,1,'vm3.yubi.si',1,0,993,NULL,'ziga.babnik@btrack.io','12Tojegeslo#','vm3.yubi.si',1,0,993,NULL,'ziga.babnik@btrack.io','12Tojegeslo#','vm3.yubi.si',1,0,993,465,'ziga.babnik@btrack.io','12Tojegeslo#',NULL,NULL,NULL,NULL,NULL,NULL,'mail.zelva.si','zahtevki','Zelva2018Zah','eyJ0eXAiOiJKV1QiLCJub25jZSI6IkFRQUJBQUFBQUFEWHpaM2lmci1HUmJEVDQ1ek5TRUZFbGJSMnlJclF5bEhGdjBxTDJxZHdHZ1llVXFhZndxcGhFWXRKY3V1N3VtdnFzdVFoMk1yS09BdW9Yd2I2YlVhYWJRXzlWcDhxZmFfdGk2SVdVV3pqRFNBQSIsImFsZyI6IlJTMjU2IiwieDV0IjoiaTZsR2szRlp6eFJjVWIyQzNuRVE3c3lISmxZIiwia2lkIjoiaTZsR2szRlp6eFJjVWIyQzNuRVE3c3lISmxZIn0.eyJhdWQiOiJodHRwczovL2dyYXBoLm1pY3Jvc29mdC5jb20iLCJpc3MiOiJodHRwczovL3N0cy53aW5kb3dzLm5ldC8xZjUwYTM4Zi05NjA0LTQ5NjctODA0ZC1iYzZhN2NmNzA1YWUvIiwiaWF0IjoxNTM5MDA3NjgxLCJuYmYiOjE1MzkwMDc2ODEsImV4cCI6MTUzOTAxMTU4MSwiYWNjdCI6MCwiYWNyIjoiMSIsImFpbyI6IkFTUUEyLzhJQUFBQU5tZzVueWxaenlMN3ZzL08rdGpMSEM3cDVibGl6U3FGYjNncTQzMXRFZlU9IiwiYW1yIjpbInB3ZCJdLCJhcHBfZGlzcGxheW5hbWUiOiJiVHJhY2tDUk0iLCJhcHBpZCI6ImMyNzg1MDcwLWYxNmQtNDZmNS1iYzEyLTMwNDQxMGVjYThhZCIsImFwcGlkYWNyIjoiMSIsImZhbWlseV9uYW1lIjoiWml2YW5vdmljIiwiZ2l2ZW5fbmFtZSI6Ikphc21pbmEiLCJpcGFkZHIiOiI5My4xMDMuMTU5LjgiLCJuYW1lIjoiSmFzbWluYSBaaXZhbm92aWMiLCJvaWQiOiI1MzdlNzFhZC1hYWYyLTQ5MGItODkwZi1hNjM3ZmI3MWMxZDUiLCJwbGF0ZiI6IjMiLCJwdWlkIjoiMTAwMzdGRkVBQzY4RDUyQSIsInNjcCI6IkNhbGVuZGFycy5SZWFkV3JpdGUgQ29udGFjdHMuUmVhZFdyaXRlIEZpbGVzLlJlYWRXcml0ZSBGaWxlcy5SZWFkV3JpdGUuQWxsIE1haWwuUmVhZCBNYWlsLlJlYWRXcml0ZSBNYWlsLlNlbmQgb3BlbmlkIHByb2ZpbGUgVGFza3MuUmVhZFdyaXRlIGVtYWlsIiwic3ViIjoib21MamJNZWVETXp6SVpPRGl2bHRBZkprT3Noc2Vwa1pNWW9hdGwzbXVxayIsInRpZCI6IjFmNTBhMzhmLTk2MDQtNDk2Ny04MDRkLWJjNmE3Y2Y3MDVhZSIsInVuaXF1ZV9uYW1lIjoiYnRyYWNrY3JtQGJ0cmFja2NybTM2NS5jb20iLCJ1cG4iOiJidHJhY2tjcm1AYnRyYWNrY3JtMzY1LmNvbSIsInV0aSI6Ijd1MlVMWHF5NDBlaUlYR1VJZTgzQUEiLCJ2ZXIiOiIxLjAiLCJ3aWRzIjpbIjYyZTkwMzk0LTY5ZjUtNDIzNy05MTkwLTAxMjE3NzE0NWUxMCJdLCJ4bXNfc3QiOnsic3ViIjoiQm85OFhXMlFhYXdBUV9HTmpRMlZZbTNHeDdYVW9NYmQ5cjJJWGlWM2FucyJ9LCJ4bXNfdGNkdCI6MTUzMTgyMDIxMH0.Qvmnr-Nk45NXG9NmSm3F3acM7sBlYLe2-ZugJNSnVaq3rkoDaWYwv4Jo7Lry0fHbqvBzjMTpThU9KMACDsggiyJOglr5Gi4bvVwSN8BfoF3evcBFlX1VvFeuCX4JHFBpZxY3rmhG8Ex2T_E43mtQexqzc8Cgko8ANE2bOkWpei6NXrswKKuVR7_hnrtaKUGbC4hOEA1RKy7fAuT6KtippNk-g_th9XAJfiMeG04jFmM-4Un3dT4NrZ-hRU8DQlNtpO1Yk8NaOz8Qups72UJs3D2_SkqCkwUb5bvIDyEfnbXBZkGMhqywGEBdFzE4gXqjPdGgriP9rS00pkG1fX-cIw','OAQABAAAAAADXzZ3ifr-GRbDT45zNSEFEio62niDXj4tyobBPc4QzdRfCTXSenuAIu8LDC7f58qNIXdnvFHW2lrZBoBxv9B1YIeMgsJ0z339CtlIzY6He7zJ1IkevcpWurE_6ukU6cbMwSm2xeABRUEeLFpR8gQ6IvsdMVXzq9fkltkwfnhwo-KnF9eJPRAgg03Ysv1D3lqR7clH7v6v7k64xdiBsQK0MyS3hAI0XRSJ1-sZp0_2TBeEQYJoXqM5Z6Y7fm8bZ3riCJG6cBLc8UC98EpQI9D0b1_hjn65ujYJVUrpcCSK7fHzY2H0TagK9KXG_ydXQMAbcasFqPne_fARpf_u4VfTiQDQeAZvyjULrnwWRm9qtmy72V3b5FWXrV0GJAB5hdSt811pORgw9iQyAhPiCINBSZhKdK6Jonqj8R9jBxGVs4GTBMa_W2XoOxDSN34pW-L6ErJROXdJcBTCmxXbHG1khQUzDNNxK7u8RD2rt9FSLXiOrpEWyWwqlacMJd7q_SgLp6nerPjEvr1S7oSv9aBBCMCNDWxWMznha1PcGakVW66PFrpDBGMOzIBHam16BmHMDa5P7eYY2cF_j238yU05Th_vlE7clkdN0_kshkq9ZNgtOAcA-WJwJzfM93PVn_HKnTkGvR8RW4rIkvR5z5AMbL5j3tNiIpj8dwWHgIcF85HS-yZa0m6RgIdjJIcKQxu8BHndvfTvdYdwZY00IYlBA1sg7AiQja3PtEXm9uKqhZL7Y9Mu5_GB0-ZYjDoo35c7SbvIda8lZR85Zwg7CYjuEsjcdMvwuL2LKZIzTHW948S9hrnoFk5hJZU_WLwhmTQtNhkHA39DfGbCJKhdMSc7pIAA','2018-10-08 17:13:00','eyJ0eXAiOiJKV1QiLCJub25jZSI6IkFRQUJBQUFBQUFEWHpaM2lmci1HUmJEVDQ1ek5TRUZFQW5IUFZPSVhDRE9wWmFhTVJHU2N4N3dsM2kzVjJvVDV3ZnBsRDR3OTBPRkk0cE9iN2drRWliMEJCU205MU5wcjV0WmFYOHpVT1p5cjVSd3B4b0JNRGlBQSIsImFsZyI6IlJTMjU2IiwieDV0IjoiaTZsR2szRlp6eFJjVWIyQzNuRVE3c3lISmxZIiwia2lkIjoiaTZsR2szRlp6eFJjVWIyQzNuRVE3c3lISmxZIn0.eyJhdWQiOiJodHRwczovL2dyYXBoLm1pY3Jvc29mdC5jb20iLCJpc3MiOiJodHRwczovL3N0cy53aW5kb3dzLm5ldC8xZjUwYTM4Zi05NjA0LTQ5NjctODA0ZC1iYzZhN2NmNzA1YWUvIiwiaWF0IjoxNTM5MDk0MDg1LCJuYmYiOjE1MzkwOTQwODUsImV4cCI6MTUzOTA5Nzk4NSwiYWNjdCI6MCwiYWNyIjoiMSIsImFpbyI6IjQyQmdZSmh4c0hpdEtGZmdRL1BLME9WR3dZbHAvM2Z0dWUrNU1jYWpsLzFlODUxM20yd0EiLCJhbXIiOlsicHdkIl0sImFwcF9kaXNwbGF5bmFtZSI6ImJUcmFja0NSTSIsImFwcGlkIjoiYzI3ODUwNzAtZjE2ZC00NmY1LWJjMTItMzA0NDEwZWNhOGFkIiwiYXBwaWRhY3IiOiIxIiwiZmFtaWx5X25hbWUiOiJaaXZhbm92aWMiLCJnaXZlbl9uYW1lIjoiSmFzbWluYSIsImlwYWRkciI6IjkzLjEwMy4xNTkuOCIsIm5hbWUiOiJKYXNtaW5hIFppdmFub3ZpYyIsIm9pZCI6IjUzN2U3MWFkLWFhZjItNDkwYi04OTBmLWE2MzdmYjcxYzFkNSIsInBsYXRmIjoiMyIsInB1aWQiOiIxMDAzN0ZGRUFDNjhENTJBIiwic2NwIjoiQ2FsZW5kYXJzLlJlYWRXcml0ZSBDb250YWN0cy5SZWFkV3JpdGUgRmlsZXMuUmVhZFdyaXRlIEZpbGVzLlJlYWRXcml0ZS5BbGwgTWFpbC5SZWFkIE1haWwuUmVhZFdyaXRlIE1haWwuU2VuZCBvcGVuaWQgcHJvZmlsZSBUYXNrcy5SZWFkV3JpdGUgZW1haWwiLCJzdWIiOiJvbUxqYk1lZURNenpJWk9EaXZsdEFmSmtPc2hzZXBrWk1Zb2F0bDNtdXFrIiwidGlkIjoiMWY1MGEzOGYtOTYwNC00OTY3LTgwNGQtYmM2YTdjZjcwNWFlIiwidW5pcXVlX25hbWUiOiJidHJhY2tjcm1AYnRyYWNrY3JtMzY1LmNvbSIsInVwbiI6ImJ0cmFja2NybUBidHJhY2tjcm0zNjUuY29tIiwidXRpIjoiRU5IdjMtdUxOVWE1bkk0U2VEeHBBQSIsInZlciI6IjEuMCIsIndpZHMiOlsiNjJlOTAzOTQtNjlmNS00MjM3LTkxOTAtMDEyMTc3MTQ1ZTEwIl0sInhtc19zdCI6eyJzdWIiOiJCbzk4WFcyUWFhd0FRX0dOalEyVlltM0d4N1hVb01iZDlyMklYaVYzYW5zIn0sInhtc190Y2R0IjoxNTMxODIwMjEwfQ.bZWCB5NJkKDZ02ITgj4JDDyfn6UKN7zMLyfcVUN8jD28xuoDFhcCxwmR6M5TQro1VzrP8PxTxsL7rx702RWVSASjin7_F7rYclJvQtnO8i8DpL-DTjZ0UM9ZV_D9eApzomwuWqo0fXvDbpW9Q3MiurLLiBdXthmURPBfkoKp48gg7UqPRegnQXIR5f5YLgQKKAd3fIe4IreuasOpa0b-qZkHolr0yN0VApFiIhm86Rz031nlEDobDnRXxNxAwmTx9WGY2rS9ESXpT0Y-fCCtJ45NZJoHW2FZQKu4aEEhmVTpWpHmubxd17DOAmf92wY0jnpgf4oZPg1PxaoSLX2rBA','OAQABAAAAAADXzZ3ifr-GRbDT45zNSEFE-xQ6V1GESeSUWloeoqzf3LMgRd5b-rlhq4C38IAHJ1asHWif_sOekL7ljRMuYKGjzPaUuh5K1YgM08nW2AN4PFI-vfXfzOwbFJwhYZo1-JOCvW4j9ThXkMoPDl8j69k0cWUN_eKGvCQnLmSvRWoT9Ubq6qDKMuC-ojMgPwH1kzUCFY48R-5bSpXtmLEswqDUBRT5bkj5vA73yQUHTWBBa7JGeMJDUwBjqII9FA1_85wi-rFgAAmDWb-Vz3PB3TvowRgrB-NERvyoxF7u1RQ7cgm8oGxPr6rZ27kHJjjDTmUTnZXVEHsKolJ0ZnDTd1v7U5jLxJPp6NuvSKyuAZZ7khqzIN4bgdp920lGbRci8_JlWPUWNd7FB1iOeFv1ZQg77ZCLw1p_6FsSWTRQmkJiRRfO9kQO4j6x3tcGxdZFj-xHbeSgge_yzY4aylxbAZdfzggxAq7kMLlZ1XM5qH9e9fzbE8a4ETsH9IrLpp_ThL8ACKUhSzxbUfmFGtORFuG54boNb7q2onApuPolqJTm3mlGFjQ5PhhtYJJmn-TB0rkBJnVtIHubHVbXaO2zz3MOk5hOYELsicFIefkkPoFPQUFCEcYyuE3WpP7rtoiGNytgq0x7xC0F6_Hx2XqJEp85W0OmOuzTiYxZ9qlTeRKvKmcQZBzvQmLjVtdi6cbeHjYh02qKKq6iYz5upbHM2HJrua62Sdyuq9m_0gw_gGjYXmZaYUNZCM_gyxcKr5uP0GmSMO6BSLnFg91r8iz-giNJY4YRPQM_HK0AWkGqA4jF9c-74Bl-19MAjWHqe-NcnPWdr0CsWSihcXBxPWRCckPUIAA','2018-10-09 17:13:04','eyJ0eXAiOiJKV1QiLCJub25jZSI6IkFRQUJBQUFBQUFEWHpaM2lmci1HUmJEVDQ1ek5TRUZFWllMSUJpVE9jMUxLM3N6S1Q4dEtfMDZQSmZUUmVLaElzZHFKbERweGFpRWo5NlY4eVlXWnpGRnVyRS14Zm1vMU1PbFFzSWgzU0E4NzhlWloyWDM3UVNBQSIsImFsZyI6IlJTMjU2IiwieDV0IjoiaTZsR2szRlp6eFJjVWIyQzNuRVE3c3lISmxZIiwia2lkIjoiaTZsR2szRlp6eFJjVWIyQzNuRVE3c3lISmxZIn0.eyJhdWQiOiJodHRwczovL2dyYXBoLm1pY3Jvc29mdC5jb20iLCJpc3MiOiJodHRwczovL3N0cy53aW5kb3dzLm5ldC8xZjUwYTM4Zi05NjA0LTQ5NjctODA0ZC1iYzZhN2NmNzA1YWUvIiwiaWF0IjoxNTM5MDg5ODU1LCJuYmYiOjE1MzkwODk4NTUsImV4cCI6MTUzOTA5Mzc1NSwiYWNjdCI6MCwiYWNyIjoiMSIsImFpbyI6IkFTUUEyLzhJQUFBQWpwcEhWY1J0SUxOK2lVWTd4bURwdXROZnd4VmRuY0paZTVmcjdJam8xaUE9IiwiYW1yIjpbInB3ZCJdLCJhcHBfZGlzcGxheW5hbWUiOiJiVHJhY2tDUk0iLCJhcHBpZCI6ImMyNzg1MDcwLWYxNmQtNDZmNS1iYzEyLTMwNDQxMGVjYThhZCIsImFwcGlkYWNyIjoiMSIsImZhbWlseV9uYW1lIjoiWml2YW5vdmljIiwiZ2l2ZW5fbmFtZSI6Ikphc21pbmEiLCJpcGFkZHIiOiI5My4xMDMuMTU5LjgiLCJuYW1lIjoiSmFzbWluYSBaaXZhbm92aWMiLCJvaWQiOiI1MzdlNzFhZC1hYWYyLTQ5MGItODkwZi1hNjM3ZmI3MWMxZDUiLCJwbGF0ZiI6IjMiLCJwdWlkIjoiMTAwMzdGRkVBQzY4RDUyQSIsInNjcCI6IkNhbGVuZGFycy5SZWFkV3JpdGUgQ29udGFjdHMuUmVhZFdyaXRlIEZpbGVzLlJlYWRXcml0ZSBGaWxlcy5SZWFkV3JpdGUuQWxsIE1haWwuUmVhZCBNYWlsLlJlYWRXcml0ZSBNYWlsLlNlbmQgb3BlbmlkIHByb2ZpbGUgVGFza3MuUmVhZFdyaXRlIGVtYWlsIiwic3ViIjoib21MamJNZWVETXp6SVpPRGl2bHRBZkprT3Noc2Vwa1pNWW9hdGwzbXVxayIsInRpZCI6IjFmNTBhMzhmLTk2MDQtNDk2Ny04MDRkLWJjNmE3Y2Y3MDVhZSIsInVuaXF1ZV9uYW1lIjoiYnRyYWNrY3JtQGJ0cmFja2NybTM2NS5jb20iLCJ1cG4iOiJidHJhY2tjcm1AYnRyYWNrY3JtMzY1LmNvbSIsInV0aSI6IjZtcnp4aHF2R0VtdjhkVW1DOGxqQUEiLCJ2ZXIiOiIxLjAiLCJ3aWRzIjpbIjYyZTkwMzk0LTY5ZjUtNDIzNy05MTkwLTAxMjE3NzE0NWUxMCJdLCJ4bXNfc3QiOnsic3ViIjoiQm85OFhXMlFhYXdBUV9HTmpRMlZZbTNHeDdYVW9NYmQ5cjJJWGlWM2FucyJ9LCJ4bXNfdGNkdCI6MTUzMTgyMDIxMH0.joqCHcMg3xWSn_qk6y3cPLID5Xolip-cQq2GtPI6c-GSrbQN6Ml65Teo5KVNvh7RFZM5PGJ7Govnn43WT-x3RI6MaXVv9AHQ8OkbXksirFt2YguP4k-y7McVPITPcrMIJH7SerAivh3dHTh-9AfrtVdSoJXLY4Qe1jQ-RHd_ewZj-RZQ0n8h3OLH86xUPy_aS4WzTo6psbVrbQThpMbLBxg-5m4bhhAQInTdK2CL4qh2XU16xXAoCEdUp3XdAM1DFMu7pz8wkBXJe_CwF8u-Z8Y3aKv1epjmRTIE0lqZSpDR0q6SN7jiz0IpmcTD23GdpMul3Rp2HAdPeu2uUaiS1Q','OAQABAAAAAADXzZ3ifr-GRbDT45zNSEFEPxLsNxpIID4drzrSjNrhUIiPe7dnlcDbR8ona4Qx8-KuYeQz1frm5P0jmHSENdGB8d6Y3HC9fK4o0LyO5mUOnWPNxPoUhmy2ARBjOLFmye3IgVlc0Rjxsv1CR5zfvxgfST4djLTbYz1tn_kKfTYM2VMhcYsaAJ3GF1SikDjCeYdyr1OXjk3F_OJ2C_u3JYDGvleo1lLP2ia3HQmG8u-vW6OSIPds0TITZV6wl31u51OCpm0f9fb_JJUxxvDV6GNny7YtKd4DZYcm7-mN121CvohgIi1qXjQRzzkdKyaltNwss-T7l_JazWVUVjURzEE0aFSaY_2fd4X32OpE-osJRIsFIV5FBLtmJjZcbEUI9PUc3k9i-xkmQI_TMYlod50meWQKaNkoyIm5wktuxLJgPz9vUWpPmn4MjvrsB5vcRoiIxe0-C43kBwYsDTAVtFgF8Vns5z7Axq8S1-xWmprb_GyoF_X2VIph39sfma5MqjxskjCKmuifYMKrFutZP6RlZ94gykwiclTHDmcC-H81Db3Taisvg1X459CRwTIQ8aioFUrX93Y72DNjTtoh37NQj0ps2ZorwAVQwWOrGFf8_qmavJSFeuDGxqmjk-NctJKL62cJhePyzSdnleociHPUJNejcR5hv05JFfY1djIfg_j8bJbiMA2Hyo51RTcoH0l0oc64iHlu18RjLgY716wrMKvtSIAIg0bKdPHORKnDqQ8uhn8wKE1KvO8zeh_GNQV34tLv09N1ARw5E1x4m37EuOUaXgRbvIqSrgR1MJqRrE5HIjJOFVEJ0QhTbCaZiDXaFNx4N36_TLvNTLZTbTBOIAA','2018-10-09 16:02:34',NULL,NULL,'1/uAsbo5dLSLA-g2RVortAqfGS9a6WrgrEBuLkfAYvwrw','2018-10-09 16:13:05'),
(32,63,1,0,1,1,1,3,1,5,1,30,1,0,60,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-10-08 11:52:38'),
(33,64,1,0,1,1,1,3,1,5,1,30,1,0,60,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-10-03 14:54:55'),
(34,65,1,0,1,1,1,3,1,5,1,30,1,0,60,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'vm3.yubi.si',1,0,993,NULL,'ziga.babnik@btrack.io','12Tojegeslo#','vm3.yubi.si',1,0,993,465,'it@goricki.si','12Tojegeslo#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1/puZZyl2wk8pR_TQjlukO568qIooFCnWWk91u6q9VqWg','2018-10-09 12:46:59'),
(35,66,1,0,1,1,1,3,1,5,1,30,1,0,60,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-10-03 11:42:52'),
(36,67,1,0,1,1,1,3,1,5,1,30,1,0,60,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-10-03 14:24:39'),
(37,68,1,0,1,1,1,3,1,5,1,30,1,0,60,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-10-05 09:15:55'),
(38,69,1,0,1,1,1,3,1,5,1,30,1,0,60,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-10-05 09:16:10'),
(39,70,1,0,1,1,1,3,1,5,1,30,1,0,60,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-10-06 09:22:41');

/*Table structure for table `employeelogs` */

DROP TABLE IF EXISTS `employeelogs`;

CREATE TABLE `employeelogs` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `datetime` text NOT NULL,
  `action` text NOT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `employeelogs` */

insert  into `employeelogs`(`log_id`,`employee_id`,`datetime`,`action`) values 
(1,1,'2018-09-24 16:02:40','login'),
(2,1,'2018-09-24 16:05:40','login'),
(3,1,'2018-09-24 17:11:56','logout'),
(4,1,'2018-09-25 08:00:19','login'),
(5,1,'2018-09-25 13:38:55','logout'),
(6,66,'2018-10-03 14:04:47','login'),
(7,66,'2018-10-03 14:05:01','logout'),
(8,66,'2018-10-03 14:21:04','login'),
(9,66,'2018-10-03 14:21:32','logout'),
(10,1,'2018-10-09 06:58:37','logout');

/*Table structure for table `employees` */

DROP TABLE IF EXISTS `employees`;

CREATE TABLE `employees` (
  `employee_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_name` text COLLATE utf8_slovenian_ci NOT NULL,
  `employee_surname` text COLLATE utf8_slovenian_ci NOT NULL,
  `employee_residence` text COLLATE utf8_slovenian_ci NOT NULL,
  `residence_latitude` text COLLATE utf8_slovenian_ci NOT NULL,
  `residence_longitude` text COLLATE utf8_slovenian_ci NOT NULL,
  `employee_email` text COLLATE utf8_slovenian_ci NOT NULL,
  `employee_phone` text COLLATE utf8_slovenian_ci NOT NULL,
  `employee_workphone` text COLLATE utf8_slovenian_ci NOT NULL,
  `employee_department` int(11) NOT NULL,
  `employee_position` text COLLATE utf8_slovenian_ci NOT NULL,
  `latitude` text COLLATE utf8_slovenian_ci NOT NULL,
  `longitude` text COLLATE utf8_slovenian_ci NOT NULL,
  `logged_in` int(11) NOT NULL DEFAULT 0,
  `employee_active` int(11) NOT NULL DEFAULT 1,
  `employee_type` int(11) NOT NULL DEFAULT 0,
  `employee_workfrom` text COLLATE utf8_slovenian_ci NOT NULL,
  `employee_workto` text COLLATE utf8_slovenian_ci NOT NULL,
  `speed` int(11) NOT NULL DEFAULT 0,
  `distance` int(11) NOT NULL,
  `last_login` text COLLATE utf8_slovenian_ci NOT NULL,
  `last_login_web` text COLLATE utf8_slovenian_ci NOT NULL,
  `inactive_since` text COLLATE utf8_slovenian_ci NOT NULL,
  `username` text COLLATE utf8_slovenian_ci NOT NULL,
  `password` text COLLATE utf8_slovenian_ci NOT NULL,
  `ticketing_sla` int(11) NOT NULL DEFAULT 120,
  `workorder_sla` int(11) NOT NULL DEFAULT 120,
  `workgroup_sla` int(11) NOT NULL DEFAULT 120,
  `calls_sla` int(11) NOT NULL DEFAULT 120,
  `fcm_token` text COLLATE utf8_slovenian_ci NOT NULL,
  `tracking_fcm_token` text COLLATE utf8_slovenian_ci NOT NULL,
  `profile_image` text COLLATE utf8_slovenian_ci NOT NULL,
  `language` text COLLATE utf8_slovenian_ci NOT NULL,
  `date_format` text COLLATE utf8_slovenian_ci NOT NULL,
  `time_format` text COLLATE utf8_slovenian_ci NOT NULL,
  `employee_mailing` int(11) NOT NULL,
  `employee_sms` int(11) NOT NULL,
  `event_notifications` int(11) NOT NULL DEFAULT 1,
  `workorder_notifications` int(11) NOT NULL DEFAULT 1,
  `ticketing_notifications` int(11) NOT NULL DEFAULT 1,
  `workgroup_notifications` int(11) NOT NULL DEFAULT 1,
  `employee_online` int(11) DEFAULT 0,
  `telephony_email` int(11) DEFAULT NULL,
  `ticketing_email` int(11) DEFAULT NULL,
  `password_reset_token` varchar(200) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `first_login` int(11) DEFAULT 1,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

/*Data for the table `employees` */

insert  into `employees`(`employee_id`,`employee_name`,`employee_surname`,`employee_residence`,`residence_latitude`,`residence_longitude`,`employee_email`,`employee_phone`,`employee_workphone`,`employee_department`,`employee_position`,`latitude`,`longitude`,`logged_in`,`employee_active`,`employee_type`,`employee_workfrom`,`employee_workto`,`speed`,`distance`,`last_login`,`last_login_web`,`inactive_since`,`username`,`password`,`ticketing_sla`,`workorder_sla`,`workgroup_sla`,`calls_sla`,`fcm_token`,`tracking_fcm_token`,`profile_image`,`language`,`date_format`,`time_format`,`employee_mailing`,`employee_sms`,`event_notifications`,`workorder_notifications`,`ticketing_notifications`,`workgroup_notifications`,`employee_online`,`telephony_email`,`ticketing_email`,`password_reset_token`,`first_login`) values 
(1,'Demo','Demo','Pod hribom 55, Ljubljana, Slovenia','46.066576','14.47787530000005','it@netko.it','+38640377772','+38659211211',1,'Direktor','46.061791960647604','14.357984162359555',2,1,1,'08:00','16:30',7,0,'2018-09-25 08:00:19','2018-10-09 09:39:46','2018-10-09 14:57:43','demo@btrack.io','$2y$10$LHOgfyXMEmc18kcPBSUy1uSMXe5Os1.rUlA8FZJCMNnBDDOmcfNKy',120,120,120,120,'dz8a5AO1ND0:APA91bGrUUPTsm1lnB6enOR3Zj5tRiJWlXsF_829HSwiVuhrKZJtaZSeTuCU8i2UcoS2mMU3Mm9zIwp26_nalf3PucXMSNzhTs1aCVq5yKpWfWZx6rQlXmsAm-TpywkD8EpRBNrpnU7hglPo58FiroTLl7XKwaovLQ','fxBo3Mc7HNk:APA91bHzOeaSPmzumggZRHEWx8JM4DhVl6oE8msD1aUCJ7Qclm1MfrE-Adi6pFzVbPkojkCgMeIwlElDzsfqX6xhrXs4kp1342gmqHkUKGtmPAShm-lsA2NNr-5Bvbu2JmmZYeQ5fqbz','snoopy.jpg','en','DD.MM.YYYY','HH:mm',1,1,1,1,1,1,0,1,0,NULL,0),
(60,'Žiga','Babnik','Pod hribom 55, Ljubljana, Slovenia','46.066576','14.47787530000005','it@goricki.si','+38651206449','',8,'Podpora','','',2,1,0,'14:20','14:20',0,0,'','2018-09-25 12:43:09','2018-09-25 16:08:35','','$2y$10$.aaoyyiWGHS5j1uWnyBeZO99pla9b7rFjFKmZLLlAr/tcMsiujUzi',120,120,120,120,'','','','en','DD.MM.YYYY','HH:mm',1,1,1,1,1,1,0,0,NULL,NULL,0),
(62,'Žiga1','Babnik1','Pod hribom 55, Ljubljana, Slovenia','46.066576','14.47787530000005','ziga@netko.it','+38651206449','',15,'IT','','',2,1,1,'08:00','16:30',0,0,'','2018-10-09 09:57:31','2018-10-09 16:26:47','ziga@netko.it','$2y$10$yWf5L1sTCeV94vGd0X5VPOIaZgC9UPdeV3xmCewJikgU0Szesk4Oy',120,120,120,120,'','','','en','DD.MM.YYYY','HH:mm',1,1,1,1,1,1,0,0,1,'GUNlbOaVOudkKeOu',0),
(63,'Jasmina','Živanovic','Pod hribom 55, Ljubljana, Slovenia','46.066576','14.47787530000005','jasmina.zivanovic@wifi-hotspot.si','+38659211211','+38640427227',1,'OP','','',1,1,1,'08:00','16:30',0,0,'','2018-10-08 15:11:50','','jasmina.zivanovic@wifi-hotspot.si','$2y$10$kxj.6fvAhRQKTwXbdKYT5eGkIIstfYJJQS0rmJMNtOsAOaRQPBvju',120,120,120,120,'','','','en','DD.MM.YYYY','HH:mm',1,1,1,1,1,1,0,NULL,NULL,'cB8yNGQUro7MSDbn',0),
(64,'Miha','Hočevar','Pod hribom 55, Ljubljana, Slovenia','46.066576','14.47787530000005','miha.hocevar@btrack.io','+38641317700','+38641317700',17,'direktor','','',2,1,1,'08:00','16:30',0,0,'','2018-10-08 09:46:45','2018-10-08 10:18:47','miha.hocevar@btrack.io','$2y$10$EnsgjysXmYkp0WDjAw4CJOAk4xKVz9aivR/DDbqlUa2ItC4stu8kC',120,120,120,120,'','','','en','DD.MM.YYYY','HH:mm',1,1,1,1,1,1,0,NULL,NULL,NULL,0),
(65,'Btrack1','Test1','Pod hribom 55, Ljubljana, Slovenia','46.066576','14.47787530000005','btrackio2018@gmail.com','+38651206449','',15,'IT','','',2,1,0,'08:00','16:30',0,0,'','2018-10-08 14:50:00','2018-10-09 14:48:58','btrackio2018@gmail.com','$2y$10$.0v5sI8mt.t2sTjJY62Ajed7jh4CLmxiYhkU3b17e8Gw3ossqHLue',120,120,120,120,'','','','en','DD.MM.YYYY','HH:mm',1,1,1,1,1,1,0,NULL,0,NULL,0),
(67,'Mojca','Pokreculja','spodnje pirniče 48n','','','kosarica.idej@gmail.com','+38640427227','+38640427227',18,'sales','','',0,1,0,'08:00','16:30',0,0,'','2018-10-05 13:51:01','','kosarica.idej@gmail.com','$2y$10$1o45ltB5/xTyq/jy323r.eTJmZZpq37hxyGw4dhAypIHpOn3Niix2',120,120,120,120,'','','','en','DD.MM.YYYY','HH:mm',1,1,1,1,1,1,0,NULL,NULL,NULL,0),
(68,'Nejc','Rihar','Polhov Gradec 82, Polhov Gradec, Slovenia','46.0651368','14.315255200000024','neicrihar@gmail.com','+38631415246','',1,'Programer','','',0,1,0,'08:00','16:30',0,0,'','2018-10-05 09:17:09','','neicrihar@gmail.com','$2y$10$dVvcA.UouJ6B.ewKl708WOPbQUrCd8N3MbPWoIqXojp5HztJ5JoHS',120,120,120,120,'','','','en','DD.MM.YYYY','HH:mm',1,1,1,1,1,1,0,NULL,NULL,'xlOlLMVKyMfdGfsq',0),
(69,'Grega','Voipme','Pod hribom 55, Ljubljana, Slovenia','46.066576','14.47787530000005','voipme2006@gmail.com','+38640377772','+38659211211',1,'IT','','',0,1,0,'08:00','16:30',0,0,'','2018-10-05 09:17:57','','voipme2006@gmail.com','$2y$10$HQ3oE5ZOaz5a7RykRCPomOPoRWTOZAWAn3/pRsMoxoqaYDGYTst0i',120,120,120,120,'','','','en','DD.MM.YYYY','HH:mm',1,1,1,1,1,1,0,NULL,NULL,'lgZaxV1vvfBCP1pF',0),
(70,'Janez','Kranjski','Cesta v Prod 84, Ljubljana, Slovenia','46.073861','14.60884169999997','grega.goricki@gmail.com','+38664119001','+38615121845',1,'test','','',0,1,0,'08:00','16:30',0,0,'','','','grega.goricki@gmail.com','$2y$10$JCkYBbeuWaYmE1jROMON6.bqFXaxoqU/2Y2qc0Q4sXKYTPvb6JcDq',120,120,120,120,'','','','en','DD.MM.YYYY','HH:mm',1,1,1,1,1,1,0,NULL,NULL,NULL,1);

/*Table structure for table `equipment_reservations` */

DROP TABLE IF EXISTS `equipment_reservations`;

CREATE TABLE `equipment_reservations` (
  `reservation_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `equipment_id` int(11) NOT NULL,
  `date_from` text NOT NULL,
  `date_to` text NOT NULL,
  `time_from` text NOT NULL,
  `time_to` text NOT NULL,
  `reservation_status` int(11) NOT NULL,
  PRIMARY KEY (`reservation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `equipment_reservations` */

/*Table structure for table `event_actions` */

DROP TABLE IF EXISTS `event_actions`;

CREATE TABLE `event_actions` (
  `action_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `description` text COLLATE utf8_slovenian_ci NOT NULL,
  `type` int(11) NOT NULL DEFAULT 0,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`action_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

/*Data for the table `event_actions` */

insert  into `event_actions`(`action_id`,`employee_id`,`event_id`,`description`,`type`,`created_on`) values 
(1,62,1,'Event created',0,'2018-10-08 15:58:53'),
(2,65,2,'Event created',0,'2018-10-08 16:00:38'),
(3,65,2,'Updated fields - Type changed to Meeting',0,'2018-10-08 16:01:36'),
(4,65,3,'Event created',0,'2018-10-08 16:02:04'),
(5,65,4,'Event created',0,'2018-10-08 16:02:36'),
(6,65,4,'Updated fields - Status changed to Incomplete',0,'2018-10-08 16:03:07'),
(7,65,5,'Event created',0,'2018-10-08 16:03:50'),
(8,65,5,'Event deleted',1,'2018-10-08 16:03:57'),
(9,65,4,'Event rescheduled to 2018-10-09 16:02',0,'2018-10-08 16:04:12'),
(10,65,4,'Updated fields - Status changed to Finished',0,'2018-10-08 16:04:21'),
(11,62,3,'Updated fields - Participants changed to Žiga1 Babnik1, Btrack1 Test1, Status changed to In progress',0,'2018-10-08 16:08:58');

/*Table structure for table `event_calendars` */

DROP TABLE IF EXISTS `event_calendars`;

CREATE TABLE `event_calendars` (
  `calendar_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `calendar_name` varchar(250) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `created_on` varchar(250) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `calendar_uid` varchar(1000) COLLATE utf8_slovenian_ci DEFAULT NULL,
  PRIMARY KEY (`calendar_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

/*Data for the table `event_calendars` */

insert  into `event_calendars`(`calendar_id`,`employee_id`,`calendar_name`,`created_on`,`calendar_uid`) values 
(1,65,'POSČLOVNI','2018-10-08 16:01:46',NULL);

/*Table structure for table `events` */

DROP TABLE IF EXISTS `events`;

CREATE TABLE `events` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_uid` text COLLATE utf8_slovenian_ci NOT NULL,
  `employee_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `subsidiary_id` int(11) DEFAULT NULL,
  `event_type` text COLLATE utf8_slovenian_ci NOT NULL,
  `event_subject` text COLLATE utf8_slovenian_ci NOT NULL,
  `event_startdate` text COLLATE utf8_slovenian_ci NOT NULL,
  `event_starttime` text COLLATE utf8_slovenian_ci NOT NULL,
  `event_enddate` text COLLATE utf8_slovenian_ci NOT NULL,
  `event_endtime` text COLLATE utf8_slovenian_ci NOT NULL,
  `participants` text COLLATE utf8_slovenian_ci NOT NULL,
  `external_participants` text COLLATE utf8_slovenian_ci NOT NULL,
  `event_reminders` text COLLATE utf8_slovenian_ci NOT NULL,
  `event_description` text COLLATE utf8_slovenian_ci NOT NULL,
  `event_importance` text COLLATE utf8_slovenian_ci NOT NULL,
  `event_address` text COLLATE utf8_slovenian_ci NOT NULL,
  `latitude` text COLLATE utf8_slovenian_ci NOT NULL,
  `longitude` text COLLATE utf8_slovenian_ci NOT NULL,
  `distance` text COLLATE utf8_slovenian_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `accepted_by` text COLLATE utf8_slovenian_ci NOT NULL,
  `declined_by` text COLLATE utf8_slovenian_ci NOT NULL,
  `event_files` text COLLATE utf8_slovenian_ci NOT NULL,
  `event_arrivaldate` text COLLATE utf8_slovenian_ci NOT NULL,
  `event_endingdate` text COLLATE utf8_slovenian_ci NOT NULL,
  `last_modified` text COLLATE utf8_slovenian_ci NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `calendar_id` int(11) DEFAULT 0,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

/*Data for the table `events` */

insert  into `events`(`event_id`,`event_uid`,`employee_id`,`customer_id`,`subsidiary_id`,`event_type`,`event_subject`,`event_startdate`,`event_starttime`,`event_enddate`,`event_endtime`,`participants`,`external_participants`,`event_reminders`,`event_description`,`event_importance`,`event_address`,`latitude`,`longitude`,`distance`,`status`,`accepted_by`,`declined_by`,`event_files`,`event_arrivaldate`,`event_endingdate`,`last_modified`,`created_on`,`calendar_id`) values 
(1,'',62,4,NULL,'Meeting','EVENT ADMIN','2018-10-08','15:58','2018-10-08','16:58','62','','','','Normal','Pod hribom 55, Ljubljana, Slovenia','46.066576','14.47787530000005','',0,'','','obrazec za vračilo blaga.pdf','','','','2018-10-08 15:58:53',0),
(2,'',65,1,NULL,'Meeting','EVENT REGULAR','2018-10-08','16:00','2018-10-08','17:00','65','','','','Normal','ROŽNA DOLINA, CESTA IV 22 , 1000 LJUBLJANA','46.0474705','14.484151900000029','',1,'','','slide_1.jpg','','','','2018-10-08 16:01:36',0),
(3,'',65,2,NULL,'Regular','POSLOVNI1','2018-10-08','16:01','2018-10-08','17:01','62,65','','2018-10-08 15:51','','Normal','Pod hribom 55, Ljubljana, Slovenia','46.066576','14.47787530000005','',1,'','','','','','','2018-10-08 16:12:42',0),
(4,'',65,3,NULL,'Meeting','Regular2','2018-10-09','16:02','2018-10-09','17:02','65','','','','Low','MARINOVŠEVA CESTA 3, 1000 LJUBLJANA','46.1152943','14.460030700000061','',2,'','','','','','','2018-10-08 16:04:21',0);

/*Table structure for table `filetransfers` */

DROP TABLE IF EXISTS `filetransfers`;

CREATE TABLE `filetransfers` (
  `transfer_id` int(11) NOT NULL AUTO_INCREMENT,
  `unique_id` varchar(100) COLLATE utf8_slovenian_ci NOT NULL,
  `filepath` varchar(200) COLLATE utf8_slovenian_ci NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `employee_id` int(11) NOT NULL,
  `sent_to` varchar(1000) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `email_to` varchar(1000) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `files` text COLLATE utf8_slovenian_ci DEFAULT NULL,
  `filesize` text COLLATE utf8_slovenian_ci DEFAULT NULL,
  `downloaded` int(11) DEFAULT 0,
  PRIMARY KEY (`transfer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

/*Data for the table `filetransfers` */

insert  into `filetransfers`(`transfer_id`,`unique_id`,`filepath`,`created_on`,`employee_id`,`sent_to`,`email_to`,`customer_id`,`files`,`filesize`,`downloaded`) values 
(1,'T8aItARUnkmZo9s4LhepNxF06XbwPCEOv2KBV5lqcGrjYWugyJd3HDSQizf7M1','Uploads/TransferFiles/omy5iPCKgl8z.zip','2018-09-26 09:54:30',1,'+38640377772','it@netko.it',1,'PREDICTIVE DIALER SETUP.pdf','117.80 KB',0),
(2,'OguNLhB3SHVGeklXcEsoarqDw8zbyZKWIvfU5xjP4F29QY6AtMnJ1pdiTCm0R7','Uploads/TransferFiles/niv3fAmh4yZD.zip','2018-09-26 13:58:48',1,'+38641391536','hojnik.marko@siol.net',NULL,'File transfer.pdf','7.95 KB',0),
(3,'Vdyi3qQUHP026RkO5Fw4WNvT1JBMrZeCmEoDhntKfczxl79XgYGLaA8bpuISjs','Uploads/TransferFiles/pwMxAXzyNHQt.zip','2018-09-26 14:53:04',1,'+38640427227','kosarica.idej@gmail.com',NULL,'Petrol1.png','846.87 KB',1),
(4,'5pZGbhyPCHalDuYw26z9o3qvxTRSWrgmNUkVL0nFAeEcXKJ1jQsitO84fMB7dI','Uploads/TransferFiles/azob5yYAxpSP.zip','2018-09-26 15:23:26',1,'+38640377772','it@netko.it',1,'File transfer.pdf','7.95 KB',1),
(5,'2a4ivbxE5KDwXZLnSINeod9Fjp1scuAJM3tkQGqhgOyWrHURBTl6C8VmfP0zY7','Uploads/TransferFiles/2DKYhIeEBLSv.zip','2018-09-28 12:50:07',1,'+38641657739','matevz.pirih@zelva.si',NULL,'zrkv.csv','2.05 KB',1),
(6,'iBc69XxbZvsSlgtzUPykA0ChQWJa4e8IfDYqd12EuoGprnwNMTVRLKjF7HO5m3','Uploads/TransferFiles/XJSWGKkBTA4Q.zip','2018-10-03 14:57:30',64,'+38641317700','miha.hocevar@gmail.com',NULL,'fidelty.docx','0 bytes',1),
(7,'7NubGjxKBqvSMf390mVLFJyp2ow6XcECHeD8rsU5lYZTdhgnaWzOPI4AtQ1kiR','Uploads/TransferFiles/GyN9UrRnBhbk.zip','2018-10-07 19:12:23',1,'+38640377772','it@netko.it',NULL,'catt.PNG','15.78 KB',1),
(8,'sbr9ZTaueDB6HJ1YlL8GdhSq7gNxvwUiRtoWQnKCmIV4AckMX52FfyPzEpO0j3','Uploads/TransferFiles/AlyZIqTdpQCw.zip','2018-10-07 21:45:17',63,'+38640427227','jasmina@institut-mak.si',NULL,'smart-city-initiatives-696x421.png','131.39 KB',1);

/*Table structure for table `form_templates` */

DROP TABLE IF EXISTS `form_templates`;

CREATE TABLE `form_templates` (
  `template_id` int(11) NOT NULL AUTO_INCREMENT,
  `template_name` text COLLATE utf8_slovenian_ci DEFAULT NULL,
  `template_data` text COLLATE utf8_slovenian_ci DEFAULT NULL,
  `created_on` varchar(200) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `report_fields` varchar(1000) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `template_description` text COLLATE utf8_slovenian_ci DEFAULT NULL,
  PRIMARY KEY (`template_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

/*Data for the table `form_templates` */

insert  into `form_templates`(`template_id`,`template_name`,`template_data`,`created_on`,`report_fields`,`employee_id`,`template_description`) values 
(1,'Basic form template','{\n	\"id\": \"de0098c8-d278-463d-9968-8456a564d668\",\n	\"settings\": {},\n	\"stages\": {\n		\"b66129d4-b3fd-4d15-a8c4-5ab5cff33fef\": {\n			\"id\": \"b66129d4-b3fd-4d15-a8c4-5ab5cff33fef\",\n			\"settings\": {},\n			\"rows\": [\n				\"75bb9ce7-2a69-45cf-a7e0-bc06242d453d\",\n				\"2bb3aea8-ab60-4d03-b47e-c2113f6aa7d3\"\n			]\n		}\n	},\n	\"rows\": {\n		\"75bb9ce7-2a69-45cf-a7e0-bc06242d453d\": {\n			\"columns\": [\n				\"07ce1e6d-bd5e-43cf-b42c-4e31395f58bc\"\n			],\n			\"id\": \"75bb9ce7-2a69-45cf-a7e0-bc06242d453d\",\n			\"config\": {\n				\"fieldset\": false,\n				\"legend\": \"\",\n				\"inputGroup\": false\n			},\n			\"attrs\": {\n				\"className\": \"f-row\"\n			}\n		},\n		\"2bb3aea8-ab60-4d03-b47e-c2113f6aa7d3\": {\n			\"columns\": [\n				\"d2347e7d-103d-4413-98e5-7e4362a39f0c\"\n			],\n			\"id\": \"2bb3aea8-ab60-4d03-b47e-c2113f6aa7d3\",\n			\"config\": {\n				\"fieldset\": false,\n				\"legend\": \"\",\n				\"inputGroup\": false\n			},\n			\"attrs\": {\n				\"className\": \"f-row\"\n			}\n		}\n	},\n	\"columns\": {\n		\"07ce1e6d-bd5e-43cf-b42c-4e31395f58bc\": {\n			\"fields\": [\n				\"f759c0e4-8fd9-40e6-aa7f-9c8fe7777b2b\"\n			],\n			\"id\": \"07ce1e6d-bd5e-43cf-b42c-4e31395f58bc\",\n			\"config\": {\n				\"width\": \"100%\"\n			},\n			\"className\": []\n		},\n		\"d2347e7d-103d-4413-98e5-7e4362a39f0c\": {\n			\"fields\": [\n				\"2417f270-616d-4573-b668-ffe9193a2cfe\"\n			],\n			\"id\": \"d2347e7d-103d-4413-98e5-7e4362a39f0c\",\n			\"config\": {\n				\"width\": \"100%\"\n			},\n			\"className\": []\n		}\n	},\n	\"fields\": {\n		\"f759c0e4-8fd9-40e6-aa7f-9c8fe7777b2b\": {\n			\"tag\": \"input\",\n			\"attrs\": {\n				\"type\": \"text\",\n				\"required\": false,\n				\"className\": \"\",\n				\"name\": \"input-4449\"\n			},\n			\"config\": {\n				\"disabledAttrs\": [\n					\"type\"\n				],\n				\"label\": \"Subject<br>\"\n			},\n			\"meta\": {\n				\"group\": \"common\",\n				\"icon\": \"text-input\",\n				\"id\": \"text-input\"\n			},\n			\"fMap\": \"attrs.value\",\n			\"id\": \"f759c0e4-8fd9-40e6-aa7f-9c8fe7777b2b\"\n		},\n		\"2417f270-616d-4573-b668-ffe9193a2cfe\": {\n			\"tag\": \"textarea\",\n			\"config\": {\n				\"label\": \"Description\"\n			},\n			\"meta\": {\n				\"group\": \"common\",\n				\"icon\": \"textarea\",\n				\"id\": \"textarea\"\n			},\n			\"attrs\": {\n				\"required\": false,\n				\"name\": \"textarea-5932\"\n			},\n			\"id\": \"2417f270-616d-4573-b668-ffe9193a2cfe\"\n		}\n	}\n}','2018-09-14 10:46:37','',1,'A basic form template for general use.'),
(2,'Some template','{\n	\"id\": \"de0098c8-d278-463d-9968-8456a564d668\",\n	\"settings\": {},\n	\"stages\": {\n		\"b66129d4-b3fd-4d15-a8c4-5ab5cff33fef\": {\n			\"id\": \"b66129d4-b3fd-4d15-a8c4-5ab5cff33fef\",\n			\"settings\": {},\n			\"rows\": [\n				\"75bb9ce7-2a69-45cf-a7e0-bc06242d453d\",\n				\"2bb3aea8-ab60-4d03-b47e-c2113f6aa7d3\",\n				\"60fc187a-58d1-4363-a4f5-8f6b16b9a6e4\"\n			]\n		}\n	},\n	\"rows\": {\n		\"75bb9ce7-2a69-45cf-a7e0-bc06242d453d\": {\n			\"columns\": [\n				\"07ce1e6d-bd5e-43cf-b42c-4e31395f58bc\"\n			],\n			\"id\": \"75bb9ce7-2a69-45cf-a7e0-bc06242d453d\",\n			\"config\": {\n				\"fieldset\": false,\n				\"legend\": \"\",\n				\"inputGroup\": false\n			},\n			\"attrs\": {\n				\"className\": \"f-row\"\n			}\n		},\n		\"2bb3aea8-ab60-4d03-b47e-c2113f6aa7d3\": {\n			\"columns\": [\n				\"d2347e7d-103d-4413-98e5-7e4362a39f0c\"\n			],\n			\"id\": \"2bb3aea8-ab60-4d03-b47e-c2113f6aa7d3\",\n			\"config\": {\n				\"fieldset\": false,\n				\"legend\": \"\",\n				\"inputGroup\": false\n			},\n			\"attrs\": {\n				\"className\": \"f-row\"\n			}\n		},\n		\"60fc187a-58d1-4363-a4f5-8f6b16b9a6e4\": {\n			\"columns\": [\n				\"a5050cd7-0f01-4cd8-873f-49e557393494\"\n			],\n			\"id\": \"60fc187a-58d1-4363-a4f5-8f6b16b9a6e4\",\n			\"config\": {\n				\"fieldset\": false,\n				\"legend\": \"\",\n				\"inputGroup\": false\n			},\n			\"attrs\": {\n				\"className\": \"f-row\"\n			}\n		}\n	},\n	\"columns\": {\n		\"07ce1e6d-bd5e-43cf-b42c-4e31395f58bc\": {\n			\"fields\": [\n				\"f759c0e4-8fd9-40e6-aa7f-9c8fe7777b2b\"\n			],\n			\"id\": \"07ce1e6d-bd5e-43cf-b42c-4e31395f58bc\",\n			\"config\": {\n				\"width\": \"100%\"\n			},\n			\"className\": []\n		},\n		\"d2347e7d-103d-4413-98e5-7e4362a39f0c\": {\n			\"fields\": [\n				\"2417f270-616d-4573-b668-ffe9193a2cfe\"\n			],\n			\"id\": \"d2347e7d-103d-4413-98e5-7e4362a39f0c\",\n			\"config\": {\n				\"width\": \"100%\"\n			},\n			\"className\": []\n		},\n		\"a5050cd7-0f01-4cd8-873f-49e557393494\": {\n			\"fields\": [\n				\"f4270ba2-4a52-402b-9bf0-2030880aea00\"\n			],\n			\"id\": \"a5050cd7-0f01-4cd8-873f-49e557393494\",\n			\"config\": {\n				\"width\": \"100%\"\n			},\n			\"className\": []\n		}\n	},\n	\"fields\": {\n		\"f759c0e4-8fd9-40e6-aa7f-9c8fe7777b2b\": {\n			\"tag\": \"input\",\n			\"attrs\": {\n				\"type\": \"text\",\n				\"required\": false,\n				\"className\": \"\",\n				\"name\": \"input-4449\"\n			},\n			\"config\": {\n				\"disabledAttrs\": [\n					\"type\"\n				],\n				\"label\": \"Subject<br>\"\n			},\n			\"meta\": {\n				\"group\": \"common\",\n				\"icon\": \"text-input\",\n				\"id\": \"text-input\"\n			},\n			\"fMap\": \"attrs.value\",\n			\"id\": \"f759c0e4-8fd9-40e6-aa7f-9c8fe7777b2b\"\n		},\n		\"2417f270-616d-4573-b668-ffe9193a2cfe\": {\n			\"tag\": \"textarea\",\n			\"config\": {\n				\"label\": \"Description\"\n			},\n			\"meta\": {\n				\"group\": \"common\",\n				\"icon\": \"textarea\",\n				\"id\": \"textarea\"\n			},\n			\"attrs\": {\n				\"required\": false,\n				\"name\": \"textarea-5932\"\n			},\n			\"id\": \"2417f270-616d-4573-b668-ffe9193a2cfe\"\n		},\n		\"f4270ba2-4a52-402b-9bf0-2030880aea00\": {\n			\"tag\": \"input\",\n			\"attrs\": {\n				\"type\": \"date\",\n				\"required\": false,\n				\"className\": \"\",\n				\"name\": \"date-5553\"\n			},\n			\"config\": {\n				\"disabledAttrs\": [\n					\"type\"\n				],\n				\"label\": \"Date\"\n			},\n			\"meta\": {\n				\"group\": \"common\",\n				\"icon\": \"calendar\",\n				\"id\": \"date-input\"\n			},\n			\"id\": \"f4270ba2-4a52-402b-9bf0-2030880aea00\"\n		}\n	}\n}','2018-09-28 16:16:04','[]',1,'bbbb'),
(3,'xaxaxa','{\n	\"id\": \"de0098c8-d278-463d-9968-8456a564d668\",\n	\"settings\": {},\n	\"stages\": {\n		\"b66129d4-b3fd-4d15-a8c4-5ab5cff33fef\": {\n			\"id\": \"b66129d4-b3fd-4d15-a8c4-5ab5cff33fef\",\n			\"settings\": {},\n			\"rows\": [\n				\"75bb9ce7-2a69-45cf-a7e0-bc06242d453d\",\n				\"2bb3aea8-ab60-4d03-b47e-c2113f6aa7d3\",\n				\"761f5f3a-de2e-4f1e-ad2b-dda938a3a64c\",\n				\"fbb93d3c-1fe0-4577-8b7d-e262606c8294\"\n			]\n		}\n	},\n	\"rows\": {\n		\"75bb9ce7-2a69-45cf-a7e0-bc06242d453d\": {\n			\"columns\": [\n				\"07ce1e6d-bd5e-43cf-b42c-4e31395f58bc\"\n			],\n			\"id\": \"75bb9ce7-2a69-45cf-a7e0-bc06242d453d\",\n			\"config\": {\n				\"fieldset\": false,\n				\"legend\": \"\",\n				\"inputGroup\": false\n			},\n			\"attrs\": {\n				\"className\": \"f-row\"\n			}\n		},\n		\"2bb3aea8-ab60-4d03-b47e-c2113f6aa7d3\": {\n			\"columns\": [\n				\"d2347e7d-103d-4413-98e5-7e4362a39f0c\"\n			],\n			\"id\": \"2bb3aea8-ab60-4d03-b47e-c2113f6aa7d3\",\n			\"config\": {\n				\"fieldset\": false,\n				\"legend\": \"\",\n				\"inputGroup\": false\n			},\n			\"attrs\": {\n				\"className\": \"f-row\"\n			}\n		},\n		\"761f5f3a-de2e-4f1e-ad2b-dda938a3a64c\": {\n			\"columns\": [\n				\"a448ecd1-a66a-4d9c-a6ee-66c1a94129bb\"\n			],\n			\"id\": \"761f5f3a-de2e-4f1e-ad2b-dda938a3a64c\",\n			\"config\": {\n				\"fieldset\": false,\n				\"legend\": \"\",\n				\"inputGroup\": false\n			},\n			\"attrs\": {\n				\"className\": \"f-row\"\n			}\n		},\n		\"fbb93d3c-1fe0-4577-8b7d-e262606c8294\": {\n			\"columns\": [\n				\"b6e844e3-82bc-4c8a-ae43-9787ba1b18eb\"\n			],\n			\"id\": \"fbb93d3c-1fe0-4577-8b7d-e262606c8294\",\n			\"config\": {\n				\"fieldset\": false,\n				\"legend\": \"\",\n				\"inputGroup\": false\n			},\n			\"attrs\": {\n				\"className\": \"f-row\"\n			}\n		}\n	},\n	\"columns\": {\n		\"07ce1e6d-bd5e-43cf-b42c-4e31395f58bc\": {\n			\"fields\": [\n				\"f759c0e4-8fd9-40e6-aa7f-9c8fe7777b2b\"\n			],\n			\"id\": \"07ce1e6d-bd5e-43cf-b42c-4e31395f58bc\",\n			\"config\": {\n				\"width\": \"100%\"\n			},\n			\"className\": []\n		},\n		\"d2347e7d-103d-4413-98e5-7e4362a39f0c\": {\n			\"fields\": [\n				\"2417f270-616d-4573-b668-ffe9193a2cfe\"\n			],\n			\"id\": \"d2347e7d-103d-4413-98e5-7e4362a39f0c\",\n			\"config\": {\n				\"width\": \"100%\"\n			},\n			\"className\": []\n		},\n		\"a448ecd1-a66a-4d9c-a6ee-66c1a94129bb\": {\n			\"fields\": [\n				\"c6f5b247-b954-400d-b262-f88b73764fe3\",\n				\"0aa2ef52-642c-495e-b042-4fed8365c01d\"\n			],\n			\"id\": \"a448ecd1-a66a-4d9c-a6ee-66c1a94129bb\",\n			\"config\": {\n				\"width\": \"100%\"\n			},\n			\"className\": []\n		},\n		\"b6e844e3-82bc-4c8a-ae43-9787ba1b18eb\": {\n			\"fields\": [\n				\"806758b8-26e1-49c8-ac72-d2f14d43b48e\"\n			],\n			\"id\": \"b6e844e3-82bc-4c8a-ae43-9787ba1b18eb\",\n			\"config\": {\n				\"width\": \"100%\"\n			},\n			\"className\": []\n		}\n	},\n	\"fields\": {\n		\"f759c0e4-8fd9-40e6-aa7f-9c8fe7777b2b\": {\n			\"tag\": \"input\",\n			\"attrs\": {\n				\"type\": \"text\",\n				\"required\": false,\n				\"className\": \"\",\n				\"name\": \"input-4449\"\n			},\n			\"config\": {\n				\"disabledAttrs\": [\n					\"type\"\n				],\n				\"label\": \"Subject<br>\"\n			},\n			\"meta\": {\n				\"group\": \"common\",\n				\"icon\": \"text-input\",\n				\"id\": \"text-input\"\n			},\n			\"fMap\": \"attrs.value\",\n			\"id\": \"f759c0e4-8fd9-40e6-aa7f-9c8fe7777b2b\"\n		},\n		\"2417f270-616d-4573-b668-ffe9193a2cfe\": {\n			\"tag\": \"textarea\",\n			\"config\": {\n				\"label\": \"Description\"\n			},\n			\"meta\": {\n				\"group\": \"common\",\n				\"icon\": \"textarea\",\n				\"id\": \"textarea\"\n			},\n			\"attrs\": {\n				\"required\": false,\n				\"name\": \"textarea-5932\"\n			},\n			\"id\": \"2417f270-616d-4573-b668-ffe9193a2cfe\"\n		},\n		\"0aa2ef52-642c-495e-b042-4fed8365c01d\": {\n			\"tag\": \"input\",\n			\"attrs\": {\n				\"type\": \"radio\",\n				\"required\": false,\n				\"name\": \"radio-6326\"\n			},\n			\"config\": {\n				\"label\": \"Radio Group\",\n				\"disabledAttrs\": [\n					\"type\"\n				]\n			},\n			\"meta\": {\n				\"group\": \"common\",\n				\"icon\": \"radio-group\",\n				\"id\": \"radio\"\n			},\n			\"options\": [\n				{\n					\"label\": \"Radio 1\",\n					\"value\": \"radio-1\",\n					\"selected\": false,\n					\"name\": \"radio-6326\"\n				},\n				{\n					\"label\": \"Radio 2\",\n					\"value\": \"radio-2\",\n					\"selected\": false,\n					\"name\": \"radio-6326\"\n				},\n				{\n					\"label\": \"Radio 3\",\n					\"value\": \"radio-3\",\n					\"selected\": false,\n					\"name\": \"radio-6326\"\n				}\n			],\n			\"id\": \"0aa2ef52-642c-495e-b042-4fed8365c01d\"\n		},\n		\"806758b8-26e1-49c8-ac72-d2f14d43b48e\": {\n			\"tag\": \"input\",\n			\"attrs\": {\n				\"type\": \"number\",\n				\"required\": false,\n				\"className\": \"\"\n			},\n			\"config\": {\n				\"label\": \"Number\",\n				\"disabledAttrs\": [\n					\"type\"\n				]\n			},\n			\"meta\": {\n				\"group\": \"common\",\n				\"icon\": \"hash\",\n				\"id\": \"number\"\n			},\n			\"fMap\": \"attrs.value\",\n			\"id\": \"806758b8-26e1-49c8-ac72-d2f14d43b48e\"\n		},\n		\"c6f5b247-b954-400d-b262-f88b73764fe3\": {\n			\"tag\": \"select\",\n			\"config\": {\n				\"label\": \"Select\"\n			},\n			\"attrs\": {\n				\"required\": false,\n				\"className\": \"\",\n				\"name\": \"select-8864\"\n			},\n			\"meta\": {\n				\"group\": \"common\",\n				\"icon\": \"select\",\n				\"id\": \"select\"\n			},\n			\"options\": [\n				{\n					\"label\": \"Option 1\",\n					\"value\": \"option-1\",\n					\"selected\": false\n				},\n				{\n					\"label\": \"Option 2\",\n					\"value\": \"option-2\",\n					\"selected\": false\n				},\n				{\n					\"label\": \"Option 3\",\n					\"value\": \"option-3\",\n					\"selected\": false\n				},\n				{\n					\"label\": \"Option 4\",\n					\"value\": \"option-4\",\n					\"selected\": false\n				}\n			],\n			\"id\": \"c6f5b247-b954-400d-b262-f88b73764fe3\"\n		}\n	}\n}','2018-10-01 16:32:48','[{\"name\":\"0aa2ef52-642c-495e-b042-4fed8365c01d\",\"fieldname\":\"Radio Group\"},{\"name\":\"select-8864\",\"fieldname\":\"Select\"}]',1,'xaxaxaxa');

/*Table structure for table `invoices` */

DROP TABLE IF EXISTS `invoices`;

CREATE TABLE `invoices` (
  `invoice_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `invoice_number` int(11) NOT NULL,
  `invoice_address` text NOT NULL,
  `invoice_city` text NOT NULL,
  `invoice_post` text NOT NULL,
  `invoice_phone` text NOT NULL,
  `invoice_receiver` text NOT NULL,
  `eor` text NOT NULL,
  `zoi` text NOT NULL,
  `datetime` text NOT NULL,
  `cost` text NOT NULL,
  `canceled` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`invoice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `invoices` */

/*Table structure for table `items` */

DROP TABLE IF EXISTS `items`;

CREATE TABLE `items` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `item_name` text COLLATE utf32_slovenian_ci NOT NULL,
  `item_serial` text COLLATE utf32_slovenian_ci NOT NULL,
  `item_code` text COLLATE utf32_slovenian_ci NOT NULL,
  `item_type` text COLLATE utf32_slovenian_ci NOT NULL,
  `item_unit` text COLLATE utf32_slovenian_ci NOT NULL,
  `item_vat` float NOT NULL,
  `item_price` float NOT NULL,
  `item_currency` text COLLATE utf32_slovenian_ci NOT NULL,
  `item_description` text COLLATE utf32_slovenian_ci NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf32 COLLATE=utf32_slovenian_ci;

/*Data for the table `items` */

insert  into `items`(`item_id`,`employee_id`,`item_name`,`item_serial`,`item_code`,`item_type`,`item_unit`,`item_vat`,`item_price`,`item_currency`,`item_description`,`created_on`) values 
(2,1,'sskoda 1','','','Services','kos',22,105,'EUR','vrata leva doma','2018-09-26 14:03:10'),
(3,1,'Demo Demo','','','Goods','Piece',0,0,'EUR','','2018-09-26 14:07:04'),
(4,1,'ggggg','aaa','ggggg','Goods','ura',22,33,'EUR','3333','2018-09-27 20:13:43'),
(7,1,'abc','def','','Goods','kosa',22,0,'EUR','ssdsdss','2018-10-01 09:07:58'),
(8,64,'miha test','','programiranje','Services','hour',22,50,'EUR','zahtevno programiranje','2018-10-03 11:50:49'),
(9,63,'SVETOVALNA URA','782996787','FKJJFFJ','Services','URA',22,70,'EUR','svetovanje na projektu','2018-10-03 15:46:36'),
(10,63,'PROGRAMERSKA URA','','','Services','URA',22,60,'EUR','PHP programiranje','2018-10-05 13:36:13'),
(11,63,'aranžiranje','hfgkjdhgkfdhg','fkldjgdrlgd','Packaging','m',9.5,45.01,'EUR','tadadaaaa','2018-10-05 15:00:33'),
(12,62,'MIKROTIK FORTINET','497619115','149816','Goods','',22,30,'EUR','','2018-10-08 13:45:51'),
(13,62,'MIKROTIK FORTINET44r3','589491','4987191498','Goods','',22,30,'EUR','','2018-10-08 13:47:47');

/*Table structure for table `locationlogs` */

DROP TABLE IF EXISTS `locationlogs`;

CREATE TABLE `locationlogs` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `speed` int(11) NOT NULL DEFAULT 0,
  `latitude` text NOT NULL,
  `longitude` text NOT NULL,
  `datetime` text NOT NULL,
  `type` text NOT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=666 DEFAULT CHARSET=latin1;

/*Data for the table `locationlogs` */

insert  into `locationlogs`(`log_id`,`employee_id`,`speed`,`latitude`,`longitude`,`datetime`,`type`) values 
(1,1,29,'46.06642937287688','14.47780896909535','2018-09-24 16:03:52','Log'),
(2,1,29,'46.06642937287688','14.47780896909535','2018-09-24 16:03:52','Log'),
(3,1,5,'46.06657597236335','14.478394528850913','2018-09-24 16:04:20','Log'),
(4,1,5,'46.06657597236335','14.478394528850913','2018-09-24 16:04:20','Log'),
(5,1,19,'46.06649952940643','14.478156985715032','2018-09-24 16:04:40','Log'),
(6,1,19,'46.06649952940643','14.478156985715032','2018-09-24 16:04:40','Log'),
(7,1,105,'46.06644244864583','14.47783729992807','2018-09-24 16:04:54','Log'),
(8,1,105,'46.06644244864583','14.47783729992807','2018-09-24 16:04:54','Log'),
(9,1,30,'46.06781749986112','14.47505802847445','2018-09-24 16:36:11','Log'),
(10,1,36,'46.06787852011621','14.474600125104189','2018-09-24 16:36:15','Log'),
(11,1,25,'46.06794155202806','14.474170804023743','2018-09-24 16:36:19','Log'),
(12,1,38,'46.06804724782705','14.473684150725603','2018-09-24 16:36:24','Log'),
(13,1,27,'46.06816140934825','14.47319783270359','2018-09-24 16:36:28','Log'),
(14,1,33,'46.06824195943773','14.472848391160369','2018-09-24 16:36:32','Log'),
(15,1,29,'46.06834086589515','14.472407838329673','2018-09-24 16:36:36','Log'),
(16,1,32,'46.06845209375024','14.471912886947393','2018-09-24 16:36:41','Log'),
(17,1,30,'46.06855225749314','14.471485074609518','2018-09-24 16:36:45','Log'),
(18,1,24,'46.068656193092465','14.471095819026232','2018-09-24 16:36:49','Log'),
(19,1,30,'46.06873456388712','14.47076154872775','2018-09-24 16:36:53','Log'),
(20,1,36,'46.06886750087142','14.470194932073355','2018-09-24 16:36:58','Log'),
(21,1,30,'46.06911141425371','14.469651617109776','2018-09-24 16:37:03','Log'),
(22,1,37,'46.06933990493417','14.469343917444348','2018-09-24 16:37:07','Log'),
(23,1,40,'46.069602593779564','14.46877185255289','2018-09-24 16:37:12','Log'),
(24,1,6,'46.069696471095085','14.46835401467979','2018-09-24 16:37:17','Log'),
(25,1,13,'46.06981012970209','14.468374215066433','2018-09-24 16:37:21','Log'),
(26,1,37,'46.06999428011477','14.468529364094138','2018-09-24 16:37:25','Log'),
(27,1,38,'46.070437766611576','14.468883499503136','2018-09-24 16:37:30','Log'),
(28,1,29,'46.07081511989236','14.469213830307126','2018-09-24 16:37:35','Log'),
(29,1,8,'46.071007400751114','14.469370739534497','2018-09-24 16:37:39','Log'),
(30,1,6,'46.07109323143959','14.469439471140504','2018-09-24 16:37:44','Log'),
(31,1,14,'46.07119230553508','14.469519518315792','2018-09-24 16:37:48','Log'),
(32,1,22,'46.07133706100285','14.469470400363207','2018-09-24 16:37:54','Log'),
(33,1,38,'46.07151785865426','14.46903663687408','2018-09-24 16:37:58','Log'),
(34,1,38,'46.07171533629298','14.468549061566591','2018-09-24 16:38:02','Log'),
(35,1,34,'46.071954471990466','14.467999963089824','2018-09-24 16:38:07','Log'),
(36,1,27,'46.07212269678712','14.467627303674817','2018-09-24 16:38:11','Log'),
(37,1,10,'46.07226946391165','14.467304348945618','2018-09-24 16:38:15','Log'),
(38,1,16,'46.072332579642534','14.46715540252626','2018-09-24 16:38:35','Log'),
(39,1,32,'46.07245746999979','14.466858934611082','2018-09-24 16:38:39','Log'),
(40,1,51,'46.07269819825888','14.466230878606439','2018-09-24 16:38:44','Log'),
(41,1,51,'46.07292668893933','14.465608522295952','2018-09-24 16:38:48','Log'),
(42,1,48,'46.0731649864465','14.464925481006503','2018-09-24 16:38:52','Log'),
(43,1,45,'46.07340328395367','14.46416205726564','2018-09-24 16:38:57','Log'),
(44,1,49,'46.0736124124378','14.463396454229951','2018-09-24 16:39:02','Log'),
(45,1,51,'46.07374140992761','14.462637891992927','2018-09-24 16:39:06','Log'),
(46,1,50,'46.07386680319905','14.461713870987296','2018-09-24 16:39:11','Log'),
(47,1,44,'46.073946598917246','14.460858078673482','2018-09-24 16:39:16','Log'),
(48,1,46,'46.07400485314429','14.46004738099873','2018-09-24 16:39:21','Log'),
(49,1,45,'46.074010133743286','14.459461234509945','2018-09-24 16:39:25','Log'),
(50,1,42,'46.073989514261484','14.458848098292947','2018-09-24 16:39:29','Log'),
(51,1,44,'46.07391659170389','14.458251977339387','2018-09-24 16:39:33','Log'),
(52,1,42,'46.07381575740874','14.457476483657956','2018-09-24 16:39:38','Log'),
(53,1,32,'46.07376647181809','14.456801237538457','2018-09-24 16:39:43','Log'),
(54,1,35,'46.07377024367452','14.456328246742487','2018-09-24 16:39:47','Log'),
(55,1,33,'46.07380955480039','14.455854250118136','2018-09-24 16:39:51','Log'),
(56,1,41,'46.07392723672092','14.455319652333856','2018-09-24 16:39:55','Log'),
(57,1,41,'46.074095545336604','14.454799136146903','2018-09-24 16:39:59','Log'),
(58,1,26,'46.07418917119503','14.454184575006366','2018-09-24 16:40:04','Log'),
(59,1,27,'46.074161091819406','14.4538529869169','2018-09-24 16:40:08','Log'),
(60,1,34,'46.07411239296198','14.453406566753983','2018-09-24 16:40:12','Log'),
(61,1,40,'46.0740527138114','14.45269687101245','2018-09-24 16:40:17','Log'),
(62,1,46,'46.073942156508565','14.452089350670576','2018-09-24 16:40:21','Log'),
(63,1,43,'46.07371123507619','14.451352078467607','2018-09-24 16:40:26','Log'),
(64,1,32,'46.07358575798571','14.45085033774376','2018-09-24 16:40:30','Log'),
(65,1,31,'46.07360587455332','14.45026888512075','2018-09-24 16:40:35','Log'),
(66,1,35,'46.073748702183366','14.449843922629952','2018-09-24 16:40:39','Log'),
(67,1,35,'46.0739626083523','14.449265152215958','2018-09-24 16:40:44','Log'),
(68,1,47,'46.07413745485246','14.44874044507742','2018-09-24 16:40:48','Log'),
(69,1,53,'46.07439880259335','14.447920192033052','2018-09-24 16:40:53','Log'),
(70,1,50,'46.074589155614376','14.447237150743604','2018-09-24 16:40:57','Log'),
(71,1,41,'46.074737096205354','14.446592163294554','2018-09-24 16:41:01','Log'),
(72,1,55,'46.07483306899667','14.445757241919637','2018-09-24 16:41:06','Log'),
(73,1,60,'46.074747489765286','14.444748144596815','2018-09-24 16:41:11','Log'),
(74,1,60,'46.07475939206779','14.443864356726408','2018-09-24 16:41:15','Log'),
(75,1,66,'46.07500305399299','14.442831370979548','2018-09-24 16:41:20','Log'),
(76,1,61,'46.075174044817686','14.441925287246704','2018-09-24 16:41:24','Log'),
(77,1,57,'46.07553572393954','14.441054994240403','2018-09-24 16:41:29','Log'),
(78,1,49,'46.075977366417646','14.440245302394032','2018-09-24 16:41:34','Log'),
(79,1,48,'46.07601910829544','14.439476681873202','2018-09-24 16:41:39','Log'),
(80,1,57,'46.076014414429665','14.438498681411147','2018-09-24 16:41:44','Log'),
(81,1,55,'46.076249945908785','14.437541216611862','2018-09-24 16:41:49','Log'),
(82,1,48,'46.07629378326237','14.436779636889696','2018-09-24 16:41:53','Log'),
(83,1,51,'46.075932355597615','14.436249984428287','2018-09-24 16:41:58','Log'),
(84,1,42,'46.075505716726184','14.436049656942487','2018-09-24 16:42:02','Log'),
(85,1,30,'46.075218468904495','14.435622515156865','2018-09-24 16:42:07','Log'),
(86,1,32,'46.07526138424873','14.435122115537524','2018-09-24 16:42:11','Log'),
(87,1,29,'46.07515024021268','14.434816846624017','2018-09-24 16:42:16','Log'),
(88,1,55,'46.074639949947596','14.434999655932188','2018-09-24 16:42:21','Log'),
(89,1,57,'46.07410753145814','14.434956405311823','2018-09-24 16:42:25','Log'),
(90,1,42,'46.07345726341009','14.434745348989964','2018-09-24 16:42:30','Log'),
(91,1,24,'46.073154509067535','14.434802513569593','2018-09-24 16:42:39','Log'),
(92,1,28,'46.07333262450993','14.435134520754218','2018-09-24 16:42:39','Log'),
(93,1,20,'46.073336228728294','14.435343481600285','2018-09-24 16:42:43','Log'),
(94,1,43,'46.07307035475969','14.435231499373913','2018-09-24 16:42:47','Log'),
(95,1,61,'46.07276919297874','14.434392973780632','2018-09-24 16:42:52','Log'),
(96,1,63,'46.07250574976206','14.433591663837433','2018-09-24 16:42:56','Log'),
(97,1,68,'46.0722032468766','14.432533867657185','2018-09-24 16:43:09','Log'),
(98,1,68,'46.07210819609463','14.431505491957068','2018-09-24 16:43:10','Log'),
(99,1,74,'46.07177350670099','14.430471835657954','2018-09-24 16:43:11','Log'),
(100,1,75,'46.07120110653341','14.429748812690377','2018-09-24 16:43:14','Log'),
(101,1,72,'46.0705282073468','14.428825043141842','2018-09-24 16:43:19','Log'),
(102,1,75,'46.07003761455417','14.42775391973555','2018-09-24 16:43:24','Log'),
(103,1,73,'46.06963109225035','14.42681523039937','2018-09-24 16:43:28','Log'),
(104,1,68,'46.06915240176022','14.42573874257505','2018-09-24 16:43:33','Log'),
(105,1,65,'46.068659629672766','14.424818409606814','2018-09-24 16:43:38','Log'),
(106,1,48,'46.06824707239866','14.424130506813526','2018-09-24 16:43:42','Log'),
(107,1,14,'46.06798346154392','14.423543605953455','2018-09-24 16:43:47','Log'),
(108,1,14,'46.06794004328549','14.423457942903042','2018-09-24 16:44:04','Log'),
(109,1,32,'46.067773243412375','14.423157284036279','2018-09-24 16:44:09','Log'),
(110,1,15,'46.06755246408284','14.422882692888379','2018-09-24 16:44:14','Log'),
(111,1,16,'46.06742053292692','14.422753527760506','2018-09-24 16:44:18','Log'),
(112,1,16,'46.067283656448126','14.422633331269026','2018-09-24 16:44:22','Log'),
(113,1,13,'46.06707679107785','14.422520762309432','2018-09-24 16:44:27','Log'),
(114,1,13,'46.06695299036801','14.422495868057013','2018-09-24 16:44:31','Log'),
(115,1,20,'46.06678443029523','14.422495532780886','2018-09-24 16:44:36','Log'),
(116,1,22,'46.06656549498439','14.422504249960184','2018-09-24 16:44:40','Log'),
(117,1,37,'46.066241366788745','14.422509530559182','2018-09-24 16:44:45','Log'),
(118,1,50,'46.06580584309995','14.42240341566503','2018-09-24 16:44:49','Log'),
(119,1,57,'46.06529328972101','14.422150198370218','2018-09-24 16:44:53','Log'),
(120,1,50,'46.06482801027596','14.421834871172905','2018-09-24 16:44:57','Log'),
(121,1,53,'46.064318642020226','14.42177259363234','2018-09-24 16:45:01','Log'),
(122,1,59,'46.06360483914614','14.421754907816648','2018-09-24 16:45:06','Log'),
(123,1,56,'46.062908386811614','14.421627502888441','2018-09-24 16:45:11','Log'),
(124,1,55,'46.06223104521632','14.421405550092459','2018-09-24 16:45:16','Log'),
(125,1,50,'46.061735674738884','14.421731354668736','2018-09-24 16:45:20','Log'),
(126,1,34,'46.06126058846712','14.422209961339831','2018-09-24 16:45:25','Log'),
(127,1,26,'46.06102748773992','14.422598294913769','2018-09-24 16:45:30','Log'),
(128,1,21,'46.06078717857599','14.42273081280291','2018-09-24 16:45:34','Log'),
(129,1,33,'46.06058810837567','14.422358823940158','2018-09-24 16:45:39','Log'),
(130,1,50,'46.060187285766006','14.421970238909125','2018-09-24 16:45:44','Log'),
(131,1,57,'46.05972267687321','14.421512670814991','2018-09-24 16:45:48','Log'),
(132,1,60,'46.05924876406789','14.420691411942244','2018-09-24 16:45:53','Log'),
(133,1,60,'46.058874763548374','14.419984733685851','2018-09-24 16:45:57','Log'),
(134,1,53,'46.05849984101951','14.419345865026116','2018-09-24 16:46:01','Log'),
(135,1,48,'46.058070939034224','14.41873767413199','2018-09-24 16:46:06','Log'),
(136,1,46,'46.05768419802189','14.418371468782425','2018-09-24 16:46:10','Log'),
(137,1,47,'46.057125041261315','14.418415557593107','2018-09-24 16:46:15','Log'),
(138,1,47,'46.05672371573746','14.418189330026507','2018-09-24 16:46:19','Log'),
(139,1,47,'46.05623731389642','14.417671160772443','2018-09-24 16:46:24','Log'),
(140,1,41,'46.055902037769556','14.417229853570461','2018-09-24 16:46:28','Log'),
(141,1,25,'46.055611688643694','14.416958447545767','2018-09-24 16:46:32','Log'),
(142,1,11,'46.05541018769145','14.41679005511105','2018-09-24 16:46:43','Log'),
(143,1,13,'46.05532033368945','14.416714701801538','2018-09-24 16:46:55','Log'),
(144,1,38,'46.0553230997175','14.41642745397985','2018-09-24 16:47:00','Log'),
(145,1,63,'46.055692825466394','14.415905177593231','2018-09-24 16:47:04','Log'),
(146,1,70,'46.05626472271979','14.415398826822639','2018-09-24 16:47:08','Log'),
(147,1,75,'46.057120179757476','14.414858864620328','2018-09-24 16:47:13','Log'),
(148,1,72,'46.05784605257213','14.414101056754589','2018-09-24 16:47:18','Log'),
(149,1,66,'46.05864778161049','14.41354013979435','2018-09-24 16:47:23','Log'),
(150,1,62,'46.059462083503604','14.413516921922565','2018-09-24 16:47:28','Log'),
(151,1,60,'46.060101706534624','14.413568051531911','2018-09-24 16:47:32','Log'),
(152,1,63,'46.06082079000771','14.413367891684175','2018-09-24 16:47:37','Log'),
(153,1,62,'46.06144096702337','14.413148453459144','2018-09-24 16:47:41','Log'),
(154,1,56,'46.06202962808311','14.412930440157652','2018-09-24 16:47:45','Log'),
(155,1,53,'46.06252851895988','14.412754252552986','2018-09-24 16:47:49','Log'),
(156,1,50,'46.06316671706736','14.412511261180043','2018-09-24 16:47:54','Log'),
(157,1,52,'46.06367348693311','14.412345718592405','2018-09-24 16:47:58','Log'),
(158,1,53,'46.06419970281422','14.412167770788074','2018-09-24 16:48:02','Log'),
(159,1,53,'46.064820885658264','14.411906339228153','2018-09-24 16:48:07','Log'),
(160,1,48,'46.06537040323019','14.411463607102633','2018-09-24 16:48:12','Log'),
(161,1,52,'46.0659103654325','14.410980558022857','2018-09-24 16:48:17','Log'),
(162,1,54,'46.06636927463114','14.410584094002843','2018-09-24 16:48:21','Log'),
(163,1,54,'46.06694804504514','14.41007480956614','2018-09-24 16:48:26','Log'),
(164,1,54,'46.067504016682506','14.409579606726766','2018-09-24 16:48:31','Log'),
(165,1,54,'46.06803685426712','14.409003853797913','2018-09-24 16:48:36','Log'),
(166,1,58,'46.06852434575558','14.408264234662056','2018-09-24 16:48:41','Log'),
(167,1,63,'46.068902453407645','14.40755588002503','2018-09-24 16:48:45','Log'),
(168,1,66,'46.069265054538846','14.406842747703195','2018-09-24 16:48:49','Log'),
(169,1,63,'46.069763861596584','14.405858041718602','2018-09-24 16:48:54','Log'),
(170,1,42,'46.07010039500892','14.405195116996765','2018-09-24 16:48:58','Log'),
(171,1,29,'46.07034062035382','14.40471793524921','2018-09-24 16:49:03','Log'),
(172,1,45,'46.07059911824763','14.404202364385128','2018-09-24 16:49:08','Log'),
(173,1,67,'46.07102416455746','14.403382111340761','2018-09-24 16:49:13','Log'),
(174,1,68,'46.07153059914708','14.402433531358838','2018-09-24 16:49:18','Log'),
(175,1,59,'46.07202731072903','14.401809247210622','2018-09-24 16:49:50','Log'),
(176,1,52,'46.07241530902684','14.401270793750882','2018-09-24 16:49:50','Log'),
(177,1,35,'46.07269702479243','14.40052404999733','2018-09-24 16:49:50','Log'),
(178,1,41,'46.072844630107284','14.400094226002693','2018-09-24 16:49:50','Log'),
(179,1,55,'46.07306180521846','14.399431720376015','2018-09-24 16:49:50','Log'),
(180,1,54,'46.073393980041146','14.398835515603423','2018-09-24 16:49:50','Log'),
(181,1,66,'46.07393838465214','14.398084161803126','2018-09-24 16:49:50','Log'),
(182,1,68,'46.074208952486515','14.396912455558777','2018-09-24 16:49:53','Log'),
(183,1,76,'46.07450961135328','14.395737815648317','2018-09-24 16:49:58','Log'),
(184,1,77,'46.07455378398299','14.394619334489107','2018-09-24 16:50:02','Log'),
(185,1,72,'46.07465889304876','14.393357606604695','2018-09-24 16:50:07','Log'),
(186,1,72,'46.07484522275627','14.39230433665216','2018-09-24 16:50:11','Log'),
(187,1,70,'46.07502576895058','14.391360031440854','2018-09-24 16:50:15','Log'),
(188,1,64,'46.07518007978797','14.390141470357776','2018-09-24 16:50:20','Log'),
(189,1,68,'46.07551828958094','14.389109741896391','2018-09-24 16:50:25','Log'),
(190,1,64,'46.07627886347473','14.388538766652346','2018-09-24 16:50:30','Log'),
(191,1,58,'46.076631573960185','14.38778012059629','2018-09-24 16:50:35','Log'),
(192,1,64,'46.07640702277422','14.386998424306512','2018-09-24 16:50:39','Log'),
(193,1,60,'46.076344326138496','14.38610466197133','2018-09-24 16:50:43','Log'),
(194,1,57,'46.07663073576987','14.38508483581245','2018-09-24 16:50:48','Log'),
(195,1,60,'46.07659678906202','14.38418579287827','2018-09-24 16:50:53','Log'),
(196,1,64,'46.07628825120628','14.383432427421212','2018-09-24 16:50:57','Log'),
(197,1,65,'46.07559163123369','14.382814848795533','2018-09-24 16:51:02','Log'),
(198,1,63,'46.07487849891186','14.382302379235625','2018-09-24 16:51:07','Log'),
(199,1,63,'46.07442277483642','14.381384644657373','2018-09-24 16:51:12','Log'),
(200,1,66,'46.074347672984004','14.380233474075794','2018-09-24 16:51:17','Log'),
(201,1,65,'46.07402262277901','14.37917391769588','2018-09-24 16:51:22','Log'),
(202,1,59,'46.07362716458738','14.378212429583073','2018-09-24 16:51:27','Log'),
(203,1,59,'46.07332784682512','14.377250270918012','2018-09-24 16:51:32','Log'),
(204,1,52,'46.073012854903936','14.376585585996509','2018-09-24 16:51:36','Log'),
(205,1,47,'46.072656624019146','14.375818893313408','2018-09-24 16:51:41','Log'),
(206,1,48,'46.072356551885605','14.375096959993243','2018-09-24 16:51:46','Log'),
(207,1,51,'46.07202781364322','14.374318951740861','2018-09-24 16:51:51','Log'),
(208,1,47,'46.07179102487862','14.373754849657416','2018-09-24 16:51:55','Log'),
(209,1,58,'46.071465304121375','14.37294976785779','2018-09-24 16:52:00','Log'),
(210,1,62,'46.071164729073644','14.372184416279197','2018-09-24 16:52:04','Log'),
(211,1,69,'46.07094034552574','14.3710358440876','2018-09-24 16:52:09','Log'),
(212,1,69,'46.07095845043659','14.370013419538736','2018-09-24 16:52:13','Log'),
(213,1,77,'46.0713464487344','14.368813131004572','2018-09-24 16:52:18','Log'),
(214,1,76,'46.07180158607662','14.36799262650311','2018-09-24 16:52:22','Log'),
(215,1,75,'46.072388319298625','14.366931980475783','2018-09-24 16:52:27','Log'),
(216,1,74,'46.07288838364184','14.365826910361648','2018-09-24 16:52:32','Log'),
(217,1,77,'46.073092902079225','14.364778082817793','2018-09-24 16:52:36','Log'),
(218,1,74,'46.07319474220276','14.363442761823535','2018-09-24 16:52:41','Log'),
(219,1,78,'46.07314218766987','14.362410278990865','2018-09-24 16:52:45','Log'),
(220,1,81,'46.07286499813199','14.360985774546862','2018-09-24 16:52:50','Log'),
(221,1,78,'46.072646314278245','14.359847260639071','2018-09-24 16:52:54','Log'),
(222,1,73,'46.072431318461895','14.358875630423427','2018-09-24 16:52:58','Log'),
(223,1,64,'46.07201591134071','14.35781640931964','2018-09-24 16:53:03','Log'),
(224,1,58,'46.0715470276773','14.356917785480618','2018-09-24 16:53:08','Log'),
(225,1,63,'46.07156538404524','14.356055874377489','2018-09-24 16:53:12','Log'),
(226,1,62,'46.07166009955108','14.355239477008581','2018-09-24 16:53:16','Log'),
(227,1,68,'46.07139623723924','14.354142704978585','2018-09-24 16:53:21','Log'),
(228,1,73,'46.070786621421576','14.353644400835037','2018-09-24 16:53:25','Log'),
(229,1,67,'46.07013643719256','14.353472320362926','2018-09-24 16:53:29','Log'),
(230,1,59,'46.069410815835','14.353068731725216','2018-09-24 16:53:34','Log'),
(231,1,48,'46.06906254775822','14.352384600788355','2018-09-24 16:53:38','Log'),
(232,1,10,'46.06877856887877','14.352048570290208','2018-09-24 16:53:46','Log'),
(233,1,23,'46.06872718781233','14.352184189483523','2018-09-24 16:53:50','Log'),
(234,1,37,'46.06850498355925','14.35265215113759','2018-09-24 16:53:55','Log'),
(235,1,39,'46.06828118674457','14.353099660947919','2018-09-24 16:53:59','Log'),
(236,1,40,'46.06802704744041','14.35350626707077','2018-09-24 16:54:03','Log'),
(237,1,39,'46.06779553927481','14.354107417166233','2018-09-24 16:54:08','Log'),
(238,1,36,'46.06736437417567','14.354241695255041','2018-09-24 16:54:13','Log'),
(239,1,28,'46.0670208837837','14.354350240901113','2018-09-24 16:54:18','Log'),
(240,1,32,'46.06719095259905','14.354593567550182','2018-09-24 16:54:22','Log'),
(241,1,30,'46.06740812771022','14.354965724050999','2018-09-24 16:54:26','Log'),
(242,1,31,'46.06746034696698','14.355322374030948','2018-09-24 16:54:31','Log'),
(243,1,40,'46.06713839806616','14.35570358298719','2018-09-24 16:54:36','Log'),
(244,1,39,'46.06677085161209','14.356154529377818','2018-09-24 16:54:41','Log'),
(245,1,45,'46.066369945183396','14.35666180215776','2018-09-24 16:54:46','Log'),
(246,1,40,'46.066088480874896','14.357189610600471','2018-09-24 16:54:50','Log'),
(247,1,30,'46.06586694717407','14.357560761272907','2018-09-24 16:54:54','Log'),
(248,1,26,'46.06558824889362','14.357379041612148','2018-09-24 16:54:59','Log'),
(249,1,38,'46.06524626724422','14.357442995533347','2018-09-24 16:55:04','Log'),
(250,1,48,'46.06488777324557','14.357986226677895','2018-09-24 16:55:09','Log'),
(251,1,54,'46.06452056206763','14.358476400375366','2018-09-24 16:55:13','Log'),
(252,1,69,'46.06402720324695','14.358932627364993','2018-09-24 16:55:17','Log'),
(253,1,56,'46.063349191099405','14.359501674771309','2018-09-24 16:55:22','Log'),
(254,1,32,'46.06292246840894','14.359840219840407','2018-09-24 16:55:26','Log'),
(255,1,17,'46.06277972459793','14.360052784904838','2018-09-24 16:55:30','Log'),
(256,1,34,'46.06254871934652','14.359878776594996','2018-09-24 16:55:34','Log'),
(257,1,40,'46.06218435801566','14.359456580132246','2018-09-24 16:55:39','Log'),
(258,1,29,'46.0619265306741','14.359072856605053','2018-09-24 16:55:43','Log'),
(259,1,10,'46.06185327284038','14.358918964862823','2018-09-24 16:55:48','Log'),
(260,1,17,'46.06179736554623','14.358663065358996','2018-09-24 16:55:53','Log'),
(261,1,21,'46.06170332059264','14.358346061781049','2018-09-24 16:55:58','Log'),
(262,1,17,'46.0615708027035','14.358022352680564','2018-09-24 16:56:03','Log'),
(263,1,9,'46.06153082102537','14.357763268053532','2018-09-24 16:56:08','Log'),
(264,1,10,'46.096440106630325','14.465850088745356','2018-09-25 08:00:48','Log'),
(265,1,18,'46.09630021266639','14.465655880048871','2018-09-25 08:00:53','Log'),
(266,1,12,'46.09610726125538','14.465668955817819','2018-09-25 08:00:58','Log'),
(267,1,48,'46.09593643806875','14.465913288295269','2018-09-25 08:01:02','Log'),
(268,1,72,'46.095301592722535','14.46674644947052','2018-09-25 08:01:07','Log'),
(269,1,75,'46.094579407945275','14.467570893466473','2018-09-25 08:01:12','Log'),
(270,1,72,'46.09397130087018','14.468189645558596','2018-09-25 08:01:16','Log'),
(271,1,69,'46.09323528595269','14.46884167380631','2018-09-25 08:01:21','Log'),
(272,1,64,'46.092668836936355','14.469342157244682','2018-09-25 08:01:25','Log'),
(273,1,61,'46.09200130216777','14.469939954578876','2018-09-25 08:01:30','Log'),
(274,1,26,'46.09158480539918','14.470309093594551','2018-09-25 08:01:34','Log'),
(275,1,10,'46.091388165950775','14.470483101904392','2018-09-25 08:01:52','Log'),
(276,1,10,'46.09128909185529','14.470570692792535','2018-09-25 08:01:56','Log'),
(277,1,7,'46.09111567027867','14.470724165439606','2018-09-25 08:02:08','Log'),
(278,1,8,'46.0910174343735','14.470808487385511','2018-09-25 08:02:13','Log'),
(279,1,6,'46.09093386679888','14.47087730281055','2018-09-25 08:02:18','Log'),
(280,1,9,'46.09089774079621','14.470907058566809','2018-09-25 08:02:33','Log'),
(281,1,32,'46.090681655332446','14.471101686358452','2018-09-25 08:02:38','Log'),
(282,1,33,'46.09032207168639','14.471424976363778','2018-09-25 08:02:43','Log'),
(283,1,30,'46.090061562135816','14.471644330769777','2018-09-25 08:02:47','Log'),
(284,1,27,'46.08975050970912','14.471925124526024','2018-09-25 08:02:52','Log'),
(285,1,32,'46.089513720944524','14.472140707075596','2018-09-25 08:02:56','Log'),
(286,1,40,'46.08921750448644','14.472409849986434','2018-09-25 08:03:00','Log'),
(287,1,67,'46.0887913685292','14.472793573513627','2018-09-25 08:03:04','Log'),
(288,1,68,'46.08818292617798','14.473315514624119','2018-09-25 08:03:08','Log'),
(289,1,70,'46.087459567934275','14.473966285586357','2018-09-25 08:03:13','Log'),
(290,1,69,'46.08685556799173','14.474519407376647','2018-09-25 08:03:17','Log'),
(291,1,63,'46.086291298270226','14.475059872493148','2018-09-25 08:03:21','Log'),
(292,1,56,'46.08578100800514','14.475579466670752','2018-09-25 08:03:25','Log'),
(293,1,48,'46.08522738330066','14.476160500198603','2018-09-25 08:03:30','Log'),
(294,1,43,'46.08476595953107','14.476637346670032','2018-09-25 08:03:35','Log'),
(295,1,30,'46.08435843139887','14.477056441828609','2018-09-25 08:03:40','Log'),
(296,1,13,'46.08418953604996','14.47722407989204','2018-09-25 08:03:45','Log'),
(297,1,33,'46.084018712863326','14.477377887815237','2018-09-25 08:03:49','Log'),
(298,1,37,'46.08360959216952','14.477740237489343','2018-09-25 08:03:54','Log'),
(299,1,34,'46.08325478620827','14.478020779788494','2018-09-25 08:03:59','Log'),
(300,1,46,'46.082906601950526','14.478271817788482','2018-09-25 08:04:03','Log'),
(301,1,51,'46.082461439073086','14.478585803881288','2018-09-25 08:04:07','Log'),
(302,1,29,'46.0819495562464','14.478941448032856','2018-09-25 08:04:12','Log'),
(303,1,18,'46.08163137920201','14.478981010615826','2018-09-25 08:04:17','Log'),
(304,1,6,'46.08136475086212','14.479095172137022','2018-09-25 08:04:35','Log'),
(305,1,9,'46.0811984539032','14.47920790873468','2018-09-25 08:08:28','Log'),
(306,1,6,'46.08115419745445','14.47928611189127','2018-09-25 08:08:33','Log'),
(307,1,14,'46.08114288188517','14.479405302554369','2018-09-25 08:08:37','Log'),
(308,1,43,'46.0808081086725','14.479726497083902','2018-09-25 08:08:42','Log'),
(309,1,57,'46.08022908680141','14.480121619999409','2018-09-25 08:08:47','Log'),
(310,1,49,'46.0797237418592','14.480434181168675','2018-09-25 08:08:51','Log'),
(311,1,32,'46.07926080934703','14.480548426508904','2018-09-25 08:08:56','Log'),
(312,1,53,'46.07899434864521','14.480183143168688','2018-09-25 08:09:00','Log'),
(313,1,78,'46.07871774584055','14.479389628395438','2018-09-25 08:09:04','Log'),
(314,1,86,'46.07836503535509','14.478295957669616','2018-09-25 08:09:08','Log'),
(315,1,97,'46.07787377201021','14.476759219542146','2018-09-25 08:09:13','Log'),
(316,1,104,'46.07733531855047','14.475102704018354','2018-09-25 08:09:18','Log'),
(317,1,102,'46.07682486064732','14.473359687253833','2018-09-25 08:09:23','Log'),
(318,1,98,'46.076451363042','14.471998549997807','2018-09-25 08:09:27','Log'),
(319,1,85,'46.07602849602699','14.470452843233943','2018-09-25 08:09:32','Log'),
(320,1,83,'46.075632870197296','14.469097321853042','2018-09-25 08:09:37','Log'),
(321,1,79,'46.075283428654075','14.468059306964278','2018-09-25 08:09:41','Log'),
(322,1,79,'46.07482477091253','14.466832112520933','2018-09-25 08:09:46','Log'),
(323,1,72,'46.074559735134244','14.46571690030396','2018-09-25 08:09:50','Log'),
(324,1,49,'46.07416536659002','14.464753735810518','2018-09-25 08:09:55','Log'),
(325,1,26,'46.0739092156291','14.464164488017559','2018-09-25 08:10:00','Log'),
(326,1,6,'46.073784744367','14.463877491652966','2018-09-25 08:10:10','Log'),
(327,1,14,'46.07368256896734','14.463642882183194','2018-09-25 08:10:14','Log'),
(328,1,14,'46.07355575077236','14.463624861091375','2018-09-25 08:10:18','Log'),
(329,1,11,'46.073486097157','14.463874725624919','2018-09-25 08:10:23','Log'),
(330,1,12,'46.07344351708889','14.46401696652174','2018-09-25 08:10:45','Log'),
(331,1,21,'46.07340085320175','14.46416943334043','2018-09-25 08:10:49','Log'),
(332,1,38,'46.07326121069491','14.464636137709022','2018-09-25 08:10:54','Log'),
(333,1,40,'46.073076808825135','14.465193198993802','2018-09-25 08:10:58','Log'),
(334,1,32,'46.072881342843175','14.465729389339685','2018-09-25 08:11:03','Log'),
(335,1,22,'46.07275636866689','14.466070616617799','2018-09-25 08:11:07','Log'),
(336,1,10,'46.072670286521316','14.466305812820792','2018-09-25 08:11:11','Log'),
(337,1,11,'46.07260222546756','14.46648744866252','2018-09-25 08:11:25','Log'),
(338,1,28,'46.0725000500679','14.466752568259835','2018-09-25 08:11:30','Log'),
(339,1,36,'46.0723034106195','14.467224050313234','2018-09-25 08:11:35','Log'),
(340,1,39,'46.07204491272569','14.467796618118882','2018-09-25 08:11:40','Log'),
(341,1,26,'46.07185212895274','14.468230213969946','2018-09-25 08:11:44','Log'),
(342,1,14,'46.071728663519025','14.468513689935207','2018-09-25 08:11:48','Log'),
(343,1,35,'46.071616346016526','14.468795405700803','2018-09-25 08:11:53','Log'),
(344,1,47,'46.07141325250268','14.469288429245353','2018-09-25 08:11:57','Log'),
(345,1,52,'46.07108845375478','14.470086051151156','2018-09-25 08:12:02','Log'),
(346,1,54,'46.07081277295947','14.470785185694695','2018-09-25 08:12:06','Log'),
(347,1,51,'46.07049451209605','14.471590351313353','2018-09-25 08:12:11','Log'),
(348,1,50,'46.070171892642975','14.472381435334682','2018-09-25 08:12:16','Log'),
(349,1,55,'46.06987156905234','14.47298132814467','2018-09-25 08:12:20','Log'),
(350,1,53,'46.06952036730945','14.473563367500901','2018-09-25 08:12:24','Log'),
(351,1,57,'46.06909967958927','14.474338106811047','2018-09-25 08:12:29','Log'),
(352,1,63,'46.06884939596057','14.47516892105341','2018-09-25 08:12:33','Log'),
(353,1,62,'46.068662563338876','14.476042315363884','2018-09-25 08:12:37','Log'),
(354,1,36,'46.06851235963404','14.47698905132711','2018-09-25 08:12:42','Log'),
(355,1,18,'46.068360563367605','14.477310162037611','2018-09-25 08:12:47','Log'),
(356,1,36,'46.068113297224045','14.476878410205245','2018-09-25 08:12:52','Log'),
(357,1,10,'46.06782931834459','14.476364180445671','2018-09-25 08:12:57','Log'),
(358,1,12,'46.0677495226264','14.476219844073057','2018-09-25 08:13:20','Log'),
(359,1,30,'46.067699901759624','14.476370215415955','2018-09-25 08:13:25','Log'),
(360,1,9,'46.067654052749276','14.476767182350159','2018-09-25 08:13:30','Log'),
(361,1,35,'46.06760594062507','14.477181667461991','2018-09-25 08:13:34','Log'),
(362,1,41,'46.067544501274824','14.477715427055955','2018-09-25 08:13:38','Log'),
(363,1,32,'46.06751097366214','14.478007620200515','2018-09-25 08:13:43','Log'),
(364,1,7,'46.06746571138501','14.47840123437345','2018-09-25 08:13:52','Log'),
(365,1,5,'46.067522540688515','14.477905444800854','2018-09-25 08:15:46','Log'),
(366,1,7,'46.067522540688515','14.477905444800854','2018-09-25 08:15:51','Log'),
(367,1,5,'46.067522540688515','14.477905444800854','2018-09-25 08:15:55','Log'),
(368,1,5,'46.067524049431086','14.477891782298684','2018-09-25 08:16:19','Log'),
(369,1,78,'46.06922507286072','14.46948766708374','2018-09-25 12:57:30','Log'),
(370,1,33,'46.06946471147239','14.469154737889767','2018-09-25 12:57:35','Log'),
(371,1,34,'46.069606617093086','14.468757351860404','2018-09-25 12:57:39','Log'),
(372,1,6,'46.069691525772214','14.468384021893144','2018-09-25 12:57:43','Log'),
(373,1,18,'46.069822534918785','14.468384943902493','2018-09-25 12:57:48','Log'),
(374,1,51,'46.07004993595183','14.468572698533535','2018-09-25 12:57:52','Log'),
(375,1,61,'46.070524184033275','14.468953907489777','2018-09-25 12:57:56','Log'),
(376,1,38,'46.07101016677916','14.46937283501029','2018-09-25 12:58:00','Log'),
(377,1,24,'46.07132448814809','14.469500575214624','2018-09-25 12:58:05','Log'),
(378,1,34,'46.071472596377134','14.469146272167563','2018-09-25 12:58:09','Log'),
(379,1,40,'46.07170360162854','14.468578649684787','2018-09-25 12:58:14','Log'),
(380,1,34,'46.071917340159416','14.46808386594057','2018-09-25 12:58:18','Log'),
(381,1,26,'46.07207257300615','14.467738112434745','2018-09-25 12:58:22','Log'),
(382,1,12,'46.07224624603987','14.467355646193027','2018-09-25 12:58:27','Log'),
(383,1,13,'46.07232813723385','14.467165963724256','2018-09-25 12:58:40','Log'),
(384,1,23,'46.07239477336407','14.467008467763662','2018-09-25 12:58:44','Log'),
(385,1,39,'46.07256408780813','14.466586606577039','2018-09-25 12:58:48','Log'),
(386,1,46,'46.072811437770724','14.465920915827155','2018-09-25 12:58:53','Log'),
(387,1,44,'46.073021069169044','14.465352706611156','2018-09-25 12:58:57','Log'),
(388,1,10,'46.073219049721956','14.464758513495326','2018-09-25 12:59:02','Log'),
(389,1,17,'46.07324939221144','14.46467025205493','2018-09-25 12:59:06','Log'),
(390,1,46,'46.07358081266284','14.464918272569776','2018-09-25 12:59:11','Log'),
(391,1,71,'46.07401759363711','14.465703405439854','2018-09-25 12:59:16','Log'),
(392,1,76,'46.07448563911021','14.466562382876873','2018-09-25 12:59:20','Log'),
(393,1,73,'46.07500280253589','14.46767390705645','2018-09-25 12:59:25','Log'),
(394,1,74,'46.07539071701467','14.46861200965941','2018-09-25 12:59:29','Log'),
(395,1,80,'46.07575633563101','14.469825876876712','2018-09-25 12:59:34','Log'),
(396,1,95,'46.07609513215721','14.471029182896018','2018-09-25 12:59:38','Log'),
(397,1,109,'46.076544653624296','14.472671449184418','2018-09-25 12:59:43','Log'),
(398,1,119,'46.07694556005299','14.474133001640439','2018-09-25 12:59:47','Log'),
(399,1,119,'46.077479403465986','14.476068131625652','2018-09-25 12:59:52','Log'),
(400,1,115,'46.07792481780052','14.477728335186839','2018-09-25 12:59:56','Log'),
(401,1,121,'46.07846226543188','14.479678804054856','2018-09-25 13:00:01','Log'),
(402,1,121,'46.07889871113002','14.481225097551942','2018-09-25 13:00:05','Log'),
(403,1,123,'46.079456862062216','14.482850516214967','2018-09-25 13:00:09','Log'),
(404,1,122,'46.08025012537837','14.484623037278652','2018-09-25 13:00:14','Log'),
(405,1,118,'46.08094381168485','14.486097246408463','2018-09-25 13:00:18','Log'),
(406,1,126,'46.08173078857362','14.487898098304868','2018-09-25 13:00:23','Log'),
(407,1,125,'46.08233219012618','14.489587638527155','2018-09-25 13:00:27','Log'),
(408,1,122,'46.08293233439326','14.491576161235571','2018-09-25 13:00:32','Log'),
(409,1,123,'46.08336475677788','14.493291098624468','2018-09-25 13:00:36','Log'),
(410,1,123,'46.083781253546476','14.495478942990303','2018-09-25 13:00:41','Log'),
(411,1,124,'46.08407554216683','14.497605599462986','2018-09-25 13:00:46','Log'),
(412,1,124,'46.08423094265163','14.499476859346032','2018-09-25 13:00:50','Log'),
(413,1,128,'46.0842773783952','14.501698650419712','2018-09-25 13:00:55','Log'),
(414,1,124,'46.08419221825898','14.504033764824271','2018-09-25 13:01:00','Log'),
(415,1,119,'46.08403413556516','14.50620710849762','2018-09-25 13:01:05','Log'),
(416,1,115,'46.08391419053078','14.50785624794662','2018-09-25 13:01:09','Log'),
(417,1,121,'46.08375417999923','14.50999497435987','2018-09-25 13:01:14','Log'),
(418,1,123,'46.08362602069974','14.51166213490069','2018-09-25 13:01:18','Log'),
(419,1,117,'46.08344949781895','14.513958608731627','2018-09-25 13:01:23','Log'),
(420,1,124,'46.083290157839656','14.516112254932523','2018-09-25 13:01:28','Log'),
(421,1,120,'46.08315487392247','14.517914364114404','2018-09-25 13:01:32','Log'),
(422,1,120,'46.082977848127484','14.520027693361044','2018-09-25 13:01:37','Log'),
(423,1,119,'46.082703340798616','14.522098023444414','2018-09-25 13:01:42','Log'),
(424,1,124,'46.08221895061433','14.524316797032952','2018-09-25 13:01:47','Log'),
(425,1,124,'46.08162961900234','14.526294087991118','2018-09-25 13:01:52','Log'),
(426,1,120,'46.08100709505379','14.5278699696064','2018-09-25 13:01:56','Log'),
(427,1,116,'46.08039764687419','14.529259102419019','2018-09-25 13:02:00','Log'),
(428,1,116,'46.07973078265786','14.530766420066357','2018-09-25 13:02:04','Log'),
(429,1,116,'46.07898001559079','14.53250759281218','2018-09-25 13:02:09','Log'),
(430,1,114,'46.078292867168784','14.534348174929619','2018-09-25 13:02:14','Log'),
(431,1,106,'46.07783286832273','14.535861276090145','2018-09-25 13:02:18','Log'),
(432,1,106,'46.07734948396683','14.537567244842649','2018-09-25 13:02:23','Log'),
(433,1,100,'46.07690993696451','14.53898479230702','2018-09-25 13:02:27','Log'),
(434,1,111,'46.076314402744174','14.540596380829811','2018-09-25 13:02:32','Log'),
(435,1,99,'46.0757449362427','14.542075283825397','2018-09-25 13:02:36','Log'),
(436,1,110,'46.075086956843734','14.54368687234819','2018-09-25 13:02:41','Log'),
(437,1,117,'46.07452084310353','14.545018253847957','2018-09-25 13:02:45','Log'),
(438,1,117,'46.07370553538203','14.546756660565734','2018-09-25 13:02:50','Log'),
(439,1,119,'46.07269249856472','14.548435052856803','2018-09-25 13:02:55','Log'),
(440,1,121,'46.07184081338346','14.549551187083125','2018-09-25 13:02:59','Log'),
(441,1,114,'46.070711351931095','14.55093763768673','2018-09-25 13:03:04','Log'),
(442,1,125,'46.06969186104834','14.552507987245917','2018-09-25 13:03:09','Log'),
(443,1,129,'46.068944446742535','14.554002732038498','2018-09-25 13:03:13','Log'),
(444,1,124,'46.0683055780828','14.555656062439084','2018-09-25 13:03:17','Log'),
(445,1,120,'46.067796042189','14.557608207687736','2018-09-25 13:03:22','Log'),
(446,1,114,'46.067506363615394','14.559746515005827','2018-09-25 13:03:27','Log'),
(447,1,109,'46.06745481491089','14.561810558661819','2018-09-25 13:03:32','Log'),
(448,1,102,'46.06746906414628','14.563260795548558','2018-09-25 13:03:36','Log'),
(449,1,112,'46.06749404221773','14.565140437334776','2018-09-25 13:03:41','Log'),
(450,1,114,'46.06751935556531','14.567089984193444','2018-09-25 13:03:46','Log'),
(451,1,117,'46.06753930449486','14.568889578804374','2018-09-25 13:03:50','Log'),
(452,1,122,'46.06759496033192','14.570662938058376','2018-09-25 13:03:54','Log'),
(453,1,114,'46.06776452623308','14.572753300890326','2018-09-25 13:03:59','Log'),
(454,1,120,'46.067844070494175','14.57478180527687','2018-09-25 13:04:04','Log'),
(455,1,108,'46.06806853786111','14.576424239203334','2018-09-25 13:04:08','Log'),
(456,1,117,'46.06896473094821','14.577828794717789','2018-09-25 13:04:13','Log'),
(457,1,114,'46.07043634168804','14.57837462425232','2018-09-25 13:04:18','Log'),
(458,1,59,'46.07171625830233','14.578449558466673','2018-09-25 13:04:23','Log'),
(459,1,110,'46.073053339496255','14.578864965587854','2018-09-25 13:04:28','Log'),
(460,1,118,'46.07419663108885','14.579356145113707','2018-09-25 13:04:32','Log'),
(461,1,114,'46.07554662041366','14.579962575808167','2018-09-25 13:04:37','Log'),
(462,1,113,'46.076995600014925','14.580604713410139','2018-09-25 13:04:42','Log'),
(463,1,101,'46.07797980308533','14.58104350604117','2018-09-25 13:04:46','Log'),
(464,1,92,'46.0791933350265','14.58158296532929','2018-09-25 13:04:51','Log'),
(465,1,84,'46.08027124777436','14.582059979438782','2018-09-25 13:04:56','Log'),
(466,1,72,'46.08101916499436','14.58239022642374','2018-09-25 13:05:00','Log'),
(467,1,52,'46.08168485574424','14.582920633256435','2018-09-25 13:05:05','Log'),
(468,1,56,'46.08162408694625','14.583701826632023','2018-09-25 13:05:10','Log'),
(469,1,58,'46.081127878278494','14.583909278735518','2018-09-25 13:05:14','Log'),
(470,1,13,'46.08059713616967','14.583591436967254','2018-09-25 13:05:24','Log'),
(471,1,38,'46.08032925054431','14.583416506648064','2018-09-25 13:05:29','Log'),
(472,1,58,'46.07992960140109','14.583822609856725','2018-09-25 13:05:33','Log'),
(473,1,59,'46.07941067777574','14.584509506821632','2018-09-25 13:05:38','Log'),
(474,1,67,'46.07912535779178','14.585593119263649','2018-09-25 13:05:43','Log'),
(475,1,69,'46.07908386737108','14.586856942623854','2018-09-25 13:05:48','Log'),
(476,1,71,'46.07898026704788','14.588070223107934','2018-09-25 13:05:53','Log'),
(477,1,73,'46.0787461604923','14.589391127228737','2018-09-25 13:05:58','Log'),
(478,1,73,'46.078559663146734','14.590457389131188','2018-09-25 13:06:02','Log'),
(479,1,72,'46.078388672322035','14.591408483684063','2018-09-25 13:06:06','Log'),
(480,1,71,'46.078146770596504','14.592703739181161','2018-09-25 13:06:11','Log'),
(481,1,66,'46.07796764932573','14.593684086576104','2018-09-25 13:06:15','Log'),
(482,1,64,'46.077806297689676','14.594610119238496','2018-09-25 13:06:19','Log'),
(483,1,64,'46.07760630548','14.595671687275171','2018-09-25 13:06:24','Log'),
(484,1,65,'46.07726558111608','14.596472745761275','2018-09-25 13:06:28','Log'),
(485,1,67,'46.07683131471276','14.59721035324037','2018-09-25 13:06:32','Log'),
(486,1,71,'46.07633971609175','14.597835224121809','2018-09-25 13:06:36','Log'),
(487,1,74,'46.075698332861066','14.59875144995749','2018-09-25 13:06:41','Log'),
(488,1,78,'46.07515627518296','14.599895244464278','2018-09-25 13:06:46','Log'),
(489,1,71,'46.074866177514195','14.600896881893277','2018-09-25 13:06:50','Log'),
(490,1,75,'46.0748952627182','14.60224905051291','2018-09-25 13:06:55','Log'),
(491,1,75,'46.07496868818998','14.603535505011678','2018-09-25 13:07:00','Log'),
(492,1,76,'46.07503934763372','14.604648957028985','2018-09-25 13:07:04','Log'),
(493,1,81,'46.07490339316428','14.606059212237597','2018-09-25 13:07:09','Log'),
(494,1,81,'46.074720080941916','14.607208706438541','2018-09-25 13:07:13','Log'),
(495,1,78,'46.07456644065678','14.608302963897586','2018-09-25 13:07:17','Log'),
(496,1,71,'46.0743719805032','14.60969427600503','2018-09-25 13:07:22','Log'),
(497,1,37,'46.074210964143276','14.610732877627015','2018-09-25 13:07:27','Log'),
(498,1,24,'46.07405179180205','14.611053317785263','2018-09-25 13:07:31','Log'),
(499,1,17,'46.07378172688186','14.610916273668408','2018-09-25 13:07:36','Log'),
(500,1,5,'46.07376202940941','14.610553421080112','2018-09-25 13:20:51','Log'),
(501,1,5,'46.07376202940941','14.610553421080112','2018-09-25 13:20:55','Log'),
(502,1,6,'46.07376320287585','14.610544368624687','2018-09-25 13:20:59','Log'),
(503,1,5,'46.07376739382744','14.610508996993303','2018-09-25 13:21:03','Log'),
(504,1,5,'46.0737694054842','14.610492065548897','2018-09-25 13:21:13','Log'),
(505,1,5,'46.0737694054842','14.610492065548897','2018-09-25 13:21:19','Log'),
(506,1,5,'46.073771668598056','14.610473792999983','2018-09-25 13:21:24','Log'),
(507,1,5,'46.0737554077059','14.610609831288457','2018-09-25 13:21:45','Log'),
(508,1,5,'46.07375389896333','14.610622404143214','2018-09-25 13:21:54','Log'),
(509,1,5,'46.073750546202064','14.610649645328522','2018-09-25 13:22:11','Log'),
(510,1,5,'46.073756497353315','14.610599437728524','2018-09-25 13:23:46','Log'),
(511,1,5,'46.073760353028774','14.6105679217726','2018-09-25 13:24:03','Log'),
(512,1,12,'46.07375968247652','14.610573202371597','2018-09-25 13:24:15','Log'),
(513,1,19,'46.07378373853862','14.610918033868074','2018-09-25 13:24:20','Log'),
(514,1,20,'46.07395984232426','14.611061364412308','2018-09-25 13:24:25','Log'),
(515,1,75,'46.074046678841114','14.611050467938185','2018-09-25 13:24:32','Log'),
(516,1,59,'46.07427843846381','14.610319063067436','2018-09-25 13:24:36','Log'),
(517,1,95,'46.07446820475161','14.609007546678185','2018-09-25 13:24:41','Log'),
(518,1,85,'46.074695186689496','14.607387324795127','2018-09-25 13:24:46','Log'),
(519,1,80,'46.07488403096795','14.606171529740095','2018-09-25 13:24:50','Log'),
(520,1,72,'46.075047394260764','14.605084983631968','2018-09-25 13:24:54','Log'),
(521,1,75,'46.07498452998698','14.60375058464706','2018-09-25 13:25:02','Log'),
(522,1,71,'46.07490884140134','14.602499501779675','2018-09-25 13:25:04','Log'),
(523,1,73,'46.074840193614364','14.601144567131996','2018-09-25 13:25:09','Log'),
(524,1,82,'46.07519147917628','14.599810587242246','2018-09-25 13:25:14','Log'),
(525,1,79,'46.075624488294125','14.598885392770171','2018-09-25 13:25:18','Log'),
(526,1,78,'46.076344242319465','14.597835978493094','2018-09-25 13:25:23','Log'),
(527,1,74,'46.07687020674348','14.597145393490791','2018-09-25 13:25:27','Log'),
(528,1,74,'46.07743254862726','14.59615046158433','2018-09-25 13:25:32','Log'),
(529,1,76,'46.07771820388734','14.595120744779706','2018-09-25 13:25:36','Log'),
(530,1,77,'46.07790579088032','14.59404056891799','2018-09-25 13:25:40','Log'),
(531,1,78,'46.078160014003515','14.59263383410871','2018-09-25 13:25:45','Log'),
(532,1,81,'46.07840702868998','14.591310415416956','2018-09-25 13:25:50','Log'),
(533,1,83,'46.078619761392474','14.590120520442724','2018-09-25 13:25:54','Log'),
(534,1,79,'46.07887121848762','14.5886867120862','2018-09-25 13:25:59','Log'),
(535,1,80,'46.079072216525674','14.5872120000422','2018-09-25 13:26:04','Log'),
(536,1,76,'46.079115802422166','14.58588388748467','2018-09-25 13:26:09','Log'),
(537,1,76,'46.079294085502625','14.5848133508116','2018-09-25 13:26:13','Log'),
(538,1,74,'46.07975902967155','14.584015561267734','2018-09-25 13:26:17','Log'),
(539,1,67,'46.08045724220574','14.583303015679121','2018-09-25 13:26:22','Log'),
(540,1,69,'46.08102419413626','14.582793898880482','2018-09-25 13:26:26','Log'),
(541,1,68,'46.08169952407479','14.581984961405396','2018-09-25 13:26:31','Log'),
(542,1,33,'46.08201451599598','14.581129252910614','2018-09-25 13:26:36','Log'),
(543,1,41,'46.08178309164941','14.580782828852534','2018-09-25 13:26:41','Log'),
(544,1,61,'46.081186132505536','14.58091844804585','2018-09-25 13:26:46','Log'),
(545,1,61,'46.08075186610222','14.58157273940742','2018-09-25 13:26:50','Log'),
(546,1,75,'46.08003303408623','14.581716321408749','2018-09-25 13:26:55','Log'),
(547,1,92,'46.079245302826166','14.581423122435808','2018-09-25 13:26:59','Log'),
(548,1,104,'46.07824333012104','14.580981899052858','2018-09-25 13:27:03','Log'),
(549,1,109,'46.07696500606835','14.580406816676259','2018-09-25 13:27:08','Log'),
(550,1,109,'46.075683580711484','14.579836260527372','2018-09-25 13:27:13','Log'),
(551,1,110,'46.07467540539801','14.579396462067962','2018-09-25 13:27:17','Log'),
(552,1,109,'46.07357159256935','14.578905869275331','2018-09-25 13:27:21','Log'),
(553,1,116,'46.07222151942551','14.578340845182538','2018-09-25 13:27:26','Log'),
(554,1,115,'46.071128100156784','14.577904734760523','2018-09-25 13:27:30','Log'),
(555,1,118,'46.070019425824285','14.577124128118157','2018-09-25 13:27:34','Log'),
(556,1,122,'46.069001611322165','14.575578169897199','2018-09-25 13:27:39','Log'),
(557,1,127,'46.068535493686795','14.573947805911303','2018-09-25 13:27:43','Log'),
(558,1,109,'46.06817984953523','14.572244938462973','2018-09-25 13:27:47','Log'),
(559,1,111,'46.067849937826395','14.570379629731178','2018-09-25 13:27:52','Log'),
(560,1,100,'46.06768833473325','14.56890793517232','2018-09-25 13:27:56','Log'),
(561,1,99,'46.06760501861572','14.567456105723977','2018-09-25 13:28:00','Log'),
(562,1,111,'46.067589009180665','14.565648213028908','2018-09-25 13:28:05','Log'),
(563,1,120,'46.06756377965212','14.564045928418636','2018-09-25 13:28:09','Log'),
(564,1,129,'46.067540645599365','14.561700420454144','2018-09-25 13:28:14','Log'),
(565,1,133,'46.06762253679335','14.559429427608848','2018-09-25 13:28:19','Log'),
(566,1,134,'46.06789235025644','14.557630587369204','2018-09-25 13:28:23','Log'),
(567,1,136,'46.06854613870382','14.555268147960305','2018-09-25 13:28:28','Log'),
(568,1,139,'46.069429172202945','14.553216006606817','2018-09-25 13:28:33','Log'),
(569,1,135,'46.07027834281325','14.551752861589193','2018-09-25 13:28:37','Log'),
(570,1,133,'46.07130135409534','14.550364064052701','2018-09-25 13:28:41','Log'),
(571,1,137,'46.07256978750229','14.548790361732244','2018-09-25 13:28:46','Log'),
(572,1,137,'46.07347561977804','14.547400306910276','2018-09-25 13:28:50','Log'),
(573,1,135,'46.07431280426681','14.54572887159884','2018-09-25 13:28:54','Log'),
(574,1,131,'46.07517530210316','14.543711096048355','2018-09-25 13:28:59','Log'),
(575,1,129,'46.07598625123501','14.541724836453795','2018-09-25 13:29:04','Log'),
(576,1,129,'46.07660198584199','14.540124144405127','2018-09-25 13:29:08','Log'),
(577,1,125,'46.07720305211842','14.538424126803875','2018-09-25 13:29:12','Log'),
(578,1,117,'46.07777184806764','14.536458402872086','2018-09-25 13:29:17','Log'),
(579,1,110,'46.07833259738982','14.534519584849477','2018-09-25 13:29:22','Log'),
(580,1,119,'46.078974483534694','14.532746728509665','2018-09-25 13:29:27','Log'),
(581,1,127,'46.07964998111129','14.531196830794215','2018-09-25 13:29:31','Log'),
(582,1,131,'46.08049051836133','14.529291037470102','2018-09-25 13:29:36','Log'),
(583,1,126,'46.081157298758626','14.527789587154984','2018-09-25 13:29:40','Log'),
(584,1,124,'46.08178091235459','14.52614564448595','2018-09-25 13:29:44','Log'),
(585,1,122,'46.0823518037796','14.524179250001907','2018-09-25 13:29:49','Log'),
(586,1,122,'46.082783471792936','14.522107159718871','2018-09-25 13:29:54','Log'),
(587,1,124,'46.083042640239','14.520257441326976','2018-09-25 13:29:58','Log'),
(588,1,130,'46.08324305154383','14.518002374097705','2018-09-25 13:30:03','Log'),
(589,1,127,'46.083378503099084','14.516210993751884','2018-09-25 13:30:07','Log'),
(590,1,118,'46.083543207496405','14.514021137729287','2018-09-25 13:30:12','Log'),
(591,1,113,'46.08370472677052','14.511814853176475','2018-09-25 13:30:17','Log'),
(592,1,105,'46.08384344726801','14.50988550670445','2018-09-25 13:30:22','Log'),
(593,1,95,'46.08397655189037','14.508094880729914','2018-09-25 13:30:27','Log'),
(594,1,95,'46.084102280437946','14.506417075172067','2018-09-25 13:30:32','Log'),
(595,1,96,'46.08422524295747','14.504704903811216','2018-09-25 13:30:37','Log'),
(596,1,99,'46.08434518799186','14.502985021099448','2018-09-25 13:30:42','Log'),
(597,1,102,'46.08438483439386','14.501192383468151','2018-09-25 13:30:47','Log'),
(598,1,108,'46.08430126681924','14.499248368665576','2018-09-25 13:30:52','Log'),
(599,1,109,'46.084180902689695','14.49774163775146','2018-09-25 13:31:01','Log'),
(600,1,117,'46.08390346169472','14.495672397315502','2018-09-25 13:31:02','Log'),
(601,1,131,'46.08352778479457','14.493592595681548','2018-09-25 13:31:06','Log'),
(602,1,136,'46.083098128437996','14.491793001070619','2018-09-25 13:31:12','Log'),
(603,1,131,'46.08258130028844','14.490011176094413','2018-09-25 13:31:14','Log'),
(604,1,135,'46.081786109134555','14.487798102200031','2018-09-25 13:31:19','Log'),
(605,1,134,'46.080934004858136','14.485820643603802','2018-09-25 13:31:24','Log'),
(606,1,127,'46.08019212260842','14.484254652634263','2018-09-25 13:31:31','Log'),
(607,1,120,'46.07936658896506','14.482316672801971','2018-09-25 13:31:33','Log'),
(608,1,98,'46.078829476609826','14.480594024062157','2018-09-25 13:31:38','Log'),
(609,1,109,'46.07843142002821','14.479159964248538','2018-09-25 13:31:42','Log'),
(610,1,127,'46.07789313420653','14.477170603349805','2018-09-25 13:31:47','Log'),
(611,1,127,'46.07742877677083','14.475499838590622','2018-09-25 13:31:51','Log'),
(612,1,129,'46.07683449983597','14.47339178994298','2018-09-25 13:31:56','Log'),
(613,1,114,'46.07638464309275','14.471753798425198','2018-09-25 13:32:00','Log'),
(614,1,97,'46.07586706057191','14.469874408096075','2018-09-25 13:32:05','Log'),
(615,1,82,'46.075421227142215','14.46846105158329','2018-09-25 13:32:10','Log'),
(616,1,78,'46.07506415806711','14.467452205717564','2018-09-25 13:32:14','Log'),
(617,1,81,'46.0745931789279','14.466167511418462','2018-09-25 13:32:19','Log'),
(618,1,66,'46.07434197328985','14.46516327559948','2018-09-25 13:32:23','Log'),
(619,1,40,'46.07403829693794','14.464461291208863','2018-09-25 13:32:27','Log'),
(620,1,14,'46.07386135496199','14.46405460126698','2018-09-25 13:32:32','Log'),
(621,1,14,'46.07378164306283','14.463870786130428','2018-09-25 13:33:01','Log'),
(622,1,19,'46.073684161528945','14.46364657022059','2018-09-25 13:33:06','Log'),
(623,1,16,'46.07354376465082','14.463667692616582','2018-09-25 13:33:11','Log'),
(624,1,14,'46.07346606440842','14.463943960145116','2018-09-25 13:33:27','Log'),
(625,1,22,'46.073392890393734','14.464198686182499','2018-09-25 13:33:32','Log'),
(626,1,34,'46.07329406775534','14.46454075165093','2018-09-25 13:33:36','Log'),
(627,1,49,'46.07307219877839','14.465206358581781','2018-09-25 13:33:41','Log'),
(628,1,53,'46.0728436242789','14.465831816196442','2018-09-25 13:33:45','Log'),
(629,1,51,'46.07258445583284','14.466533213853836','2018-09-25 13:33:49','Log'),
(630,1,49,'46.07227524742484','14.46728833951056','2018-09-25 13:33:54','Log'),
(631,1,47,'46.07193301431835','14.468047404661775','2018-09-25 13:33:59','Log'),
(632,1,40,'46.07165087945759','14.468711167573929','2018-09-25 13:34:04','Log'),
(633,1,32,'46.071468740701675','14.469155659899116','2018-09-25 13:34:08','Log'),
(634,1,44,'46.07128718867898','14.469588752835989','2018-09-25 13:34:12','Log'),
(635,1,9,'46.0710409283638','14.470205996185541','2018-09-25 13:34:17','Log'),
(636,1,11,'46.07099642045796','14.470318984240294','2018-09-25 13:34:21','Log'),
(637,1,31,'46.070904890075326','14.47055141441524','2018-09-25 13:34:26','Log'),
(638,1,40,'46.07073716819286','14.470977298915386','2018-09-25 13:34:30','Log'),
(639,1,52,'46.07042226009071','14.471767377108335','2018-09-25 13:34:35','Log'),
(640,1,52,'46.0701066814363','14.472533231601119','2018-09-25 13:34:40','Log'),
(641,1,51,'46.06980535201728','14.473093478009105','2018-09-25 13:34:44','Log'),
(642,1,53,'46.06944903731346','14.473678953945637','2018-09-25 13:34:48','Log'),
(643,1,57,'46.069055339321494','14.474463919177651','2018-09-25 13:34:53','Log'),
(644,1,60,'46.06883472763002','14.475218039005995','2018-09-25 13:34:57','Log'),
(645,1,57,'46.0686560254544','14.47608363814652','2018-09-25 13:35:01','Log'),
(646,1,26,'46.06853951700032','14.476815713569522','2018-09-25 13:35:06','Log'),
(647,1,11,'46.06850255280733','14.47705359198153','2018-09-25 13:35:46','Log'),
(648,1,18,'46.0684747248888','14.47723438963294','2018-09-25 13:35:50','Log'),
(649,1,33,'46.06828076764941','14.47717227973044','2018-09-25 13:35:54','Log'),
(650,1,32,'46.06797851622105','14.476634496822953','2018-09-25 13:35:59','Log'),
(651,1,5,'46.06781808659434','14.476343896239996','2018-09-25 13:36:03','Log'),
(652,1,7,'46.067806435748935','14.476322773844004','2018-09-25 13:36:15','Log'),
(653,1,24,'46.06770417653024','14.476333335042','2018-09-25 13:36:19','Log'),
(654,1,35,'46.06764055788517','14.476883355528116','2018-09-25 13:36:24','Log'),
(655,1,39,'46.06758129782975','14.47739565744996','2018-09-25 13:36:28','Log'),
(656,1,25,'46.06752002611756','14.477928075939417','2018-09-25 13:36:32','Log'),
(657,1,16,'46.06749295257032','14.47816427797079','2018-09-25 13:36:37','Log'),
(658,1,6,'46.06749295257032','14.47816427797079','2018-09-25 13:36:41','Log'),
(659,1,10,'46.06749295257032','14.47816427797079','2018-09-25 13:36:46','Log'),
(660,1,7,'46.06749295257032','14.47816427797079','2018-09-25 13:36:50','Log'),
(661,1,5,'46.06751072220504','14.478010553866625','2018-09-25 13:38:16','Log'),
(662,1,5,'46.06751072220504','14.478010553866625','2018-09-25 13:38:21','Log'),
(663,1,5,'46.06751072220504','14.478010553866625','2018-09-25 13:38:29','Log'),
(664,1,5,'46.06751072220504','14.478010553866625','2018-09-25 13:38:34','Log'),
(665,1,7,'46.06751072220504','14.478010553866625','2018-09-25 13:38:39','Log');

/*Table structure for table `mailmanager_actions` */

DROP TABLE IF EXISTS `mailmanager_actions`;

CREATE TABLE `mailmanager_actions` (
  `action_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `action_type` int(11) DEFAULT NULL,
  `action_description` varchar(500) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `created_on` varchar(200) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `action_email` varchar(500) COLLATE utf8_slovenian_ci DEFAULT NULL,
  PRIMARY KEY (`action_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

/*Data for the table `mailmanager_actions` */

insert  into `mailmanager_actions`(`action_id`,`employee_id`,`action_type`,`action_description`,`created_on`,`action_email`) values 
(1,65,1,'Created a new mailbox Conversations','2018-10-09 12:32:17','it@goricki.si'),
(2,65,1,'Moved an e-mail from Inbox to Conversations','2018-10-09 12:40:54','it@goricki.si'),
(3,65,1,'Moved an e-mail from Inbox to Conversations','2018-10-09 12:40:59','it@goricki.si'),
(4,65,1,'Moved an e-mail from Inbox to Conversations','2018-10-09 12:41:10','it@goricki.si'),
(5,65,1,'Moved an e-mail from Inbox to Conversations','2018-10-09 12:41:14','it@goricki.si'),
(6,65,1,'Moved an e-mail from Inbox to Conversations','2018-10-09 12:41:30','it@goricki.si'),
(7,65,1,'Moved an e-mail from Inbox to Conversations','2018-10-09 12:41:34','it@goricki.si'),
(8,62,1,'Created a new mailbox Its','2018-10-09 12:42:51','ziga.babnik@btrack.io'),
(9,62,1,'Moved an e-mail from Inbox to Its','2018-10-09 13:32:07','ziga.babnik@btrack.io'),
(10,62,1,'Moved an e-mail from Inbox to Its','2018-10-09 13:32:11','ziga.babnik@btrack.io'),
(11,62,1,'Moved an e-mail from Inbox to Its','2018-10-09 13:32:25','ziga.babnik@btrack.io'),
(12,62,1,'Moved an e-mail from Inbox to Its','2018-10-09 13:32:28','ziga.babnik@btrack.io'),
(13,62,1,'Moved an e-mail from Inbox to Its','2018-10-09 13:32:48','ziga.babnik@btrack.io'),
(14,62,1,'Moved an e-mail from Inbox to Its','2018-10-09 13:32:51','ziga.babnik@btrack.io'),
(15,62,1,'Moved an e-mail from Inbox to Its','2018-10-09 13:33:25','ziga.babnik@btrack.io'),
(16,62,1,'Moved an e-mail from Inbox to Its','2018-10-09 13:33:35','ziga.babnik@btrack.io'),
(17,62,1,'Moved an e-mail from Inbox to Its','2018-10-09 13:33:44','ziga.babnik@btrack.io'),
(18,62,1,'Moved an e-mail from Inbox to Its','2018-10-09 13:33:50','ziga.babnik@btrack.io'),
(19,62,1,'Moved an e-mail from Inbox to Its','2018-10-09 13:37:45','ziga.babnik@btrack.io'),
(20,62,1,'Moved an e-mail from Inbox to Its','2018-10-09 13:37:50','ziga.babnik@btrack.io'),
(21,62,1,'Moved an e-mail from Inbox to Its','2018-10-09 13:37:58','ziga.babnik@btrack.io'),
(22,62,1,'Moved an e-mail from Inbox to Its','2018-10-09 13:38:02','ziga.babnik@btrack.io'),
(23,62,1,'Moved an e-mail from Its to Inbox','2018-10-09 13:39:22','ziga.babnik@btrack.io'),
(24,62,1,'Moved an e-mail from Inbox to Its','2018-10-09 13:39:28','ziga.babnik@btrack.io'),
(25,62,1,'Moved an e-mail from Its to Inbox','2018-10-09 13:39:29','ziga.babnik@btrack.io'),
(26,62,1,'Moved an e-mail from Inbox to Its','2018-10-09 13:39:31','ziga.babnik@btrack.io'),
(27,62,1,'Moved an e-mail from Inbox to Its','2018-10-09 13:39:48','ziga.babnik@btrack.io'),
(28,62,1,'Moved an e-mail from Inbox to Its','2018-10-09 13:39:53','ziga.babnik@btrack.io');

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `workgroup_id` int(11) NOT NULL,
  `content` text COLLATE utf32_slovenian_ci NOT NULL,
  `datetime` text COLLATE utf32_slovenian_ci NOT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf32 COLLATE=utf32_slovenian_ci;

/*Data for the table `messages` */

insert  into `messages`(`message_id`,`employee_id`,`workgroup_id`,`content`,`datetime`) values 
(1,1,1,'yxcbhdfhdfj','2018-09-26 13:56'),
(2,1,1,'dfdfjfgj','2018-10-02 09:38'),
(3,64,5,'wAZAAAAAAAAAAAAAAAAAAAAAP!??','2018-10-03 14:41'),
(4,64,5,'TESTIS, TESTIS...','2018-10-03 14:41'),
(5,64,5,'1','2018-10-03 14:41'),
(6,64,5,'2','2018-10-03 14:41'),
(7,64,5,'3','2018-10-03 14:41'),
(8,64,5,'Hey, ','2018-10-05 09:08'),
(9,64,5,'A vidva vidita chat v work group-i?','2018-10-05 09:09'),
(10,63,7,'hey hey','2018-10-07 21:58'),
(11,65,9,'smd protokol','2018-10-09 12:17'),
(12,62,9,'seveda','2018-10-09 12:17'),
(13,62,9,'coc','2018-10-09 12:18'),
(14,65,9,'k','2018-10-09 12:18');

/*Table structure for table `nfc` */

DROP TABLE IF EXISTS `nfc`;

CREATE TABLE `nfc` (
  `nfc_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `tag` text COLLATE utf8_slovenian_ci NOT NULL,
  `content` text COLLATE utf8_slovenian_ci NOT NULL,
  `notes` text COLLATE utf8_slovenian_ci NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`nfc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

/*Data for the table `nfc` */

/*Table structure for table `otherasset_reservations` */

DROP TABLE IF EXISTS `otherasset_reservations`;

CREATE TABLE `otherasset_reservations` (
  `reservation_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `asset_id` int(11) NOT NULL,
  `date_from` text NOT NULL,
  `date_to` text NOT NULL,
  `time_from` text NOT NULL,
  `time_to` text NOT NULL,
  `reservation_status` int(11) NOT NULL,
  PRIMARY KEY (`reservation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `otherasset_reservations` */

insert  into `otherasset_reservations`(`reservation_id`,`employee_id`,`asset_id`,`date_from`,`date_to`,`time_from`,`time_to`,`reservation_status`) values 
(1,62,1,'2018-10-08','2018-10-11','15:40','16:38',1);

/*Table structure for table `place_reservations` */

DROP TABLE IF EXISTS `place_reservations`;

CREATE TABLE `place_reservations` (
  `reservation_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `place_id` int(11) NOT NULL,
  `date_from` text NOT NULL,
  `date_to` text NOT NULL,
  `time_from` text NOT NULL,
  `time_to` text NOT NULL,
  `reservation_status` int(11) NOT NULL,
  PRIMARY KEY (`reservation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `place_reservations` */

/*Table structure for table `queue_agent_history` */

DROP TABLE IF EXISTS `queue_agent_history`;

CREATE TABLE `queue_agent_history` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `agent` varchar(400) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `queue` varchar(200) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `action` varchar(400) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `datetime` varchar(200) COLLATE utf8_slovenian_ci DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

/*Data for the table `queue_agent_history` */

/*Table structure for table `queue_agent_logs` */

DROP TABLE IF EXISTS `queue_agent_logs`;

CREATE TABLE `queue_agent_logs` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `agent` varchar(400) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `talk_time` varchar(45) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `total_calls` varchar(45) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `sla_level` varchar(45) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `time_on_break` varchar(45) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `total_pauses` int(11) DEFAULT NULL,
  `sla_met` int(11) DEFAULT NULL,
  `sla_unmet` int(11) DEFAULT NULL,
  `date` varchar(200) COLLATE utf8_slovenian_ci DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

/*Data for the table `queue_agent_logs` */

insert  into `queue_agent_logs`(`log_id`,`agent`,`talk_time`,`total_calls`,`sla_level`,`time_on_break`,`total_pauses`,`sla_met`,`sla_unmet`,`date`) values 
(1,'Demo Demo','13','2','100','0',0,2,0,'2018-10-08'),
(2,'Žiga1 Babnik1','39','3','100','0',0,3,0,'2018-10-08'),
(3,'Demo Demo','13','2','100','0',0,2,0,'2018-10-08'),
(4,'Žiga1 Babnik1','39','3','100','0',0,3,0,'2018-10-08');

/*Table structure for table `queue_log` */

DROP TABLE IF EXISTS `queue_log`;

CREATE TABLE `queue_log` (
  `queue_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `json_data` text COLLATE utf8mb4_slovenian_ci DEFAULT NULL,
  `date` text COLLATE utf8mb4_slovenian_ci DEFAULT NULL,
  PRIMARY KEY (`queue_log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_slovenian_ci;

/*Data for the table `queue_log` */

insert  into `queue_log`(`queue_log_id`,`json_data`,`date`) values 
(1,'{\"tcalls\":1,\"tacalls\":0,\"tunacalls\":1,\"tacallsper\":\"0%\",\"tunacallsper\":\"100.00%\",\"tagents\":-1,\"cwaiting\":0,\"ctalking\":0,\"slayes\":0,\"slano\":0,\"slamet\":0,\"minanstime\":\"00:00:00\",\"maxanstime\":\"00:00:00\",\"avganstime\":\"00:00:00\",\"minunatime\":\"00:00:02\",\"maxunatime\":\"00:00:02\",\"avgunatime\":\"00:00:02\",\"totalttime\":\"0 hrs:0 mins:0 secs\",\"minttime\":\"00:00:00\",\"maxttime\":\"00:00:00\",\"avgttime\":\"00:00:00\",\"stats_by_agent\":[],\"calls_by_time\":[{\"answered\":0,\"unanswered\":1,\"datetime\":\"2018-10-08 12:15\"}],\"peak_hours\":[{\"calls\":1,\"datetime\":\"2018-10-08 12:00\"}]}','2018-10-07'),
(2,'{\"tcalls\":6,\"tacalls\":5,\"tunacalls\":1,\"tacallsper\":\"83.33%\",\"tunacallsper\":\"16.67%\",\"tagents\":-1,\"cwaiting\":0,\"ctalking\":0,\"slayes\":5,\"slano\":0,\"slamet\":1,\"minanstime\":\"00:00:01\",\"maxanstime\":\"00:00:06\",\"avganstime\":\"00:00:03\",\"minunatime\":\"00:00:02\",\"maxunatime\":\"00:00:02\",\"avgunatime\":\"00:00:02\",\"totalttime\":\"0 hrs:0 mins:52 secs\",\"minttime\":\"00:00:03\",\"maxttime\":\"00:00:28\",\"avgttime\":\"00:00:10\",\"stats_by_agent\":[{\"calls\":2,\"pauses\":0,\"last_pause\":0,\"actions\":[],\"pause_time\":0,\"talk_time\":13,\"sla_met\":2,\"sla_unmet\":0,\"agent\":\"Demo Demo\",\"sla_level\":100},{\"calls\":3,\"pauses\":0,\"last_pause\":0,\"actions\":[],\"pause_time\":0,\"talk_time\":39,\"sla_met\":3,\"sla_unmet\":0,\"agent\":\"\\u017diga1 Babnik1\",\"sla_level\":100}],\"calls_by_time\":[{\"answered\":0,\"unanswered\":1,\"datetime\":\"2018-10-08 12:15\"},{\"answered\":5,\"unanswered\":0,\"datetime\":\"2018-10-08 14:00\"}],\"peak_hours\":[{\"calls\":1,\"datetime\":\"2018-10-08 12:00\"},{\"calls\":5,\"datetime\":\"2018-10-08 14:00\"}]}','2018-10-08'),
(3,'{\"tcalls\":6,\"tacalls\":5,\"tunacalls\":1,\"tacallsper\":\"83.33%\",\"tunacallsper\":\"16.67%\",\"tagents\":-1,\"cwaiting\":0,\"ctalking\":0,\"slayes\":5,\"slano\":0,\"slamet\":1,\"minanstime\":\"00:00:01\",\"maxanstime\":\"00:00:06\",\"avganstime\":\"00:00:03\",\"minunatime\":\"00:00:02\",\"maxunatime\":\"00:00:02\",\"avgunatime\":\"00:00:02\",\"totalttime\":\"0 hrs:0 mins:52 secs\",\"minttime\":\"00:00:03\",\"maxttime\":\"00:00:28\",\"avgttime\":\"00:00:10\",\"stats_by_agent\":[{\"calls\":2,\"pauses\":0,\"last_pause\":0,\"actions\":[],\"pause_time\":0,\"talk_time\":13,\"sla_met\":2,\"sla_unmet\":0,\"agent\":\"Demo Demo\",\"sla_level\":100},{\"calls\":3,\"pauses\":0,\"last_pause\":0,\"actions\":[],\"pause_time\":0,\"talk_time\":39,\"sla_met\":3,\"sla_unmet\":0,\"agent\":\"\\u017diga1 Babnik1\",\"sla_level\":100}],\"calls_by_time\":[{\"answered\":0,\"unanswered\":1,\"datetime\":\"2018-10-08 12:15\"},{\"answered\":5,\"unanswered\":0,\"datetime\":\"2018-10-08 14:00\"}],\"peak_hours\":[{\"calls\":1,\"datetime\":\"2018-10-08 12:00\"},{\"calls\":5,\"datetime\":\"2018-10-08 14:00\"}]}','2018-10-08');

/*Table structure for table `queues` */

DROP TABLE IF EXISTS `queues`;

CREATE TABLE `queues` (
  `queue_id` int(11) NOT NULL AUTO_INCREMENT,
  `queue_number` varchar(200) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `caller_id` varchar(45) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `template_id` int(11) DEFAULT 1,
  PRIMARY KEY (`queue_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

/*Data for the table `queues` */

insert  into `queues`(`queue_id`,`queue_number`,`caller_id`,`template_id`) values 
(1,'6700','105547994',1),
(2,'6701',NULL,1);

/*Table structure for table `reminders` */

DROP TABLE IF EXISTS `reminders`;

CREATE TABLE `reminders` (
  `reminder_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `reminder_datetime` text NOT NULL,
  `reminder_active` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`reminder_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `reminders` */

insert  into `reminders`(`reminder_id`,`event_id`,`employee_id`,`customer_id`,`reminder_datetime`,`reminder_active`) values 
(1,6,64,7,'2018-10-04 07:20',0),
(12,3,62,2,'2018-10-08 15:51',0),
(13,3,65,2,'2018-10-08 15:51',0);

/*Table structure for table `settings` */

DROP TABLE IF EXISTS `settings`;

CREATE TABLE `settings` (
  `notifications_email` mediumtext COLLATE utf32_slovenian_ci NOT NULL,
  `company_logo` text COLLATE utf32_slovenian_ci NOT NULL,
  `company_name` mediumtext COLLATE utf32_slovenian_ci NOT NULL,
  `company_address` mediumtext COLLATE utf32_slovenian_ci NOT NULL,
  `company_city` text COLLATE utf32_slovenian_ci NOT NULL,
  `company_zipcode` text COLLATE utf32_slovenian_ci NOT NULL,
  `company_phonenumber` mediumtext COLLATE utf32_slovenian_ci NOT NULL,
  `company_latitude` mediumtext COLLATE utf32_slovenian_ci NOT NULL,
  `company_longitude` mediumtext COLLATE utf32_slovenian_ci NOT NULL,
  `decimal_seperator` int(11) NOT NULL,
  `event_radius` int(11) NOT NULL,
  `location_radius` int(11) NOT NULL DEFAULT 50,
  `worktime_from` mediumtext COLLATE utf32_slovenian_ci NOT NULL,
  `worktime_to` mediumtext COLLATE utf32_slovenian_ci NOT NULL,
  `stop_duration` int(11) NOT NULL,
  `trip_cost` mediumtext COLLATE utf32_slovenian_ci NOT NULL,
  `daily_allowance` mediumtext COLLATE utf32_slovenian_ci NOT NULL,
  `ticketing_prefix` text COLLATE utf32_slovenian_ci NOT NULL,
  `workorder_prefix` text COLLATE utf32_slovenian_ci NOT NULL,
  `travelorder_prefix` mediumtext COLLATE utf32_slovenian_ci NOT NULL,
  `telephony_showemails` int(11) NOT NULL DEFAULT 0,
  `telephony_showmobile` int(11) NOT NULL DEFAULT 0,
  `employees_showinactive` int(11) NOT NULL DEFAULT 1,
  `mailchimp_key` mediumtext COLLATE utf32_slovenian_ci NOT NULL,
  `mk_secretkey` mediumtext COLLATE utf32_slovenian_ci NOT NULL,
  `mk_companyid` int(11) NOT NULL,
  `sms_url` text COLLATE utf32_slovenian_ci NOT NULL,
  `sms_label` text COLLATE utf32_slovenian_ci NOT NULL,
  `sms_username` text COLLATE utf32_slovenian_ci NOT NULL,
  `sms_password` text COLLATE utf32_slovenian_ci NOT NULL,
  `tracking_terms` mediumtext COLLATE utf32_slovenian_ci NOT NULL,
  `telephony_central` int(11) DEFAULT 0,
  `license_key` varchar(500) COLLATE utf32_slovenian_ci DEFAULT NULL,
  `license_expiration_date` varchar(200) COLLATE utf32_slovenian_ci DEFAULT NULL,
  `company_currency` varchar(200) COLLATE utf32_slovenian_ci DEFAULT 'EUR',
  `company_vat` decimal(6,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_slovenian_ci;

/*Data for the table `settings` */

insert  into `settings`(`notifications_email`,`company_logo`,`company_name`,`company_address`,`company_city`,`company_zipcode`,`company_phonenumber`,`company_latitude`,`company_longitude`,`decimal_seperator`,`event_radius`,`location_radius`,`worktime_from`,`worktime_to`,`stop_duration`,`trip_cost`,`daily_allowance`,`ticketing_prefix`,`workorder_prefix`,`travelorder_prefix`,`telephony_showemails`,`telephony_showmobile`,`employees_showinactive`,`mailchimp_key`,`mk_secretkey`,`mk_companyid`,`sms_url`,`sms_label`,`sms_username`,`sms_password`,`tracking_terms`,`telephony_central`,`license_key`,`license_expiration_date`,`company_currency`,`company_vat`) values 
('it@netko.it','snoopy.jpg','Netko d.o.o.','Pod hribom 55, Ljubljana, Slovenia','Ljubljana','1000','+38640377772','46.066576','14.47787530000005',1,100,50,'08:00','16:30',20,'0.37','20','TKT-2018-','WO-2018-','Order-2017',1,1,1,'67db10ef25c87730da01f4ab3d4a4c2c-us19','AafXtX7CnL2T69Xe2D5',2280,'https://mbg.t-2.com/SMS/netko/send_sms','Netko d.o.o.','netko','N3tkoetKOweR2er','test terms of ufghfgjse1',2,'demo','2018-09-20 08:34:49','EUR',20.00);

/*Table structure for table `smstemplates` */

DROP TABLE IF EXISTS `smstemplates`;

CREATE TABLE `smstemplates` (
  `template_id` int(11) NOT NULL AUTO_INCREMENT,
  `template_title` text NOT NULL,
  `template_content` text NOT NULL,
  PRIMARY KEY (`template_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `smstemplates` */

insert  into `smstemplates`(`template_id`,`template_title`,`template_content`) values 
(2,'Event reminder','Hello %name%, you have an upcoming event - %eventsubject% on %eventdate% (%time%.).                			            ');

/*Table structure for table `stops` */

DROP TABLE IF EXISTS `stops`;

CREATE TABLE `stops` (
  `stop_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `start_time` text COLLATE utf8_slovenian_ci NOT NULL,
  `end_time` text COLLATE utf8_slovenian_ci NOT NULL,
  `duration` text COLLATE utf8_slovenian_ci NOT NULL,
  `latitude` text COLLATE utf8_slovenian_ci NOT NULL,
  `longitude` text COLLATE utf8_slovenian_ci NOT NULL,
  PRIMARY KEY (`stop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

/*Data for the table `stops` */

/*Table structure for table `subsidiaries` */

DROP TABLE IF EXISTS `subsidiaries`;

CREATE TABLE `subsidiaries` (
  `subsidiary_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `subsidiary_vat` text COLLATE utf8_slovenian_ci NOT NULL,
  `subsidiary_name` text COLLATE utf8_slovenian_ci NOT NULL,
  `subsidiary_phone` text CHARACTER SET utf32 COLLATE utf32_slovenian_ci NOT NULL,
  `subsidiary_email` text CHARACTER SET utf32 COLLATE utf32_slovenian_ci NOT NULL,
  `subsidiary_building` text CHARACTER SET utf32 COLLATE utf32_slovenian_ci NOT NULL,
  `subsidiary_address` text CHARACTER SET utf32 COLLATE utf32_slovenian_ci NOT NULL,
  `latitude` text CHARACTER SET utf32 COLLATE utf32_slovenian_ci NOT NULL,
  `longitude` text CHARACTER SET utf32 COLLATE utf32_slovenian_ci NOT NULL,
  `added_by` int(11) NOT NULL,
  `subsidiary_notes` text CHARACTER SET utf32 COLLATE utf32_slovenian_ci NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`subsidiary_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

/*Data for the table `subsidiaries` */

insert  into `subsidiaries`(`subsidiary_id`,`customer_id`,`subsidiary_vat`,`subsidiary_name`,`subsidiary_phone`,`subsidiary_email`,`subsidiary_building`,`subsidiary_address`,`latitude`,`longitude`,`added_by`,`subsidiary_notes`,`created_on`) values 
(1,3,'','mak PE','+38640377772','voipme2006@gmail.com','testna 1','Pod hribom, Ljubljana, Slovenia','46.0671957','14.481467100000032',1,'ergerg','2018-10-08 15:59:34');

/*Table structure for table `telephony_campaign` */

DROP TABLE IF EXISTS `telephony_campaign`;

CREATE TABLE `telephony_campaign` (
  `campaign_id` int(11) NOT NULL AUTO_INCREMENT,
  `campaign_name` varchar(200) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `campaign_description` text COLLATE utf8_slovenian_ci DEFAULT NULL,
  `queue` varchar(200) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `template_id` int(11) DEFAULT NULL,
  `campaign_finished` int(11) DEFAULT NULL,
  `created_on` varchar(200) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `campaign_form_limit` int(11) DEFAULT NULL,
  PRIMARY KEY (`campaign_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

/*Data for the table `telephony_campaign` */

/*Table structure for table `telephony_campaigncalls` */

DROP TABLE IF EXISTS `telephony_campaigncalls`;

CREATE TABLE `telephony_campaigncalls` (
  `call_id` int(11) NOT NULL AUTO_INCREMENT,
  `subscriber_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `campaign_id` int(11) DEFAULT NULL,
  `phone_number` varchar(250) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `json_data` varchar(250) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `datetime` varchar(100) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `call_status` int(11) DEFAULT 0,
  `call_resolution_time` int(11) DEFAULT 0,
  PRIMARY KEY (`call_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

/*Data for the table `telephony_campaigncalls` */

/*Table structure for table `telephony_campaignlist` */

DROP TABLE IF EXISTS `telephony_campaignlist`;

CREATE TABLE `telephony_campaignlist` (
  `subscriber_id` int(11) NOT NULL AUTO_INCREMENT,
  `subscriber_name` varchar(250) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `subscriber_phone` varchar(250) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `subscriber_email` varchar(250) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `subscriber_notes` varchar(45) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `subscriber_called` int(11) DEFAULT -1,
  `campaign_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`subscriber_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

/*Data for the table `telephony_campaignlist` */

/*Table structure for table `ticket_actions` */

DROP TABLE IF EXISTS `ticket_actions`;

CREATE TABLE `ticket_actions` (
  `action_id` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `action_description` text COLLATE utf32_slovenian_ci NOT NULL,
  `action_type` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`action_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf32 COLLATE=utf32_slovenian_ci;

/*Data for the table `ticket_actions` */

insert  into `ticket_actions`(`action_id`,`ticket_id`,`employee_id`,`action_description`,`action_type`,`created_on`) values 
(1,1,62,'Ticket created',0,'2018-10-08 10:41:56'),
(2,1,62,'Updated fields - Status changed to In progress',0,'2018-10-08 10:42:38'),
(3,2,62,'Ticket created',0,'2018-10-08 10:44:58'),
(4,2,62,'Updated fields - Status changed to In progress',0,'2018-10-08 10:45:22'),
(5,2,62,'Work order PODPORA SMD created',0,'2018-10-08 10:45:33'),
(6,2,62,'Removed workorder with number - WO-2018-1',0,'2018-10-08 10:45:48'),
(7,2,62,'Updated fields - Subject changed to PODPORA SMD1, Status changed to Pending',0,'2018-10-08 13:17:36'),
(8,2,62,'Updated fields - Status changed to Finished',0,'2018-10-08 13:17:47'),
(9,2,62,'Updated fields - Status changed to In progress',0,'2018-10-08 13:19:45'),
(10,2,62,'Updated fields - Assigned to Žiga1 Babnik1, Btrack1 Test1',0,'2018-10-08 13:20:20'),
(11,3,62,'Ticket created',0,'2018-10-08 13:45:06'),
(12,3,62,'Work order Uredi računalnik created',0,'2018-10-08 13:46:05'),
(13,2,62,'Work order PODPORA SMD1 created',0,'2018-10-08 13:48:00'),
(14,2,62,'Ticket marked as finished.',0,'2018-10-08 13:55:25'),
(15,3,62,'Ticket marked as finished.',0,'2018-10-08 13:58:00'),
(16,4,62,'Ticket created',0,'2018-10-08 14:01:47'),
(17,5,62,'Ticket created',0,'2018-10-08 14:06:55'),
(18,5,62,'Updated fields - Status changed to In progress',0,'2018-10-08 14:07:09'),
(19,2,65,'Updated fields - Status changed to In progress',0,'2018-10-08 14:50:41'),
(20,6,65,'Ticket created',0,'2018-10-08 14:52:23'),
(21,6,65,'Work order Grega created',0,'2018-10-08 14:53:00'),
(22,6,62,'Updated fields - Status changed to In progress',0,'2018-10-08 14:58:12'),
(23,6,62,'Ticket marked as finished.',0,'2018-10-08 14:58:39'),
(24,7,63,'Ticket created',0,'2018-10-08 15:04:48'),
(25,8,63,'Ticket created',0,'2018-10-08 15:05:32'),
(26,9,63,'Ticket created',0,'2018-10-08 15:09:10'),
(27,10,1,'Ticket created',0,'2018-10-08 15:56:28'),
(28,10,1,'Updated fields - Status changed to Finished',0,'2018-10-08 15:56:33'),
(29,10,1,'Updated fields - Status changed to In progress',0,'2018-10-08 15:56:46'),
(30,10,1,'Updated fields - Customer changed to ZAVOD INŠTITUT MAK, POSLOVNE STORITVE, Location changed to MARINOVŠEVA CESTA 3, 1000 LJUBLJANA',0,'2018-10-08 15:58:58'),
(31,10,1,'Updated fields - Subsidiary changed to Array, Location changed to Pod hribom, Ljubljana, Slovenia',0,'2018-10-08 15:59:56'),
(32,3,1,'Updated fields - Status changed to Finished',0,'2018-10-09 05:56:49'),
(33,11,62,'Ticket created',0,'2018-10-09 14:11:17'),
(34,11,62,'Updated fields - Assigned to Žiga1 Babnik1, Btrack1 Test1, Status changed to In progress',0,'2018-10-09 14:15:51');

/*Table structure for table `ticket_categories` */

DROP TABLE IF EXISTS `ticket_categories`;

CREATE TABLE `ticket_categories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` text COLLATE utf8_slovenian_ci NOT NULL,
  `category_description` text COLLATE utf8_slovenian_ci DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

/*Data for the table `ticket_categories` */

insert  into `ticket_categories`(`category_id`,`category_name`,`category_description`,`created_on`) values 
(1,'PODPORA','PODPORA','2018-10-08 10:41:28'),
(2,'SERVIS','servisne storitve','2018-10-08 15:08:08');

/*Table structure for table `tickets` */

DROP TABLE IF EXISTS `tickets`;

CREATE TABLE `tickets` (
  `ticket_id` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_code` text COLLATE utf32_slovenian_ci NOT NULL,
  `workorder_id` int(11) DEFAULT NULL,
  `call_id` int(11) DEFAULT NULL,
  `email_id` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `subsidiary_id` int(11) DEFAULT NULL,
  `employee_id` int(11) NOT NULL,
  `assigned_to` text COLLATE utf32_slovenian_ci NOT NULL,
  `ticket_subject` text COLLATE utf32_slovenian_ci NOT NULL,
  `ticket_date` text COLLATE utf32_slovenian_ci NOT NULL,
  `ticket_location` text COLLATE utf32_slovenian_ci NOT NULL,
  `latitude` text COLLATE utf32_slovenian_ci NOT NULL,
  `longitude` text COLLATE utf32_slovenian_ci NOT NULL,
  `ticket_type` int(11) NOT NULL,
  `ticket_priority` text COLLATE utf32_slovenian_ci NOT NULL,
  `billing_fromdate` text COLLATE utf32_slovenian_ci NOT NULL,
  `billing_fromtime` text COLLATE utf32_slovenian_ci NOT NULL,
  `billing_todate` text COLLATE utf32_slovenian_ci NOT NULL,
  `billing_totime` text COLLATE utf32_slovenian_ci NOT NULL,
  `billing_notes` text COLLATE utf32_slovenian_ci NOT NULL,
  `ticket_notes` text COLLATE utf32_slovenian_ci NOT NULL,
  `email_subject` text COLLATE utf32_slovenian_ci NOT NULL,
  `email_from` text COLLATE utf32_slovenian_ci NOT NULL,
  `email_body` text COLLATE utf32_slovenian_ci NOT NULL,
  `email_date` text COLLATE utf32_slovenian_ci NOT NULL,
  `ticket_status` int(11) NOT NULL DEFAULT 0,
  `ticket_files` text COLLATE utf32_slovenian_ci NOT NULL,
  `opened_on` text COLLATE utf32_slovenian_ci NOT NULL,
  `last_modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `finished_on` text COLLATE utf32_slovenian_ci NOT NULL,
  `created_on` text COLLATE utf32_slovenian_ci NOT NULL,
  `notification_sent` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ticket_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf32 COLLATE=utf32_slovenian_ci;

/*Data for the table `tickets` */

insert  into `tickets`(`ticket_id`,`ticket_code`,`workorder_id`,`call_id`,`email_id`,`customer_id`,`subsidiary_id`,`employee_id`,`assigned_to`,`ticket_subject`,`ticket_date`,`ticket_location`,`latitude`,`longitude`,`ticket_type`,`ticket_priority`,`billing_fromdate`,`billing_fromtime`,`billing_todate`,`billing_totime`,`billing_notes`,`ticket_notes`,`email_subject`,`email_from`,`email_body`,`email_date`,`ticket_status`,`ticket_files`,`opened_on`,`last_modified`,`finished_on`,`created_on`,`notification_sent`) values 
(1,'TKT-2018-M1',NULL,2,NULL,1,NULL,62,'62','TICKET120','2018-10-08','ROŽNA DOLINA, CESTA IV 22 , 1000 LJUBLJANA','46.0474705','14.484151900000029',1,'Normal','2018-10-08','10:40','2018-10-08','10:40','','','','','','',1,'obrazec za vračilo blaga.pdf;obrazec za vračilo blaga.pdf;obrazec za vračilo blaga.pdf;obrazec za vračilo blaga.pdf;obrazec za vračilo blaga.pdf','2018-10-08 10:41:59','2018-10-08 13:19:32','','2018-10-08 10:41:56',0),
(2,'TKT-2018-M2',3,3,NULL,1,NULL,62,'62,65','PODPORA SMD1','2018-10-08','ROŽNA DOLINA, CESTA IV 22 , 1000 LJUBLJANA','46.0474705','14.484151900000029',1,'Normal','2018-10-08','10:45','2018-10-08','10:45','','','','','','',1,'obrazec za vračilo blaga.pdf','2018-10-08 10:45:03','2018-10-08 14:50:41','2018-10-08 13:55:25','2018-10-08 10:44:58',0),
(3,'TKT-2018-M3',2,NULL,NULL,1,NULL,62,'62','Uredi računalnik','2018-10-08','ROŽNA DOLINA, CESTA IV 22 , 1000 LJUBLJANA','46.0474705','14.484151900000029',1,'Normal','2018-10-09','05:55','2018-10-09','05:55','','','','','','',2,'','2018-10-08 13:45:11','2018-10-09 05:56:49','2018-10-09 05:56:49','2018-10-08 13:45:06',0),
(4,'TKT-2018-M4',NULL,4,NULL,1,NULL,62,'62','123456789456','2018-10-08','ROŽNA DOLINA, CESTA IV 22 , 1000 LJUBLJANA','46.0474705','14.484151900000029',1,'Normal','','','','','','','','','','',0,'','2018-10-08 14:02:59','2018-10-08 14:02:59','','2018-10-08 14:01:47',0),
(5,'TKT-2018-1',NULL,NULL,1,1,NULL,62,'62','Subject #1','2018-10-08','ROŽNA DOLINA, CESTA IV 22 , 1000 LJUBLJANA','46.0474705','14.484151900000029',1,'Normal','2018-10-08','14:05','2018-10-08','14:05','','','TEST','it@goricki.si','\r\n-- \r\nŽiga Babnik\r\n	\r\n\r\n*Žiga Babnik\r\n*IT\r\n\r\n+386 51 206 449\r\nziga@netko.it\r\nNetko d.o.o., Primožičeva 1, 1000 Ljubljana, Slovenija\r\nwww.netko.it <http://www.goricki.si/>\r\n\r\n\r\nTo elektronsko sporočilo in vse morebitne priloge so poslovna skrivnost, \r\nz avtorsko zaščito in namenjene izključno naslovniku. Če ste sporočilo \r\nprejeli pomotoma, Vas prosimo, da obvestite pošiljatelja, sporočilo pa \r\ntakoj uničite.\r\nKakršnokoli razkritje, distribucija ali kopiranje vsebine sporočila je \r\n  prepovedano. Ni nujno, da to sporočilo odraža uradno stališče družbe.\r\n\r\n','2018-10-05 10:13:25',1,'obrazec za vračilo blaga.pdf','2018-10-08 14:06:57','2018-10-08 14:07:09','','2018-10-08 14:06:55',0),
(6,'TKT-2018-M6',4,NULL,NULL,2,NULL,65,'65','Grega','2018-10-08','Pod hribom 55, Ljubljana, Slovenia','46.066576','14.47787530000005',1,'Normal','','','','','','xdysv','','','','',2,'20170512_122907 (Large).jpg','2018-10-08 14:52:48','2018-10-08 14:58:39','2018-10-08 14:58:39','2018-10-08 14:52:23',0),
(7,'TKT-2018-M7',NULL,NULL,NULL,3,NULL,63,'67','web oblikovanje','2018-10-09','MARINOVŠEVA CESTA 3, 1000 LJUBLJANA','46.1152943','14.460030700000061',1,'Normal','','','','','','dfsfgosigoigodg','','','','',0,'dobrodošli v Trb 600x930.jpg','','2018-10-08 15:35:02','','2018-10-08 15:04:48',1),
(8,'TKT-2018-M8',NULL,NULL,NULL,2,NULL,63,'67','video bTrack','2018-10-10','Pod hribom 55, Ljubljana, Slovenia','46.066576','14.47787530000005',1,'High','','','','','','tets 3','','','','',0,'600x930_btn.png','2018-10-08 21:36:08','2018-10-08 21:36:08','','2018-10-08 15:05:32',1),
(9,'TKT-2018-M9',NULL,NULL,NULL,3,NULL,63,'63','prevodi','2018-10-08','MARINOVŠEVA CESTA 3, 1000 LJUBLJANA','46.1152943','14.460030700000061',2,'Normal','','','','','','','','','','',0,'','','2018-10-08 15:40:03','','2018-10-08 15:09:10',1),
(10,'TKT-2018-M10',NULL,NULL,NULL,3,1,1,'1','rrrrrrrrr','2018-10-09','Pod hribom, Ljubljana, Slovenia','46.0671957','14.481467100000032',1,'High','2018-10-22','15:55','2018-10-31','04:55','','','','','','',1,'','2018-10-08 15:56:31','2018-10-08 15:59:56','2018-10-08 15:56:33','2018-10-08 15:56:28',0),
(11,'TKT-2018-M11',NULL,5,NULL,1,NULL,62,'62,65','SMD Skripta','2018-10-09','ROŽNA DOLINA, CESTA IV 22 , 1000 LJUBLJANA','46.0474705','14.484151900000029',1,'Normal','2018-10-09','14:15','2018-10-09','14:15','','','','','','',1,'20170512_122907 (Large).jpg','2018-10-09 14:15:37','2018-10-09 14:15:51','','2018-10-09 14:11:17',0);

/*Table structure for table `todolist` */

DROP TABLE IF EXISTS `todolist`;

CREATE TABLE `todolist` (
  `todo_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `title` text COLLATE utf8_slovenian_ci NOT NULL,
  `description` text COLLATE utf8_slovenian_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`todo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

/*Data for the table `todolist` */

insert  into `todolist`(`todo_id`,`employee_id`,`title`,`description`,`status`,`created_on`) values 
(5,63,'NAVODILA CRM','ppt navodila, osnutek.\r\nGrega dopolni telefonijo in support',1,'2018-10-03 14:14:08'),
(6,63,'PREVOD slo WEB','update vsebine strani',0,'2018-10-03 14:15:09'),
(7,63,'NAVODILA CRM','dokončati navodila ppt / zadnje slike in funkcije+opis\r\nGregor Telephony + Ticketing\r\nprevod v slovenščino',0,'2018-10-05 09:22:57'),
(8,63,'WEB bTrack','dokončati angleško verzijo\r\ndodati nove funkcionalnosti + ikone\r\nprevod v slovenski jezik\r\ndodati pakete',0,'2018-10-05 09:23:39'),
(9,63,'PAKETI IN CENIK bTrack','oblikovati cenik na WEBU + billing',0,'2018-10-05 09:24:04'),
(10,63,'NAVODILA CRM','dodaj sefure file transfer',0,'2018-10-05 13:11:18'),
(11,1,'aaa','bbbb',0,'2018-10-05 13:16:19'),
(12,63,'SPLETNO MESTO','dopolniti slo verzijo+ angelško verzijo',0,'2018-10-08 15:01:47'),
(13,63,'video bTRACK','objavi na youttube\r\n',0,'2018-10-08 15:02:15');

/*Table structure for table `tracking_distance` */

DROP TABLE IF EXISTS `tracking_distance`;

CREATE TABLE `tracking_distance` (
  `entry_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `elapsed_distance` text COLLATE utf32_slovenian_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`entry_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf32 COLLATE=utf32_slovenian_ci;

/*Data for the table `tracking_distance` */

insert  into `tracking_distance`(`entry_id`,`employee_id`,`elapsed_distance`,`date`) values 
(1,1,'35146','2018-09-26 23:55:02');

/*Table structure for table `trackinglogs` */

DROP TABLE IF EXISTS `trackinglogs`;

CREATE TABLE `trackinglogs` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `nfc_tag` text NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `departure_date` text NOT NULL,
  `manual_checkin` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `trackinglogs` */

insert  into `trackinglogs`(`log_id`,`employee_id`,`location_id`,`nfc_tag`,`created_on`,`departure_date`,`manual_checkin`) values 
(1,1,1,'','2018-09-24 16:06:26','2018-09-24 16:06',1),
(2,1,2,'','2018-09-24 16:35:52','2018-09-24 16:37',1),
(3,1,3,'','2018-09-24 16:43:51','2018-09-24 16:43',1),
(4,1,4,'','2018-09-25 08:02:17','2018-10-09 06:57',1),
(5,1,8,'','2018-10-09 06:57:25','2018-10-09 06:58',1);

/*Table structure for table `travelorders` */

DROP TABLE IF EXISTS `travelorders`;

CREATE TABLE `travelorders` (
  `travelorder_id` int(11) NOT NULL AUTO_INCREMENT,
  `travelorder_number` mediumtext COLLATE utf32_slovenian_ci NOT NULL,
  `employee_id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `trip_id` int(11) DEFAULT NULL,
  `elapsed_distance` mediumtext COLLATE utf32_slovenian_ci NOT NULL,
  `elapsed_time` mediumtext COLLATE utf32_slovenian_ci NOT NULL,
  `events` mediumtext COLLATE utf32_slovenian_ci NOT NULL,
  `cost` decimal(10,2) NOT NULL,
  `food_cost` decimal(10,2) NOT NULL DEFAULT 0.00,
  `additional_fees` decimal(10,2) NOT NULL DEFAULT 0.00,
  `additional_description` mediumtext COLLATE utf32_slovenian_ci NOT NULL,
  `files` mediumtext COLLATE utf32_slovenian_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `reservation_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`travelorder_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf32 COLLATE=utf32_slovenian_ci;

/*Data for the table `travelorders` */

insert  into `travelorders`(`travelorder_id`,`travelorder_number`,`employee_id`,`vehicle_id`,`trip_id`,`elapsed_distance`,`elapsed_time`,`events`,`cost`,`food_cost`,`additional_fees`,`additional_description`,`files`,`status`,`created_on`,`reservation_id`) values 
(1,'Order-2017-1',1,1,1,'0','0','',0.20,0.00,0.00,'','',1,'2018-09-27 14:00:52',1),
(2,'Order-2017-2',1,1,2,'0','0','',0.20,0.00,0.00,'','',1,'2018-09-27 14:02:13',2),
(3,'Order-2017-3',64,1,3,'','','',0.00,0.00,0.00,'','',0,'2018-10-03 12:32:20',3),
(4,'Order-2017-4',67,3,4,'','','',0.00,0.00,0.00,'','',0,'2018-10-05 13:56:21',4),
(5,'Order-2017-1',62,1,5,'0','0','',0.20,0.00,0.00,'','',1,'2018-10-08 15:18:52',5),
(6,'Order-2017-6',60,3,6,'0','0','',0.20,0.00,0.00,'','',1,'2018-10-08 15:20:19',6);

/*Table structure for table `triporders` */

DROP TABLE IF EXISTS `triporders`;

CREATE TABLE `triporders` (
  `trip_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `reservation_id` int(11) NOT NULL,
  `travelorder_id` int(11) NOT NULL,
  `trip_description` text NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`trip_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `triporders` */

insert  into `triporders`(`trip_id`,`employee_id`,`vehicle_id`,`reservation_id`,`travelorder_id`,`trip_description`,`created_on`) values 
(1,1,1,1,1,'aaa','2018-09-27 14:00:52'),
(2,1,1,2,2,'bbbb','2018-09-27 14:02:13'),
(3,64,1,3,3,'sestanek','2018-10-03 12:32:20'),
(4,67,3,4,4,'POSLOVNA POT','2018-10-05 13:56:21'),
(5,62,1,5,5,'PUROPS','2018-10-08 15:18:52'),
(6,60,3,6,6,'rez','2018-10-08 15:20:19');

/*Table structure for table `uploads` */

DROP TABLE IF EXISTS `uploads`;

CREATE TABLE `uploads` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  `wgtask_id` int(11) DEFAULT NULL,
  `datetime` text COLLATE utf8_slovenian_ci NOT NULL,
  `filename` text COLLATE utf8_slovenian_ci NOT NULL,
  `filepath` text COLLATE utf8_slovenian_ci NOT NULL,
  `ticket_id` int(11) DEFAULT NULL,
  `workorder_id` int(11) DEFAULT NULL,
  `upload_source` int(11) DEFAULT 0,
  PRIMARY KEY (`upload_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

/*Data for the table `uploads` */

insert  into `uploads`(`upload_id`,`employee_id`,`customer_id`,`event_id`,`wgtask_id`,`datetime`,`filename`,`filepath`,`ticket_id`,`workorder_id`,`upload_source`) values 
(1,62,1,NULL,NULL,'2018-10-08 10:41:56','obrazec za vračilo blaga.pdf','Uploads/OtherFiles/obrazec za vračilo blaga.pdf',1,NULL,0),
(2,62,1,NULL,NULL,'2018-10-08 10:44:58','obrazec za vračilo blaga.pdf','Uploads/OtherFiles/obrazec za vračilo blaga.pdf',2,3,0),
(3,62,1,NULL,NULL,'2018-10-08 13:19:32','obrazec za vračilo blaga.pdf','Uploads/OtherFiles/obrazec za vračilo blaga.pdf',1,NULL,0),
(4,62,1,NULL,NULL,'2018-10-08 13:19:32','obrazec za vračilo blaga.pdf','Uploads/OtherFiles/obrazec za vračilo blaga.pdf',1,NULL,0),
(5,62,1,NULL,NULL,'2018-10-08 13:19:32','obrazec za vračilo blaga.pdf','Uploads/OtherFiles/obrazec za vračilo blaga.pdf',1,NULL,0),
(6,62,1,NULL,NULL,'2018-10-08 13:19:32','obrazec za vračilo blaga.pdf','Uploads/OtherFiles/obrazec za vračilo blaga.pdf',1,NULL,0),
(7,62,1,NULL,NULL,'2018-10-08 14:07:09','obrazec za vračilo blaga.pdf','Uploads/OtherFiles/obrazec za vračilo blaga.pdf',5,NULL,0),
(8,1,NULL,NULL,NULL,'2018-10-08 14:20:18','moji zapiski AMIS nastavitve-1361277610.doc','Workgroups/Workgroup6/projekt 1/fkfkfk/moji zapiski AMIS nastavitve-1361277610.doc',NULL,NULL,0),
(9,1,NULL,NULL,NULL,'2018-10-08 14:20:29','moji zapiski AMIS nastavitve-1361277610.doc','Workgroups/Workgroup6/projekt 1/moji zapiski AMIS nastavitve-1361277610.doc',NULL,NULL,0),
(10,65,2,NULL,NULL,'2018-10-08 14:52:23','20170512_122907 (Large).jpg','Uploads/OtherFiles/20170512_122907 (Large).jpg',6,4,0),
(11,65,2,NULL,NULL,'2018-10-08 14:53:47','airport-architecture-blur-442600-1024x683.jpg','Uploads/OtherFiles/airport-architecture-blur-442600-1024x683.jpg',NULL,4,0),
(12,63,3,NULL,NULL,'2018-10-08 15:04:48','dobrodošli v Trb 600x930.jpg','Uploads/OtherFiles/dobrodošli v Trb 600x930.jpg',7,NULL,0),
(13,63,2,NULL,NULL,'2018-10-08 15:05:32','600x930_btn.png','Uploads/OtherFiles/600x930_btn.png',8,NULL,0),
(14,62,4,1,NULL,'2018-10-08 15:58:53','obrazec za vračilo blaga.pdf','Uploads/EventFiles/obrazec za vračilo blaga.pdf',NULL,NULL,0),
(15,65,1,2,NULL,'2018-10-08 16:00:38','slide_1.jpg','Uploads/EventFiles/slide_1.jpg',NULL,NULL,0),
(16,1,1,NULL,NULL,'2018-10-08 21:20:42','Capture.PNG','Uploads/OtherFiles/Capture.PNG',NULL,5,0),
(17,62,2,NULL,2,'2018-10-09 09:56:15','obrazec za vračilo blaga.pdf','Workgroups/Workgroup//obrazec za vračilo blaga.pdf',NULL,NULL,0),
(18,62,2,NULL,3,'2018-10-09 09:56:39','obrazec za vračilo blaga.pdf','Workgroups/Workgroup/8/obrazec za vračilo blaga.pdf',NULL,NULL,0),
(19,62,2,NULL,4,'2018-10-09 09:56:40','obrazec za vračilo blaga.pdf','Workgroups/Workgroup/8/obrazec za vračilo blaga.pdf',NULL,NULL,0),
(20,65,3,NULL,6,'2018-10-09 12:07:52','Package_156169-1024x683.jpg','Workgroups/Workgroup//Package_156169-1024x683.jpg',NULL,NULL,0),
(21,65,NULL,NULL,NULL,'2018-10-09 12:09:55','pozarnovarovanje.png','Workgroups/Workgroup8/pozarnovarovanje.png',NULL,NULL,0),
(22,62,NULL,NULL,NULL,'2018-10-09 12:20:02','20170512_122907 (Large).jpg','Uploads/EmployeeFiles/Employee62/20170512_122907 (Large).jpg',NULL,NULL,0),
(23,62,1,NULL,NULL,'2018-10-09 14:11:17','20170512_122907 (Large).jpg','Uploads/OtherFiles/20170512_122907 (Large).jpg',11,NULL,0);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` text COLLATE utf8_slovenian_ci NOT NULL,
  `password` text COLLATE utf8_slovenian_ci NOT NULL,
  `language` text COLLATE utf8_slovenian_ci NOT NULL,
  `dateformat` text COLLATE utf8_slovenian_ci NOT NULL,
  `timeformat` text COLLATE utf8_slovenian_ci NOT NULL,
  `workfrom` text COLLATE utf8_slovenian_ci NOT NULL,
  `workto` text COLLATE utf8_slovenian_ci NOT NULL,
  `type` int(11) NOT NULL DEFAULT 0,
  `2fa_status` int(11) NOT NULL DEFAULT 0,
  `google_auth_code` text COLLATE utf8_slovenian_ci NOT NULL,
  `show_wizard` int(11) NOT NULL DEFAULT 1,
  `extension` int(11) NOT NULL,
  `queue` varchar(200) COLLATE utf8_slovenian_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

/*Data for the table `users` */

insert  into `users`(`user_id`,`username`,`password`,`language`,`dateformat`,`timeformat`,`workfrom`,`workto`,`type`,`2fa_status`,`google_auth_code`,`show_wizard`,`extension`,`queue`) values 
(1,'it@netko.it','$2y$10$fnkhlvIqmSKUzmGNhnWxaOjajWCDIUuPJvEagy8O/v5ge2P39z1GC','en','dd.mm.yyyy','24','08:00','16:30',1,0,'',0,101,'queue-6700'),
(60,'it@goricki.si','$2y$10$1BSs4a1X/ndl7T8xpPi8/OXm2TjGoGuApO7ZWfuuam8rN04BhXcHS','en','DD.MM.YYYY','HH:mm','08:00','16:30',0,0,'',0,0,NULL),
(62,'ziga@netko.it','$2y$10$x1H.X8f.AnBTq6MhUD4pQ.QynN4xKX4xFGEhTMMBe9AInn70pdraW','en','DD.MM.YYYY','HH:mm','08:00','16:30',1,0,'',0,100,'queue-6700'),
(63,'jasmina.zivanovic@wifi-hotspot.si','$2y$10$DS6/k5/NMZ4o8jKceEugz.sGejfmvUyyOB.3XTrV/esIJP7YVUhcC','en','DD.MM.YYYY','HH:mm','08:00','16:30',1,0,'6JJL2C73ZBOGFVNQ',0,0,NULL),
(64,'miha.hocevar@btrack.io','$2y$10$EnsgjysXmYkp0WDjAw4CJOAk4xKVz9aivR/DDbqlUa2ItC4stu8kC','en','DD.MM.YYYY','HH:mm','08:00','16:30',1,0,'',0,0,NULL),
(65,'btrackio2018@gmail.com','$2y$10$.0v5sI8mt.t2sTjJY62Ajed7jh4CLmxiYhkU3b17e8Gw3ossqHLue','en','DD.MM.YYYY','HH:mm','08:00','16:30',0,0,'',0,0,NULL),
(67,'kosarica.idej@gmail.com','$2y$10$b7AgA0Rb.Ta5o9/fXm1HxepA6t.TXe0u9m9wJ6yQmTNExkNLhdm6a','en','DD.MM.YYYY','HH:mm','08:00','16:30',0,0,'',0,0,NULL),
(68,'neicrihar@gmail.com','$2y$10$zr1XbvquhYa3fAwDx7eJ/u4EZWnmHe7FEuqljoWQPHd28oj7yy2m6','en','DD.MM.YYYY','HH:mm','08:00','16:30',0,0,'',0,0,NULL),
(69,'voipme2006@gmail.com','$2y$10$xok7Lt7J5T5l1lH7wWZ9IOrgyC9AFZ7txifx40Dr./nyTDMeIbcuO','en','DD.MM.YYYY','HH:mm','08:00','16:30',0,0,'',0,0,NULL),
(70,'grega.goricki@gmail.com','$2y$10$JCkYBbeuWaYmE1jROMON6.bqFXaxoqU/2Y2qc0Q4sXKYTPvb6JcDq','en','DD.MM.YYYY','HH:mm','08:00','16:30',0,0,'',0,0,NULL);

/*Table structure for table `vehicle_reservations` */

DROP TABLE IF EXISTS `vehicle_reservations`;

CREATE TABLE `vehicle_reservations` (
  `reservation_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `date_from` text NOT NULL,
  `date_to` text NOT NULL,
  `time_from` text NOT NULL,
  `time_to` text NOT NULL,
  `reservation_status` int(11) NOT NULL,
  PRIMARY KEY (`reservation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `vehicle_reservations` */

insert  into `vehicle_reservations`(`reservation_id`,`employee_id`,`vehicle_id`,`date_from`,`date_to`,`time_from`,`time_to`,`reservation_status`) values 
(5,62,1,'2018-10-08','2018-10-18','15:18','16:18',1),
(6,60,3,'2018-10-08','2018-10-31','15:20','20:20',1);

/*Table structure for table `wgtasks` */

DROP TABLE IF EXISTS `wgtasks`;

CREATE TABLE `wgtasks` (
  `task_id` int(11) NOT NULL AUTO_INCREMENT,
  `workgroup_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `subsidiary_id` int(11) DEFAULT NULL,
  `participants` text COLLATE utf32_slovenian_ci NOT NULL,
  `task_subject` text COLLATE utf32_slovenian_ci NOT NULL,
  `task_description` text COLLATE utf32_slovenian_ci NOT NULL,
  `task_startdate` text COLLATE utf32_slovenian_ci NOT NULL,
  `task_starttime` text COLLATE utf32_slovenian_ci NOT NULL,
  `task_enddate` text COLLATE utf32_slovenian_ci NOT NULL,
  `task_endtime` text COLLATE utf32_slovenian_ci NOT NULL,
  `task_location` text COLLATE utf32_slovenian_ci NOT NULL,
  `latitude` text COLLATE utf32_slovenian_ci NOT NULL,
  `longitude` text COLLATE utf32_slovenian_ci NOT NULL,
  `priority` text COLLATE utf32_slovenian_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `opened_on` text COLLATE utf32_slovenian_ci NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `finished_on` text COLLATE utf32_slovenian_ci NOT NULL,
  `task_files` text COLLATE utf32_slovenian_ci NOT NULL,
  `task_remindme` int(11) NOT NULL DEFAULT 1,
  `task_visibility` int(11) NOT NULL DEFAULT 1,
  `calendar_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`task_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf32 COLLATE=utf32_slovenian_ci;

/*Data for the table `wgtasks` */

insert  into `wgtasks`(`task_id`,`workgroup_id`,`employee_id`,`customer_id`,`subsidiary_id`,`participants`,`task_subject`,`task_description`,`task_startdate`,`task_starttime`,`task_enddate`,`task_endtime`,`task_location`,`latitude`,`longitude`,`priority`,`status`,`opened_on`,`created_on`,`finished_on`,`task_files`,`task_remindme`,`task_visibility`,`calendar_id`) values 
(1,8,62,1,NULL,'62,65','TICKET','','2018-10-09','09:46','2018-10-09','10:46','ROŽNA DOLINA, CESTA IV 22 , 1000 LJUBLJANA','46.0474705','14.484151900000029','Normal',0,'2018-10-09 12:03:52','2018-10-09 09:47:21','2018-10-09 12:06:00','',1,0,0),
(5,6,1,2,NULL,'1','task','klkćklć','2018-10-01','10:15','2018-10-09','11:15','Pod hribom 55, Ljubljana, Slovenia','46.066576','14.47787530000005','Normal',2,'2018-10-09 10:15:45','2018-10-09 10:15:29','2018-10-09 10:15:35','',1,1,0),
(6,8,65,1,NULL,'62,65','TICKER REGULAR PRIVATE  100','123456','2018-10-09','12:06','2018-10-09','13:06','ROŽNA DOLINA, CESTA IV 22 , 1000 LJUBLJANA','46.0474705','14.484151900000029','High',1,'2018-10-09 12:07:10','2018-10-09 12:06:44','','Package_156169-1024x683.jpg;;;',1,0,0),
(7,9,62,4,NULL,'62','dtgg','','2018-10-08','12:36','2018-10-10','10:35','Pod hribom 55, Ljubljana, Slovenia','46.066576','14.47787530000005','Normal',0,'2018-10-09 12:36:25','2018-10-09 12:36:20','2018-10-09 12:37:40','',1,1,0);

/*Table structure for table `wgtasks_actions` */

DROP TABLE IF EXISTS `wgtasks_actions`;

CREATE TABLE `wgtasks_actions` (
  `action_id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `description` text COLLATE utf32_slovenian_ci NOT NULL,
  `type` int(11) NOT NULL DEFAULT 0,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`action_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf32 COLLATE=utf32_slovenian_ci;

/*Data for the table `wgtasks_actions` */

insert  into `wgtasks_actions`(`action_id`,`task_id`,`employee_id`,`description`,`type`,`created_on`) values 
(1,1,62,'Task created',0,'2018-10-09 09:47:21'),
(2,2,62,'Task created',0,'2018-10-09 09:50:55'),
(3,2,62,'Task opened',0,'2018-10-09 09:52:46'),
(4,2,62,'Uploaded task files - obrazec za vračilo blaga.pdf',0,'2018-10-09 09:56:15'),
(5,3,62,'Task created',0,'2018-10-09 09:56:39'),
(6,3,62,'Uploaded task files - obrazec za vračilo blaga.pdf',0,'2018-10-09 09:56:39'),
(7,4,62,'Task created',0,'2018-10-09 09:56:40'),
(8,4,62,'Uploaded task files - obrazec za vračilo blaga.pdf',0,'2018-10-09 09:56:40'),
(9,3,62,'Task opened',0,'2018-10-09 09:57:28'),
(10,4,62,'Task deleted',0,'2018-10-09 09:59:51'),
(11,3,62,'Task deleted',0,'2018-10-09 09:59:55'),
(12,2,62,'Task deleted',0,'2018-10-09 09:59:58'),
(13,5,1,'Task created',0,'2018-10-09 10:15:29'),
(14,5,1,'Task status updated to FINISHED',0,'2018-10-09 10:15:35'),
(15,5,1,'Task opened',0,'2018-10-09 10:15:45'),
(16,1,65,'Task status updated to IN PROGRESS',0,'2018-10-09 12:03:38'),
(17,1,65,'Task status updated to FINISHED',0,'2018-10-09 12:03:43'),
(18,1,62,'Task opened',0,'2018-10-09 12:03:52'),
(19,1,62,'Updated fields - Participants changed to Žiga1 Babnik1, Btrack1 Test1, Status changed to Incomplete',0,'2018-10-09 12:04:07'),
(20,1,65,'Task status updated to IN PROGRESS',0,'2018-10-09 12:04:31'),
(21,1,65,'Task status updated to FINISHED',0,'2018-10-09 12:06:00'),
(22,1,62,'Updated fields - Status changed to Incomplete',0,'2018-10-09 12:06:10'),
(23,6,65,'Task created',0,'2018-10-09 12:06:44'),
(24,6,65,'Task opened',0,'2018-10-09 12:07:10'),
(25,6,65,'Updated fields - Subject changed to TICKER REGULAR PRIVATE1',0,'2018-10-09 12:07:13'),
(26,6,65,'Updated fields - Participants changed to Žiga1 Babnik1, Btrack1 Test1, Description changed to 123456',0,'2018-10-09 12:07:27'),
(27,6,65,'Uploaded task files - Package_156169-1024x683.jpg',0,'2018-10-09 12:07:52'),
(28,6,65,'Updated fields - Status changed to In progress',0,'2018-10-09 12:08:43'),
(29,6,65,'Updated fields - Location changed to Pod hribom 55, Ljubljana, Slovenia',0,'2018-10-09 12:08:55'),
(30,6,65,'Updated fields - Subject changed to TICKER REGULAR PRIVATE  100, Location changed to ROŽNA DOLINA, CESTA IV 22 , 1000 LJUBLJANA, Status changed to Incomplete',0,'2018-10-09 12:09:23'),
(31,6,65,'Task status updated to IN PROGRESS',0,'2018-10-09 12:10:59'),
(32,7,62,'Task created',0,'2018-10-09 12:36:20'),
(33,7,62,'Task opened',0,'2018-10-09 12:36:25'),
(34,7,62,'Updated fields - Start date changed to 2018-10-08, End date changed to 2018-10-08',0,'2018-10-09 12:36:31'),
(35,7,62,'Updated fields - End time changed to 16:35',0,'2018-10-09 12:36:39'),
(36,7,62,'Updated fields - End date changed to 2018-10-10, End time changed to 10:35',0,'2018-10-09 12:36:59'),
(37,7,62,'Updated fields - Participants changed to Žiga1 Babnik1, Btrack1 Test1',0,'2018-10-09 12:37:37'),
(38,7,62,'Task status updated to FINISHED',0,'2018-10-09 12:37:40'),
(39,7,62,'Updated fields - Status changed to Incomplete',0,'2018-10-09 12:37:51'),
(40,7,62,'Updated fields - Participants changed to Žiga1 Babnik1',0,'2018-10-09 13:40:39');

/*Table structure for table `workgroup_activity` */

DROP TABLE IF EXISTS `workgroup_activity`;

CREATE TABLE `workgroup_activity` (
  `activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `workgroup_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `description` text COLLATE utf8_slovenian_ci NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

/*Data for the table `workgroup_activity` */

insert  into `workgroup_activity`(`activity_id`,`workgroup_id`,`employee_id`,`description`,`created_on`) values 
(1,2,60,'Edited workgroup settings','2018-09-25 14:08:17'),
(2,2,1,'Sent a request to join the workgroup.','2018-09-25 14:08:24'),
(3,2,1,'Sent a request to join the workgroup.','2018-09-25 14:08:55'),
(4,2,61,'Sent a request to join the workgroup.','2018-09-25 14:13:12'),
(5,1,1,'Sent workgroup invitations to Nejc Rihar','2018-09-25 14:14:44'),
(6,1,1,'Sent workgroup invitations to Žiga Babnik','2018-09-25 14:14:50'),
(7,2,1,'Sent a request to join the workgroup.','2018-09-25 14:31:52'),
(8,2,1,'Accepted invitation to workgroup.','2018-09-25 14:32:02'),
(9,2,60,'Edited workgroup settings','2018-09-25 14:32:57'),
(10,2,60,'Deactivated workgroup.','2018-09-25 14:33:54'),
(11,2,60,'Reactivated workgroup.','2018-09-25 14:37:09'),
(12,1,1,'Added a message to the workgroup chat.','2018-09-26 13:56:04'),
(13,4,1,'Created a task with the subject testni task','2018-09-27 19:56:10'),
(14,4,1,'Updated the status of a task with the subject  to IN PROGRESS','2018-09-27 19:56:44'),
(15,4,1,'Updated the status of a task with the subject  to INCOMPLETE','2018-09-27 19:56:54'),
(16,4,1,'Updated the status of a task with the subject  to IN PROGRESS','2018-09-27 19:56:56'),
(17,4,1,'Edited workgroup settings','2018-09-27 19:58:59'),
(18,1,1,'Added a message to the workgroup chat.','2018-10-02 09:38:58'),
(19,5,64,'Added a message to the workgroup chat.','2018-10-03 14:41:06'),
(20,5,64,'Added a message to the workgroup chat.','2018-10-03 14:41:21'),
(21,5,64,'Added a message to the workgroup chat.','2018-10-03 14:41:22'),
(22,5,64,'Added a message to the workgroup chat.','2018-10-03 14:41:22'),
(23,5,64,'Added a message to the workgroup chat.','2018-10-03 14:41:24'),
(24,5,64,'Created a task with the subject USP d.o.o.','2018-10-03 14:42:41'),
(25,5,64,'Added a message to the workgroup chat.','2018-10-05 09:08:55'),
(26,5,64,'Added a message to the workgroup chat.','2018-10-05 09:09:04'),
(27,6,62,'Left the workgroup.','2018-10-05 12:10:37'),
(28,5,63,'Left the workgroup.','2018-10-07 21:57:14'),
(29,7,63,'Added a message to the workgroup chat.','2018-10-07 21:58:29'),
(30,7,63,'Created a task with the subject rojstni dan','2018-10-07 21:59:25'),
(31,7,63,'Uploaded the following following files to a task with the subject rojstni dan - smart-city-initiatives-696x421.png','2018-10-07 21:59:25'),
(32,7,63,'Edited a task with the subject rojstni dan','2018-10-07 21:59:36'),
(33,2,1,'Created a task with the subject Pojdi v trgovino','2018-10-08 08:34:34'),
(34,6,1,'Created a task with the subject A subject 2','2018-10-08 09:00:09'),
(35,6,1,'Updated the status of a task with the subject  to FINISHED','2018-10-08 09:00:15'),
(36,8,62,'Left the workgroup.','2018-10-09 09:45:41'),
(37,8,65,'Sent workgroup invitations to Žiga1 Babnik1','2018-10-09 09:46:03'),
(38,8,65,'Sent workgroup invitations to Žiga1 Babnik1','2018-10-09 09:46:35'),
(39,8,62,'Accepted invitation to workgroup.','2018-10-09 09:46:45'),
(40,8,62,'Created a task with the subject TICKET','2018-10-09 09:47:21'),
(41,8,62,'Created a task with the subject PRIVAT SAMO JAZ','2018-10-09 09:50:55'),
(42,8,62,'Uploaded the following following files to a task with the subject PRIVAT SAMO JAZ - obrazec za vračilo blaga.pdf','2018-10-09 09:56:15'),
(43,8,62,'Created a task with the subject PRIVATE','2018-10-09 09:56:39'),
(44,8,62,'Uploaded the following following files to a task with the subject PRIVATE - obrazec za vračilo blaga.pdf','2018-10-09 09:56:39'),
(45,8,62,'Created a task with the subject PRIVATE','2018-10-09 09:56:40'),
(46,8,62,'Uploaded the following following files to a task with the subject PRIVATE - obrazec za vračilo blaga.pdf','2018-10-09 09:56:40'),
(47,8,62,'Deleted a task with the subject PRIVATE','2018-10-09 09:59:51'),
(48,8,62,'Deleted a task with the subject PRIVATE','2018-10-09 09:59:55'),
(49,8,62,'Deleted a task with the subject PRIVAT SAMO JAZ','2018-10-09 09:59:58'),
(50,6,1,'Created a task with the subject task','2018-10-09 10:15:29'),
(51,6,1,'Updated the status of a task with the subject  to FINISHED','2018-10-09 10:15:35'),
(52,8,65,'Updated the status of a task with the subject  to IN PROGRESS','2018-10-09 12:03:38'),
(53,8,65,'Updated the status of a task with the subject  to FINISHED','2018-10-09 12:03:43'),
(54,8,62,'Edited a task with the subject TICKET','2018-10-09 12:04:07'),
(55,8,65,'Updated the status of a task with the subject  to IN PROGRESS','2018-10-09 12:04:31'),
(56,8,65,'Updated the status of a task with the subject  to FINISHED','2018-10-09 12:06:00'),
(57,8,62,'Edited a task with the subject TICKET','2018-10-09 12:06:10'),
(58,8,65,'Created a task with the subject TICKER REGULAR PRIVATE','2018-10-09 12:06:44'),
(59,8,65,'Edited a task with the subject TICKER REGULAR PRIVATE1','2018-10-09 12:07:13'),
(60,8,65,'Edited a task with the subject TICKER REGULAR PRIVATE1','2018-10-09 12:07:27'),
(61,8,65,'Uploaded the following following files to a task with the subject TICKER REGULAR PRIVATE1 - Package_156169-1024x683.jpg','2018-10-09 12:07:52'),
(62,8,65,'Edited a task with the subject TICKER REGULAR PRIVATE1','2018-10-09 12:08:43'),
(63,8,65,'Edited a task with the subject TICKER REGULAR PRIVATE1','2018-10-09 12:08:55'),
(64,8,65,'Edited a task with the subject TICKER REGULAR PRIVATE  100','2018-10-09 12:09:23'),
(65,8,65,'Updated the status of a task with the subject  to IN PROGRESS','2018-10-09 12:10:59'),
(66,8,62,'Left the workgroup.','2018-10-09 12:12:30'),
(67,8,65,'Edited workgroup settings','2018-10-09 12:15:26'),
(68,8,62,'Sent a request to join the workgroup.','2018-10-09 12:15:52'),
(69,9,65,'Added a message to the workgroup chat.','2018-10-09 12:17:51'),
(70,9,62,'Added a message to the workgroup chat.','2018-10-09 12:17:58'),
(71,9,62,'Added a message to the workgroup chat.','2018-10-09 12:18:08'),
(72,9,65,'Added a message to the workgroup chat.','2018-10-09 12:18:11'),
(73,9,62,'Created a task with the subject dtgg','2018-10-09 12:36:20'),
(74,9,62,'Edited a task with the subject dtgg','2018-10-09 12:36:31'),
(75,9,62,'Edited a task with the subject dtgg','2018-10-09 12:36:39'),
(76,9,62,'Edited a task with the subject dtgg','2018-10-09 12:36:59'),
(77,9,62,'Edited a task with the subject dtgg','2018-10-09 12:37:37'),
(78,9,62,'Updated the status of a task with the subject  to FINISHED','2018-10-09 12:37:40'),
(79,9,62,'Edited a task with the subject dtgg','2018-10-09 12:37:51'),
(80,9,62,'Edited a task with the subject dtgg','2018-10-09 13:40:39');

/*Table structure for table `workgroup_calendars` */

DROP TABLE IF EXISTS `workgroup_calendars`;

CREATE TABLE `workgroup_calendars` (
  `calendar_id` int(11) NOT NULL AUTO_INCREMENT,
  `workgroup_id` int(11) NOT NULL,
  `calendar_name` varchar(250) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `created_on` varchar(200) COLLATE utf8_slovenian_ci DEFAULT NULL,
  PRIMARY KEY (`calendar_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

/*Data for the table `workgroup_calendars` */

insert  into `workgroup_calendars`(`calendar_id`,`workgroup_id`,`calendar_name`,`created_on`) values 
(1,7,'ROJSTNNI DNEVI',NULL);

/*Table structure for table `workgroup_invitations` */

DROP TABLE IF EXISTS `workgroup_invitations`;

CREATE TABLE `workgroup_invitations` (
  `invitation_id` int(11) NOT NULL AUTO_INCREMENT,
  `workgroup_id` int(11) DEFAULT NULL,
  `invitation_token` varchar(45) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT 0,
  `created_on` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`invitation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

/*Data for the table `workgroup_invitations` */

insert  into `workgroup_invitations`(`invitation_id`,`workgroup_id`,`invitation_token`,`employee_id`,`active`,`created_on`) values 
(1,2,'squZLYWO3TbLJR7f',1,0,NULL),
(2,2,'0eXjbbclFi6sWWsr',1,0,NULL),
(3,2,'HXntImN0EvU1BSNP',61,0,NULL),
(4,1,'rkNcqDWnyg0ZUiLP',61,0,NULL),
(5,1,'YNcuhJZHoRRQtHDP',60,0,NULL),
(6,2,'PWZdLbE3Zm0B5LOK',1,0,NULL),
(7,8,'onjzd6vZN3rsXRpR',62,0,NULL),
(8,8,'TtDQsEJ0AJ8eDPP4',62,0,NULL),
(9,8,'CahqoQBRgLluE35s',62,0,NULL);

/*Table structure for table `workgroups` */

DROP TABLE IF EXISTS `workgroups`;

CREATE TABLE `workgroups` (
  `workgroup_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `moderators` text CHARACTER SET utf32 COLLATE utf32_slovenian_ci NOT NULL,
  `users` text CHARACTER SET utf32 COLLATE utf32_slovenian_ci NOT NULL,
  `name` text CHARACTER SET utf32 COLLATE utf32_slovenian_ci NOT NULL,
  `description` text CHARACTER SET utf32 COLLATE utf32_slovenian_ci NOT NULL,
  `created_on` text CHARACTER SET utf32 COLLATE utf32_slovenian_ci NOT NULL,
  `mailchimp_key` text CHARACTER SET utf32 COLLATE utf32_slovenian_ci NOT NULL,
  `type` int(11) NOT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `workgroup_taskpermissions` int(11) NOT NULL DEFAULT 0,
  `workgroup_viewpermissions` int(11) NOT NULL DEFAULT 1,
  `workgroup_remindertime` int(11) NOT NULL DEFAULT 2,
  `workgroup_filepermissions` int(11) NOT NULL DEFAULT 0,
  `workgroup_campaignpermissions` int(11) NOT NULL DEFAULT 0,
  `workgroup_ownernotifications` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`workgroup_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `workgroups` */

insert  into `workgroups`(`workgroup_id`,`owner_id`,`moderators`,`users`,`name`,`description`,`created_on`,`mailchimp_key`,`type`,`active`,`workgroup_taskpermissions`,`workgroup_viewpermissions`,`workgroup_remindertime`,`workgroup_filepermissions`,`workgroup_campaignpermissions`,`workgroup_ownernotifications`) values 
(1,1,'1','1','Privat group','Private','2018-09-25 14:07','',1,1,0,1,2,0,0,1),
(2,60,'60','60,1','Private group','DD','2018-09-25 14:08','',1,1,0,1,2,0,0,1),
(3,61,'61','61','Aaaaa','aaaaa','2018-09-25 14:13','',0,1,0,1,2,0,0,1),
(4,1,'1','1','SERVISNE STORITVE','GREGA','2018-09-27 19:55','67db10ef25c87730da01f4ab3d4a4c2c-us19',1,1,0,1,2,0,0,1),
(5,64,'64','60,64','test M','PROJEKT USP','2018-10-03 14:40','',0,1,0,1,2,0,0,1),
(6,1,'1','1','GGG','GGG','2018-10-04 06:33','',0,1,0,1,2,0,0,1),
(7,63,'63','65,67,63','test J','team work','2018-10-07 21:57','',0,1,0,1,2,0,0,1),
(8,65,'65','65','SUPPORT','Z','2018-10-09 09:45','',0,1,0,1,2,0,0,1),
(9,62,'62','65,62','PUBLIC GROUP','df','2018-10-09 12:17','',0,1,0,1,2,0,0,1);

/*Table structure for table `worklocations` */

DROP TABLE IF EXISTS `worklocations`;

CREATE TABLE `worklocations` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT 5,
  `participants` text COLLATE utf32_slovenian_ci NOT NULL,
  `date` text COLLATE utf32_slovenian_ci NOT NULL,
  `start_time` text COLLATE utf32_slovenian_ci NOT NULL,
  `end_time` text COLLATE utf32_slovenian_ci NOT NULL,
  `address` text COLLATE utf32_slovenian_ci NOT NULL,
  `latitude` text COLLATE utf32_slovenian_ci NOT NULL,
  `longitude` text COLLATE utf32_slovenian_ci NOT NULL,
  `recurring` int(11) NOT NULL,
  `repeat_on` text COLLATE utf32_slovenian_ci NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `visited` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf32 COLLATE=utf32_slovenian_ci;

/*Data for the table `worklocations` */

insert  into `worklocations`(`location_id`,`employee_id`,`customer_id`,`priority`,`participants`,`date`,`start_time`,`end_time`,`address`,`latitude`,`longitude`,`recurring`,`repeat_on`,`created_on`,`visited`) values 
(1,1,NULL,5,'1','2018-09-24','','','Pod hribom 55, 1000 Ljubljana, Slovenia','46.066649619','14.477998154',0,'','2018-09-24 16:06:26',1),
(2,1,NULL,5,'1','2018-09-24','','','Šišenska cesta 131, 1000 Ljubljana, Slovenia','46.0676802','14.4766143',0,'','2018-09-24 16:35:52',1),
(3,1,NULL,5,'1','2018-09-24','','','Stranska vas 20, 1356 Dobrova, Slovenia','46.068034567','14.423494372',0,'','2018-09-24 16:43:51',1),
(4,1,NULL,5,'1','2018-09-25','','','Omejčeva ulica 3, 1210 Ljubljana - Šentvid, Slovenia','46.091013268','14.470796822',0,'','2018-09-25 08:02:17',1),
(5,1,1,8,'1','2018-09-26','13:53','14:53','PRIMOŽIČEVA ULICA 1, 1231 LJUBLJANA - ČRNUČE','46.1034801','14.530704499999956',0,'','2018-09-26 13:53:53',0),
(7,63,4,5,'67','','15:10','15:10','MARINOVŠEVA CESTA 3, 1000 LJUBLJANA','46.1152943','14.460030700000061',1,'2','2018-10-05 14:13:08',0),
(8,1,NULL,5,'1','2018-10-09','','','Babna Gora 63a, 1355 Polhov Gradec, Slovenia','46.061748329','14.358249514',0,'','2018-10-09 06:57:25',1);

/*Table structure for table `workorder_actions` */

DROP TABLE IF EXISTS `workorder_actions`;

CREATE TABLE `workorder_actions` (
  `action_id` int(11) NOT NULL AUTO_INCREMENT,
  `workorder_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `action_description` text COLLATE utf8_slovenian_ci NOT NULL,
  `action_type` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`action_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

/*Data for the table `workorder_actions` */

insert  into `workorder_actions`(`action_id`,`workorder_id`,`employee_id`,`action_description`,`action_type`,`created_on`) values 
(1,1,62,'Work order created',0,'2018-10-08 10:45:33'),
(2,1,62,'Work order deleted',0,'2018-10-08 10:45:48'),
(3,2,62,'Work order created',0,'2018-10-08 13:46:05'),
(4,3,62,'Work order created',0,'2018-10-08 13:48:00'),
(5,4,65,'Work order created',0,'2018-10-08 14:53:00'),
(6,4,1,'Fields updated - Customer changed to , Location changed to ROŽNA DOLINA, CESTA IV 22 , 1000 LJUBLJANA',0,'2018-10-08 15:55:30'),
(7,4,1,'Note added:<br>sdgsg',1,'2018-10-08 15:55:42'),
(8,5,1,'Work order created',0,'2018-10-08 21:20:42'),
(9,5,1,'Fields updated - Status changed to In progress',0,'2018-10-09 05:55:48'),
(10,2,1,'Fields updated - Status changed to Finished',0,'2018-10-09 05:56:27'),
(11,4,1,'Fields updated - Status changed to Finished',0,'2018-10-09 07:20:44');

/*Table structure for table `workorder_items` */

DROP TABLE IF EXISTS `workorder_items`;

CREATE TABLE `workorder_items` (
  `entry_id` int(11) NOT NULL AUTO_INCREMENT,
  `workorder_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_amount` float NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`entry_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

/*Data for the table `workorder_items` */

insert  into `workorder_items`(`entry_id`,`workorder_id`,`item_id`,`item_amount`,`created_on`) values 
(4,3,13,1,'2018-10-08 13:48:00'),
(12,5,3,1,'2018-10-09 05:55:48'),
(13,5,2,1,'2018-10-09 05:55:48'),
(14,2,9,1,'2018-10-09 05:56:27'),
(15,2,12,1,'2018-10-09 05:56:27'),
(16,4,10,1,'2018-10-09 07:20:44'),
(17,4,12,2,'2018-10-09 07:20:44');

/*Table structure for table `workorders` */

DROP TABLE IF EXISTS `workorders`;

CREATE TABLE `workorders` (
  `workorder_id` int(11) NOT NULL AUTO_INCREMENT,
  `workorder_code` text COLLATE utf8_slovenian_ci NOT NULL,
  `ticket_id` int(11) DEFAULT NULL,
  `employee_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `subsidiary_id` int(11) DEFAULT NULL,
  `assigned_to` text COLLATE utf8_slovenian_ci NOT NULL,
  `workorder_subject` text COLLATE utf8_slovenian_ci NOT NULL,
  `workorder_startdate` text COLLATE utf8_slovenian_ci NOT NULL,
  `workorder_enddate` text COLLATE utf8_slovenian_ci NOT NULL,
  `workorder_location` text COLLATE utf8_slovenian_ci NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `workorder_notes` text COLLATE utf8_slovenian_ci NOT NULL,
  `priority` text COLLATE utf8_slovenian_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `opened_on` text COLLATE utf8_slovenian_ci NOT NULL,
  `last_modified` text COLLATE utf8_slovenian_ci NOT NULL,
  `finished_on` text COLLATE utf8_slovenian_ci NOT NULL,
  `workorder_files` text COLLATE utf8_slovenian_ci DEFAULT NULL,
  PRIMARY KEY (`workorder_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

/*Data for the table `workorders` */

insert  into `workorders`(`workorder_id`,`workorder_code`,`ticket_id`,`employee_id`,`customer_id`,`subsidiary_id`,`assigned_to`,`workorder_subject`,`workorder_startdate`,`workorder_enddate`,`workorder_location`,`latitude`,`longitude`,`workorder_notes`,`priority`,`status`,`created_on`,`opened_on`,`last_modified`,`finished_on`,`workorder_files`) values 
(2,'WO-2018-1',3,62,1,NULL,'62','Uredi računalnik','2018-10-08','2018-10-08','ROŽNA DOLINA, CESTA IV 22 , 1000 LJUBLJANA',46.0475,14.4842,'','Normal',2,'2018-10-08 13:46:05','2018-10-08 13:46:34','2018-10-09 05:56:27','2018-10-09 05:56:27',''),
(3,'WO-2018-3',2,62,1,NULL,'62,65','PODPORA SMD1','2018-10-08','2018-10-08','ROŽNA DOLINA, CESTA IV 22 , 1000 LJUBLJANA',46.0475,14.4842,'','Normal',0,'2018-10-08 13:48:00','2018-10-08 13:48:02','','',''),
(4,'WO-2018-4',6,65,1,NULL,'65','Grega','2018-10-08','2018-10-08','ROŽNA DOLINA, CESTA IV 22 , 1000 LJUBLJANA',46.0475,14.4842,'xdysv','Normal',2,'2018-10-08 14:53:00','2018-10-08 14:53:19','2018-10-09 07:20:44','2018-10-09 07:20:44','airport-architecture-blur-442600-1024x683.jpg'),
(5,'WO-2018-5',NULL,1,1,NULL,'62','turtutr','2018-10-08','2018-10-08','ROŽNA DOLINA, CESTA IV 22 , 1000 LJUBLJANA',46.0475,14.4842,'utuuu','Normal',1,'2018-10-08 21:20:42','2018-10-09 05:55:42','2018-10-09 05:55:48','','Capture.PNG');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
