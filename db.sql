/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - jiazhangzi
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jiazhangzi` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jiazhangzi`;

/*Table structure for table `banzhurentongzhi` */

DROP TABLE IF EXISTS `banzhurentongzhi`;

CREATE TABLE `banzhurentongzhi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '教师',
  `jiazhangxuesheng_id` int(11) DEFAULT NULL COMMENT '家长学生',
  `banzhurentongzhi_name` varchar(200) DEFAULT NULL COMMENT '班主任通知名称 Search111  ',
  `banzhurentongzhi_types` int(11) NOT NULL COMMENT '班主任通知类型 Search111 ',
  `banzhurentongzhi_content` text COMMENT '班主任通知详情 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='班主任通知';

/*Data for the table `banzhurentongzhi` */

insert  into `banzhurentongzhi`(`id`,`jiaoshi_id`,`jiazhangxuesheng_id`,`banzhurentongzhi_name`,`banzhurentongzhi_types`,`banzhurentongzhi_content`,`insert_time`,`create_time`) values (1,1,3,'班主任通知名称1',2,'班主任通知详情1','2022-04-25 13:18:25','2022-04-25 13:18:25'),(2,3,3,'班主任通知名称2',1,'班主任通知详情2','2022-04-25 13:18:25','2022-04-25 13:18:25'),(3,2,1,'班主任通知名称3',1,'班主任通知详情3','2022-04-25 13:18:25','2022-04-25 13:18:25'),(4,1,3,'班主任通知名称4',2,'班主任通知详情4','2022-04-25 13:18:25','2022-04-25 13:18:25'),(5,1,1,'班主任通知名称5',1,'班主任通知详情5','2022-04-25 13:18:25','2022-04-25 13:18:25');

/*Table structure for table `chengji` */

DROP TABLE IF EXISTS `chengji`;

CREATE TABLE `chengji` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `kaoshi_id` int(11) DEFAULT NULL COMMENT '考试',
  `jiazhangxuesheng_id` int(11) DEFAULT NULL COMMENT '家长学生',
  `chengji_file` varchar(200) DEFAULT NULL COMMENT '试卷答题文件',
  `huida_defen` decimal(10,2) DEFAULT NULL COMMENT '考试得分',
  `paiming` int(11) DEFAULT NULL COMMENT '排名',
  `huida_content` text COMMENT '成绩意见',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='成绩';

/*Data for the table `chengji` */

insert  into `chengji`(`id`,`kaoshi_id`,`jiazhangxuesheng_id`,`chengji_file`,`huida_defen`,`paiming`,`huida_content`,`insert_time`,`create_time`) values (1,1,3,'http://localhost:8080/jiazhangzi/upload/file.rar','716.62',63,'成绩意见1','2022-04-25 13:18:25','2022-04-25 13:18:25'),(2,2,1,'http://localhost:8080/jiazhangzi/upload/file.rar','968.51',255,'成绩意见2','2022-04-25 13:18:25','2022-04-25 13:18:25'),(3,3,1,'http://localhost:8080/jiazhangzi/upload/file.rar','451.59',143,'成绩意见3','2022-04-25 13:18:25','2022-04-25 13:18:25'),(4,4,3,'http://localhost:8080/jiazhangzi/upload/file.rar','392.96',36,'成绩意见4','2022-04-25 13:18:25','2022-04-25 13:18:25'),(5,5,1,'http://localhost:8080/jiazhangzi/upload/file.rar','303.58',126,'成绩意见5','2022-04-25 13:18:25','2022-04-25 13:18:25'),(6,1,2,'http://localhost:8080/jiazhangzi/upload/1650868603385.rar','78.00',2,'<p>dsdshs第十三回</p>','2022-04-25 14:36:52','2022-04-25 14:36:52');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2022-04-25 13:18:12'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2022-04-25 13:18:12'),(3,'kemu_types','科目',1,'语文',NULL,NULL,'2022-04-25 13:18:12'),(4,'kemu_types','科目',2,'数学',NULL,NULL,'2022-04-25 13:18:12'),(5,'kemu_types','科目',3,'英语',NULL,NULL,'2022-04-25 13:18:12'),(6,'kemu_types','科目',4,'体育',NULL,NULL,'2022-04-25 13:18:12'),(7,'banji_types','班级',1,'班级1',NULL,NULL,'2022-04-25 13:18:12'),(8,'banji_types','班级',2,'班级2',NULL,NULL,'2022-04-25 13:18:12'),(9,'banji_types','班级',3,'班级3',NULL,NULL,'2022-04-25 13:18:12'),(10,'banji_types','班级',4,'班级4',NULL,NULL,'2022-04-25 13:18:12'),(11,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2022-04-25 13:18:12'),(12,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2022-04-25 13:18:12'),(13,'xingqi_types','星期',1,'星期一',NULL,NULL,'2022-04-25 13:18:12'),(14,'xingqi_types','星期',2,'星期二',NULL,NULL,'2022-04-25 13:18:12'),(15,'xingqi_types','星期',3,'星期三',NULL,NULL,'2022-04-25 13:18:12'),(16,'xingqi_types','星期',4,'星期四',NULL,NULL,'2022-04-25 13:18:12'),(17,'xingqi_types','星期',5,'星期五',NULL,NULL,'2022-04-25 13:18:12'),(18,'xingqi_types','星期',6,'星期六',NULL,NULL,'2022-04-25 13:18:12'),(19,'xingqi_types','星期',7,'星期天',NULL,NULL,'2022-04-25 13:18:12'),(20,'zuoye_types','作业类型',1,'作业类型1',NULL,NULL,'2022-04-25 13:18:12'),(21,'zuoye_types','作业类型',2,'作业类型2',NULL,NULL,'2022-04-25 13:18:12'),(22,'zuoye_types','作业类型',3,'作业类型3',NULL,NULL,'2022-04-25 13:18:12'),(23,'kaoshi_types','学期',1,'上学期',NULL,NULL,'2022-04-25 13:18:12'),(24,'kaoshi_types','学期',2,'下学期',NULL,NULL,'2022-04-25 13:18:12'),(25,'yijianjianyi_types','意见建议类型',1,'意见建议类型1',NULL,NULL,'2022-04-25 13:18:12'),(26,'yijianjianyi_types','意见建议类型',2,'意见建议类型2',NULL,NULL,'2022-04-25 13:18:12'),(27,'banzhurentongzhi_types','班主任通知类型',1,'班主任通知类型1',NULL,NULL,'2022-04-25 13:18:12'),(28,'banzhurentongzhi_types','班主任通知类型',2,'班主任通知类型2',NULL,NULL,'2022-04-25 13:18:13'),(29,'guanliyuantongzhi_types','管理员通知类型',1,'管理员通知类型1',NULL,NULL,'2022-04-25 13:18:13'),(30,'guanliyuantongzhi_types','管理员通知类型',2,'管理员通知类型2',NULL,NULL,'2022-04-25 13:18:13'),(31,'jiaofei_types','缴费类型',1,'缴费类型1',NULL,NULL,'2022-04-25 13:18:13'),(32,'jiaofei_types','缴费类型',2,'缴费类型2',NULL,NULL,'2022-04-25 13:18:13'),(33,'jiaofei_shifou_types','是否缴费',1,'未缴费',NULL,NULL,'2022-04-25 13:18:13'),(34,'jiaofei_shifou_types','是否缴费',2,'已缴费',NULL,NULL,'2022-04-25 13:18:13'),(35,'zuoye_types','作业类型',4,'作业类型4',NULL,'','2022-04-25 14:37:47');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1',2,'2022-04-25 13:18:25','公告详情1','2022-04-25 13:18:25'),(2,'公告名称2',1,'2022-04-25 13:18:25','公告详情2','2022-04-25 13:18:25'),(3,'公告名称3',2,'2022-04-25 13:18:25','公告详情3','2022-04-25 13:18:25'),(4,'公告名称4',1,'2022-04-25 13:18:25','公告详情4','2022-04-25 13:18:25'),(5,'公告名称5',2,'2022-04-25 13:18:25','公告详情5','2022-04-25 13:18:25');

/*Table structure for table `guanliyuantongzhi` */

DROP TABLE IF EXISTS `guanliyuantongzhi`;

CREATE TABLE `guanliyuantongzhi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jiazhangxuesheng_id` int(11) DEFAULT NULL COMMENT '家长学生',
  `guanliyuantongzhi_name` varchar(200) DEFAULT NULL COMMENT '管理员通知名称 Search111  ',
  `guanliyuantongzhi_types` int(11) NOT NULL COMMENT '管理员通知类型 Search111 ',
  `guanliyuantongzhi_content` text COMMENT '管理员通知内容 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='管理员通知';

/*Data for the table `guanliyuantongzhi` */

insert  into `guanliyuantongzhi`(`id`,`jiazhangxuesheng_id`,`guanliyuantongzhi_name`,`guanliyuantongzhi_types`,`guanliyuantongzhi_content`,`insert_time`,`create_time`) values (1,1,'管理员通知名称1',2,'管理员通知内容1','2022-04-25 13:18:25','2022-04-25 13:18:25'),(2,2,'管理员通知名称2',2,'管理员通知内容2','2022-04-25 13:18:25','2022-04-25 13:18:25'),(3,1,'管理员通知名称3',1,'管理员通知内容3','2022-04-25 13:18:25','2022-04-25 13:18:25'),(4,3,'管理员通知名称4',1,'管理员通知内容4','2022-04-25 13:18:25','2022-04-25 13:18:25'),(5,1,'管理员通知名称5',2,'管理员通知内容5','2022-04-25 13:18:25','2022-04-25 13:18:25');

/*Table structure for table `huida` */

DROP TABLE IF EXISTS `huida`;

CREATE TABLE `huida` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `zuoye_id` int(11) DEFAULT NULL COMMENT '作业',
  `jiazhangxuesheng_id` int(11) DEFAULT NULL COMMENT '家长学生',
  `huifu_file` varchar(200) DEFAULT NULL COMMENT '回答文件',
  `huida_defen` decimal(10,2) DEFAULT NULL COMMENT '作业得分',
  `huida_content` text COMMENT '批改意见',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='回答';

/*Data for the table `huida` */

insert  into `huida`(`id`,`zuoye_id`,`jiazhangxuesheng_id`,`huifu_file`,`huida_defen`,`huida_content`,`create_time`) values (6,2,1,'http://localhost:8080/jiazhangzi/upload/1650868324684.rar',NULL,'','2022-04-25 14:32:06'),(7,4,3,'http://localhost:8080/jiazhangzi/upload/1650868495511.rar','78.00','<p>sfsjfda的誓师大会</p>','2022-04-25 14:34:57'),(8,2,3,'http://localhost:8080/jiazhangzi/upload/1650868506400.rar',NULL,'','2022-04-25 14:35:07');

/*Table structure for table `jiaofei` */

DROP TABLE IF EXISTS `jiaofei`;

CREATE TABLE `jiaofei` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jiazhangxuesheng_id` int(11) DEFAULT NULL COMMENT '家长学生',
  `jiaofei_name` varchar(200) DEFAULT NULL COMMENT '缴费名称 Search111  ',
  `jiaofei_types` int(11) NOT NULL COMMENT '缴费类型 Search111 ',
  `shangdian_shouyin_true_price` decimal(10,2) DEFAULT NULL COMMENT '缴费金额',
  `jiaofei_content` text COMMENT '缴费详情 ',
  `jiaofei_shifou_types` int(11) NOT NULL COMMENT '是否缴费 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='缴费';

