/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - shequyiyuan
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shequyiyuan` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `shequyiyuan`;

/*Table structure for table `bingli` */

DROP TABLE IF EXISTS `bingli`;

CREATE TABLE `bingli` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `bingli_uuid_number` varchar(200) DEFAULT NULL COMMENT '病例编号',
  `bingli_name` varchar(200) DEFAULT NULL COMMENT '病例名称 Search111',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `bingli_bingqing` varchar(200) DEFAULT NULL COMMENT '病情',
  `jianchaxiangmu` varchar(200) DEFAULT NULL COMMENT '检查项目',
  `jianchajieguo` varchar(200) DEFAULT NULL COMMENT '检查结果',
  `yaodan_text` text COMMENT '药单',
  `bingli_file` varchar(200) DEFAULT NULL COMMENT '病例附件',
  `bingli_time` date DEFAULT NULL COMMENT '日期',
  `yisheng_id` int(200) DEFAULT NULL COMMENT '医生',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='病例信息';

/*Data for the table `bingli` */

insert  into `bingli`(`id`,`bingli_uuid_number`,`bingli_name`,`yonghu_id`,`bingli_bingqing`,`jianchaxiangmu`,`jianchajieguo`,`yaodan_text`,`bingli_file`,`bingli_time`,`yisheng_id`,`create_time`) values (1,'164612270961915','病例名称1',3,'病情1','检查项目1','检查结果1','药单1','http://localhost:8080/shequyiyuan/upload/file.rar','2022-03-01',1,'2022-03-01 16:18:29'),(2,'16461227096198','病例名称2',2,'病情2','检查项目2','检查结果2','药单2','http://localhost:8080/shequyiyuan/upload/file.rar','2022-03-01',3,'2022-03-01 16:18:29'),(3,'16461227096197','病例名称3',2,'病情3','检查项目3','检查结果3','药单3','http://localhost:8080/shequyiyuan/upload/file.rar','2022-03-01',1,'2022-03-01 16:18:29'),(4,'164612270961913','病例名称4',3,'病情4','检查项目4','检查结果4','药单4','http://localhost:8080/shequyiyuan/upload/file.rar','2022-03-01',3,'2022-03-01 16:18:29'),(5,'16461227096199','病例名称5',2,'病情5','检查项目5','检查结果5','药单5','http://localhost:8080/shequyiyuan/upload/file.rar','2022-03-01',1,'2022-03-01 16:18:29');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'keshi_types','科室',1,'科室1',NULL,NULL,'2022-03-01 16:18:21'),(2,'keshi_types','科室',2,'科室2',NULL,NULL,'2022-03-01 16:18:21'),(3,'keshi_types','科室',3,'科室3',NULL,NULL,'2022-03-01 16:18:21'),(4,'jiuankangdangan_types','档案单位',1,'家庭',NULL,NULL,'2022-03-01 16:18:21'),(5,'jiuankangdangan_types','档案单位',2,'个人',NULL,NULL,'2022-03-01 16:18:21'),(6,'jiuankangdangan_types','档案单位',3,'特殊人群',NULL,NULL,'2022-03-01 16:18:21'),(7,'sex_types','性别',1,'男',NULL,NULL,'2022-03-01 16:18:21'),(8,'sex_types','性别',2,'女',NULL,NULL,'2022-03-01 16:18:21');

/*Table structure for table `jiatingyisheng` */

DROP TABLE IF EXISTS `jiatingyisheng`;

CREATE TABLE `jiatingyisheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `qiantai_name` varchar(200) DEFAULT NULL COMMENT '家庭医生负责人姓名 Search111 ',
  `qiantai_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `qiantai_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `qiantai_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `qiantai_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='家庭医生';

/*Data for the table `jiatingyisheng` */

insert  into `jiatingyisheng`(`id`,`username`,`password`,`qiantai_name`,`qiantai_photo`,`sex_types`,`qiantai_phone`,`qiantai_email`,`qiantai_delete`,`create_time`) values (1,'a1','123456','家庭医生负责人姓名1','http://localhost:8080/shequyiyuan/upload/jiatingyisheng1.jpg',2,'17703786901','1@qq.com',98,'2022-03-01 16:18:29'),(2,'a2','123456','家庭医生负责人姓名2','http://localhost:8080/shequyiyuan/upload/jiatingyisheng2.jpg',1,'17703786902','2@qq.com',138,'2022-03-01 16:18:29'),(3,'a3','123456','家庭医生负责人姓名3','http://localhost:8080/shequyiyuan/upload/jiatingyisheng3.jpg',1,'17703786903','3@qq.com',130,'2022-03-01 16:18:29'),(4,'a4','123456','家庭医生负责人姓名4','http://localhost:8080/shequyiyuan/upload/1646123806786.jpg',1,'17703786904','4@qq.com',345,'2022-03-01 16:18:29'),(5,'a5','123456','家庭医生负责人姓名5','http://localhost:8080/shequyiyuan/upload/1646123800069.jpg',2,'17703786905','5@qq.com',391,'2022-03-01 16:18:29');

