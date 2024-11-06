/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssms7ukv
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssms7ukv` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssms7ukv`;

/*Table structure for table `chongzhixinxi` */

DROP TABLE IF EXISTS `chongzhixinxi`;

CREATE TABLE `chongzhixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huiyuanhao` varchar(200) DEFAULT NULL COMMENT '会员号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `jine` float NOT NULL COMMENT '金额',
  `chongzhiriqi` date DEFAULT NULL COMMENT '充值日期',
  `beizhu` longtext COMMENT '备注',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618365005559 DEFAULT CHARSET=utf8 COMMENT='充值信息';

/*Data for the table `chongzhixinxi` */

insert  into `chongzhixinxi`(`id`,`addtime`,`huiyuanhao`,`xingming`,`jine`,`chongzhiriqi`,`beizhu`,`ispay`) values (91,'2021-04-14 09:46:25','会员号1','姓名1',1,'2021-04-14','备注1','未支付'),(92,'2021-04-14 09:46:25','会员号2','姓名2',2,'2021-04-14','备注2','未支付'),(93,'2021-04-14 09:46:25','会员号3','姓名3',3,'2021-04-14','备注3','未支付'),(94,'2021-04-14 09:46:25','会员号4','姓名4',4,'2021-04-14','备注4','未支付'),(95,'2021-04-14 09:46:25','会员号5','姓名5',5,'2021-04-14','备注5','未支付'),(96,'2021-04-14 09:46:25','会员号6','姓名6',6,'2021-04-14','备注6','未支付'),(1618365005558,'2021-04-14 09:50:05','001','李辉',250,'2021-04-14','金额充值','已支付');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssms7ukv/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssms7ukv/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssms7ukv/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `huiyuan` */

DROP TABLE IF EXISTS `huiyuan`;

CREATE TABLE `huiyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huiyuanhao` varchar(200) NOT NULL COMMENT '会员号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `huiyuanhao` (`huiyuanhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618364871684 DEFAULT CHARSET=utf8 COMMENT='会员';

/*Data for the table `huiyuan` */

insert  into `huiyuan`(`id`,`addtime`,`huiyuanhao`,`mima`,`xingming`,`xingbie`,`touxiang`,`shouji`) values (11,'2021-04-14 09:46:25','会员1','123456','姓名1','男','http://localhost:8080/ssms7ukv/upload/huiyuan_touxiang1.jpg','13823888881'),(12,'2021-04-14 09:46:25','会员2','123456','姓名2','男','http://localhost:8080/ssms7ukv/upload/huiyuan_touxiang2.jpg','13823888882'),(13,'2021-04-14 09:46:25','会员3','123456','姓名3','男','http://localhost:8080/ssms7ukv/upload/huiyuan_touxiang3.jpg','13823888883'),(14,'2021-04-14 09:46:25','会员4','123456','姓名4','男','http://localhost:8080/ssms7ukv/upload/huiyuan_touxiang4.jpg','13823888884'),(15,'2021-04-14 09:46:25','会员5','123456','姓名5','男','http://localhost:8080/ssms7ukv/upload/huiyuan_touxiang5.jpg','13823888885'),(16,'2021-04-14 09:46:25','会员6','123456','姓名6','男','http://localhost:8080/ssms7ukv/upload/huiyuan_touxiang6.jpg','13823888886'),(1618364871683,'2021-04-14 09:47:51','001','001','李辉',NULL,NULL,'15212412141');

/*Table structure for table `jiezhangxinxi` */

DROP TABLE IF EXISTS `jiezhangxinxi`;

CREATE TABLE `jiezhangxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huiyuanhao` varchar(200) DEFAULT NULL COMMENT '会员号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `jine` int(11) NOT NULL COMMENT '金额',
  `jiezhangriqi` date DEFAULT NULL COMMENT '结账日期',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618365080631 DEFAULT CHARSET=utf8 COMMENT='结账信息';

/*Data for the table `jiezhangxinxi` */

