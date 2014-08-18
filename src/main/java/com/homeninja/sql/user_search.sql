/*
SQLyog Ultimate v8.55 
MySQL - 5.5.25 : Database - jobportal
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jobportal` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jobportal`;

/*Table structure for table `jobs` */

DROP TABLE IF EXISTS `jobs`;

CREATE TABLE `jobs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `postBy` bigint(100) DEFAULT NULL,
  `jobDetails` text,
  `postDate` datetime DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `city` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `jobCategoryID` int(11) DEFAULT NULL,
  `requestCount` int(11) DEFAULT NULL,
  `maxRequestReached` bit(1) DEFAULT NULL,
  `requestLimit` int(11) DEFAULT NULL,
  `jobSubCategories` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `jobs` */

insert  into `jobs`(`id`,`title`,`postBy`,`jobDetails`,`postDate`,`location`,`city`,`state`,`jobCategoryID`,`requestCount`,`maxRequestReached`,`requestLimit`,`jobSubCategories`) values (3,'asdas',1,'asdasd','2014-08-04 00:24:43','dcsaa',772,21,NULL,NULL,NULL,NULL,NULL),(4,'ExtJs 4 form example',1,'adsasasas','2014-08-18 00:52:26','test loc',1283,33,14,0,'',0,NULL),(5,'ExtJs 4 form example',1,'l;ksa;a;sk;as','2014-08-18 01:03:26','jkjkkk',1588,38,7,0,'\0',0,NULL),(6,'ExtJs 4 form example',1,'l;ksa;a;sk;as','2014-08-18 01:05:06','jkjkkk',1588,38,7,0,'\0',0,NULL),(7,'ExtJs 4 form example',1,'akjsnasnas','2014-08-18 01:06:08','sasaa',386,13,11,0,'\0',15,'-on-on'),(8,'asasa',1,'sasasklml','2014-08-18 01:19:23','assasa',731,20,3,0,'\0',0,NULL),(9,'aaaaaaa',1,'dddsssssssssssssss','2014-08-18 01:32:14','aaaaaaaaaaa',1029,24,4,0,'\0',0,NULL),(10,'aaaaaaa',1,'dddsssssssssssssss','2014-08-18 01:33:30','aaaaaaaaaaa',1029,24,4,0,'\0',0,NULL),(11,'aaaaaaa',1,'dddsssssssssssssss','2014-08-18 01:34:36','aaaaaaaaaaa',1029,24,4,0,'\0',0,NULL);

/*Table structure for table `jobs_jobsubcategory_map` */

DROP TABLE IF EXISTS `jobs_jobsubcategory_map`;

CREATE TABLE `jobs_jobsubcategory_map` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `jobId` bigint(20) DEFAULT NULL,
  `jobSubCategoryId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

/*Data for the table `jobs_jobsubcategory_map` */

insert  into `jobs_jobsubcategory_map`(`id`,`jobId`,`jobSubCategoryId`) values (1,3,56),(2,3,59),(3,3,58),(4,4,67),(5,4,68),(6,5,35),(7,5,32),(8,5,31),(9,6,35),(10,6,32),(11,6,31),(12,7,50),(13,7,51),(14,8,11),(15,8,12),(16,9,19),(17,9,16),(18,10,19),(19,10,16),(20,11,19),(21,11,16);

/*Table structure for table `message_limits` */

DROP TABLE IF EXISTS `message_limits`;

CREATE TABLE `message_limits` (
  `id` int(11) NOT NULL,
  `limits` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `message_limits` */

insert  into `message_limits`(`id`,`limits`) values (0,'unlimited'),(5,'1-5 '),(10,'1-10'),(15,'1-15'),(20,'1-20');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
