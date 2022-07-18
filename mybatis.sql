/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.7.35-log : Database - mybatis
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`mybatis` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `mybatis`;

/*Table structure for table `account` */

DROP TABLE IF EXISTS `account`;

CREATE TABLE `account` (
  `ID` int(11) NOT NULL COMMENT '编号',
  `UID` int(11) DEFAULT NULL COMMENT '用户编号',
  `MONEY` double DEFAULT NULL COMMENT '金额',
  PRIMARY KEY (`ID`),
  KEY `FK_Reference_8` (`UID`),
  CONSTRAINT `FK_Reference_8` FOREIGN KEY (`UID`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `account` */

insert  into `account`(`ID`,`UID`,`MONEY`) values (1,41,1000),(2,45,1000),(3,41,2000);

/*Table structure for table `course` */

DROP TABLE IF EXISTS `course`;

CREATE TABLE `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coursename` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `course` */

insert  into `course`(`id`,`coursename`) values (1,'语文'),(2,'数学'),(3,'英语');

/*Table structure for table `dept` */

DROP TABLE IF EXISTS `dept`;

CREATE TABLE `dept` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deptname` varchar(30) NOT NULL,
  `location` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `dept` */

insert  into `dept`(`id`,`deptname`,`location`) values (1,'技术部','纽约'),(2,'财务部','洛杉矶'),(3,'市场部','芝加哥'),(4,'运营部','迈阿密');

/*Table structure for table `emp` */

DROP TABLE IF EXISTS `emp`;

CREATE TABLE `emp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `deptid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `emp` */

insert  into `emp`(`id`,`username`,`age`,`deptid`) values (1,'eric',20,1),(2,'miller',25,1),(3,'lily',23,2),(4,'petter',22,3),(5,'james',28,3);

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `ID` int(11) NOT NULL COMMENT '编号',
  `ROLE_NAME` varchar(30) DEFAULT NULL COMMENT '角色名称',
  `ROLE_DESC` varchar(60) DEFAULT NULL COMMENT '角色描述',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `role` */

insert  into `role`(`ID`,`ROLE_NAME`,`ROLE_DESC`) values (1,'院长','学院领导'),(2,'总裁','公司老板'),(3,'校长','学校负责人');

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `student` */

insert  into `student`(`id`,`name`) values (1,'eric'),(2,'lily'),(3,'miller'),(4,'sunny');

/*Table structure for table `student_course` */

DROP TABLE IF EXISTS `student_course`;

CREATE TABLE `student_course` (
  `cid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  PRIMARY KEY (`cid`,`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `student_course` */

insert  into `student_course`(`cid`,`sid`) values (1,1),(1,2),(2,1),(2,2),(2,3),(3,3),(3,4);

/*Table structure for table `t1` */

DROP TABLE IF EXISTS `t1`;

CREATE TABLE `t1` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t1` */

/*Table structure for table `t2` */

DROP TABLE IF EXISTS `t2`;

CREATE TABLE `t2` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `t2` */

insert  into `t2`(`id`,`username`) values (1,'eric');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL COMMENT '用户名称',
  `birthday` datetime DEFAULT NULL COMMENT '生日',
  `sex` char(1) DEFAULT NULL COMMENT '性别',
  `address` varchar(256) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`birthday`,`sex`,`address`) values (41,'老王','2018-02-27 17:47:08','男','上海'),(42,'王二小','2018-03-02 15:09:37','女','四川成都'),(43,'老王头','2018-03-04 11:34:34','女','中国上海'),(45,'老刘','2018-03-04 12:04:06','男','北京昌平'),(46,'王','2018-03-07 17:37:26','男','北京'),(78,'王五','2022-05-30 16:37:25','男','北京'),(79,'王宝强','2022-05-31 11:41:33','男','中国'),(82,'谢霆锋','2022-05-31 11:44:40','男','中国·香港'),(84,'白百何',NULL,'女',NULL),(89,'测试数据1','2022-06-01 10:45:44','男','中国'),(90,'测试数据2','2022-06-01 10:45:44','男','中国'),(91,'测试数据3','2022-06-01 10:45:44','男','中国'),(92,'测试数据4','2022-06-01 10:45:44','男','中国');

/*Table structure for table `user_role` */

DROP TABLE IF EXISTS `user_role`;

CREATE TABLE `user_role` (
  `UID` int(11) NOT NULL COMMENT '用户编号',
  `RID` int(11) NOT NULL COMMENT '角色编号',
  PRIMARY KEY (`UID`,`RID`),
  KEY `FK_Reference_10` (`RID`),
  CONSTRAINT `FK_Reference_10` FOREIGN KEY (`RID`) REFERENCES `role` (`ID`),
  CONSTRAINT `FK_Reference_9` FOREIGN KEY (`UID`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user_role` */

insert  into `user_role`(`UID`,`RID`) values (41,1),(45,1),(41,2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