insert  into `jiezhangxinxi`(`id`,`addtime`,`huiyuanhao`,`xingming`,`jine`,`jiezhangriqi`,`beizhu`) values (101,'2021-04-14 09:46:25','会员号1','姓名1',1,'2021-04-14','备注1'),(102,'2021-04-14 09:46:25','会员号2','姓名2',2,'2021-04-14','备注2'),(103,'2021-04-14 09:46:25','会员号3','姓名3',3,'2021-04-14','备注3'),(104,'2021-04-14 09:46:25','会员号4','姓名4',4,'2021-04-14','备注4'),(105,'2021-04-14 09:46:25','会员号5','姓名5',5,'2021-04-14','备注5'),(106,'2021-04-14 09:46:25','会员号6','姓名6',6,'2021-04-14','备注6'),(1618365080630,'2021-04-14 09:51:19','001','李辉',100,'2021-04-14','共消费100元');

/*Table structure for table `qiuzhuoyuyue` */

DROP TABLE IF EXISTS `qiuzhuoyuyue`;

CREATE TABLE `qiuzhuoyuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `zhuohao` varchar(200) DEFAULT NULL COMMENT '桌号',
  `xiaoshijiage` float DEFAULT NULL COMMENT '小时价格',
  `yuyueriqi` datetime DEFAULT NULL COMMENT '预约日期',
  `huiyuanhao` varchar(200) DEFAULT NULL COMMENT '会员号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618364976689 DEFAULT CHARSET=utf8 COMMENT='球桌预约';

/*Data for the table `qiuzhuoyuyue` */

insert  into `qiuzhuoyuyue`(`id`,`addtime`,`dingdanbianhao`,`zhuohao`,`xiaoshijiage`,`yuyueriqi`,`huiyuanhao`,`xingming`,`shouji`,`sfsh`,`shhf`) values (31,'2021-04-14 09:46:25','订单编号1','桌号1',1,'2021-04-14 09:46:25','会员号1','姓名1','手机1','是',''),(32,'2021-04-14 09:46:25','订单编号2','桌号2',2,'2021-04-14 09:46:25','会员号2','姓名2','手机2','是',''),(33,'2021-04-14 09:46:25','订单编号3','桌号3',3,'2021-04-14 09:46:25','会员号3','姓名3','手机3','是',''),(34,'2021-04-14 09:46:25','订单编号4','桌号4',4,'2021-04-14 09:46:25','会员号4','姓名4','手机4','是',''),(35,'2021-04-14 09:46:25','订单编号5','桌号5',5,'2021-04-14 09:46:25','会员号5','姓名5','手机5','是',''),(36,'2021-04-14 09:46:25','订单编号6','桌号6',6,'2021-04-14 09:46:25','会员号6','姓名6','手机6','是',''),(1618364976688,'2021-04-14 09:49:35','1618364971717','A101',5,'2021-04-14 09:49:31','001','李辉','15212412141','是','预约成功');

/*Table structure for table `shangpingoumai` */

DROP TABLE IF EXISTS `shangpingoumai`;

CREATE TABLE `shangpingoumai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) NOT NULL COMMENT '商品类型',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `jiage` int(11) NOT NULL COMMENT '价格',
  `zongjiage` varchar(200) DEFAULT NULL COMMENT '总价格',
  `goumairiqi` date DEFAULT NULL COMMENT '购买日期',
  `huiyuanhao` varchar(200) DEFAULT NULL COMMENT '会员号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618364987947 DEFAULT CHARSET=utf8 COMMENT='商品购买';

/*Data for the table `shangpingoumai` */

insert  into `shangpingoumai`(`id`,`addtime`,`dingdanbianhao`,`shangpinmingcheng`,`shangpinleixing`,`shuliang`,`jiage`,`zongjiage`,`goumairiqi`,`huiyuanhao`,`xingming`) values (71,'2021-04-14 09:46:25','订单编号1','商品名称1','商品类型1',1,1,'总价格1','2021-04-14','会员号1','姓名1'),(72,'2021-04-14 09:46:25','订单编号2','商品名称2','商品类型2',2,2,'总价格2','2021-04-14','会员号2','姓名2'),(73,'2021-04-14 09:46:25','订单编号3','商品名称3','商品类型3',3,3,'总价格3','2021-04-14','会员号3','姓名3'),(74,'2021-04-14 09:46:25','订单编号4','商品名称4','商品类型4',4,4,'总价格4','2021-04-14','会员号4','姓名4'),(75,'2021-04-14 09:46:25','订单编号5','商品名称5','商品类型5',5,5,'总价格5','2021-04-14','会员号5','姓名5'),(76,'2021-04-14 09:46:25','订单编号6','商品名称6','商品类型6',6,6,'总价格6','2021-04-14','会员号6','姓名6'),(1618364987946,'2021-04-14 09:49:47','1618364981161','士力架','零食',5,15,'75','2021-04-14','001','李辉');

