/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50525
Source Host           : localhost:3306
Source Database       : struts

Target Server Type    : MYSQL
Target Server Version : 50525
File Encoding         : 65001

Date: 2017-11-20 21:38:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin_info
-- ----------------------------
DROP TABLE IF EXISTS `admin_info`;
CREATE TABLE `admin_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_code` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enrolldate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf32;

-- ----------------------------
-- Records of admin_info
-- ----------------------------
INSERT INTO `admin_info` VALUES ('1', 'chen', '123', '陈代良', null, null, null);

-- ----------------------------
-- Table structure for cost
-- ----------------------------
DROP TABLE IF EXISTS `cost`;
CREATE TABLE `cost` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `baseDuration` int(11) DEFAULT NULL,
  `baseCost` double DEFAULT NULL,
  `unitCost` double DEFAULT NULL,
  `status1` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `createTime` date DEFAULT NULL,
  `startTime` date DEFAULT NULL,
  `costType` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf32;

-- ----------------------------
-- Records of cost
-- ----------------------------
INSERT INTO `cost` VALUES ('2', '6.9元套餐', '30', '5.3', '0.3', '0', '这个套餐很棒棒哦', '2017-07-13', '2017-07-27', null);
INSERT INTO `cost` VALUES ('15', '8.8元套餐', '30', '6.6', '0.2', '1', '这个套餐非常好', null, null, null);
INSERT INTO `cost` VALUES ('16', '8.8元套餐', '30', '6.6', '0.2', '1', '这个套餐非常好', null, null, null);
INSERT INTO `cost` VALUES ('17', '8.8元套餐', '30', '6.6', '0.2', '1', '这个套餐非常好', null, null, null);
INSERT INTO `cost` VALUES ('18', '8.8元套餐', '30', '6.6', '0.2', '1', '这个套餐非常好', null, null, null);
INSERT INTO `cost` VALUES ('19', '8.8元套餐', '30', '6.6', '0.2', '1', '这个套餐非常好', null, null, null);
INSERT INTO `cost` VALUES ('20', '8.8元套餐', '30', '6.6', '0.2', '1', '这个套餐非常好', null, null, null);
INSERT INTO `cost` VALUES ('21', '8.8元套餐', '30', '6.6', '0.2', '1', '这个套餐非常好', null, null, null);
INSERT INTO `cost` VALUES ('22', '8.8元套餐', '30', '6.6', '0.2', '1', '这个套餐非常好', null, null, null);
INSERT INTO `cost` VALUES ('23', '8.8元套餐', '30', '6.6', '0.2', '1', '这个套餐非常好', null, null, null);
INSERT INTO `cost` VALUES ('24', '8.8元套餐', '30', '6.6', '0.2', '1', '这个套餐非常好', null, null, null);
INSERT INTO `cost` VALUES ('25', '8.8元套餐', '30', '6.6', '0.2', '1', '这个套餐非常好', null, null, null);
INSERT INTO `cost` VALUES ('26', '8.8元套餐', '30', '6.6', '0.2', '1', '这个套餐非常好', null, null, null);
INSERT INTO `cost` VALUES ('27', '8.8元套餐', '30', '6.6', '0.2', '1', '这个套餐非常好', null, null, null);
INSERT INTO `cost` VALUES ('28', '8.8元套餐', '30', '6.6', '0.2', '1', '这个套餐非常好', null, null, null);
INSERT INTO `cost` VALUES ('29', '8.8元套餐', '30', '6.6', '0.2', '1', '这个套餐非常好', null, null, null);
INSERT INTO `cost` VALUES ('30', '8.8元套餐', '30', '6.6', '0.2', '1', '这个套餐非常好', null, null, null);
INSERT INTO `cost` VALUES ('31', '8.8元套餐', '30', '6.6', '0.2', '1', '这个套餐非常好', null, null, null);
INSERT INTO `cost` VALUES ('32', '8.8元套餐', '30', '6.6', '0.2', '1', '这个套餐非常好', null, null, null);
INSERT INTO `cost` VALUES ('33', '8.8元套餐', '30', '6.6', '0.2', '1', '这个套餐非常好', null, null, null);
INSERT INTO `cost` VALUES ('34', '8.8元套餐', '30', '6.6', '0.2', '1', '这个套餐非常好', null, null, null);
INSERT INTO `cost` VALUES ('35', '8.8元套餐', '30', '6.6', '0.2', '1', '这个套餐非常好', null, null, null);
INSERT INTO `cost` VALUES ('36', '8.8元套餐', '30', '6.6', '0.2', '1', '这个套餐非常好', null, null, null);
INSERT INTO `cost` VALUES ('37', '8.8元套餐', '30', '6.6', '0.2', '1', '这个套餐非常好', null, null, null);
INSERT INTO `cost` VALUES ('38', '8.8元套餐', '30', '6.6', '0.2', '1', '这个套餐非常好', null, null, null);
INSERT INTO `cost` VALUES ('39', '8.8元套餐', '30', '6.6', '0.2', '1', '这个套餐非常好', null, null, null);
INSERT INTO `cost` VALUES ('40', '8.8元套餐', '30', '6.6', '0.2', '1', '这个套餐非常好', null, null, null);
INSERT INTO `cost` VALUES ('41', '8.8元套餐', '30', '6.6', '0.2', '1', '这个套餐非常好', null, null, null);
INSERT INTO `cost` VALUES ('42', '8.8元套餐', '30', '6.6', '0.2', '1', '这个套餐非常好', null, null, null);
INSERT INTO `cost` VALUES ('43', '8.8元套餐', '30', '6.6', '0.2', '1', '这个套餐非常好', null, null, null);
INSERT INTO `cost` VALUES ('44', '8.8元套餐', '30', '6.6', '0.2', '1', '这个套餐非常好', null, null, null);
INSERT INTO `cost` VALUES ('45', '8.8元套餐', '30', '6.6', '0.2', '1', '这个套餐非常好', null, null, null);
INSERT INTO `cost` VALUES ('46', '8.8元套餐', '30', '6.6', '0.2', '1', '这个套餐非常好', null, null, null);
INSERT INTO `cost` VALUES ('47', '8.8元套餐', '30', '6.6', '0.2', '1', '这个套餐非常好', null, null, null);
INSERT INTO `cost` VALUES ('48', '8.8元套餐', '30', '6.6', '0.2', '1', '这个套餐非常好', null, null, null);
INSERT INTO `cost` VALUES ('49', '8.8元套餐', '30', '6.6', '0.2', '1', '这个套餐非常好', null, null, null);
INSERT INTO `cost` VALUES ('50', '8.8元套餐', '30', '6.6', '0.2', '1', '这个套餐非常好', null, null, null);
INSERT INTO `cost` VALUES ('51', '8.8元套餐', '30', '6.6', '0.2', '1', '这个套餐非常好', null, null, null);
INSERT INTO `cost` VALUES ('52', '8.8元套餐', '30', '6.6', '0.2', '1', '这个套餐非常好', null, null, null);
INSERT INTO `cost` VALUES ('53', '8.8元套餐', '30', '6.6', '0.2', '1', '这个套餐非常好', null, null, null);
INSERT INTO `cost` VALUES ('54', '8.8元套餐', '30', '6.6', '0.2', '1', '这个套餐非常好', null, null, null);
INSERT INTO `cost` VALUES ('55', '8.8元套餐', '30', '6.6', '0.2', '1', '这个套餐非常好', null, null, null);
INSERT INTO `cost` VALUES ('56', '8.8元套餐', '30', '6.6', '0.2', '1', '这个套餐非常好', null, null, null);
INSERT INTO `cost` VALUES ('57', '8.8元套餐', '30', '6.6', '0.2', '1', '这个套餐非常好', null, null, null);
INSERT INTO `cost` VALUES ('58', '8.8元套餐', '30', '6.6', '0.2', '1', '这个套餐非常好', null, null, null);
INSERT INTO `cost` VALUES ('59', '8.8元套餐', '30', '6.6', '0.2', '1', '这个套餐非常好', null, null, null);
INSERT INTO `cost` VALUES ('60', '8.8元套餐', '30', '6.6', '0.2', '1', '这个套餐非常好', null, null, null);