/*Data for the table `jiaofei` */

insert  into `jiaofei`(`id`,`jiazhangxuesheng_id`,`jiaofei_name`,`jiaofei_types`,`shangdian_shouyin_true_price`,`jiaofei_content`,`jiaofei_shifou_types`,`insert_time`,`create_time`) values (1,3,'缴费名称1',1,'919.93','缴费详情1',1,'2022-04-25 13:18:25','2022-04-25 13:18:25'),(2,2,'缴费名称2',2,'134.58','缴费详情2',1,'2022-04-25 13:18:25','2022-04-25 13:18:25'),(3,1,'缴费名称3',2,'644.74','缴费详情3',2,'2022-04-25 13:18:25','2022-04-25 13:18:25'),(4,1,'缴费名称4',2,'127.62','缴费详情4',2,'2022-04-25 13:18:25','2022-04-25 13:18:25'),(5,3,'缴费名称5',2,'281.00','缴费详情5',1,'2022-04-25 13:18:25','2022-04-25 13:18:25'),(6,3,'2022年上半年学费',1,'3000.00','<p>大大换大号</p>',1,'2022-04-25 14:19:04','2022-04-25 14:19:04'),(7,1,'2022年下半年学费',2,'999.00','<p>大大换大号</p>',1,'2022-04-25 14:36:03','2022-04-25 14:36:03');

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiaoshi_name` varchar(200) DEFAULT NULL COMMENT '教师姓名 Search111 ',
  `jiaoshi_phone` varchar(200) DEFAULT NULL COMMENT '教师手机号',
  `jiaoshi_id_number` varchar(200) DEFAULT NULL COMMENT '教师身份证号',
  `jiaoshi_photo` varchar(200) DEFAULT NULL COMMENT '教师头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `kemu_types` int(11) DEFAULT NULL COMMENT '科目 Search111 ',
  `jiaoshi_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`username`,`password`,`jiaoshi_name`,`jiaoshi_phone`,`jiaoshi_id_number`,`jiaoshi_photo`,`sex_types`,`kemu_types`,`jiaoshi_email`,`create_time`) values (1,'a1','123456','教师姓名1','17703786901','410224199610232001','http://localhost:8080/jiazhangzi/upload/jiaoshi1.jpg',2,3,'1@qq.com','2022-04-25 13:18:25'),(2,'a2','123456','教师姓名2','17703786902','410224199610232002','http://localhost:8080/jiazhangzi/upload/jiaoshi2.jpg',2,3,'2@qq.com','2022-04-25 13:18:25'),(3,'a3','123456','教师姓名3','17703786903','410224199610232003','http://localhost:8080/jiazhangzi/upload/jiaoshi3.jpg',2,4,'3@qq.com','2022-04-25 13:18:25');