/*Table structure for table `jiuankangdangan` */

DROP TABLE IF EXISTS `jiuankangdangan`;

CREATE TABLE `jiuankangdangan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(200) DEFAULT NULL COMMENT '用户',
  `jiuankangdangan_name` varchar(255) DEFAULT NULL COMMENT '档案标题',
  `jiuankangdangan_qita` varchar(255) DEFAULT NULL COMMENT '其他成员',
  `jiuankangdangan_types` int(11) DEFAULT NULL COMMENT '档案单位 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '记录时间',
  `jiuankangdangan_content` text COMMENT '健康状况',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='健康档案';

/*Data for the table `jiuankangdangan` */

insert  into `jiuankangdangan`(`id`,`yonghu_id`,`jiuankangdangan_name`,`jiuankangdangan_qita`,`jiuankangdangan_types`,`insert_time`,`jiuankangdangan_content`,`create_time`) values (1,3,'档案标题1','其他成员1',1,'2022-03-01 16:18:29','健康状况1','2022-03-01 16:18:29'),(2,3,'档案标题2','其他成员2',3,'2022-03-01 16:18:29','健康状况2','2022-03-01 16:18:29'),(3,1,'档案标题3','其他成员3',3,'2022-03-01 16:18:29','健康状况3','2022-03-01 16:18:29'),(4,3,'档案标题4','其他成员4',1,'2022-03-01 16:18:29','健康状况4','2022-03-01 16:18:29'),(5,2,'档案标题5','其他成员5',3,'2022-03-01 16:18:29','健康状况5','2022-03-01 16:18:29');

/*Table structure for table `jiuzhen` */

DROP TABLE IF EXISTS `jiuzhen`;

CREATE TABLE `jiuzhen` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jiuzhen_jiuzhen` varchar(200) DEFAULT NULL COMMENT '就诊号 Search111',
  `jiuzhen_feiyong` varchar(200) DEFAULT NULL COMMENT '就诊费用',
  `keshi_types` int(11) DEFAULT NULL COMMENT '科室 Search111',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '日期',
  `jiuzhen_text` text COMMENT '挂号备注',
  `jiuzhen_content` text COMMENT '挂号详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='就诊信息';

/*Data for the table `jiuzhen` */

insert  into `jiuzhen`(`id`,`yonghu_id`,`jiuzhen_jiuzhen`,`jiuzhen_feiyong`,`keshi_types`,`insert_time`,`jiuzhen_text`,`jiuzhen_content`,`create_time`) values (1,1,'就诊号1','就诊费用1',3,'2022-03-01 16:18:29','挂号备注1','挂号详情1','2022-03-01 16:18:29'),(2,1,'就诊号2','就诊费用2',1,'2022-03-01 16:18:29','挂号备注2','挂号详情2','2022-03-01 16:18:29'),(3,3,'就诊号3','就诊费用3',3,'2022-03-01 16:18:29','挂号备注3','挂号详情3','2022-03-01 16:18:29'),(4,1,'就诊号4','就诊费用4',3,'2022-03-01 16:18:29','挂号备注4','挂号详情4','2022-03-01 16:18:29'),(5,3,'就诊号5','就诊费用5',1,'2022-03-01 16:18:29','挂号备注5','挂号详情5','2022-03-01 16:18:29'),(6,3,'111','111',3,'2022-03-01 16:45:12','11111','<p>1111</p>','2022-03-01 16:45:12');

/*Table structure for table `qiantai` */

DROP TABLE IF EXISTS `qiantai`;

CREATE TABLE `qiantai` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `qiantai_uuid_number` varchar(200) DEFAULT NULL COMMENT '工号 Search111 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `qiantai_name` varchar(200) DEFAULT NULL COMMENT '前台姓名 Search111 ',
  `qiantai_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `qiantai_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `qiantai_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `qiantai_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='前台';

/*Data for the table `qiantai` */

insert  into `qiantai`(`id`,`qiantai_uuid_number`,`username`,`password`,`qiantai_name`,`qiantai_photo`,`sex_types`,`qiantai_phone`,`qiantai_email`,`qiantai_delete`,`create_time`) values (1,'164612270963911','a1','123456','前台姓名1','http://localhost:8080/shequyiyuan/upload/qiantai1.jpg',2,'17703786901','1@qq.com',1,'2022-03-01 16:18:29'),(2,'16461227096393','a2','123456','前台姓名2','http://localhost:8080/shequyiyuan/upload/qiantai2.jpg',1,'17703786902','2@qq.com',1,'2022-03-01 16:18:29'),(3,'164612270963915','a3','123456','前台姓名3','http://localhost:8080/shequyiyuan/upload/qiantai3.jpg',2,'17703786903','3@qq.com',1,'2022-03-01 16:18:29');

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','6bhc5qr83yz80dnz4kaxe84pe5cfq3vd','2022-03-01 16:36:10','2022-03-01 18:07:15'),(2,1,'a1','qiantai','前台','6wzv18qhcq5wuibc8g6d6zculm1jn4hq','2022-03-01 16:44:51','2022-03-01 17:44:52'),(5,1,'a1','yisheng','医生','fa8f3ulo6793zb938s5u3i2ejxhyo2c9','2022-03-01 16:58:01','2022-03-01 17:58:56'),(6,1,'a1','yonghu','用户','lk2tu67pn4h3jxewo1rmhq9nspzvj9pv','2022-03-01 17:00:36','2022-03-01 18:00:37'),(7,2,'a2','yonghu','用户','rk81amvy8r6q5rct2sdqtdzry8xeu1zq','2022-03-01 17:00:48','2022-03-01 18:00:48');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `yaopin` */