-- ----------------------------
-- Table structure for emp
-- ----------------------------
DROP TABLE IF EXISTS `emp`;
CREATE TABLE `emp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `salary` decimal(10,0) DEFAULT NULL,
  `marry` char(1) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf32;

-- ----------------------------
-- Records of emp
-- ----------------------------
INSERT INTO `emp` VALUES ('1', 'chen', '22', '12345', 'Y', '1998-08-08', '2017-07-11 08:31:58');
INSERT INTO `emp` VALUES ('2', 'little_glass', '23', '6666', null, '1999-05-01', null);
INSERT INTO `emp` VALUES ('3', '小六', '23', '6500', 'N', '1999-05-01', '2017-07-31 20:18:40');
INSERT INTO `emp` VALUES ('4', 'xiaoba', '24', '7000', 'Y', '1994-09-28', null);
INSERT INTO `emp` VALUES ('5', 'xiaoba', '24', '7000', 'Y', '1994-09-28', null);
INSERT INTO `emp` VALUES ('6', 'xiaoba', '24', '7000', 'Y', '1994-09-28', null);
INSERT INTO `emp` VALUES ('7', 'xiaoba', '24', '7000', 'Y', '1994-09-28', null);
INSERT INTO `emp` VALUES ('8', 'xiaoba', '24', '7000', 'Y', '1994-09-28', null);
INSERT INTO `emp` VALUES ('9', 'xiaoba', '24', '7000', 'Y', '1994-09-28', null);
INSERT INTO `emp` VALUES ('10', 'xiaoba', '24', '7000', 'Y', '1994-09-28', null);
INSERT INTO `emp` VALUES ('11', 'xiaoba', '24', '7000', 'Y', '1994-09-28', null);
INSERT INTO `emp` VALUES ('12', 'xiaoba', '24', '7000', 'Y', '1994-09-28', null);
INSERT INTO `emp` VALUES ('13', 'xiaoba', '24', '7000', 'Y', '1994-09-28', null);
INSERT INTO `emp` VALUES ('14', 'xiaoba', '24', '7000', 'Y', '1994-09-28', null);
INSERT INTO `emp` VALUES ('15', 'xiaoba', '24', '7000', 'Y', '1994-09-28', null);
INSERT INTO `emp` VALUES ('16', 'xiaoba', '24', '7000', 'Y', '1994-09-28', null);
INSERT INTO `emp` VALUES ('17', 'xiaoba', '24', '7000', 'Y', '1994-09-28', null);
INSERT INTO `emp` VALUES ('18', 'xiaoba', '24', '7000', 'Y', '1994-09-28', null);
INSERT INTO `emp` VALUES ('19', 'xiaoba', '24', '7000', 'Y', '1994-09-28', null);
INSERT INTO `emp` VALUES ('20', 'xiaoba', '24', '7000', 'Y', '1994-09-28', null);
INSERT INTO `emp` VALUES ('21', 'xiaoba', '24', '7000', 'Y', '1994-09-28', null);
INSERT INTO `emp` VALUES ('22', 'xiaoba', '24', '7000', 'Y', '1994-09-28', null);
INSERT INTO `emp` VALUES ('23', 'xiaoba', '24', '7000', 'Y', '1994-09-28', null);
INSERT INTO `emp` VALUES ('24', 'xiaoba', '24', '7000', 'Y', '1994-09-28', null);
INSERT INTO `emp` VALUES ('25', 'xiaoba', '24', '7000', 'Y', '1994-09-28', null);
INSERT INTO `emp` VALUES ('26', 'xiaoba', '24', '7000', 'Y', '1994-09-28', null);
INSERT INTO `emp` VALUES ('27', 'xiaoba', '24', '7000', 'Y', '1994-09-28', null);
INSERT INTO `emp` VALUES ('28', 'xiaoba', '24', '7000', 'Y', '1994-09-28', null);
INSERT INTO `emp` VALUES ('29', 'xiaoba', '24', '7000', 'Y', '1994-09-28', null);
INSERT INTO `emp` VALUES ('30', 'xiaoba', '24', '7000', 'Y', '1994-09-28', null);
INSERT INTO `emp` VALUES ('31', 'xiaoba', '24', '7000', 'Y', '1994-09-28', null);
INSERT INTO `emp` VALUES ('32', 'xiaoba', '24', '7000', 'Y', '1994-09-28', null);
INSERT INTO `emp` VALUES ('33', 'xiaoba', '24', '7000', 'Y', '1994-09-28', null);
INSERT INTO `emp` VALUES ('34', 'xiaoba', '24', '7000', 'Y', '1994-09-28', null);
INSERT INTO `emp` VALUES ('35', 'xiaoba', '24', '7000', 'Y', '1994-09-28', null);
INSERT INTO `emp` VALUES ('36', 'xiaoba', '24', '7000', 'Y', '1994-09-28', null);
INSERT INTO `emp` VALUES ('37', 'xiaoba', '24', '7000', 'Y', '1994-09-28', null);
INSERT INTO `emp` VALUES ('38', 'xiaoba', '24', '7000', 'Y', '1994-09-28', null);
INSERT INTO `emp` VALUES ('39', 'xiaoba', '24', '7000', 'Y', '1994-09-28', null);
INSERT INTO `emp` VALUES ('40', 'xiaoba', '24', '7000', 'Y', '1994-09-28', null);
INSERT INTO `emp` VALUES ('41', 'xiaoba', '24', '7000', 'Y', '1994-09-28', null);
INSERT INTO `emp` VALUES ('42', 'xiaoba', '24', '7000', 'Y', '1994-09-28', null);

-- ----------------------------
-- Table structure for people
-- ----------------------------
DROP TABLE IF EXISTS `people`;
CREATE TABLE `people` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `hobby` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `sex` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `marry` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf32;

-- ----------------------------
-- Records of people
-- ----------------------------
INSERT INTO `people` VALUES ('1', '陈代良', '17784323751', 'chendailiangd@qq.com', '重庆', 'chendailiang', '学习', '男', '否');
INSERT INTO `people` VALUES ('2', '张三', '15029545922', '896823240@qq.com', '上海市', '小三', '玩耍', '男', '否');
INSERT INTO `people` VALUES ('4', '赵四  ', '15029545922', '1028310780@qq.com  ', '西安市', '老四', '撩妹', '女 ', '否 ');
INSERT INTO `people` VALUES ('5', '王五', '123456789101', 'aa@126.com', '北京市', '狗蛋', '裸睡', '男', '否');
INSERT INTO `people` VALUES ('6', '王五', '123456789101', 'aa@126.com', '北京市', '狗蛋', '裸睡', '男', '否');
INSERT INTO `people` VALUES ('7', '王五', '123456789101', 'aa@126.com', '北京市', '狗蛋', '裸睡', '男', '否');
INSERT INTO `people` VALUES ('8', '王五', '123456789101', 'aa@126.com', '北京市', '狗蛋', '裸睡', '男', '否');
INSERT INTO `people` VALUES ('9', '王五', '123456789101', 'aa@126.com', '北京市', '狗蛋', '裸睡', '男', '否');
INSERT INTO `people` VALUES ('10', '王五', '123456789101', 'aa@126.com', '北京市', '狗蛋', '裸睡', '男', '否');
INSERT INTO `people` VALUES ('25', '王五', '123456789101', 'aa@126.com', '北京市', '狗蛋', '裸睡', '男', '否');
INSERT INTO `people` VALUES ('26', '王五', '123456789101', 'aa@126.com', '北京市', '狗蛋', '裸睡', '男', '否');
INSERT INTO `people` VALUES ('27', '王五', '123456789101', 'aa@126.com', '北京市', '狗蛋', '裸睡', '男', '否');
INSERT INTO `people` VALUES ('28', '王五', '123456789101', 'aa@126.com', '北京市', '狗蛋', '裸睡', '男', '否');
INSERT INTO `people` VALUES ('29', '王五', '123456789101', 'aa@126.com', '北京市', '狗蛋', '裸睡', '男', '否');
INSERT INTO `people` VALUES ('30', '王五', '123456789101', 'aa@126.com', '北京市', '狗蛋', '裸睡', '男', '否');
INSERT INTO `people` VALUES ('31', '王五', '123456789101', 'aa@126.com', '北京市', '狗蛋', '裸睡', '男', '否');
INSERT INTO `people` VALUES ('32', '王五', '123456789101', 'aa@126.com', '北京市', '狗蛋', '裸睡', '男', '否');
INSERT INTO `people` VALUES ('33', '王五', '123456789101', 'aa@126.com', '北京市', '狗蛋', '裸睡', '男', '否');
INSERT INTO `people` VALUES ('34', '王五', '123456789101', 'aa@126.com', '北京市', '狗蛋', '裸睡', '男', '否');
INSERT INTO `people` VALUES ('35', '王五', '123456789101', 'aa@126.com', '北京市', '狗蛋', '裸睡', '男', '否');
INSERT INTO `people` VALUES ('36', '王五', '123456789101', 'aa@126.com', '北京市', '狗蛋', '裸睡', '男', '否');
INSERT INTO `people` VALUES ('37', '王五', '123456789101', 'aa@126.com', '北京市', '狗蛋', '裸睡', '男', '否');
INSERT INTO `people` VALUES ('38', '王五', '123456789101', 'aa@126.com', '北京市', '狗蛋', '裸睡', '男', '否');
INSERT INTO `people` VALUES ('39', '王五', '123456789101', 'aa@126.com', '北京市', '狗蛋', '裸睡', '男', '否');
INSERT INTO `people` VALUES ('40', '王五', '123456789101', 'aa@126.com', '北京市', '狗蛋', '裸睡', '男', '否');
INSERT INTO `people` VALUES ('41', '王五', '123456789101', 'aa@126.com', '北京市', '狗蛋', '裸睡', '男', '否');
INSERT INTO `people` VALUES ('42', '王五', '123456789101', 'aa@126.com', '北京市', '狗蛋', '裸睡', '男', '否');
INSERT INTO `people` VALUES ('43', '王五', '123456789101', 'aa@126.com', '北京市', '狗蛋', '裸睡', '男', '否');
INSERT INTO `people` VALUES ('44', '王五', '123456789101', 'aa@126.com', '北京市', '狗蛋', '裸睡', '男', '否');
INSERT INTO `people` VALUES ('45', '王五', '123456789101', 'aa@126.com', '北京市', '狗蛋', '裸睡', '男', '否');
INSERT INTO `people` VALUES ('46', '王五', '123456789101', 'aa@126.com', '北京市', '狗蛋', '裸睡', '男', '否');
INSERT INTO `people` VALUES ('47', '王五', '123456789101', 'aa@126.com', '北京市', '狗蛋', '裸睡', '男', '否');
INSERT INTO `people` VALUES ('48', '王五', '123456789101', 'aa@126.com', '北京市', '狗蛋', '裸睡', '男', '否');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `ID` varchar(5) NOT NULL DEFAULT '',
  `name` varchar(20) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `FM` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', 'qq', '23', '');

-- ----------------------------
-- Table structure for tickets
-- ----------------------------
DROP TABLE IF EXISTS `tickets`;
CREATE TABLE `tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `line` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf32;

-- ----------------------------
-- Records of tickets
-- ----------------------------
INSERT INTO `tickets` VALUES ('1', '重庆  — 上海', '99', '2');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf32;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'aaa', '123', 'm', '17784323751', '896823240@qq.com', '德玛西亚');
