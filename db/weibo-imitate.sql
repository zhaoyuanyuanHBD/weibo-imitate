/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 5.7.17-log : Database - weibo-imitate
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`weibo-imitate` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `weibo-imitate`;

/*Table structure for table `message` */

DROP TABLE IF EXISTS `message`;

CREATE TABLE `message` (
  `cid` varchar(50) NOT NULL,
  `context` varchar(1000) DEFAULT NULL,
  `uid` varchar(50) DEFAULT NULL,
  `writetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `message` */

insert  into `message`(`cid`,`context`,`uid`,`writetime`,`updatetime`) values ('12989305-e46f-4b34-b3e8-f1c07d642972','啊啊阿阿阿阿阿阿阿阿阿','9d75ef64-7093-41b8-a894-cb09855b38e2','2019-05-26 14:55:56','2019-05-26 14:55:56'),('1bc13a0b-2039-473f-97f8-2952bfcc75e9','有什么新鲜事想告诉大家呢？\n没有吧','9fcc695f-adaf-4587-a40a-8a1f92074998','2019-05-23 12:05:55','2019-05-23 12:06:34'),('5ef57365-e0dc-4a52-98d5-c7852389bb20','情深深雨蒙蒙\n------\nemmmmmmmmm','9d75ef64-7093-41b8-a894-cb09855b38e2','2019-05-26 14:56:33','2019-05-26 14:56:33'),('601cb09d-0d4d-458c-b0c0-79276e93848d','有什么新鲜事想告诉大家呢？\n没有和土壤丰富额热狗和热键','9d75ef64-7093-41b8-a894-cb09855b38e2','2019-05-23 12:33:53','2019-05-24 09:58:35'),('6953262d-c204-419b-98a0-86b5396dbffa','情深深雨蒙蒙\r\n啦啦啦啦\r\n虎骨如果日后骨灰','9d75ef64-7093-41b8-a894-cb09855b38e2','2019-05-26 12:59:40','2019-05-29 10:48:14'),('70c2c33f-4880-42cd-9f16-21e7b9f23966','有点厉害','9d75ef64-7093-41b8-a894-cb09855b38e2','2019-05-26 14:56:07','2019-05-26 14:56:07'),('cfb8b4e1-3e58-464b-8519-a8e27991161a','有什么新鲜事想告诉大家呢？\r\n有什么新鲜事想告诉大家呢？\r\n有什么新鲜事想告诉大家呢？\r\n有什么新鲜事想告诉大家呢？\r\n有什么新鲜事想告诉大家呢？\r\n','9d75ef64-7093-41b8-a894-cb09855b38e2','2019-05-26 14:42:27','2019-05-26 14:55:18'),('d36b800c-fb35-4d6c-bfdf-929922d65ef2','猪头efiowuf eowf iwoi ihriheighreijhreigh','2255198e-ca83-41ef-8d4a-f5b08004c19b','2019-05-24 09:30:47','2019-05-24 09:34:26');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `uid` varchar(50) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telephone` varchar(50) DEFAULT NULL,
  `registertime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`uid`,`username`,`password`,`nickname`,`email`,`telephone`,`registertime`) values ('2255198e-ca83-41ef-8d4a-f5b08004c19b','zhutou','e10adc3949ba59abbe56e057f20f883e','猪头','zhutou@zhutou.com','115646','2019-05-24 09:30:08'),('9d75ef64-7093-41b8-a894-cb09855b38e2','zhangsan','e10adc3949ba59abbe56e057f20f883e','张三','zhangsan@zs.com','45986589','2019-05-23 12:33:32'),('9fcc695f-adaf-4587-a40a-8a1f92074998','admin','fcea920f7412b5da7be0cf42b8c93759','admin','admin@admin.com','115646','2019-05-23 12:05:07'),('eec8be81-e6d5-4b85-bb79-5868daf2a426','xiaoxi','0b4e7a0e5fe84ad35fb5f95b9ceeac79','小小','fwfew@163.com','115646','2019-05-23 19:50:18'),('fbc8c644-3af4-488d-b5a1-1e09da69216d','tiantian','25d55ad283aa400af464c76d713c07ad','tiantian','1192505445@qq.com','1232323242','2019-05-26 10:36:59');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
