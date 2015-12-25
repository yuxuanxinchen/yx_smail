/*
Navicat MySQL Data Transfer

Source Server         : yx
Source Server Version : 50611
Source Host           : 127.0.0.1:3306
Source Database       : crm

Target Server Type    : MYSQL
Target Server Version : 50611
File Encoding         : 65001

Date: 2015-12-15 22:54:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for contacts
-- ----------------------------
DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts` (
  `contacts_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `contacts_name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contacts_sex` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contacts_birthday` date DEFAULT NULL,
  `contacts_job` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contacts_office_phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contacts_phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contacts_email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contacts_register` date DEFAULT NULL,
  `contacts_qq` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contacts_description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`contacts_id`),
  KEY `ewrwer` (`customer_id`),
  CONSTRAINT `ewrwer` FOREIGN KEY (`customer_id`) REFERENCES `customer_info` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of contacts
-- ----------------------------
INSERT INTO `contacts` VALUES ('3', '32', '雨宣1', '女', '2015-12-16', '软件工程师', '3454556', '1234546546', 'xuan121000@163.com', '2015-12-16', '13262349508', '樊宣宣');
INSERT INTO `contacts` VALUES ('4', '7', '梦晨宇轩', '男', '2015-12-16', '网页架构师', '3454556', '1234546546', '466682881@qq.com', '2015-12-16', '13262349508', '他在我面前如此从容，仿佛怎么样都是理所当然。一起的两个人怎么都是要互相信任的，不是吗？我善良地为他寻找着借口，以为他只不过是爱的方式不同，以为他只是不善表达，以为只是我们相距太远相聚太少，以为只是爱得深了无暇顾及爱的方式，就以为这段恋情会一直下去有个好的结局。\n\n可是我想了那么多的客观原因，却唯独忘了他只是没有心。从来不怀疑他的真心，我所做的所有假设都是以他爱我为前提。在这个前提下，什么都可以原谅。可是没有爱，所有的借口原来也是理所当然。');
INSERT INTO `contacts` VALUES ('5', '32', '雨宣馨辰', '男', '2015-12-30', '网页架构师', '3454556', '1234546546', '466682881@qq.com', '2015-12-16', '13262349508', '我是一个中国人');
INSERT INTO `contacts` VALUES ('6', '36', '集团总部', '男', '2015-12-23', '网页设计师', '3654646', '1234325325', 'xuan123@126.com', '2015-12-10', '1546465', '我就是这样过来的');
INSERT INTO `contacts` VALUES ('7', '14', '马云', '男', '2015-12-10', '歌唱家', '3242342', '3324234', '32424@qq.com', '2015-12-10', '3423424', '就是这么叼');
INSERT INTO `contacts` VALUES ('8', '5', '李彦宏', '男', '2015-12-10', '董事长', '345345345', '34535345', '345345@baicu.com', '2015-12-10', '43534535', 'gaidu CEO');
INSERT INTO `contacts` VALUES ('9', '6', '王丽丽', '女', '2015-12-22', '淘宝总监', '34534534', '34534534', '5345345@qq.com', '2015-12-10', '534535345', 'fwerwerwerwerwe');
INSERT INTO `contacts` VALUES ('10', '18', '小站锁', '女', '2015-12-10', '小说家', '45345345', '543543', '34534534', '2015-12-17', '345435', '5345435345435');
INSERT INTO `contacts` VALUES ('11', '9', '小王', '女', '2015-12-10', 'xiaofew', '345345', '534534', '534534', '2015-12-15', '34534534', '34543');
INSERT INTO `contacts` VALUES ('12', '5', 'wanger', '女', '2015-12-10', '435', '435', '345345', '3453453@qq.com', '2015-12-10', '43534', '4353');
INSERT INTO `contacts` VALUES ('13', '1', '345345', '男', '2015-12-07', '43543', '534535', '5345', '534534', '2015-12-15', '34534534', '53453453');
INSERT INTO `contacts` VALUES ('14', '5', '345345345', '男', '2015-12-16', '43534534', '345353', '345435', '345435', '2015-12-08', '345345', '');
INSERT INTO `contacts` VALUES ('15', '3', '345345345', '男', '2015-12-25', '534534', '', '34534', '34534534', '2015-12-23', '', '5345345');
INSERT INTO `contacts` VALUES ('16', '5', 'wanglijuan', '女', '2015-12-23', '学生', '54645', '145465645', '456456456', '2015-12-16', '645654645', '我的');
INSERT INTO `contacts` VALUES ('17', '1', '斯蒂芬', '女', '2015-12-09', '345345', '5345345', ' 453453', ' 34534', '2015-12-16', '34534', '5345345345');
INSERT INTO `contacts` VALUES ('18', '5', '小丽丽', '男', '2015-12-23', '技术', '15568813450', '134243242342', 'xuan@1.com', '2015-12-18', '32432432424', '');
INSERT INTO `contacts` VALUES ('19', '7', '梦晨宇轩', '女', '2015-12-16', '网页架构师', '3454556', '1234546546', '466682881@qq.com', '2015-12-16', '13262349508', '有自己的骄傲');
INSERT INTO `contacts` VALUES ('20', '32', '雨宣', '女', '2015-12-16', '软件工程师', '3454556', '1234546546', 'xuan121000@163.com', '2015-12-16', '13262349508', '樊宣宣');
INSERT INTO `contacts` VALUES ('21', '32', '雨宣', '女', '2015-12-16', '软件工程师', '3454556', '1234546546', 'xuan121000@163.com', '2015-12-16', '13262349508', '樊宣宣');
INSERT INTO `contacts` VALUES ('22', '32', '雨宣', '女', '2015-12-16', '软件工程师', '3454556', '1234546546', 'xuan121000@163.com', '2015-12-16', '13262349508', '樊宣宣');
INSERT INTO `contacts` VALUES ('23', '32', '雨宣', '女', '2015-12-16', '软件工程师', '3454556', '1234546546', 'xuan121000@163.com', '2015-12-16', '13262349508', '樊宣宣');
INSERT INTO `contacts` VALUES ('24', '32', '雨宣1', '男', '2015-12-16', '软件工程师', '3454556', '1234546546', 'xuan121000@163.com', '2015-12-16', '13262349508', '樊宣宣');
INSERT INTO `contacts` VALUES ('28', '3', '庞凤楚', '男', '2015-12-29', 'ceo', '112', '110', '15543106645@163.com', '2015-12-07', '1111222334', '担任ceo赢取白富美,走向人生巅峰');
INSERT INTO `contacts` VALUES ('29', '3', '李淑烨', '女', '2015-12-07', '庞凤楚媳妇', '110', '110', 'itcast_cxf@126.com', '2015-12-07', '110', '');
INSERT INTO `contacts` VALUES ('30', '1', 'sdf', '男', '2015-12-07', '111', '111', '111', '15543106645@163.com', '2015-12-07', '111', '');

-- ----------------------------
-- Table structure for customer_complain
-- ----------------------------
DROP TABLE IF EXISTS `customer_complain`;
CREATE TABLE `customer_complain` (
  `complain_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `user_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL COMMENT '客户ID',
  `complain_persion` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '投诉人',
  `complain_theme` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '投诉主题',
  `complain_text` text COLLATE utf8_unicode_ci COMMENT '投诉内容',
  `complain_date` date DEFAULT NULL,
  `complain_manage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '投诉处理办法',
  `complain_status` int(3) DEFAULT NULL,
  `complain_remarks` text COLLATE utf8_unicode_ci COMMENT '投诉备注',
  `pleased_level` int(3) DEFAULT NULL,
  PRIMARY KEY (`complain_id`),
  KEY `34rwerw` (`user_id`),
  KEY `wrsfsfre` (`customer_id`),
  KEY `srer` (`complain_status`),
  KEY `wewerwer` (`pleased_level`),
  CONSTRAINT `34rwerw` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `srer` FOREIGN KEY (`complain_status`) REFERENCES `sjzdxx` (`sjzdxx_id`),
  CONSTRAINT `wewerwer` FOREIGN KEY (`pleased_level`) REFERENCES `sjzdxx` (`sjzdxx_id`),
  CONSTRAINT `wrsfsfre` FOREIGN KEY (`customer_id`) REFERENCES `customer_info` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of customer_complain
-- ----------------------------
INSERT INTO `customer_complain` VALUES ('1', '4', '4', null, '你好啊', '电脑出问题了', '2015-12-13', '还没有处理哦', '42', '我在中国延安大街', '52');
INSERT INTO `customer_complain` VALUES ('6', '16', '1', '雨宣', '电脑坏了', '非我非为违法我', '2015-12-14', ' 莪无法为莪无法 ', '42', '为分为诶我范围分为违法', '52');
INSERT INTO `customer_complain` VALUES ('7', '16', '5', '丽丽', '手机好了', 'few认为我认为为 ', '2015-12-14', '惹我我认为认为为', '43', ' 绕弯儿王二我', '52');
INSERT INTO `customer_complain` VALUES ('8', '16', '3', '3453', '45435', '34534', '2015-12-14', '534534', '41', '5345', '51');
INSERT INTO `customer_complain` VALUES ('9', '16', '4', '345345', '345', '5345', '2015-12-14', '345345', '41', '3454', '52');
INSERT INTO `customer_complain` VALUES ('10', '16', '3', '4234234', '23423', '32432', '2015-12-14', '234234', '41', '4234', '51');
INSERT INTO `customer_complain` VALUES ('11', '13', '3', '34534234234324234', '43534543534534534534', '34534543534', '2015-12-14', '345345345', '41', '345345345', '51');
INSERT INTO `customer_complain` VALUES ('12', '2', '1', '345345', '4345', '345345', '2015-12-14', '34534', '44', '5345345', '51');

-- ----------------------------
-- Table structure for customer_info
-- ----------------------------
DROP TABLE IF EXISTS `customer_info`;
CREATE TABLE `customer_info` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_mc` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_xz` int(11) DEFAULT NULL COMMENT '外键，关联数据字典表',
  `customer_lx` int(11) DEFAULT NULL,
  `customer_level` int(11) DEFAULT NULL,
  `customer_wz` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_dh` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_djr` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_address` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_sssf` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属身份',
  `customer_sscs` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属城市',
  `customer_yb` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '邮政编码',
  `customer_yh` int(11) DEFAULT NULL,
  `customer_yhzh` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_ly` int(11) DEFAULT NULL,
  `customer_bz` text COLLATE utf8_unicode_ci,
  `customer_khyh` int(11) DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  KEY `xzsfew` (`customer_xz`),
  KEY `lsser` (`customer_lx`),
  KEY `slierwsr` (`customer_level`),
  KEY `lsier_erew` (`customer_ly`),
  KEY `rewrwe` (`customer_khyh`),
  CONSTRAINT `lsier_erew` FOREIGN KEY (`customer_ly`) REFERENCES `sjzdxx` (`sjzdxx_id`),
  CONSTRAINT `lsser` FOREIGN KEY (`customer_lx`) REFERENCES `sjzdxx` (`sjzdxx_id`),
  CONSTRAINT `rewrwe` FOREIGN KEY (`customer_khyh`) REFERENCES `sjzdxx` (`sjzdxx_id`),
  CONSTRAINT `slierwsr` FOREIGN KEY (`customer_level`) REFERENCES `data_level` (`level_id`),
  CONSTRAINT `xzsfew` FOREIGN KEY (`customer_xz`) REFERENCES `sjzdxx` (`sjzdxx_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of customer_info
-- ----------------------------
INSERT INTO `customer_info` VALUES ('1', '123', '15', '2', '2', 'www.baidu.com', '234234', '雨宣', '23424', '甘肃僧', '234234', '2234234', null, '909698769876', '31', '我是中国国人', '22');
INSERT INTO `customer_info` VALUES ('3', '潘凤出', '11', '1', '1', 'http://www.baidu.com', '15568813450', null, '吉林省长春市', '甘肃省', '庆阳市', '12312214', null, '342423423423424', '31', '我是一个中国嗯', '22');
INSERT INTO `customer_info` VALUES ('4', '潘凤出', '11', '1', '1', 'http://www.baidu.com', '15568813450', null, '吉林省长春市', '甘肃省', '庆阳市', '12312214', null, '342423423423424', '31', '我是一个中国嗯', '22');
INSERT INTO `customer_info` VALUES ('5', '百度', '12', '1', '2', 'http://www.baidu.com', '7001231', null, '北京市', '中国', '地球', '12321432', null, '42342342342', '31', '掉的不行', '23');
INSERT INTO `customer_info` VALUES ('6', '淘宝', '11', '1', '1', 'http://www.taobao.com', '14566576575', null, '234234243', '河南省', '郑州市', '43453453', null, '13432423545345', '31', '淘宝购物网站', '22');
INSERT INTO `customer_info` VALUES ('7', '潭州学院', '11', '1', '1', 'http://www.taznhou.edu', '1234567', null, '6464564', '湖南省', '长沙', '43453453', null, '13432423545345', '31', '在线教育', '22');
INSERT INTO `customer_info` VALUES ('9', '潭州学院1', '11', '1', '1', '', '', null, '', '', '', '', null, '', '31', '', '22');
INSERT INTO `customer_info` VALUES ('11', '潭州', '11', '1', '1', '', '', null, '', '', '', '', null, '', '31', '', '22');
INSERT INTO `customer_info` VALUES ('14', '阿里巴巴', '11', '1', '1', 'http://alibaab.com', '6188', null, '湖南省长沙市', '中国', '香港', '56456456', null, '535345435353X', '31', '阿里巴巴是非常强悍的一个公司', '22');
INSERT INTO `customer_info` VALUES ('16', '庞凤楚', '12', '2', '2', 'www.hao123.com', '15543196645', null, '长春市', '山西', '长春市', '048003', null, '1242341', '31', '好公司', '22');
INSERT INTO `customer_info` VALUES ('17', '', '11', '1', '1', '', '', null, '', '', '', '', null, '', '31', '', '22');
INSERT INTO `customer_info` VALUES ('18', '小战', '11', '1', '1', '仙境', '', null, '', '吉林省', '', '', null, '', '31', 'sfjoweijfeiowfwefwefwefwf我啊放假诶哦服务费哦减肥owe分i', '22');
INSERT INTO `customer_info` VALUES ('26', '潭州学院', '11', '1', '1', '', '', null, '', '', '', '', null, '', '31', '', '22');
INSERT INTO `customer_info` VALUES ('27', '345345', '11', '1', '1', '', '', null, '', '', '', '', null, '', '31', '', '22');
INSERT INTO `customer_info` VALUES ('30', '234324', '11', '1', '1', '32423', '2342342', null, '4234', '423432', '23423', '4234', null, '32423', '31', '4234234234', '22');
INSERT INTO `customer_info` VALUES ('31', '汽车昂', '11', '1', '1', 'http://www.qiche.com', '232878593', '雨宣', '上海市', '中国', '美国', '235345', null, '322534534534534', '31', 'ibernate: select sjzdfl0_.sjzdfl_id as sjzdfl1_0_, sjzdfl0_.isOk as isOk0_, sjzdfl0_.sjzdfl_mc as sjzdfl3_0_ from crm.sjzdfl sjzdfl0_ where sjzdfl0_.sjzdfl_mc=?\nHibernate: select sjzdxx0_.sjzdxx_id as sjzdxx1_1_, sjzdxx0_.sjzdfl_id as sjzdfl2_1_, sjzdxx0_.sjzdxx_mc as sjzdxx3_1_, sjzdxx0_.is_ok as is4_1_ from crm.sjzdxx sjzdxx0_ where sjzdxx0_.sjzdfl_id=?\nHibernate: select sjzdfl0_.sjzdfl_id as sjzdfl1_0_, sjzdfl0_.isOk as isOk0_, sjzdfl0_.sjzdfl_mc as sjzdfl3_0_ from crm.sjzdfl sjzdfl0_ where sjzdfl0_.sjzdfl_mc=?\nHibernate: select sjzdxx0_.sjzdxx_id as sjzdxx1_1_, sjzdxx0_.sjzdfl_id as sjzd', '22');
INSERT INTO `customer_info` VALUES ('32', '雨宣真好', '11', '1', '1', 'http://www.yuxuan.com', '5', '雨宣', '534534534', '5345', '345', '43543', null, '534543', '31', '5345345345345', '30');
INSERT INTO `customer_info` VALUES ('33', '435', '11', '1', '1', '', '', '雨宣', '', '', '', '', null, '', '31', '', '22');
INSERT INTO `customer_info` VALUES ('34', '4351', '11', '1', '1', '', '', '雨宣', '', '', '', '', null, '', '31', '', '22');
INSERT INTO `customer_info` VALUES ('35', '潭州教育学院', '11', '1', '1', '', '43534', '雨宣', '5345345', '5435', '5345', '5435', null, '435435', '31', '345345', '22');
INSERT INTO `customer_info` VALUES ('36', '雨宣集团', '11', '1', '1', 'http://www.yuxuan.com', '15568812345', '雨宣', '吉林省长湖村是', '甘肃省', '庆阳市', '129232', null, '53453453453534', '31', '公司生日正好增日上', '22');
INSERT INTO `customer_info` VALUES ('37', '2234', '11', '4', '1', '', '', '雨宣', '', '4234234', '', '', null, '', '31', '', '22');

-- ----------------------------
-- Table structure for data_level
-- ----------------------------
DROP TABLE IF EXISTS `data_level`;
CREATE TABLE `data_level` (
  `level_id` int(255) NOT NULL,
  `level_ywl` double(255,10) DEFAULT NULL,
  `level_mc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`level_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of data_level
-- ----------------------------
INSERT INTO `data_level` VALUES ('1', '300.0000000000', '潜在客户');
INSERT INTO `data_level` VALUES ('2', '2332.0000000000', '普通客户');
INSERT INTO `data_level` VALUES ('3', '500.6000000000', 'VIP客户');
INSERT INTO `data_level` VALUES ('4', '566.4500000000', '高级客户');
INSERT INTO `data_level` VALUES ('5', '21312.0000000000', '');
INSERT INTO `data_level` VALUES ('6', '12334.0000000000', '');
INSERT INTO `data_level` VALUES ('7', '300.0000000000', '');
INSERT INTO `data_level` VALUES ('8', '300.0000000000', '');
INSERT INTO `data_level` VALUES ('9', '123.0000000000', '');
INSERT INTO `data_level` VALUES ('10', '300.0000000000', '');

-- ----------------------------
-- Table structure for menu_info
-- ----------------------------
DROP TABLE IF EXISTS `menu_info`;
CREATE TABLE `menu_info` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of menu_info
-- ----------------------------
INSERT INTO `menu_info` VALUES ('1', '客户信息');
INSERT INTO `menu_info` VALUES ('2', '客户服务');
INSERT INTO `menu_info` VALUES ('3', '日程-任务');
INSERT INTO `menu_info` VALUES ('4', '项目管理');
INSERT INTO `menu_info` VALUES ('5', '系统管理');
INSERT INTO `menu_info` VALUES ('6', '数据字典');
INSERT INTO `menu_info` VALUES ('7', '消息提醒');

-- ----------------------------
-- Table structure for mession
-- ----------------------------
DROP TABLE IF EXISTS `mession`;
CREATE TABLE `mession` (
  `mission_id` int(11) NOT NULL AUTO_INCREMENT,
  `mission_subject` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mission_customer_id` int(20) DEFAULT NULL,
  `mission_contacts_id` int(20) DEFAULT NULL,
  `mission_complete_date` date DEFAULT NULL,
  `mission_precedence` int(3) DEFAULT NULL,
  `mission_admin_id` int(20) DEFAULT NULL,
  `mission_description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`mission_id`),
  KEY `3rttre` (`mission_customer_id`),
  KEY `retertert` (`mission_contacts_id`),
  KEY `ewrewrw` (`mission_admin_id`),
  CONSTRAINT `3rttre` FOREIGN KEY (`mission_customer_id`) REFERENCES `customer_info` (`customer_id`),
  CONSTRAINT `ewrewrw` FOREIGN KEY (`mission_admin_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `retertert` FOREIGN KEY (`mission_contacts_id`) REFERENCES `contacts` (`contacts_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of mession
-- ----------------------------
INSERT INTO `mession` VALUES ('1', '我要出去了', '6', '7', '2015-12-14', '1', '13', '今天下午8点');
INSERT INTO `mession` VALUES ('2', '时间到了', '11', '28', '2015-12-14', '1', '21', ' CustomerInfo customerInfo; private String contactsName; private String contactsSex; private Date contactsBirthday; private String contactsJob; private String contactsOfficePhone; private String contactsPhone; private String contactsEmail; private Date contactsRegister; private String contactsQq; private String contactsDescription');
INSERT INTO `mession` VALUES ('3', '爬山旅游', '7', '7', '2015-12-14', '1', '21', '我10月八号要去旅游');
INSERT INTO `mession` VALUES ('4', '出去买东西', '5', '7', '2015-12-15', '1', '21', '下午来年观点');
INSERT INTO `mession` VALUES ('5', '谈生意', '5', '5', '2015-12-15', '1', '21', '儿啊额外人啊');
INSERT INTO `mession` VALUES ('6', '斯蒂芬森分', '3', '5', '2015-12-15', '1', '21', '媕娿');
INSERT INTO `mession` VALUES ('7', '玩儿玩儿', '4', '5', '2015-12-15', '1', '21', '玩儿玩儿');
INSERT INTO `mession` VALUES ('8', '345345', '1', '5', '2015-12-15', '3', '21', '345435');
INSERT INTO `mession` VALUES ('13', '水费电费水费sdfasdfasdfa', '6', '4', '2015-12-15', '1', '21', '斯蒂芬斯蒂芬森分');
INSERT INTO `mession` VALUES ('14', '水费电费水费3242342', '6', '4', '2015-12-15', '1', '21', '斯蒂芬斯蒂芬森分');
INSERT INTO `mession` VALUES ('15', 'tertet', '6', '5', '2015-12-15', '1', '21', 'ertertet');

-- ----------------------------
-- Table structure for project_manager
-- ----------------------------
DROP TABLE IF EXISTS `project_manager`;
CREATE TABLE `project_manager` (
  `project_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `project_customer_id` int(11) DEFAULT NULL,
  `project_schedule_id` int(11) DEFAULT NULL,
  `project_admin_id` int(11) DEFAULT NULL,
  `project_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `project_create_time` date DEFAULT NULL,
  `project_sort` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `project_rate` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '项目进度',
  `project_description` text COLLATE utf8_unicode_ci COMMENT '项目总结',
  `project_summarize` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `project_verify` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `project_business` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '项目交易',
  `remarks1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remarks2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remarks3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remarks4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remarks5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`project_id`),
  KEY `fdgdfgdf` (`project_customer_id`),
  KEY `reterte` (`project_schedule_id`),
  KEY `hgjtyutut` (`project_admin_id`),
  CONSTRAINT `hgjtyutut` FOREIGN KEY (`project_admin_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `fdgdfgdf` FOREIGN KEY (`project_customer_id`) REFERENCES `customer_info` (`customer_id`),
  CONSTRAINT `reterte` FOREIGN KEY (`project_schedule_id`) REFERENCES `schedule` (`schedule_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of project_manager
-- ----------------------------
INSERT INTO `project_manager` VALUES ('1', 'CRM', '9', '6', '21', '1', '2015-12-15', null, '10', 'CRM是一套系统', '从中得到了很多的总结希望你也是', '2', '1', null, null, null, null, null);
INSERT INTO `project_manager` VALUES ('2', '潭州平台', '7', '8', '21', '1', '2015-12-15', null, '10', '潭州在线教育', '从中得到了启发', '1', '1', null, null, null, null, null);
INSERT INTO `project_manager` VALUES ('3', '客户管理系统', '18', '10', '21', '1', '2015-12-15', null, '67', '客户关系系统', '在这个客户管理系统中我学到了很多很多', '2', '2', null, null, null, null, null);
INSERT INTO `project_manager` VALUES ('4', '百度项目', '11', '7', '21', '2', '2015-12-15', null, '45', '45345', '345345', '2', '2', null, null, null, null, null);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('65', '大老板');
INSERT INTO `role` VALUES ('78', 'CEIA');
INSERT INTO `role` VALUES ('79', 'admin');

-- ----------------------------
-- Table structure for role_relation
-- ----------------------------
DROP TABLE IF EXISTS `role_relation`;
CREATE TABLE `role_relation` (
  `role_relation_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `role_relaction_access` int(11) DEFAULT NULL COMMENT '是否有访问权限',
  PRIMARY KEY (`role_relation_id`),
  KEY `erwerdfs` (`role_id`),
  KEY `534534wer` (`menu_id`),
  CONSTRAINT `534534wer` FOREIGN KEY (`menu_id`) REFERENCES `menu_info` (`menu_id`),
  CONSTRAINT `erwerdfs` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=406 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of role_relation
-- ----------------------------
INSERT INTO `role_relation` VALUES ('301', '65', '1', '0');
INSERT INTO `role_relation` VALUES ('302', '65', '2', '0');
INSERT INTO `role_relation` VALUES ('303', '65', '3', '0');
INSERT INTO `role_relation` VALUES ('304', '65', '4', '0');
INSERT INTO `role_relation` VALUES ('305', '65', '5', '1');
INSERT INTO `role_relation` VALUES ('306', '65', '6', '1');
INSERT INTO `role_relation` VALUES ('307', '65', '7', '1');
INSERT INTO `role_relation` VALUES ('392', '78', '1', '1');
INSERT INTO `role_relation` VALUES ('393', '78', '2', '1');
INSERT INTO `role_relation` VALUES ('394', '78', '3', '1');
INSERT INTO `role_relation` VALUES ('395', '78', '4', '1');
INSERT INTO `role_relation` VALUES ('396', '78', '5', '1');
INSERT INTO `role_relation` VALUES ('397', '78', '6', '1');
INSERT INTO `role_relation` VALUES ('398', '78', '7', '1');
INSERT INTO `role_relation` VALUES ('399', '79', '1', '1');
INSERT INTO `role_relation` VALUES ('400', '79', '2', '1');
INSERT INTO `role_relation` VALUES ('401', '79', '3', '1');
INSERT INTO `role_relation` VALUES ('402', '79', '4', '1');
INSERT INTO `role_relation` VALUES ('403', '79', '5', '1');
INSERT INTO `role_relation` VALUES ('404', '79', '6', '1');
INSERT INTO `role_relation` VALUES ('405', '79', '7', '1');

-- ----------------------------
-- Table structure for schedule
-- ----------------------------
DROP TABLE IF EXISTS `schedule`;
CREATE TABLE `schedule` (
  `schedule_id` int(11) NOT NULL AUTO_INCREMENT,
  `schedule_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `schedule_admin_id` int(255) DEFAULT NULL COMMENT '创建人',
  `schedule_mession_id` int(11) DEFAULT NULL,
  `schedule_create_time` date DEFAULT NULL,
  `schedule_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `schedule_result_date` date DEFAULT NULL,
  `schedule_description` text COLLATE utf8_unicode_ci,
  `remarks1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remarks2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remarks3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`schedule_id`),
  KEY `erwer` (`schedule_mession_id`),
  KEY `sdfsdfsdf` (`schedule_admin_id`),
  CONSTRAINT `erwer` FOREIGN KEY (`schedule_mession_id`) REFERENCES `mession` (`mission_id`),
  CONSTRAINT `sdfsdfsdf` FOREIGN KEY (`schedule_admin_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of schedule
-- ----------------------------
INSERT INTO `schedule` VALUES ('3', '马云', '21', '3', '2015-12-15', '1', '2015-12-23', '今天过年了莪', null, null, null);
INSERT INTO `schedule` VALUES ('6', '生日', '21', '6', '2015-12-15', '1', '2015-12-10', '明天是我的生日', null, null, null);
INSERT INTO `schedule` VALUES ('7', '祖国的生日', '21', '6', '2015-12-15', '1', '2015-12-25', '今天是祖国的社工你让', null, null, null);
INSERT INTO `schedule` VALUES ('8', 'erwe', '21', '2', '2015-12-15', '1', '2015-12-16', 'erwer', null, null, null);
INSERT INTO `schedule` VALUES ('9', 'erwerw', '21', '3', '2015-12-15', '1', '2015-12-23', 'werwer', null, null, null);
INSERT INTO `schedule` VALUES ('10', 'ewrwerwer', '21', '13', '2015-12-15', '1', '2015-12-23', 'erwerw', null, null, null);
INSERT INTO `schedule` VALUES ('11', 'ewrwerwerw', '21', '13', '2015-12-15', '1', '2015-11-30', 'ewrwer', null, null, null);
INSERT INTO `schedule` VALUES ('12', 'hjgjghj', '21', '15', '2015-12-15', '1', '2015-12-23', 'ghjgjgj', null, null, null);
INSERT INTO `schedule` VALUES ('13', 'jghjgj', '21', '6', '2015-12-15', '1', '2015-12-23', 'ghjghjghjgj', null, null, null);
INSERT INTO `schedule` VALUES ('14', 'ghjgjgh', '21', '3', '2015-12-15', '1', '2015-12-17', 'ghjghj', null, null, null);
INSERT INTO `schedule` VALUES ('15', 'rterte', '21', '5', '2015-12-15', '2', '2015-12-29', 'ertett', null, null, null);

-- ----------------------------
-- Table structure for sjzdfl
-- ----------------------------
DROP TABLE IF EXISTS `sjzdfl`;
CREATE TABLE `sjzdfl` (
  `sjzdfl_id` int(11) NOT NULL,
  `sjzdfl_mc` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '数据字典分类名称',
  `isOk` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '是否启用分类信息',
  PRIMARY KEY (`sjzdfl_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sjzdfl
-- ----------------------------
INSERT INTO `sjzdfl` VALUES ('1', '企业类型-分类', 'Y');
INSERT INTO `sjzdfl` VALUES ('2', '企业性质-类型', 'Y');
INSERT INTO `sjzdfl` VALUES ('3', '开户银行-分类', 'Y');
INSERT INTO `sjzdfl` VALUES ('4', '信息来源-分类', 'Y');
INSERT INTO `sjzdfl` VALUES ('5', '客户满意度-分类', 'Y');
INSERT INTO `sjzdfl` VALUES ('6', '投诉处理状态', 'Y');
INSERT INTO `sjzdfl` VALUES ('7', '送货方式', 'Y');
INSERT INTO `sjzdfl` VALUES ('8', '我的小店', 'Y');
INSERT INTO `sjzdfl` VALUES ('9', '测试3', 'N');
INSERT INTO `sjzdfl` VALUES ('10', '', 'N');

-- ----------------------------
-- Table structure for sjzdxx
-- ----------------------------
DROP TABLE IF EXISTS `sjzdxx`;
CREATE TABLE `sjzdxx` (
  `sjzdxx_id` int(11) NOT NULL AUTO_INCREMENT,
  `sjzdfl_id` int(11) DEFAULT NULL,
  `sjzdxx_mc` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `is_ok` varchar(10) DEFAULT NULL COMMENT '是否启用菜单',
  PRIMARY KEY (`sjzdxx_id`),
  KEY `sjzdfl_id--sjzzxx_flid` (`sjzdfl_id`),
  CONSTRAINT `sjzdfl_id??sjzzxx_flid` FOREIGN KEY (`sjzdfl_id`) REFERENCES `sjzdfl` (`sjzdfl_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sjzdxx
-- ----------------------------
INSERT INTO `sjzdxx` VALUES ('1', '1', '服务业', 'Y');
INSERT INTO `sjzdxx` VALUES ('2', '1', '制造业', 'Y');
INSERT INTO `sjzdxx` VALUES ('3', '1', '农业', 'Y');
INSERT INTO `sjzdxx` VALUES ('4', '1', '工业', 'Y');
INSERT INTO `sjzdxx` VALUES ('5', '1', '', 'N');
INSERT INTO `sjzdxx` VALUES ('6', '1', '', 'N');
INSERT INTO `sjzdxx` VALUES ('7', '1', '', 'N');
INSERT INTO `sjzdxx` VALUES ('8', '1', '', 'N');
INSERT INTO `sjzdxx` VALUES ('9', '1', '', 'N');
INSERT INTO `sjzdxx` VALUES ('10', '1', '其他', 'N');
INSERT INTO `sjzdxx` VALUES ('11', '2', '国有企业', 'Y');
INSERT INTO `sjzdxx` VALUES ('12', '2', '私营企业', 'Y');
INSERT INTO `sjzdxx` VALUES ('13', '2', '外资企业', 'Y');
INSERT INTO `sjzdxx` VALUES ('14', '2', '合资企业', 'Y');
INSERT INTO `sjzdxx` VALUES ('15', '2', '日企', 'Y');
INSERT INTO `sjzdxx` VALUES ('16', '2', '法国企业', 'Y');
INSERT INTO `sjzdxx` VALUES ('17', '2', '', 'N');
INSERT INTO `sjzdxx` VALUES ('18', '2', '', 'N');
INSERT INTO `sjzdxx` VALUES ('19', '2', '', 'Y');
INSERT INTO `sjzdxx` VALUES ('20', '2', '其他', 'Y');
INSERT INTO `sjzdxx` VALUES ('21', '3', '国有企业', 'N');
INSERT INTO `sjzdxx` VALUES ('22', '3', '工商银行', 'Y');
INSERT INTO `sjzdxx` VALUES ('23', '3', '农业银行', 'Y');
INSERT INTO `sjzdxx` VALUES ('24', '3', '建设银行', 'Y');
INSERT INTO `sjzdxx` VALUES ('25', '3', '招商银行', 'Y');
INSERT INTO `sjzdxx` VALUES ('26', '3', '汇丰银行', 'Y');
INSERT INTO `sjzdxx` VALUES ('27', '3', '天地银行', 'Y');
INSERT INTO `sjzdxx` VALUES ('28', '3', '', 'N');
INSERT INTO `sjzdxx` VALUES ('29', '3', '', 'N');
INSERT INTO `sjzdxx` VALUES ('30', '3', '其他 展销会', 'Y');
INSERT INTO `sjzdxx` VALUES ('31', '4', '网络', 'Y');
INSERT INTO `sjzdxx` VALUES ('32', '4', '商业活动', 'Y');
INSERT INTO `sjzdxx` VALUES ('33', '4', '图书', 'Y');
INSERT INTO `sjzdxx` VALUES ('34', '4', '电视', 'Y');
INSERT INTO `sjzdxx` VALUES ('35', '4', '报纸', 'Y');
INSERT INTO `sjzdxx` VALUES ('36', '4', '手机', 'Y');
INSERT INTO `sjzdxx` VALUES ('37', '4', '朋友', 'Y');
INSERT INTO `sjzdxx` VALUES ('38', '4', '', 'N');
INSERT INTO `sjzdxx` VALUES ('39', '4', '', 'N');
INSERT INTO `sjzdxx` VALUES ('40', '4', '其他', 'Y');
INSERT INTO `sjzdxx` VALUES ('41', '5', '非常满意', 'Y');
INSERT INTO `sjzdxx` VALUES ('42', '5', '满意', 'Y');
INSERT INTO `sjzdxx` VALUES ('43', '5', '不满意', 'Y');
INSERT INTO `sjzdxx` VALUES ('44', '5', '非常不满意', 'Y');
INSERT INTO `sjzdxx` VALUES ('45', '5', '', 'N');
INSERT INTO `sjzdxx` VALUES ('46', '5', '', 'N');
INSERT INTO `sjzdxx` VALUES ('47', '5', '', 'N');
INSERT INTO `sjzdxx` VALUES ('48', '5', '', 'N');
INSERT INTO `sjzdxx` VALUES ('49', '5', '', 'N');
INSERT INTO `sjzdxx` VALUES ('50', '5', '其他', 'N');
INSERT INTO `sjzdxx` VALUES ('51', '6', '未处理', 'Y');
INSERT INTO `sjzdxx` VALUES ('52', '6', '处理中', 'Y');
INSERT INTO `sjzdxx` VALUES ('53', '6', '完成', 'Y');
INSERT INTO `sjzdxx` VALUES ('54', '6', '', 'N');
INSERT INTO `sjzdxx` VALUES ('55', '6', '', 'N');
INSERT INTO `sjzdxx` VALUES ('56', '6', '', 'N');
INSERT INTO `sjzdxx` VALUES ('57', '6', '', 'N');
INSERT INTO `sjzdxx` VALUES ('58', '6', '', 'N');
INSERT INTO `sjzdxx` VALUES ('59', '6', '', 'N');
INSERT INTO `sjzdxx` VALUES ('60', '6', '', 'N');
INSERT INTO `sjzdxx` VALUES ('61', '7', '邮政', 'Y');
INSERT INTO `sjzdxx` VALUES ('62', '7', '申通', 'Y');
INSERT INTO `sjzdxx` VALUES ('63', '7', '圆通', 'Y');
INSERT INTO `sjzdxx` VALUES ('64', '7', '天天快递', 'N');
INSERT INTO `sjzdxx` VALUES ('65', '7', '', 'N');
INSERT INTO `sjzdxx` VALUES ('66', '7', '', 'N');
INSERT INTO `sjzdxx` VALUES ('67', '7', '', 'N');
INSERT INTO `sjzdxx` VALUES ('68', '7', '', 'N');
INSERT INTO `sjzdxx` VALUES ('69', '7', '', 'N');
INSERT INTO `sjzdxx` VALUES ('70', '7', '', 'N');
INSERT INTO `sjzdxx` VALUES ('71', '8', '小王淘宝店', 'Y');
INSERT INTO `sjzdxx` VALUES ('72', '8', '小张京东店', 'Y');
INSERT INTO `sjzdxx` VALUES ('73', '8', '小徐殿平', 'Y');
INSERT INTO `sjzdxx` VALUES ('74', '8', '', 'N');
INSERT INTO `sjzdxx` VALUES ('75', '8', '', 'N');
INSERT INTO `sjzdxx` VALUES ('76', '8', '', 'N');
INSERT INTO `sjzdxx` VALUES ('77', '8', '', 'N');
INSERT INTO `sjzdxx` VALUES ('78', '8', '', 'N');
INSERT INTO `sjzdxx` VALUES ('79', '8', '', 'N');
INSERT INTO `sjzdxx` VALUES ('80', '8', '', 'N');
INSERT INTO `sjzdxx` VALUES ('81', '9', null, null);
INSERT INTO `sjzdxx` VALUES ('82', '9', null, null);
INSERT INTO `sjzdxx` VALUES ('83', '9', null, null);
INSERT INTO `sjzdxx` VALUES ('84', '9', null, null);
INSERT INTO `sjzdxx` VALUES ('85', '9', null, null);
INSERT INTO `sjzdxx` VALUES ('86', '9', null, null);
INSERT INTO `sjzdxx` VALUES ('87', '9', null, null);
INSERT INTO `sjzdxx` VALUES ('88', '9', null, null);
INSERT INTO `sjzdxx` VALUES ('89', '9', null, null);
INSERT INTO `sjzdxx` VALUES ('90', '9', null, null);
INSERT INTO `sjzdxx` VALUES ('91', '10', '', 'N');
INSERT INTO `sjzdxx` VALUES ('92', '10', '', 'N');
INSERT INTO `sjzdxx` VALUES ('93', '10', '', 'N');
INSERT INTO `sjzdxx` VALUES ('94', '10', '', 'N');
INSERT INTO `sjzdxx` VALUES ('95', '10', '', 'N');
INSERT INTO `sjzdxx` VALUES ('96', '10', '', 'N');
INSERT INTO `sjzdxx` VALUES ('97', '10', '', 'N');
INSERT INTO `sjzdxx` VALUES ('98', '10', '', 'N');
INSERT INTO `sjzdxx` VALUES ('99', '10', '', 'N');
INSERT INTO `sjzdxx` VALUES ('100', '10', '', 'N');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_admin_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_parentId` int(11) DEFAULT NULL,
  `user_roleId` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `234324` (`user_roleId`),
  KEY `3453453` (`user_parentId`),
  CONSTRAINT `234324` FOREIGN KEY (`user_roleId`) REFERENCES `role` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '', '', '', '', '', null, null);
INSERT INTO `user` VALUES ('2', '李四', '我们不好', '123', '13263249508', '466682881@qq.com', null, '78');
INSERT INTO `user` VALUES ('4', '王丽丽', '我是好的', '123', '123123123', '12313', '2', '78');
INSERT INTO `user` VALUES ('13', '完大学', '帅的被人砍', '123', '12321321312', '12312312', '13', '65');
INSERT INTO `user` VALUES ('16', '小王', 'we', 'we', '15568813450', 'xuan121000@163.com', '2', '65');
INSERT INTO `user` VALUES ('18', '王丽丽', '我是好的', '123', '123123123', '12313', '4', '78');
INSERT INTO `user` VALUES ('19', '王丽丽', '我是好的', '123', '123123123', '12313', '4', '78');
INSERT INTO `user` VALUES ('21', 'admin', 'admin', 'admin', '144453453', '2342342', '1', '79');