/*Table structure for table `jiazhangxuesheng` */

DROP TABLE IF EXISTS `jiazhangxuesheng`;

CREATE TABLE `jiazhangxuesheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiazhangxuesheng_jiazhangname` varchar(200) DEFAULT NULL COMMENT '家长姓名 Search111 ',
  `jiazhangxuesheng_phone` varchar(200) DEFAULT NULL COMMENT '家长联系方式',
  `jiazhangxuesheng_uuid_number` varchar(200) DEFAULT NULL COMMENT '学号 Search111 ',
  `jiazhangxuesheng_xuesheng` varchar(200) DEFAULT NULL COMMENT '学生姓名 Search111 ',
  `jiazhangxuesheng_id_number` varchar(200) DEFAULT NULL COMMENT '学生身份证号',
  `jiazhangxuesheng_photo` varchar(200) DEFAULT NULL COMMENT '学生头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '学生性别',
  `banji_types` int(11) DEFAULT NULL COMMENT '班级 Search111 ',
  `jiazhangxuesheng_nianji` varchar(200) DEFAULT NULL COMMENT '年级',
  `jiazhangxuesheng_email` varchar(200) DEFAULT NULL COMMENT '联系邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '现有余额',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='家长学生';

/*Data for the table `jiazhangxuesheng` */