DROP TABLE IF EXISTS `yaopin`;

CREATE TABLE `yaopin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yaopin_uuid_number` varchar(200) DEFAULT NULL COMMENT '药品编号',
  `yaopin_name` varchar(200) DEFAULT NULL COMMENT '药品名称 Search111',
  `yaopin_new_money` decimal(10,2) DEFAULT NULL COMMENT '药品价格',
  `yaopin_kucun_number` int(11) DEFAULT NULL COMMENT '药品库存',
  `yaopin_zuoyong` varchar(200) DEFAULT NULL COMMENT '主要药效',
  `fuzuoyong` varchar(200) DEFAULT NULL COMMENT '副作用',
  `yaopin_content` text COMMENT '药品详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='药品';

/*Data for the table `yaopin` */

insert  into `yaopin`(`id`,`yaopin_uuid_number`,`yaopin_name`,`yaopin_new_money`,`yaopin_kucun_number`,`yaopin_zuoyong`,`fuzuoyong`,`yaopin_content`,`create_time`) values (1,'164612270964616','药品名称1','190.10',10001,'主要药效1','副作用1','药品详情1','2022-03-01 16:18:29'),(2,'16461227096462','药品名称2','102.14',10002,'主要药效2','副作用2','药品详情2','2022-03-01 16:18:29'),(3,'16461227096462','药品名称3','130.35',10003,'主要药效3','副作用3','药品详情3','2022-03-01 16:18:29'),(4,'16461227096462','药品名称4','485.08',10004,'主要药效4','副作用4','药品详情4','2022-03-01 16:18:29'),(5,'16461227096465','药品名称5','379.93',10005,'主要药效5','副作用5','药品详情5','2022-03-01 16:18:29');

/*Table structure for table `yisheng` */

DROP TABLE IF EXISTS `yisheng`;

CREATE TABLE `yisheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yisheng_uuid_number` varchar(200) DEFAULT NULL COMMENT '工号 Search111 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yisheng_name` varchar(200) DEFAULT NULL COMMENT '医生姓名 Search111 ',
  `yisheng_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `yisheng_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yisheng_id_number` varchar(200) DEFAULT NULL COMMENT '医生身份证号 ',
  `yisheng_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yisheng_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='医生';

/*Data for the table `yisheng` */

insert  into `yisheng`(`id`,`yisheng_uuid_number`,`username`,`password`,`yisheng_name`,`yisheng_photo`,`sex_types`,`yisheng_phone`,`yisheng_id_number`,`yisheng_email`,`yisheng_delete`,`create_time`) values (1,'16461227096529','a1','123456','医生姓名1','http://localhost:8080/shequyiyuan/upload/yisheng1.jpg',2,'17703786901','410224199610232001','1@qq.com',1,'2022-03-01 16:18:29'),(2,'16461227096530','a2','123456','医生姓名2','http://localhost:8080/shequyiyuan/upload/yisheng2.jpg',2,'17703786902','410224199610232002','2@qq.com',1,'2022-03-01 16:18:29'),(3,'164612270965315','a3','123456','医生姓名3','http://localhost:8080/shequyiyuan/upload/yisheng3.jpg',1,'17703786903','410224199610232003','3@qq.com',1,'2022-03-01 16:18:29');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`sex_types`,`yonghu_phone`,`yonghu_id_number`,`yonghu_email`,`yonghu_delete`,`create_time`) values (1,'a1','123456','用户姓名1','http://localhost:8080/shequyiyuan/upload/yonghu1.jpg',1,'17703786901','410224199610232001','1@qq.com',1,'2022-03-01 16:18:29'),(2,'a2','123456','用户姓名2','http://localhost:8080/shequyiyuan/upload/yonghu2.jpg',1,'17703786902','410224199610232002','2@qq.com',1,'2022-03-01 16:18:29'),(3,'a3','123456','用户姓名3','http://localhost:8080/shequyiyuan/upload/yonghu3.jpg',2,'17703786903','410224199610232003','3@qq.com',1,'2022-03-01 16:18:29');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
