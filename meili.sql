/*
SQLyog Trial v8.4 
MySQL - 5.6.21-log : Database - meilichannel
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`meilichannel` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `meilichannel`;

/*Table structure for table `t_collection` */

DROP TABLE IF EXISTS `t_collection`;

CREATE TABLE `t_collection` (
  `collection_id` varchar(32) NOT NULL COMMENT '收藏店铺编号',
  `user_id` varchar(32) DEFAULT NULL COMMENT '用户编号',
  `shop_id` varchar(32) DEFAULT NULL COMMENT '商店编号',
  `pro_id` varchar(32) DEFAULT NULL COMMENT '作品编号',
  `createKey` varchar(36) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifierKey` varchar(36) DEFAULT NULL,
  `modifyDate` datetime DEFAULT NULL,
  `deleteFlag` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏店铺表';

/*Data for the table `t_collection` */

/*Table structure for table `t_gt_dictionary` */

DROP TABLE IF EXISTS `t_gt_dictionary`;

CREATE TABLE `t_gt_dictionary` (
  `DictionaryKey` varchar(32) NOT NULL COMMENT '主键',
  `GroupCode` varchar(50) DEFAULT NULL,
  `GroupLabel` varchar(50) DEFAULT NULL,
  `ItemCode` int(11) DEFAULT NULL,
  `ItemLabel` varchar(50) DEFAULT NULL,
  `ItemSequence` int(11) DEFAULT NULL,
  `Remark` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`DictionaryKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_gt_dictionary` */

insert  into `t_gt_dictionary`(`DictionaryKey`,`GroupCode`,`GroupLabel`,`ItemCode`,`ItemLabel`,`ItemSequence`,`Remark`) values ('0b0dde6e-0b51-4ce2-8afe-7c40919b','shopType','店铺类型',1,'美容',1,NULL),('0b0dde6e-0b51-4ce2-8ffa-0c40914b','shopType','店铺类型',2,'美发',2,NULL),('0b0dde6e-0b51-4ce2-8ffe-0c40914b','payState','付款状态',3,'交易成功',3,'成功'),('0b0dde6e-0b51-4ce2-8ffe-0c40919b','payState','付款状态',2,'已付款',2,'已付款'),('0b0dde6e-0b51-4ce2-8ffe-0c40979b','payState','付款状态',1,'待付款',1,''),('0b0dde6e-0b51-4ce2-8ffe-0g40919b','overallStatus','评价',1,'好评',1,NULL),('0b0dde6e-0b51-4ce2-8ffe-0j40919b','overallStatus','评价',2,'中评',2,NULL),('0b0dde6e-0b51-4ce2-8ffe-0k40919b','overallStatus','评价',3,'差评',3,NULL),('0b0dde6e-0b51-4ce2-8ffe-7c40919b','payState','付款状态',4,'交流失败，已取消订单',4,NULL),('0b0dde6e-0b51-4ce6-1ffa-0c40914b','roleType','用户权限',1,'普通用户',1,NULL),('0b0dde6e-0b51-4ce6-2ffa-0c40914b','roleType','用户权限',2,'商家',2,NULL),('0b0dde6e-0b51-4ce6-3ffa-0c40914b','roleType','用户权限',3,'管理员',3,NULL),('0b0dde6e-0b51-4ce6-8ffa-0c40914b','shopType','店铺类型',3,'美甲',3,NULL);

/*Table structure for table `t_login_log` */

DROP TABLE IF EXISTS `t_login_log`;

CREATE TABLE `t_login_log` (
  `login_log_id` varchar(32) NOT NULL COMMENT '日志编号',
  `user_id` varchar(32) DEFAULT NULL COMMENT '用户编号',
  `ip` varchar(23) DEFAULT NULL COMMENT 'IP地址',
  `login_datetime` datetime DEFAULT NULL COMMENT '日志时间',
  `createKey` varchar(36) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifierKey` varchar(36) DEFAULT NULL,
  `modifyDate` datetime DEFAULT NULL,
  `deleteFlag` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`login_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='日志表格';

/*Data for the table `t_login_log` */

insert  into `t_login_log`(`login_log_id`,`user_id`,`ip`,`login_datetime`,`createKey`,`createDate`,`modifierKey`,`modifyDate`,`deleteFlag`) values ('1','1','0:0:0:0:0:0:0:1','2015-06-14 12:10:40',NULL,NULL,NULL,NULL,NULL),('2','1','0:0:0:0:0:0:0:1','2015-06-14 12:15:53',NULL,NULL,NULL,NULL,NULL),('3','1','0:0:0:0:0:0:0:1','2015-06-14 12:18:47',NULL,NULL,NULL,NULL,NULL),('4','1','0:0:0:0:0:0:0:1','2015-06-14 13:20:07',NULL,NULL,NULL,NULL,NULL),('5','1','0:0:0:0:0:0:0:1','2015-06-14 13:20:50',NULL,NULL,NULL,NULL,NULL),('6','1','0:0:0:0:0:0:0:1','2015-06-14 13:20:59',NULL,NULL,NULL,NULL,NULL),('7','1','0:0:0:0:0:0:0:1','2015-06-14 13:28:09',NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `t_member` */

DROP TABLE IF EXISTS `t_member`;

CREATE TABLE `t_member` (
  `member_id` varchar(80) NOT NULL COMMENT '员工ID',
  `member_name` varchar(20) DEFAULT NULL COMMENT '员工名字',
  `introduction` varchar(50) DEFAULT NULL COMMENT '简介',
  `member_type` int(4) DEFAULT NULL COMMENT '员工类型',
  `merchont_id` varchar(32) DEFAULT NULL COMMENT '商家ID',
  `image_address` varchar(200) DEFAULT NULL,
  `image_name` varchar(50) DEFAULT NULL,
  `createKey` varchar(36) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifierKey` varchar(36) DEFAULT NULL,
  `modifyDate` datetime DEFAULT NULL,
  `deleteFlag` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='员工信息表';

/*Data for the table `t_member` */

insert  into `t_member`(`member_id`,`member_name`,`introduction`,`member_type`,`merchont_id`,`image_address`,`image_name`,`createKey`,`createDate`,`modifierKey`,`modifyDate`,`deleteFlag`) values ('1','dl','让你的头发无懈可击',1,'4','D:meifadianworkspacesmeifadian.metadata.pluginsorg.eclipse.wst.server.core	mp0wtpwebappscme/static/photo/001 (1).jpg','001 (1).jpg',NULL,NULL,NULL,NULL,NULL),('957862dd-fc38-4b7b-826d-c655bb24b14f','efw','wfwf',3,'4','D:\\never\\lifadian\\workspaces\\lifadian4\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\cme/static/photo/201104211367.jpg','201104211367.jpg',NULL,NULL,NULL,NULL,NULL),('b834d111-3c8a-4199-9dcb-51fc31719847','秦浩','灌灌灌灌',1,'4','D:\\meifadian\\apache-tomcat-7.0.42-windows-x64\\apache-tomcat-7.0.42\\webapps\\cme/static/photo/u=747474479,3247936386&fm=21&gp=0.jpg','u=747474479,3247936386&fm=21&gp=0.jpg',NULL,NULL,NULL,NULL,NULL),('d9b0162c-6750-46d0-be12-e6d306974d0c','eerrr','wqwqw',2,'4','D:\neverlifadianworkspaceslifadian4.metadata.pluginsorg.eclipse.wst.server.core	mp0wtpwebappscme/static/photo/201104211367.jpg','201104211367.jpg',NULL,NULL,NULL,NULL,NULL),('f1a7e2ab-13e6-4c6a-b366-9442347f169e','gfdx','hgc',1,'4','/meilichannel/static/images/blank.jpg ',NULL,NULL,NULL,NULL,NULL,NULL),('f1ab1aa3-3abe-47dd-a0fe-c924806cfa59','ascf','zxzxdc',2,'4',NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `t_merchont` */

DROP TABLE IF EXISTS `t_merchont`;

CREATE TABLE `t_merchont` (
  `merchont_id` varchar(32) NOT NULL COMMENT '商家编号',
  `accout_num` varchar(30) DEFAULT NULL COMMENT '支付宝账号',
  `real_name` varchar(20) DEFAULT NULL COMMENT '真实姓名',
  `merchont_type` int(4) DEFAULT NULL COMMENT '商家开店权限，1表示只可以开美容，2表示只可以开美发，3表示只可以开美甲，4表示开美容美发，5表示美容美甲，6表示美发美甲，7表示美容美发美甲',
  `id` varchar(32) DEFAULT NULL COMMENT '身份证号',
  `createrKey` varchar(36) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifierKey` varchar(36) DEFAULT NULL,
  `modifierDate` datetime DEFAULT NULL,
  `deleteFlag` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`merchont_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商家表';

/*Data for the table `t_merchont` */

insert  into `t_merchont`(`merchont_id`,`accout_num`,`real_name`,`merchont_type`,`id`,`createrKey`,`createDate`,`modifierKey`,`modifierDate`,`deleteFlag`) values ('10',NULL,NULL,7,NULL,NULL,NULL,NULL,NULL,NULL),('2','2222','毛竞争',1,'342222199201097217',NULL,NULL,NULL,NULL,NULL),('3','44444','掘进机',2,'55555555555',NULL,NULL,NULL,NULL,NULL),('4',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),('5',NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL),('6',NULL,NULL,3,NULL,NULL,NULL,NULL,NULL,NULL),('7',NULL,NULL,4,NULL,NULL,NULL,NULL,NULL,NULL),('8',NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL),('9',NULL,NULL,6,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `t_order` */

DROP TABLE IF EXISTS `t_order`;

CREATE TABLE `t_order` (
  `order_id` varchar(36) NOT NULL COMMENT '订单编号',
  `order_state` int(11) DEFAULT NULL COMMENT '订单状态：1是选择，2是已同意，3是已拒绝',
  `order_time` datetime DEFAULT NULL COMMENT '订单时间',
  `appoint_time` datetime DEFAULT NULL COMMENT '预约时间',
  `order_price` float DEFAULT NULL COMMENT '订单价格',
  `pro_id` char(36) DEFAULT NULL COMMENT '作品ID',
  `member_id` char(36) DEFAULT NULL COMMENT '员工ID',
  `user_id` char(36) DEFAULT NULL COMMENT '用户ID',
  `createrKey` char(36) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifierKey` char(36) DEFAULT NULL,
  `modifyDate` datetime DEFAULT NULL,
  `deleteFlag` int(11) DEFAULT '0',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品表';

/*Data for the table `t_order` */

insert  into `t_order`(`order_id`,`order_state`,`order_time`,`appoint_time`,`order_price`,`pro_id`,`member_id`,`user_id`,`createrKey`,`createDate`,`modifierKey`,`modifyDate`,`deleteFlag`) values ('1',1,'2015-06-19 15:57:32','2015-06-19 15:57:35',120,'0e73b848-4f14-4169-81bc-6b8e79a0','1','1',NULL,'2015-06-19 15:58:42',NULL,'2015-06-19 15:58:35',0),('12',3,'2015-06-02 14:58:21','2015-06-03 14:58:24',27,'4','2','4',NULL,'2015-06-12 14:58:43',NULL,'2015-06-08 14:58:46',NULL),('2',2,'2015-06-19 15:59:00','2015-06-19 15:59:03',100,'5','1','1',NULL,'2015-06-19 15:59:25',NULL,'2015-06-19 15:59:29',NULL),('21',5,'2015-06-03 14:07:42','2015-06-14 14:07:48',231,'6','32','12',NULL,'2015-05-26 14:08:07',NULL,'2015-06-03 14:08:14',NULL),('3',3,'2015-06-19 15:59:40','2015-06-19 15:59:45',100,'7','1','1',NULL,'2015-06-19 15:59:58',NULL,'2015-06-19 16:00:00',NULL),('3242',2,'2015-06-07 17:56:43','2015-06-16 17:56:39',2342,'4','231','2312',NULL,'2015-06-02 17:56:01',NULL,'2015-06-10 17:56:10',NULL),('4',4,'2015-06-19 16:00:09','2015-06-19 16:00:13',100,'5','1','1',NULL,'2015-06-19 16:00:39',NULL,'2015-06-19 16:00:41',NULL);

/*Table structure for table `t_pmrelation` */

DROP TABLE IF EXISTS `t_pmrelation`;

CREATE TABLE `t_pmrelation` (
  `relation_id` varchar(32) NOT NULL COMMENT '联系ID',
  `pro_id` varchar(32) DEFAULT NULL COMMENT '作品ID',
  `member_id` varchar(32) DEFAULT NULL COMMENT '员工ID',
  `createKey` varchar(36) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifierKey` varchar(36) DEFAULT NULL,
  `modifyDate` datetime DEFAULT NULL,
  `deleteFlag` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='作品与员工联系表';

/*Data for the table `t_pmrelation` */

/*Table structure for table `t_production` */

DROP TABLE IF EXISTS `t_production`;

CREATE TABLE `t_production` (
  `pro_id` char(36) NOT NULL COMMENT '作品ID',
  `pro_name` char(20) DEFAULT NULL COMMENT '作品名字',
  `pro_price` float DEFAULT NULL COMMENT '作品价格',
  `dis_price` float DEFAULT NULL COMMENT '打折价格',
  `pro_type` int(4) DEFAULT NULL COMMENT '作品类型',
  `introduction` varchar(1000) DEFAULT NULL COMMENT '作品简介',
  `shop_id` varchar(36) DEFAULT NULL COMMENT '商店ID',
  `image_address` varchar(500) DEFAULT NULL COMMENT '作品图片存储地址',
  `image_name` varchar(100) DEFAULT NULL COMMENT '作品图品名称',
  `createKey` varchar(36) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifierKey` varchar(36) DEFAULT NULL,
  `deleteFlag` int(11) DEFAULT '0',
  `modifyDate` datetime DEFAULT NULL,
  PRIMARY KEY (`pro_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='作品信息表';

/*Data for the table `t_production` */

insert  into `t_production`(`pro_id`,`pro_name`,`pro_price`,`dis_price`,`pro_type`,`introduction`,`shop_id`,`image_address`,`image_name`,`createKey`,`createDate`,`modifierKey`,`deleteFlag`,`modifyDate`) values ('0e73b848-4f14-4169-81bc-6b8e79a0','gggg',54,32,3,'ffffff','0b0dde6e-0b51-4ce2-8ffe-0c40919bf3ec','/meilichannel/static/images/blank.jpg ','null',NULL,NULL,NULL,0,NULL),('1b602bda-c046-4e5a-bd1b-51aa9ffb','',0,0,2,'','0b0dde6e-0b51-4ce2-8ffe-0c40919bf3ec','/meilichannel/static/images/blank.jpg ',NULL,NULL,NULL,NULL,0,NULL),('5','meifa',180,90,3,'谔谔谔谔谔谔谔谔','0b0dde6e-0b51-4ce2-8ffe-0c40919bf3ec','/meilichannel/static/images/blank.jpg ','201104201364.jpg',NULL,NULL,NULL,0,NULL),('52073ec0-1f09-4897-8e8d-3d127956','gn',0,0,1,'gn','4','/meilichannel/static/images/blank.jpg ','11.jpg',NULL,NULL,NULL,0,NULL),('7f193f3b-c604-4c8b-af5a-6d21ab0f','gggg',445,233,1,'ddddddd','4','/meilichannel/static/images/blank.jpg ','20110516043.jpg',NULL,NULL,NULL,0,NULL),('8f659d5d-be66-4c9c-997d-b22f64b7','qaz',0,0,1,'thnb','4','/meilichannel/static/images/blank.jpg ','banner8.png',NULL,NULL,NULL,0,NULL),('942293f4-8b0d-418b-8c4c-d0158729','平头',15,10,2,'平头剪发','0b0dde6e-0b51-4ce2-8ffe-0c40919bf3ec','/meilichannel/static/images/blank.jpg ','banner4.png',NULL,NULL,NULL,0,NULL),('a815c796-121d-415d-b773-d7568e13','平头',15,10,3,'平头剪发','0b0dde6e-0b51-4ce2-8ffe-0c40919bf3ec','/meilichannel/static/images/blank.jpg ','banner3.png',NULL,NULL,NULL,0,NULL),('e30dd763-eda9-428b-8d35-8787e2ae','rrr',67,45,2,'ggggg','4','D:\neverlifadianworkspaceslifadian4.metadata.pluginsorg.eclipse.wst.server.core	mp0wtpwebappscme/static/photo/20141214230.jpg','20141214230.jpg',NULL,NULL,NULL,0,NULL);

/*Table structure for table `t_review` */

DROP TABLE IF EXISTS `t_review`;

CREATE TABLE `t_review` (
  `orderId` varchar(36) DEFAULT NULL COMMENT '订单编号',
  `reviewId` varchar(36) NOT NULL COMMENT '主键',
  `overallStatus` int(11) DEFAULT '1' COMMENT '综合评价，好评，中评，差评',
  `serveAttitude` int(11) DEFAULT NULL COMMENT '服务态度，1-5星',
  `accordLevel` int(11) DEFAULT NULL COMMENT '服务情况相符程度，1-5星',
  `reviewMes` varchar(500) DEFAULT NULL COMMENT '评价留言',
  `createKey` varchar(36) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifierKey` varchar(36) DEFAULT NULL,
  `modifyDate` datetime DEFAULT NULL,
  `deleteFlag` int(11) DEFAULT '0' COMMENT '删除标识0：false，1：true',
  `reviewDate` datetime DEFAULT NULL COMMENT '评价时间',
  PRIMARY KEY (`reviewId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单评价表';

/*Data for the table `t_review` */

insert  into `t_review`(`orderId`,`reviewId`,`overallStatus`,`serveAttitude`,`accordLevel`,`reviewMes`,`createKey`,`createDate`,`modifierKey`,`modifyDate`,`deleteFlag`,`reviewDate`) values ('1','23',2,1,3,'大声道',NULL,NULL,NULL,NULL,0,'2013-02-22 00:00:00');

/*Table structure for table `t_role` */

DROP TABLE IF EXISTS `t_role`;

CREATE TABLE `t_role` (
  `roleKey` char(36) NOT NULL COMMENT '主键',
  `roleType` int(11) DEFAULT NULL COMMENT '用户类型（角色）：1、用户，2、商家，3、管理员...',
  `deleteFlg` int(11) DEFAULT '0' COMMENT '删除标识，0，表示false，没有删除',
  PRIMARY KEY (`roleKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_role` */

insert  into `t_role`(`roleKey`,`roleType`,`deleteFlg`) values ('0b0dde6e-0b51-1ce6-3ffa-0c40914b',1,0),('0b0dde6e-0b51-2ce6-3ffa-0c40914b',2,0),('0b0dde6e-0b51-3ce6-3ffa-0c40914b',3,0);

/*Table structure for table `t_shop` */

DROP TABLE IF EXISTS `t_shop`;

CREATE TABLE `t_shop` (
  `shop_id` char(36) NOT NULL COMMENT '商店ID',
  `shop_cord` varchar(100) DEFAULT NULL COMMENT '商店坐标',
  `shop_add` varchar(200) DEFAULT NULL COMMENT '商店地址',
  `shop_name` char(50) DEFAULT NULL COMMENT '商店名字',
  `shop_type` int(4) DEFAULT NULL COMMENT '商店类型',
  `introduction` varchar(1000) DEFAULT NULL COMMENT '简介',
  `image_address` varchar(500) DEFAULT NULL COMMENT '图片位置',
  `image_name` varchar(100) DEFAULT NULL COMMENT '图片名称',
  `shop_qq` varchar(50) DEFAULT NULL COMMENT '店铺QQ',
  `merchont_id` varchar(36) DEFAULT NULL COMMENT '商家ID',
  `createrKey` varchar(36) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifierKey` varchar(36) DEFAULT NULL,
  `modifyDate` datetime DEFAULT NULL,
  `deleteFlag` int(11) DEFAULT '0',
  PRIMARY KEY (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='店铺表';

/*Data for the table `t_shop` */

insert  into `t_shop`(`shop_id`,`shop_cord`,`shop_add`,`shop_name`,`shop_type`,`introduction`,`image_address`,`image_name`,`shop_qq`,`merchont_id`,`createrKey`,`createDate`,`modifierKey`,`modifyDate`,`deleteFlag`) values ('0b0dde6e-0b51-4ce2-8ffe-0c40919bf3ec','121.404, 38.915','北京阿福V型的v从v','111美发店0000000',2,'123213213','/meilichannel/static/images/blank.jpg ','blank.jpg ','111','2',NULL,NULL,NULL,NULL,0);

/*Table structure for table `t_user` */

DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
  `user_id` varchar(32) NOT NULL COMMENT '用户编号',
  `user_name` varchar(30) DEFAULT NULL COMMENT '用户名字',
  `type` int(4) DEFAULT NULL COMMENT '用户权限，用户类型（角色）：1、用户，2、商家，3、管理员。对应数据字典中的roleType',
  `phone` varchar(11) DEFAULT NULL COMMENT '电话',
  `password` varchar(30) DEFAULT NULL COMMENT '密码',
  `user_sex` varchar(4) DEFAULT NULL COMMENT '性别',
  `address` varchar(50) DEFAULT NULL COMMENT '地址',
  `user_email` varchar(30) DEFAULT NULL COMMENT '邮箱',
  `brithday` date DEFAULT NULL COMMENT '生日',
  `last_ip` varchar(20) DEFAULT NULL COMMENT '最后登入IP',
  `last_visit` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `message` varchar(20) DEFAULT NULL COMMENT '兴趣爱好',
  `image_address` varchar(200) DEFAULT NULL COMMENT '图片地址',
  `image_name` varchar(50) DEFAULT NULL COMMENT '图片名称',
  `createKey` varchar(36) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifierKey` varchar(36) DEFAULT NULL,
  `modifyDate` datetime DEFAULT NULL,
  `deleteFlag` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `t_user` */

insert  into `t_user`(`user_id`,`user_name`,`type`,`phone`,`password`,`user_sex`,`address`,`user_email`,`brithday`,`last_ip`,`last_visit`,`message`,`image_address`,`image_name`,`createKey`,`createDate`,`modifierKey`,`modifyDate`,`deleteFlag`) values ('1','mjz',4,'13124286340','1','男','大连小平岛','zhanlang92@126.com','2015-06-13','0:0:0:0:0:0:0:1','2015-06-14 13:28:09','打球',NULL,'0','','0000-00-00 00:00:00',NULL,NULL,'0'),('10','f7',3,NULL,'3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0'),('2','dl',2,NULL,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/meilichannel/static/images/blank.jpg ',NULL,NULL,NULL,NULL,NULL,'0'),('3','ln',1,NULL,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0'),('4','f1',1,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('5','f2',1,NULL,'3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('6','f3',1,NULL,'3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('7','f4',1,NULL,'3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('8','f5',1,NULL,'3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('9','f6',1,NULL,'3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `tb_menu` */

DROP TABLE IF EXISTS `tb_menu`;

CREATE TABLE `tb_menu` (
  `menuKey` varchar(36) NOT NULL,
  `menuName` varchar(50) DEFAULT NULL,
  `menuLevel` int(11) DEFAULT NULL,
  `groupSequence` int(11) DEFAULT NULL,
  `menuSequence` int(11) DEFAULT NULL,
  `menuURL` varchar(100) DEFAULT '#',
  `roleType` int(11) DEFAULT NULL,
  `deleteFlag` int(11) DEFAULT '0',
  `parentMenuKey` char(36) DEFAULT NULL,
  PRIMARY KEY (`menuKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_menu` */

insert  into `tb_menu`(`menuKey`,`menuName`,`menuLevel`,`groupSequence`,`menuSequence`,`menuURL`,`roleType`,`deleteFlag`,`parentMenuKey`) values ('0b0dde6e-0b51-3ce6-3ffa-0c40914b','首页',1,1,1,'#',0,0,NULL),('0b0dde6e-0b51-4ce6-3ffa-0c40914b','美容',1,1,2,'mainPage/meirong',0,0,NULL),('0b0dde6e-0b51-5ce6-3ffa-0c40914b','美发',1,1,3,'mainPage/meifa',0,0,NULL),('0b0dde6e-0b51-6ce6-3ffa-0c40914b','美甲',1,1,4,'mainPage/meijia',0,0,NULL),('0b0dde6e-0b53-2ce6-3ffa-0c40914b','注册',0,0,1,'#',0,0,NULL),('0b0dde6e-0b54-2ce6-3ffa-0c40914b','登录',0,0,2,'#',0,0,NULL),('0b0dde6e-0b55-2ce6-3ffa-0c40914b','我的频道',0,0,3,'#',0,0,NULL),('0b0dde6e-0b56-2ce6-3ffa-0c40914b','申请商家入驻',0,0,4,'#',0,0,NULL),('1b0dde6e-0b56-2ce6-3ffa-0c40914b','上传店铺信息',2,NULL,1,'#',2,0,NULL),('1b0dde6e-1b56-2ce6-3ffa-0c40914b','美容店铺信息',3,NULL,1,'uploadShopInfo/beautyShopInfo',2,0,'1b0dde6e-0b56-2ce6-3ffa-0c40914b'),('1b0dde6e-2b56-2ce6-3ffa-0c40914b','美发店铺信息',3,NULL,2,'uploadShopInfo/hairdressShopInfo',2,0,'1b0dde6e-0b56-2ce6-3ffa-0c40914b'),('1b0dde6e-3b56-2ce6-3ffa-0c40914b','美甲店铺信息',3,NULL,3,'uploadShopInfo/manicureShopInfo',2,0,'1b0dde6e-0b56-2ce6-3ffa-0c40914b'),('1b0dde6e-3b56-2ce6-3ffa-0c41914b','个人中心',2,NULL,1,'#',1,0,NULL),('1b0dde6e-3b56-2ce6-3ffa-0c42914b','我的订单',2,NULL,2,'#',1,0,NULL),('1b0dde6e-3b56-2ce6-3ffa-0c43914b','我的收藏',2,NULL,3,'#',1,0,NULL),('1b0dde6e-3b56-2ce6-3ffa-0c43924b','我的收藏',3,NULL,1,'myCollection/myCollection',1,0,'1b0dde6e-3b56-2ce6-3ffa-0c43914b'),('1b0dde6e-3b56-2ce6-3ffa-0c44914b','我的评价',2,NULL,4,'#',1,0,NULL),('1b0dde6e-3b56-2ce6-3ffa-0c44964b','我的评价',3,NULL,1,'myEvaluated/myEvaluated',1,0,'1b0dde6e-3b56-2ce6-3ffa-0c44914b'),('1b0dde6e-3b56-2ce6-3ffa-0c46914b','信息通知',2,NULL,6,'#',1,0,NULL),('1b0dde6e-3b56-2ce6-3ffb-0c46914b','信息通知',3,NULL,1,'myInfoNotify/myInfoNotify',1,0,'1b0dde6e-3b56-2ce6-3ffa-0c46914b'),('1b0dde6e-3b56-2ce6-4ffa-0c42914b','未支付订单',3,NULL,1,'myOrder/notPaidOrder',1,0,'1b0dde6e-3b56-2ce6-3ffa-0c42914b'),('1b0dde6e-3b56-2ce6-5ffa-0c42914b','预约订单',3,NULL,2,'myOrder/appointOrder',1,0,'1b0dde6e-3b56-2ce6-3ffa-0c42914b'),('1b0dde6e-3b56-2ce6-6ffa-0c42914b','未评价订单',3,NULL,3,'myOrder/notEvaluatedOrder',1,0,'1b0dde6e-3b56-2ce6-3ffa-0c42914b'),('1b0dde6e-3b56-2ce6-7ffa-0c42914b','已取消订单',3,NULL,4,'myOrder/canceledOrder',1,0,'1b0dde6e-3b56-2ce6-3ffa-0c42914b'),('1b0dde6e-3b56-3ce6-3ffa-0c41914b','个人信息',3,NULL,1,'personalCenter/personalInfo',1,0,'1b0dde6e-3b56-2ce6-3ffa-0c41914b'),('1b0dde6e-3b56-4ce6-3ffa-0c41914b','修改头像',3,NULL,2,'personalCenter/modifyHead',1,0,'1b0dde6e-3b56-2ce6-3ffa-0c41914b'),('1b0dde6e-4b56-2ce6-3ffa-0c40914b','美容作品信息',3,NULL,1,'uploadProductInfo/beautyProductInfo',2,0,'2b0dde6e-0b56-2ce6-3ffa-0c40914b'),('1b0dde6e-5b56-2ce6-3ffa-0c40914b','美发作品信息',3,NULL,2,'uploadProductInfo/hairdressProductInfo',2,0,'2b0dde6e-0b56-2ce6-3ffa-0c40914b'),('1b0dde6e-6b56-2ce6-3ffa-0c40914b','美甲作品信息',3,NULL,3,'uploadProductInfo/manicureProductInfo',2,0,'2b0dde6e-0b56-2ce6-3ffa-0c40914b'),('1b0dde6e-7b56-2ce6-3ffa-0c40914b','美容服务人员信息',3,NULL,1,'serviceInfo/beautyServiceInfo',2,0,'3b0dde6e-0b56-2ce6-3ffa-0c40914b'),('1b0dde6e-8b56-2ce6-3ffa-0c40914b','美发服务人员信息',3,NULL,2,'serviceInfo/hairdressServiceInfo',2,0,'3b0dde6e-0b56-2ce6-3ffa-0c40914b'),('1b0dde6e-9b56-2ce6-3ffa-0c40914b','美甲服务人员信息',3,NULL,3,'serviceInfo/manicureServiceInfo',2,0,'3b0dde6e-0b56-2ce6-3ffa-0c40914b'),('2b0dde6e-0b56-2ce6-3ffa-0c40914b','上传作品信息',2,NULL,2,'#',2,0,NULL),('3b0dde6e-0b56-2ce6-3ffa-0c40914b','服务人员信息',2,NULL,3,'#',2,0,NULL),('4b0dde6e-0b56-2ce6-3ffa-0c40914a','处理订单',3,NULL,1,'handleOrder/handleOrder',2,0,'4b0dde6e-0b56-2ce6-3ffa-0c40914b'),('4b0dde6e-0b56-2ce6-3ffa-0c40914b','处理订单',2,NULL,4,'#',2,0,NULL),('5b0dde6e-0b56-2ce6-3ffa-0c40914b','评论信息',2,NULL,5,'#',2,0,NULL),('5b0dde6e-0b56-2ce6-3ffa-0c409d4b','评论信息',3,NULL,1,'commentInfo/commentInfo',2,0,'5b0dde6e-0b56-2ce6-3ffa-0c40914b'),('6b0dde6e-0b56-2ca6-3ffa-0c40914b','推出系统',3,NULL,1,'withdrawSystem/withdrawSystem',2,0,'6b0dde6e-0b56-2ce6-3ffa-0c40914b'),('6b0dde6e-0b56-2ce6-3ffa-0c40914b','申请退出系统',2,NULL,6,'#',2,0,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
