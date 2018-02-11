/*
SQLyog Community v12.18 (64 bit)
MySQL - 10.1.9-MariaDB : Database - db_cismart_v3
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `artikel` */

DROP TABLE IF EXISTS `artikel`;

CREATE TABLE `artikel` (
  `artikel_id` int(11) NOT NULL AUTO_INCREMENT,
  `artikel_title` varchar(50) DEFAULT NULL,
  `content` text,
  `author` varchar(50) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `mdb` int(11) DEFAULT NULL,
  `mdd` date DEFAULT NULL,
  PRIMARY KEY (`artikel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `artikel` */

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_nm` varchar(50) DEFAULT NULL,
  `mdb` int(11) DEFAULT NULL,
  `mdd` date DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `category` */

/*Table structure for table `com_menu` */

DROP TABLE IF EXISTS `com_menu`;

CREATE TABLE `com_menu` (
  `nav_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `portal_id` int(11) unsigned DEFAULT NULL,
  `parent_id` int(11) unsigned DEFAULT NULL,
  `nav_title` varchar(50) DEFAULT NULL,
  `nav_desc` varchar(100) DEFAULT NULL,
  `nav_url` varchar(100) DEFAULT NULL,
  `nav_no` int(11) unsigned DEFAULT NULL,
  `active_st` enum('1','0') DEFAULT '1',
  `display_st` enum('1','0') DEFAULT '1',
  `nav_icon` varchar(50) DEFAULT NULL,
  `mdb` int(11) unsigned DEFAULT NULL,
  `mdd` datetime DEFAULT NULL,
  PRIMARY KEY (`nav_id`),
  KEY `FK_com_menu_p` (`portal_id`),
  CONSTRAINT `FK_com_menu_p` FOREIGN KEY (`portal_id`) REFERENCES `com_portal` (`portal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `com_menu` */

insert  into `com_menu`(`nav_id`,`portal_id`,`parent_id`,`nav_title`,`nav_desc`,`nav_url`,`nav_no`,`active_st`,`display_st`,`nav_icon`,`mdb`,`mdd`) values 
(1,1,0,'Home','Selamat Datang','settings/adminwelcome',1,'1','1',NULL,1,'2011-11-28 11:39:00'),
(2,1,0,'Settings','Pengaturan','settings/adminportal',2,'1','1',NULL,1,'2011-11-28 11:45:06'),
(3,1,2,'Application','Pengaturan aplikasi','-',21,'1','1',NULL,1,'2011-11-28 13:16:54'),
(4,1,3,'Web Portal','Pengelolaan web portal','settings/adminportal',211,'1','1',NULL,1,'2011-11-28 13:17:34'),
(5,1,3,'Users','Pengelolaan pengguna','settings/adminuser',212,'1','1',NULL,1,'2011-11-28 13:21:10'),
(6,1,3,'Roles','Pengelolaan hak akses','settings/adminrole',213,'1','1',NULL,1,'2011-11-28 13:21:36'),
(7,1,3,'Navigation','Pengelolaan menu','settings/adminmenu',214,'1','1',NULL,1,'2011-11-28 13:22:03'),
(8,1,3,'Permissions','Pengelolaan hak akses pengguna','settings/adminpermissions',215,'1','1',NULL,1,'2011-11-28 13:22:30'),
(9,1,3,'Preferences','Pengelolaan preferences','settings/adminpreferences',216,'1','0',NULL,1,'2011-11-28 13:23:39'),
(10,2,0,'Dashboard','Dashboard','operator/welcome',1,'1','1',NULL,1,'2016-05-02 13:43:45'),
(11,2,0,'Master Data','Master Data','#',2,'1','1',NULL,1,'2016-05-02 15:04:27'),
(12,2,11,'Kategori','Kategori','master/category',1,'1','1',NULL,1,'2016-05-02 15:04:45');

/*Table structure for table `com_portal` */

DROP TABLE IF EXISTS `com_portal`;

CREATE TABLE `com_portal` (
  `portal_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `portal_nm` varchar(50) DEFAULT NULL,
  `site_title` varchar(100) DEFAULT NULL,
  `site_desc` varchar(100) DEFAULT NULL,
  `meta_desc` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `mdb` int(11) unsigned DEFAULT NULL,
  `mdd` datetime DEFAULT NULL,
  PRIMARY KEY (`portal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `com_portal` */

insert  into `com_portal`(`portal_id`,`portal_nm`,`site_title`,`site_desc`,`meta_desc`,`meta_keyword`,`mdb`,`mdd`) values 
(1,'Administrator Portal','CiSmart 3.0 Administrator Site',NULL,NULL,NULL,1,'2013-07-11 10:57:05'),
(2,'Application Portal','Portal Aplikasi','Application Description','Meta','Keyword',1,'2016-05-02 11:30:38');

/*Table structure for table `com_preferences` */

DROP TABLE IF EXISTS `com_preferences`;

CREATE TABLE `com_preferences` (
  `pref_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pref_group` varchar(50) DEFAULT NULL,
  `pref_nm` varchar(50) DEFAULT NULL,
  `pref_value` varchar(255) DEFAULT NULL,
  `mdb` int(11) unsigned DEFAULT NULL,
  `mdd` datetime DEFAULT NULL,
  PRIMARY KEY (`pref_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `com_preferences` */

/*Table structure for table `com_role` */

DROP TABLE IF EXISTS `com_role`;

CREATE TABLE `com_role` (
  `role_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `portal_id` int(11) unsigned DEFAULT NULL,
  `role_nm` varchar(50) DEFAULT NULL,
  `role_desc` varchar(100) DEFAULT NULL,
  `default_page` varchar(50) DEFAULT NULL,
  `mdb` int(11) unsigned DEFAULT NULL,
  `mdd` datetime DEFAULT NULL,
  PRIMARY KEY (`role_id`),
  KEY `FK_com_role_p` (`portal_id`),
  CONSTRAINT `FK_com_role_p` FOREIGN KEY (`portal_id`) REFERENCES `com_portal` (`portal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `com_role` */

insert  into `com_role`(`role_id`,`portal_id`,`role_nm`,`role_desc`,`default_page`,`mdb`,`mdd`) values 
(1,1,'System Administrator','Hak akses administrator sistem (developer)','settings/adminwelcome',1,'2013-07-11 10:58:57'),
(2,2,'Administrator Database','Hak akses untuk administrator database','operator/welcome',NULL,NULL);

/*Table structure for table `com_role_menu` */

DROP TABLE IF EXISTS `com_role_menu`;

CREATE TABLE `com_role_menu` (
  `role_id` int(11) unsigned NOT NULL,
  `nav_id` int(11) unsigned NOT NULL,
  `role_tp` varchar(4) NOT NULL DEFAULT '1111',
  PRIMARY KEY (`nav_id`,`role_id`),
  KEY `FK_com_role_menu_r` (`role_id`),
  CONSTRAINT `FK_com_role_menu_m` FOREIGN KEY (`nav_id`) REFERENCES `com_menu` (`nav_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_com_role_menu_r` FOREIGN KEY (`role_id`) REFERENCES `com_role` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `com_role_menu` */

insert  into `com_role_menu`(`role_id`,`nav_id`,`role_tp`) values 
(1,1,'1111'),
(1,2,'1111'),
(1,3,'1111'),
(1,4,'1111'),
(1,5,'1111'),
(1,6,'1111'),
(1,7,'1111'),
(1,8,'1111'),
(1,9,'1111'),
(2,10,'1111'),
(2,11,'1111'),
(2,12,'1111');

/*Table structure for table `com_role_user` */

DROP TABLE IF EXISTS `com_role_user`;

CREATE TABLE `com_role_user` (
  `role_id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FK_com_role_user_r` (`role_id`),
  CONSTRAINT `FK_com_role_user_r` FOREIGN KEY (`role_id`) REFERENCES `com_role` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_com_role_user_u` FOREIGN KEY (`user_id`) REFERENCES `com_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `com_role_user` */

insert  into `com_role_user`(`role_id`,`user_id`) values 
(1,1),
(2,2);

/*Table structure for table `com_user` */

DROP TABLE IF EXISTS `com_user`;

CREATE TABLE `com_user` (
  `user_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) DEFAULT NULL,
  `user_pass` varchar(255) DEFAULT NULL,
  `user_key` varchar(50) DEFAULT NULL,
  `user_mail` varchar(50) DEFAULT NULL,
  `lock_st` enum('1','0') DEFAULT '0',
  `mdb` int(11) unsigned DEFAULT NULL,
  `mdd` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `com_user` */

insert  into `com_user`(`user_id`,`user_name`,`user_pass`,`user_key`,`user_mail`,`lock_st`,`mdb`,`mdd`) values 
(1,'userdemo','23kOfW3KlT9HtZDYA3MkizGPboppfWf0b0S/ogqf0jV2gGXqI4KfV56X2RJ01vNoU9fInOjH1N31/0QZohNVWA==','1883219921','welly.wsp@excelindo.co.id','0',1,'2013-07-11 13:02:40'),
(2,'operator','t3eeIl1NnlBhXVp/6Gm54NUTKn2w/5wy6pdu5hsiikLUpRGlSIopBAdQuwisTikOx36GXQ6NFxQdaswkjNUOFg==','-676943999','lyan.p@excelindo.co.id','0',1,'2016-05-02 13:20:04');

/*Table structure for table `com_user_login` */

DROP TABLE IF EXISTS `com_user_login`;

CREATE TABLE `com_user_login` (
  `user_id` int(11) unsigned NOT NULL,
  `login_date` datetime NOT NULL,
  `logout_date` datetime DEFAULT NULL,
  `ip_address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`,`login_date`),
  CONSTRAINT `FK_com_user_login` FOREIGN KEY (`user_id`) REFERENCES `com_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `com_user_login` */

insert  into `com_user_login`(`user_id`,`login_date`,`logout_date`,`ip_address`) values 
(1,'2013-07-11 12:10:54','2013-07-11 14:12:17','127.0.0.1'),
(1,'2016-05-02 11:28:40',NULL,'::1'),
(2,'2016-05-02 13:49:20','2016-05-02 13:50:45','::1'),
(2,'2016-05-03 08:06:57',NULL,'::1');

/*Table structure for table `com_user_super` */

DROP TABLE IF EXISTS `com_user_super`;

CREATE TABLE `com_user_super` (
  `user_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `FK_com_user_super` FOREIGN KEY (`user_id`) REFERENCES `com_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `com_user_super` */

insert  into `com_user_super`(`user_id`) values 
(1);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `user_id` int(11) unsigned NOT NULL,
  `nama_lengkap` varchar(50) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `no_telp` varchar(50) DEFAULT NULL,
  `mdb` int(11) unsigned DEFAULT NULL,
  `mdd` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `FK_users` FOREIGN KEY (`user_id`) REFERENCES `com_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`user_id`,`nama_lengkap`,`alamat`,`no_telp`,`mdb`,`mdd`) values 
(1,'Welly Widodo Sindu Putra','JL. Mawar No 2 Jenggawah Jember','081358290279',1,'2013-07-11 13:02:40'),
(2,'Lyan Dwi Pangestu','Jalan Pesanggrahan','10939395949',1,'2016-05-02 13:20:04');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
