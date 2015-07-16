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

/*Table structure for table `t_admin` */

DROP TABLE IF EXISTS `t_admin`;

CREATE TABLE `t_admin` (
  `admin_id` int(20) NOT NULL,
  `admin_name` varchar(20) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `type` int(4) DEFAULT NULL,
  `userKey` varchar(10) DEFAULT NULL,
  `createrKey` varchar(36) DEFAULT NULL,
  `modifyKey` varchar(36) DEFAULT NULL,
  `deleteFlag` varchar(11) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifyDate` datetime DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_admin` */

insert  into `t_admin`(`admin_id`,`admin_name`,`password`,`type`,`userKey`,`createrKey`,`modifyKey`,`deleteFlag`,`createDate`,`modifyDate`) values (1,'王企鹅','111',1,'1',NULL,NULL,NULL,NULL,NULL),(2,'王岐山','222',1,'2',NULL,NULL,NULL,NULL,NULL);

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

insert  into `t_gt_dictionary`(`DictionaryKey`,`GroupCode`,`GroupLabel`,`ItemCode`,`ItemLabel`,`ItemSequence`,`Remark`) values ('0b0dde6e-0b51-4ce2-8ffe-0c40914b','payState','付款状态',3,'交易成功',3,'成功'),('0b0dde6e-0b51-4ce2-8ffe-0c40919b','payState','付款状态',2,'已付款',2,'已付款'),('0b0dde6e-0b51-4ce2-8ffe-0c40979b','payState','付款状态',1,'待付款',1,''),('0b0dde6e-0b51-4ce2-8ffe-7c40919b','payState','付款状态',4,'交流失败，已取消订单',4,NULL);

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
  `order_id` varchar(32) NOT NULL COMMENT '订单编号',
  `order_state` varchar(3) DEFAULT NULL COMMENT '订单状态：1是选择，2是已同意，3是已拒绝',
  `order_time` datetime DEFAULT NULL COMMENT '订单时间',
  `appoint_time` datetime DEFAULT NULL COMMENT '预约时间',
  `order_price` varchar(10) DEFAULT NULL COMMENT '订单价格',
  `pro_id` varchar(20) DEFAULT NULL COMMENT '作品ID',
  `member_id` varchar(20) DEFAULT NULL COMMENT '员工ID',
  `user_id` varchar(20) DEFAULT NULL COMMENT '用户ID',
  `createrKey` varchar(36) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifierKey` varchar(36) DEFAULT NULL,
  `modifyDate` datetime DEFAULT NULL,
  `deleteFlag` varchar(11) DEFAULT NULL,
  `out_price` varchar(255) DEFAULT NULL COMMENT '支出',
  `into_price` varchar(255) DEFAULT NULL COMMENT '收入',
  `usefor` varchar(255) DEFAULT NULL COMMENT '用途',
  `outstyle` varchar(255) DEFAULT NULL COMMENT '支出方式',
  `payState` int(11) DEFAULT NULL COMMENT '支付状态态：1是交易成功，2是交易失败，3是取消订单，4是退款',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品表';

/*Data for the table `t_order` */

insert  into `t_order`(`order_id`,`order_state`,`order_time`,`appoint_time`,`order_price`,`pro_id`,`member_id`,`user_id`,`createrKey`,`createDate`,`modifierKey`,`modifyDate`,`deleteFlag`,`out_price`,`into_price`,`usefor`,`outstyle`,`payState`) values ('1','1','2015-06-19 15:57:32','2015-06-19 15:57:35','120','3','1','1',NULL,'2015-06-19 15:58:42',NULL,'2015-06-19 15:58:35',NULL,'1000','111','消费','支付宝',1),('12','3','2015-06-02 14:58:21','2015-06-03 14:58:24','27','4','2','4',NULL,'2015-06-12 14:58:43',NULL,'2015-06-08 14:58:46',NULL,'1','34','消费','支付宝',2),('2','2','2015-06-19 15:59:00','2015-06-19 15:59:03','100','5','1','1',NULL,'2015-06-19 15:59:25',NULL,'2015-06-19 15:59:29',NULL,'200','0','消费','支付宝',3),('21','5','2015-06-03 14:07:42','2015-06-14 14:07:48','231','6','32','12',NULL,'2015-05-26 14:08:07',NULL,'2015-06-03 14:08:14',NULL,'231','21','消费','支付宝',1),('3','3','2015-06-19 15:59:40','2015-06-19 15:59:45','100','7','1','1',NULL,'2015-06-19 15:59:58',NULL,'2015-06-19 16:00:00',NULL,'300','200','消费','支付宝',2),('3242','2','2015-06-07 17:56:43','2015-06-16 17:56:39','2342','4','231','2312',NULL,'2015-06-02 17:56:01',NULL,'2015-06-10 17:56:10',NULL,'32','32','消费','支付宝',3),('4','4','2015-06-19 16:00:09','2015-06-19 16:00:13','100','5','1','1',NULL,'2015-06-19 16:00:39',NULL,'2015-06-19 16:00:41',NULL,'432','43','消费','支付宝',2);

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
  `pro_id` varchar(80) NOT NULL COMMENT '作品ID',
  `pro_name` varchar(20) DEFAULT NULL COMMENT '作品名字',
  `pro_price` varchar(10) DEFAULT NULL COMMENT '作品价格',
  `dis_price` varchar(10) DEFAULT NULL COMMENT '打折价格',
  `pro_type` int(4) DEFAULT NULL COMMENT '作品类型',
  `introduction` varchar(50) DEFAULT NULL COMMENT '作品简介',
  `shop_id` varchar(32) DEFAULT NULL COMMENT '商店ID',
  `image_address` varchar(255) DEFAULT NULL COMMENT '作品图片存储地址',
  `image_name` varchar(20) DEFAULT NULL COMMENT '作品图品名称',
  `createKey` varchar(36) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifierKey` varchar(36) DEFAULT NULL,
  `deleteFlag` varchar(11) DEFAULT NULL,
  `modifyDate` datetime DEFAULT NULL,
  PRIMARY KEY (`pro_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='作品信息表';

/*Data for the table `t_production` */

insert  into `t_production`(`pro_id`,`pro_name`,`pro_price`,`dis_price`,`pro_type`,`introduction`,`shop_id`,`image_address`,`image_name`,`createKey`,`createDate`,`modifierKey`,`deleteFlag`,`modifyDate`) values ('0e73b848-4f14-4169-81bc-6b8e79a04ad1','gggg','54','32',3,'ffffff','4','null','null',NULL,NULL,NULL,NULL,NULL),('1b602bda-c046-4e5a-bd1b-51aa9ffb0330','','','',2,'','4',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('5','meifa','180','90',3,'谔谔谔谔谔谔谔谔','4','D:\neverlifadianworkspaceslifadian4.metadata.pluginsorg.eclipse.wst.server.core	mp0wtpwebappscme/static/photo/201104201364.jpg','201104201364.jpg',NULL,NULL,NULL,NULL,NULL),('52073ec0-1f09-4897-8e8d-3d1279563f72','gn','gnhgm','ghn',1,'gn','4','D:\\meifadian\\apache-tomcat-7.0.42-windows-x64\\apache-tomcat-7.0.42\\webapps\\cme/static/photo/11.jpg','11.jpg',NULL,NULL,NULL,NULL,NULL),('7f193f3b-c604-4c8b-af5a-6d21ab0f10a1','gggg','445','233',1,'ddddddd','4','D:\neverlifadianworkspaceslifadian4.metadata.pluginsorg.eclipse.wst.server.core	mp0wtpwebappscme/static/photo/20110516043.jpg','20110516043.jpg',NULL,NULL,NULL,NULL,NULL),('8f659d5d-be66-4c9c-997d-b22f64b73283','qaz','fb','rthb',1,'thnb','4','D:\\meifadian\\apache-tomcat-7.0.42-windows-x64\\apache-tomcat-7.0.42\\webapps\\meilichannel/static/photo/banner8.png','banner8.png',NULL,NULL,NULL,NULL,NULL),('942293f4-8b0d-418b-8c4c-d0158729a004','平头','15','10',2,'平头剪发','4','D:\\meifadian\\apache-tomcat-7.0.42-windows-x64\\apache-tomcat-7.0.42\\webapps\\cme/static/photo/banner4.png','banner4.png',NULL,NULL,NULL,NULL,NULL),('a815c796-121d-415d-b773-d7568e13a702','平头','15','10',3,'平头剪发','4','D:\\meifadian\\apache-tomcat-7.0.42-windows-x64\\apache-tomcat-7.0.42\\webapps\\cme/static/photo/banner3.png','banner3.png',NULL,NULL,NULL,NULL,NULL),('e30dd763-eda9-428b-8d35-8787e2ae8187','rrr','67','45',2,'ggggg','4','D:\neverlifadianworkspaceslifadian4.metadata.pluginsorg.eclipse.wst.server.core	mp0wtpwebappscme/static/photo/20141214230.jpg','20141214230.jpg',NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `t_review` */

DROP TABLE IF EXISTS `t_review`;

CREATE TABLE `t_review` (
  `order_id` varchar(32) NOT NULL COMMENT '订单编号',
  `review_id` varchar(32) DEFAULT NULL COMMENT '评价状态',
  `review1` varchar(30) DEFAULT NULL COMMENT '综合评价',
  `review2` varchar(32) DEFAULT NULL COMMENT '服务品质',
  `review3` varchar(32) DEFAULT NULL COMMENT '相等价位',
  `review_mes` varchar(32) DEFAULT NULL COMMENT '评价留言',
  `createKey` varchar(36) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifierKey` varchar(36) DEFAULT NULL,
  `modifyDate` datetime DEFAULT NULL,
  `deleteFlag` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单评价表';

/*Data for the table `t_review` */

insert  into `t_review`(`order_id`,`review_id`,`review1`,`review2`,`review3`,`review_mes`,`createKey`,`createDate`,`modifierKey`,`modifyDate`,`deleteFlag`) values ('1','23','2','1','3','大声道',NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `t_shop` */

DROP TABLE IF EXISTS `t_shop`;

CREATE TABLE `t_shop` (
  `shop_id` varchar(80) NOT NULL COMMENT '商店ID',
  `shop_cord` varchar(30) DEFAULT NULL COMMENT '商店坐标',
  `shop_add` varchar(30) DEFAULT NULL COMMENT '商店地址',
  `shop_name` varchar(20) DEFAULT NULL COMMENT '商店名字',
  `shop_type` int(4) DEFAULT NULL COMMENT '商店类型',
  `introduction` varchar(50) DEFAULT NULL COMMENT '简介',
  `image_address` varchar(200) DEFAULT NULL COMMENT '图片位置',
  `image_name` varchar(50) DEFAULT NULL COMMENT '图片名称',
  `shop_qq` varchar(20) DEFAULT NULL COMMENT '店铺QQ',
  `merchont_id` varchar(32) DEFAULT NULL COMMENT '商家ID',
  `createrKey` varchar(36) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifierKey` varchar(36) DEFAULT NULL,
  `modifyDate` datetime DEFAULT NULL,
  `deleteFlag` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='店铺表';

/*Data for the table `t_shop` */

insert  into `t_shop`(`shop_id`,`shop_cord`,`shop_add`,`shop_name`,`shop_type`,`introduction`,`image_address`,`image_name`,`shop_qq`,`merchont_id`,`createrKey`,`createDate`,`modifierKey`,`modifyDate`,`deleteFlag`) values ('0b0dde6e-0b51-4ce2-8ffe-0c40919bf3ec',NULL,NULL,'111美发店0000000',2,'123213213','D:\\variousworkspace\\Workspaces\\meifaProSvn\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\cme/static/photo/present.png','present.png',NULL,'2',NULL,NULL,NULL,NULL,'0'),('19fa0cd1-7fc9-4216-818a-58f35f123e14',NULL,NULL,'1234',3,'',NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,'0'),('2051ceb0-e96e-4cce-969f-d5171b850f20',NULL,NULL,'f4meirong',1,'mmmmmmmm','D:\\never\\lifadian\\workspaces\\lifadian4\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\cme/static/photo/20110522014.jpg','20110522014.jpg','1193306685','7',NULL,NULL,NULL,NULL,NULL),('684df78b-da1b-4978-af22-b59fb52c79bf',NULL,NULL,'阿斯顿',1,'是的撒饭','D:\\variousworkspace\\Workspaces\\meifaPro2\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\cme/static/photo/2015-05-14-0.bmp','2015-05-14-0.bmp',NULL,'3',NULL,NULL,NULL,NULL,'0'),('a9d1150c-3ef6-4e2d-bbe3-355cc7f3f0d0',NULL,NULL,'88888',2,'8888',NULL,NULL,NULL,'3',NULL,NULL,NULL,NULL,'0'),('ab77a21e-dafe-45b9-b74d-8b1204bb81f1',NULL,NULL,'f刚那句',1,'让她干活古','/cme/static/images/blank.jpg ','null','2222222223333规划','4',NULL,NULL,NULL,NULL,NULL),('c4eabc22-9cc4-4387-9d01-e01312fc83a9',NULL,NULL,'3333',3,'','D:\\variousworkspace\\Workspaces\\meifaProSvn\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\cme/static/photo/present.png','present.png',NULL,'3',NULL,NULL,NULL,NULL,'0'),('d107b340-92c0-4073-afe8-0425468f442a',NULL,NULL,'111美发店112233',NULL,'123213213',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0'),('d3bb79fc-100d-4c46-a3e4-831778b3b314',NULL,NULL,'f1111',2,'mnbvcxz','D:\\never\\lifadian\\workspaces\\lifadian4\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\cme/static/photo/20101105438.jpg','20101105438.jpg','2222 ','5',NULL,NULL,NULL,NULL,NULL),('ee2a9ebc-fbb3-4bc8-a9f8-c71781eafd54',NULL,NULL,'f4meifa',2,'meifa','D:\neverlifadianworkspaceslifadian4.metadata.pluginsorg.eclipse.wst.server.core	mp0wtpwebappscme/static/photo/20141214218.jpg','20141214218.jpg','1193306685','7',NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `t_state` */

DROP TABLE IF EXISTS `t_state`;

CREATE TABLE `t_state` (
  `state_id` varchar(32) NOT NULL COMMENT '状态编号',
  `order_id` varchar(32) DEFAULT NULL,
  `state_type` varchar(32) DEFAULT NULL COMMENT '状态类型',
  `createKey` varchar(36) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifierKey` varchar(36) DEFAULT NULL,
  `modifyDate` datetime DEFAULT NULL,
  `deleteFlag` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单状态表';

/*Data for the table `t_state` */

insert  into `t_state`(`state_id`,`order_id`,`state_type`,`createKey`,`createDate`,`modifierKey`,`modifyDate`,`deleteFlag`) values ('1','1','付款',NULL,NULL,NULL,NULL,NULL),('2','2','已付款',NULL,NULL,NULL,NULL,NULL),('3','3','交易成功',NULL,NULL,NULL,NULL,NULL),('4','4','交流失败，已取消订单',NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `t_user` */

DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
  `user_id` varchar(32) NOT NULL COMMENT '用户编号',
  `user_name` varchar(30) DEFAULT NULL COMMENT '用户名字',
  `type` int(4) DEFAULT NULL COMMENT '用户权限',
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

insert  into `t_user`(`user_id`,`user_name`,`type`,`phone`,`password`,`user_sex`,`address`,`user_email`,`brithday`,`last_ip`,`last_visit`,`message`,`image_address`,`image_name`,`createKey`,`createDate`,`modifierKey`,`modifyDate`,`deleteFlag`) values (' 1','mjz',4,'13124286340','1','男','大连小平岛','zhanlang92@126.com','2015-06-13','0:0:0:0:0:0:0:1','2015-06-14 13:28:09','打球',NULL,'0','','0000-00-00 00:00:00',NULL,NULL,'0'),('10','f7',1,NULL,'3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('2','dl',1,NULL,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('3','ln',1,NULL,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('4','f1',1,NULL,'3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('5','f2',1,NULL,'3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('6','f3',1,NULL,'3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('7','f4',1,NULL,'3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('8','f5',1,NULL,'3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('9','f6',1,NULL,'3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `tb_menu` */

DROP TABLE IF EXISTS `tb_menu`;

CREATE TABLE `tb_menu` (
  `menuKey` varchar(100) NOT NULL,
  `menuName` varchar(50) DEFAULT NULL,
  `menuLevel` int(11) DEFAULT NULL,
  `parentMenuKey` varchar(36) DEFAULT NULL,
  `groupSequence` int(11) DEFAULT NULL,
  `menuSequence` int(11) DEFAULT NULL,
  `menuURL` varchar(36) DEFAULT NULL,
  `roleType` int(11) DEFAULT NULL,
  `deleteFlag` int(11) DEFAULT NULL,
  PRIMARY KEY (`menuKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_menu` */

insert  into `tb_menu`(`menuKey`,`menuName`,`menuLevel`,`parentMenuKey`,`groupSequence`,`menuSequence`,`menuURL`,`roleType`,`deleteFlag`) values ('00001','<h2>学术活动<br></h2>（各医科学协会、专科分会、大医继续教育学院填写）',2,'',1001,1,'academicDeclare/predeclare',0,0),('00002','<h2>培训班<br></h2>(各基层单位填写)',2,'',1001,2,'trainingDeclare/predeclare',0,0),('00004','<h2>临时项目</h2>',2,NULL,1001,4,'temporaryDeclare/predeclare',0,0),('00005','学术活动',2,NULL,1002,1,'academicActivityMng',0,0),('00006','培训班',2,NULL,1002,2,'trainingCourseMng',0,0),('00007','临时项目',2,NULL,1002,3,'temporaryProjectMng',0,0),('00008','待上报临时项目',2,NULL,2001,3,'tempCheck/uncheckList',1,0),('00009','待上报学术活动',2,NULL,2001,1,'acaProject/unCheckList\r\n',1,0),('00010','待上报培训班',2,NULL,2001,2,'trainCheck/uncheckList',1,0),('00011','账号管理',2,NULL,2002,1,'unit/unitList',1,0),('00012','单位管理',2,NULL,2002,2,'unitMng/unitList',1,0),('00013','用户信息修改',2,NULL,1003,1,'userInfo/preEditUserInfo',0,0),('00014','用户信息修改',2,NULL,2003,1,'userInfo/preEditUserInfo',1,0),('00015','专家信息管理',2,NULL,3002,1,'Experts/Qlist',2,0),('00016','用户信息修改',2,NULL,5003,1,'ext/query',5,0),('00017','已上报学术活动',2,NULL,2004,1,'reportedAcademic/reportedList',1,0),('00018','项目执行情况',2,NULL,1004,1,NULL,0,0),('00019','市继教委会审批项目',2,NULL,1004,2,'approvedProject',0,0),('00020','待评价学术活动',2,NULL,5001,1,'ExpEvaluateAca/unEvaluateList',5,0),('00021','待评价培训班',2,NULL,5001,2,'evaluateTraining',5,0),('00022','待评价临时项目',2,NULL,5001,3,'evaluateTemp',5,0),('00023','待核准学术活动',2,NULL,3001,1,'jjwbReport/reportedList',2,0),('00024','待核准培训班',2,NULL,3001,2,'toReportTraining/reportedList',2,0),('00026','已审批项目',2,NULL,3003,1,'approved/query',2,0),('00027','用户信息管理',2,NULL,3004,1,'jjwhInfoMng',2,0),('00028','已上报培训班',2,NULL,2004,2,'reportedTraining/reportedList',1,0),('00029','待审批学术活动',2,NULL,6001,1,'toCheckAcademic/checkList',3,0),('00030','待审批培训班',2,NULL,6001,2,'toCheckTraining/checkList',3,0),('00031','已批准项目查询',2,NULL,6002,1,'approvedQuery/approvedQueryList',3,0),('00032','未批准项目查询',2,NULL,6002,2,'approvedQuery/noApprovedQueryList',3,0),('00033','待审批临时项目\r\n',2,NULL,6001,3,'#',3,0),('aaaaa','待核准临时活动',2,NULL,3001,3,'toReportTemp',2,0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