/*Table structure for table `shangpinleixing` */

DROP TABLE IF EXISTS `shangpinleixing`;

CREATE TABLE `shangpinleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinleixing` varchar(200) NOT NULL COMMENT '商品类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='商品类型';

/*Data for the table `shangpinleixing` */

insert  into `shangpinleixing`(`id`,`addtime`,`shangpinleixing`) values (51,'2021-04-14 09:46:25','饮料'),(52,'2021-04-14 09:46:25','零食'),(53,'2021-04-14 09:46:25','商品类型3'),(54,'2021-04-14 09:46:25','商品类型4'),(55,'2021-04-14 09:46:25','商品类型5'),(56,'2021-04-14 09:46:25','商品类型6');

/*Table structure for table `shangpinxinxi` */

DROP TABLE IF EXISTS `shangpinxinxi`;

CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) NOT NULL COMMENT '商品类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `jiage` int(11) NOT NULL COMMENT '价格',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='商品信息';

/*Data for the table `shangpinxinxi` */

insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinleixing`,`tupian`,`jiage`,`shuliang`,`faburiqi`) values (61,'2021-04-14 09:46:25','士力架','零食','http://localhost:8080/ssms7ukv/upload/shangpinxinxi_tupian1.jpg',15,95,'2021-04-14'),(62,'2021-04-14 09:46:25','商品名称2','商品类型2','http://localhost:8080/ssms7ukv/upload/shangpinxinxi_tupian2.jpg',2,2,'2021-04-14'),(63,'2021-04-14 09:46:25','商品名称3','商品类型3','http://localhost:8080/ssms7ukv/upload/shangpinxinxi_tupian3.jpg',3,3,'2021-04-14'),(64,'2021-04-14 09:46:25','商品名称4','商品类型4','http://localhost:8080/ssms7ukv/upload/shangpinxinxi_tupian4.jpg',4,4,'2021-04-14'),(65,'2021-04-14 09:46:25','商品名称5','商品类型5','http://localhost:8080/ssms7ukv/upload/shangpinxinxi_tupian5.jpg',5,5,'2021-04-14'),(66,'2021-04-14 09:46:25','商品名称6','商品类型6','http://localhost:8080/ssms7ukv/upload/shangpinxinxi_tupian6.jpg',6,6,'2021-04-14');

/*Table structure for table `shiyongdingdan` */

DROP TABLE IF EXISTS `shiyongdingdan`;

CREATE TABLE `shiyongdingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `zhuohao` varchar(200) DEFAULT NULL COMMENT '桌号',
  `xiaoshijiage` float NOT NULL COMMENT '小时价格',
  `shiyongshizhang` float NOT NULL COMMENT '使用时长',
  `zongjiage` varchar(200) DEFAULT NULL COMMENT '总价格',
  `shiyongriqi` date DEFAULT NULL COMMENT '使用日期',
  `huiyuanhao` varchar(200) DEFAULT NULL COMMENT '会员号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618365050436 DEFAULT CHARSET=utf8 COMMENT='使用订单';

/*Data for the table `shiyongdingdan` */

insert  into `shiyongdingdan`(`id`,`addtime`,`dingdanbianhao`,`zhuohao`,`xiaoshijiage`,`shiyongshizhang`,`zongjiage`,`shiyongriqi`,`huiyuanhao`,`xingming`) values (41,'2021-04-14 09:46:25','订单编号1','桌号1',1,1,'总价格1','2021-04-14','会员号1','姓名1'),(42,'2021-04-14 09:46:25','订单编号2','桌号2',2,2,'总价格2','2021-04-14','会员号2','姓名2'),(43,'2021-04-14 09:46:25','订单编号3','桌号3',3,3,'总价格3','2021-04-14','会员号3','姓名3'),(44,'2021-04-14 09:46:25','订单编号4','桌号4',4,4,'总价格4','2021-04-14','会员号4','姓名4'),(45,'2021-04-14 09:46:25','订单编号5','桌号5',5,5,'总价格5','2021-04-14','会员号5','姓名5'),(46,'2021-04-14 09:46:25','订单编号6','桌号6',6,6,'总价格6','2021-04-14','会员号6','姓名6'),(1618365050435,'2021-04-14 09:50:49','1618364971717','A101',5,5,'25','2021-04-14','001','李辉');