insert  into `jiazhangxuesheng`(`id`,`username`,`password`,`jiazhangxuesheng_jiazhangname`,`jiazhangxuesheng_phone`,`jiazhangxuesheng_uuid_number`,`jiazhangxuesheng_xuesheng`,`jiazhangxuesheng_id_number`,`jiazhangxuesheng_photo`,`sex_types`,`banji_types`,`jiazhangxuesheng_nianji`,`jiazhangxuesheng_email`,`new_money`,`create_time`) values (1,'a1','123456','家长姓名1','17703786901','165086390601184','学生姓名1','410224199610232001','http://localhost:8080/jiazhangzi/upload/jiazhangxuesheng1.jpg',1,3,'年级1','1@qq.com','511.88','2022-04-25 13:18:25'),(2,'a2','123456','家长姓名2','17703786902','165086390601144','学生姓名2','410224199610232002','http://localhost:8080/jiazhangzi/upload/jiazhangxuesheng2.jpg',2,1,'年级2','2@qq.com','507.31','2022-04-25 13:18:25'),(3,'a3','123456','家长姓名3','17703786903','165086390601120','学生姓名3','410224199610232003','http://localhost:8080/jiazhangzi/upload/jiazhangxuesheng3.jpg',1,3,'年级3','3@qq.com','509.85','2022-04-25 13:18:25');

