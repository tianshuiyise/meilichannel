/*
SQLyog Ultimate v8.71 
MySQL - 5.5.19 : Database - cme
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`cme` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `cme`;

/*Table structure for table `t_gt_dictionary` */

DROP TABLE IF EXISTS `t_gt_dictionary`;

CREATE TABLE `t_gt_dictionary` (
  `DictionaryKey` double NOT NULL,
  `GroupCode` varchar(50) DEFAULT NULL,
  `GroupLabel` varchar(50) DEFAULT NULL,
  `ItemCode` int(11) DEFAULT NULL,
  `ItemLabel` varchar(50) DEFAULT NULL,
  `ItemSequence` int(11) DEFAULT NULL,
  `Remark` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`DictionaryKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_gt_dictionary` */

insert  into `t_gt_dictionary`(`DictionaryKey`,`GroupCode`,`GroupLabel`,`ItemCode`,`ItemLabel`,`ItemSequence`,`Remark`) values (1,'projectDescribe','项目描述',1,'学术活动',1,NULL),(2,'projectDescribe','项目描述',2,'培训班',2,NULL),(3,'projectType','项目类型',0,'中医',1,NULL),(4,'projectType','项目类型',1,'西医',2,NULL),(5,'deleteFlag','删除标记',0,'未删除',1,NULL),(6,'deleteFlag','删除标记',1,'删除',2,NULL),(7,'memberType','成员类型',1,'项目负责人',1,NULL),(8,'memberType','成员类型',2,'主要讲师',2,NULL),(9,'memberType','成员类型',3,'主持人',3,NULL),(10,'memberType','成员类型',4,'主讲人',4,NULL),(11,'isInitiation','是否同意立项',0,'是',1,NULL),(12,'isInitiation','是否同意立项',1,'否',2,NULL),(13,'unitOpinion','单位意见',0,'未批准',1,NULL),(14,'unitOpinion','单位意见',1,'批准',2,NULL),(15,'isAgree','是否同意上报',0,'同意',1,NULL),(16,'isAgree','是否同意上报',1,'不同意',2,NULL),(17,'userType','用户类型',0,'立项用户',1,NULL),(18,'userType','用户类型',1,'行政用户',2,NULL),(19,'unitState','单位状态',0,'启用',1,NULL),(20,'unitState','单位状态',1,'停用',2,NULL),(23,'declareState','申报状态',0,'未申报',1,NULL),(24,'declareState','申报状态',1,'已申报',2,NULL),(25,'modifyState','修改状态',0,'可修改',1,NULL),(26,'modifyState','修改状态',1,'不可修改',2,NULL),(27,'roleType','角色类型',1,'继教委员会',1,NULL),(28,'roleType','角色类型',2,'专家',2,NULL),(29,'roleType','角色类型',3,'继教部',3,NULL),(30,'roleType','角色类型',4,'学术部',4,NULL),(31,'roleType','角色类型',5,'卫生局',5,NULL),(32,'roleType','角色类型',6,'医大成教',6,NULL),(33,'roleType','角色类型',7,'继教办',7,NULL),(34,'roleType','角色类型',8,'单位科教科(无上级卫生局)',8,NULL),(35,'roleType','角色类型',9,'单位科教科(有上级卫生局)',9,NULL),(36,'roleType','角色类型',10,'专科秘书或主委',10,NULL),(37,'userState','用户状态',0,'启用中',1,NULL),(38,'userState','用户状态',1,'禁用中',2,NULL);

/*Table structure for table `tb_academic_activities` */

DROP TABLE IF EXISTS `tb_academic_activities`;

CREATE TABLE `tb_academic_activities` (
  `academicKey` varchar(50) NOT NULL COMMENT '学术活动主键',
  `theme` varchar(50) DEFAULT NULL COMMENT '题目',
  `purposeAndDesricbe` varchar(200) DEFAULT NULL COMMENT '主要内容及目的',
  `hostPlace` varchar(50) DEFAULT NULL COMMENT '举办地点',
  `participant` varchar(50) DEFAULT NULL COMMENT '参加对象',
  `period` int(11) DEFAULT NULL COMMENT '拟讲授学时',
  `declarant` varchar(50) DEFAULT NULL COMMENT '申报人',
  `medicalAssociation` varchar(50) DEFAULT NULL COMMENT '各医科学（协）会',
  `professionalCommittee` varchar(50) DEFAULT NULL COMMENT '所属专业委员会',
  `createrKey` varchar(50) NOT NULL COMMENT '创建者',
  `createDate` datetime NOT NULL COMMENT '创建时间',
  `modifierKey` varchar(50) DEFAULT NULL COMMENT '修改者',
  `modifyDate` datetime DEFAULT NULL COMMENT '修改时间',
  `deleteFlag` int(11) NOT NULL COMMENT '删除标记',
  `declareCode` varchar(50) DEFAULT NULL COMMENT '申报编码',
  `modifyState` int(11) DEFAULT NULL COMMENT '修改状态：0可修改，1不可修改',
  `startingTime` datetime DEFAULT NULL COMMENT '起始时间',
  `endingTime` datetime DEFAULT NULL COMMENT '结束时间',
  `declareTime` datetime DEFAULT NULL COMMENT '申报时间',
  `projectType` int(11) DEFAULT NULL COMMENT '项目类型：0中医，1西医',
  `roleType` int(11) DEFAULT NULL COMMENT '提交的用户类型',
  `declareUserKey` varchar(50) DEFAULT NULL COMMENT '申报单位主键',
  `isAgress` varchar(50) DEFAULT NULL COMMENT '主任意见',
  `opinion` varchar(50) DEFAULT NULL COMMENT '意见内容',
  `declareState` int(11) DEFAULT NULL COMMENT '申报状态，1已申报，0未申报',
  PRIMARY KEY (`academicKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学术活动表';

/*Data for the table `tb_academic_activities` */

insert  into `tb_academic_activities`(`academicKey`,`theme`,`purposeAndDesricbe`,`hostPlace`,`participant`,`period`,`declarant`,`medicalAssociation`,`professionalCommittee`,`createrKey`,`createDate`,`modifierKey`,`modifyDate`,`deleteFlag`,`declareCode`,`modifyState`,`startingTime`,`endingTime`,`declareTime`,`projectType`,`roleType`,`declareUserKey`,`isAgress`,`opinion`,`declareState`) values ('68f981a4-9201-487b-a527-6f6a2788c7d7','斯蒂芬','斯蒂芬','速度','是否',NULL,'斯蒂芬','10','打算','3465364','2014-12-21 14:19:36',NULL,NULL,0,NULL,0,'2014-12-25 00:00:00','2014-12-27 00:00:00','2014-12-21 14:19:36',0,10,'3465364','0','',NULL),('b948974e-e6ac-4ed6-a19f-f8bf59e33e99','123','123','123','231',213,'132','10','123','3465364','2014-12-20 15:03:44',NULL,NULL,0,NULL,0,'2014-12-11 00:00:00','2014-12-26 00:00:00','2014-12-20 15:03:44',1,10,'3465364','0',NULL,NULL);

/*Table structure for table `tb_inunit` */

DROP TABLE IF EXISTS `tb_inunit`;

CREATE TABLE `tb_inunit` (
  `inUnitKey` varchar(50) DEFAULT NULL COMMENT '所在单位主键',
  `inUnitName` varchar(50) DEFAULT NULL COMMENT '单位名称',
  `inUnitCode` varchar(50) DEFAULT NULL COMMENT '单位排序编码'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_inunit` */

insert  into `tb_inunit`(`inUnitKey`,`inUnitName`,`inUnitCode`) values ('1','大连医科大学','101'),('2','大连医科大学成教学院','102'),('3','大连大学医学院','103'),('4','大连大学门诊部','104'),('5','大连医科大学附属一院','105'),('6','大连医科大学附属二院','106'),('7','大连医科大学附属三院','107'),('8','大连大学附属中山医院','201'),('9','大连大学附属新华医院','202'),('10','大连市中心医院','301'),('11','大连市友谊医院','302'),('12','大连市第二人民医院','303'),('13','大连市第三人民医院','304'),('14','大连市第四人民医院','305'),('15','大连市第五人民医院','306'),('16','大连市第六人民医院','307'),('17','大连市第七人民医院','308'),('18','大连市中医医院','309'),('19','大连市妇幼保健院','310'),('20','大连市儿童医院','311'),('21','大连市口腔医院','312'),('22','大连市结核病医院','313'),('22','大连市结核病医院','313'),('24','大连市疾病预防控制中心','316'),('25','大连市血液中心','317'),('26','大连市急救中心','318'),('27','大连市体检中心','319'),('28','大连市医药科学研究所','320'),('29','大连市理论医学研究所','321'),('30','大连市卫生信息中心','322'),('31','大连市卫生局培训中心','323'),('32','大连市健康教育中心','326'),('33','大连市妇女儿童医疗中心','327'),('34','大连市医学会','401'),('35','大连市护理学会','402'),('36','大连市预防医学会','403'),('37','大连市中山区卫生和计划生育局','501'),('38','大连市沙河口区卫生和计划生育局','502'),('39','大连市西岗区卫生和计划生育局','503'),('40','大连市甘井子区卫生和计划生育局','504'),('41','金州新区卫生与人口计划生育局','505'),('42','金州区第一人民医院','506'),('43','大连市旅顺口区卫生局','507'),('44','普兰店市卫生局','509'),('45','瓦房店市卫生局','510'),('46','庄河市卫生局','511'),('47','长海县卫生和人口计划生育局','512'),('48','大连高新园区文教卫生局','513'),('49','花园口经济区人口卫生和食品药品监督管理局','514'),('50','长兴岛临港工业区社管局','515'),('51','保税区社管局','516'),('52','大化集团有限责任公司医院','601'),('53','大连港医院 ','602'),('54','大连机车医院','603'),('55','大连辽渔医院','605'),('56','大连市社会福利院','611'),('57','大连船舶神经康复医院','615'),('58','大连市计划生育技术指导所','620'),('59','大连沙医生整形美容口腔专科医院','804'),('60','大连何氏眼科医院','805'),('61','大连医大口腔有限公司','806'),('62','大连医科大学口腔医学院附属口腔医院','807'),('63','解放军二一O医院','901'),('64','解放军四O三医院','902');

/*Table structure for table `tb_member` */

DROP TABLE IF EXISTS `tb_member`;

CREATE TABLE `tb_member` (
  `memberKey` varchar(50) NOT NULL COMMENT '成员主键',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `position` varchar(50) DEFAULT NULL COMMENT '专业技术职位',
  `placeUnitKey` varchar(50) DEFAULT NULL COMMENT '所在单位',
  `teachTopic` varchar(50) DEFAULT NULL COMMENT '讲授题目',
  `period` int(11) DEFAULT NULL COMMENT '学时数',
  `memberType` int(11) DEFAULT NULL COMMENT '成员类型：项目负责人、主要讲师、主持人、主讲人',
  `phone` varchar(50) DEFAULT NULL COMMENT '联系方式',
  `email` varchar(50) DEFAULT NULL COMMENT '电子邮件',
  `projectKey` varchar(50) DEFAULT NULL COMMENT '所属项目',
  `postalAddress` varchar(100) DEFAULT NULL COMMENT '通信地址',
  `postcode` varchar(10) DEFAULT NULL COMMENT '邮编号码',
  `createrKey` varchar(50) NOT NULL COMMENT '创建者',
  `createDate` datetime NOT NULL COMMENT '创建时间',
  `modifierKey` varchar(50) DEFAULT NULL COMMENT '修改者',
  `modifyDate` datetime DEFAULT NULL COMMENT '修改时间',
  `deleteFlag` int(11) NOT NULL COMMENT '删除标记：0未删除，1删除',
  PRIMARY KEY (`memberKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='项目相关人员';

/*Data for the table `tb_member` */

insert  into `tb_member`(`memberKey`,`name`,`position`,`placeUnitKey`,`teachTopic`,`period`,`memberType`,`phone`,`email`,`projectKey`,`postalAddress`,`postcode`,`createrKey`,`createDate`,`modifierKey`,`modifyDate`,`deleteFlag`) values ('001399d5-dc23-4246-9c32-8d5fe42bc385','22','22','10','22',22,1,'15666666666',NULL,'ebdfc5b0-86a5-4a1d-8a7b-ac7a841a9599','222','222222','3465364','2014-12-17 13:39:02',NULL,NULL,0),('0e52d422-935d-4552-ae31-4b5fb476904f','速度','斯蒂芬','10',NULL,NULL,3,'12345678909','111','68f981a4-9201-487b-a527-6f6a2788c7d7',NULL,NULL,'3465364','2014-12-21 14:19:37',NULL,NULL,0),('0ea5d9f9-57b6-4c0d-a0b2-9b0b32dc7146','121','123','10','12',12,1,'22332332333',NULL,'72a4e470-9795-48cd-a42c-30cdcd2646a8','1212','123233','3465364','2014-12-17 13:28:15',NULL,NULL,0),('1444a31d-48f4-4a7a-94b4-f3354f6419cf','234','234','10',NULL,NULL,3,'18012345678','234@qq.com','e45b8eb2-f5ba-4067-89dd-d3466dd8009c',NULL,NULL,'3465364','2014-12-14 13:37:49',NULL,NULL,0),('18ae6178-4b49-42ba-8ae1-ad5c443a6018','sdfffff','讲师','','fdsfds',32,2,NULL,NULL,'c729563a-7f73-4c29-9717-65403106ef21',NULL,NULL,'3465364','2014-12-20 22:23:46',NULL,NULL,0),('1bd050e8-ff4a-4243-a6d8-b4e7ee3bbd71','dsfdsff','助教','10','sdfds',332,1,'12345678909',NULL,'c729563a-7f73-4c29-9717-65403106ef21','dsfdsfs','322222','3465364','2014-12-20 22:23:46',NULL,NULL,0),('20a4f26a-fb56-4b46-9cb4-80af13444826','ert','ret','10',NULL,NULL,3,'12345678909','1232','83d69ae2-2407-4bba-ba28-8ad198b164a5',NULL,NULL,'3465364','2014-12-20 14:49:50',NULL,NULL,0),('22f68902-7961-49a1-9723-278e9f2f4313','23324','324234','10','234',342,2,NULL,NULL,'4c25bf23-dcef-4eb0-a2ac-791cbda5a072','23423',NULL,'3465364','2014-12-14 18:19:47',NULL,NULL,0),('26789293-923e-4a4c-88c1-d2a118d8a2be','45545','助教','10','45545',44,1,'12345678909',NULL,'097763de-189b-433d-88d2-3dd1b5322b91','4554445','454544','3465364','2014-12-20 22:31:43',NULL,NULL,0),('2f17a838-2f2f-419c-b368-fe642504b0c9','12312','讲师','','132',11,2,NULL,NULL,'e713021a-c4e2-480c-8bbc-50f8c0c5ae52',NULL,NULL,'3465364','2014-12-21 17:42:12',NULL,NULL,0),('310c087b-fa56-4161-8162-1cc1342be757','12321','ssddd','10','dddd',12,2,NULL,NULL,'1804f00a-462e-4a4f-9eb7-72f8bba94ac4',NULL,NULL,'3465364','2014-12-21 10:19:24',NULL,NULL,0),('364b2bbe-67c9-4c44-b954-19f715a84066','1221','123','10','123',12,1,'15898175102',NULL,'a6548ac1-5333-49ff-b28a-c16d6b237780','12323','116042','3465364','2014-12-14 14:37:05',NULL,NULL,0),('3d9a5116-f951-4546-abe0-525b8c78f6d3','123','123123','10',NULL,NULL,2,'18012345678','234@qq.com','e45b8eb2-f5ba-4067-89dd-d3466dd8009c',NULL,NULL,'3465364','2014-12-14 13:37:49',NULL,NULL,0),('3de43394-c266-46bc-a8ea-5483f834e442','4232','32423','10','234',234,1,'15666666666',NULL,'4c25bf23-dcef-4eb0-a2ac-791cbda5a072','23423','23423','3465364','2014-12-14 18:19:47',NULL,NULL,0),('3faa973f-f2c8-45b9-abcd-3a73329350d5','1232','123','10','123',232,1,'15666666622',NULL,'9df42dd1-4361-4945-8931-b20e7914b4aa','1232','222222','3465364','2014-12-17 09:56:30',NULL,NULL,0),('42d86254-e090-4805-87ca-ad03e26974b8','斯蒂芬','斯蒂芬','10',NULL,NULL,4,'12345678909','111','68f981a4-9201-487b-a527-6f6a2788c7d7',NULL,NULL,'3465364','2014-12-21 14:19:37',NULL,NULL,0),('435ecef9-bcd8-4258-959f-2464d23145cb','wqeqw','wqe','10',NULL,NULL,4,'12345678909','12345678909','6cb6c35a-40cd-40d1-bf77-d58b6784dd74',NULL,NULL,'3465364','2014-12-20 14:21:28',NULL,NULL,0),('470399f6-b0b2-4793-b1f2-7026afe2398f','2222','2222','','2222',2222,2,NULL,NULL,'ebdfc5b0-86a5-4a1d-8a7b-ac7a841a9599',NULL,NULL,'3465364','2014-12-17 13:39:02',NULL,NULL,0),('4fc7eb8f-748c-4b88-8c9a-50abe2bae51e','2222','2222','','2222',222,2,NULL,NULL,'96a233d4-83c0-40d4-9b78-1aa7782ea169',NULL,NULL,'3465364','2014-12-17 14:22:30',NULL,NULL,0),('55ba4053-2a4f-49c3-9959-cc25753c019d','斯蒂芬森的','讲师','10','速度',23,1,'12345678909',NULL,'f4c9dc6a-a534-4d47-8411-4dae0116c3cd','斯蒂芬森的','123122','3465364','2014-12-21 18:23:38',NULL,NULL,0),('5d21b94c-4fa6-40e3-a341-838e0e734d31','ert','retre','10',NULL,NULL,4,'12345678909','2343','83d69ae2-2407-4bba-ba28-8ad198b164a5',NULL,NULL,'3465364','2014-12-20 14:49:50',NULL,NULL,0),('785a1d48-7989-420e-9cb7-9e8e0f3de6a0','12312','2','10',NULL,NULL,4,'12345678909','2343','b948974e-e6ac-4ed6-a19f-f8bf59e33e99',NULL,NULL,'3465364','2014-12-20 15:03:44',NULL,NULL,0),('82675bea-5d86-478a-b0a8-9fa60840c2ef','qweqwe','qweqw','10',NULL,NULL,3,'12345678909','12345678909','6cb6c35a-40cd-40d1-bf77-d58b6784dd74',NULL,NULL,'3465364','2014-12-20 14:21:28',NULL,NULL,0),('832d1a24-6086-4a19-98f8-abdb3da6d2a7','2323','sdfsdf','10','sdfsd',121,1,NULL,NULL,'1804f00a-462e-4a4f-9eb7-72f8bba94ac4',NULL,NULL,'3465364','2014-12-21 10:19:24',NULL,NULL,0),('84b2a9c2-d748-40c9-87c4-f48db9c4660c','sadas','asd','59dcf092-3f02-4aad-a6f2-c83c6a2cedd5',NULL,NULL,3,'12345678909','asd','a8467283-ec93-4588-b48f-9d87aedfc8a6',NULL,NULL,'3465364','2014-12-20 15:04:57',NULL,NULL,0),('85e83430-c2d5-406a-87e1-1a8e82d38024','11','111','10','11',0,1,'11111111111',NULL,'d6604946-b6a3-4bfe-b862-587741fadcd1','1111','123233','3465364','2014-12-17 14:15:46',NULL,NULL,0),('99ccc6c0-465c-4dd0-9cee-432e372dd096','asdas','asd','59dcf092-3f02-4aad-a6f2-c83c6a2cedd5',NULL,NULL,4,'12345678909','asd','a8467283-ec93-4588-b48f-9d87aedfc8a6',NULL,NULL,'3465364','2014-12-20 15:04:57',NULL,NULL,0),('b995a2a5-d309-4eee-bb15-9c6664cb5f13','速度','副教授','10','所得税',32,2,NULL,NULL,'f4c9dc6a-a534-4d47-8411-4dae0116c3cd',NULL,NULL,'3465364','2014-12-21 18:23:38',NULL,NULL,0);

/*Table structure for table `tb_menu` */

DROP TABLE IF EXISTS `tb_menu`;

CREATE TABLE `tb_menu` (
  `menuKey` varchar(100) NOT NULL,
  `menuName` varchar(36) DEFAULT NULL,
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

insert  into `tb_menu`(`menuKey`,`menuName`,`menuLevel`,`parentMenuKey`,`groupSequence`,`menuSequence`,`menuURL`,`roleType`,`deleteFlag`) values ('00001','普通学术活动',2,'',1001,1,'academicDeclare/predeclare',0,0),('00002','普通培训班',2,'',1001,2,'trainingDeclare/predeclare',0,0),('00004','临时项目',2,NULL,1001,4,'temporaryDeclare/predeclare',0,0),('00005','学术活动',2,NULL,1002,1,'academicActivityMng',0,0),('00006','培训班',2,NULL,1002,2,'trainingCourseMng',0,0),('00007','临时项目',2,NULL,1002,3,'temporaryProjectMng',0,0),('00008','待审批临时项目',2,NULL,2001,1,'tempCheck/uncheckList',1,0),('00009','待审批学术活动',2,NULL,2001,2,'acaProject/unCheckList\r\n',1,0),('00010','待审批培训班',2,NULL,2001,3,'trainCheck/uncheckList',1,0),('00011','账号管理',2,NULL,2002,1,'unit/unitList',1,0),('00012','单位管理',2,NULL,2002,2,'unitMng/unitList',1,0);

/*Table structure for table `tb_opinion` */

DROP TABLE IF EXISTS `tb_opinion`;

CREATE TABLE `tb_opinion` (
  `opinionKey` varchar(50) NOT NULL COMMENT '意见表主键',
  `userKey` varchar(50) DEFAULT NULL COMMENT '单位名称： 	申报单位， 	区（市）县卫生局， 	市继续医学教育委员会学科组， 	市卫生局， 	专科分会主委',
  `unitOpinion` int(11) DEFAULT NULL COMMENT '单位意见：0未批准，1批准',
  `approvalTime` datetime DEFAULT NULL COMMENT '审批时间',
  `projectKey` varchar(50) DEFAULT NULL COMMENT '所审批的项目',
  `createrKey` varchar(50) NOT NULL COMMENT '创建者',
  `createDate` datetime NOT NULL COMMENT '创建时间',
  `modifierKey` varchar(50) DEFAULT NULL COMMENT '修改者',
  `modifyDate` datetime DEFAULT NULL COMMENT '修改时间',
  `deleteFlag` int(11) NOT NULL COMMENT '删除标记：0未删除，1删除',
  `roleType` int(11) DEFAULT NULL COMMENT '角色类型',
  `expertOpinion` varchar(100) DEFAULT NULL COMMENT '专家意见',
  `remark` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`opinionKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_opinion` */

insert  into `tb_opinion`(`opinionKey`,`userKey`,`unitOpinion`,`approvalTime`,`projectKey`,`createrKey`,`createDate`,`modifierKey`,`modifyDate`,`deleteFlag`,`roleType`,`expertOpinion`,`remark`) values ('055a2ef7-288b-40b2-931c-1b5c2eb9bb9b','3465364',1,'2014-12-21 14:19:37','68f981a4-9201-487b-a527-6f6a2788c7d7','3465364','2014-12-21 14:19:37',NULL,NULL,0,10,NULL,'普通学术活动'),('07759715-7019-405b-903d-62afa084e1cd','3465364',1,'2014-12-21 09:54:33','1687099f-498b-4f8d-a959-36a9d04683a2','3465364','2014-12-21 09:54:33',NULL,NULL,0,10,NULL,'普通培训班'),('0ec58f29-ed01-41f9-a714-c3750cb8476f','23',1,'2014-12-20 15:06:40','a8467283-ec93-4588-b48f-9d87aedfc8a6','23','2014-12-20 15:06:40',NULL,NULL,0,4,NULL,NULL),('2f959fd2-da9c-4b31-bb5f-deed93d6cf74','3465364',1,'2014-12-21 17:42:12','e713021a-c4e2-480c-8bbc-50f8c0c5ae52','3465364','2014-12-21 17:42:12',NULL,NULL,0,10,NULL,'普通培训班'),('3f08be49-c1d7-45bd-8091-ad8910563e88','3465364',1,'2014-12-20 22:23:46','c729563a-7f73-4c29-9717-65403106ef21','3465364','2014-12-20 22:23:46',NULL,NULL,0,10,NULL,'普通培训班'),('3fd51319-5236-42c9-b3b9-bfd0caaafa90','3465364',1,'2014-12-20 15:04:57','a8467283-ec93-4588-b48f-9d87aedfc8a6','3465364','2014-12-20 15:04:57',NULL,NULL,0,10,NULL,'普通学术活动'),('53931307-4ab0-495c-bc62-4ae05bb52d11','3465364',1,'2014-12-21 10:19:24','1804f00a-462e-4a4f-9eb7-72f8bba94ac4','3465364','2014-12-21 10:19:24',NULL,NULL,0,10,NULL,'1'),('60344e0c-2542-44a7-915c-2c9f13c343df','3465364',1,'2014-12-21 18:23:38','f4c9dc6a-a534-4d47-8411-4dae0116c3cd','3465364','2014-12-21 18:23:38',NULL,NULL,0,10,NULL,'普通培训班'),('87dd0782-cfee-4cc8-97ea-46888255aaa8','3465364',1,'2014-12-20 16:29:08','f1fdf25e-4468-4dab-816d-2fe38d001b85','3465364','2014-12-20 16:29:08',NULL,NULL,0,10,NULL,'普通培训班'),('ed4bb15b-ac1a-46fb-b8e5-7fa5b6bd3a69','3465364',1,'2014-12-20 15:03:44','b948974e-e6ac-4ed6-a19f-f8bf59e33e99','3465364','2014-12-20 15:03:44',NULL,NULL,0,10,NULL,'普通学术活动');

/*Table structure for table `tb_professor_opinion` */

DROP TABLE IF EXISTS `tb_professor_opinion`;

CREATE TABLE `tb_professor_opinion` (
  `professorKey` varchar(50) NOT NULL COMMENT '主键',
  `isInitiation` int(11) DEFAULT NULL COMMENT '单位意见：0未批准，1批准',
  `expertOpinion` varchar(100) DEFAULT NULL COMMENT '专家意见',
  `approvalTime` datetime DEFAULT NULL COMMENT '审批时间',
  `remark` varchar(50) DEFAULT NULL COMMENT '备注',
  `projectKey` varchar(50) DEFAULT NULL COMMENT '所审项目',
  `createrKey` varchar(50) NOT NULL COMMENT '创建者',
  `createDate` datetime NOT NULL COMMENT '创建时间',
  `modifierKey` varchar(50) DEFAULT NULL COMMENT '修改者',
  `modifyDate` datetime DEFAULT NULL COMMENT '修改时间',
  `deleteFlag` int(11) NOT NULL COMMENT '删除标记',
  PRIMARY KEY (`professorKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='专家表';

/*Data for the table `tb_professor_opinion` */

/*Table structure for table `tb_subject` */

DROP TABLE IF EXISTS `tb_subject`;

CREATE TABLE `tb_subject` (
  `subjectKey` varchar(50) NOT NULL COMMENT '学科主键',
  `subjectName` varchar(50) DEFAULT NULL COMMENT '学科名称',
  `subjectNumber` varchar(50) DEFAULT NULL COMMENT '学科编号',
  `subjectType` varchar(50) DEFAULT NULL COMMENT '学科类型',
  `subjectLevel` varchar(50) DEFAULT NULL COMMENT '学科等级',
  `relateSubjectKey` varchar(50) DEFAULT NULL COMMENT '关联的二级学科',
  PRIMARY KEY (`subjectKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_subject` */

insert  into `tb_subject`(`subjectKey`,`subjectName`,`subjectNumber`,`subjectType`,`subjectLevel`,`relateSubjectKey`) values ('1','基础形态\r\n','01-\r\n','1','二级',''),('10','生物化学','02-02-','1','三级','8'),('100','中医外科','02-03-','0','三级','97'),('101','中医妇科','02-04-','0','三级','97'),('102','中医儿科','02-05-','0','三级','97'),('103','针灸学','02-06-','0','三级','97'),('104','中医皮肤科','02-07-','0','三级','97'),('105','中医骨伤科','02-08-','0','三级','97'),('106','中医按摩科','02-09-','0','三级','97'),('107','中医眼科','02-10-','0','三级','97'),('108','中医耳鼻咽喉科','02-11-','0','三级','97'),('109','中医肛肠科','02-12-','0','三级','97'),('11','生物物理学','02-03-','1','三级','8'),('110','中西医结合医学','03-','0','二级',''),('111','中西医结合基础','03-01-','0','三级','110'),('112','中西医结合临床','03-02-','0','三级','110'),('114','民族医药学','04-','0','二级',''),('115','其他','05-','0','二级',''),('117','急诊学','10-01-','1','三级','65'),('118','医学检验','11-01-','1','三级','66'),('119','全科医学与康复医学','16-01-','1','三级','90'),('12','药理学','02-04-','1','三级','8'),('120','民族医药学','04-01-','0','三级','114'),('121','其他','05-01-','0','三级','115'),('13','细胞生物学','02-05-','1','三级','8'),('14','病生理学','02-06-','1','三级','8'),('15','免疫学','02-07-','1','三级','8'),('16','基础医学其他学科','02-08-','1','三级','8'),('17','临床内科学','03-','1','二级',''),('18','心血管病学','03-01-','1','三级','17'),('19','呼吸病学','03-02-','1','三级','17'),('2','组织胚胎学\r\n','01-01-\r\n','1','三级','1'),('20','胃肠病学','03-03-','1','三级','17'),('21','血液病学','03-04-','1','三级','17'),('22','肾脏病学','03-05-','1','三级','17'),('23','内分泌学','03-06-','1','三级','17'),('24','神经内科学','03-07-','1','三级','17'),('25','传染病学','03-08-','1','三级','17'),('26','精神卫生学','03-09-','1','三级','17'),('27','内科学其他学科','03-10-','1','三级','17'),('28','临床外科学','04-','1','二级',''),('29','普通外科学','04-01-','1','三级','28'),('3','解剖学\r\n','01-02-\r\n','1','三级','1'),('30','心胸外科学','04-02-','1','三级','28'),('31','烧伤外科学','04-03-','1','三级','28'),('32','神经外科学','04-04-','1','三级','28'),('33','泌尿外科学','04-05-','1','三级','28'),('34','显微外科学','04-06-','1','三级','28'),('35','骨外科学','04-07-','1','三级','28'),('36','肿瘤外科学','04-08-','1','三级','28'),('37','颅脑外科学','04-09-','1','三级','28'),('38','整形、器官移植外科学','04-10-','1','三级','28'),('39','麻醉学','04-11-','1','三级','28'),('4','遗传学\r\n','01-03-\r\n','1','三级','1'),('40','皮肤、性病学','04-12-','1','三级','28'),('41','外科学其他学科','04-13-','1','三级','28'),('42','妇产科学','05-','1','二级',''),('43','妇科学','05-01-','1','三级','42'),('44','产科学','05-02-','1','三级','42'),('45','妇产科学其他学科','05-03-','1','三级','42'),('46','儿科学','06-','1','二级',''),('47','儿科内科学','06-01-','1','三级','46'),('48','儿科外科学','06-02-','1','三级','46'),('49','新生儿科学','06-03-','1','三级','46'),('5','病理学\r\n','01-04-\r\n','1','三级','1'),('50','儿科学其他学科','06-04-','1','三级','46'),('51','眼、耳鼻喉学科','07-','1','二级',''),('52','耳鼻喉科','07-01-','1','三级','46'),('53','眼科学','07-02-','1','三级','46'),('54','口腔医学学科','08-','1','二级',''),('55','口腔内科学','08-01-','1','三级','54'),('56','口腔外科学','08-02-','1','三级','54'),('57','口腔正畸学','08-03-','1','三级','54'),('58','口腔修复学','08-04-','1','三级','54'),('59','口腔学其他学科','08-05-','1','三级','54'),('6','寄生虫学\r\n','01-05-\r\n','1','三级','1'),('60','影像医学学科','09-','1','二级',''),('61','放射诊断学','09-01-','1','三级','60'),('62','超声诊断学','09-02-','1','三级','60'),('63','放射肿瘤学','09-03-','1','三级','60'),('64','影像医学其他学科','09-04-','1','三级','60'),('65','急诊学','10-','1','二级',NULL),('66','医学检验','11-','1','二级',NULL),('67','公共卫生与预防医学','12-','1','二级',NULL),('68','劳动卫生与环境卫生学','12-01-','1','三级','67'),('69','营养与食品卫生学','12-02-','1','三级','67'),('7','微生物学\r\n','01-06-\r\n','1','三级','1'),('70','儿少卫生与妇幼卫生学','12-03-','1','三级','67'),('71','卫生毒理学','12-04-','1','三级','67'),('72','统计流行病学','12-05-','1','三级','67'),('73','卫生检验学','12-06-','1','三级','67'),('74','公共卫生与预防医学其他学科','12-07-','1','三级','67'),('75','药学','13-','1','二级',''),('76','临床药学和临床药理学','13-01-','1','三级','75'),('77','药剂学','13-02-','1','三级','75'),('78','药物分析学','13-03-','1','三级','75'),('79','药事管理学','13-04-','1','三级','75'),('8','基础机能\r\n','02-\r\n','1','二级',''),('80','药学其他学科','13-05-','1','三级','75'),('81','护理学','14-','1','二级',''),('82','内科护理学','14-01-','1','三级','81'),('83','外科护理学','14-02-','1','三级','81'),('84','妇产科护理学','14-03-','1','三级','81'),('85','儿科护理学','14-04-','1','三级','81'),('86','护理其他学科','14-05-','1','三级','81'),('87','医学教育与卫生管理','15-','1','二级',''),('88','医学教育','15-01-','1','三级','87'),('89','卫生管理','15-02-','1','三级','87'),('9','生理学\r\n','02-01-\r\n','1','三级','8'),('90','全科医学与康复医学','16-','1','二级',''),('91','中医基础医学','01-','0','二级',''),('92','中医基础理论','01-01-','0','三级','91'),('93','中医诊断学','01-02-','0','三级','91'),('94','方剂学','01-03-','0','三级','91'),('95','中药学','01-04-','0','三级','91'),('96','内经','01-05-','0','三级','91'),('97','中医临床医学','02-','0','二级',''),('98','中医临床经典（伤寒、金匮、温病）','02-01','0','三级','97'),('99','中医内科','02-02-','0','三级','97');

/*Table structure for table `tb_temp_project` */

DROP TABLE IF EXISTS `tb_temp_project`;

CREATE TABLE `tb_temp_project` (
  `projectKey` varchar(50) NOT NULL,
  `projectName` varchar(50) DEFAULT NULL COMMENT '项目名称',
  `projectDescribe` varchar(50) DEFAULT NULL COMMENT '项目描述：1学术活动、2培训班',
  `projectLeader` varchar(50) DEFAULT NULL COMMENT '项目负责人',
  `startingTime` datetime DEFAULT NULL COMMENT '举办起始时间',
  `endingTime` datetime DEFAULT NULL COMMENT '举办结束时间',
  `hostPlace` varchar(50) DEFAULT NULL COMMENT '举办地点',
  `period` int(11) DEFAULT NULL COMMENT '学时总数',
  `grantCredit` float DEFAULT NULL COMMENT '拟授学分',
  `participant` varchar(50) DEFAULT NULL COMMENT '参加对象',
  `takeInNumber` int(11) DEFAULT NULL COMMENT '拟收人数',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `projectType` int(11) DEFAULT NULL COMMENT '项目类型：0中医，1西医',
  `hostWay` varchar(50) DEFAULT NULL COMMENT '举办方式',
  `hostPurpose` varchar(100) DEFAULT NULL COMMENT '举办目的',
  `topicAndDescribe` varchar(200) DEFAULT NULL COMMENT '项目讲授题目及内容简介',
  `evaluationMethod` varchar(50) DEFAULT NULL COMMENT '考核方式',
  `levelAndStatus` varchar(200) DEFAULT NULL COMMENT '项目水平及在国内外的地位',
  `projectCode` varchar(50) DEFAULT NULL COMMENT '项目编码',
  `createrKey` varchar(50) NOT NULL COMMENT '创建人',
  `createDate` datetime NOT NULL COMMENT '创建时间',
  `modifierKey` varchar(50) DEFAULT NULL COMMENT '修改人',
  `modifyDate` datetime DEFAULT NULL COMMENT '修改时间',
  `deleteFlag` int(11) NOT NULL COMMENT '删除标记：0、未删除，1、删除',
  `declareState` int(11) DEFAULT NULL COMMENT '申报状态：1已申报，0未申报',
  `declarant` varchar(50) DEFAULT NULL COMMENT '填表人',
  `declareCode` varchar(50) DEFAULT NULL COMMENT '申报编码',
  `declareTime` datetime DEFAULT NULL COMMENT '申报时间',
  `unitKey` varchar(50) DEFAULT NULL COMMENT '所在单位',
  `modifyState` int(11) DEFAULT NULL COMMENT '修改状态：0可修改，1不可修改',
  `hostDay` int(11) DEFAULT NULL COMMENT '举办天数',
  `declarantPhone` varchar(50) DEFAULT NULL COMMENT '填表人联系方式',
  `roleType` int(11) DEFAULT NULL COMMENT '提交的用户类型',
  `hostUnit` varchar(50) DEFAULT NULL,
  `inSubject` varchar(50) DEFAULT NULL,
  `declareUserKey` varchar(50) DEFAULT NULL COMMENT '上报用户',
  PRIMARY KEY (`projectKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_temp_project` */

insert  into `tb_temp_project`(`projectKey`,`projectName`,`projectDescribe`,`projectLeader`,`startingTime`,`endingTime`,`hostPlace`,`period`,`grantCredit`,`participant`,`takeInNumber`,`remark`,`projectType`,`hostWay`,`hostPurpose`,`topicAndDescribe`,`evaluationMethod`,`levelAndStatus`,`projectCode`,`createrKey`,`createDate`,`modifierKey`,`modifyDate`,`deleteFlag`,`declareState`,`declarant`,`declareCode`,`declareTime`,`unitKey`,`modifyState`,`hostDay`,`declarantPhone`,`roleType`,`hostUnit`,`inSubject`,`declareUserKey`) values ('123','123','学术活动','sd','2014-12-11 00:00:00','2014-12-13 00:00:00','1221',123,123,'123',213,'23',1,'ewr','wer','wer','wer','ewr',NULL,'sf','2014-09-09 00:00:00',NULL,NULL,0,0,NULL,NULL,NULL,'10',1,NULL,NULL,4,NULL,NULL,NULL),('1804f00a-462e-4a4f-9eb7-72f8bba94ac4','sdfsf','1','2323','2014-12-22 00:00:00','2014-12-24 00:00:00','1231233',21,21,'asd',21,'asda',0,'asdsa','213213','werwrwe','dsdasda','erwrwer','111','3465364','2014-12-21 10:19:24',NULL,NULL,0,NULL,'sadsa','2014x21221101924','2014-12-21 10:19:24','10',0,12,'1222222222',10,'10','2','3465364');

/*Table structure for table `tb_training_class` */

DROP TABLE IF EXISTS `tb_training_class`;

CREATE TABLE `tb_training_class` (
  `trainingKey` varchar(50) NOT NULL COMMENT '培训班主键',
  `projectName` varchar(50) DEFAULT NULL COMMENT '项目名称',
  `inSubject` varchar(50) DEFAULT NULL COMMENT '三级学科Key',
  `hostPurpose` varchar(100) DEFAULT NULL COMMENT '举办目的',
  `topicAndDescribe` varchar(200) DEFAULT NULL COMMENT '项目讲授题目及内容简介',
  `levelAndStatus` varchar(200) DEFAULT NULL COMMENT '项目水平及在国内外的地位',
  `relatedJobDescribe` varchar(200) DEFAULT NULL COMMENT '主办单位近几年与项目有关的工作概况',
  `hostWay` varchar(50) DEFAULT NULL COMMENT '举办方式',
  `charge` varchar(50) DEFAULT NULL COMMENT '拟收费标准',
  `startingTime` datetime DEFAULT NULL COMMENT '起始时间',
  `endingTime` datetime DEFAULT NULL COMMENT '结束时间',
  `hostDeadline` int(11) DEFAULT NULL COMMENT '举办期限（天）',
  `evaluationMethod` varchar(50) DEFAULT NULL COMMENT '考核方式',
  `participant` varchar(50) DEFAULT NULL COMMENT '教学对象',
  `takeInNumber` int(11) DEFAULT NULL COMMENT '拟招生人数',
  `period` int(11) DEFAULT NULL COMMENT '教学总学时数',
  `theoryPeriod` int(11) DEFAULT NULL COMMENT '讲授理论学时数',
  `experimentPeriod` int(11) DEFAULT NULL COMMENT '实验（技术示范）学时数',
  `hostPlace` varchar(50) DEFAULT NULL COMMENT '举办地点',
  `grantCredit` float DEFAULT NULL COMMENT '拟授学员学分',
  `hostUnitKey` varchar(50) DEFAULT NULL COMMENT '举办单位',
  `createrKey` varchar(50) NOT NULL COMMENT '创建者',
  `createDate` datetime NOT NULL COMMENT '创建时间',
  `modifierKey` varchar(50) DEFAULT NULL COMMENT '修改者',
  `modifyDate` datetime DEFAULT NULL COMMENT '修改时间',
  `deleteFlag` int(11) NOT NULL COMMENT '删除标记',
  `declareCode` varchar(50) DEFAULT NULL COMMENT '申报编码',
  `modifyState` int(11) DEFAULT NULL COMMENT '修改状态：0可修改，1不可修改',
  `declareTime` datetime DEFAULT NULL COMMENT '申报时间',
  `projectType` int(11) DEFAULT NULL COMMENT '项目类型：0中医，1西医',
  `roleType` int(11) DEFAULT NULL COMMENT '提交的用户类型',
  `declareUserKey` varchar(50) DEFAULT NULL COMMENT '上报用户',
  `secondSubject` varchar(50) DEFAULT NULL COMMENT '二级学科(key)',
  `declareState` int(11) DEFAULT NULL COMMENT '0未申报，1已申报',
  PRIMARY KEY (`trainingKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='培训班';

/*Data for the table `tb_training_class` */

insert  into `tb_training_class`(`trainingKey`,`projectName`,`inSubject`,`hostPurpose`,`topicAndDescribe`,`levelAndStatus`,`relatedJobDescribe`,`hostWay`,`charge`,`startingTime`,`endingTime`,`hostDeadline`,`evaluationMethod`,`participant`,`takeInNumber`,`period`,`theoryPeriod`,`experimentPeriod`,`hostPlace`,`grantCredit`,`hostUnitKey`,`createrKey`,`createDate`,`modifierKey`,`modifyDate`,`deleteFlag`,`declareCode`,`modifyState`,`declareTime`,`projectType`,`roleType`,`declareUserKey`,`secondSubject`,`declareState`) values ('f4c9dc6a-a534-4d47-8411-4dae0116c3cd','电风扇','2','三分法','时代复分','第三方的','第三附属','实践技能操作','','2014-12-24 00:00:00','2014-12-26 00:00:00',12,'网上答题','所得税',12,11,23,11,'速度',5.5,'10','1','2014-12-21 18:23:38',NULL,NULL,0,'',0,'2014-12-21 18:23:38',0,10,'3465364','1',0);

/*Table structure for table `tb_unit` */

DROP TABLE IF EXISTS `tb_unit`;

CREATE TABLE `tb_unit` (
  `unitKey` varchar(50) NOT NULL COMMENT '单位主键',
  `unitCode` varchar(4) NOT NULL COMMENT '单位代码',
  `unitName` varchar(50) DEFAULT NULL COMMENT '单位名称',
  `postcode` varchar(10) DEFAULT NULL COMMENT '邮编',
  `unitState` int(11) DEFAULT NULL COMMENT '单位状态：0启用，1停用',
  `telephone` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '电子邮件',
  `unitAddress` varchar(50) DEFAULT NULL COMMENT '单位地址',
  `createrKey` varchar(50) NOT NULL COMMENT '创建者',
  `createDate` datetime NOT NULL COMMENT '创建时间',
  `modifierKey` varchar(50) DEFAULT NULL COMMENT '修改者',
  `modifyDate` datetime DEFAULT NULL COMMENT '修改时间',
  `deleteFlag` int(11) NOT NULL COMMENT '删除标记：0未删除，1删除',
  `upUnitKey` varchar(50) DEFAULT NULL COMMENT '上级单位',
  `qq` varchar(20) DEFAULT NULL COMMENT 'QQ号码',
  PRIMARY KEY (`unitKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='单位表';

/*Data for the table `tb_unit` */

insert  into `tb_unit`(`unitKey`,`unitCode`,`unitName`,`postcode`,`unitState`,`telephone`,`email`,`unitAddress`,`createrKey`,`createDate`,`modifierKey`,`modifyDate`,`deleteFlag`,`upUnitKey`,`qq`) values ('1','001','继教委员',NULL,NULL,'12345678',NULL,'zxczc','zxcz','2010-09-09 00:00:00','23','2014-12-19 16:31:55',0,NULL,NULL),('10','010','专科秘书或主委',NULL,NULL,NULL,NULL,NULL,'zcxc','2010-09-09 00:00:00','23','2014-12-19 16:31:55',0,'4',NULL),('3','003','继教部','',1,NULL,NULL,NULL,'zxcz','2010-09-09 00:00:00','23','2014-12-19 16:31:55',0,'1',NULL),('4','004','学术部',NULL,1,NULL,NULL,NULL,'zxcz','2010-09-09 00:00:00','23','2014-12-19 16:31:55',0,'3',NULL),('5','005','卫生局',NULL,NULL,NULL,NULL,NULL,'zxcz','2010-09-09 00:00:00','23','2014-12-19 16:31:55',0,'3',NULL),('6','006','医大成教',NULL,1,NULL,NULL,NULL,'zxcz','2010-09-09 00:00:00','23','2014-12-19 16:31:55',0,'3',NULL),('7','007','继教办',NULL,NULL,NULL,NULL,NULL,'zxcz','2010-09-09 00:00:00','23','2014-12-19 16:31:55',0,'3',NULL),('8','008','单位科教科（无上级卫生局）','',NULL,'123456789','','','zxcz','2010-09-09 00:00:00','32','2014-12-19 18:09:57',0,'3',''),('9','008','单位科教科（有上级卫生局）',NULL,NULL,NULL,NULL,NULL,'zxxz','2010-09-09 00:00:00','23','2014-12-19 16:31:55',0,'5',NULL);

/*Table structure for table `tb_user` */

DROP TABLE IF EXISTS `tb_user`;

CREATE TABLE `tb_user` (
  `userKey` varchar(50) NOT NULL COMMENT '用户主键',
  `userName` varchar(50) DEFAULT NULL COMMENT '用户名',
  `password` varchar(50) DEFAULT NULL COMMENT '密码',
  `unitKey` varchar(50) DEFAULT NULL COMMENT '单位名称',
  `userType` int(11) DEFAULT NULL COMMENT '用户类型：申报用户，审批用户',
  `roleType` int(11) DEFAULT NULL COMMENT '角色类型',
  `upUserKey` varchar(50) DEFAULT NULL COMMENT '上级用户',
  `userState` int(11) DEFAULT NULL COMMENT '用户状态，0启用，1禁用',
  PRIMARY KEY (`userKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_user` */

insert  into `tb_user`(`userKey`,`userName`,`password`,`unitKey`,`userType`,`roleType`,`upUserKey`,`userState`) values ('121','5','A9F056A3B59513BD','5',1,5,NULL,0),('123','1','A9F056A3B59513BD','1',1,1,NULL,0),('212','2','A9F056A3B59513BD','2',0,2,NULL,0),('23','4','A9F056A3B59513BD','4',1,4,NULL,1),('32','3','A9F056A3B59513BD','3',1,3,NULL,0),('3245','7','A9F056A3B59513BD','7',0,7,NULL,0),('3465364','10','A9F056A3B59513BD','10',0,10,NULL,0),('371fcb82-420b-48fd-9a1b-9063ec3600a6','44','A9F056A3B59513BD','4',1,4,'',1),('4353','6','A9F056A3B59513BD','6',1,6,NULL,0),('5646','9','A9F056A3B59513BD','9',0,9,'121',0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