/*Table structure for table `taiqiuzhuo` */

DROP TABLE IF EXISTS `taiqiuzhuo`;

CREATE TABLE `taiqiuzhuo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhuohao` varchar(200) NOT NULL COMMENT '桌号',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `xiaoshijiage` float NOT NULL COMMENT '小时价格',
  `qiuzhuojieshao` longtext COMMENT '球桌介绍',
  `keyueshijian` varchar(200) DEFAULT NULL COMMENT '可约时间',
  `zhuangtai` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhuohao` (`zhuohao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='台球桌';

/*Data for the table `taiqiuzhuo` */

insert  into `taiqiuzhuo`(`id`,`addtime`,`zhuohao`,`tupian`,`xiaoshijiage`,`qiuzhuojieshao`,`keyueshijian`,`zhuangtai`) values (21,'2021-04-14 09:46:25','A101','http://localhost:8080/ssms7ukv/upload/taiqiuzhuo_tupian1.jpg',5,'<p>球桌介绍1<img src=\"http://localhost:8080/ssms7ukv/upload/1618364908320.jpg\"></p><p>这里可以发布一些相关内容介绍的，这里的所有内容都是用于测试的可以自行添加修改删除的。。</p>','8-22点','空闲'),(22,'2021-04-14 09:46:25','桌号2','http://localhost:8080/ssms7ukv/upload/taiqiuzhuo_tupian2.jpg',2,'球桌介绍2','可约时间2','空闲'),(23,'2021-04-14 09:46:25','桌号3','http://localhost:8080/ssms7ukv/upload/taiqiuzhuo_tupian3.jpg',3,'球桌介绍3','可约时间3','空闲'),(24,'2021-04-14 09:46:25','桌号4','http://localhost:8080/ssms7ukv/upload/taiqiuzhuo_tupian4.jpg',4,'球桌介绍4','可约时间4','空闲'),(25,'2021-04-14 09:46:25','桌号5','http://localhost:8080/ssms7ukv/upload/taiqiuzhuo_tupian5.jpg',5,'球桌介绍5','可约时间5','空闲'),(26,'2021-04-14 09:46:25','桌号6','http://localhost:8080/ssms7ukv/upload/taiqiuzhuo_tupian6.jpg',6,'球桌介绍6','可约时间6','空闲');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','jvykavtsm03f0lkj1vha2m4q4z184c3v','2021-04-14 09:47:38','2021-04-14 10:50:23'),(2,1618364871683,'001','huiyuan','会员','mqkt357nj8xpxo67db5j11gipvz58nxx','2021-04-14 09:49:29','2021-04-14 10:51:32');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-14 09:46:25');

/*Table structure for table `yuexinxi` */

DROP TABLE IF EXISTS `yuexinxi`;

CREATE TABLE `yuexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huiyuanhao` varchar(200) DEFAULT NULL COMMENT '会员号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `jine` float NOT NULL COMMENT '金额',
  `riqi` datetime DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618364881353 DEFAULT CHARSET=utf8 COMMENT='余额信息';

/*Data for the table `yuexinxi` */

insert  into `yuexinxi`(`id`,`addtime`,`huiyuanhao`,`xingming`,`jine`,`riqi`) values (81,'2021-04-14 09:46:25','会员号1','姓名1',1,'2021-04-14 09:46:25'),(82,'2021-04-14 09:46:25','会员号2','姓名2',2,'2021-04-14 09:46:25'),(83,'2021-04-14 09:46:25','会员号3','姓名3',3,'2021-04-14 09:46:25'),(84,'2021-04-14 09:46:25','会员号4','姓名4',4,'2021-04-14 09:46:25'),(85,'2021-04-14 09:46:25','会员号5','姓名5',5,'2021-04-14 09:46:25'),(86,'2021-04-14 09:46:25','会员号6','姓名6',6,'2021-04-14 09:46:25'),(1618364881352,'2021-04-14 09:48:00','001','李辉',150,'2021-04-14 09:47:56');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