/*Table structure for table `kaoshi` */

DROP TABLE IF EXISTS `kaoshi`;

CREATE TABLE `kaoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '教师',
  `banji_types` int(11) DEFAULT NULL COMMENT '班级',
  `kaoshi_uuid_number` varchar(200) DEFAULT NULL COMMENT '考试编号 Search111 ',
  `kaoshi_name` varchar(200) DEFAULT NULL COMMENT '考试名称 Search111 ',
  `kaoshi_nian` varchar(200) DEFAULT NULL COMMENT '年 Search111 ',
  `kaoshi_types` int(11) NOT NULL COMMENT '学期 Search111 ',
  `kaoshi_address` varchar(200) DEFAULT NULL COMMENT '考试地点',
  `kaoshi_time` timestamp NULL DEFAULT NULL COMMENT '考试时间 ',
  `kaoshi_content` text COMMENT '考试详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '考试发布时间 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='考试';

/*Data for the table `kaoshi` */

insert  into `kaoshi`(`id`,`jiaoshi_id`,`banji_types`,`kaoshi_uuid_number`,`kaoshi_name`,`kaoshi_nian`,`kaoshi_types`,`kaoshi_address`,`kaoshi_time`,`kaoshi_content`,`insert_time`,`create_time`) values (1,2,1,'165086390601664','考试名称1','2022',2,'考试地点1','2022-04-25 13:18:25','考试详情1','2022-04-25 13:18:25','2022-04-25 13:18:25'),(2,3,2,'165086390601612','考试名称2','2022',2,'考试地点2','2022-04-25 13:18:25','考试详情2','2022-04-25 13:18:25','2022-04-25 13:18:25'),(3,3,2,'165086390601680','考试名称3','2021',2,'考试地点3','2022-04-25 13:18:25','考试详情3','2022-04-25 13:18:25','2022-04-25 13:18:25'),(4,3,2,'165086390601693','考试名称4','2021',1,'考试地点4','2022-04-25 13:18:25','考试详情4','2022-04-25 13:18:25','2022-04-25 13:18:25'),(5,1,1,'165086390601613','考试名称5','2019',2,'考试地点5','2022-04-25 13:18:25','考试详情5','2022-04-25 13:18:25','2022-04-25 13:18:25');

/*Table structure for table `kebiao` */

DROP TABLE IF EXISTS `kebiao`;

CREATE TABLE `kebiao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `banji_types` int(11) DEFAULT NULL COMMENT '班级 Search111 ',
  `xingqi_types` int(11) DEFAULT NULL COMMENT '星期 Search111 ',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '教师',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='课表';

/*Data for the table `kebiao` */

insert  into `kebiao`(`id`,`banji_types`,`xingqi_types`,`jiaoshi_id`,`create_time`) values (1,1,5,3,'2022-04-25 13:18:25'),(2,1,5,3,'2022-04-25 13:18:25'),(3,4,5,2,'2022-04-25 13:18:25'),(4,2,7,3,'2022-04-25 13:18:25'),(5,3,5,3,'2022-04-25 13:18:25');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','mgtpzsb8i0p8u4j6kbq7wf4ncagnpggm','2022-04-25 13:22:46','2022-04-25 15:37:32'),(2,1,'a1','jiazhangxuesheng','家长学生','ytmvxo3jhixszxr3z3z8def26z86h0sy','2022-04-25 13:44:07','2022-04-25 15:32:54'),(3,1,'a1','jiaoshi','教师','56y7hbj3q8xr3l681n3jjsv1p0wvowvt','2022-04-25 14:01:27','2022-04-25 15:37:10'),(4,2,'a2','jiazhangxuesheng','家长学生','a5yuvyu562efxlu06jh3kr2yg51irqh3','2022-04-25 14:32:23','2022-04-25 15:33:45'),(5,3,'a3','jiazhangxuesheng','家长学生','w404k3um6t7uccpj7tjn8y19pq1c77vv','2022-04-25 14:34:00','2022-04-25 15:34:00'),(6,2,'a2','jiaoshi','教师','gcimu42h7c7o7yvchdttfmozbegs66q1','2022-04-25 14:36:27','2022-04-25 15:36:28');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','admin','管理员','2022-05-02 14:51:13');

/*Table structure for table `yijianjianyi` */

DROP TABLE IF EXISTS `yijianjianyi`;

CREATE TABLE `yijianjianyi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jiazhangxuesheng_id` int(11) DEFAULT NULL COMMENT '家长学生',
  `yijianjianyi_name` varchar(200) DEFAULT NULL COMMENT '意见建议名称 Search111  ',
  `yijianjianyi_types` int(11) NOT NULL COMMENT '意见建议类型 Search111 ',
  `yijianjianyi_content` text COMMENT '意见建议详情 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='意见建议';

/*Data for the table `yijianjianyi` */

insert  into `yijianjianyi`(`id`,`jiazhangxuesheng_id`,`yijianjianyi_name`,`yijianjianyi_types`,`yijianjianyi_content`,`insert_time`,`create_time`) values (1,1,'意见建议名称1',1,'意见建议详情1','2022-04-25 13:18:25','2022-04-25 13:18:25'),(2,2,'意见建议名称2',1,'意见建议详情2','2022-04-25 13:18:25','2022-04-25 13:18:25'),(3,2,'意见建议名称3',1,'意见建议详情3','2022-04-25 13:18:25','2022-04-25 13:18:25'),(4,2,'意见建议名称4',2,'意见建议详情4','2022-04-25 13:18:25','2022-04-25 13:18:25'),(5,2,'意见建议名称5',1,'意见建议详情5','2022-04-25 13:18:25','2022-04-25 13:18:25'),(6,3,'反馈1111',1,'<p>打打杀杀巅峰计划</p>','2022-04-25 14:34:18','2022-04-25 14:34:18');

/*Table structure for table `zuoye` */

DROP TABLE IF EXISTS `zuoye`;

CREATE TABLE `zuoye` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '教师',
  `banji_types` int(11) DEFAULT NULL COMMENT '班级',
  `zuoye_uuid_number` varchar(200) DEFAULT NULL COMMENT '作业唯一编号 Search111 ',
  `zuoye_name` varchar(200) DEFAULT NULL COMMENT '作业名称 Search111 ',
  `zuoye_types` int(11) NOT NULL COMMENT '作业类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '作业发布时间 ',
  `zuoye_file` varchar(200) DEFAULT NULL COMMENT '作业文件',
  `zuoye_content` text COMMENT '作业详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='作业';

/*Data for the table `zuoye` */

insert  into `zuoye`(`id`,`jiaoshi_id`,`banji_types`,`zuoye_uuid_number`,`zuoye_name`,`zuoye_types`,`insert_time`,`zuoye_file`,`zuoye_content`,`create_time`) values (1,1,2,'165086390602720','作业名称1',1,'2022-04-25 13:18:25','http://localhost:8080/jiazhangzi/upload/file.rar','作业详情1','2022-04-25 13:18:25'),(2,3,3,'165086390602744','作业名称2',3,'2022-04-25 13:18:25','http://localhost:8080/jiazhangzi/upload/file.rar','作业详情2','2022-04-25 13:18:25'),(3,3,4,'165086390602735','作业名称3',2,'2022-04-25 13:18:25','http://localhost:8080/jiazhangzi/upload/file.rar','作业详情3','2022-04-25 13:18:25'),(4,1,3,'165086390602770','作业名称4',3,'2022-04-25 13:18:25','http://localhost:8080/jiazhangzi/upload/file.rar','作业详情4','2022-04-25 13:18:25'),(5,3,2,'165086390602723','作业名称5',3,'2022-04-25 13:18:25','http://localhost:8080/jiazhangzi/upload/file.rar','作业详情5','2022-04-25 13:18:25');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
