/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : ecloud_billing

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2014-09-19 18:18:06
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `account_change_logs`
-- ----------------------------
DROP TABLE IF EXISTS `account_change_logs`;
CREATE TABLE `account_change_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `operate` enum('twd','trs','cwd','csh','mod','del','reg','cor','unb','new') NOT NULL,
  `create_time` datetime NOT NULL,
  `money` float(15,3) NOT NULL,
  `external_id` varchar(10) DEFAULT NULL,
  `note` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account_change_logs
-- ----------------------------
INSERT INTO `account_change_logs` VALUES ('1', '255', 'reg', '2014-04-25 09:30:47', '221221.000', '296:377', 'dept');
INSERT INTO `account_change_logs` VALUES ('2', '255', 'reg', '2014-04-25 09:43:46', '221221.000', '296:378', 'dept');
INSERT INTO `account_change_logs` VALUES ('3', '255', 'unb', '2014-04-25 09:45:18', '0.000', '378', 'dept');
INSERT INTO `account_change_logs` VALUES ('4', '255', 'reg', '2014-04-25 09:47:01', '221221.000', '296:379', 'dept');
INSERT INTO `account_change_logs` VALUES ('5', '255', 'unb', '2014-04-25 09:49:20', '0.000', '379', 'dept');

-- ----------------------------
-- Table structure for `company_account`
-- ----------------------------
DROP TABLE IF EXISTS `company_account`;
CREATE TABLE `company_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `vmoney_account_id` int(11) NOT NULL COMMENT 'è™šæ‹Ÿå¸çš„å¸æˆ·ID',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cunique` (`company_id`)
) ENGINE=MyISAM AUTO_INCREMENT=113 DEFAULT CHARSET=utf8 COMMENT='å…¬å¸å¯¹åº”çš„å¸æˆ·è¡¨';

-- ----------------------------
-- Records of company_account
-- ----------------------------
INSERT INTO `company_account` VALUES ('1', '1', '1');
INSERT INTO `company_account` VALUES ('17', '2', '25');
INSERT INTO `company_account` VALUES ('12', '156', '130');
INSERT INTO `company_account` VALUES ('13', '5', '6');
INSERT INTO `company_account` VALUES ('14', '161', '9');
INSERT INTO `company_account` VALUES ('15', '158', '11');
INSERT INTO `company_account` VALUES ('40', '163', '181');
INSERT INTO `company_account` VALUES ('2', '3', '25');
INSERT INTO `company_account` VALUES ('41', '162', '185');
INSERT INTO `company_account` VALUES ('42', '164', '202');
INSERT INTO `company_account` VALUES ('43', '168', '203');
INSERT INTO `company_account` VALUES ('44', '225', '209');
INSERT INTO `company_account` VALUES ('45', '226', '210');
INSERT INTO `company_account` VALUES ('46', '227', '211');
INSERT INTO `company_account` VALUES ('47', '174', '212');
INSERT INTO `company_account` VALUES ('48', '228', '213');
INSERT INTO `company_account` VALUES ('49', '229', '214');
INSERT INTO `company_account` VALUES ('50', '231', '217');
INSERT INTO `company_account` VALUES ('51', '232', '219');
INSERT INTO `company_account` VALUES ('52', '233', '220');
INSERT INTO `company_account` VALUES ('53', '234', '221');
INSERT INTO `company_account` VALUES ('54', '235', '222');
INSERT INTO `company_account` VALUES ('55', '237', '223');
INSERT INTO `company_account` VALUES ('56', '236', '224');
INSERT INTO `company_account` VALUES ('57', '238', '225');
INSERT INTO `company_account` VALUES ('58', '239', '226');
INSERT INTO `company_account` VALUES ('59', '240', '227');
INSERT INTO `company_account` VALUES ('60', '241', '228');
INSERT INTO `company_account` VALUES ('61', '242', '229');
INSERT INTO `company_account` VALUES ('62', '243', '230');
INSERT INTO `company_account` VALUES ('63', '244', '231');
INSERT INTO `company_account` VALUES ('64', '245', '232');
INSERT INTO `company_account` VALUES ('65', '266', '233');
INSERT INTO `company_account` VALUES ('66', '267', '234');
INSERT INTO `company_account` VALUES ('67', '268', '235');
INSERT INTO `company_account` VALUES ('68', '270', '238');
INSERT INTO `company_account` VALUES ('69', '271', '239');
INSERT INTO `company_account` VALUES ('70', '272', '240');
INSERT INTO `company_account` VALUES ('71', '269', '241');
INSERT INTO `company_account` VALUES ('72', '273', '242');
INSERT INTO `company_account` VALUES ('73', '274', '243');
INSERT INTO `company_account` VALUES ('74', '275', '244');
INSERT INTO `company_account` VALUES ('75', '276', '245');
INSERT INTO `company_account` VALUES ('76', '281', '246');
INSERT INTO `company_account` VALUES ('77', '286', '247');
INSERT INTO `company_account` VALUES ('78', '287', '248');
INSERT INTO `company_account` VALUES ('79', '288', '249');
INSERT INTO `company_account` VALUES ('80', '289', '250');
INSERT INTO `company_account` VALUES ('81', '292', '251');
INSERT INTO `company_account` VALUES ('82', '293', '252');
INSERT INTO `company_account` VALUES ('83', '294', '253');
INSERT INTO `company_account` VALUES ('84', '295', '254');
INSERT INTO `company_account` VALUES ('85', '296', '255');
INSERT INTO `company_account` VALUES ('86', '297', '257');
INSERT INTO `company_account` VALUES ('87', '298', '258');
INSERT INTO `company_account` VALUES ('88', '299', '259');
INSERT INTO `company_account` VALUES ('89', '300', '260');
INSERT INTO `company_account` VALUES ('90', '301', '261');
INSERT INTO `company_account` VALUES ('91', '303', '262');
INSERT INTO `company_account` VALUES ('92', '304', '263');
INSERT INTO `company_account` VALUES ('93', '305', '264');
INSERT INTO `company_account` VALUES ('94', '306', '265');
INSERT INTO `company_account` VALUES ('95', '307', '266');
INSERT INTO `company_account` VALUES ('96', '308', '267');
INSERT INTO `company_account` VALUES ('97', '313', '268');
INSERT INTO `company_account` VALUES ('98', '314', '269');
INSERT INTO `company_account` VALUES ('99', '315', '270');
INSERT INTO `company_account` VALUES ('100', '316', '271');
INSERT INTO `company_account` VALUES ('101', '317', '272');
INSERT INTO `company_account` VALUES ('102', '318', '273');
INSERT INTO `company_account` VALUES ('103', '319', '274');
INSERT INTO `company_account` VALUES ('104', '322', '275');
INSERT INTO `company_account` VALUES ('105', '323', '276');
INSERT INTO `company_account` VALUES ('106', '321', '277');
INSERT INTO `company_account` VALUES ('107', '324', '278');
INSERT INTO `company_account` VALUES ('108', '325', '279');
INSERT INTO `company_account` VALUES ('110', '326', '284');
INSERT INTO `company_account` VALUES ('111', '327', '286');
INSERT INTO `company_account` VALUES ('112', '328', '287');

-- ----------------------------
-- Table structure for `company_ordered_products`
-- ----------------------------
DROP TABLE IF EXISTS `company_ordered_products`;
CREATE TABLE `company_ordered_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `charge_duration` enum('pay-for-time','daily','monthly') NOT NULL COMMENT 'è®¡è´¹å‘¨æœŸ pay-for-time:æŒ‰é‡,dailyï¼šåŒ…å¤©,monthlyï¼šåŒ…æœˆ',
  `product_id` int(11) NOT NULL COMMENT 'ECUæ•°',
  `quantity` float(11,0) NOT NULL DEFAULT '0' COMMENT 'æ•°é‡ï¼šå¯¹åŒ…æœˆæˆ–åŒ…å¤©çš„æ–¹å¼æ¥è¯´æ˜¯æ€»æ•°ï¼›å¯¹æŒ‰é‡çš„æ–¹å¼æ¥è¯´æ˜¯ä¸Šé™',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=824 DEFAULT CHARSET=utf8 COMMENT='å…¬å¸å®šè´­çš„ä¸šåŠ¡è¡¨ï¼Œä¸»è¦ç”¨æ¥å­˜å‚¨å…¬å¸çš„åŒ…å¤©';

-- ----------------------------
-- Records of company_ordered_products
-- ----------------------------
INSERT INTO `company_ordered_products` VALUES ('60', '1', 'daily', '59', '1000');
INSERT INTO `company_ordered_products` VALUES ('39', '1', 'monthly', '4', '111');
INSERT INTO `company_ordered_products` VALUES ('37', '1', 'pay-for-time', '1', '18');
INSERT INTO `company_ordered_products` VALUES ('40', '2', 'monthly', '4', '111');
INSERT INTO `company_ordered_products` VALUES ('41', '3', 'monthly', '4', '111');
INSERT INTO `company_ordered_products` VALUES ('42', '4', 'monthly', '4', '111');
INSERT INTO `company_ordered_products` VALUES ('1', '1', 'pay-for-time', '5', '999999');
INSERT INTO `company_ordered_products` VALUES ('43', '1', 'daily', '1', '44');
INSERT INTO `company_ordered_products` VALUES ('73', '1', 'monthly', '5', '1200');
INSERT INTO `company_ordered_products` VALUES ('51', '1', 'monthly', '20', '10');
INSERT INTO `company_ordered_products` VALUES ('52', '162', 'monthly', '1', '800');
INSERT INTO `company_ordered_products` VALUES ('53', '162', 'monthly', '3', '500');
INSERT INTO `company_ordered_products` VALUES ('54', '162', 'monthly', '58', '20');
INSERT INTO `company_ordered_products` VALUES ('55', '162', 'monthly', '5', '10000');
INSERT INTO `company_ordered_products` VALUES ('56', '162', 'monthly', '4', '50');
INSERT INTO `company_ordered_products` VALUES ('58', '162', 'monthly', '59', '80000');
INSERT INTO `company_ordered_products` VALUES ('59', '162', 'monthly', '20', '5');
INSERT INTO `company_ordered_products` VALUES ('61', '1', 'daily', '3', '20');
INSERT INTO `company_ordered_products` VALUES ('62', '1', 'monthly', '58', '5');
INSERT INTO `company_ordered_products` VALUES ('63', '1', 'pay-for-time', '59', '500');
INSERT INTO `company_ordered_products` VALUES ('64', '1', 'pay-for-time', '3', '5');
INSERT INTO `company_ordered_products` VALUES ('65', '164', 'pay-for-time', '1', '4');
INSERT INTO `company_ordered_products` VALUES ('66', '164', 'pay-for-time', '3', '40');
INSERT INTO `company_ordered_products` VALUES ('67', '164', 'pay-for-time', '59', '500');
INSERT INTO `company_ordered_products` VALUES ('69', '164', 'monthly', '5', '20000');
INSERT INTO `company_ordered_products` VALUES ('70', '164', 'monthly', '4', '2');
INSERT INTO `company_ordered_products` VALUES ('71', '164', 'monthly', '20', '2');
INSERT INTO `company_ordered_products` VALUES ('72', '164', 'monthly', '58', '2');
INSERT INTO `company_ordered_products` VALUES ('74', '225', 'monthly', '96', '150');
INSERT INTO `company_ordered_products` VALUES ('75', '225', 'daily', '96', '0');
INSERT INTO `company_ordered_products` VALUES ('76', '225', 'pay-for-time', '96', '0');
INSERT INTO `company_ordered_products` VALUES ('77', '225', 'monthly', '92', '11500');
INSERT INTO `company_ordered_products` VALUES ('78', '225', 'daily', '92', '0');
INSERT INTO `company_ordered_products` VALUES ('79', '225', 'pay-for-time', '92', '0');
INSERT INTO `company_ordered_products` VALUES ('80', '225', 'monthly', '79', '11500');
INSERT INTO `company_ordered_products` VALUES ('81', '225', 'daily', '79', '0');
INSERT INTO `company_ordered_products` VALUES ('82', '225', 'pay-for-time', '79', '0');
INSERT INTO `company_ordered_products` VALUES ('83', '225', 'monthly', '4', '24');
INSERT INTO `company_ordered_products` VALUES ('84', '225', 'monthly', '5', '0');
INSERT INTO `company_ordered_products` VALUES ('85', '225', 'monthly', '20', '0');
INSERT INTO `company_ordered_products` VALUES ('86', '225', 'monthly', '58', '22');
INSERT INTO `company_ordered_products` VALUES ('87', '226', 'monthly', '96', '20');
INSERT INTO `company_ordered_products` VALUES ('88', '226', 'daily', '96', '0');
INSERT INTO `company_ordered_products` VALUES ('89', '226', 'pay-for-time', '96', '0');
INSERT INTO `company_ordered_products` VALUES ('90', '226', 'monthly', '92', '1500');
INSERT INTO `company_ordered_products` VALUES ('91', '226', 'daily', '92', '0');
INSERT INTO `company_ordered_products` VALUES ('92', '226', 'pay-for-time', '92', '0');
INSERT INTO `company_ordered_products` VALUES ('93', '226', 'monthly', '79', '1500');
INSERT INTO `company_ordered_products` VALUES ('94', '226', 'daily', '79', '0');
INSERT INTO `company_ordered_products` VALUES ('95', '226', 'pay-for-time', '79', '0');
INSERT INTO `company_ordered_products` VALUES ('96', '226', 'monthly', '4', '0');
INSERT INTO `company_ordered_products` VALUES ('97', '226', 'monthly', '5', '0');
INSERT INTO `company_ordered_products` VALUES ('98', '226', 'monthly', '20', '0');
INSERT INTO `company_ordered_products` VALUES ('99', '226', 'monthly', '58', '5');
INSERT INTO `company_ordered_products` VALUES ('100', '174', 'monthly', '96', '0');
INSERT INTO `company_ordered_products` VALUES ('101', '174', 'daily', '96', '0');
INSERT INTO `company_ordered_products` VALUES ('102', '174', 'pay-for-time', '96', '0');
INSERT INTO `company_ordered_products` VALUES ('103', '174', 'monthly', '92', '0');
INSERT INTO `company_ordered_products` VALUES ('104', '174', 'daily', '92', '0');
INSERT INTO `company_ordered_products` VALUES ('105', '174', 'pay-for-time', '92', '0');
INSERT INTO `company_ordered_products` VALUES ('106', '174', 'monthly', '79', '0');
INSERT INTO `company_ordered_products` VALUES ('107', '174', 'daily', '79', '0');
INSERT INTO `company_ordered_products` VALUES ('108', '174', 'pay-for-time', '79', '0');
INSERT INTO `company_ordered_products` VALUES ('109', '174', 'monthly', '4', '0');
INSERT INTO `company_ordered_products` VALUES ('110', '174', 'monthly', '5', '0');
INSERT INTO `company_ordered_products` VALUES ('111', '174', 'monthly', '20', '0');
INSERT INTO `company_ordered_products` VALUES ('112', '174', 'monthly', '58', '0');
INSERT INTO `company_ordered_products` VALUES ('113', '228', 'monthly', '96', '2');
INSERT INTO `company_ordered_products` VALUES ('114', '228', 'daily', '96', '0');
INSERT INTO `company_ordered_products` VALUES ('115', '228', 'pay-for-time', '96', '0');
INSERT INTO `company_ordered_products` VALUES ('116', '228', 'monthly', '92', '200');
INSERT INTO `company_ordered_products` VALUES ('117', '228', 'daily', '92', '0');
INSERT INTO `company_ordered_products` VALUES ('118', '228', 'pay-for-time', '92', '0');
INSERT INTO `company_ordered_products` VALUES ('119', '228', 'monthly', '79', '200');
INSERT INTO `company_ordered_products` VALUES ('120', '228', 'daily', '79', '0');
INSERT INTO `company_ordered_products` VALUES ('121', '228', 'pay-for-time', '79', '0');
INSERT INTO `company_ordered_products` VALUES ('122', '228', 'monthly', '4', '0');
INSERT INTO `company_ordered_products` VALUES ('123', '228', 'monthly', '5', '0');
INSERT INTO `company_ordered_products` VALUES ('124', '228', 'monthly', '20', '0');
INSERT INTO `company_ordered_products` VALUES ('125', '228', 'monthly', '58', '0');
INSERT INTO `company_ordered_products` VALUES ('126', '229', 'monthly', '96', '0');
INSERT INTO `company_ordered_products` VALUES ('127', '229', 'daily', '96', '0');
INSERT INTO `company_ordered_products` VALUES ('128', '229', 'pay-for-time', '96', '0');
INSERT INTO `company_ordered_products` VALUES ('129', '229', 'monthly', '92', '0');
INSERT INTO `company_ordered_products` VALUES ('130', '229', 'daily', '92', '0');
INSERT INTO `company_ordered_products` VALUES ('131', '229', 'pay-for-time', '92', '0');
INSERT INTO `company_ordered_products` VALUES ('132', '229', 'monthly', '79', '0');
INSERT INTO `company_ordered_products` VALUES ('133', '229', 'daily', '79', '0');
INSERT INTO `company_ordered_products` VALUES ('134', '229', 'pay-for-time', '79', '0');
INSERT INTO `company_ordered_products` VALUES ('135', '229', 'monthly', '4', '0');
INSERT INTO `company_ordered_products` VALUES ('136', '229', 'monthly', '5', '0');
INSERT INTO `company_ordered_products` VALUES ('137', '229', 'monthly', '20', '0');
INSERT INTO `company_ordered_products` VALUES ('138', '229', 'monthly', '58', '0');
INSERT INTO `company_ordered_products` VALUES ('139', '230', 'monthly', '96', '40');
INSERT INTO `company_ordered_products` VALUES ('140', '230', 'daily', '96', '0');
INSERT INTO `company_ordered_products` VALUES ('141', '230', 'pay-for-time', '96', '0');
INSERT INTO `company_ordered_products` VALUES ('142', '230', 'monthly', '92', '3000');
INSERT INTO `company_ordered_products` VALUES ('143', '230', 'daily', '92', '0');
INSERT INTO `company_ordered_products` VALUES ('144', '230', 'pay-for-time', '92', '0');
INSERT INTO `company_ordered_products` VALUES ('145', '230', 'monthly', '79', '3000');
INSERT INTO `company_ordered_products` VALUES ('146', '230', 'daily', '79', '0');
INSERT INTO `company_ordered_products` VALUES ('147', '230', 'pay-for-time', '79', '0');
INSERT INTO `company_ordered_products` VALUES ('148', '230', 'monthly', '4', '0');
INSERT INTO `company_ordered_products` VALUES ('149', '230', 'monthly', '5', '0');
INSERT INTO `company_ordered_products` VALUES ('150', '230', 'monthly', '20', '0');
INSERT INTO `company_ordered_products` VALUES ('151', '230', 'monthly', '58', '0');
INSERT INTO `company_ordered_products` VALUES ('174', '231', 'monthly', '1', '5');
INSERT INTO `company_ordered_products` VALUES ('175', '231', 'daily', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('176', '231', 'pay-for-time', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('180', '231', 'monthly', '3', '100');
INSERT INTO `company_ordered_products` VALUES ('181', '231', 'daily', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('182', '231', 'pay-for-time', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('183', '231', 'monthly', '4', '0');
INSERT INTO `company_ordered_products` VALUES ('184', '231', 'monthly', '5', '0');
INSERT INTO `company_ordered_products` VALUES ('185', '231', 'monthly', '20', '0');
INSERT INTO `company_ordered_products` VALUES ('186', '231', 'monthly', '58', '0');
INSERT INTO `company_ordered_products` VALUES ('187', '232', 'monthly', '1', '80');
INSERT INTO `company_ordered_products` VALUES ('188', '232', 'daily', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('189', '232', 'pay-for-time', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('190', '232', 'monthly', '2', '7400');
INSERT INTO `company_ordered_products` VALUES ('191', '232', 'daily', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('192', '232', 'pay-for-time', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('193', '232', 'monthly', '3', '7400');
INSERT INTO `company_ordered_products` VALUES ('194', '232', 'daily', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('195', '232', 'pay-for-time', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('177', '231', 'monthly', '2', '100');
INSERT INTO `company_ordered_products` VALUES ('178', '231', 'daily', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('179', '231', 'pay-for-time', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('196', '232', 'monthly', '4', '0');
INSERT INTO `company_ordered_products` VALUES ('197', '232', 'monthly', '5', '0');
INSERT INTO `company_ordered_products` VALUES ('198', '232', 'monthly', '20', '0');
INSERT INTO `company_ordered_products` VALUES ('199', '232', 'monthly', '58', '0');
INSERT INTO `company_ordered_products` VALUES ('200', '230', 'monthly', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('201', '230', 'daily', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('202', '230', 'pay-for-time', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('203', '230', 'monthly', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('204', '230', 'daily', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('205', '230', 'pay-for-time', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('206', '230', 'monthly', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('207', '230', 'daily', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('208', '230', 'pay-for-time', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('209', '233', 'monthly', '1', '20');
INSERT INTO `company_ordered_products` VALUES ('210', '233', 'daily', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('211', '233', 'pay-for-time', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('212', '233', 'monthly', '2', '2000');
INSERT INTO `company_ordered_products` VALUES ('213', '233', 'daily', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('214', '233', 'pay-for-time', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('215', '233', 'monthly', '3', '2000');
INSERT INTO `company_ordered_products` VALUES ('216', '233', 'daily', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('217', '233', 'pay-for-time', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('218', '233', 'monthly', '4', '0');
INSERT INTO `company_ordered_products` VALUES ('219', '233', 'monthly', '5', '0');
INSERT INTO `company_ordered_products` VALUES ('220', '233', 'monthly', '20', '0');
INSERT INTO `company_ordered_products` VALUES ('221', '233', 'monthly', '58', '0');
INSERT INTO `company_ordered_products` VALUES ('222', '234', 'monthly', '1', '10');
INSERT INTO `company_ordered_products` VALUES ('223', '234', 'daily', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('224', '234', 'pay-for-time', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('225', '234', 'monthly', '2', '100');
INSERT INTO `company_ordered_products` VALUES ('226', '234', 'daily', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('227', '234', 'pay-for-time', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('228', '234', 'monthly', '3', '100');
INSERT INTO `company_ordered_products` VALUES ('229', '234', 'daily', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('230', '234', 'pay-for-time', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('231', '234', 'monthly', '4', '0');
INSERT INTO `company_ordered_products` VALUES ('232', '234', 'monthly', '5', '0');
INSERT INTO `company_ordered_products` VALUES ('233', '234', 'monthly', '20', '0');
INSERT INTO `company_ordered_products` VALUES ('234', '234', 'monthly', '58', '10');
INSERT INTO `company_ordered_products` VALUES ('235', '235', 'monthly', '1', '2');
INSERT INTO `company_ordered_products` VALUES ('236', '235', 'daily', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('237', '235', 'pay-for-time', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('238', '235', 'monthly', '2', '20');
INSERT INTO `company_ordered_products` VALUES ('239', '235', 'daily', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('240', '235', 'pay-for-time', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('241', '235', 'monthly', '3', '10');
INSERT INTO `company_ordered_products` VALUES ('242', '235', 'daily', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('243', '235', 'pay-for-time', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('244', '235', 'monthly', '4', '0');
INSERT INTO `company_ordered_products` VALUES ('245', '235', 'monthly', '5', '0');
INSERT INTO `company_ordered_products` VALUES ('246', '235', 'monthly', '20', '0');
INSERT INTO `company_ordered_products` VALUES ('247', '235', 'monthly', '58', '1');
INSERT INTO `company_ordered_products` VALUES ('248', '237', 'monthly', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('249', '237', 'daily', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('250', '237', 'pay-for-time', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('251', '237', 'monthly', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('252', '237', 'daily', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('253', '237', 'pay-for-time', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('254', '237', 'monthly', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('255', '237', 'daily', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('256', '237', 'pay-for-time', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('257', '237', 'monthly', '4', '0');
INSERT INTO `company_ordered_products` VALUES ('258', '237', 'monthly', '5', '0');
INSERT INTO `company_ordered_products` VALUES ('259', '237', 'monthly', '20', '0');
INSERT INTO `company_ordered_products` VALUES ('260', '237', 'monthly', '58', '0');
INSERT INTO `company_ordered_products` VALUES ('261', '238', 'monthly', '1', '10');
INSERT INTO `company_ordered_products` VALUES ('262', '238', 'daily', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('263', '238', 'pay-for-time', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('264', '238', 'monthly', '2', '100');
INSERT INTO `company_ordered_products` VALUES ('265', '238', 'daily', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('266', '238', 'pay-for-time', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('267', '238', 'monthly', '3', '100');
INSERT INTO `company_ordered_products` VALUES ('268', '238', 'daily', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('269', '238', 'pay-for-time', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('270', '238', 'monthly', '4', '0');
INSERT INTO `company_ordered_products` VALUES ('271', '238', 'monthly', '5', '0');
INSERT INTO `company_ordered_products` VALUES ('272', '238', 'monthly', '20', '0');
INSERT INTO `company_ordered_products` VALUES ('273', '238', 'monthly', '58', '10');
INSERT INTO `company_ordered_products` VALUES ('274', '241', 'monthly', '1', '20');
INSERT INTO `company_ordered_products` VALUES ('275', '241', 'daily', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('276', '241', 'pay-for-time', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('277', '241', 'monthly', '2', '200');
INSERT INTO `company_ordered_products` VALUES ('278', '241', 'daily', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('279', '241', 'pay-for-time', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('280', '241', 'monthly', '3', '200');
INSERT INTO `company_ordered_products` VALUES ('281', '241', 'daily', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('282', '241', 'pay-for-time', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('283', '241', 'monthly', '4', '0');
INSERT INTO `company_ordered_products` VALUES ('284', '241', 'monthly', '5', '0');
INSERT INTO `company_ordered_products` VALUES ('285', '241', 'monthly', '20', '0');
INSERT INTO `company_ordered_products` VALUES ('286', '241', 'monthly', '58', '20');
INSERT INTO `company_ordered_products` VALUES ('287', '242', 'monthly', '1', '10');
INSERT INTO `company_ordered_products` VALUES ('288', '242', 'daily', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('289', '242', 'pay-for-time', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('290', '242', 'monthly', '2', '100');
INSERT INTO `company_ordered_products` VALUES ('291', '242', 'daily', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('292', '242', 'pay-for-time', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('293', '242', 'monthly', '3', '100');
INSERT INTO `company_ordered_products` VALUES ('294', '242', 'daily', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('295', '242', 'pay-for-time', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('296', '242', 'monthly', '4', '0');
INSERT INTO `company_ordered_products` VALUES ('297', '242', 'monthly', '5', '0');
INSERT INTO `company_ordered_products` VALUES ('298', '242', 'monthly', '20', '0');
INSERT INTO `company_ordered_products` VALUES ('299', '242', 'monthly', '58', '10');
INSERT INTO `company_ordered_products` VALUES ('300', '243', 'monthly', '1', '10');
INSERT INTO `company_ordered_products` VALUES ('301', '243', 'daily', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('302', '243', 'pay-for-time', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('303', '243', 'monthly', '2', '100');
INSERT INTO `company_ordered_products` VALUES ('304', '243', 'daily', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('305', '243', 'pay-for-time', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('306', '243', 'monthly', '3', '100');
INSERT INTO `company_ordered_products` VALUES ('307', '243', 'daily', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('308', '243', 'pay-for-time', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('309', '243', 'monthly', '4', '0');
INSERT INTO `company_ordered_products` VALUES ('310', '243', 'monthly', '5', '0');
INSERT INTO `company_ordered_products` VALUES ('311', '243', 'monthly', '20', '0');
INSERT INTO `company_ordered_products` VALUES ('312', '243', 'monthly', '58', '10');
INSERT INTO `company_ordered_products` VALUES ('313', '244', 'monthly', '1', '10');
INSERT INTO `company_ordered_products` VALUES ('314', '244', 'daily', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('315', '244', 'pay-for-time', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('316', '244', 'monthly', '2', '100');
INSERT INTO `company_ordered_products` VALUES ('317', '244', 'daily', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('318', '244', 'pay-for-time', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('319', '244', 'monthly', '3', '100');
INSERT INTO `company_ordered_products` VALUES ('320', '244', 'daily', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('321', '244', 'pay-for-time', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('322', '244', 'monthly', '4', '0');
INSERT INTO `company_ordered_products` VALUES ('323', '244', 'monthly', '5', '0');
INSERT INTO `company_ordered_products` VALUES ('324', '244', 'monthly', '20', '0');
INSERT INTO `company_ordered_products` VALUES ('325', '244', 'monthly', '58', '10');
INSERT INTO `company_ordered_products` VALUES ('326', '245', 'monthly', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('327', '245', 'daily', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('328', '245', 'pay-for-time', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('329', '245', 'monthly', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('330', '245', 'daily', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('331', '245', 'pay-for-time', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('332', '245', 'monthly', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('333', '245', 'daily', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('334', '245', 'pay-for-time', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('335', '245', 'monthly', '4', '0');
INSERT INTO `company_ordered_products` VALUES ('336', '245', 'monthly', '5', '0');
INSERT INTO `company_ordered_products` VALUES ('337', '245', 'monthly', '20', '0');
INSERT INTO `company_ordered_products` VALUES ('338', '245', 'monthly', '58', '0');
INSERT INTO `company_ordered_products` VALUES ('339', '266', 'monthly', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('340', '266', 'daily', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('341', '266', 'pay-for-time', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('342', '266', 'monthly', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('343', '266', 'daily', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('344', '266', 'pay-for-time', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('345', '266', 'monthly', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('346', '266', 'daily', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('347', '266', 'pay-for-time', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('348', '266', 'monthly', '4', '0');
INSERT INTO `company_ordered_products` VALUES ('349', '266', 'monthly', '5', '0');
INSERT INTO `company_ordered_products` VALUES ('350', '266', 'monthly', '20', '0');
INSERT INTO `company_ordered_products` VALUES ('351', '266', 'monthly', '58', '0');
INSERT INTO `company_ordered_products` VALUES ('352', '267', 'monthly', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('353', '267', 'daily', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('354', '267', 'pay-for-time', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('355', '267', 'monthly', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('356', '267', 'daily', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('357', '267', 'pay-for-time', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('358', '267', 'monthly', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('359', '267', 'daily', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('360', '267', 'pay-for-time', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('361', '267', 'monthly', '4', '0');
INSERT INTO `company_ordered_products` VALUES ('362', '267', 'monthly', '5', '0');
INSERT INTO `company_ordered_products` VALUES ('363', '267', 'monthly', '20', '0');
INSERT INTO `company_ordered_products` VALUES ('364', '267', 'monthly', '58', '0');
INSERT INTO `company_ordered_products` VALUES ('365', '268', 'monthly', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('366', '268', 'daily', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('367', '268', 'pay-for-time', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('368', '268', 'monthly', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('369', '268', 'daily', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('370', '268', 'pay-for-time', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('371', '268', 'monthly', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('372', '268', 'daily', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('373', '268', 'pay-for-time', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('374', '268', 'monthly', '4', '0');
INSERT INTO `company_ordered_products` VALUES ('375', '268', 'monthly', '5', '0');
INSERT INTO `company_ordered_products` VALUES ('376', '268', 'monthly', '20', '0');
INSERT INTO `company_ordered_products` VALUES ('377', '268', 'monthly', '58', '0');
INSERT INTO `company_ordered_products` VALUES ('378', '271', 'monthly', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('379', '271', 'daily', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('380', '271', 'pay-for-time', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('381', '271', 'monthly', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('382', '271', 'daily', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('383', '271', 'pay-for-time', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('384', '271', 'monthly', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('385', '271', 'daily', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('386', '271', 'pay-for-time', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('387', '271', 'monthly', '4', '0');
INSERT INTO `company_ordered_products` VALUES ('388', '271', 'monthly', '5', '0');
INSERT INTO `company_ordered_products` VALUES ('389', '271', 'monthly', '20', '0');
INSERT INTO `company_ordered_products` VALUES ('390', '271', 'monthly', '58', '0');
INSERT INTO `company_ordered_products` VALUES ('391', '269', 'monthly', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('392', '269', 'daily', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('393', '269', 'pay-for-time', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('394', '269', 'monthly', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('395', '269', 'daily', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('396', '269', 'pay-for-time', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('397', '269', 'monthly', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('398', '269', 'daily', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('399', '269', 'pay-for-time', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('400', '269', 'monthly', '4', '0');
INSERT INTO `company_ordered_products` VALUES ('401', '269', 'monthly', '5', '0');
INSERT INTO `company_ordered_products` VALUES ('402', '269', 'monthly', '20', '0');
INSERT INTO `company_ordered_products` VALUES ('403', '269', 'monthly', '58', '0');
INSERT INTO `company_ordered_products` VALUES ('404', '272', 'monthly', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('405', '272', 'daily', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('406', '272', 'pay-for-time', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('407', '272', 'monthly', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('408', '272', 'daily', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('409', '272', 'pay-for-time', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('410', '272', 'monthly', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('411', '272', 'daily', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('412', '272', 'pay-for-time', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('413', '272', 'monthly', '4', '0');
INSERT INTO `company_ordered_products` VALUES ('414', '272', 'monthly', '5', '0');
INSERT INTO `company_ordered_products` VALUES ('415', '272', 'monthly', '20', '0');
INSERT INTO `company_ordered_products` VALUES ('416', '272', 'monthly', '58', '0');
INSERT INTO `company_ordered_products` VALUES ('417', '273', 'monthly', '1', '4');
INSERT INTO `company_ordered_products` VALUES ('418', '273', 'daily', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('419', '273', 'pay-for-time', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('420', '273', 'monthly', '2', '100');
INSERT INTO `company_ordered_products` VALUES ('421', '273', 'daily', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('422', '273', 'pay-for-time', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('423', '273', 'monthly', '3', '15');
INSERT INTO `company_ordered_products` VALUES ('424', '273', 'daily', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('425', '273', 'pay-for-time', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('426', '273', 'monthly', '4', '0');
INSERT INTO `company_ordered_products` VALUES ('427', '273', 'monthly', '5', '0');
INSERT INTO `company_ordered_products` VALUES ('428', '273', 'monthly', '20', '0');
INSERT INTO `company_ordered_products` VALUES ('429', '273', 'monthly', '58', '2');
INSERT INTO `company_ordered_products` VALUES ('430', '274', 'monthly', '1', '4');
INSERT INTO `company_ordered_products` VALUES ('431', '274', 'daily', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('432', '274', 'pay-for-time', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('433', '274', 'monthly', '2', '100');
INSERT INTO `company_ordered_products` VALUES ('434', '274', 'daily', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('435', '274', 'pay-for-time', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('436', '274', 'monthly', '3', '30');
INSERT INTO `company_ordered_products` VALUES ('437', '274', 'daily', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('438', '274', 'pay-for-time', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('439', '274', 'monthly', '4', '0');
INSERT INTO `company_ordered_products` VALUES ('440', '274', 'monthly', '5', '0');
INSERT INTO `company_ordered_products` VALUES ('441', '274', 'monthly', '20', '0');
INSERT INTO `company_ordered_products` VALUES ('442', '274', 'monthly', '58', '2');
INSERT INTO `company_ordered_products` VALUES ('443', '275', 'monthly', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('444', '275', 'daily', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('445', '275', 'pay-for-time', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('446', '275', 'monthly', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('447', '275', 'daily', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('448', '275', 'pay-for-time', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('449', '275', 'monthly', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('450', '275', 'daily', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('451', '275', 'pay-for-time', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('452', '275', 'monthly', '4', '0');
INSERT INTO `company_ordered_products` VALUES ('453', '275', 'monthly', '5', '0');
INSERT INTO `company_ordered_products` VALUES ('454', '275', 'monthly', '20', '0');
INSERT INTO `company_ordered_products` VALUES ('455', '275', 'monthly', '58', '0');
INSERT INTO `company_ordered_products` VALUES ('456', '276', 'monthly', '1', '100');
INSERT INTO `company_ordered_products` VALUES ('457', '276', 'daily', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('458', '276', 'pay-for-time', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('459', '276', 'monthly', '2', '1000');
INSERT INTO `company_ordered_products` VALUES ('460', '276', 'daily', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('461', '276', 'pay-for-time', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('462', '276', 'monthly', '3', '1000');
INSERT INTO `company_ordered_products` VALUES ('463', '276', 'daily', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('464', '276', 'pay-for-time', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('465', '276', 'monthly', '4', '0');
INSERT INTO `company_ordered_products` VALUES ('466', '276', 'monthly', '5', '0');
INSERT INTO `company_ordered_products` VALUES ('467', '276', 'monthly', '20', '0');
INSERT INTO `company_ordered_products` VALUES ('468', '276', 'monthly', '58', '100');
INSERT INTO `company_ordered_products` VALUES ('469', '281', 'monthly', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('470', '281', 'daily', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('471', '281', 'pay-for-time', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('472', '281', 'monthly', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('473', '281', 'daily', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('474', '281', 'pay-for-time', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('475', '281', 'monthly', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('476', '281', 'daily', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('477', '281', 'pay-for-time', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('478', '281', 'monthly', '4', '0');
INSERT INTO `company_ordered_products` VALUES ('479', '281', 'monthly', '5', '0');
INSERT INTO `company_ordered_products` VALUES ('480', '281', 'monthly', '20', '0');
INSERT INTO `company_ordered_products` VALUES ('481', '281', 'monthly', '58', '0');
INSERT INTO `company_ordered_products` VALUES ('482', '286', 'monthly', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('483', '286', 'daily', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('484', '286', 'pay-for-time', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('485', '286', 'monthly', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('486', '286', 'daily', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('487', '286', 'pay-for-time', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('488', '286', 'monthly', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('489', '286', 'daily', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('490', '286', 'pay-for-time', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('491', '286', 'monthly', '4', '0');
INSERT INTO `company_ordered_products` VALUES ('492', '286', 'monthly', '5', '0');
INSERT INTO `company_ordered_products` VALUES ('493', '286', 'monthly', '20', '0');
INSERT INTO `company_ordered_products` VALUES ('494', '286', 'monthly', '58', '0');
INSERT INTO `company_ordered_products` VALUES ('495', '287', 'monthly', '1', '10');
INSERT INTO `company_ordered_products` VALUES ('496', '287', 'daily', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('497', '287', 'pay-for-time', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('498', '287', 'monthly', '2', '390');
INSERT INTO `company_ordered_products` VALUES ('499', '287', 'daily', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('500', '287', 'pay-for-time', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('501', '287', 'monthly', '3', '50');
INSERT INTO `company_ordered_products` VALUES ('502', '287', 'daily', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('503', '287', 'pay-for-time', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('504', '287', 'monthly', '4', '0');
INSERT INTO `company_ordered_products` VALUES ('505', '287', 'monthly', '5', '0');
INSERT INTO `company_ordered_products` VALUES ('506', '287', 'monthly', '20', '0');
INSERT INTO `company_ordered_products` VALUES ('507', '287', 'monthly', '58', '8');
INSERT INTO `company_ordered_products` VALUES ('508', '288', 'monthly', '1', '30');
INSERT INTO `company_ordered_products` VALUES ('509', '288', 'daily', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('510', '288', 'pay-for-time', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('511', '288', 'monthly', '2', '1000');
INSERT INTO `company_ordered_products` VALUES ('512', '288', 'daily', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('513', '288', 'pay-for-time', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('514', '288', 'monthly', '3', '500');
INSERT INTO `company_ordered_products` VALUES ('515', '288', 'daily', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('516', '288', 'pay-for-time', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('517', '288', 'monthly', '4', '0');
INSERT INTO `company_ordered_products` VALUES ('518', '288', 'monthly', '5', '0');
INSERT INTO `company_ordered_products` VALUES ('519', '288', 'monthly', '20', '0');
INSERT INTO `company_ordered_products` VALUES ('520', '288', 'monthly', '58', '40');
INSERT INTO `company_ordered_products` VALUES ('521', '289', 'monthly', '1', '8');
INSERT INTO `company_ordered_products` VALUES ('522', '289', 'daily', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('523', '289', 'pay-for-time', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('524', '289', 'monthly', '2', '350');
INSERT INTO `company_ordered_products` VALUES ('525', '289', 'daily', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('526', '289', 'pay-for-time', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('527', '289', 'monthly', '3', '50');
INSERT INTO `company_ordered_products` VALUES ('528', '289', 'daily', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('529', '289', 'pay-for-time', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('530', '289', 'monthly', '4', '0');
INSERT INTO `company_ordered_products` VALUES ('531', '289', 'monthly', '5', '0');
INSERT INTO `company_ordered_products` VALUES ('532', '289', 'monthly', '20', '0');
INSERT INTO `company_ordered_products` VALUES ('533', '289', 'monthly', '58', '8');
INSERT INTO `company_ordered_products` VALUES ('534', '292', 'monthly', '1', '10');
INSERT INTO `company_ordered_products` VALUES ('535', '292', 'daily', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('536', '292', 'pay-for-time', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('537', '292', 'monthly', '2', '500');
INSERT INTO `company_ordered_products` VALUES ('538', '292', 'daily', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('539', '292', 'pay-for-time', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('540', '292', 'monthly', '3', '300');
INSERT INTO `company_ordered_products` VALUES ('541', '292', 'daily', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('542', '292', 'pay-for-time', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('543', '292', 'monthly', '4', '0');
INSERT INTO `company_ordered_products` VALUES ('544', '292', 'monthly', '5', '0');
INSERT INTO `company_ordered_products` VALUES ('545', '292', 'monthly', '20', '0');
INSERT INTO `company_ordered_products` VALUES ('546', '292', 'monthly', '58', '4');
INSERT INTO `company_ordered_products` VALUES ('547', '294', 'monthly', '1', '100');
INSERT INTO `company_ordered_products` VALUES ('548', '294', 'daily', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('549', '294', 'pay-for-time', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('550', '294', 'monthly', '2', '1000');
INSERT INTO `company_ordered_products` VALUES ('551', '294', 'daily', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('552', '294', 'pay-for-time', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('553', '294', 'monthly', '3', '1000');
INSERT INTO `company_ordered_products` VALUES ('554', '294', 'daily', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('555', '294', 'pay-for-time', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('556', '294', 'monthly', '4', '0');
INSERT INTO `company_ordered_products` VALUES ('557', '294', 'monthly', '5', '0');
INSERT INTO `company_ordered_products` VALUES ('558', '294', 'monthly', '20', '0');
INSERT INTO `company_ordered_products` VALUES ('559', '294', 'monthly', '58', '100');
INSERT INTO `company_ordered_products` VALUES ('560', '293', 'monthly', '1', '100');
INSERT INTO `company_ordered_products` VALUES ('561', '293', 'daily', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('562', '293', 'pay-for-time', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('563', '293', 'monthly', '2', '100');
INSERT INTO `company_ordered_products` VALUES ('564', '293', 'daily', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('565', '293', 'pay-for-time', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('566', '293', 'monthly', '3', '100');
INSERT INTO `company_ordered_products` VALUES ('567', '293', 'daily', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('568', '293', 'pay-for-time', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('569', '293', 'monthly', '4', '0');
INSERT INTO `company_ordered_products` VALUES ('570', '293', 'monthly', '5', '0');
INSERT INTO `company_ordered_products` VALUES ('571', '293', 'monthly', '20', '0');
INSERT INTO `company_ordered_products` VALUES ('572', '293', 'monthly', '58', '100');
INSERT INTO `company_ordered_products` VALUES ('573', '295', 'monthly', '1', '100');
INSERT INTO `company_ordered_products` VALUES ('574', '295', 'daily', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('575', '295', 'pay-for-time', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('576', '295', 'monthly', '2', '500');
INSERT INTO `company_ordered_products` VALUES ('577', '295', 'daily', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('578', '295', 'pay-for-time', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('579', '295', 'monthly', '3', '100');
INSERT INTO `company_ordered_products` VALUES ('580', '295', 'daily', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('581', '295', 'pay-for-time', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('582', '295', 'monthly', '4', '0');
INSERT INTO `company_ordered_products` VALUES ('583', '295', 'monthly', '5', '0');
INSERT INTO `company_ordered_products` VALUES ('584', '295', 'monthly', '20', '0');
INSERT INTO `company_ordered_products` VALUES ('585', '295', 'monthly', '58', '100');
INSERT INTO `company_ordered_products` VALUES ('586', '296', 'monthly', '1', '12');
INSERT INTO `company_ordered_products` VALUES ('587', '296', 'daily', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('588', '296', 'pay-for-time', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('589', '296', 'monthly', '2', '180');
INSERT INTO `company_ordered_products` VALUES ('590', '296', 'daily', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('591', '296', 'pay-for-time', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('592', '296', 'monthly', '3', '70');
INSERT INTO `company_ordered_products` VALUES ('593', '296', 'daily', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('594', '296', 'pay-for-time', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('595', '296', 'monthly', '4', '0');
INSERT INTO `company_ordered_products` VALUES ('596', '296', 'monthly', '5', '0');
INSERT INTO `company_ordered_products` VALUES ('597', '296', 'monthly', '20', '0');
INSERT INTO `company_ordered_products` VALUES ('598', '296', 'monthly', '58', '8');
INSERT INTO `company_ordered_products` VALUES ('599', '298', 'monthly', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('600', '298', 'daily', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('601', '298', 'pay-for-time', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('602', '298', 'monthly', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('603', '298', 'daily', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('604', '298', 'pay-for-time', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('605', '298', 'monthly', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('606', '298', 'daily', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('607', '298', 'pay-for-time', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('608', '298', 'monthly', '4', '0');
INSERT INTO `company_ordered_products` VALUES ('609', '298', 'monthly', '5', '0');
INSERT INTO `company_ordered_products` VALUES ('610', '298', 'monthly', '20', '0');
INSERT INTO `company_ordered_products` VALUES ('611', '298', 'monthly', '58', '0');
INSERT INTO `company_ordered_products` VALUES ('612', '299', 'monthly', '1', '12');
INSERT INTO `company_ordered_products` VALUES ('613', '299', 'daily', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('614', '299', 'pay-for-time', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('615', '299', 'monthly', '2', '400');
INSERT INTO `company_ordered_products` VALUES ('616', '299', 'daily', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('617', '299', 'pay-for-time', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('618', '299', 'monthly', '3', '58');
INSERT INTO `company_ordered_products` VALUES ('619', '299', 'daily', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('620', '299', 'pay-for-time', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('621', '299', 'monthly', '4', '0');
INSERT INTO `company_ordered_products` VALUES ('622', '299', 'monthly', '5', '0');
INSERT INTO `company_ordered_products` VALUES ('623', '299', 'monthly', '20', '0');
INSERT INTO `company_ordered_products` VALUES ('624', '299', 'monthly', '58', '6');
INSERT INTO `company_ordered_products` VALUES ('625', '301', 'monthly', '1', '12');
INSERT INTO `company_ordered_products` VALUES ('626', '301', 'daily', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('627', '301', 'pay-for-time', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('628', '301', 'monthly', '2', '12');
INSERT INTO `company_ordered_products` VALUES ('629', '301', 'daily', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('630', '301', 'pay-for-time', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('631', '301', 'monthly', '3', '12');
INSERT INTO `company_ordered_products` VALUES ('632', '301', 'daily', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('633', '301', 'pay-for-time', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('634', '301', 'monthly', '4', '0');
INSERT INTO `company_ordered_products` VALUES ('635', '301', 'monthly', '5', '0');
INSERT INTO `company_ordered_products` VALUES ('636', '301', 'monthly', '20', '0');
INSERT INTO `company_ordered_products` VALUES ('637', '301', 'monthly', '58', '12');
INSERT INTO `company_ordered_products` VALUES ('638', '300', 'monthly', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('639', '300', 'daily', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('640', '300', 'pay-for-time', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('641', '300', 'monthly', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('642', '300', 'daily', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('643', '300', 'pay-for-time', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('644', '300', 'monthly', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('645', '300', 'daily', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('646', '300', 'pay-for-time', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('647', '300', 'monthly', '4', '0');
INSERT INTO `company_ordered_products` VALUES ('648', '300', 'monthly', '5', '0');
INSERT INTO `company_ordered_products` VALUES ('649', '300', 'monthly', '20', '0');
INSERT INTO `company_ordered_products` VALUES ('650', '300', 'monthly', '58', '0');
INSERT INTO `company_ordered_products` VALUES ('651', '303', 'monthly', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('652', '303', 'daily', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('653', '303', 'pay-for-time', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('654', '303', 'monthly', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('655', '303', 'daily', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('656', '303', 'pay-for-time', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('657', '303', 'monthly', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('658', '303', 'daily', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('659', '303', 'pay-for-time', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('660', '303', 'monthly', '4', '0');
INSERT INTO `company_ordered_products` VALUES ('661', '303', 'monthly', '5', '0');
INSERT INTO `company_ordered_products` VALUES ('662', '303', 'monthly', '20', '0');
INSERT INTO `company_ordered_products` VALUES ('663', '303', 'monthly', '58', '0');
INSERT INTO `company_ordered_products` VALUES ('664', '304', 'monthly', '1', '10');
INSERT INTO `company_ordered_products` VALUES ('665', '304', 'daily', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('666', '304', 'pay-for-time', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('667', '304', 'monthly', '2', '190');
INSERT INTO `company_ordered_products` VALUES ('668', '304', 'daily', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('669', '304', 'pay-for-time', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('670', '304', 'monthly', '3', '60');
INSERT INTO `company_ordered_products` VALUES ('671', '304', 'daily', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('672', '304', 'pay-for-time', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('673', '304', 'monthly', '4', '0');
INSERT INTO `company_ordered_products` VALUES ('674', '304', 'monthly', '5', '0');
INSERT INTO `company_ordered_products` VALUES ('675', '304', 'monthly', '20', '0');
INSERT INTO `company_ordered_products` VALUES ('676', '304', 'monthly', '58', '1');
INSERT INTO `company_ordered_products` VALUES ('677', '305', 'monthly', '1', '4');
INSERT INTO `company_ordered_products` VALUES ('678', '305', 'daily', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('679', '305', 'pay-for-time', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('680', '305', 'monthly', '2', '4');
INSERT INTO `company_ordered_products` VALUES ('681', '305', 'daily', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('682', '305', 'pay-for-time', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('683', '305', 'monthly', '3', '4');
INSERT INTO `company_ordered_products` VALUES ('684', '305', 'daily', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('685', '305', 'pay-for-time', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('686', '305', 'monthly', '4', '0');
INSERT INTO `company_ordered_products` VALUES ('687', '305', 'monthly', '5', '0');
INSERT INTO `company_ordered_products` VALUES ('688', '305', 'monthly', '20', '0');
INSERT INTO `company_ordered_products` VALUES ('689', '305', 'monthly', '58', '4');
INSERT INTO `company_ordered_products` VALUES ('690', '307', 'monthly', '1', '100');
INSERT INTO `company_ordered_products` VALUES ('691', '307', 'daily', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('692', '307', 'pay-for-time', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('693', '307', 'monthly', '2', '1000');
INSERT INTO `company_ordered_products` VALUES ('694', '307', 'daily', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('695', '307', 'pay-for-time', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('696', '307', 'monthly', '3', '1000');
INSERT INTO `company_ordered_products` VALUES ('697', '307', 'daily', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('698', '307', 'pay-for-time', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('699', '307', 'monthly', '4', '0');
INSERT INTO `company_ordered_products` VALUES ('700', '307', 'monthly', '5', '0');
INSERT INTO `company_ordered_products` VALUES ('701', '307', 'monthly', '20', '0');
INSERT INTO `company_ordered_products` VALUES ('702', '307', 'monthly', '58', '10');
INSERT INTO `company_ordered_products` VALUES ('703', '222', 'daily', '1', '20');
INSERT INTO `company_ordered_products` VALUES ('704', '222', 'pay-for-time', '2', '10');
INSERT INTO `company_ordered_products` VALUES ('705', '222', 'daily', '1', '20');
INSERT INTO `company_ordered_products` VALUES ('706', '222', 'pay-for-time', '2', '10');
INSERT INTO `company_ordered_products` VALUES ('707', '315', 'monthly', '1', '10');
INSERT INTO `company_ordered_products` VALUES ('708', '315', 'daily', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('709', '315', 'pay-for-time', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('785', '325', 'monthly', '1', '10');
INSERT INTO `company_ordered_products` VALUES ('786', '325', 'daily', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('787', '325', 'pay-for-time', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('713', '315', 'monthly', '3', '100');
INSERT INTO `company_ordered_products` VALUES ('714', '315', 'daily', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('715', '315', 'pay-for-time', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('716', '315', 'monthly', '4', '0');
INSERT INTO `company_ordered_products` VALUES ('717', '315', 'monthly', '5', '0');
INSERT INTO `company_ordered_products` VALUES ('718', '315', 'monthly', '20', '0');
INSERT INTO `company_ordered_products` VALUES ('719', '315', 'monthly', '58', '10');
INSERT INTO `company_ordered_products` VALUES ('720', '316', 'monthly', '1', '10');
INSERT INTO `company_ordered_products` VALUES ('721', '316', 'daily', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('722', '316', 'pay-for-time', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('723', '316', 'monthly', '100', '100');
INSERT INTO `company_ordered_products` VALUES ('724', '316', 'daily', '100', '0');
INSERT INTO `company_ordered_products` VALUES ('725', '316', 'pay-for-time', '100', '0');
INSERT INTO `company_ordered_products` VALUES ('726', '316', 'monthly', '3', '100');
INSERT INTO `company_ordered_products` VALUES ('727', '316', 'daily', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('728', '316', 'pay-for-time', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('729', '316', 'monthly', '4', '0');
INSERT INTO `company_ordered_products` VALUES ('730', '316', 'monthly', '5', '0');
INSERT INTO `company_ordered_products` VALUES ('731', '316', 'monthly', '20', '0');
INSERT INTO `company_ordered_products` VALUES ('732', '316', 'monthly', '58', '10');
INSERT INTO `company_ordered_products` VALUES ('733', '317', 'monthly', '1', '10');
INSERT INTO `company_ordered_products` VALUES ('734', '317', 'daily', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('735', '317', 'pay-for-time', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('736', '317', 'monthly', '100', '100');
INSERT INTO `company_ordered_products` VALUES ('737', '317', 'daily', '100', '0');
INSERT INTO `company_ordered_products` VALUES ('738', '317', 'pay-for-time', '100', '0');
INSERT INTO `company_ordered_products` VALUES ('739', '317', 'monthly', '3', '100');
INSERT INTO `company_ordered_products` VALUES ('740', '317', 'daily', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('741', '317', 'pay-for-time', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('742', '317', 'monthly', '4', '0');
INSERT INTO `company_ordered_products` VALUES ('743', '317', 'monthly', '5', '0');
INSERT INTO `company_ordered_products` VALUES ('744', '317', 'monthly', '20', '0');
INSERT INTO `company_ordered_products` VALUES ('745', '317', 'monthly', '58', '10');
INSERT INTO `company_ordered_products` VALUES ('746', '318', 'monthly', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('747', '318', 'daily', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('748', '318', 'pay-for-time', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('749', '318', 'monthly', '100', '0');
INSERT INTO `company_ordered_products` VALUES ('750', '318', 'daily', '100', '0');
INSERT INTO `company_ordered_products` VALUES ('751', '318', 'pay-for-time', '100', '0');
INSERT INTO `company_ordered_products` VALUES ('752', '318', 'monthly', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('753', '318', 'daily', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('754', '318', 'pay-for-time', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('755', '318', 'monthly', '4', '0');
INSERT INTO `company_ordered_products` VALUES ('756', '318', 'monthly', '5', '0');
INSERT INTO `company_ordered_products` VALUES ('757', '318', 'monthly', '20', '0');
INSERT INTO `company_ordered_products` VALUES ('758', '318', 'monthly', '58', '0');
INSERT INTO `company_ordered_products` VALUES ('759', '319', 'monthly', '1', '111');
INSERT INTO `company_ordered_products` VALUES ('760', '319', 'daily', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('761', '319', 'pay-for-time', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('762', '319', 'monthly', '2', '111');
INSERT INTO `company_ordered_products` VALUES ('763', '319', 'daily', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('764', '319', 'pay-for-time', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('765', '319', 'monthly', '3', '111');
INSERT INTO `company_ordered_products` VALUES ('766', '319', 'daily', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('767', '319', 'pay-for-time', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('768', '319', 'monthly', '4', '0');
INSERT INTO `company_ordered_products` VALUES ('769', '319', 'monthly', '5', '0');
INSERT INTO `company_ordered_products` VALUES ('770', '319', 'monthly', '20', '0');
INSERT INTO `company_ordered_products` VALUES ('771', '319', 'monthly', '58', '111');
INSERT INTO `company_ordered_products` VALUES ('772', '321', 'monthly', '1', '1');
INSERT INTO `company_ordered_products` VALUES ('773', '321', 'daily', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('774', '321', 'pay-for-time', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('775', '321', 'monthly', '2', '1');
INSERT INTO `company_ordered_products` VALUES ('776', '321', 'daily', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('777', '321', 'pay-for-time', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('778', '321', 'monthly', '3', '10');
INSERT INTO `company_ordered_products` VALUES ('779', '321', 'daily', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('780', '321', 'pay-for-time', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('781', '321', 'monthly', '4', '0');
INSERT INTO `company_ordered_products` VALUES ('782', '321', 'monthly', '5', '0');
INSERT INTO `company_ordered_products` VALUES ('783', '321', 'monthly', '20', '0');
INSERT INTO `company_ordered_products` VALUES ('784', '321', 'monthly', '58', '1');
INSERT INTO `company_ordered_products` VALUES ('788', '325', 'monthly', '2', '600');
INSERT INTO `company_ordered_products` VALUES ('789', '325', 'daily', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('790', '325', 'pay-for-time', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('791', '325', 'monthly', '3', '60');
INSERT INTO `company_ordered_products` VALUES ('792', '325', 'daily', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('793', '325', 'pay-for-time', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('794', '325', 'monthly', '4', '0');
INSERT INTO `company_ordered_products` VALUES ('795', '325', 'monthly', '5', '0');
INSERT INTO `company_ordered_products` VALUES ('796', '325', 'monthly', '20', '0');
INSERT INTO `company_ordered_products` VALUES ('797', '325', 'monthly', '58', '8');
INSERT INTO `company_ordered_products` VALUES ('798', '326', 'monthly', '1', '10');
INSERT INTO `company_ordered_products` VALUES ('799', '326', 'daily', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('800', '326', 'pay-for-time', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('801', '326', 'monthly', '2', '100');
INSERT INTO `company_ordered_products` VALUES ('802', '326', 'daily', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('803', '326', 'pay-for-time', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('804', '326', 'monthly', '3', '100');
INSERT INTO `company_ordered_products` VALUES ('805', '326', 'daily', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('806', '326', 'pay-for-time', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('807', '326', 'monthly', '4', '0');
INSERT INTO `company_ordered_products` VALUES ('808', '326', 'monthly', '5', '0');
INSERT INTO `company_ordered_products` VALUES ('809', '326', 'monthly', '20', '0');
INSERT INTO `company_ordered_products` VALUES ('810', '326', 'monthly', '58', '10');
INSERT INTO `company_ordered_products` VALUES ('811', '328', 'monthly', '1', '7');
INSERT INTO `company_ordered_products` VALUES ('812', '328', 'daily', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('813', '328', 'pay-for-time', '1', '0');
INSERT INTO `company_ordered_products` VALUES ('814', '328', 'monthly', '2', '400');
INSERT INTO `company_ordered_products` VALUES ('815', '328', 'daily', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('816', '328', 'pay-for-time', '2', '0');
INSERT INTO `company_ordered_products` VALUES ('817', '328', 'monthly', '3', '50');
INSERT INTO `company_ordered_products` VALUES ('818', '328', 'daily', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('819', '328', 'pay-for-time', '3', '0');
INSERT INTO `company_ordered_products` VALUES ('820', '328', 'monthly', '4', '0');
INSERT INTO `company_ordered_products` VALUES ('821', '328', 'monthly', '5', '0');
INSERT INTO `company_ordered_products` VALUES ('822', '328', 'monthly', '20', '0');
INSERT INTO `company_ordered_products` VALUES ('823', '328', 'monthly', '58', '4');

-- ----------------------------
-- Table structure for `company_res_order_cfg`
-- ----------------------------
DROP TABLE IF EXISTS `company_res_order_cfg`;
CREATE TABLE `company_res_order_cfg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` varchar(25) DEFAULT NULL COMMENT '公司ID',
  `max_instances` int(11) DEFAULT '0' COMMENT '最大云主机数量',
  `max_volumes` int(11) DEFAULT '0' COMMENT '最大存储数量',
  `max_snapshots` int(11) DEFAULT '0' COMMENT '最大快照数量',
  `min_ebs_size` int(11) DEFAULT '0' COMMENT '最小ebs启动存储大小',
  `max_ebs_size` int(11) DEFAULT '0' COMMENT '最大ebs启动存储大小',
  `max_security_groups` int(11) DEFAULT '0' COMMENT '最大安全规则组（虚拟网络防火墙）数量',
  `max_keypairs` int(11) DEFAULT '0' COMMENT '最大密钥数量',
  `ecu_mon_count` float(11,2) DEFAULT '0.00' COMMENT 'ECU产品(ecu)包月数量',
  `vol_mon_size` int(11) DEFAULT '0' COMMENT '存储产品(volume)包月大小',
  `snap_mon_size` int(11) DEFAULT '0' COMMENT '快照产品(snapshot)包月大小',
  `ha_mon_count` int(11) DEFAULT '0' COMMENT 'HA(主机保护)产品(ha)包月数量',
  `elb_mon_count` int(11) DEFAULT '0' COMMENT 'Elb产品(elb)包天数量',
  `ip_mon_count` int(11) DEFAULT '0' COMMENT 'IP产品(ip)包月数量',
  `ecu_day_count` float(11,0) DEFAULT '0' COMMENT 'ECU产品(ecu)包天数量',
  `vol_day_size` int(11) DEFAULT '0' COMMENT '存储产品(volume)包天小大',
  `snap_day_size` int(11) DEFAULT '0' COMMENT '快照产品(snapshot)包天小大',
  `ecu_hour_count` float(11,0) DEFAULT '0' COMMENT 'ECU产品(ecu)计时数量',
  `vol_hour_size` int(11) DEFAULT '0' COMMENT '存储产品(volume)计时小大',
  `snap_hour_size` int(11) DEFAULT '0' COMMENT '快照产品(snapshot)计时大小',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company_res_order_cfg
-- ----------------------------
INSERT INTO `company_res_order_cfg` VALUES ('86', '323', '0', '0', '0', '0', '0', '0', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, null);
INSERT INTO `company_res_order_cfg` VALUES ('87', '328', '7', '12', '4', '1', '500', '3', '2', '7.00', '400', '50', '4', '0', '0', '0', '0', '0', '0', '0', '0', null, null);
INSERT INTO `company_res_order_cfg` VALUES ('88', '288', '0', '0', '0', '1', '500', '20', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, null);
INSERT INTO `company_res_order_cfg` VALUES ('89', '289', '8', '8', '8', '1', '500', '1', '8', '8.00', '350', '50', '8', '0', '0', '0', '0', '0', '0', '0', '0', null, null);
INSERT INTO `company_res_order_cfg` VALUES ('90', '326', '10', '10', '10', '1', '500', '1', '10', '10.00', '100', '100', '10', '0', '0', '0', '0', '0', '0', '0', '0', null, null);
INSERT INTO `company_res_order_cfg` VALUES ('91', '292', '10', '10', '4', '1', '500', '1', '4', '10.00', '500', '300', '4', '0', '0', '0', '0', '0', '0', '0', '0', null, null);
INSERT INTO `company_res_order_cfg` VALUES ('92', '293', '10', '30', '10', '1', '500', '10', '10', '100.00', '500', '500', '100', '0', '0', '0', '0', '0', '0', '0', '0', null, null);
INSERT INTO `company_res_order_cfg` VALUES ('93', '294', '100', '100', '100', '1', '500', '100', '100', '100.00', '1000', '1000', '100', '0', '0', '0', '0', '0', '0', '0', '0', null, null);
INSERT INTO `company_res_order_cfg` VALUES ('94', '295', '100', '100', '100', '1', '500', '10', '100', '100.00', '1000', '1000', '100', '0', '0', '0', '0', '0', '0', '0', '0', null, null);
INSERT INTO `company_res_order_cfg` VALUES ('95', '296', '0', '0', '0', '1', '500', '2', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, null);
INSERT INTO `company_res_order_cfg` VALUES ('96', '299', '10', '10', '6', '1', '500', '6', '6', '12.00', '400', '58', '6', '0', '0', '0', '0', '0', '0', '0', '0', null, null);
INSERT INTO `company_res_order_cfg` VALUES ('97', '336', '0', '0', '0', '0', '0', '0', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, null);
INSERT INTO `company_res_order_cfg` VALUES ('98', '307', '101', '102', '103', '1', '500', '105', '104', '100.00', '1000', '1000', '10', '0', '0', '0', '0', '0', '0', '0', '0', null, null);
INSERT INTO `company_res_order_cfg` VALUES ('99', '329', '0', '0', '0', '1', '500', '2', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, null);
INSERT INTO `company_res_order_cfg` VALUES ('100', '330', '0', '0', '0', '0', '0', '0', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, null);
INSERT INTO `company_res_order_cfg` VALUES ('101', '314', '0', '0', '0', '0', '0', '0', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, null);
INSERT INTO `company_res_order_cfg` VALUES ('102', '315', '200', '100', '100', '1', '500', '10', '100', '100.00', '800', '800', '10', '0', '0', '0', '0', '0', '0', '0', '0', null, null);
INSERT INTO `company_res_order_cfg` VALUES ('103', '324', '0', '0', '0', '0', '0', '0', '0', '10.00', '500', '60', '6', '0', '0', '0', '0', '0', '0', '0', '0', null, null);
INSERT INTO `company_res_order_cfg` VALUES ('104', '365', '0', '0', '0', '1', '500', '1', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, null);
INSERT INTO `company_res_order_cfg` VALUES ('105', '366', '0', '0', '0', '0', '0', '0', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, null);
INSERT INTO `company_res_order_cfg` VALUES ('106', '367', '0', '0', '0', '0', '0', '0', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, null);
INSERT INTO `company_res_order_cfg` VALUES ('107', '368', '0', '0', '0', '0', '0', '0', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, null);
INSERT INTO `company_res_order_cfg` VALUES ('108', '369', '0', '0', '0', '0', '0', '0', '0', '3.50', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, '2014-07-16 13:10:55');
INSERT INTO `company_res_order_cfg` VALUES ('109', '370', '0', '0', '0', '0', '0', '0', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, null);
INSERT INTO `company_res_order_cfg` VALUES ('110', '350', '6', '10', '6', '1', '500', '1', '4', '8.00', '500', '500', '4', '0', '0', '0', '0', '0', '0', '0', '0', null, null);
INSERT INTO `company_res_order_cfg` VALUES ('111', '362', '10', '10', '10', '1', '500', '10', '10', '100.00', '0', '1000', '10', '0', '0', '0', '0', '0', '0', '0', '0', null, null);
INSERT INTO `company_res_order_cfg` VALUES ('112', '363', '0', '0', '0', '1', '500', '1', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, null);
INSERT INTO `company_res_order_cfg` VALUES ('113', '364', '0', '0', '0', '0', '0', '0', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, null);
INSERT INTO `company_res_order_cfg` VALUES ('114', '355', '0', '0', '0', '0', '0', '0', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, null);
INSERT INTO `company_res_order_cfg` VALUES ('115', '356', '6', '10', '6', '1', '500', '2', '4', '20.00', '1000', '300', '2', '0', '0', '0', '0', '0', '0', '0', '0', null, null);
INSERT INTO `company_res_order_cfg` VALUES ('116', '357', '0', '0', '0', '0', '0', '0', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, null);
INSERT INTO `company_res_order_cfg` VALUES ('117', '358', '5', '8', '3', '1', '500', '1', '2', '5.00', '300', '100', '2', '0', '0', '0', '0', '0', '0', '0', '0', null, null);
INSERT INTO `company_res_order_cfg` VALUES ('118', '359', '0', '0', '0', '1', '500', '1', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, null);
INSERT INTO `company_res_order_cfg` VALUES ('119', '360', '5', '10', '5', '1', '500', '1', '5', '5.00', '100', '100', '5', '0', '0', '0', '0', '0', '0', '0', '0', null, null);
INSERT INTO `company_res_order_cfg` VALUES ('120', '361', '5', '8', '3', '1', '500', '2', '2', '50.00', '0', '500', '2', '0', '0', '0', '0', '0', '0', '0', '0', null, null);

-- ----------------------------
-- Table structure for `department_account`
-- ----------------------------
DROP TABLE IF EXISTS `department_account`;
CREATE TABLE `department_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `vmoney_account_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dunique` (`department_id`)
) ENGINE=MyISAM AUTO_INCREMENT=214 DEFAULT CHARSET=utf8 COMMENT='éƒ¨é—¨çš„è™šæ‹Ÿå¸å¸æˆ·å¯¹åº”è¡¨';

-- ----------------------------
-- Records of department_account
-- ----------------------------
INSERT INTO `department_account` VALUES ('1', '2', '1', '4');
INSERT INTO `department_account` VALUES ('160', '1', '1', '155');
INSERT INTO `department_account` VALUES ('161', '149', '1', '155');
INSERT INTO `department_account` VALUES ('39', '154', '156', '39');
INSERT INTO `department_account` VALUES ('37', '155', '156', '39');
INSERT INTO `department_account` VALUES ('2', '3', '4', '25');
INSERT INTO `department_account` VALUES ('156', '194', '156', '130');
INSERT INTO `department_account` VALUES ('132', '171', '156', '39');
INSERT INTO `department_account` VALUES ('153', '191', '156', '175');
INSERT INTO `department_account` VALUES ('162', '285', '225', '209');
INSERT INTO `department_account` VALUES ('163', '286', '226', '210');
INSERT INTO `department_account` VALUES ('164', '287', '229', '215');
INSERT INTO `department_account` VALUES ('165', '288', '229', '216');
INSERT INTO `department_account` VALUES ('166', '289', '231', '218');
INSERT INTO `department_account` VALUES ('167', '290', '231', '218');
INSERT INTO `department_account` VALUES ('168', '291', '231', '218');
INSERT INTO `department_account` VALUES ('169', '329', '287', '248');
INSERT INTO `department_account` VALUES ('170', '330', '287', '248');
INSERT INTO `department_account` VALUES ('171', '331', '289', '250');
INSERT INTO `department_account` VALUES ('172', '332', '289', '250');
INSERT INTO `department_account` VALUES ('182', '348', '296', '255');
INSERT INTO `department_account` VALUES ('179', '339', '299', '259');
INSERT INTO `department_account` VALUES ('183', '349', '324', '278');
INSERT INTO `department_account` VALUES ('184', '350', '324', '278');
INSERT INTO `department_account` VALUES ('185', '351', '324', '278');
INSERT INTO `department_account` VALUES ('188', '354', '325', '279');
INSERT INTO `department_account` VALUES ('203', '369', '296', '255');
INSERT INTO `department_account` VALUES ('205', '371', '327', '286');
INSERT INTO `department_account` VALUES ('207', '373', '328', '287');
INSERT INTO `department_account` VALUES ('210', '376', '328', '287');
INSERT INTO `department_account` VALUES ('211', '377', '296', '255');

-- ----------------------------
-- Table structure for `department_charge_duration`
-- ----------------------------
DROP TABLE IF EXISTS `department_charge_duration`;
CREATE TABLE `department_charge_duration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `charge_duration` enum('pay-for-time','daily','monthly') DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `department_id` (`department_id`)
) ENGINE=MyISAM AUTO_INCREMENT=95 DEFAULT CHARSET=utf8 COMMENT='éƒ¨é—¨ä»˜è´¹ç±»åž‹è¡¨';

-- ----------------------------
-- Records of department_charge_duration
-- ----------------------------
INSERT INTO `department_charge_duration` VALUES ('1', '149', '1', 'monthly');
INSERT INTO `department_charge_duration` VALUES ('2', '2', '1', 'pay-for-time');
INSERT INTO `department_charge_duration` VALUES ('3', '3', '2', 'pay-for-time');
INSERT INTO `department_charge_duration` VALUES ('4', '1', '1', 'daily');
INSERT INTO `department_charge_duration` VALUES ('5', '5', '1', 'daily');
INSERT INTO `department_charge_duration` VALUES ('21', '169', '1', 'pay-for-time');
INSERT INTO `department_charge_duration` VALUES ('23', '171', '156', 'monthly');
INSERT INTO `department_charge_duration` VALUES ('24', '172', '156', 'daily');
INSERT INTO `department_charge_duration` VALUES ('25', '160', '162', 'monthly');
INSERT INTO `department_charge_duration` VALUES ('27', '174', '1', 'pay-for-time');
INSERT INTO `department_charge_duration` VALUES ('28', '175', '1', 'pay-for-time');
INSERT INTO `department_charge_duration` VALUES ('29', '176', '1', 'pay-for-time');
INSERT INTO `department_charge_duration` VALUES ('30', '177', '1', 'pay-for-time');
INSERT INTO `department_charge_duration` VALUES ('31', '178', '1', 'pay-for-time');
INSERT INTO `department_charge_duration` VALUES ('32', '180', '1', 'pay-for-time');
INSERT INTO `department_charge_duration` VALUES ('33', '181', '1', 'pay-for-time');
INSERT INTO `department_charge_duration` VALUES ('34', '184', '1', 'pay-for-time');
INSERT INTO `department_charge_duration` VALUES ('35', '185', '1', 'pay-for-time');
INSERT INTO `department_charge_duration` VALUES ('36', '186', '1', 'pay-for-time');
INSERT INTO `department_charge_duration` VALUES ('37', '187', '1', 'pay-for-time');
INSERT INTO `department_charge_duration` VALUES ('38', '188', '1', 'pay-for-time');
INSERT INTO `department_charge_duration` VALUES ('39', '189', '1', 'pay-for-time');
INSERT INTO `department_charge_duration` VALUES ('40', '190', '1', 'pay-for-time');
INSERT INTO `department_charge_duration` VALUES ('41', '191', '156', 'monthly');
INSERT INTO `department_charge_duration` VALUES ('42', '192', '156', 'monthly');
INSERT INTO `department_charge_duration` VALUES ('43', '193', '156', 'monthly');
INSERT INTO `department_charge_duration` VALUES ('44', '194', '156', 'monthly');
INSERT INTO `department_charge_duration` VALUES ('45', '285', '225', 'monthly');
INSERT INTO `department_charge_duration` VALUES ('46', '286', '226', 'monthly');
INSERT INTO `department_charge_duration` VALUES ('47', '287', '229', 'monthly');
INSERT INTO `department_charge_duration` VALUES ('48', '288', '229', 'monthly');
INSERT INTO `department_charge_duration` VALUES ('49', '289', '231', 'monthly');
INSERT INTO `department_charge_duration` VALUES ('50', '290', '231', 'monthly');
INSERT INTO `department_charge_duration` VALUES ('51', '291', '231', 'monthly');
INSERT INTO `department_charge_duration` VALUES ('52', '329', '287', 'monthly');
INSERT INTO `department_charge_duration` VALUES ('53', '330', '287', 'monthly');
INSERT INTO `department_charge_duration` VALUES ('54', '331', '289', 'monthly');
INSERT INTO `department_charge_duration` VALUES ('55', '332', '289', 'monthly');
INSERT INTO `department_charge_duration` VALUES ('56', '333', '289', 'monthly');
INSERT INTO `department_charge_duration` VALUES ('57', '334', '289', 'monthly');
INSERT INTO `department_charge_duration` VALUES ('58', '335', '296', 'monthly');
INSERT INTO `department_charge_duration` VALUES ('59', '336', '296', 'monthly');
INSERT INTO `department_charge_duration` VALUES ('60', '337', '296', 'monthly');
INSERT INTO `department_charge_duration` VALUES ('61', '338', '296', 'monthly');
INSERT INTO `department_charge_duration` VALUES ('62', '339', '299', 'monthly');
INSERT INTO `department_charge_duration` VALUES ('63', '340', '304', 'monthly');
INSERT INTO `department_charge_duration` VALUES ('64', '341', '304', 'monthly');
INSERT INTO `department_charge_duration` VALUES ('65', '348', '296', 'monthly');
INSERT INTO `department_charge_duration` VALUES ('66', '349', '324', 'monthly');
INSERT INTO `department_charge_duration` VALUES ('67', '350', '324', 'monthly');
INSERT INTO `department_charge_duration` VALUES ('68', '351', '324', 'monthly');
INSERT INTO `department_charge_duration` VALUES ('69', '352', '325', 'monthly');
INSERT INTO `department_charge_duration` VALUES ('70', '353', '325', 'monthly');
INSERT INTO `department_charge_duration` VALUES ('71', '354', '325', 'monthly');
INSERT INTO `department_charge_duration` VALUES ('72', '355', '296', 'monthly');
INSERT INTO `department_charge_duration` VALUES ('73', '356', '296', 'monthly');
INSERT INTO `department_charge_duration` VALUES ('74', '357', '299', 'monthly');
INSERT INTO `department_charge_duration` VALUES ('75', '358', '299', 'monthly');
INSERT INTO `department_charge_duration` VALUES ('76', '359', '296', 'monthly');
INSERT INTO `department_charge_duration` VALUES ('77', '360', '296', 'monthly');
INSERT INTO `department_charge_duration` VALUES ('78', '361', '299', 'monthly');
INSERT INTO `department_charge_duration` VALUES ('79', '364', '296', 'monthly');
INSERT INTO `department_charge_duration` VALUES ('80', '365', '296', 'monthly');
INSERT INTO `department_charge_duration` VALUES ('81', '366', '296', 'monthly');
INSERT INTO `department_charge_duration` VALUES ('82', '367', '296', 'monthly');
INSERT INTO `department_charge_duration` VALUES ('83', '368', '296', 'monthly');
INSERT INTO `department_charge_duration` VALUES ('84', '369', '296', 'monthly');
INSERT INTO `department_charge_duration` VALUES ('85', '370', '327', 'monthly');
INSERT INTO `department_charge_duration` VALUES ('86', '371', '327', 'monthly');
INSERT INTO `department_charge_duration` VALUES ('87', '372', '314', 'monthly');
INSERT INTO `department_charge_duration` VALUES ('88', '373', '328', 'monthly');
INSERT INTO `department_charge_duration` VALUES ('89', '374', '328', 'monthly');
INSERT INTO `department_charge_duration` VALUES ('90', '375', '328', 'monthly');
INSERT INTO `department_charge_duration` VALUES ('91', '376', '328', 'monthly');
INSERT INTO `department_charge_duration` VALUES ('92', '377', '296', 'monthly');
INSERT INTO `department_charge_duration` VALUES ('93', '378', '296', 'monthly');
INSERT INTO `department_charge_duration` VALUES ('94', '379', '296', 'monthly');

-- ----------------------------
-- Table structure for `department_ordered_products`
-- ----------------------------
DROP TABLE IF EXISTS `department_ordered_products`;
CREATE TABLE `department_ordered_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_id` int(11) NOT NULL,
  `charge_duration` enum('pay-for-time','daily','monthly') NOT NULL COMMENT 'è®¡è´¹å‘¨æœŸ pay-for-time:æŒ‰é‡,dailyï¼šåŒ…å¤©,monthlyï¼šåŒ…æœˆ',
  `product_id` int(11) NOT NULL COMMENT 'äº§å“ID',
  `quantity` float(11,0) NOT NULL DEFAULT '0' COMMENT 'æ•°é‡ï¼šå¯¹åŒ…æœˆæˆ–åŒ…å¤©çš„æ–¹å¼æ¥è¯´æ˜¯æ€»æ•°ï¼›å¯¹æŒ‰é‡çš„æ–¹å¼æ¥è¯´æ˜¯ä¸Šé™',
  `company_id` int(11) NOT NULL COMMENT 'å…¬å¸ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=437 DEFAULT CHARSET=utf8 COMMENT='éƒ¨é—¨å®šè´­çš„ä¸šåŠ¡è¡¨ï¼Œä¸»è¦ç”¨æ¥å­˜å‚¨éƒ¨é—¨çš„åŒ…å¤©';

-- ----------------------------
-- Records of department_ordered_products
-- ----------------------------
INSERT INTO `department_ordered_products` VALUES ('23', '222', 'daily', '1', '20', '222');
INSERT INTO `department_ordered_products` VALUES ('107', '1', 'monthly', '58', '2', '1');
INSERT INTO `department_ordered_products` VALUES ('106', '1', 'daily', '59', '500', '1');
INSERT INTO `department_ordered_products` VALUES ('95', '2', 'monthly', '58', '1', '1');
INSERT INTO `department_ordered_products` VALUES ('24', '222', 'pay-for-time', '2', '10', '222');
INSERT INTO `department_ordered_products` VALUES ('105', '1', 'monthly', '20', '2', '1');
INSERT INTO `department_ordered_products` VALUES ('11', '123', 'pay-for-time', '3', '500', '1');
INSERT INTO `department_ordered_products` VALUES ('104', '1', 'monthly', '4', '6', '1');
INSERT INTO `department_ordered_products` VALUES ('94', '2', 'pay-for-time', '59', '500', '1');
INSERT INTO `department_ordered_products` VALUES ('15', '3', 'pay-for-time', '20', '111', '1');
INSERT INTO `department_ordered_products` VALUES ('16', '123', 'pay-for-time', '20', '111', '1');
INSERT INTO `department_ordered_products` VALUES ('25', '222', 'daily', '1', '20', '222');
INSERT INTO `department_ordered_products` VALUES ('26', '222', 'pay-for-time', '2', '10', '222');
INSERT INTO `department_ordered_products` VALUES ('27', '222', 'daily', '1', '20', '222');
INSERT INTO `department_ordered_products` VALUES ('28', '222', 'pay-for-time', '2', '10', '222');
INSERT INTO `department_ordered_products` VALUES ('103', '1', 'daily', '1', '40', '1');
INSERT INTO `department_ordered_products` VALUES ('102', '1', 'daily', '3', '10', '1');
INSERT INTO `department_ordered_products` VALUES ('67', '160', 'monthly', '58', '20', '162');
INSERT INTO `department_ordered_products` VALUES ('66', '160', 'monthly', '59', '80000', '162');
INSERT INTO `department_ordered_products` VALUES ('65', '160', 'monthly', '20', '5', '162');
INSERT INTO `department_ordered_products` VALUES ('64', '160', 'monthly', '3', '500', '162');
INSERT INTO `department_ordered_products` VALUES ('63', '160', 'monthly', '4', '50', '162');
INSERT INTO `department_ordered_products` VALUES ('62', '160', 'monthly', '1', '800', '162');
INSERT INTO `department_ordered_products` VALUES ('93', '2', 'monthly', '20', '2', '1');
INSERT INTO `department_ordered_products` VALUES ('92', '2', 'pay-for-time', '1', '3', '1');
INSERT INTO `department_ordered_products` VALUES ('91', '2', 'monthly', '4', '5', '1');
INSERT INTO `department_ordered_products` VALUES ('90', '2', 'pay-for-time', '3', '0', '1');
INSERT INTO `department_ordered_products` VALUES ('173', '285', 'monthly', '58', '22', '225');
INSERT INTO `department_ordered_products` VALUES ('172', '285', 'monthly', '96', '150', '225');
INSERT INTO `department_ordered_products` VALUES ('171', '285', 'monthly', '79', '11500', '225');
INSERT INTO `department_ordered_products` VALUES ('170', '285', 'monthly', '20', '0', '225');
INSERT INTO `department_ordered_products` VALUES ('169', '285', 'monthly', '92', '11500', '225');
INSERT INTO `department_ordered_products` VALUES ('168', '285', 'monthly', '4', '24', '225');
INSERT INTO `department_ordered_products` VALUES ('174', '286', 'monthly', '4', '1', '226');
INSERT INTO `department_ordered_products` VALUES ('175', '286', 'monthly', '92', '800', '226');
INSERT INTO `department_ordered_products` VALUES ('176', '286', 'monthly', '20', '0', '226');
INSERT INTO `department_ordered_products` VALUES ('177', '286', 'monthly', '79', '800', '226');
INSERT INTO `department_ordered_products` VALUES ('178', '286', 'monthly', '96', '8', '226');
INSERT INTO `department_ordered_products` VALUES ('179', '286', 'monthly', '58', '0', '226');
INSERT INTO `department_ordered_products` VALUES ('180', '287', 'monthly', '96', '44', '229');
INSERT INTO `department_ordered_products` VALUES ('181', '287', 'monthly', '92', '372', '229');
INSERT INTO `department_ordered_products` VALUES ('182', '287', 'monthly', '79', '344', '229');
INSERT INTO `department_ordered_products` VALUES ('183', '287', 'monthly', '4', '0', '229');
INSERT INTO `department_ordered_products` VALUES ('184', '287', 'monthly', '20', '0', '229');
INSERT INTO `department_ordered_products` VALUES ('185', '287', 'monthly', '58', '0', '229');
INSERT INTO `department_ordered_products` VALUES ('221', '289', 'monthly', '58', '0', '231');
INSERT INTO `department_ordered_products` VALUES ('220', '289', 'monthly', '20', '0', '231');
INSERT INTO `department_ordered_products` VALUES ('219', '289', 'monthly', '4', '0', '231');
INSERT INTO `department_ordered_products` VALUES ('218', '289', 'monthly', '3', '30', '231');
INSERT INTO `department_ordered_products` VALUES ('217', '289', 'monthly', '2', '30', '231');
INSERT INTO `department_ordered_products` VALUES ('216', '289', 'monthly', '1', '30', '231');
INSERT INTO `department_ordered_products` VALUES ('222', '290', 'monthly', '1', '10', '231');
INSERT INTO `department_ordered_products` VALUES ('223', '290', 'monthly', '2', '10', '231');
INSERT INTO `department_ordered_products` VALUES ('224', '290', 'monthly', '3', '10', '231');
INSERT INTO `department_ordered_products` VALUES ('225', '290', 'monthly', '4', '0', '231');
INSERT INTO `department_ordered_products` VALUES ('226', '290', 'monthly', '20', '0', '231');
INSERT INTO `department_ordered_products` VALUES ('227', '290', 'monthly', '58', '0', '231');
INSERT INTO `department_ordered_products` VALUES ('411', '329', 'monthly', '58', '5', '287');
INSERT INTO `department_ordered_products` VALUES ('410', '329', 'monthly', '4', '0', '287');
INSERT INTO `department_ordered_products` VALUES ('409', '329', 'monthly', '3', '28', '287');
INSERT INTO `department_ordered_products` VALUES ('408', '329', 'monthly', '100', '226', '287');
INSERT INTO `department_ordered_products` VALUES ('407', '329', 'monthly', '1', '8', '287');
INSERT INTO `department_ordered_products` VALUES ('402', '331', 'monthly', '58', '4', '289');
INSERT INTO `department_ordered_products` VALUES ('401', '331', 'monthly', '4', '0', '289');
INSERT INTO `department_ordered_products` VALUES ('400', '331', 'monthly', '3', '20', '289');
INSERT INTO `department_ordered_products` VALUES ('399', '331', 'monthly', '2', '288', '289');
INSERT INTO `department_ordered_products` VALUES ('398', '331', 'monthly', '1', '2', '289');
INSERT INTO `department_ordered_products` VALUES ('426', '348', 'monthly', '58', '0', '296');
INSERT INTO `department_ordered_products` VALUES ('425', '348', 'monthly', '4', '0', '296');
INSERT INTO `department_ordered_products` VALUES ('424', '348', 'monthly', '3', '0', '296');
INSERT INTO `department_ordered_products` VALUES ('423', '348', 'monthly', '2', '0', '296');
INSERT INTO `department_ordered_products` VALUES ('422', '348', 'monthly', '1', '0', '296');
INSERT INTO `department_ordered_products` VALUES ('357', '339', 'monthly', '58', '4', '299');
INSERT INTO `department_ordered_products` VALUES ('356', '339', 'monthly', '4', '0', '299');
INSERT INTO `department_ordered_products` VALUES ('355', '339', 'monthly', '3', '30', '299');
INSERT INTO `department_ordered_products` VALUES ('354', '339', 'monthly', '2', '285', '299');
INSERT INTO `department_ordered_products` VALUES ('353', '339', 'monthly', '1', '7', '299');
INSERT INTO `department_ordered_products` VALUES ('436', '373', 'monthly', '58', '4', '328');
INSERT INTO `department_ordered_products` VALUES ('406', '222', 'pay-for-time', '2', '10', '222');
INSERT INTO `department_ordered_products` VALUES ('405', '222', 'daily', '1', '20', '222');
INSERT INTO `department_ordered_products` VALUES ('404', '222', 'pay-for-time', '2', '10', '222');
INSERT INTO `department_ordered_products` VALUES ('403', '222', 'daily', '1', '20', '222');
INSERT INTO `department_ordered_products` VALUES ('435', '373', 'monthly', '4', '0', '328');
INSERT INTO `department_ordered_products` VALUES ('434', '373', 'monthly', '3', '50', '328');
INSERT INTO `department_ordered_products` VALUES ('433', '373', 'monthly', '2', '400', '328');
INSERT INTO `department_ordered_products` VALUES ('432', '373', 'monthly', '1', '7', '328');

-- ----------------------------
-- Table structure for `dept_res_order_cfg`
-- ----------------------------
DROP TABLE IF EXISTS `dept_res_order_cfg`;
CREATE TABLE `dept_res_order_cfg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_id` varchar(25) DEFAULT NULL COMMENT '部门ID',
  `company_id` varchar(25) DEFAULT NULL COMMENT '公司ID',
  `max_instances` int(11) DEFAULT '0' COMMENT '最大云主机数量',
  `max_volumes` int(11) DEFAULT '0' COMMENT '最大存储数量',
  `max_snapshots` int(11) DEFAULT '0' COMMENT '最大快照数量',
  `min_ebs_size` int(11) DEFAULT '0' COMMENT '最小ebs启动存储大小',
  `max_ebs_size` int(11) DEFAULT '0' COMMENT '最大ebs启动存储大小',
  `max_security_groups` int(11) DEFAULT '0' COMMENT '最大安全规则组（虚拟网络防火墙）数量',
  `max_keypairs` int(11) DEFAULT '0' COMMENT '最大密钥数量',
  `ecu_mon_count` float(11,0) DEFAULT '0' COMMENT 'ECU产品(ecu)包月数量',
  `vol_mon_size` int(11) DEFAULT '0' COMMENT '存储产品(volume)包月大小',
  `snap_mon_size` int(11) DEFAULT '0' COMMENT '快照产品(snapshot)包月大小',
  `ha_mon_count` int(11) DEFAULT '0' COMMENT 'HA(主机保护)产品(ha)包月数量',
  `elb_mon_count` int(11) DEFAULT '0' COMMENT 'Elb产品(elb)包天数量',
  `ip_mon_count` int(11) DEFAULT '0' COMMENT 'IP产品(ip)包月数量',
  `ecu_day_count` float(11,0) DEFAULT '0' COMMENT 'ECU产品(ecu)包天数量',
  `vol_day_size` int(11) DEFAULT '0' COMMENT '存储产品(volume)包天小大',
  `snap_day_size` int(11) DEFAULT '0' COMMENT '快照产品(snapshot)包天小大',
  `ecu_hour_count` float(11,0) DEFAULT '0' COMMENT 'ECU产品(ecu)计时数量',
  `vol_hour_size` int(11) DEFAULT '0' COMMENT '存储产品(volume)计时小大',
  `snap_hour_size` int(11) DEFAULT '0' COMMENT '快照产品(snapshot)计时大小',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dept_res_order_cfg
-- ----------------------------
INSERT INTO `dept_res_order_cfg` VALUES ('86', '331', '289', '5', '8', '5', '1', '500', '0', '0', '2', '288', '20', '4', '0', '0', '0', '0', '0', '0', '0', '0', null, null);
INSERT INTO `dept_res_order_cfg` VALUES ('87', '339', '299', '0', '0', '0', '1', '500', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, null);
INSERT INTO `dept_res_order_cfg` VALUES ('88', '473', '324', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, null);
INSERT INTO `dept_res_order_cfg` VALUES ('89', '480', '368', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, null);
INSERT INTO `dept_res_order_cfg` VALUES ('90', '481', '368', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, null);
INSERT INTO `dept_res_order_cfg` VALUES ('91', '497', '370', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, null);
INSERT INTO `dept_res_order_cfg` VALUES ('92', '498', '370', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, null);
INSERT INTO `dept_res_order_cfg` VALUES ('93', '445', '350', '3', '5', '3', '1', '500', '0', '0', '4', '0', '226', '2', '0', '0', '0', '0', '0', '0', '0', '0', null, null);
INSERT INTO `dept_res_order_cfg` VALUES ('94', '455', '362', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, null);
INSERT INTO `dept_res_order_cfg` VALUES ('95', '453', '362', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, null);
INSERT INTO `dept_res_order_cfg` VALUES ('96', '456', '362', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, null);
INSERT INTO `dept_res_order_cfg` VALUES ('97', '449', '362', '5', '5', '5', '1', '500', '0', '0', '80', '0', '500', '5', '0', '0', '0', '0', '0', '0', '0', '0', null, null);
INSERT INTO `dept_res_order_cfg` VALUES ('98', '450', '362', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, null);
INSERT INTO `dept_res_order_cfg` VALUES ('99', '457', '362', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, null);
INSERT INTO `dept_res_order_cfg` VALUES ('100', '472', '364', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, null);
INSERT INTO `dept_res_order_cfg` VALUES ('101', '462', '355', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, null);
INSERT INTO `dept_res_order_cfg` VALUES ('102', '429', '355', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, null);
INSERT INTO `dept_res_order_cfg` VALUES ('103', '474', '356', '6', '10', '6', '1', '500', '0', '0', '20', '0', '300', '2', '0', '0', '0', '0', '0', '0', '0', '0', null, null);

-- ----------------------------
-- Table structure for `elb_operation_logs`
-- ----------------------------
DROP TABLE IF EXISTS `elb_operation_logs`;
CREATE TABLE `elb_operation_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elb_id` int(11) DEFAULT NULL COMMENT 'å…ƒæ•°æ®åº“elbè¡¨ä¸­çš„ä¸»é”®id.',
  `elb_sid` varchar(30) DEFAULT NULL COMMENT 'elbçš„äº‘åŽå°å­—ç¬¦ID',
  `operation` enum('add','delete') DEFAULT NULL COMMENT 'å¯¹elbæ‰€æ‰§è¡Œçš„æ“ä½œï¼Œç›®å‰åªè®°å½•add,deleteæ“ä½œï¼Œå…¶ä»–çš„è¯·è§å…¬å¸æ—¥å¿—ã€‚æ­¤è¡¨åœ¨ç”¨æ¥è®¡ç®—elbèµ„è´¹ã€‚',
  `total_size_of_department` int(11) DEFAULT NULL,
  `total_size_of_company` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `region_id` int(11) DEFAULT NULL,
  `operation_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='elbæ“ä½œæ—¥å¿—è¡¨';

-- ----------------------------
-- Records of elb_operation_logs
-- ----------------------------
INSERT INTO `elb_operation_logs` VALUES ('1', '1', 'e-44FA0540', 'add', '10', '1', '1', '1', '1', '2011-01-01 19:40:20');
INSERT INTO `elb_operation_logs` VALUES ('2', '1', 'abstest', 'add', '2', '2', '2', '2', '1', '2011-01-01 13:40:20');
INSERT INTO `elb_operation_logs` VALUES ('3', '1', 'abstest', 'delete', '3', '3', '3', '1', '1', '2011-01-01 19:40:20');
INSERT INTO `elb_operation_logs` VALUES ('4', '1', '1', 'add', '4', '4', '3', '3', '1', '2011-01-01 13:40:20');
INSERT INTO `elb_operation_logs` VALUES ('5', null, null, null, '5', '5', '3', '3', '1', '2011-01-01 20:40:20');
INSERT INTO `elb_operation_logs` VALUES ('6', '1', '1', 'add', '6', '6', '1', '1', '2', '2011-01-01 19:35:20');
INSERT INTO `elb_operation_logs` VALUES ('7', '1', '1', 'add', '7', '7', '1', '1', '1', '2011-01-01 19:45:20');
INSERT INTO `elb_operation_logs` VALUES ('8', '1', '1', 'add', '4', '2', '3', '1', '1', '2011-01-01 19:40:10');
INSERT INTO `elb_operation_logs` VALUES ('9', '1', 'e-44FA0540', 'add', '100', '200', '123', '1', '1', '2011-09-19 14:20:25');
INSERT INTO `elb_operation_logs` VALUES ('10', '43', 'i-386F06D2', 'add', '8', '201', '1', '1', '1', '2011-10-12 11:41:02');
INSERT INTO `elb_operation_logs` VALUES ('11', '51', 'i-3DBB0797', 'delete', '7', '200', '1', '1', '1', '2011-10-12 16:08:20');
INSERT INTO `elb_operation_logs` VALUES ('12', '50', 'i-3D1B0732', 'delete', '6', '199', '1', '1', '1', '2011-10-17 10:01:04');
INSERT INTO `elb_operation_logs` VALUES ('13', '53', 'i-4470082E', 'delete', '5', '198', '1', '1', '1', '2011-10-17 11:52:31');
INSERT INTO `elb_operation_logs` VALUES ('14', '54', 'i-33D90738', 'add', '6', '199', '1', '1', '1', '2011-10-17 14:12:23');
INSERT INTO `elb_operation_logs` VALUES ('15', '54', 'i-33D90738', 'delete', '5', '198', '1', '1', '1', '2011-10-18 13:50:13');
INSERT INTO `elb_operation_logs` VALUES ('16', '52', 'i-4A4E08D1', 'delete', '4', '197', '1', '1', '1', '2011-10-19 16:12:02');
INSERT INTO `elb_operation_logs` VALUES ('17', '52', 'i-4857081C', 'add', '5', '198', '1', '1', '1', '2011-10-19 16:28:34');
INSERT INTO `elb_operation_logs` VALUES ('18', '52', 'i-4857081C', 'delete', '4', '197', '1', '1', '1', '2011-10-19 16:32:52');
INSERT INTO `elb_operation_logs` VALUES ('19', '52', 'i-3F4507E4', 'add', '5', '198', '1', '1', '1', '2011-10-19 17:37:18');

-- ----------------------------
-- Table structure for `exp_trans_mark`
-- ----------------------------
DROP TABLE IF EXISTS `exp_trans_mark`;
CREATE TABLE `exp_trans_mark` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'å¯¼å‡ºxentopã€ä¸Šä¼ æ–‡ä»¶çš„æ ‡è®°ç”¨è¡¨ã€‚',
  `unique_mark` varchar(50) NOT NULL,
  `file_name` varchar(50) NOT NULL,
  `exp_time` datetime NOT NULL,
  `upload` int(1) NOT NULL DEFAULT '0',
  `upload_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mark_unique` (`unique_mark`)
) ENGINE=MyISAM AUTO_INCREMENT=1271 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of exp_trans_mark
-- ----------------------------
INSERT INTO `exp_trans_mark` VALUES ('7', '1317009600000-1317011400000', 'billing_1317009600000_1317011400000_1_468.gz', '2011-09-26 12:49:08', '1', '2011-09-26 12:49:09');
INSERT INTO `exp_trans_mark` VALUES ('8', '1317011400000-1317013200000', 'billing_1317011400000_1317013200000_1_905.gz', '2011-09-26 13:00:08', '1', '2011-09-26 13:00:08');
INSERT INTO `exp_trans_mark` VALUES ('9', '1317013200000-1317015000000', 'billing_1317013200000_1317015000000_1_50.gz', '2011-09-26 13:30:08', '1', '2011-09-26 13:30:08');
INSERT INTO `exp_trans_mark` VALUES ('10', '1317015000000-1317016800000', 'billing_1317015000000_1317016800000_1_473.gz', '2011-09-26 14:00:08', '1', '2011-09-26 14:00:08');
INSERT INTO `exp_trans_mark` VALUES ('11', '1317016800000-1317018600000', 'billing_1317016800000_1317018600000_1_13.gz', '2011-09-26 14:30:08', '1', '2011-09-26 14:30:08');
INSERT INTO `exp_trans_mark` VALUES ('12', '1317018600000-1317020400000', 'billing_1317018600000_1317020400000_1_850.gz', '2011-09-26 15:00:08', '1', '2011-09-26 15:00:08');
INSERT INTO `exp_trans_mark` VALUES ('13', '1317020400000-1317022200000', 'billing_1317020400000_1317022200000_1_913.gz', '2011-09-26 15:40:09', '1', '2011-09-26 15:40:09');
INSERT INTO `exp_trans_mark` VALUES ('14', '1317022200000-1317024000000', 'billing_1317022200000_1317024000000_1_557.gz', '2011-09-26 16:05:08', '1', '2011-09-26 16:05:08');
INSERT INTO `exp_trans_mark` VALUES ('17', '1317387600000-1317389400000', 'billing_1317387600000_1317389400000_1_837.gz', '2011-09-26 17:37:00', '1', '2011-09-26 17:37:00');
INSERT INTO `exp_trans_mark` VALUES ('18', '1317385800000-1317387600000', 'billing_1317385800000_1317387600000_1_373.gz', '2011-09-26 17:37:16', '1', '2011-09-26 17:37:16');
INSERT INTO `exp_trans_mark` VALUES ('20', '1317096000000-1317097800000', 'billing_1317096000000_1317097800000_1_116.gz', '2011-09-27 12:59:15', '1', '2011-09-27 12:59:15');
INSERT INTO `exp_trans_mark` VALUES ('21', '1317177000000-1317178800000', 'billing_1317177000000_1317178800000_1_910.gz', '2011-09-28 11:13:54', '1', '2011-09-28 11:13:55');
INSERT INTO `exp_trans_mark` VALUES ('22', '1317182400000-1317184200000', 'billing_1317182400000_1317184200000_1_850.gz', '2011-09-28 13:01:34', '1', '2011-09-28 13:01:34');
INSERT INTO `exp_trans_mark` VALUES ('25', '1317191400000-1317193200000', 'billing_1317191400000_1317193200000_1_403.gz', '2011-10-17 11:56:03', '1', '2011-10-17 11:56:03');
INSERT INTO `exp_trans_mark` VALUES ('26', '1319014800000-1319016600000', 'billing_1319014800000_1319016600000_1_135.gz', '2011-10-19 17:35:40', '1', '2011-10-19 17:35:40');
INSERT INTO `exp_trans_mark` VALUES ('27', '1319097600000-1319099400000', 'billing_1319097600000_1319099400000_1_984.gz', '2011-10-20 16:38:53', '1', '2011-10-20 16:38:53');
INSERT INTO `exp_trans_mark` VALUES ('28', '1319099400000-1319101200000', 'billing_1319099400000_1319101200000_1_794.gz', '2011-10-20 16:58:53', '1', '2011-10-20 16:58:53');
INSERT INTO `exp_trans_mark` VALUES ('29', '1319101200000-1319103000000', 'billing_1319101200000_1319103000000_1_52.gz', '2011-10-20 17:28:52', '1', '2011-10-20 17:28:53');
INSERT INTO `exp_trans_mark` VALUES ('30', '1319103000000-1319104800000', 'billing_1319103000000_1319104800000_1_96.gz', '2011-10-20 17:58:53', '1', '2011-10-20 17:58:53');
INSERT INTO `exp_trans_mark` VALUES ('31', '1319104800000-1319106600000', 'billing_1319104800000_1319106600000_1_907.gz', '2011-10-20 18:28:53', '1', '2011-10-20 18:28:53');
INSERT INTO `exp_trans_mark` VALUES ('32', '1319106600000-1319108400000', 'billing_1319106600000_1319108400000_1_456.gz', '2011-10-20 18:58:53', '1', '2011-10-20 18:58:53');
INSERT INTO `exp_trans_mark` VALUES ('33', '1319108400000-1319110200000', 'billing_1319108400000_1319110200000_1_97.gz', '2011-10-20 19:28:53', '1', '2011-10-20 19:28:53');
INSERT INTO `exp_trans_mark` VALUES ('34', '1319110200000-1319112000000', 'billing_1319110200000_1319112000000_1_543.gz', '2011-10-20 19:58:53', '1', '2011-10-20 19:58:53');
INSERT INTO `exp_trans_mark` VALUES ('35', '1319112000000-1319113800000', 'billing_1319112000000_1319113800000_1_376.gz', '2011-10-20 20:28:53', '1', '2011-10-20 20:28:53');
INSERT INTO `exp_trans_mark` VALUES ('36', '1319113800000-1319115600000', 'billing_1319113800000_1319115600000_1_740.gz', '2011-10-20 20:58:53', '1', '2011-10-20 20:58:53');
INSERT INTO `exp_trans_mark` VALUES ('37', '1319115600000-1319117400000', 'billing_1319115600000_1319117400000_1_831.gz', '2011-10-20 21:28:53', '1', '2011-10-20 21:28:53');
INSERT INTO `exp_trans_mark` VALUES ('38', '1319117400000-1319119200000', 'billing_1319117400000_1319119200000_1_965.gz', '2011-10-20 21:58:53', '1', '2011-10-20 21:58:53');
INSERT INTO `exp_trans_mark` VALUES ('39', '1319119200000-1319121000000', 'billing_1319119200000_1319121000000_1_643.gz', '2011-10-20 22:28:52', '1', '2011-10-20 22:28:52');
INSERT INTO `exp_trans_mark` VALUES ('40', '1319121000000-1319122800000', 'billing_1319121000000_1319122800000_1_127.gz', '2011-10-20 22:58:53', '1', '2011-10-20 22:58:53');
INSERT INTO `exp_trans_mark` VALUES ('41', '1319122800000-1319124600000', 'billing_1319122800000_1319124600000_1_539.gz', '2011-10-20 23:28:53', '1', '2011-10-20 23:28:53');
INSERT INTO `exp_trans_mark` VALUES ('42', '1319124600000-1319126400000', 'billing_1319124600000_1319126400000_1_360.gz', '2011-10-20 23:58:52', '1', '2011-10-20 23:58:53');
INSERT INTO `exp_trans_mark` VALUES ('43', '1319126400000-1319128200000', 'billing_1319126400000_1319128200000_1_44.gz', '2011-10-21 00:28:53', '1', '2011-10-21 00:28:53');
INSERT INTO `exp_trans_mark` VALUES ('44', '1319128200000-1319130000000', 'billing_1319128200000_1319130000000_1_251.gz', '2011-10-21 00:58:53', '1', '2011-10-21 00:58:53');
INSERT INTO `exp_trans_mark` VALUES ('45', '1319130000000-1319131800000', 'billing_1319130000000_1319131800000_1_866.gz', '2011-10-21 01:28:53', '1', '2011-10-21 01:28:53');
INSERT INTO `exp_trans_mark` VALUES ('46', '1319131800000-1319133600000', 'billing_1319131800000_1319133600000_1_743.gz', '2011-10-21 01:58:53', '1', '2011-10-21 01:58:54');
INSERT INTO `exp_trans_mark` VALUES ('47', '1319133600000-1319135400000', 'billing_1319133600000_1319135400000_1_333.gz', '2011-10-21 02:28:53', '1', '2011-10-21 02:28:53');
INSERT INTO `exp_trans_mark` VALUES ('48', '1319135400000-1319137200000', 'billing_1319135400000_1319137200000_1_326.gz', '2011-10-21 02:58:52', '1', '2011-10-21 02:58:52');
INSERT INTO `exp_trans_mark` VALUES ('49', '1319137200000-1319139000000', 'billing_1319137200000_1319139000000_1_172.gz', '2011-10-21 03:28:53', '1', '2011-10-21 03:28:53');
INSERT INTO `exp_trans_mark` VALUES ('50', '1319139000000-1319140800000', 'billing_1319139000000_1319140800000_1_788.gz', '2011-10-21 03:58:53', '1', '2011-10-21 03:58:53');
INSERT INTO `exp_trans_mark` VALUES ('51', '1319140800000-1319142600000', 'billing_1319140800000_1319142600000_1_828.gz', '2011-10-21 04:28:53', '1', '2011-10-21 04:28:53');
INSERT INTO `exp_trans_mark` VALUES ('52', '1319142600000-1319144400000', 'billing_1319142600000_1319144400000_1_182.gz', '2011-10-21 04:58:52', '1', '2011-10-21 04:58:53');
INSERT INTO `exp_trans_mark` VALUES ('53', '1319144400000-1319146200000', 'billing_1319144400000_1319146200000_1_630.gz', '2011-10-21 05:28:53', '1', '2011-10-21 05:28:53');
INSERT INTO `exp_trans_mark` VALUES ('54', '1319146200000-1319148000000', 'billing_1319146200000_1319148000000_1_975.gz', '2011-10-21 05:58:53', '1', '2011-10-21 05:58:53');
INSERT INTO `exp_trans_mark` VALUES ('55', '1319148000000-1319149800000', 'billing_1319148000000_1319149800000_1_885.gz', '2011-10-21 06:28:52', '1', '2011-10-21 06:28:53');
INSERT INTO `exp_trans_mark` VALUES ('56', '1319149800000-1319151600000', 'billing_1319149800000_1319151600000_1_626.gz', '2011-10-21 06:58:53', '1', '2011-10-21 06:58:53');
INSERT INTO `exp_trans_mark` VALUES ('57', '1319151600000-1319153400000', 'billing_1319151600000_1319153400000_1_215.gz', '2011-10-21 07:28:53', '1', '2011-10-21 07:28:53');
INSERT INTO `exp_trans_mark` VALUES ('58', '1319153400000-1319155200000', 'billing_1319153400000_1319155200000_1_451.gz', '2011-10-21 07:58:53', '1', '2011-10-21 07:58:53');
INSERT INTO `exp_trans_mark` VALUES ('59', '1319155200000-1319157000000', 'billing_1319155200000_1319157000000_1_642.gz', '2011-10-21 08:28:53', '1', '2011-10-21 08:28:53');
INSERT INTO `exp_trans_mark` VALUES ('60', '1319157000000-1319158800000', 'billing_1319157000000_1319158800000_1_528.gz', '2011-10-21 08:58:53', '1', '2011-10-21 08:58:53');
INSERT INTO `exp_trans_mark` VALUES ('61', '1319158800000-1319160600000', 'billing_1319158800000_1319160600000_1_764.gz', '2011-10-21 09:28:53', '1', '2011-10-21 09:28:53');
INSERT INTO `exp_trans_mark` VALUES ('62', '1319160600000-1319162400000', 'billing_1319160600000_1319162400000_1_1.gz', '2011-10-21 09:58:53', '1', '2011-10-21 09:58:53');
INSERT INTO `exp_trans_mark` VALUES ('63', '1319162400000-1319164200000', 'billing_1319162400000_1319164200000_1_716.gz', '2011-10-21 10:28:53', '1', '2011-10-21 10:28:53');
INSERT INTO `exp_trans_mark` VALUES ('64', '1319164200000-1319166000000', 'billing_1319164200000_1319166000000_1_499.gz', '2011-10-21 10:58:53', '1', '2011-10-21 10:58:53');
INSERT INTO `exp_trans_mark` VALUES ('65', '1319166000000-1319167800000', 'billing_1319166000000_1319167800000_1_960.gz', '2011-10-21 11:28:53', '1', '2011-10-21 11:28:53');
INSERT INTO `exp_trans_mark` VALUES ('66', '1319167800000-1319169600000', 'billing_1319167800000_1319169600000_1_553.gz', '2011-10-21 11:58:53', '1', '2011-10-21 11:58:53');
INSERT INTO `exp_trans_mark` VALUES ('67', '1319169600000-1319171400000', 'billing_1319169600000_1319171400000_1_341.gz', '2011-10-21 12:28:53', '1', '2011-10-21 12:28:53');
INSERT INTO `exp_trans_mark` VALUES ('68', '1319171400000-1319173200000', 'billing_1319171400000_1319173200000_1_108.gz', '2011-10-21 12:58:53', '1', '2011-10-21 12:58:53');
INSERT INTO `exp_trans_mark` VALUES ('69', '1319173200000-1319175000000', 'billing_1319173200000_1319175000000_1_677.gz', '2011-10-21 13:28:53', '1', '2011-10-21 13:28:54');
INSERT INTO `exp_trans_mark` VALUES ('70', '1319175000000-1319176800000', 'billing_1319175000000_1319176800000_1_18.gz', '2011-10-21 13:58:53', '1', '2011-10-21 13:58:53');
INSERT INTO `exp_trans_mark` VALUES ('71', '1319176800000-1319178600000', 'billing_1319176800000_1319178600000_1_845.gz', '2011-10-21 14:28:53', '1', '2011-10-21 14:28:53');
INSERT INTO `exp_trans_mark` VALUES ('72', '1319851800000-1319853600000', 'billing_1319851800000_1319853600000_1_727.gz', '2011-10-29 09:58:53', '1', '2011-10-29 09:58:53');
INSERT INTO `exp_trans_mark` VALUES ('73', '1319853600000-1319855400000', 'billing_1319853600000_1319855400000_1_799.gz', '2011-10-29 10:28:52', '1', '2011-10-29 10:28:53');
INSERT INTO `exp_trans_mark` VALUES ('74', '1319855400000-1319857200000', 'billing_1319855400000_1319857200000_1_529.gz', '2011-10-29 10:58:53', '1', '2011-10-29 10:58:53');
INSERT INTO `exp_trans_mark` VALUES ('75', '1319857200000-1319859000000', 'billing_1319857200000_1319859000000_1_53.gz', '2011-10-29 11:28:53', '1', '2011-10-29 11:28:53');
INSERT INTO `exp_trans_mark` VALUES ('76', '1319859000000-1319860800000', 'billing_1319859000000_1319860800000_1_581.gz', '2011-10-29 11:58:53', '1', '2011-10-29 11:58:53');
INSERT INTO `exp_trans_mark` VALUES ('77', '1319860800000-1319862600000', 'billing_1319860800000_1319862600000_1_563.gz', '2011-10-29 12:28:52', '1', '2011-10-29 12:28:53');
INSERT INTO `exp_trans_mark` VALUES ('78', '1319862600000-1319864400000', 'billing_1319862600000_1319864400000_1_787.gz', '2011-10-29 12:58:53', '1', '2011-10-29 12:58:53');
INSERT INTO `exp_trans_mark` VALUES ('79', '1319864400000-1319866200000', 'billing_1319864400000_1319866200000_1_248.gz', '2011-10-29 13:28:53', '1', '2011-10-29 13:28:53');
INSERT INTO `exp_trans_mark` VALUES ('80', '1319866200000-1319868000000', 'billing_1319866200000_1319868000000_1_14.gz', '2011-10-29 13:58:53', '1', '2011-10-29 13:58:53');
INSERT INTO `exp_trans_mark` VALUES ('81', '1319868000000-1319869800000', 'billing_1319868000000_1319869800000_1_205.gz', '2011-10-29 14:28:53', '1', '2011-10-29 14:28:53');
INSERT INTO `exp_trans_mark` VALUES ('82', '1319869800000-1319871600000', 'billing_1319869800000_1319871600000_1_910.gz', '2011-10-29 14:58:52', '1', '2011-10-29 14:58:52');
INSERT INTO `exp_trans_mark` VALUES ('83', '1319871600000-1319873400000', 'billing_1319871600000_1319873400000_1_686.gz', '2011-10-29 15:28:52', '1', '2011-10-29 15:28:53');
INSERT INTO `exp_trans_mark` VALUES ('84', '1319873400000-1319875200000', 'billing_1319873400000_1319875200000_1_790.gz', '2011-10-29 15:58:53', '1', '2011-10-29 15:58:53');
INSERT INTO `exp_trans_mark` VALUES ('85', '1319875200000-1319877000000', 'billing_1319875200000_1319877000000_1_657.gz', '2011-10-29 16:28:53', '1', '2011-10-29 16:28:53');
INSERT INTO `exp_trans_mark` VALUES ('86', '1319877000000-1319878800000', 'billing_1319877000000_1319878800000_1_389.gz', '2011-10-29 16:58:53', '1', '2011-10-29 16:58:53');
INSERT INTO `exp_trans_mark` VALUES ('87', '1319878800000-1319880600000', 'billing_1319878800000_1319880600000_1_887.gz', '2011-10-29 17:28:53', '1', '2011-10-29 17:28:53');
INSERT INTO `exp_trans_mark` VALUES ('88', '1319880600000-1319882400000', 'billing_1319880600000_1319882400000_1_653.gz', '2011-10-29 17:58:53', '1', '2011-10-29 17:58:53');
INSERT INTO `exp_trans_mark` VALUES ('89', '1319882400000-1319884200000', 'billing_1319882400000_1319884200000_1_647.gz', '2011-10-29 18:28:53', '1', '2011-10-29 18:28:53');
INSERT INTO `exp_trans_mark` VALUES ('90', '1319884200000-1319886000000', 'billing_1319884200000_1319886000000_1_194.gz', '2011-10-29 18:58:53', '1', '2011-10-29 18:58:53');
INSERT INTO `exp_trans_mark` VALUES ('91', '1319886000000-1319887800000', 'billing_1319886000000_1319887800000_1_302.gz', '2011-10-29 19:28:53', '1', '2011-10-29 19:28:53');
INSERT INTO `exp_trans_mark` VALUES ('92', '1319887800000-1319889600000', 'billing_1319887800000_1319889600000_1_226.gz', '2011-10-29 19:58:53', '1', '2011-10-29 19:58:53');
INSERT INTO `exp_trans_mark` VALUES ('93', '1319889600000-1319891400000', 'billing_1319889600000_1319891400000_1_61.gz', '2011-10-29 20:28:53', '1', '2011-10-29 20:28:53');
INSERT INTO `exp_trans_mark` VALUES ('94', '1319891400000-1319893200000', 'billing_1319891400000_1319893200000_1_396.gz', '2011-10-29 20:58:52', '1', '2011-10-29 20:58:52');
INSERT INTO `exp_trans_mark` VALUES ('95', '1319893200000-1319895000000', 'billing_1319893200000_1319895000000_1_942.gz', '2011-10-29 21:28:52', '1', '2011-10-29 21:28:52');
INSERT INTO `exp_trans_mark` VALUES ('96', '1319895000000-1319896800000', 'billing_1319895000000_1319896800000_1_81.gz', '2011-10-29 21:58:53', '1', '2011-10-29 21:58:53');
INSERT INTO `exp_trans_mark` VALUES ('97', '1319896800000-1319898600000', 'billing_1319896800000_1319898600000_1_286.gz', '2011-10-29 22:28:53', '1', '2011-10-29 22:28:53');
INSERT INTO `exp_trans_mark` VALUES ('98', '1319898600000-1319900400000', 'billing_1319898600000_1319900400000_1_649.gz', '2011-10-29 22:58:53', '1', '2011-10-29 22:58:53');
INSERT INTO `exp_trans_mark` VALUES ('99', '1319900400000-1319902200000', 'billing_1319900400000_1319902200000_1_15.gz', '2011-10-29 23:28:53', '1', '2011-10-29 23:28:53');
INSERT INTO `exp_trans_mark` VALUES ('100', '1319902200000-1319904000000', 'billing_1319902200000_1319904000000_1_257.gz', '2011-10-29 23:58:53', '1', '2011-10-29 23:58:53');
INSERT INTO `exp_trans_mark` VALUES ('101', '1319904000000-1319905800000', 'billing_1319904000000_1319905800000_1_804.gz', '2011-10-30 00:28:53', '1', '2011-10-30 00:28:53');
INSERT INTO `exp_trans_mark` VALUES ('102', '1319905800000-1319907600000', 'billing_1319905800000_1319907600000_1_955.gz', '2011-10-30 00:58:53', '1', '2011-10-30 00:58:53');
INSERT INTO `exp_trans_mark` VALUES ('103', '1319907600000-1319909400000', 'billing_1319907600000_1319909400000_1_600.gz', '2011-10-30 01:28:53', '1', '2011-10-30 01:28:53');
INSERT INTO `exp_trans_mark` VALUES ('104', '1319909400000-1319911200000', 'billing_1319909400000_1319911200000_1_831.gz', '2011-10-30 01:58:53', '1', '2011-10-30 01:58:53');
INSERT INTO `exp_trans_mark` VALUES ('105', '1319911200000-1319913000000', 'billing_1319911200000_1319913000000_1_675.gz', '2011-10-30 02:28:52', '1', '2011-10-30 02:28:52');
INSERT INTO `exp_trans_mark` VALUES ('106', '1319913000000-1319914800000', 'billing_1319913000000_1319914800000_1_160.gz', '2011-10-30 02:58:53', '1', '2011-10-30 02:58:53');
INSERT INTO `exp_trans_mark` VALUES ('107', '1319914800000-1319916600000', 'billing_1319914800000_1319916600000_1_296.gz', '2011-10-30 03:28:53', '1', '2011-10-30 03:28:53');
INSERT INTO `exp_trans_mark` VALUES ('108', '1319916600000-1319918400000', 'billing_1319916600000_1319918400000_1_701.gz', '2011-10-30 03:58:52', '1', '2011-10-30 03:58:52');
INSERT INTO `exp_trans_mark` VALUES ('109', '1319918400000-1319920200000', 'billing_1319918400000_1319920200000_1_680.gz', '2011-10-30 04:28:53', '1', '2011-10-30 04:28:53');
INSERT INTO `exp_trans_mark` VALUES ('110', '1319920200000-1319922000000', 'billing_1319920200000_1319922000000_1_11.gz', '2011-10-30 04:58:53', '1', '2011-10-30 04:58:53');
INSERT INTO `exp_trans_mark` VALUES ('111', '1319922000000-1319923800000', 'billing_1319922000000_1319923800000_1_388.gz', '2011-10-30 05:28:53', '1', '2011-10-30 05:28:53');
INSERT INTO `exp_trans_mark` VALUES ('112', '1319923800000-1319925600000', 'billing_1319923800000_1319925600000_1_75.gz', '2011-10-30 05:58:53', '1', '2011-10-30 05:58:53');
INSERT INTO `exp_trans_mark` VALUES ('113', '1319925600000-1319927400000', 'billing_1319925600000_1319927400000_1_984.gz', '2011-10-30 06:28:53', '1', '2011-10-30 06:28:53');
INSERT INTO `exp_trans_mark` VALUES ('114', '1319927400000-1319929200000', 'billing_1319927400000_1319929200000_1_636.gz', '2011-10-30 06:58:53', '1', '2011-10-30 06:58:53');
INSERT INTO `exp_trans_mark` VALUES ('115', '1319929200000-1319931000000', 'billing_1319929200000_1319931000000_1_666.gz', '2011-10-30 07:28:53', '1', '2011-10-30 07:28:53');
INSERT INTO `exp_trans_mark` VALUES ('116', '1319931000000-1319932800000', 'billing_1319931000000_1319932800000_1_773.gz', '2011-10-30 07:58:53', '1', '2011-10-30 07:58:53');
INSERT INTO `exp_trans_mark` VALUES ('117', '1319932800000-1319934600000', 'billing_1319932800000_1319934600000_1_123.gz', '2011-10-30 08:28:53', '1', '2011-10-30 08:28:53');
INSERT INTO `exp_trans_mark` VALUES ('118', '1319934600000-1319936400000', 'billing_1319934600000_1319936400000_1_52.gz', '2011-10-30 08:58:53', '1', '2011-10-30 08:58:53');
INSERT INTO `exp_trans_mark` VALUES ('119', '1319936400000-1319938200000', 'billing_1319936400000_1319938200000_1_37.gz', '2011-10-30 09:28:53', '1', '2011-10-30 09:28:53');
INSERT INTO `exp_trans_mark` VALUES ('120', '1319938200000-1319940000000', 'billing_1319938200000_1319940000000_1_392.gz', '2011-10-30 09:58:53', '1', '2011-10-30 09:58:53');
INSERT INTO `exp_trans_mark` VALUES ('121', '1319940000000-1319941800000', 'billing_1319940000000_1319941800000_1_922.gz', '2011-10-30 10:28:53', '1', '2011-10-30 10:28:53');
INSERT INTO `exp_trans_mark` VALUES ('122', '1319941800000-1319943600000', 'billing_1319941800000_1319943600000_1_980.gz', '2011-10-30 10:58:52', '1', '2011-10-30 10:58:52');
INSERT INTO `exp_trans_mark` VALUES ('123', '1319943600000-1319945400000', 'billing_1319943600000_1319945400000_1_650.gz', '2011-10-30 11:28:52', '1', '2011-10-30 11:28:53');
INSERT INTO `exp_trans_mark` VALUES ('124', '1319945400000-1319947200000', 'billing_1319945400000_1319947200000_1_489.gz', '2011-10-30 11:58:53', '1', '2011-10-30 11:58:53');
INSERT INTO `exp_trans_mark` VALUES ('125', '1319947200000-1319949000000', 'billing_1319947200000_1319949000000_1_61.gz', '2011-10-30 12:28:53', '1', '2011-10-30 12:28:53');
INSERT INTO `exp_trans_mark` VALUES ('126', '1319949000000-1319950800000', 'billing_1319949000000_1319950800000_1_20.gz', '2011-10-30 12:58:53', '1', '2011-10-30 12:58:53');
INSERT INTO `exp_trans_mark` VALUES ('127', '1319950800000-1319952600000', 'billing_1319950800000_1319952600000_1_342.gz', '2011-10-30 13:28:52', '1', '2011-10-30 13:28:52');
INSERT INTO `exp_trans_mark` VALUES ('128', '1319952600000-1319954400000', 'billing_1319952600000_1319954400000_1_204.gz', '2011-10-30 13:58:53', '1', '2011-10-30 13:58:53');
INSERT INTO `exp_trans_mark` VALUES ('129', '1319954400000-1319956200000', 'billing_1319954400000_1319956200000_1_700.gz', '2011-10-30 14:28:52', '1', '2011-10-30 14:28:52');
INSERT INTO `exp_trans_mark` VALUES ('130', '1319956200000-1319958000000', 'billing_1319956200000_1319958000000_1_364.gz', '2011-10-30 14:58:53', '1', '2011-10-30 14:58:53');
INSERT INTO `exp_trans_mark` VALUES ('131', '1319958000000-1319959800000', 'billing_1319958000000_1319959800000_1_63.gz', '2011-10-30 15:28:53', '1', '2011-10-30 15:28:53');
INSERT INTO `exp_trans_mark` VALUES ('132', '1319959800000-1319961600000', 'billing_1319959800000_1319961600000_1_652.gz', '2011-10-30 15:58:52', '1', '2011-10-30 15:58:52');
INSERT INTO `exp_trans_mark` VALUES ('133', '1319961600000-1319963400000', 'billing_1319961600000_1319963400000_1_811.gz', '2011-10-30 16:28:52', '1', '2011-10-30 16:28:52');
INSERT INTO `exp_trans_mark` VALUES ('134', '1319963400000-1319965200000', 'billing_1319963400000_1319965200000_1_577.gz', '2011-10-30 16:58:53', '1', '2011-10-30 16:58:53');
INSERT INTO `exp_trans_mark` VALUES ('135', '1319965200000-1319967000000', 'billing_1319965200000_1319967000000_1_504.gz', '2011-10-30 17:28:52', '1', '2011-10-30 17:28:52');
INSERT INTO `exp_trans_mark` VALUES ('136', '1319967000000-1319968800000', 'billing_1319967000000_1319968800000_1_168.gz', '2011-10-30 17:58:52', '1', '2011-10-30 17:58:52');
INSERT INTO `exp_trans_mark` VALUES ('137', '1319968800000-1319970600000', 'billing_1319968800000_1319970600000_1_800.gz', '2011-10-30 18:28:53', '1', '2011-10-30 18:28:53');
INSERT INTO `exp_trans_mark` VALUES ('138', '1319970600000-1319972400000', 'billing_1319970600000_1319972400000_1_951.gz', '2011-10-30 18:58:53', '1', '2011-10-30 18:58:53');
INSERT INTO `exp_trans_mark` VALUES ('139', '1319972400000-1319974200000', 'billing_1319972400000_1319974200000_1_715.gz', '2011-10-30 19:28:53', '1', '2011-10-30 19:28:53');
INSERT INTO `exp_trans_mark` VALUES ('140', '1319974200000-1319976000000', 'billing_1319974200000_1319976000000_1_509.gz', '2011-10-30 19:58:52', '1', '2011-10-30 19:58:52');
INSERT INTO `exp_trans_mark` VALUES ('141', '1319976000000-1319977800000', 'billing_1319976000000_1319977800000_1_139.gz', '2011-10-30 20:28:52', '1', '2011-10-30 20:28:53');
INSERT INTO `exp_trans_mark` VALUES ('142', '1319977800000-1319979600000', 'billing_1319977800000_1319979600000_1_748.gz', '2011-10-30 20:58:52', '1', '2011-10-30 20:58:53');
INSERT INTO `exp_trans_mark` VALUES ('143', '1319979600000-1319981400000', 'billing_1319979600000_1319981400000_1_811.gz', '2011-10-30 21:28:53', '1', '2011-10-30 21:28:53');
INSERT INTO `exp_trans_mark` VALUES ('144', '1319981400000-1319983200000', 'billing_1319981400000_1319983200000_1_736.gz', '2011-10-30 21:58:53', '1', '2011-10-30 21:58:53');
INSERT INTO `exp_trans_mark` VALUES ('145', '1319983200000-1319985000000', 'billing_1319983200000_1319985000000_1_731.gz', '2011-10-30 22:28:52', '1', '2011-10-30 22:28:53');
INSERT INTO `exp_trans_mark` VALUES ('146', '1319985000000-1319986800000', 'billing_1319985000000_1319986800000_1_282.gz', '2011-10-30 22:58:53', '1', '2011-10-30 22:58:53');
INSERT INTO `exp_trans_mark` VALUES ('147', '1319986800000-1319988600000', 'billing_1319986800000_1319988600000_1_662.gz', '2011-10-30 23:28:53', '1', '2011-10-30 23:28:53');
INSERT INTO `exp_trans_mark` VALUES ('148', '1319988600000-1319990400000', 'billing_1319988600000_1319990400000_1_523.gz', '2011-10-30 23:58:53', '1', '2011-10-30 23:58:53');
INSERT INTO `exp_trans_mark` VALUES ('149', '1319990400000-1319992200000', 'billing_1319990400000_1319992200000_1_617.gz', '2011-10-31 00:28:53', '1', '2011-10-31 00:28:53');
INSERT INTO `exp_trans_mark` VALUES ('150', '1319992200000-1319994000000', 'billing_1319992200000_1319994000000_1_262.gz', '2011-10-31 00:58:53', '1', '2011-10-31 00:58:53');
INSERT INTO `exp_trans_mark` VALUES ('151', '1319994000000-1319995800000', 'billing_1319994000000_1319995800000_1_948.gz', '2011-10-31 01:28:53', '1', '2011-10-31 01:28:53');
INSERT INTO `exp_trans_mark` VALUES ('152', '1319995800000-1319997600000', 'billing_1319995800000_1319997600000_1_771.gz', '2011-10-31 01:58:53', '1', '2011-10-31 01:58:53');
INSERT INTO `exp_trans_mark` VALUES ('153', '1319997600000-1319999400000', 'billing_1319997600000_1319999400000_1_392.gz', '2011-10-31 02:28:52', '1', '2011-10-31 02:28:52');
INSERT INTO `exp_trans_mark` VALUES ('154', '1319999400000-1320001200000', 'billing_1319999400000_1320001200000_1_973.gz', '2011-10-31 02:58:52', '1', '2011-10-31 02:58:53');
INSERT INTO `exp_trans_mark` VALUES ('155', '1320001200000-1320003000000', 'billing_1320001200000_1320003000000_1_253.gz', '2011-10-31 03:28:53', '1', '2011-10-31 03:28:53');
INSERT INTO `exp_trans_mark` VALUES ('156', '1320003000000-1320004800000', 'billing_1320003000000_1320004800000_1_495.gz', '2011-10-31 03:58:53', '1', '2011-10-31 03:58:54');
INSERT INTO `exp_trans_mark` VALUES ('157', '1320004800000-1320006600000', 'billing_1320004800000_1320006600000_1_895.gz', '2011-10-31 04:28:53', '1', '2011-10-31 04:28:53');
INSERT INTO `exp_trans_mark` VALUES ('158', '1320006600000-1320008400000', 'billing_1320006600000_1320008400000_1_934.gz', '2011-10-31 04:58:53', '1', '2011-10-31 04:58:53');
INSERT INTO `exp_trans_mark` VALUES ('159', '1320008400000-1320010200000', 'billing_1320008400000_1320010200000_1_197.gz', '2011-10-31 05:28:53', '1', '2011-10-31 05:28:53');
INSERT INTO `exp_trans_mark` VALUES ('160', '1320010200000-1320012000000', 'billing_1320010200000_1320012000000_1_197.gz', '2011-10-31 05:58:53', '1', '2011-10-31 05:58:53');
INSERT INTO `exp_trans_mark` VALUES ('161', '1320012000000-1320013800000', 'billing_1320012000000_1320013800000_1_511.gz', '2011-10-31 06:28:53', '1', '2011-10-31 06:28:53');
INSERT INTO `exp_trans_mark` VALUES ('162', '1320013800000-1320015600000', 'billing_1320013800000_1320015600000_1_681.gz', '2011-10-31 06:58:53', '1', '2011-10-31 06:58:53');
INSERT INTO `exp_trans_mark` VALUES ('163', '1320015600000-1320017400000', 'billing_1320015600000_1320017400000_1_244.gz', '2011-10-31 07:28:52', '1', '2011-10-31 07:28:52');
INSERT INTO `exp_trans_mark` VALUES ('164', '1320017400000-1320019200000', 'billing_1320017400000_1320019200000_1_989.gz', '2011-10-31 07:58:53', '1', '2011-10-31 07:58:53');
INSERT INTO `exp_trans_mark` VALUES ('165', '1320019200000-1320021000000', 'billing_1320019200000_1320021000000_1_687.gz', '2011-10-31 08:28:53', '1', '2011-10-31 08:28:53');
INSERT INTO `exp_trans_mark` VALUES ('166', '1320021000000-1320022800000', 'billing_1320021000000_1320022800000_1_857.gz', '2011-10-31 08:58:53', '1', '2011-10-31 08:58:53');
INSERT INTO `exp_trans_mark` VALUES ('167', '1320022800000-1320024600000', 'billing_1320022800000_1320024600000_1_348.gz', '2011-10-31 09:28:53', '1', '2011-10-31 09:28:53');
INSERT INTO `exp_trans_mark` VALUES ('168', '1320024600000-1320026400000', 'billing_1320024600000_1320026400000_1_281.gz', '2011-10-31 09:58:53', '1', '2011-10-31 09:58:53');
INSERT INTO `exp_trans_mark` VALUES ('169', '1320026400000-1320028200000', 'billing_1320026400000_1320028200000_1_821.gz', '2011-10-31 10:28:53', '1', '2011-10-31 10:28:53');
INSERT INTO `exp_trans_mark` VALUES ('170', '1320028200000-1320030000000', 'billing_1320028200000_1320030000000_1_756.gz', '2011-10-31 10:58:53', '1', '2011-10-31 10:58:53');
INSERT INTO `exp_trans_mark` VALUES ('171', '1320030000000-1320031800000', 'billing_1320030000000_1320031800000_1_95.gz', '2011-10-31 11:28:53', '1', '2011-10-31 11:28:53');
INSERT INTO `exp_trans_mark` VALUES ('172', '1320031800000-1320033600000', 'billing_1320031800000_1320033600000_1_923.gz', '2011-10-31 11:58:53', '1', '2011-10-31 11:58:53');
INSERT INTO `exp_trans_mark` VALUES ('173', '1320033600000-1320035400000', 'billing_1320033600000_1320035400000_1_960.gz', '2011-10-31 12:28:53', '1', '2011-10-31 12:28:53');
INSERT INTO `exp_trans_mark` VALUES ('174', '1320035400000-1320037200000', 'billing_1320035400000_1320037200000_1_574.gz', '2011-10-31 12:58:53', '1', '2011-10-31 12:58:53');
INSERT INTO `exp_trans_mark` VALUES ('175', '1320037200000-1320039000000', 'billing_1320037200000_1320039000000_1_601.gz', '2011-10-31 13:28:52', '1', '2011-10-31 13:28:52');
INSERT INTO `exp_trans_mark` VALUES ('176', '1320039000000-1320040800000', 'billing_1320039000000_1320040800000_1_657.gz', '2011-10-31 13:58:53', '1', '2011-10-31 13:58:53');
INSERT INTO `exp_trans_mark` VALUES ('177', '1320040800000-1320042600000', 'billing_1320040800000_1320042600000_1_15.gz', '2011-10-31 14:28:53', '1', '2011-10-31 14:28:53');
INSERT INTO `exp_trans_mark` VALUES ('178', '1320042600000-1320044400000', 'billing_1320042600000_1320044400000_1_883.gz', '2011-10-31 14:58:52', '1', '2011-10-31 14:58:52');
INSERT INTO `exp_trans_mark` VALUES ('179', '1320044400000-1320046200000', 'billing_1320044400000_1320046200000_1_434.gz', '2011-10-31 15:28:53', '1', '2011-10-31 15:28:53');
INSERT INTO `exp_trans_mark` VALUES ('180', '1320046200000-1320048000000', 'billing_1320046200000_1320048000000_1_86.gz', '2011-10-31 15:58:53', '1', '2011-10-31 15:58:53');
INSERT INTO `exp_trans_mark` VALUES ('181', '1320048000000-1320049800000', 'billing_1320048000000_1320049800000_1_917.gz', '2011-10-31 16:28:53', '1', '2011-10-31 16:28:53');
INSERT INTO `exp_trans_mark` VALUES ('182', '1320049800000-1320051600000', 'billing_1320049800000_1320051600000_1_482.gz', '2011-10-31 16:58:53', '1', '2011-10-31 16:58:53');
INSERT INTO `exp_trans_mark` VALUES ('183', '1320051600000-1320053400000', 'billing_1320051600000_1320053400000_1_264.gz', '2011-10-31 17:28:53', '1', '2011-10-31 17:28:53');
INSERT INTO `exp_trans_mark` VALUES ('184', '1320053400000-1320055200000', 'billing_1320053400000_1320055200000_1_195.gz', '2011-10-31 17:58:53', '1', '2011-10-31 17:58:53');
INSERT INTO `exp_trans_mark` VALUES ('185', '1320055200000-1320057000000', 'billing_1320055200000_1320057000000_1_191.gz', '2011-10-31 18:28:53', '1', '2011-10-31 18:28:53');
INSERT INTO `exp_trans_mark` VALUES ('186', '1320057000000-1320058800000', 'billing_1320057000000_1320058800000_1_271.gz', '2011-10-31 18:58:53', '1', '2011-10-31 18:58:58');
INSERT INTO `exp_trans_mark` VALUES ('187', '1320058800000-1320060600000', 'billing_1320058800000_1320060600000_1_87.gz', '2011-10-31 19:28:52', '1', '2011-10-31 19:28:52');
INSERT INTO `exp_trans_mark` VALUES ('188', '1320060600000-1320062400000', 'billing_1320060600000_1320062400000_1_904.gz', '2011-10-31 19:58:52', '1', '2011-10-31 19:58:53');
INSERT INTO `exp_trans_mark` VALUES ('189', '1320062400000-1320064200000', 'billing_1320062400000_1320064200000_1_398.gz', '2011-10-31 20:28:52', '1', '2011-10-31 20:28:52');
INSERT INTO `exp_trans_mark` VALUES ('190', '1320064200000-1320066000000', 'billing_1320064200000_1320066000000_1_807.gz', '2011-10-31 20:58:53', '1', '2011-10-31 20:58:53');
INSERT INTO `exp_trans_mark` VALUES ('191', '1320066000000-1320067800000', 'billing_1320066000000_1320067800000_1_951.gz', '2011-10-31 21:28:52', '1', '2011-10-31 21:28:52');
INSERT INTO `exp_trans_mark` VALUES ('192', '1320067800000-1320069600000', 'billing_1320067800000_1320069600000_1_292.gz', '2011-10-31 21:58:52', '1', '2011-10-31 21:58:52');
INSERT INTO `exp_trans_mark` VALUES ('193', '1320069600000-1320071400000', 'billing_1320069600000_1320071400000_1_256.gz', '2011-10-31 22:28:52', '1', '2011-10-31 22:28:52');
INSERT INTO `exp_trans_mark` VALUES ('194', '1320071400000-1320073200000', 'billing_1320071400000_1320073200000_1_959.gz', '2011-10-31 22:58:53', '1', '2011-10-31 22:58:53');
INSERT INTO `exp_trans_mark` VALUES ('195', '1320073200000-1320075000000', 'billing_1320073200000_1320075000000_1_121.gz', '2011-10-31 23:28:53', '1', '2011-10-31 23:28:53');
INSERT INTO `exp_trans_mark` VALUES ('196', '1320075000000-1320076800000', 'billing_1320075000000_1320076800000_1_819.gz', '2011-10-31 23:58:53', '1', '2011-10-31 23:58:53');
INSERT INTO `exp_trans_mark` VALUES ('197', '1320076800000-1320078600000', 'billing_1320076800000_1320078600000_1_122.gz', '2011-11-01 00:28:53', '1', '2011-11-01 00:28:53');
INSERT INTO `exp_trans_mark` VALUES ('198', '1320078600000-1320080400000', 'billing_1320078600000_1320080400000_1_229.gz', '2011-11-01 00:58:52', '1', '2011-11-01 00:58:52');
INSERT INTO `exp_trans_mark` VALUES ('199', '1320080400000-1320082200000', 'billing_1320080400000_1320082200000_1_845.gz', '2011-11-01 01:28:53', '1', '2011-11-01 01:28:53');
INSERT INTO `exp_trans_mark` VALUES ('200', '1320082200000-1320084000000', 'billing_1320082200000_1320084000000_1_677.gz', '2011-11-01 01:58:53', '1', '2011-11-01 01:58:53');
INSERT INTO `exp_trans_mark` VALUES ('201', '1320084000000-1320085800000', 'billing_1320084000000_1320085800000_1_278.gz', '2011-11-01 02:28:52', '1', '2011-11-01 02:28:52');
INSERT INTO `exp_trans_mark` VALUES ('202', '1320085800000-1320087600000', 'billing_1320085800000_1320087600000_1_421.gz', '2011-11-01 02:58:53', '1', '2011-11-01 02:58:53');
INSERT INTO `exp_trans_mark` VALUES ('203', '1320087600000-1320089400000', 'billing_1320087600000_1320089400000_1_723.gz', '2011-11-01 03:28:53', '1', '2011-11-01 03:28:53');
INSERT INTO `exp_trans_mark` VALUES ('204', '1320089400000-1320091200000', 'billing_1320089400000_1320091200000_1_962.gz', '2011-11-01 03:58:52', '1', '2011-11-01 03:58:52');
INSERT INTO `exp_trans_mark` VALUES ('205', '1320091200000-1320093000000', 'billing_1320091200000_1320093000000_1_237.gz', '2011-11-01 04:28:53', '1', '2011-11-01 04:28:53');
INSERT INTO `exp_trans_mark` VALUES ('206', '1320093000000-1320094800000', 'billing_1320093000000_1320094800000_1_141.gz', '2011-11-01 04:58:53', '1', '2011-11-01 04:58:53');
INSERT INTO `exp_trans_mark` VALUES ('207', '1320094800000-1320096600000', 'billing_1320094800000_1320096600000_1_614.gz', '2011-11-01 05:28:52', '1', '2011-11-01 05:28:53');
INSERT INTO `exp_trans_mark` VALUES ('208', '1320096600000-1320098400000', 'billing_1320096600000_1320098400000_1_702.gz', '2011-11-01 05:58:52', '1', '2011-11-01 05:58:52');
INSERT INTO `exp_trans_mark` VALUES ('209', '1320098400000-1320100200000', 'billing_1320098400000_1320100200000_1_876.gz', '2011-11-01 06:28:53', '1', '2011-11-01 06:28:53');
INSERT INTO `exp_trans_mark` VALUES ('210', '1320100200000-1320102000000', 'billing_1320100200000_1320102000000_1_271.gz', '2011-11-01 06:58:53', '1', '2011-11-01 06:58:53');
INSERT INTO `exp_trans_mark` VALUES ('211', '1320102000000-1320103800000', 'billing_1320102000000_1320103800000_1_45.gz', '2011-11-01 07:28:53', '1', '2011-11-01 07:28:53');
INSERT INTO `exp_trans_mark` VALUES ('212', '1320103800000-1320105600000', 'billing_1320103800000_1320105600000_1_246.gz', '2011-11-01 07:58:53', '1', '2011-11-01 07:58:53');
INSERT INTO `exp_trans_mark` VALUES ('213', '1320105600000-1320107400000', 'billing_1320105600000_1320107400000_1_818.gz', '2011-11-01 08:28:53', '1', '2011-11-01 08:28:53');
INSERT INTO `exp_trans_mark` VALUES ('214', '1320107400000-1320109200000', 'billing_1320107400000_1320109200000_1_807.gz', '2011-11-01 08:58:53', '1', '2011-11-01 08:58:53');
INSERT INTO `exp_trans_mark` VALUES ('215', '1320109200000-1320111000000', 'billing_1320109200000_1320111000000_1_902.gz', '2011-11-01 09:28:53', '1', '2011-11-01 09:28:53');
INSERT INTO `exp_trans_mark` VALUES ('216', '1320111000000-1320112800000', 'billing_1320111000000_1320112800000_1_622.gz', '2011-11-01 09:58:53', '1', '2011-11-01 09:58:53');
INSERT INTO `exp_trans_mark` VALUES ('217', '1320112800000-1320114600000', 'billing_1320112800000_1320114600000_1_513.gz', '2011-11-01 10:28:53', '1', '2011-11-01 10:28:53');
INSERT INTO `exp_trans_mark` VALUES ('218', '1320114600000-1320116400000', 'billing_1320114600000_1320116400000_1_180.gz', '2011-11-01 10:58:53', '1', '2011-11-01 10:58:53');
INSERT INTO `exp_trans_mark` VALUES ('219', '1320116400000-1320118200000', 'billing_1320116400000_1320118200000_1_574.gz', '2011-11-01 11:28:53', '1', '2011-11-01 11:28:53');
INSERT INTO `exp_trans_mark` VALUES ('220', '1320118200000-1320120000000', 'billing_1320118200000_1320120000000_1_736.gz', '2011-11-01 11:58:53', '1', '2011-11-01 11:58:53');
INSERT INTO `exp_trans_mark` VALUES ('221', '1320120000000-1320121800000', 'billing_1320120000000_1320121800000_1_449.gz', '2011-11-01 12:28:53', '1', '2011-11-01 12:28:53');
INSERT INTO `exp_trans_mark` VALUES ('222', '1320121800000-1320123600000', 'billing_1320121800000_1320123600000_1_929.gz', '2011-11-01 12:58:53', '1', '2011-11-01 12:58:53');
INSERT INTO `exp_trans_mark` VALUES ('223', '1320123600000-1320125400000', 'billing_1320123600000_1320125400000_1_119.gz', '2011-11-01 13:28:53', '1', '2011-11-01 13:28:53');
INSERT INTO `exp_trans_mark` VALUES ('224', '1320125400000-1320127200000', 'billing_1320125400000_1320127200000_1_800.gz', '2011-11-01 13:58:53', '1', '2011-11-01 13:58:53');
INSERT INTO `exp_trans_mark` VALUES ('225', '1320127200000-1320129000000', 'billing_1320127200000_1320129000000_1_44.gz', '2011-11-01 14:28:56', '1', '2011-11-01 14:28:56');
INSERT INTO `exp_trans_mark` VALUES ('226', '1320129000000-1320130800000', 'billing_1320129000000_1320130800000_1_164.gz', '2011-11-01 14:58:53', '1', '2011-11-01 14:58:54');
INSERT INTO `exp_trans_mark` VALUES ('227', '1320130800000-1320132600000', 'billing_1320130800000_1320132600000_1_608.gz', '2011-11-01 15:28:53', '1', '2011-11-01 15:28:53');
INSERT INTO `exp_trans_mark` VALUES ('228', '1320132600000-1320134400000', 'billing_1320132600000_1320134400000_1_39.gz', '2011-11-01 15:58:53', '1', '2011-11-01 15:58:53');
INSERT INTO `exp_trans_mark` VALUES ('229', '1320134400000-1320136200000', 'billing_1320134400000_1320136200000_1_966.gz', '2011-11-01 16:28:53', '1', '2011-11-01 16:28:53');
INSERT INTO `exp_trans_mark` VALUES ('230', '1320136200000-1320138000000', 'billing_1320136200000_1320138000000_1_674.gz', '2011-11-01 16:58:53', '1', '2011-11-01 16:58:53');
INSERT INTO `exp_trans_mark` VALUES ('231', '1320138000000-1320139800000', 'billing_1320138000000_1320139800000_1_614.gz', '2011-11-01 17:28:53', '1', '2011-11-01 17:28:53');
INSERT INTO `exp_trans_mark` VALUES ('232', '1320139800000-1320141600000', 'billing_1320139800000_1320141600000_1_470.gz', '2011-11-01 17:58:53', '1', '2011-11-01 17:58:53');
INSERT INTO `exp_trans_mark` VALUES ('233', '1320141600000-1320143400000', 'billing_1320141600000_1320143400000_1_706.gz', '2011-11-01 18:28:53', '1', '2011-11-01 18:28:53');
INSERT INTO `exp_trans_mark` VALUES ('234', '1320143400000-1320145200000', 'billing_1320143400000_1320145200000_1_365.gz', '2011-11-01 18:58:53', '1', '2011-11-01 18:58:53');
INSERT INTO `exp_trans_mark` VALUES ('235', '1320145200000-1320147000000', 'billing_1320145200000_1320147000000_1_875.gz', '2011-11-01 19:28:53', '1', '2011-11-01 19:28:53');
INSERT INTO `exp_trans_mark` VALUES ('236', '1320147000000-1320148800000', 'billing_1320147000000_1320148800000_1_688.gz', '2011-11-01 19:58:53', '1', '2011-11-01 19:58:53');
INSERT INTO `exp_trans_mark` VALUES ('237', '1320148800000-1320150600000', 'billing_1320148800000_1320150600000_1_632.gz', '2011-11-01 20:28:53', '1', '2011-11-01 20:28:53');
INSERT INTO `exp_trans_mark` VALUES ('238', '1320150600000-1320152400000', 'billing_1320150600000_1320152400000_1_469.gz', '2011-11-01 20:58:52', '1', '2011-11-01 20:58:52');
INSERT INTO `exp_trans_mark` VALUES ('239', '1320152400000-1320154200000', 'billing_1320152400000_1320154200000_1_612.gz', '2011-11-01 21:28:53', '1', '2011-11-01 21:29:03');
INSERT INTO `exp_trans_mark` VALUES ('240', '1320154200000-1320156000000', 'billing_1320154200000_1320156000000_1_204.gz', '2011-11-01 21:58:53', '1', '2011-11-01 21:59:03');
INSERT INTO `exp_trans_mark` VALUES ('241', '1320156000000-1320157800000', 'billing_1320156000000_1320157800000_1_736.gz', '2011-11-01 22:28:53', '1', '2011-11-01 22:29:03');
INSERT INTO `exp_trans_mark` VALUES ('242', '1320157800000-1320159600000', 'billing_1320157800000_1320159600000_1_196.gz', '2011-11-01 22:58:53', '1', '2011-11-01 22:59:03');
INSERT INTO `exp_trans_mark` VALUES ('243', '1320159600000-1320161400000', 'billing_1320159600000_1320161400000_1_311.gz', '2011-11-01 23:28:53', '1', '2011-11-01 23:29:03');
INSERT INTO `exp_trans_mark` VALUES ('244', '1320161400000-1320163200000', 'billing_1320161400000_1320163200000_1_12.gz', '2011-11-01 23:58:52', '1', '2011-11-01 23:59:02');
INSERT INTO `exp_trans_mark` VALUES ('245', '1320163200000-1320165000000', 'billing_1320163200000_1320165000000_1_232.gz', '2011-11-02 00:28:53', '1', '2011-11-02 00:29:03');
INSERT INTO `exp_trans_mark` VALUES ('246', '1320165000000-1320166800000', 'billing_1320165000000_1320166800000_1_436.gz', '2011-11-02 00:58:53', '1', '2011-11-02 00:59:03');
INSERT INTO `exp_trans_mark` VALUES ('247', '1320166800000-1320168600000', 'billing_1320166800000_1320168600000_1_566.gz', '2011-11-02 01:28:53', '1', '2011-11-02 01:29:03');
INSERT INTO `exp_trans_mark` VALUES ('248', '1320168600000-1320170400000', 'billing_1320168600000_1320170400000_1_529.gz', '2011-11-02 01:58:53', '1', '2011-11-02 01:59:03');
INSERT INTO `exp_trans_mark` VALUES ('249', '1320170400000-1320172200000', 'billing_1320170400000_1320172200000_1_943.gz', '2011-11-02 02:28:53', '1', '2011-11-02 02:29:03');
INSERT INTO `exp_trans_mark` VALUES ('250', '1320172200000-1320174000000', 'billing_1320172200000_1320174000000_1_356.gz', '2011-11-02 02:58:53', '1', '2011-11-02 02:59:03');
INSERT INTO `exp_trans_mark` VALUES ('251', '1320174000000-1320175800000', 'billing_1320174000000_1320175800000_1_479.gz', '2011-11-02 03:28:53', '1', '2011-11-02 03:29:03');
INSERT INTO `exp_trans_mark` VALUES ('252', '1320175800000-1320177600000', 'billing_1320175800000_1320177600000_1_925.gz', '2011-11-02 03:58:53', '1', '2011-11-02 03:59:03');
INSERT INTO `exp_trans_mark` VALUES ('253', '1320177600000-1320179400000', 'billing_1320177600000_1320179400000_1_799.gz', '2011-11-02 04:28:53', '1', '2011-11-02 04:29:03');
INSERT INTO `exp_trans_mark` VALUES ('254', '1320179400000-1320181200000', 'billing_1320179400000_1320181200000_1_679.gz', '2011-11-02 04:58:53', '1', '2011-11-02 04:59:03');
INSERT INTO `exp_trans_mark` VALUES ('255', '1320181200000-1320183000000', 'billing_1320181200000_1320183000000_1_769.gz', '2011-11-02 05:28:52', '1', '2011-11-02 05:29:02');
INSERT INTO `exp_trans_mark` VALUES ('256', '1320183000000-1320184800000', 'billing_1320183000000_1320184800000_1_721.gz', '2011-11-02 05:58:53', '1', '2011-11-02 05:59:03');
INSERT INTO `exp_trans_mark` VALUES ('257', '1320184800000-1320186600000', 'billing_1320184800000_1320186600000_1_195.gz', '2011-11-02 06:28:53', '1', '2011-11-02 06:29:03');
INSERT INTO `exp_trans_mark` VALUES ('258', '1320186600000-1320188400000', 'billing_1320186600000_1320188400000_1_858.gz', '2011-11-02 06:58:53', '1', '2011-11-02 06:59:03');
INSERT INTO `exp_trans_mark` VALUES ('259', '1320188400000-1320190200000', 'billing_1320188400000_1320190200000_1_767.gz', '2011-11-02 07:28:52', '1', '2011-11-02 07:29:02');
INSERT INTO `exp_trans_mark` VALUES ('260', '1320190200000-1320192000000', 'billing_1320190200000_1320192000000_1_615.gz', '2011-11-02 07:58:52', '1', '2011-11-02 07:59:02');
INSERT INTO `exp_trans_mark` VALUES ('261', '1320192000000-1320193800000', 'billing_1320192000000_1320193800000_1_56.gz', '2011-11-02 08:28:53', '1', '2011-11-02 08:29:03');
INSERT INTO `exp_trans_mark` VALUES ('262', '1320193800000-1320195600000', 'billing_1320193800000_1320195600000_1_934.gz', '2011-11-02 08:58:53', '1', '2011-11-02 08:59:03');
INSERT INTO `exp_trans_mark` VALUES ('263', '1320195600000-1320197400000', 'billing_1320195600000_1320197400000_1_433.gz', '2011-11-02 09:28:53', '1', '2011-11-02 09:29:03');
INSERT INTO `exp_trans_mark` VALUES ('264', '1320197400000-1320199200000', 'billing_1320197400000_1320199200000_1_918.gz', '2011-11-02 09:58:53', '1', '2011-11-02 09:59:03');
INSERT INTO `exp_trans_mark` VALUES ('265', '1320199200000-1320201000000', 'billing_1320199200000_1320201000000_1_396.gz', '2011-11-02 10:28:52', '1', '2011-11-02 10:29:02');
INSERT INTO `exp_trans_mark` VALUES ('266', '1320201000000-1320202800000', 'billing_1320201000000_1320202800000_1_352.gz', '2011-11-02 10:58:52', '1', '2011-11-02 10:58:52');
INSERT INTO `exp_trans_mark` VALUES ('267', '1320202800000-1320204600000', 'billing_1320202800000_1320204600000_1_352.gz', '2011-11-02 11:28:53', '1', '2011-11-02 11:28:53');
INSERT INTO `exp_trans_mark` VALUES ('268', '1320204600000-1320206400000', 'billing_1320204600000_1320206400000_1_869.gz', '2011-11-02 11:58:53', '1', '2011-11-02 11:58:53');
INSERT INTO `exp_trans_mark` VALUES ('269', '1320206400000-1320208200000', 'billing_1320206400000_1320208200000_1_984.gz', '2011-11-02 12:28:53', '1', '2011-11-02 12:28:53');
INSERT INTO `exp_trans_mark` VALUES ('270', '1320208200000-1320210000000', 'billing_1320208200000_1320210000000_1_222.gz', '2011-11-02 12:58:53', '1', '2011-11-02 12:58:53');
INSERT INTO `exp_trans_mark` VALUES ('271', '1320210000000-1320211800000', 'billing_1320210000000_1320211800000_1_267.gz', '2011-11-02 13:28:53', '1', '2011-11-02 13:28:53');
INSERT INTO `exp_trans_mark` VALUES ('272', '1320211800000-1320213600000', 'billing_1320211800000_1320213600000_1_224.gz', '2011-11-02 13:58:53', '1', '2011-11-02 13:58:53');
INSERT INTO `exp_trans_mark` VALUES ('273', '1320213600000-1320215400000', 'billing_1320213600000_1320215400000_1_771.gz', '2011-11-02 14:28:53', '1', '2011-11-02 14:28:53');
INSERT INTO `exp_trans_mark` VALUES ('274', '1320215400000-1320217200000', 'billing_1320215400000_1320217200000_1_594.gz', '2011-11-02 14:58:53', '1', '2011-11-02 14:58:53');
INSERT INTO `exp_trans_mark` VALUES ('275', '1320217200000-1320219000000', 'billing_1320217200000_1320219000000_1_887.gz', '2011-11-02 15:28:53', '1', '2011-11-02 15:28:53');
INSERT INTO `exp_trans_mark` VALUES ('276', '1320219000000-1320220800000', 'billing_1320219000000_1320220800000_1_284.gz', '2011-11-02 15:58:53', '1', '2011-11-02 15:58:53');
INSERT INTO `exp_trans_mark` VALUES ('277', '1320220800000-1320222600000', 'billing_1320220800000_1320222600000_1_632.gz', '2011-11-02 16:28:53', '1', '2011-11-02 16:28:53');
INSERT INTO `exp_trans_mark` VALUES ('278', '1320222600000-1320224400000', 'billing_1320222600000_1320224400000_1_118.gz', '2011-11-02 16:58:53', '1', '2011-11-02 16:58:53');
INSERT INTO `exp_trans_mark` VALUES ('279', '1320224400000-1320226200000', 'billing_1320224400000_1320226200000_1_177.gz', '2011-11-02 17:28:53', '1', '2011-11-02 17:28:53');
INSERT INTO `exp_trans_mark` VALUES ('280', '1320226200000-1320228000000', 'billing_1320226200000_1320228000000_1_989.gz', '2011-11-02 17:58:52', '1', '2011-11-02 17:58:52');
INSERT INTO `exp_trans_mark` VALUES ('281', '1320228000000-1320229800000', 'billing_1320228000000_1320229800000_1_968.gz', '2011-11-02 18:28:53', '1', '2011-11-02 18:28:53');
INSERT INTO `exp_trans_mark` VALUES ('282', '1320229800000-1320231600000', 'billing_1320229800000_1320231600000_1_791.gz', '2011-11-02 18:58:53', '1', '2011-11-02 18:58:53');
INSERT INTO `exp_trans_mark` VALUES ('283', '1320231600000-1320233400000', 'billing_1320231600000_1320233400000_1_284.gz', '2011-11-02 19:28:53', '1', '2011-11-02 19:28:53');
INSERT INTO `exp_trans_mark` VALUES ('284', '1320233400000-1320235200000', 'billing_1320233400000_1320235200000_1_105.gz', '2011-11-02 19:58:53', '1', '2011-11-02 19:58:53');
INSERT INTO `exp_trans_mark` VALUES ('285', '1320235200000-1320237000000', 'billing_1320235200000_1320237000000_1_806.gz', '2011-11-02 20:28:53', '1', '2011-11-02 20:28:53');
INSERT INTO `exp_trans_mark` VALUES ('286', '1320237000000-1320238800000', 'billing_1320237000000_1320238800000_1_525.gz', '2011-11-02 20:58:53', '1', '2011-11-02 20:58:53');
INSERT INTO `exp_trans_mark` VALUES ('287', '1320238800000-1320240600000', 'billing_1320238800000_1320240600000_1_144.gz', '2011-11-02 21:28:52', '1', '2011-11-02 21:28:52');
INSERT INTO `exp_trans_mark` VALUES ('288', '1320240600000-1320242400000', 'billing_1320240600000_1320242400000_1_293.gz', '2011-11-02 21:58:53', '1', '2011-11-02 21:58:53');
INSERT INTO `exp_trans_mark` VALUES ('289', '1320242400000-1320244200000', 'billing_1320242400000_1320244200000_1_813.gz', '2011-11-02 22:28:53', '1', '2011-11-02 22:28:53');
INSERT INTO `exp_trans_mark` VALUES ('290', '1320244200000-1320246000000', 'billing_1320244200000_1320246000000_1_946.gz', '2011-11-02 22:58:53', '1', '2011-11-02 22:58:53');
INSERT INTO `exp_trans_mark` VALUES ('291', '1320246000000-1320247800000', 'billing_1320246000000_1320247800000_1_45.gz', '2011-11-02 23:28:53', '1', '2011-11-02 23:28:53');
INSERT INTO `exp_trans_mark` VALUES ('292', '1320247800000-1320249600000', 'billing_1320247800000_1320249600000_1_247.gz', '2011-11-02 23:58:53', '1', '2011-11-02 23:58:53');
INSERT INTO `exp_trans_mark` VALUES ('293', '1320249600000-1320251400000', 'billing_1320249600000_1320251400000_1_565.gz', '2011-11-03 00:28:53', '1', '2011-11-03 00:28:53');
INSERT INTO `exp_trans_mark` VALUES ('294', '1320251400000-1320253200000', 'billing_1320251400000_1320253200000_1_264.gz', '2011-11-03 00:58:53', '1', '2011-11-03 00:58:53');
INSERT INTO `exp_trans_mark` VALUES ('295', '1320253200000-1320255000000', 'billing_1320253200000_1320255000000_1_187.gz', '2011-11-03 01:28:53', '1', '2011-11-03 01:28:53');
INSERT INTO `exp_trans_mark` VALUES ('296', '1320255000000-1320256800000', 'billing_1320255000000_1320256800000_1_856.gz', '2011-11-03 01:58:53', '1', '2011-11-03 01:58:53');
INSERT INTO `exp_trans_mark` VALUES ('297', '1320256800000-1320258600000', 'billing_1320256800000_1320258600000_1_318.gz', '2011-11-03 02:28:53', '1', '2011-11-03 02:28:53');
INSERT INTO `exp_trans_mark` VALUES ('298', '1320258600000-1320260400000', 'billing_1320258600000_1320260400000_1_962.gz', '2011-11-03 02:58:53', '1', '2011-11-03 02:58:53');
INSERT INTO `exp_trans_mark` VALUES ('299', '1320260400000-1320262200000', 'billing_1320260400000_1320262200000_1_137.gz', '2011-11-03 03:28:53', '1', '2011-11-03 03:28:53');
INSERT INTO `exp_trans_mark` VALUES ('300', '1320262200000-1320264000000', 'billing_1320262200000_1320264000000_1_515.gz', '2011-11-03 03:58:53', '1', '2011-11-03 03:58:53');
INSERT INTO `exp_trans_mark` VALUES ('301', '1320264000000-1320265800000', 'billing_1320264000000_1320265800000_1_99.gz', '2011-11-03 04:28:52', '1', '2011-11-03 04:28:52');
INSERT INTO `exp_trans_mark` VALUES ('302', '1320265800000-1320267600000', 'billing_1320265800000_1320267600000_1_831.gz', '2011-11-03 04:58:53', '1', '2011-11-03 04:58:53');
INSERT INTO `exp_trans_mark` VALUES ('303', '1320267600000-1320269400000', 'billing_1320267600000_1320269400000_1_59.gz', '2011-11-03 05:28:53', '1', '2011-11-03 05:28:53');
INSERT INTO `exp_trans_mark` VALUES ('304', '1320269400000-1320271200000', 'billing_1320269400000_1320271200000_1_172.gz', '2011-11-03 05:58:53', '1', '2011-11-03 05:58:53');
INSERT INTO `exp_trans_mark` VALUES ('305', '1320271200000-1320273000000', 'billing_1320271200000_1320273000000_1_221.gz', '2011-11-03 06:28:52', '1', '2011-11-03 06:28:52');
INSERT INTO `exp_trans_mark` VALUES ('306', '1320273000000-1320274800000', 'billing_1320273000000_1320274800000_1_879.gz', '2011-11-03 06:58:52', '1', '2011-11-03 06:58:52');
INSERT INTO `exp_trans_mark` VALUES ('307', '1320274800000-1320276600000', 'billing_1320274800000_1320276600000_1_734.gz', '2011-11-03 07:28:53', '1', '2011-11-03 07:28:53');
INSERT INTO `exp_trans_mark` VALUES ('308', '1320276600000-1320278400000', 'billing_1320276600000_1320278400000_1_379.gz', '2011-11-03 07:58:53', '1', '2011-11-03 07:58:53');
INSERT INTO `exp_trans_mark` VALUES ('309', '1320278400000-1320280200000', 'billing_1320278400000_1320280200000_1_38.gz', '2011-11-03 08:28:53', '1', '2011-11-03 08:28:53');
INSERT INTO `exp_trans_mark` VALUES ('310', '1320280200000-1320282000000', 'billing_1320280200000_1320282000000_1_837.gz', '2011-11-03 08:58:52', '1', '2011-11-03 08:58:53');
INSERT INTO `exp_trans_mark` VALUES ('311', '1320282000000-1320283800000', 'billing_1320282000000_1320283800000_1_949.gz', '2011-11-03 09:28:53', '1', '2011-11-03 09:28:53');
INSERT INTO `exp_trans_mark` VALUES ('312', '1320283800000-1320285600000', 'billing_1320283800000_1320285600000_1_524.gz', '2011-11-03 09:58:53', '1', '2011-11-03 09:58:53');
INSERT INTO `exp_trans_mark` VALUES ('313', '1320285600000-1320287400000', 'billing_1320285600000_1320287400000_1_193.gz', '2011-11-03 10:28:53', '1', '2011-11-03 10:28:53');
INSERT INTO `exp_trans_mark` VALUES ('314', '1320287400000-1320289200000', 'billing_1320287400000_1320289200000_1_325.gz', '2011-11-03 10:58:53', '1', '2011-11-03 10:58:53');
INSERT INTO `exp_trans_mark` VALUES ('315', '1320289200000-1320291000000', 'billing_1320289200000_1320291000000_1_445.gz', '2011-11-03 11:28:53', '1', '2011-11-03 11:28:53');
INSERT INTO `exp_trans_mark` VALUES ('316', '1320291000000-1320292800000', 'billing_1320291000000_1320292800000_1_68.gz', '2011-11-03 11:58:53', '1', '2011-11-03 11:58:53');
INSERT INTO `exp_trans_mark` VALUES ('317', '1320292800000-1320294600000', 'billing_1320292800000_1320294600000_1_580.gz', '2011-11-03 12:28:53', '1', '2011-11-03 12:28:53');
INSERT INTO `exp_trans_mark` VALUES ('318', '1320294600000-1320296400000', 'billing_1320294600000_1320296400000_1_838.gz', '2011-11-03 12:58:52', '1', '2011-11-03 12:58:52');
INSERT INTO `exp_trans_mark` VALUES ('319', '1320296400000-1320298200000', 'billing_1320296400000_1320298200000_1_175.gz', '2011-11-03 13:28:53', '1', '2011-11-03 13:28:53');
INSERT INTO `exp_trans_mark` VALUES ('320', '1320298200000-1320300000000', 'billing_1320298200000_1320300000000_1_713.gz', '2011-11-03 13:58:53', '1', '2011-11-03 13:58:53');
INSERT INTO `exp_trans_mark` VALUES ('321', '1320300000000-1320301800000', 'billing_1320300000000_1320301800000_1_966.gz', '2011-11-03 14:28:53', '1', '2011-11-03 14:28:53');
INSERT INTO `exp_trans_mark` VALUES ('322', '1320301800000-1320303600000', 'billing_1320301800000_1320303600000_1_933.gz', '2011-11-03 14:58:53', '1', '2011-11-03 14:58:53');
INSERT INTO `exp_trans_mark` VALUES ('323', '1320303600000-1320305400000', 'billing_1320303600000_1320305400000_1_285.gz', '2011-11-03 15:28:53', '1', '2011-11-03 15:28:53');
INSERT INTO `exp_trans_mark` VALUES ('324', '1320305400000-1320307200000', 'billing_1320305400000_1320307200000_1_822.gz', '2011-11-03 15:58:53', '1', '2011-11-03 15:58:53');
INSERT INTO `exp_trans_mark` VALUES ('325', '1320307200000-1320309000000', 'billing_1320307200000_1320309000000_1_801.gz', '2011-11-03 16:28:52', '1', '2011-11-03 16:28:52');
INSERT INTO `exp_trans_mark` VALUES ('326', '1320309000000-1320310800000', 'billing_1320309000000_1320310800000_1_988.gz', '2011-11-03 16:58:53', '1', '2011-11-03 16:58:53');
INSERT INTO `exp_trans_mark` VALUES ('327', '1320310800000-1320312600000', 'billing_1320310800000_1320312600000_1_465.gz', '2011-11-03 17:28:53', '1', '2011-11-03 17:28:53');
INSERT INTO `exp_trans_mark` VALUES ('328', '1320312600000-1320314400000', 'billing_1320312600000_1320314400000_1_117.gz', '2011-11-03 17:58:53', '1', '2011-11-03 17:58:53');
INSERT INTO `exp_trans_mark` VALUES ('329', '1320314400000-1320316200000', 'billing_1320314400000_1320316200000_1_158.gz', '2011-11-03 18:28:53', '1', '2011-11-03 18:28:53');
INSERT INTO `exp_trans_mark` VALUES ('330', '1320316200000-1320318000000', 'billing_1320316200000_1320318000000_1_913.gz', '2011-11-03 18:58:53', '1', '2011-11-03 18:58:53');
INSERT INTO `exp_trans_mark` VALUES ('331', '1320318000000-1320319800000', 'billing_1320318000000_1320319800000_1_327.gz', '2011-11-03 19:28:53', '1', '2011-11-03 19:28:53');
INSERT INTO `exp_trans_mark` VALUES ('332', '1320319800000-1320321600000', 'billing_1320319800000_1320321600000_1_721.gz', '2011-11-03 19:58:52', '1', '2011-11-03 19:58:52');
INSERT INTO `exp_trans_mark` VALUES ('333', '1320321600000-1320323400000', 'billing_1320321600000_1320323400000_1_120.gz', '2011-11-03 20:28:53', '1', '2011-11-03 20:28:53');
INSERT INTO `exp_trans_mark` VALUES ('334', '1320323400000-1320325200000', 'billing_1320323400000_1320325200000_1_767.gz', '2011-11-03 20:58:53', '1', '2011-11-03 20:58:53');
INSERT INTO `exp_trans_mark` VALUES ('335', '1320325200000-1320327000000', 'billing_1320325200000_1320327000000_1_740.gz', '2011-11-03 21:28:53', '1', '2011-11-03 21:28:53');
INSERT INTO `exp_trans_mark` VALUES ('336', '1320327000000-1320328800000', 'billing_1320327000000_1320328800000_1_997.gz', '2011-11-03 21:58:53', '1', '2011-11-03 21:58:53');
INSERT INTO `exp_trans_mark` VALUES ('337', '1320328800000-1320330600000', 'billing_1320328800000_1320330600000_1_208.gz', '2011-11-03 22:28:53', '1', '2011-11-03 22:28:53');
INSERT INTO `exp_trans_mark` VALUES ('338', '1320330600000-1320332400000', 'billing_1320330600000_1320332400000_1_108.gz', '2011-11-03 22:58:53', '1', '2011-11-03 22:58:53');
INSERT INTO `exp_trans_mark` VALUES ('339', '1320332400000-1320334200000', 'billing_1320332400000_1320334200000_1_783.gz', '2011-11-03 23:28:52', '1', '2011-11-03 23:28:52');
INSERT INTO `exp_trans_mark` VALUES ('340', '1320334200000-1320336000000', 'billing_1320334200000_1320336000000_1_984.gz', '2011-11-03 23:58:53', '1', '2011-11-03 23:58:53');
INSERT INTO `exp_trans_mark` VALUES ('341', '1320336000000-1320337800000', 'billing_1320336000000_1320337800000_1_418.gz', '2011-11-04 00:28:53', '1', '2011-11-04 00:28:53');
INSERT INTO `exp_trans_mark` VALUES ('342', '1320337800000-1320339600000', 'billing_1320337800000_1320339600000_1_807.gz', '2011-11-04 00:58:53', '1', '2011-11-04 00:58:53');
INSERT INTO `exp_trans_mark` VALUES ('343', '1320339600000-1320341400000', 'billing_1320339600000_1320341400000_1_657.gz', '2011-11-04 01:28:53', '1', '2011-11-04 01:28:53');
INSERT INTO `exp_trans_mark` VALUES ('344', '1320341400000-1320343200000', 'billing_1320341400000_1320343200000_1_910.gz', '2011-11-04 01:58:53', '1', '2011-11-04 01:58:53');
INSERT INTO `exp_trans_mark` VALUES ('345', '1320343200000-1320345000000', 'billing_1320343200000_1320345000000_1_995.gz', '2011-11-04 02:28:53', '1', '2011-11-04 02:28:53');
INSERT INTO `exp_trans_mark` VALUES ('346', '1320345000000-1320346800000', 'billing_1320345000000_1320346800000_1_743.gz', '2011-11-04 02:58:53', '1', '2011-11-04 02:58:53');
INSERT INTO `exp_trans_mark` VALUES ('347', '1320346800000-1320348600000', 'billing_1320346800000_1320348600000_1_172.gz', '2011-11-04 03:28:53', '1', '2011-11-04 03:28:53');
INSERT INTO `exp_trans_mark` VALUES ('348', '1320348600000-1320350400000', 'billing_1320348600000_1320350400000_1_781.gz', '2011-11-04 03:58:53', '1', '2011-11-04 03:58:53');
INSERT INTO `exp_trans_mark` VALUES ('349', '1320350400000-1320352200000', 'billing_1320350400000_1320352200000_1_515.gz', '2011-11-04 04:28:53', '1', '2011-11-04 04:28:53');
INSERT INTO `exp_trans_mark` VALUES ('350', '1320352200000-1320354000000', 'billing_1320352200000_1320354000000_1_416.gz', '2011-11-04 04:58:53', '1', '2011-11-04 04:58:53');
INSERT INTO `exp_trans_mark` VALUES ('351', '1320354000000-1320355800000', 'billing_1320354000000_1320355800000_1_592.gz', '2011-11-04 05:28:52', '1', '2011-11-04 05:28:52');
INSERT INTO `exp_trans_mark` VALUES ('352', '1320355800000-1320357600000', 'billing_1320355800000_1320357600000_1_409.gz', '2011-11-04 05:58:52', '1', '2011-11-04 05:58:52');
INSERT INTO `exp_trans_mark` VALUES ('353', '1320357600000-1320359400000', 'billing_1320357600000_1320359400000_1_357.gz', '2011-11-04 06:28:53', '1', '2011-11-04 06:28:53');
INSERT INTO `exp_trans_mark` VALUES ('354', '1320359400000-1320361200000', 'billing_1320359400000_1320361200000_1_344.gz', '2011-11-04 06:58:53', '1', '2011-11-04 06:58:53');
INSERT INTO `exp_trans_mark` VALUES ('355', '1320361200000-1320363000000', 'billing_1320361200000_1320363000000_1_95.gz', '2011-11-04 07:28:53', '1', '2011-11-04 07:28:53');
INSERT INTO `exp_trans_mark` VALUES ('356', '1320363000000-1320364800000', 'billing_1320363000000_1320364800000_1_778.gz', '2011-11-04 07:58:52', '1', '2011-11-04 07:58:53');
INSERT INTO `exp_trans_mark` VALUES ('357', '1320364800000-1320366600000', 'billing_1320364800000_1320366600000_1_709.gz', '2011-11-04 08:28:53', '1', '2011-11-04 08:28:53');
INSERT INTO `exp_trans_mark` VALUES ('358', '1320366600000-1320368400000', 'billing_1320366600000_1320368400000_1_468.gz', '2011-11-04 08:58:52', '1', '2011-11-04 08:58:52');
INSERT INTO `exp_trans_mark` VALUES ('359', '1320368400000-1320370200000', 'billing_1320368400000_1320370200000_1_502.gz', '2011-11-04 09:28:53', '1', '2011-11-04 09:28:53');
INSERT INTO `exp_trans_mark` VALUES ('360', '1320370200000-1320372000000', 'billing_1320370200000_1320372000000_1_714.gz', '2011-11-04 09:58:53', '1', '2011-11-04 09:58:53');
INSERT INTO `exp_trans_mark` VALUES ('361', '1320372000000-1320373800000', 'billing_1320372000000_1320373800000_1_357.gz', '2011-11-04 10:28:52', '1', '2011-11-04 10:28:52');
INSERT INTO `exp_trans_mark` VALUES ('362', '1320373800000-1320375600000', 'billing_1320373800000_1320375600000_1_536.gz', '2011-11-04 10:58:52', '1', '2011-11-04 10:58:53');
INSERT INTO `exp_trans_mark` VALUES ('363', '1320375600000-1320377400000', 'billing_1320375600000_1320377400000_1_232.gz', '2011-11-04 11:28:53', '1', '2011-11-04 11:28:53');
INSERT INTO `exp_trans_mark` VALUES ('364', '1320377400000-1320379200000', 'billing_1320377400000_1320379200000_1_458.gz', '2011-11-04 11:58:53', '1', '2011-11-04 11:58:53');
INSERT INTO `exp_trans_mark` VALUES ('365', '1320379200000-1320381000000', 'billing_1320379200000_1320381000000_1_112.gz', '2011-11-04 12:28:53', '1', '2011-11-04 12:28:53');
INSERT INTO `exp_trans_mark` VALUES ('366', '1320381000000-1320382800000', 'billing_1320381000000_1320382800000_1_243.gz', '2011-11-04 12:58:53', '1', '2011-11-04 12:58:53');
INSERT INTO `exp_trans_mark` VALUES ('367', '1320382800000-1320384600000', 'billing_1320382800000_1320384600000_1_235.gz', '2011-11-04 13:28:53', '1', '2011-11-04 13:28:53');
INSERT INTO `exp_trans_mark` VALUES ('368', '1320384600000-1320386400000', 'billing_1320384600000_1320386400000_1_737.gz', '2011-11-04 13:58:53', '1', '2011-11-04 13:58:53');
INSERT INTO `exp_trans_mark` VALUES ('369', '1320386400000-1320388200000', 'billing_1320386400000_1320388200000_1_568.gz', '2011-11-04 14:28:53', '1', '2011-11-04 14:28:53');
INSERT INTO `exp_trans_mark` VALUES ('370', '1320388200000-1320390000000', 'billing_1320388200000_1320390000000_1_181.gz', '2011-11-04 14:58:53', '1', '2011-11-04 14:58:53');
INSERT INTO `exp_trans_mark` VALUES ('371', '1320390000000-1320391800000', 'billing_1320390000000_1320391800000_1_789.gz', '2011-11-04 15:28:53', '1', '2011-11-04 15:28:53');
INSERT INTO `exp_trans_mark` VALUES ('372', '1320391800000-1320393600000', 'billing_1320391800000_1320393600000_1_207.gz', '2011-11-04 15:58:53', '1', '2011-11-04 15:58:53');
INSERT INTO `exp_trans_mark` VALUES ('373', '1320393600000-1320395400000', 'billing_1320393600000_1320395400000_1_982.gz', '2011-11-04 16:28:53', '1', '2011-11-04 16:28:53');
INSERT INTO `exp_trans_mark` VALUES ('374', '1320395400000-1320397200000', 'billing_1320395400000_1320397200000_1_526.gz', '2011-11-04 16:58:52', '1', '2011-11-04 16:58:52');
INSERT INTO `exp_trans_mark` VALUES ('375', '1320397200000-1320399000000', 'billing_1320397200000_1320399000000_1_560.gz', '2011-11-04 17:28:53', '1', '2011-11-04 17:28:53');
INSERT INTO `exp_trans_mark` VALUES ('376', '1320399000000-1320400800000', 'billing_1320399000000_1320400800000_1_634.gz', '2011-11-04 17:58:53', '1', '2011-11-04 17:58:53');
INSERT INTO `exp_trans_mark` VALUES ('377', '1320400800000-1320402600000', 'billing_1320400800000_1320402600000_1_588.gz', '2011-11-04 18:28:52', '1', '2011-11-04 18:28:53');
INSERT INTO `exp_trans_mark` VALUES ('378', '1320402600000-1320404400000', 'billing_1320402600000_1320404400000_1_58.gz', '2011-11-04 18:58:52', '1', '2011-11-04 18:58:52');
INSERT INTO `exp_trans_mark` VALUES ('379', '1320404400000-1320406200000', 'billing_1320404400000_1320406200000_1_9.gz', '2011-11-04 19:28:53', '1', '2011-11-04 19:28:53');
INSERT INTO `exp_trans_mark` VALUES ('380', '1320406200000-1320408000000', 'billing_1320406200000_1320408000000_1_32.gz', '2011-11-04 19:58:52', '1', '2011-11-04 19:58:53');
INSERT INTO `exp_trans_mark` VALUES ('381', '1320408000000-1320409800000', 'billing_1320408000000_1320409800000_1_604.gz', '2011-11-04 20:28:53', '1', '2011-11-04 20:28:53');
INSERT INTO `exp_trans_mark` VALUES ('382', '1320409800000-1320411600000', 'billing_1320409800000_1320411600000_1_484.gz', '2011-11-04 20:58:53', '1', '2011-11-04 20:58:53');
INSERT INTO `exp_trans_mark` VALUES ('383', '1320411600000-1320413400000', 'billing_1320411600000_1320413400000_1_77.gz', '2011-11-04 21:28:53', '1', '2011-11-04 21:28:53');
INSERT INTO `exp_trans_mark` VALUES ('384', '1320413400000-1320415200000', 'billing_1320413400000_1320415200000_1_345.gz', '2011-11-04 21:58:53', '1', '2011-11-04 21:58:53');
INSERT INTO `exp_trans_mark` VALUES ('385', '1320415200000-1320417000000', 'billing_1320415200000_1320417000000_1_649.gz', '2011-11-04 22:28:53', '1', '2011-11-04 22:28:53');
INSERT INTO `exp_trans_mark` VALUES ('386', '1320417000000-1320418800000', 'billing_1320417000000_1320418800000_1_228.gz', '2011-11-04 22:58:53', '1', '2011-11-04 22:58:53');
INSERT INTO `exp_trans_mark` VALUES ('387', '1320418800000-1320420600000', 'billing_1320418800000_1320420600000_1_939.gz', '2011-11-04 23:28:53', '1', '2011-11-04 23:28:53');
INSERT INTO `exp_trans_mark` VALUES ('388', '1320420600000-1320422400000', 'billing_1320420600000_1320422400000_1_61.gz', '2011-11-04 23:58:53', '1', '2011-11-04 23:58:53');
INSERT INTO `exp_trans_mark` VALUES ('389', '1320422400000-1320424200000', 'billing_1320422400000_1320424200000_1_652.gz', '2011-11-05 00:28:52', '1', '2011-11-05 00:28:52');
INSERT INTO `exp_trans_mark` VALUES ('390', '1320424200000-1320426000000', 'billing_1320424200000_1320426000000_1_249.gz', '2011-11-05 00:58:53', '1', '2011-11-05 00:58:53');
INSERT INTO `exp_trans_mark` VALUES ('391', '1320426000000-1320427800000', 'billing_1320426000000_1320427800000_1_877.gz', '2011-11-05 01:28:53', '1', '2011-11-05 01:28:53');
INSERT INTO `exp_trans_mark` VALUES ('392', '1320427800000-1320429600000', 'billing_1320427800000_1320429600000_1_700.gz', '2011-11-05 01:58:52', '1', '2011-11-05 01:58:52');
INSERT INTO `exp_trans_mark` VALUES ('393', '1320429600000-1320431400000', 'billing_1320429600000_1320431400000_1_174.gz', '2011-11-05 02:28:53', '1', '2011-11-05 02:28:53');
INSERT INTO `exp_trans_mark` VALUES ('394', '1320431400000-1320433200000', 'billing_1320431400000_1320433200000_1_517.gz', '2011-11-05 02:58:53', '1', '2011-11-05 02:58:53');
INSERT INTO `exp_trans_mark` VALUES ('395', '1320433200000-1320435000000', 'billing_1320433200000_1320435000000_1_529.gz', '2011-11-05 03:28:53', '1', '2011-11-05 03:28:53');
INSERT INTO `exp_trans_mark` VALUES ('396', '1320435000000-1320436800000', 'billing_1320435000000_1320436800000_1_292.gz', '2011-11-05 03:58:53', '1', '2011-11-05 03:58:53');
INSERT INTO `exp_trans_mark` VALUES ('397', '1320436800000-1320438600000', 'billing_1320436800000_1320438600000_1_640.gz', '2011-11-05 04:28:53', '1', '2011-11-05 04:28:53');
INSERT INTO `exp_trans_mark` VALUES ('398', '1320438600000-1320440400000', 'billing_1320438600000_1320440400000_1_211.gz', '2011-11-05 04:58:53', '1', '2011-11-05 04:58:53');
INSERT INTO `exp_trans_mark` VALUES ('399', '1320440400000-1320442200000', 'billing_1320440400000_1320442200000_1_970.gz', '2011-11-05 05:28:53', '1', '2011-11-05 05:28:53');
INSERT INTO `exp_trans_mark` VALUES ('400', '1320442200000-1320444000000', 'billing_1320442200000_1320444000000_1_330.gz', '2011-11-05 05:58:53', '1', '2011-11-05 05:58:53');
INSERT INTO `exp_trans_mark` VALUES ('401', '1320444000000-1320445800000', 'billing_1320444000000_1320445800000_1_658.gz', '2011-11-05 06:28:53', '1', '2011-11-05 06:28:53');
INSERT INTO `exp_trans_mark` VALUES ('402', '1320445800000-1320447600000', 'billing_1320445800000_1320447600000_1_271.gz', '2011-11-05 06:58:53', '1', '2011-11-05 06:58:53');
INSERT INTO `exp_trans_mark` VALUES ('403', '1320447600000-1320449400000', 'billing_1320447600000_1320449400000_1_95.gz', '2011-11-05 07:28:52', '1', '2011-11-05 07:28:52');
INSERT INTO `exp_trans_mark` VALUES ('404', '1320449400000-1320451200000', 'billing_1320449400000_1320451200000_1_109.gz', '2011-11-05 07:58:53', '1', '2011-11-05 07:58:53');
INSERT INTO `exp_trans_mark` VALUES ('405', '1320451200000-1320453000000', 'billing_1320451200000_1320453000000_1_677.gz', '2011-11-05 08:28:53', '1', '2011-11-05 08:28:53');
INSERT INTO `exp_trans_mark` VALUES ('406', '1320453000000-1320454800000', 'billing_1320453000000_1320454800000_1_875.gz', '2011-11-05 08:58:53', '1', '2011-11-05 08:58:53');
INSERT INTO `exp_trans_mark` VALUES ('407', '1320454800000-1320456600000', 'billing_1320454800000_1320456600000_1_456.gz', '2011-11-05 09:28:53', '1', '2011-11-05 09:28:53');
INSERT INTO `exp_trans_mark` VALUES ('408', '1320456600000-1320458400000', 'billing_1320456600000_1320458400000_1_885.gz', '2011-11-05 09:58:53', '1', '2011-11-05 09:58:53');
INSERT INTO `exp_trans_mark` VALUES ('409', '1320458400000-1320460200000', 'billing_1320458400000_1320460200000_1_730.gz', '2011-11-05 10:28:53', '1', '2011-11-05 10:28:53');
INSERT INTO `exp_trans_mark` VALUES ('410', '1320460200000-1320462000000', 'billing_1320460200000_1320462000000_1_779.gz', '2011-11-05 10:58:52', '1', '2011-11-05 10:58:52');
INSERT INTO `exp_trans_mark` VALUES ('411', '1320462000000-1320463800000', 'billing_1320462000000_1320463800000_1_161.gz', '2011-11-05 11:28:52', '1', '2011-11-05 11:28:52');
INSERT INTO `exp_trans_mark` VALUES ('412', '1320463800000-1320465600000', 'billing_1320463800000_1320465600000_1_34.gz', '2011-11-05 11:58:53', '1', '2011-11-05 11:58:53');
INSERT INTO `exp_trans_mark` VALUES ('413', '1320465600000-1320467400000', 'billing_1320465600000_1320467400000_1_390.gz', '2011-11-05 12:28:53', '1', '2011-11-05 12:28:53');
INSERT INTO `exp_trans_mark` VALUES ('414', '1320467400000-1320469200000', 'billing_1320467400000_1320469200000_1_679.gz', '2011-11-05 12:58:53', '1', '2011-11-05 12:58:53');
INSERT INTO `exp_trans_mark` VALUES ('415', '1320469200000-1320471000000', 'billing_1320469200000_1320471000000_1_701.gz', '2011-11-05 13:28:52', '1', '2011-11-05 13:28:52');
INSERT INTO `exp_trans_mark` VALUES ('416', '1320471000000-1320472800000', 'billing_1320471000000_1320472800000_1_85.gz', '2011-11-05 13:58:53', '1', '2011-11-05 13:58:53');
INSERT INTO `exp_trans_mark` VALUES ('417', '1320472800000-1320474600000', 'billing_1320472800000_1320474600000_1_70.gz', '2011-11-05 14:28:52', '1', '2011-11-05 14:28:52');
INSERT INTO `exp_trans_mark` VALUES ('418', '1320474600000-1320476400000', 'billing_1320474600000_1320476400000_1_501.gz', '2011-11-05 14:58:53', '1', '2011-11-05 14:58:53');
INSERT INTO `exp_trans_mark` VALUES ('419', '1320476400000-1320478200000', 'billing_1320476400000_1320478200000_1_196.gz', '2011-11-05 15:28:53', '1', '2011-11-05 15:28:53');
INSERT INTO `exp_trans_mark` VALUES ('420', '1320478200000-1320480000000', 'billing_1320478200000_1320480000000_1_424.gz', '2011-11-05 15:58:52', '1', '2011-11-05 15:58:53');
INSERT INTO `exp_trans_mark` VALUES ('421', '1320480000000-1320481800000', 'billing_1320480000000_1320481800000_1_884.gz', '2011-11-05 16:28:53', '1', '2011-11-05 16:28:53');
INSERT INTO `exp_trans_mark` VALUES ('422', '1320481800000-1320483600000', 'billing_1320481800000_1320483600000_1_233.gz', '2011-11-05 16:58:53', '1', '2011-11-05 16:58:53');
INSERT INTO `exp_trans_mark` VALUES ('423', '1320483600000-1320485400000', 'billing_1320483600000_1320485400000_1_525.gz', '2011-11-05 17:28:52', '1', '2011-11-05 17:28:53');
INSERT INTO `exp_trans_mark` VALUES ('424', '1320485400000-1320487200000', 'billing_1320485400000_1320487200000_1_96.gz', '2011-11-05 17:58:53', '1', '2011-11-05 17:58:53');
INSERT INTO `exp_trans_mark` VALUES ('425', '1320487200000-1320489000000', 'billing_1320487200000_1320489000000_1_501.gz', '2011-11-05 18:28:53', '1', '2011-11-05 18:28:53');
INSERT INTO `exp_trans_mark` VALUES ('426', '1320489000000-1320490800000', 'billing_1320489000000_1320490800000_1_776.gz', '2011-11-05 18:58:53', '1', '2011-11-05 18:58:53');
INSERT INTO `exp_trans_mark` VALUES ('427', '1320490800000-1320492600000', 'billing_1320490800000_1320492600000_1_869.gz', '2011-11-05 19:28:53', '1', '2011-11-05 19:28:53');
INSERT INTO `exp_trans_mark` VALUES ('428', '1320492600000-1320494400000', 'billing_1320492600000_1320494400000_1_577.gz', '2011-11-05 19:58:53', '1', '2011-11-05 19:58:53');
INSERT INTO `exp_trans_mark` VALUES ('429', '1320494400000-1320496200000', 'billing_1320494400000_1320496200000_1_997.gz', '2011-11-05 20:28:52', '1', '2011-11-05 20:28:52');
INSERT INTO `exp_trans_mark` VALUES ('430', '1320496200000-1320498000000', 'billing_1320496200000_1320498000000_1_108.gz', '2011-11-05 20:58:52', '1', '2011-11-05 20:58:52');
INSERT INTO `exp_trans_mark` VALUES ('431', '1320498000000-1320499800000', 'billing_1320498000000_1320499800000_1_310.gz', '2011-11-05 21:28:53', '1', '2011-11-05 21:28:53');
INSERT INTO `exp_trans_mark` VALUES ('432', '1320499800000-1320501600000', 'billing_1320499800000_1320501600000_1_754.gz', '2011-11-05 21:58:53', '1', '2011-11-05 21:58:53');
INSERT INTO `exp_trans_mark` VALUES ('433', '1320501600000-1320503400000', 'billing_1320501600000_1320503400000_1_250.gz', '2011-11-05 22:28:53', '1', '2011-11-05 22:28:53');
INSERT INTO `exp_trans_mark` VALUES ('434', '1320503400000-1320505200000', 'billing_1320503400000_1320505200000_1_183.gz', '2011-11-05 22:58:53', '1', '2011-11-05 22:58:53');
INSERT INTO `exp_trans_mark` VALUES ('435', '1320505200000-1320507000000', 'billing_1320505200000_1320507000000_1_274.gz', '2011-11-05 23:28:53', '1', '2011-11-05 23:28:53');
INSERT INTO `exp_trans_mark` VALUES ('436', '1320507000000-1320508800000', 'billing_1320507000000_1320508800000_1_647.gz', '2011-11-05 23:58:53', '1', '2011-11-05 23:58:53');
INSERT INTO `exp_trans_mark` VALUES ('437', '1320508800000-1320510600000', 'billing_1320508800000_1320510600000_1_684.gz', '2011-11-06 00:28:52', '1', '2011-11-06 00:28:52');
INSERT INTO `exp_trans_mark` VALUES ('438', '1320510600000-1320512400000', 'billing_1320510600000_1320512400000_1_380.gz', '2011-11-06 00:58:52', '1', '2011-11-06 00:58:52');
INSERT INTO `exp_trans_mark` VALUES ('439', '1320512400000-1320514200000', 'billing_1320512400000_1320514200000_1_739.gz', '2011-11-06 01:28:53', '1', '2011-11-06 01:28:53');
INSERT INTO `exp_trans_mark` VALUES ('440', '1320514200000-1320516000000', 'billing_1320514200000_1320516000000_1_119.gz', '2011-11-06 01:58:53', '1', '2011-11-06 01:58:53');
INSERT INTO `exp_trans_mark` VALUES ('441', '1320516000000-1320517800000', 'billing_1320516000000_1320517800000_1_611.gz', '2011-11-06 02:28:52', '1', '2011-11-06 02:28:53');
INSERT INTO `exp_trans_mark` VALUES ('442', '1320517800000-1320519600000', 'billing_1320517800000_1320519600000_1_31.gz', '2011-11-06 02:58:53', '1', '2011-11-06 02:58:53');
INSERT INTO `exp_trans_mark` VALUES ('443', '1320519600000-1320521400000', 'billing_1320519600000_1320521400000_1_614.gz', '2011-11-06 03:28:53', '1', '2011-11-06 03:28:53');
INSERT INTO `exp_trans_mark` VALUES ('444', '1320521400000-1320523200000', 'billing_1320521400000_1320523200000_1_550.gz', '2011-11-06 03:58:53', '1', '2011-11-06 03:58:53');
INSERT INTO `exp_trans_mark` VALUES ('445', '1320523200000-1320525000000', 'billing_1320523200000_1320525000000_1_3.gz', '2011-11-06 04:28:53', '1', '2011-11-06 04:28:53');
INSERT INTO `exp_trans_mark` VALUES ('446', '1320525000000-1320526800000', 'billing_1320525000000_1320526800000_1_242.gz', '2011-11-06 04:58:52', '1', '2011-11-06 04:58:52');
INSERT INTO `exp_trans_mark` VALUES ('447', '1320526800000-1320528600000', 'billing_1320526800000_1320528600000_1_5.gz', '2011-11-06 05:28:53', '1', '2011-11-06 05:28:53');
INSERT INTO `exp_trans_mark` VALUES ('448', '1320528600000-1320530400000', 'billing_1320528600000_1320530400000_1_941.gz', '2011-11-06 05:58:53', '1', '2011-11-06 05:58:53');
INSERT INTO `exp_trans_mark` VALUES ('449', '1320530400000-1320532200000', 'billing_1320530400000_1320532200000_1_321.gz', '2011-11-06 06:28:53', '1', '2011-11-06 06:28:53');
INSERT INTO `exp_trans_mark` VALUES ('450', '1320532200000-1320534000000', 'billing_1320532200000_1320534000000_1_307.gz', '2011-11-06 06:58:52', '1', '2011-11-06 06:58:52');
INSERT INTO `exp_trans_mark` VALUES ('451', '1320534000000-1320535800000', 'billing_1320534000000_1320535800000_1_225.gz', '2011-11-06 07:28:53', '1', '2011-11-06 07:28:53');
INSERT INTO `exp_trans_mark` VALUES ('452', '1320535800000-1320537600000', 'billing_1320535800000_1320537600000_1_756.gz', '2011-11-06 07:58:52', '1', '2011-11-06 07:58:52');
INSERT INTO `exp_trans_mark` VALUES ('453', '1320537600000-1320539400000', 'billing_1320537600000_1320539400000_1_860.gz', '2011-11-06 08:28:52', '1', '2011-11-06 08:28:52');
INSERT INTO `exp_trans_mark` VALUES ('454', '1320539400000-1320541200000', 'billing_1320539400000_1320541200000_1_25.gz', '2011-11-06 08:58:53', '1', '2011-11-06 08:58:53');
INSERT INTO `exp_trans_mark` VALUES ('455', '1320541200000-1320543000000', 'billing_1320541200000_1320543000000_1_527.gz', '2011-11-06 09:28:53', '1', '2011-11-06 09:28:53');
INSERT INTO `exp_trans_mark` VALUES ('456', '1320543000000-1320544800000', 'billing_1320543000000_1320544800000_1_53.gz', '2011-11-06 09:58:52', '1', '2011-11-06 09:58:53');
INSERT INTO `exp_trans_mark` VALUES ('457', '1320544800000-1320546600000', 'billing_1320544800000_1320546600000_1_63.gz', '2011-11-06 10:28:53', '1', '2011-11-06 10:28:53');
INSERT INTO `exp_trans_mark` VALUES ('458', '1320546600000-1320548400000', 'billing_1320546600000_1320548400000_1_570.gz', '2011-11-06 10:58:53', '1', '2011-11-06 10:58:53');
INSERT INTO `exp_trans_mark` VALUES ('459', '1320548400000-1320550200000', 'billing_1320548400000_1320550200000_1_393.gz', '2011-11-06 11:28:53', '1', '2011-11-06 11:28:53');
INSERT INTO `exp_trans_mark` VALUES ('460', '1320550200000-1320552000000', 'billing_1320550200000_1320552000000_1_251.gz', '2011-11-06 11:58:52', '1', '2011-11-06 11:58:52');
INSERT INTO `exp_trans_mark` VALUES ('461', '1320552000000-1320553800000', 'billing_1320552000000_1320553800000_1_800.gz', '2011-11-06 12:28:53', '1', '2011-11-06 12:28:53');
INSERT INTO `exp_trans_mark` VALUES ('462', '1320553800000-1320555600000', 'billing_1320553800000_1320555600000_1_144.gz', '2011-11-06 12:58:52', '1', '2011-11-06 12:58:53');
INSERT INTO `exp_trans_mark` VALUES ('463', '1320555600000-1320557400000', 'billing_1320555600000_1320557400000_1_577.gz', '2011-11-06 13:28:53', '1', '2011-11-06 13:28:53');
INSERT INTO `exp_trans_mark` VALUES ('464', '1320557400000-1320559200000', 'billing_1320557400000_1320559200000_1_420.gz', '2011-11-06 13:58:53', '1', '2011-11-06 13:58:53');
INSERT INTO `exp_trans_mark` VALUES ('465', '1320559200000-1320561000000', 'billing_1320559200000_1320561000000_1_236.gz', '2011-11-06 14:28:53', '1', '2011-11-06 14:28:53');
INSERT INTO `exp_trans_mark` VALUES ('466', '1320561000000-1320562800000', 'billing_1320561000000_1320562800000_1_3.gz', '2011-11-06 14:58:53', '1', '2011-11-06 14:58:53');
INSERT INTO `exp_trans_mark` VALUES ('467', '1320562800000-1320564600000', 'billing_1320562800000_1320564600000_1_286.gz', '2011-11-06 15:28:53', '1', '2011-11-06 15:28:53');
INSERT INTO `exp_trans_mark` VALUES ('468', '1320564600000-1320566400000', 'billing_1320564600000_1320566400000_1_837.gz', '2011-11-06 15:58:53', '1', '2011-11-06 15:58:53');
INSERT INTO `exp_trans_mark` VALUES ('469', '1320566400000-1320568200000', 'billing_1320566400000_1320568200000_1_658.gz', '2011-11-06 16:28:52', '1', '2011-11-06 16:28:52');
INSERT INTO `exp_trans_mark` VALUES ('470', '1320568200000-1320570000000', 'billing_1320568200000_1320570000000_1_640.gz', '2011-11-06 16:58:53', '1', '2011-11-06 16:58:53');
INSERT INTO `exp_trans_mark` VALUES ('471', '1320570000000-1320571800000', 'billing_1320570000000_1320571800000_1_44.gz', '2011-11-06 17:28:52', '1', '2011-11-06 17:28:52');
INSERT INTO `exp_trans_mark` VALUES ('472', '1320571800000-1320573600000', 'billing_1320571800000_1320573600000_1_827.gz', '2011-11-06 17:58:52', '1', '2011-11-06 17:58:52');
INSERT INTO `exp_trans_mark` VALUES ('473', '1320573600000-1320575400000', 'billing_1320573600000_1320575400000_1_102.gz', '2011-11-06 18:28:53', '1', '2011-11-06 18:28:53');
INSERT INTO `exp_trans_mark` VALUES ('474', '1320575400000-1320577200000', 'billing_1320575400000_1320577200000_1_514.gz', '2011-11-06 18:58:53', '1', '2011-11-06 18:58:53');
INSERT INTO `exp_trans_mark` VALUES ('475', '1320577200000-1320579000000', 'billing_1320577200000_1320579000000_1_437.gz', '2011-11-06 19:28:53', '1', '2011-11-06 19:28:53');
INSERT INTO `exp_trans_mark` VALUES ('476', '1320579000000-1320580800000', 'billing_1320579000000_1320580800000_1_316.gz', '2011-11-06 19:58:53', '1', '2011-11-06 19:58:53');
INSERT INTO `exp_trans_mark` VALUES ('477', '1320580800000-1320582600000', 'billing_1320580800000_1320582600000_1_346.gz', '2011-11-06 20:28:53', '1', '2011-11-06 20:28:53');
INSERT INTO `exp_trans_mark` VALUES ('478', '1320582600000-1320584400000', 'billing_1320582600000_1320584400000_1_33.gz', '2011-11-06 20:58:52', '1', '2011-11-06 20:58:53');
INSERT INTO `exp_trans_mark` VALUES ('479', '1320584400000-1320586200000', 'billing_1320584400000_1320586200000_1_614.gz', '2011-11-06 21:28:53', '1', '2011-11-06 21:28:53');
INSERT INTO `exp_trans_mark` VALUES ('480', '1320586200000-1320588000000', 'billing_1320586200000_1320588000000_1_664.gz', '2011-11-06 21:58:53', '1', '2011-11-06 21:58:53');
INSERT INTO `exp_trans_mark` VALUES ('481', '1320588000000-1320589800000', 'billing_1320588000000_1320589800000_1_20.gz', '2011-11-06 22:28:53', '1', '2011-11-06 22:28:53');
INSERT INTO `exp_trans_mark` VALUES ('482', '1320589800000-1320591600000', 'billing_1320589800000_1320591600000_1_695.gz', '2011-11-06 22:58:53', '1', '2011-11-06 22:58:53');
INSERT INTO `exp_trans_mark` VALUES ('483', '1320591600000-1320593400000', 'billing_1320591600000_1320593400000_1_264.gz', '2011-11-06 23:28:53', '1', '2011-11-06 23:28:53');
INSERT INTO `exp_trans_mark` VALUES ('484', '1320593400000-1320595200000', 'billing_1320593400000_1320595200000_1_23.gz', '2011-11-06 23:58:53', '1', '2011-11-06 23:58:53');
INSERT INTO `exp_trans_mark` VALUES ('485', '1320595200000-1320597000000', 'billing_1320595200000_1320597000000_1_346.gz', '2011-11-07 00:28:52', '1', '2011-11-07 00:28:53');
INSERT INTO `exp_trans_mark` VALUES ('486', '1320597000000-1320598800000', 'billing_1320597000000_1320598800000_1_928.gz', '2011-11-07 00:58:53', '1', '2011-11-07 00:58:53');
INSERT INTO `exp_trans_mark` VALUES ('487', '1320598800000-1320600600000', 'billing_1320598800000_1320600600000_1_108.gz', '2011-11-07 01:28:53', '1', '2011-11-07 01:28:53');
INSERT INTO `exp_trans_mark` VALUES ('488', '1320600600000-1320602400000', 'billing_1320600600000_1320602400000_1_718.gz', '2011-11-07 01:58:53', '1', '2011-11-07 01:58:53');
INSERT INTO `exp_trans_mark` VALUES ('489', '1320602400000-1320604200000', 'billing_1320602400000_1320604200000_1_787.gz', '2011-11-07 02:28:53', '1', '2011-11-07 02:28:53');
INSERT INTO `exp_trans_mark` VALUES ('490', '1320604200000-1320606000000', 'billing_1320604200000_1320606000000_1_459.gz', '2011-11-07 02:58:52', '1', '2011-11-07 02:58:52');
INSERT INTO `exp_trans_mark` VALUES ('491', '1320606000000-1320607800000', 'billing_1320606000000_1320607800000_1_410.gz', '2011-11-07 03:28:53', '1', '2011-11-07 03:28:53');
INSERT INTO `exp_trans_mark` VALUES ('492', '1320607800000-1320609600000', 'billing_1320607800000_1320609600000_1_217.gz', '2011-11-07 03:58:53', '1', '2011-11-07 03:58:53');
INSERT INTO `exp_trans_mark` VALUES ('493', '1320609600000-1320611400000', 'billing_1320609600000_1320611400000_1_648.gz', '2011-11-07 04:28:53', '1', '2011-11-07 04:28:53');
INSERT INTO `exp_trans_mark` VALUES ('494', '1320611400000-1320613200000', 'billing_1320611400000_1320613200000_1_295.gz', '2011-11-07 04:58:52', '1', '2011-11-07 04:58:52');
INSERT INTO `exp_trans_mark` VALUES ('495', '1320613200000-1320615000000', 'billing_1320613200000_1320615000000_1_529.gz', '2011-11-07 05:28:52', '1', '2011-11-07 05:28:52');
INSERT INTO `exp_trans_mark` VALUES ('496', '1320615000000-1320616800000', 'billing_1320615000000_1320616800000_1_955.gz', '2011-11-07 05:58:53', '1', '2011-11-07 05:58:53');
INSERT INTO `exp_trans_mark` VALUES ('497', '1320616800000-1320618600000', 'billing_1320616800000_1320618600000_1_493.gz', '2011-11-07 06:28:53', '1', '2011-11-07 06:28:53');
INSERT INTO `exp_trans_mark` VALUES ('498', '1320618600000-1320620400000', 'billing_1320618600000_1320620400000_1_423.gz', '2011-11-07 06:58:53', '1', '2011-11-07 06:58:53');
INSERT INTO `exp_trans_mark` VALUES ('499', '1320620400000-1320622200000', 'billing_1320620400000_1320622200000_1_314.gz', '2011-11-07 07:28:52', '1', '2011-11-07 07:28:52');
INSERT INTO `exp_trans_mark` VALUES ('500', '1320622200000-1320624000000', 'billing_1320622200000_1320624000000_1_197.gz', '2011-11-07 07:58:52', '1', '2011-11-07 07:58:52');
INSERT INTO `exp_trans_mark` VALUES ('501', '1320624000000-1320625800000', 'billing_1320624000000_1320625800000_1_700.gz', '2011-11-07 08:28:52', '1', '2011-11-07 08:28:52');
INSERT INTO `exp_trans_mark` VALUES ('502', '1320625800000-1320627600000', 'billing_1320625800000_1320627600000_1_744.gz', '2011-11-07 08:58:52', '1', '2011-11-07 08:58:52');
INSERT INTO `exp_trans_mark` VALUES ('503', '1320627600000-1320629400000', 'billing_1320627600000_1320629400000_1_132.gz', '2011-11-07 09:28:53', '1', '2011-11-07 09:28:53');
INSERT INTO `exp_trans_mark` VALUES ('504', '1320629400000-1320631200000', 'billing_1320629400000_1320631200000_1_118.gz', '2011-11-07 09:58:53', '1', '2011-11-07 09:58:53');
INSERT INTO `exp_trans_mark` VALUES ('505', '1320631200000-1320633000000', 'billing_1320631200000_1320633000000_1_417.gz', '2011-11-07 10:28:53', '1', '2011-11-07 10:28:53');
INSERT INTO `exp_trans_mark` VALUES ('506', '1320633000000-1320634800000', 'billing_1320633000000_1320634800000_1_812.gz', '2011-11-07 10:58:53', '1', '2011-11-07 10:58:53');
INSERT INTO `exp_trans_mark` VALUES ('507', '1320634800000-1320636600000', 'billing_1320634800000_1320636600000_1_844.gz', '2011-11-07 11:28:53', '1', '2011-11-07 11:28:53');
INSERT INTO `exp_trans_mark` VALUES ('508', '1320636600000-1320638400000', 'billing_1320636600000_1320638400000_1_778.gz', '2011-11-07 11:58:53', '1', '2011-11-07 11:58:53');
INSERT INTO `exp_trans_mark` VALUES ('509', '1320638400000-1320640200000', 'billing_1320638400000_1320640200000_1_392.gz', '2011-11-07 12:28:53', '1', '2011-11-07 12:28:53');
INSERT INTO `exp_trans_mark` VALUES ('510', '1320640200000-1320642000000', 'billing_1320640200000_1320642000000_1_16.gz', '2011-11-07 12:58:53', '1', '2011-11-07 12:58:53');
INSERT INTO `exp_trans_mark` VALUES ('511', '1320642000000-1320643800000', 'billing_1320642000000_1320643800000_1_908.gz', '2011-11-07 13:28:53', '1', '2011-11-07 13:28:53');
INSERT INTO `exp_trans_mark` VALUES ('512', '1320643800000-1320645600000', 'billing_1320643800000_1320645600000_1_129.gz', '2011-11-07 13:58:53', '1', '2011-11-07 13:58:53');
INSERT INTO `exp_trans_mark` VALUES ('513', '1320645600000-1320647400000', 'billing_1320645600000_1320647400000_1_806.gz', '2011-11-07 14:28:53', '1', '2011-11-07 14:28:53');
INSERT INTO `exp_trans_mark` VALUES ('514', '1320647400000-1320649200000', 'billing_1320647400000_1320649200000_1_619.gz', '2011-11-07 14:58:53', '1', '2011-11-07 14:58:53');
INSERT INTO `exp_trans_mark` VALUES ('515', '1320649200000-1320651000000', 'billing_1320649200000_1320651000000_1_519.gz', '2011-11-07 15:28:53', '1', '2011-11-07 15:28:53');
INSERT INTO `exp_trans_mark` VALUES ('516', '1320651000000-1320652800000', 'billing_1320651000000_1320652800000_1_40.gz', '2011-11-07 15:58:53', '1', '2011-11-07 15:58:53');
INSERT INTO `exp_trans_mark` VALUES ('517', '1320652800000-1320654600000', 'billing_1320652800000_1320654600000_1_809.gz', '2011-11-07 16:28:53', '1', '2011-11-07 16:28:53');
INSERT INTO `exp_trans_mark` VALUES ('518', '1320654600000-1320656400000', 'billing_1320654600000_1320656400000_1_434.gz', '2011-11-07 16:58:53', '1', '2011-11-07 16:58:53');
INSERT INTO `exp_trans_mark` VALUES ('519', '1320656400000-1320658200000', 'billing_1320656400000_1320658200000_1_410.gz', '2011-11-07 17:28:52', '1', '2011-11-07 17:28:52');
INSERT INTO `exp_trans_mark` VALUES ('520', '1320658200000-1320660000000', 'billing_1320658200000_1320660000000_1_622.gz', '2011-11-07 17:58:52', '1', '2011-11-07 17:58:53');
INSERT INTO `exp_trans_mark` VALUES ('521', '1320660000000-1320661800000', 'billing_1320660000000_1320661800000_1_37.gz', '2011-11-07 18:28:53', '1', '2011-11-07 18:28:53');
INSERT INTO `exp_trans_mark` VALUES ('522', '1320661800000-1320663600000', 'billing_1320661800000_1320663600000_1_630.gz', '2011-11-07 18:58:52', '1', '2011-11-07 18:58:53');
INSERT INTO `exp_trans_mark` VALUES ('523', '1320663600000-1320665400000', 'billing_1320663600000_1320665400000_1_698.gz', '2011-11-07 19:28:53', '1', '2011-11-07 19:28:53');
INSERT INTO `exp_trans_mark` VALUES ('524', '1320665400000-1320667200000', 'billing_1320665400000_1320667200000_1_989.gz', '2011-11-07 19:58:52', '1', '2011-11-07 19:58:53');
INSERT INTO `exp_trans_mark` VALUES ('525', '1320667200000-1320669000000', 'billing_1320667200000_1320669000000_1_535.gz', '2011-11-07 20:28:53', '1', '2011-11-07 20:28:53');
INSERT INTO `exp_trans_mark` VALUES ('526', '1320669000000-1320670800000', 'billing_1320669000000_1320670800000_1_723.gz', '2011-11-07 20:58:53', '1', '2011-11-07 20:58:53');
INSERT INTO `exp_trans_mark` VALUES ('527', '1320670800000-1320672600000', 'billing_1320670800000_1320672600000_1_773.gz', '2011-11-07 21:28:53', '1', '2011-11-07 21:28:53');
INSERT INTO `exp_trans_mark` VALUES ('528', '1320672600000-1320674400000', 'billing_1320672600000_1320674400000_1_561.gz', '2011-11-07 21:58:53', '1', '2011-11-07 21:58:53');
INSERT INTO `exp_trans_mark` VALUES ('529', '1320674400000-1320676200000', 'billing_1320674400000_1320676200000_1_391.gz', '2011-11-07 22:28:53', '1', '2011-11-07 22:28:53');
INSERT INTO `exp_trans_mark` VALUES ('530', '1320676200000-1320678000000', 'billing_1320676200000_1320678000000_1_913.gz', '2011-11-07 22:58:53', '1', '2011-11-07 22:58:53');
INSERT INTO `exp_trans_mark` VALUES ('531', '1320678000000-1320679800000', 'billing_1320678000000_1320679800000_1_505.gz', '2011-11-07 23:28:52', '1', '2011-11-07 23:28:52');
INSERT INTO `exp_trans_mark` VALUES ('532', '1320679800000-1320681600000', 'billing_1320679800000_1320681600000_1_653.gz', '2011-11-07 23:58:53', '1', '2011-11-07 23:58:53');
INSERT INTO `exp_trans_mark` VALUES ('533', '1320681600000-1320683400000', 'billing_1320681600000_1320683400000_1_421.gz', '2011-11-08 00:28:52', '1', '2011-11-08 00:28:52');
INSERT INTO `exp_trans_mark` VALUES ('534', '1320683400000-1320685200000', 'billing_1320683400000_1320685200000_1_94.gz', '2011-11-08 00:58:53', '1', '2011-11-08 00:58:53');
INSERT INTO `exp_trans_mark` VALUES ('535', '1320685200000-1320687000000', 'billing_1320685200000_1320687000000_1_680.gz', '2011-11-08 01:28:53', '1', '2011-11-08 01:28:53');
INSERT INTO `exp_trans_mark` VALUES ('536', '1320687000000-1320688800000', 'billing_1320687000000_1320688800000_1_554.gz', '2011-11-08 01:58:53', '1', '2011-11-08 01:58:53');
INSERT INTO `exp_trans_mark` VALUES ('537', '1320688800000-1320690600000', 'billing_1320688800000_1320690600000_1_947.gz', '2011-11-08 02:28:52', '1', '2011-11-08 02:28:53');
INSERT INTO `exp_trans_mark` VALUES ('538', '1320690600000-1320692400000', 'billing_1320690600000_1320692400000_1_9.gz', '2011-11-08 02:58:53', '1', '2011-11-08 02:58:53');
INSERT INTO `exp_trans_mark` VALUES ('539', '1320692400000-1320694200000', 'billing_1320692400000_1320694200000_1_201.gz', '2011-11-08 03:28:53', '1', '2011-11-08 03:28:53');
INSERT INTO `exp_trans_mark` VALUES ('540', '1320694200000-1320696000000', 'billing_1320694200000_1320696000000_1_598.gz', '2011-11-08 03:58:53', '1', '2011-11-08 03:58:53');
INSERT INTO `exp_trans_mark` VALUES ('541', '1320696000000-1320697800000', 'billing_1320696000000_1320697800000_1_525.gz', '2011-11-08 04:28:53', '1', '2011-11-08 04:28:53');
INSERT INTO `exp_trans_mark` VALUES ('542', '1320697800000-1320699600000', 'billing_1320697800000_1320699600000_1_337.gz', '2011-11-08 04:58:52', '1', '2011-11-08 04:58:52');
INSERT INTO `exp_trans_mark` VALUES ('543', '1320699600000-1320701400000', 'billing_1320699600000_1320701400000_1_470.gz', '2011-11-08 05:28:53', '1', '2011-11-08 05:28:53');
INSERT INTO `exp_trans_mark` VALUES ('544', '1320701400000-1320703200000', 'billing_1320701400000_1320703200000_1_10.gz', '2011-11-08 05:58:53', '1', '2011-11-08 05:58:53');
INSERT INTO `exp_trans_mark` VALUES ('545', '1320703200000-1320705000000', 'billing_1320703200000_1320705000000_1_551.gz', '2011-11-08 06:28:53', '1', '2011-11-08 06:28:53');
INSERT INTO `exp_trans_mark` VALUES ('546', '1320705000000-1320706800000', 'billing_1320705000000_1320706800000_1_702.gz', '2011-11-08 06:58:53', '1', '2011-11-08 06:58:53');
INSERT INTO `exp_trans_mark` VALUES ('547', '1320706800000-1320708600000', 'billing_1320706800000_1320708600000_1_689.gz', '2011-11-08 07:28:53', '1', '2011-11-08 07:28:53');
INSERT INTO `exp_trans_mark` VALUES ('548', '1320708600000-1320710400000', 'billing_1320708600000_1320710400000_1_604.gz', '2011-11-08 07:58:53', '1', '2011-11-08 07:58:53');
INSERT INTO `exp_trans_mark` VALUES ('549', '1320710400000-1320712200000', 'billing_1320710400000_1320712200000_1_409.gz', '2011-11-08 08:28:53', '1', '2011-11-08 08:28:53');
INSERT INTO `exp_trans_mark` VALUES ('550', '1320712200000-1320714000000', 'billing_1320712200000_1320714000000_1_184.gz', '2011-11-08 08:58:53', '1', '2011-11-08 08:58:53');
INSERT INTO `exp_trans_mark` VALUES ('551', '1320714000000-1320715800000', 'billing_1320714000000_1320715800000_1_675.gz', '2011-11-08 09:28:53', '1', '2011-11-08 09:28:53');
INSERT INTO `exp_trans_mark` VALUES ('552', '1320715800000-1320717600000', 'billing_1320715800000_1320717600000_1_919.gz', '2011-11-08 09:58:53', '1', '2011-11-08 09:58:53');
INSERT INTO `exp_trans_mark` VALUES ('553', '1320717600000-1320719400000', 'billing_1320717600000_1320719400000_1_137.gz', '2011-11-08 10:28:53', '1', '2011-11-08 10:28:53');
INSERT INTO `exp_trans_mark` VALUES ('554', '1320719400000-1320721200000', 'billing_1320719400000_1320721200000_1_869.gz', '2011-11-08 10:58:53', '1', '2011-11-08 10:58:53');
INSERT INTO `exp_trans_mark` VALUES ('555', '1320721200000-1320723000000', 'billing_1320721200000_1320723000000_1_329.gz', '2011-11-08 11:28:53', '1', '2011-11-08 11:28:53');
INSERT INTO `exp_trans_mark` VALUES ('556', '1320723000000-1320724800000', 'billing_1320723000000_1320724800000_1_990.gz', '2011-11-08 11:58:53', '1', '2011-11-08 11:58:53');
INSERT INTO `exp_trans_mark` VALUES ('557', '1320724800000-1320726600000', 'billing_1320724800000_1320726600000_1_338.gz', '2011-11-08 12:28:53', '1', '2011-11-08 12:28:53');
INSERT INTO `exp_trans_mark` VALUES ('558', '1320726600000-1320728400000', 'billing_1320726600000_1320728400000_1_398.gz', '2011-11-08 12:58:53', '1', '2011-11-08 12:58:53');
INSERT INTO `exp_trans_mark` VALUES ('559', '1320728400000-1320730200000', 'billing_1320728400000_1320730200000_1_163.gz', '2011-11-08 13:28:53', '1', '2011-11-08 13:28:53');
INSERT INTO `exp_trans_mark` VALUES ('560', '1320730200000-1320732000000', 'billing_1320730200000_1320732000000_1_477.gz', '2011-11-08 13:58:53', '1', '2011-11-08 13:58:53');
INSERT INTO `exp_trans_mark` VALUES ('561', '1320732000000-1320733800000', 'billing_1320732000000_1320733800000_1_128.gz', '2011-11-08 14:28:53', '1', '2011-11-08 14:28:53');
INSERT INTO `exp_trans_mark` VALUES ('562', '1320733800000-1320735600000', 'billing_1320733800000_1320735600000_1_259.gz', '2011-11-08 14:58:53', '1', '2011-11-08 14:58:53');
INSERT INTO `exp_trans_mark` VALUES ('563', '1320735600000-1320737400000', 'billing_1320735600000_1320737400000_1_134.gz', '2011-11-08 15:28:52', '1', '2011-11-08 15:28:53');
INSERT INTO `exp_trans_mark` VALUES ('564', '1320737400000-1320739200000', 'billing_1320737400000_1320739200000_1_898.gz', '2011-11-08 15:58:53', '1', '2011-11-08 15:58:53');
INSERT INTO `exp_trans_mark` VALUES ('565', '1320739200000-1320741000000', 'billing_1320739200000_1320741000000_1_7.gz', '2011-11-08 16:28:53', '1', '2011-11-08 16:28:54');
INSERT INTO `exp_trans_mark` VALUES ('566', '1320741000000-1320742800000', 'billing_1320741000000_1320742800000_1_106.gz', '2011-11-08 16:58:53', '1', '2011-11-08 16:58:53');
INSERT INTO `exp_trans_mark` VALUES ('567', '1320742800000-1320744600000', 'billing_1320742800000_1320744600000_1_937.gz', '2011-11-08 17:28:52', '1', '2011-11-08 17:28:52');
INSERT INTO `exp_trans_mark` VALUES ('568', '1320744600000-1320746400000', 'billing_1320744600000_1320746400000_1_193.gz', '2011-11-08 17:58:53', '1', '2011-11-08 17:58:53');
INSERT INTO `exp_trans_mark` VALUES ('569', '1320746400000-1320748200000', 'billing_1320746400000_1320748200000_1_736.gz', '2011-11-08 18:28:52', '1', '2011-11-08 18:28:52');
INSERT INTO `exp_trans_mark` VALUES ('570', '1320748200000-1320750000000', 'billing_1320748200000_1320750000000_1_46.gz', '2011-11-08 18:58:53', '1', '2011-11-08 18:58:53');
INSERT INTO `exp_trans_mark` VALUES ('571', '1320750000000-1320751800000', 'billing_1320750000000_1320751800000_1_738.gz', '2011-11-08 19:28:53', '1', '2011-11-08 19:28:53');
INSERT INTO `exp_trans_mark` VALUES ('572', '1320751800000-1320753600000', 'billing_1320751800000_1320753600000_1_95.gz', '2011-11-08 19:58:53', '1', '2011-11-08 19:58:53');
INSERT INTO `exp_trans_mark` VALUES ('573', '1320753600000-1320755400000', 'billing_1320753600000_1320755400000_1_891.gz', '2011-11-08 20:28:52', '1', '2011-11-08 20:28:53');
INSERT INTO `exp_trans_mark` VALUES ('574', '1320755400000-1320757200000', 'billing_1320755400000_1320757200000_1_780.gz', '2011-11-08 20:58:53', '1', '2011-11-08 20:58:53');
INSERT INTO `exp_trans_mark` VALUES ('575', '1320757200000-1320759000000', 'billing_1320757200000_1320759000000_1_137.gz', '2011-11-08 21:28:53', '1', '2011-11-08 21:28:53');
INSERT INTO `exp_trans_mark` VALUES ('576', '1320759000000-1320760800000', 'billing_1320759000000_1320760800000_1_970.gz', '2011-11-08 21:58:53', '1', '2011-11-08 21:58:53');
INSERT INTO `exp_trans_mark` VALUES ('577', '1320760800000-1320762600000', 'billing_1320760800000_1320762600000_1_45.gz', '2011-11-08 22:28:53', '1', '2011-11-08 22:28:53');
INSERT INTO `exp_trans_mark` VALUES ('578', '1320762600000-1320764400000', 'billing_1320762600000_1320764400000_1_170.gz', '2011-11-08 22:58:53', '1', '2011-11-08 22:58:53');
INSERT INTO `exp_trans_mark` VALUES ('579', '1320764400000-1320766200000', 'billing_1320764400000_1320766200000_1_782.gz', '2011-11-08 23:28:53', '1', '2011-11-08 23:28:53');
INSERT INTO `exp_trans_mark` VALUES ('580', '1320766200000-1320768000000', 'billing_1320766200000_1320768000000_1_514.gz', '2011-11-08 23:58:53', '1', '2011-11-08 23:59:03');
INSERT INTO `exp_trans_mark` VALUES ('581', '1320768000000-1320769800000', 'billing_1320768000000_1320769800000_1_406.gz', '2011-11-09 00:28:53', '1', '2011-11-09 00:29:03');
INSERT INTO `exp_trans_mark` VALUES ('582', '1320769800000-1320771600000', 'billing_1320769800000_1320771600000_1_762.gz', '2011-11-09 00:58:53', '1', '2011-11-09 00:59:03');
INSERT INTO `exp_trans_mark` VALUES ('583', '1320771600000-1320773400000', 'billing_1320771600000_1320773400000_1_189.gz', '2011-11-09 01:28:53', '1', '2011-11-09 01:29:03');
INSERT INTO `exp_trans_mark` VALUES ('584', '1320773400000-1320775200000', 'billing_1320773400000_1320775200000_1_143.gz', '2011-11-09 01:58:53', '1', '2011-11-09 01:59:03');
INSERT INTO `exp_trans_mark` VALUES ('585', '1320775200000-1320777000000', 'billing_1320775200000_1320777000000_1_319.gz', '2011-11-09 02:28:53', '1', '2011-11-09 02:29:03');
INSERT INTO `exp_trans_mark` VALUES ('586', '1320777000000-1320778800000', 'billing_1320777000000_1320778800000_1_430.gz', '2011-11-09 02:58:53', '1', '2011-11-09 02:59:03');
INSERT INTO `exp_trans_mark` VALUES ('587', '1320778800000-1320780600000', 'billing_1320778800000_1320780600000_1_895.gz', '2011-11-09 03:28:53', '1', '2011-11-09 03:29:03');
INSERT INTO `exp_trans_mark` VALUES ('588', '1320780600000-1320782400000', 'billing_1320780600000_1320782400000_1_735.gz', '2011-11-09 03:58:53', '1', '2011-11-09 03:59:03');
INSERT INTO `exp_trans_mark` VALUES ('589', '1320782400000-1320784200000', 'billing_1320782400000_1320784200000_1_947.gz', '2011-11-09 04:28:53', '1', '2011-11-09 04:29:03');
INSERT INTO `exp_trans_mark` VALUES ('590', '1320784200000-1320786000000', 'billing_1320784200000_1320786000000_1_651.gz', '2011-11-09 04:58:53', '1', '2011-11-09 04:59:03');
INSERT INTO `exp_trans_mark` VALUES ('591', '1320786000000-1320787800000', 'billing_1320786000000_1320787800000_1_917.gz', '2011-11-09 05:28:53', '1', '2011-11-09 05:29:03');
INSERT INTO `exp_trans_mark` VALUES ('592', '1320787800000-1320789600000', 'billing_1320787800000_1320789600000_1_181.gz', '2011-11-09 05:58:53', '1', '2011-11-09 05:59:03');
INSERT INTO `exp_trans_mark` VALUES ('593', '1320789600000-1320791400000', 'billing_1320789600000_1320791400000_1_816.gz', '2011-11-09 06:28:53', '1', '2011-11-09 06:29:03');
INSERT INTO `exp_trans_mark` VALUES ('594', '1320791400000-1320793200000', 'billing_1320791400000_1320793200000_1_123.gz', '2011-11-09 06:58:53', '1', '2011-11-09 06:59:03');
INSERT INTO `exp_trans_mark` VALUES ('595', '1320793200000-1320795000000', 'billing_1320793200000_1320795000000_1_136.gz', '2011-11-09 07:28:53', '1', '2011-11-09 07:29:03');
INSERT INTO `exp_trans_mark` VALUES ('596', '1320795000000-1320796800000', 'billing_1320795000000_1320796800000_1_486.gz', '2011-11-09 07:58:53', '1', '2011-11-09 07:59:03');
INSERT INTO `exp_trans_mark` VALUES ('597', '1320796800000-1320798600000', 'billing_1320796800000_1320798600000_1_140.gz', '2011-11-09 08:28:52', '1', '2011-11-09 08:29:02');
INSERT INTO `exp_trans_mark` VALUES ('598', '1320798600000-1320800400000', 'billing_1320798600000_1320800400000_1_53.gz', '2011-11-09 08:58:53', '1', '2011-11-09 08:58:53');
INSERT INTO `exp_trans_mark` VALUES ('599', '1320800400000-1320802200000', 'billing_1320800400000_1320802200000_1_218.gz', '2011-11-09 09:28:52', '1', '2011-11-09 09:28:52');
INSERT INTO `exp_trans_mark` VALUES ('600', '1320802200000-1320804000000', 'billing_1320802200000_1320804000000_1_93.gz', '2011-11-09 09:58:52', '1', '2011-11-09 09:58:52');
INSERT INTO `exp_trans_mark` VALUES ('601', '1320804000000-1320805800000', 'billing_1320804000000_1320805800000_1_582.gz', '2011-11-09 10:28:53', '1', '2011-11-09 10:28:53');
INSERT INTO `exp_trans_mark` VALUES ('602', '1320805800000-1320807600000', 'billing_1320805800000_1320807600000_1_21.gz', '2011-11-09 10:58:53', '1', '2011-11-09 10:58:53');
INSERT INTO `exp_trans_mark` VALUES ('603', '1320807600000-1320809400000', 'billing_1320807600000_1320809400000_1_279.gz', '2011-11-09 11:28:52', '1', '2011-11-09 11:28:53');
INSERT INTO `exp_trans_mark` VALUES ('604', '1320809400000-1320811200000', 'billing_1320809400000_1320811200000_1_276.gz', '2011-11-09 11:58:53', '1', '2011-11-09 11:58:53');
INSERT INTO `exp_trans_mark` VALUES ('605', '1320811200000-1320813000000', 'billing_1320811200000_1320813000000_1_240.gz', '2011-11-09 12:28:53', '1', '2011-11-09 12:28:53');
INSERT INTO `exp_trans_mark` VALUES ('606', '1320813000000-1320814800000', 'billing_1320813000000_1320814800000_1_735.gz', '2011-11-09 12:58:53', '1', '2011-11-09 12:58:53');
INSERT INTO `exp_trans_mark` VALUES ('607', '1320814800000-1320816600000', 'billing_1320814800000_1320816600000_1_427.gz', '2011-11-09 13:28:52', '1', '2011-11-09 13:28:52');
INSERT INTO `exp_trans_mark` VALUES ('608', '1320816600000-1320818400000', 'billing_1320816600000_1320818400000_1_919.gz', '2011-11-09 13:58:53', '1', '2011-11-09 13:58:53');
INSERT INTO `exp_trans_mark` VALUES ('609', '1320818400000-1320820200000', 'billing_1320818400000_1320820200000_1_628.gz', '2011-11-09 14:28:53', '1', '2011-11-09 14:28:53');
INSERT INTO `exp_trans_mark` VALUES ('610', '1320820200000-1320822000000', 'billing_1320820200000_1320822000000_1_980.gz', '2011-11-09 14:58:53', '1', '2011-11-09 14:58:53');
INSERT INTO `exp_trans_mark` VALUES ('611', '1320822000000-1320823800000', 'billing_1320822000000_1320823800000_1_461.gz', '2011-11-09 15:28:52', '1', '2011-11-09 15:28:53');
INSERT INTO `exp_trans_mark` VALUES ('612', '1320823800000-1320825600000', 'billing_1320823800000_1320825600000_1_46.gz', '2011-11-09 15:58:53', '1', '2011-11-09 15:58:53');
INSERT INTO `exp_trans_mark` VALUES ('613', '1320825600000-1320827400000', 'billing_1320825600000_1320827400000_1_307.gz', '2011-11-09 16:28:53', '1', '2011-11-09 16:28:53');
INSERT INTO `exp_trans_mark` VALUES ('614', '1320827400000-1320829200000', 'billing_1320827400000_1320829200000_1_866.gz', '2011-11-09 16:58:53', '1', '2011-11-09 16:58:53');
INSERT INTO `exp_trans_mark` VALUES ('615', '1320829200000-1320831000000', 'billing_1320829200000_1320831000000_1_341.gz', '2011-11-09 17:28:53', '1', '2011-11-09 17:28:53');
INSERT INTO `exp_trans_mark` VALUES ('616', '1320831000000-1320832800000', 'billing_1320831000000_1320832800000_1_723.gz', '2011-11-09 17:58:53', '1', '2011-11-09 17:58:53');
INSERT INTO `exp_trans_mark` VALUES ('617', '1320832800000-1320834600000', 'billing_1320832800000_1320834600000_1_443.gz', '2011-11-09 18:28:53', '1', '2011-11-09 18:28:53');
INSERT INTO `exp_trans_mark` VALUES ('618', '1320834600000-1320836400000', 'billing_1320834600000_1320836400000_1_855.gz', '2011-11-09 18:58:52', '1', '2011-11-09 18:58:52');
INSERT INTO `exp_trans_mark` VALUES ('619', '1320836400000-1320838200000', 'billing_1320836400000_1320838200000_1_187.gz', '2011-11-09 19:28:53', '1', '2011-11-09 19:28:53');
INSERT INTO `exp_trans_mark` VALUES ('620', '1320838200000-1320840000000', 'billing_1320838200000_1320840000000_1_748.gz', '2011-11-09 19:58:53', '1', '2011-11-09 19:58:53');
INSERT INTO `exp_trans_mark` VALUES ('621', '1320840000000-1320841800000', 'billing_1320840000000_1320841800000_1_830.gz', '2011-11-09 20:28:53', '1', '2011-11-09 20:28:53');
INSERT INTO `exp_trans_mark` VALUES ('622', '1320841800000-1320843600000', 'billing_1320841800000_1320843600000_1_164.gz', '2011-11-09 20:58:53', '1', '2011-11-09 20:58:53');
INSERT INTO `exp_trans_mark` VALUES ('623', '1320843600000-1320845400000', 'billing_1320843600000_1320845400000_1_514.gz', '2011-11-09 21:28:53', '1', '2011-11-09 21:28:58');
INSERT INTO `exp_trans_mark` VALUES ('624', '1320845400000-1320847200000', 'billing_1320845400000_1320847200000_1_852.gz', '2011-11-09 21:58:53', '1', '2011-11-09 21:58:53');
INSERT INTO `exp_trans_mark` VALUES ('625', '1320847200000-1320849000000', 'billing_1320847200000_1320849000000_1_715.gz', '2011-11-09 22:28:53', '1', '2011-11-09 22:29:03');
INSERT INTO `exp_trans_mark` VALUES ('626', '1320849000000-1320850800000', 'billing_1320849000000_1320850800000_1_245.gz', '2011-11-09 22:58:53', '1', '2011-11-09 22:59:03');
INSERT INTO `exp_trans_mark` VALUES ('627', '1320850800000-1320852600000', 'billing_1320850800000_1320852600000_1_544.gz', '2011-11-09 23:28:53', '1', '2011-11-09 23:29:03');
INSERT INTO `exp_trans_mark` VALUES ('628', '1320852600000-1320854400000', 'billing_1320852600000_1320854400000_1_429.gz', '2011-11-09 23:58:53', '1', '2011-11-09 23:59:03');
INSERT INTO `exp_trans_mark` VALUES ('629', '1320854400000-1320856200000', 'billing_1320854400000_1320856200000_1_433.gz', '2011-11-10 00:28:53', '1', '2011-11-10 00:29:03');
INSERT INTO `exp_trans_mark` VALUES ('630', '1320856200000-1320858000000', 'billing_1320856200000_1320858000000_1_903.gz', '2011-11-10 00:58:53', '1', '2011-11-10 00:59:03');
INSERT INTO `exp_trans_mark` VALUES ('631', '1320858000000-1320859800000', 'billing_1320858000000_1320859800000_1_559.gz', '2011-11-10 01:28:52', '1', '2011-11-10 01:29:02');
INSERT INTO `exp_trans_mark` VALUES ('632', '1320859800000-1320861600000', 'billing_1320859800000_1320861600000_1_468.gz', '2011-11-10 01:58:53', '1', '2011-11-10 01:59:03');
INSERT INTO `exp_trans_mark` VALUES ('633', '1320861600000-1320863400000', 'billing_1320861600000_1320863400000_1_726.gz', '2011-11-10 02:28:53', '1', '2011-11-10 02:29:03');
INSERT INTO `exp_trans_mark` VALUES ('634', '1320863400000-1320865200000', 'billing_1320863400000_1320865200000_1_194.gz', '2011-11-10 02:58:53', '1', '2011-11-10 02:59:03');
INSERT INTO `exp_trans_mark` VALUES ('635', '1320865200000-1320867000000', 'billing_1320865200000_1320867000000_1_11.gz', '2011-11-10 03:28:53', '1', '2011-11-10 03:29:03');
INSERT INTO `exp_trans_mark` VALUES ('636', '1320867000000-1320868800000', 'billing_1320867000000_1320868800000_1_176.gz', '2011-11-10 03:58:53', '1', '2011-11-10 03:59:03');
INSERT INTO `exp_trans_mark` VALUES ('637', '1320868800000-1320870600000', 'billing_1320868800000_1320870600000_1_840.gz', '2011-11-10 04:28:53', '1', '2011-11-10 04:29:03');
INSERT INTO `exp_trans_mark` VALUES ('638', '1320870600000-1320872400000', 'billing_1320870600000_1320872400000_1_206.gz', '2011-11-10 04:58:53', '1', '2011-11-10 04:59:03');
INSERT INTO `exp_trans_mark` VALUES ('639', '1320872400000-1320874200000', 'billing_1320872400000_1320874200000_1_704.gz', '2011-11-10 05:28:52', '1', '2011-11-10 05:29:02');
INSERT INTO `exp_trans_mark` VALUES ('640', '1320874200000-1320876000000', 'billing_1320874200000_1320876000000_1_814.gz', '2011-11-10 05:58:53', '1', '2011-11-10 05:59:03');
INSERT INTO `exp_trans_mark` VALUES ('641', '1320876000000-1320877800000', 'billing_1320876000000_1320877800000_1_74.gz', '2011-11-10 06:28:52', '1', '2011-11-10 06:29:02');
INSERT INTO `exp_trans_mark` VALUES ('642', '1320877800000-1320879600000', 'billing_1320877800000_1320879600000_1_478.gz', '2011-11-10 06:58:52', '1', '2011-11-10 06:59:02');
INSERT INTO `exp_trans_mark` VALUES ('643', '1320879600000-1320881400000', 'billing_1320879600000_1320881400000_1_638.gz', '2011-11-10 07:28:53', '1', '2011-11-10 07:29:03');
INSERT INTO `exp_trans_mark` VALUES ('644', '1320881400000-1320883200000', 'billing_1320881400000_1320883200000_1_36.gz', '2011-11-10 07:58:53', '1', '2011-11-10 07:59:03');
INSERT INTO `exp_trans_mark` VALUES ('645', '1320883200000-1320885000000', 'billing_1320883200000_1320885000000_1_219.gz', '2011-11-10 08:28:53', '1', '2011-11-10 08:29:03');
INSERT INTO `exp_trans_mark` VALUES ('646', '1320885000000-1320886800000', 'billing_1320885000000_1320886800000_1_925.gz', '2011-11-10 08:58:53', '1', '2011-11-10 08:58:53');
INSERT INTO `exp_trans_mark` VALUES ('647', '1320886800000-1320888600000', 'billing_1320886800000_1320888600000_1_221.gz', '2011-11-10 09:28:53', '1', '2011-11-10 09:28:53');
INSERT INTO `exp_trans_mark` VALUES ('648', '1320888600000-1320890400000', 'billing_1320888600000_1320890400000_1_749.gz', '2011-11-10 09:58:53', '1', '2011-11-10 09:58:53');
INSERT INTO `exp_trans_mark` VALUES ('649', '1320890400000-1320892200000', 'billing_1320890400000_1320892200000_1_409.gz', '2011-11-10 10:28:53', '1', '2011-11-10 10:28:53');
INSERT INTO `exp_trans_mark` VALUES ('650', '1320892200000-1320894000000', 'billing_1320892200000_1320894000000_1_787.gz', '2011-11-10 10:58:52', '1', '2011-11-10 10:58:53');
INSERT INTO `exp_trans_mark` VALUES ('651', '1320894000000-1320895800000', 'billing_1320894000000_1320895800000_1_549.gz', '2011-11-10 11:28:53', '1', '2011-11-10 11:28:53');
INSERT INTO `exp_trans_mark` VALUES ('652', '1320895800000-1320897600000', 'billing_1320895800000_1320897600000_1_785.gz', '2011-11-10 11:58:53', '1', '2011-11-10 11:58:53');
INSERT INTO `exp_trans_mark` VALUES ('653', '1320897600000-1320899400000', 'billing_1320897600000_1320899400000_1_444.gz', '2011-11-10 12:28:53', '1', '2011-11-10 12:28:53');
INSERT INTO `exp_trans_mark` VALUES ('654', '1320899400000-1320901200000', 'billing_1320899400000_1320901200000_1_92.gz', '2011-11-10 12:58:53', '1', '2011-11-10 12:58:53');
INSERT INTO `exp_trans_mark` VALUES ('655', '1320901200000-1320903000000', 'billing_1320901200000_1320903000000_1_755.gz', '2011-11-10 13:28:53', '1', '2011-11-10 13:28:53');
INSERT INTO `exp_trans_mark` VALUES ('656', '1320903000000-1320904800000', 'billing_1320903000000_1320904800000_1_903.gz', '2011-11-10 13:58:53', '1', '2011-11-10 13:58:53');
INSERT INTO `exp_trans_mark` VALUES ('657', '1320904800000-1320906600000', 'billing_1320904800000_1320906600000_1_596.gz', '2011-11-10 14:28:53', '1', '2011-11-10 14:28:53');
INSERT INTO `exp_trans_mark` VALUES ('658', '1320906600000-1320908400000', 'billing_1320906600000_1320908400000_1_986.gz', '2011-11-10 14:58:53', '1', '2011-11-10 14:58:53');
INSERT INTO `exp_trans_mark` VALUES ('659', '1320908400000-1320910200000', 'billing_1320908400000_1320910200000_1_238.gz', '2011-11-10 15:28:53', '1', '2011-11-10 15:28:53');
INSERT INTO `exp_trans_mark` VALUES ('660', '1320910200000-1320912000000', 'billing_1320910200000_1320912000000_1_648.gz', '2011-11-10 15:58:52', '1', '2011-11-10 15:58:52');
INSERT INTO `exp_trans_mark` VALUES ('661', '1320912000000-1320913800000', 'billing_1320912000000_1320913800000_1_791.gz', '2011-11-10 16:28:53', '1', '2011-11-10 16:28:53');
INSERT INTO `exp_trans_mark` VALUES ('662', '1320913800000-1320915600000', 'billing_1320913800000_1320915600000_1_956.gz', '2011-11-10 16:58:53', '1', '2011-11-10 16:58:53');
INSERT INTO `exp_trans_mark` VALUES ('663', '1320915600000-1320917400000', 'billing_1320915600000_1320917400000_1_284.gz', '2011-11-10 17:28:53', '1', '2011-11-10 17:28:53');
INSERT INTO `exp_trans_mark` VALUES ('664', '1320917400000-1320919200000', 'billing_1320917400000_1320919200000_1_841.gz', '2011-11-10 17:58:53', '1', '2011-11-10 17:58:53');
INSERT INTO `exp_trans_mark` VALUES ('665', '1320919200000-1320921000000', 'billing_1320919200000_1320921000000_1_512.gz', '2011-11-10 18:28:53', '1', '2011-11-10 18:28:53');
INSERT INTO `exp_trans_mark` VALUES ('666', '1320921000000-1320922800000', 'billing_1320921000000_1320922800000_1_735.gz', '2011-11-10 18:58:52', '1', '2011-11-10 18:58:52');
INSERT INTO `exp_trans_mark` VALUES ('667', '1320922800000-1320924600000', 'billing_1320922800000_1320924600000_1_267.gz', '2011-11-10 19:28:53', '1', '2011-11-10 19:28:53');
INSERT INTO `exp_trans_mark` VALUES ('668', '1320924600000-1320926400000', 'billing_1320924600000_1320926400000_1_493.gz', '2011-11-10 19:58:53', '1', '2011-11-10 19:58:53');
INSERT INTO `exp_trans_mark` VALUES ('669', '1320926400000-1320928200000', 'billing_1320926400000_1320928200000_1_732.gz', '2011-11-10 20:28:52', '1', '2011-11-10 20:28:52');
INSERT INTO `exp_trans_mark` VALUES ('670', '1320928200000-1320930000000', 'billing_1320928200000_1320930000000_1_595.gz', '2011-11-10 20:58:53', '1', '2011-11-10 20:58:53');
INSERT INTO `exp_trans_mark` VALUES ('671', '1320930000000-1320931800000', 'billing_1320930000000_1320931800000_1_190.gz', '2011-11-10 21:28:52', '1', '2011-11-10 21:28:52');
INSERT INTO `exp_trans_mark` VALUES ('672', '1320931800000-1320933600000', 'billing_1320931800000_1320933600000_1_789.gz', '2011-11-10 21:58:53', '1', '2011-11-10 21:58:53');
INSERT INTO `exp_trans_mark` VALUES ('673', '1320933600000-1320935400000', 'billing_1320933600000_1320935400000_1_236.gz', '2011-11-10 22:28:53', '1', '2011-11-10 22:28:53');
INSERT INTO `exp_trans_mark` VALUES ('674', '1320935400000-1320937200000', 'billing_1320935400000_1320937200000_1_521.gz', '2011-11-10 22:58:53', '1', '2011-11-10 22:58:53');
INSERT INTO `exp_trans_mark` VALUES ('675', '1320937200000-1320939000000', 'billing_1320937200000_1320939000000_1_385.gz', '2011-11-10 23:28:53', '1', '2011-11-10 23:28:53');
INSERT INTO `exp_trans_mark` VALUES ('676', '1320939000000-1320940800000', 'billing_1320939000000_1320940800000_1_998.gz', '2011-11-10 23:58:53', '1', '2011-11-10 23:58:53');
INSERT INTO `exp_trans_mark` VALUES ('677', '1320940800000-1320942600000', 'billing_1320940800000_1320942600000_1_288.gz', '2011-11-11 00:28:53', '1', '2011-11-11 00:28:53');
INSERT INTO `exp_trans_mark` VALUES ('678', '1320942600000-1320944400000', 'billing_1320942600000_1320944400000_1_386.gz', '2011-11-11 00:58:53', '1', '2011-11-11 00:58:53');
INSERT INTO `exp_trans_mark` VALUES ('679', '1320944400000-1320946200000', 'billing_1320944400000_1320946200000_1_568.gz', '2011-11-11 01:28:53', '1', '2011-11-11 01:28:53');
INSERT INTO `exp_trans_mark` VALUES ('680', '1320946200000-1320948000000', 'billing_1320946200000_1320948000000_1_567.gz', '2011-11-11 01:58:53', '1', '2011-11-11 01:58:53');
INSERT INTO `exp_trans_mark` VALUES ('681', '1320948000000-1320949800000', 'billing_1320948000000_1320949800000_1_152.gz', '2011-11-11 02:28:53', '1', '2011-11-11 02:28:53');
INSERT INTO `exp_trans_mark` VALUES ('682', '1320949800000-1320951600000', 'billing_1320949800000_1320951600000_1_327.gz', '2011-11-11 02:58:53', '1', '2011-11-11 02:58:53');
INSERT INTO `exp_trans_mark` VALUES ('683', '1320951600000-1320953400000', 'billing_1320951600000_1320953400000_1_580.gz', '2011-11-11 03:28:53', '1', '2011-11-11 03:28:53');
INSERT INTO `exp_trans_mark` VALUES ('684', '1320953400000-1320955200000', 'billing_1320953400000_1320955200000_1_815.gz', '2011-11-11 03:58:53', '1', '2011-11-11 03:58:53');
INSERT INTO `exp_trans_mark` VALUES ('685', '1320955200000-1320957000000', 'billing_1320955200000_1320957000000_1_588.gz', '2011-11-11 04:28:52', '1', '2011-11-11 04:28:52');
INSERT INTO `exp_trans_mark` VALUES ('686', '1320957000000-1320958800000', 'billing_1320957000000_1320958800000_1_841.gz', '2011-11-11 04:58:53', '1', '2011-11-11 04:58:53');
INSERT INTO `exp_trans_mark` VALUES ('687', '1320958800000-1320960600000', 'billing_1320958800000_1320960600000_1_909.gz', '2011-11-11 05:28:53', '1', '2011-11-11 05:28:53');
INSERT INTO `exp_trans_mark` VALUES ('688', '1320960600000-1320962400000', 'billing_1320960600000_1320962400000_1_759.gz', '2011-11-11 05:58:52', '1', '2011-11-11 05:58:52');
INSERT INTO `exp_trans_mark` VALUES ('689', '1320962400000-1320964200000', 'billing_1320962400000_1320964200000_1_584.gz', '2011-11-11 06:28:53', '1', '2011-11-11 06:28:53');
INSERT INTO `exp_trans_mark` VALUES ('690', '1320964200000-1320966000000', 'billing_1320964200000_1320966000000_1_462.gz', '2011-11-11 06:58:53', '1', '2011-11-11 06:58:53');
INSERT INTO `exp_trans_mark` VALUES ('691', '1320966000000-1320967800000', 'billing_1320966000000_1320967800000_1_684.gz', '2011-11-11 07:28:53', '1', '2011-11-11 07:28:53');
INSERT INTO `exp_trans_mark` VALUES ('692', '1320967800000-1320969600000', 'billing_1320967800000_1320969600000_1_27.gz', '2011-11-11 07:58:53', '1', '2011-11-11 07:58:53');
INSERT INTO `exp_trans_mark` VALUES ('693', '1320969600000-1320971400000', 'billing_1320969600000_1320971400000_1_233.gz', '2011-11-11 08:28:53', '1', '2011-11-11 08:28:53');
INSERT INTO `exp_trans_mark` VALUES ('694', '1320971400000-1320973200000', 'billing_1320971400000_1320973200000_1_881.gz', '2011-11-11 08:58:53', '1', '2011-11-11 08:58:53');
INSERT INTO `exp_trans_mark` VALUES ('695', '1320973200000-1320975000000', 'billing_1320973200000_1320975000000_1_782.gz', '2011-11-11 09:28:53', '1', '2011-11-11 09:28:53');
INSERT INTO `exp_trans_mark` VALUES ('696', '1320975000000-1320976800000', 'billing_1320975000000_1320976800000_1_449.gz', '2011-11-11 09:58:52', '1', '2011-11-11 09:58:52');
INSERT INTO `exp_trans_mark` VALUES ('697', '1320976800000-1320978600000', 'billing_1320976800000_1320978600000_1_969.gz', '2011-11-11 10:28:53', '1', '2011-11-11 10:28:53');
INSERT INTO `exp_trans_mark` VALUES ('698', '1320978600000-1320980400000', 'billing_1320978600000_1320980400000_1_615.gz', '2011-11-11 10:58:53', '1', '2011-11-11 10:58:53');
INSERT INTO `exp_trans_mark` VALUES ('699', '1320980400000-1320982200000', 'billing_1320980400000_1320982200000_1_217.gz', '2011-11-11 11:28:53', '1', '2011-11-11 11:28:53');
INSERT INTO `exp_trans_mark` VALUES ('700', '1320982200000-1320984000000', 'billing_1320982200000_1320984000000_1_388.gz', '2011-11-11 11:58:52', '1', '2011-11-11 11:58:52');
INSERT INTO `exp_trans_mark` VALUES ('701', '1320984000000-1320985800000', 'billing_1320984000000_1320985800000_1_639.gz', '2011-11-11 12:28:52', '1', '2011-11-11 12:28:52');
INSERT INTO `exp_trans_mark` VALUES ('702', '1320985800000-1320987600000', 'billing_1320985800000_1320987600000_1_940.gz', '2011-11-11 12:58:53', '1', '2011-11-11 12:58:53');
INSERT INTO `exp_trans_mark` VALUES ('703', '1320987600000-1320989400000', 'billing_1320987600000_1320989400000_1_151.gz', '2011-11-11 13:28:53', '1', '2011-11-11 13:28:53');
INSERT INTO `exp_trans_mark` VALUES ('704', '1320989400000-1320991200000', 'billing_1320989400000_1320991200000_1_363.gz', '2011-11-11 13:58:53', '1', '2011-11-11 13:58:53');
INSERT INTO `exp_trans_mark` VALUES ('705', '1320991200000-1320993000000', 'billing_1320991200000_1320993000000_1_140.gz', '2011-11-11 14:28:53', '1', '2011-11-11 14:28:53');
INSERT INTO `exp_trans_mark` VALUES ('706', '1320993000000-1320994800000', 'billing_1320993000000_1320994800000_1_949.gz', '2011-11-11 14:58:53', '1', '2011-11-11 14:58:53');
INSERT INTO `exp_trans_mark` VALUES ('707', '1320994800000-1320996600000', 'billing_1320994800000_1320996600000_1_69.gz', '2011-11-11 15:28:53', '1', '2011-11-11 15:28:53');
INSERT INTO `exp_trans_mark` VALUES ('708', '1320996600000-1320998400000', 'billing_1320996600000_1320998400000_1_986.gz', '2011-11-11 15:58:53', '1', '2011-11-11 15:58:53');
INSERT INTO `exp_trans_mark` VALUES ('709', '1320998400000-1321000200000', 'billing_1320998400000_1321000200000_1_734.gz', '2011-11-11 16:28:53', '1', '2011-11-11 16:28:53');
INSERT INTO `exp_trans_mark` VALUES ('710', '1321000200000-1321002000000', 'billing_1321000200000_1321002000000_1_629.gz', '2011-11-11 16:58:53', '1', '2011-11-11 16:58:53');
INSERT INTO `exp_trans_mark` VALUES ('711', '1321002000000-1321003800000', 'billing_1321002000000_1321003800000_1_164.gz', '2011-11-11 17:28:53', '1', '2011-11-11 17:28:53');
INSERT INTO `exp_trans_mark` VALUES ('712', '1321003800000-1321005600000', 'billing_1321003800000_1321005600000_1_325.gz', '2011-11-11 17:58:53', '1', '2011-11-11 17:58:53');
INSERT INTO `exp_trans_mark` VALUES ('713', '1321005600000-1321007400000', 'billing_1321005600000_1321007400000_1_763.gz', '2011-11-11 18:28:53', '1', '2011-11-11 18:28:53');
INSERT INTO `exp_trans_mark` VALUES ('714', '1321007400000-1321009200000', 'billing_1321007400000_1321009200000_1_786.gz', '2011-11-11 18:58:53', '1', '2011-11-11 18:58:53');
INSERT INTO `exp_trans_mark` VALUES ('715', '1321009200000-1321011000000', 'billing_1321009200000_1321011000000_1_188.gz', '2011-11-11 19:28:52', '1', '2011-11-11 19:28:52');
INSERT INTO `exp_trans_mark` VALUES ('716', '1321011000000-1321012800000', 'billing_1321011000000_1321012800000_1_227.gz', '2011-11-11 19:58:53', '1', '2011-11-11 19:58:53');
INSERT INTO `exp_trans_mark` VALUES ('717', '1321012800000-1321014600000', 'billing_1321012800000_1321014600000_1_37.gz', '2011-11-11 20:28:53', '1', '2011-11-11 20:28:53');
INSERT INTO `exp_trans_mark` VALUES ('718', '1321014600000-1321016400000', 'billing_1321014600000_1321016400000_1_598.gz', '2011-11-11 20:58:53', '1', '2011-11-11 20:58:53');
INSERT INTO `exp_trans_mark` VALUES ('719', '1321016400000-1321018200000', 'billing_1321016400000_1321018200000_1_435.gz', '2011-11-11 21:28:53', '1', '2011-11-11 21:28:53');
INSERT INTO `exp_trans_mark` VALUES ('720', '1321018200000-1321020000000', 'billing_1321018200000_1321020000000_1_434.gz', '2011-11-11 21:58:52', '1', '2011-11-11 21:58:52');
INSERT INTO `exp_trans_mark` VALUES ('721', '1321020000000-1321021800000', 'billing_1321020000000_1321021800000_1_484.gz', '2011-11-11 22:28:52', '1', '2011-11-11 22:28:52');
INSERT INTO `exp_trans_mark` VALUES ('722', '1321021800000-1321023600000', 'billing_1321021800000_1321023600000_1_267.gz', '2011-11-11 22:58:53', '1', '2011-11-11 22:58:53');
INSERT INTO `exp_trans_mark` VALUES ('723', '1321023600000-1321025400000', 'billing_1321023600000_1321025400000_1_81.gz', '2011-11-11 23:28:53', '1', '2011-11-11 23:28:53');
INSERT INTO `exp_trans_mark` VALUES ('724', '1321025400000-1321027200000', 'billing_1321025400000_1321027200000_1_144.gz', '2011-11-11 23:58:53', '1', '2011-11-11 23:59:03');
INSERT INTO `exp_trans_mark` VALUES ('725', '1321027200000-1321029000000', 'billing_1321027200000_1321029000000_1_732.gz', '2011-11-12 00:28:53', '1', '2011-11-12 00:29:03');
INSERT INTO `exp_trans_mark` VALUES ('726', '1321029000000-1321030800000', 'billing_1321029000000_1321030800000_1_993.gz', '2011-11-12 00:58:53', '1', '2011-11-12 00:59:03');
INSERT INTO `exp_trans_mark` VALUES ('727', '1321030800000-1321032600000', 'billing_1321030800000_1321032600000_1_857.gz', '2011-11-12 01:28:53', '1', '2011-11-12 01:29:03');
INSERT INTO `exp_trans_mark` VALUES ('728', '1321032600000-1321034400000', 'billing_1321032600000_1321034400000_1_551.gz', '2011-11-12 01:58:53', '1', '2011-11-12 01:59:03');
INSERT INTO `exp_trans_mark` VALUES ('729', '1321034400000-1321036200000', 'billing_1321034400000_1321036200000_1_920.gz', '2011-11-12 02:28:53', '1', '2011-11-12 02:29:03');
INSERT INTO `exp_trans_mark` VALUES ('730', '1321036200000-1321038000000', 'billing_1321036200000_1321038000000_1_304.gz', '2011-11-12 02:58:53', '1', '2011-11-12 02:59:03');
INSERT INTO `exp_trans_mark` VALUES ('731', '1321038000000-1321039800000', 'billing_1321038000000_1321039800000_1_255.gz', '2011-11-12 03:28:53', '1', '2011-11-12 03:29:03');
INSERT INTO `exp_trans_mark` VALUES ('732', '1321039800000-1321041600000', 'billing_1321039800000_1321041600000_1_137.gz', '2011-11-12 03:58:53', '1', '2011-11-12 03:59:03');
INSERT INTO `exp_trans_mark` VALUES ('733', '1321041600000-1321043400000', 'billing_1321041600000_1321043400000_1_274.gz', '2011-11-12 04:28:52', '1', '2011-11-12 04:29:02');
INSERT INTO `exp_trans_mark` VALUES ('734', '1321043400000-1321045200000', 'billing_1321043400000_1321045200000_1_573.gz', '2011-11-12 04:58:53', '1', '2011-11-12 04:59:03');
INSERT INTO `exp_trans_mark` VALUES ('735', '1321045200000-1321047000000', 'billing_1321045200000_1321047000000_1_594.gz', '2011-11-12 05:28:53', '1', '2011-11-12 05:29:03');
INSERT INTO `exp_trans_mark` VALUES ('736', '1321047000000-1321048800000', 'billing_1321047000000_1321048800000_1_849.gz', '2011-11-12 05:58:53', '1', '2011-11-12 05:59:03');
INSERT INTO `exp_trans_mark` VALUES ('737', '1321048800000-1321050600000', 'billing_1321048800000_1321050600000_1_40.gz', '2011-11-12 06:28:53', '1', '2011-11-12 06:29:03');
INSERT INTO `exp_trans_mark` VALUES ('738', '1321050600000-1321052400000', 'billing_1321050600000_1321052400000_1_863.gz', '2011-11-12 06:58:53', '1', '2011-11-12 06:59:03');
INSERT INTO `exp_trans_mark` VALUES ('739', '1321052400000-1321054200000', 'billing_1321052400000_1321054200000_1_771.gz', '2011-11-12 07:28:52', '1', '2011-11-12 07:29:03');
INSERT INTO `exp_trans_mark` VALUES ('740', '1321054200000-1321056000000', 'billing_1321054200000_1321056000000_1_991.gz', '2011-11-12 07:58:52', '1', '2011-11-12 07:59:02');
INSERT INTO `exp_trans_mark` VALUES ('741', '1321056000000-1321057800000', 'billing_1321056000000_1321057800000_1_466.gz', '2011-11-12 08:28:52', '1', '2011-11-12 08:29:02');
INSERT INTO `exp_trans_mark` VALUES ('742', '1321057800000-1321059600000', 'billing_1321057800000_1321059600000_1_650.gz', '2011-11-12 08:58:52', '1', '2011-11-12 08:59:03');
INSERT INTO `exp_trans_mark` VALUES ('743', '1321059600000-1321061400000', 'billing_1321059600000_1321061400000_1_158.gz', '2011-11-12 09:28:52', '1', '2011-11-12 09:29:02');
INSERT INTO `exp_trans_mark` VALUES ('744', '1321061400000-1321063200000', 'billing_1321061400000_1321063200000_1_743.gz', '2011-11-12 09:58:53', '1', '2011-11-12 09:59:03');
INSERT INTO `exp_trans_mark` VALUES ('745', '1321063200000-1321065000000', 'billing_1321063200000_1321065000000_1_800.gz', '2011-11-12 10:28:53', '1', '2011-11-12 10:29:03');
INSERT INTO `exp_trans_mark` VALUES ('746', '1321065000000-1321066800000', 'billing_1321065000000_1321066800000_1_574.gz', '2011-11-12 10:58:53', '1', '2011-11-12 10:59:03');
INSERT INTO `exp_trans_mark` VALUES ('747', '1321066800000-1321068600000', 'billing_1321066800000_1321068600000_1_366.gz', '2011-11-12 11:28:53', '1', '2011-11-12 11:29:03');
INSERT INTO `exp_trans_mark` VALUES ('748', '1321068600000-1321070400000', 'billing_1321068600000_1321070400000_1_741.gz', '2011-11-12 11:58:52', '1', '2011-11-12 11:59:03');
INSERT INTO `exp_trans_mark` VALUES ('749', '1321070400000-1321072200000', 'billing_1321070400000_1321072200000_1_66.gz', '2011-11-12 12:28:53', '1', '2011-11-12 12:29:03');
INSERT INTO `exp_trans_mark` VALUES ('750', '1321072200000-1321074000000', 'billing_1321072200000_1321074000000_1_187.gz', '2011-11-12 12:58:53', '1', '2011-11-12 12:59:03');
INSERT INTO `exp_trans_mark` VALUES ('751', '1321074000000-1321075800000', 'billing_1321074000000_1321075800000_1_988.gz', '2011-11-12 13:28:53', '1', '2011-11-12 13:29:03');
INSERT INTO `exp_trans_mark` VALUES ('752', '1321075800000-1321077600000', 'billing_1321075800000_1321077600000_1_163.gz', '2011-11-12 13:58:53', '1', '2011-11-12 13:59:03');
INSERT INTO `exp_trans_mark` VALUES ('753', '1321077600000-1321079400000', 'billing_1321077600000_1321079400000_1_866.gz', '2011-11-12 14:28:53', '1', '2011-11-12 14:29:03');
INSERT INTO `exp_trans_mark` VALUES ('754', '1321079400000-1321081200000', 'billing_1321079400000_1321081200000_1_125.gz', '2011-11-12 14:58:53', '1', '2011-11-12 14:59:03');
INSERT INTO `exp_trans_mark` VALUES ('755', '1321081200000-1321083000000', 'billing_1321081200000_1321083000000_1_918.gz', '2011-11-12 15:28:53', '1', '2011-11-12 15:29:03');
INSERT INTO `exp_trans_mark` VALUES ('756', '1321083000000-1321084800000', 'billing_1321083000000_1321084800000_1_753.gz', '2011-11-12 15:58:52', '1', '2011-11-12 15:59:02');
INSERT INTO `exp_trans_mark` VALUES ('757', '1321084800000-1321086600000', 'billing_1321084800000_1321086600000_1_582.gz', '2011-11-12 16:28:52', '1', '2011-11-12 16:29:02');
INSERT INTO `exp_trans_mark` VALUES ('758', '1321086600000-1321088400000', 'billing_1321086600000_1321088400000_1_978.gz', '2011-11-12 16:58:52', '1', '2011-11-12 16:59:02');
INSERT INTO `exp_trans_mark` VALUES ('759', '1321088400000-1321090200000', 'billing_1321088400000_1321090200000_1_921.gz', '2011-11-12 17:28:53', '1', '2011-11-12 17:29:03');
INSERT INTO `exp_trans_mark` VALUES ('760', '1321090200000-1321092000000', 'billing_1321090200000_1321092000000_1_491.gz', '2011-11-12 17:58:53', '1', '2011-11-12 17:59:03');
INSERT INTO `exp_trans_mark` VALUES ('761', '1321092000000-1321093800000', 'billing_1321092000000_1321093800000_1_3.gz', '2011-11-12 18:28:53', '1', '2011-11-12 18:29:03');
INSERT INTO `exp_trans_mark` VALUES ('762', '1321093800000-1321095600000', 'billing_1321093800000_1321095600000_1_733.gz', '2011-11-12 18:58:52', '1', '2011-11-12 18:59:02');
INSERT INTO `exp_trans_mark` VALUES ('763', '1321095600000-1321097400000', 'billing_1321095600000_1321097400000_1_652.gz', '2011-11-12 19:28:53', '1', '2011-11-12 19:29:03');
INSERT INTO `exp_trans_mark` VALUES ('764', '1321097400000-1321099200000', 'billing_1321097400000_1321099200000_1_894.gz', '2011-11-12 19:58:52', '1', '2011-11-12 19:59:02');
INSERT INTO `exp_trans_mark` VALUES ('765', '1321099200000-1321101000000', 'billing_1321099200000_1321101000000_1_694.gz', '2011-11-12 20:28:53', '1', '2011-11-12 20:29:03');
INSERT INTO `exp_trans_mark` VALUES ('766', '1321101000000-1321102800000', 'billing_1321101000000_1321102800000_1_631.gz', '2011-11-12 20:58:53', '1', '2011-11-12 20:59:03');
INSERT INTO `exp_trans_mark` VALUES ('767', '1321102800000-1321104600000', 'billing_1321102800000_1321104600000_1_263.gz', '2011-11-12 21:28:53', '1', '2011-11-12 21:29:03');
INSERT INTO `exp_trans_mark` VALUES ('768', '1321104600000-1321106400000', 'billing_1321104600000_1321106400000_1_290.gz', '2011-11-12 21:58:53', '1', '2011-11-12 21:59:03');
INSERT INTO `exp_trans_mark` VALUES ('769', '1321106400000-1321108200000', 'billing_1321106400000_1321108200000_1_116.gz', '2011-11-12 22:28:53', '1', '2011-11-12 22:29:03');
INSERT INTO `exp_trans_mark` VALUES ('770', '1321108200000-1321110000000', 'billing_1321108200000_1321110000000_1_148.gz', '2011-11-12 22:58:53', '1', '2011-11-12 22:59:03');
INSERT INTO `exp_trans_mark` VALUES ('771', '1321110000000-1321111800000', 'billing_1321110000000_1321111800000_1_928.gz', '2011-11-12 23:28:53', '1', '2011-11-12 23:29:03');
INSERT INTO `exp_trans_mark` VALUES ('772', '1321111800000-1321113600000', 'billing_1321111800000_1321113600000_1_840.gz', '2011-11-12 23:58:53', '1', '2011-11-12 23:59:03');
INSERT INTO `exp_trans_mark` VALUES ('773', '1321113600000-1321115400000', 'billing_1321113600000_1321115400000_1_978.gz', '2011-11-13 00:28:53', '1', '2011-11-13 00:29:03');
INSERT INTO `exp_trans_mark` VALUES ('774', '1321115400000-1321117200000', 'billing_1321115400000_1321117200000_1_93.gz', '2011-11-13 00:58:53', '1', '2011-11-13 00:59:03');
INSERT INTO `exp_trans_mark` VALUES ('775', '1321117200000-1321119000000', 'billing_1321117200000_1321119000000_1_392.gz', '2011-11-13 01:28:53', '1', '2011-11-13 01:29:03');
INSERT INTO `exp_trans_mark` VALUES ('776', '1321119000000-1321120800000', 'billing_1321119000000_1321120800000_1_876.gz', '2011-11-13 01:58:53', '1', '2011-11-13 01:59:03');
INSERT INTO `exp_trans_mark` VALUES ('777', '1321120800000-1321122600000', 'billing_1321120800000_1321122600000_1_622.gz', '2011-11-13 02:28:53', '1', '2011-11-13 02:29:03');
INSERT INTO `exp_trans_mark` VALUES ('778', '1321122600000-1321124400000', 'billing_1321122600000_1321124400000_1_842.gz', '2011-11-13 02:58:53', '1', '2011-11-13 02:59:03');
INSERT INTO `exp_trans_mark` VALUES ('779', '1321124400000-1321126200000', 'billing_1321124400000_1321126200000_1_618.gz', '2011-11-13 03:28:53', '1', '2011-11-13 03:29:03');
INSERT INTO `exp_trans_mark` VALUES ('780', '1321126200000-1321128000000', 'billing_1321126200000_1321128000000_1_325.gz', '2011-11-13 03:58:53', '1', '2011-11-13 03:59:03');
INSERT INTO `exp_trans_mark` VALUES ('781', '1321128000000-1321129800000', 'billing_1321128000000_1321129800000_1_207.gz', '2011-11-13 04:28:53', '1', '2011-11-13 04:29:03');
INSERT INTO `exp_trans_mark` VALUES ('782', '1321129800000-1321131600000', 'billing_1321129800000_1321131600000_1_769.gz', '2011-11-13 04:58:53', '1', '2011-11-13 04:59:03');
INSERT INTO `exp_trans_mark` VALUES ('783', '1321131600000-1321133400000', 'billing_1321131600000_1321133400000_1_647.gz', '2011-11-13 05:28:53', '1', '2011-11-13 05:29:03');
INSERT INTO `exp_trans_mark` VALUES ('784', '1321133400000-1321135200000', 'billing_1321133400000_1321135200000_1_380.gz', '2011-11-13 05:58:53', '1', '2011-11-13 05:59:03');
INSERT INTO `exp_trans_mark` VALUES ('785', '1321135200000-1321137000000', 'billing_1321135200000_1321137000000_1_898.gz', '2011-11-13 06:28:53', '1', '2011-11-13 06:29:03');
INSERT INTO `exp_trans_mark` VALUES ('786', '1321137000000-1321138800000', 'billing_1321137000000_1321138800000_1_101.gz', '2011-11-13 06:58:52', '1', '2011-11-13 06:59:03');
INSERT INTO `exp_trans_mark` VALUES ('787', '1321138800000-1321140600000', 'billing_1321138800000_1321140600000_1_459.gz', '2011-11-13 07:28:52', '1', '2011-11-13 07:29:03');
INSERT INTO `exp_trans_mark` VALUES ('788', '1321140600000-1321142400000', 'billing_1321140600000_1321142400000_1_885.gz', '2011-11-13 07:58:53', '1', '2011-11-13 07:59:03');
INSERT INTO `exp_trans_mark` VALUES ('789', '1321142400000-1321144200000', 'billing_1321142400000_1321144200000_1_749.gz', '2011-11-13 08:28:53', '1', '2011-11-13 08:29:03');
INSERT INTO `exp_trans_mark` VALUES ('790', '1321144200000-1321146000000', 'billing_1321144200000_1321146000000_1_815.gz', '2011-11-13 08:58:52', '1', '2011-11-13 08:59:03');
INSERT INTO `exp_trans_mark` VALUES ('791', '1321146000000-1321147800000', 'billing_1321146000000_1321147800000_1_580.gz', '2011-11-13 09:28:52', '1', '2011-11-13 09:29:03');
INSERT INTO `exp_trans_mark` VALUES ('792', '1321147800000-1321149600000', 'billing_1321147800000_1321149600000_1_363.gz', '2011-11-13 09:58:52', '1', '2011-11-13 09:59:02');
INSERT INTO `exp_trans_mark` VALUES ('793', '1321149600000-1321151400000', 'billing_1321149600000_1321151400000_1_720.gz', '2011-11-13 10:28:52', '1', '2011-11-13 10:29:02');
INSERT INTO `exp_trans_mark` VALUES ('794', '1321151400000-1321153200000', 'billing_1321151400000_1321153200000_1_151.gz', '2011-11-13 10:58:53', '1', '2011-11-13 10:59:03');
INSERT INTO `exp_trans_mark` VALUES ('795', '1321153200000-1321155000000', 'billing_1321153200000_1321155000000_1_187.gz', '2011-11-13 11:28:53', '1', '2011-11-13 11:29:03');
INSERT INTO `exp_trans_mark` VALUES ('796', '1321155000000-1321156800000', 'billing_1321155000000_1321156800000_1_342.gz', '2011-11-13 11:58:53', '1', '2011-11-13 11:59:03');
INSERT INTO `exp_trans_mark` VALUES ('797', '1321156800000-1321158600000', 'billing_1321156800000_1321158600000_1_246.gz', '2011-11-13 12:28:53', '1', '2011-11-13 12:29:03');
INSERT INTO `exp_trans_mark` VALUES ('798', '1321158600000-1321160400000', 'billing_1321158600000_1321160400000_1_367.gz', '2011-11-13 12:58:53', '1', '2011-11-13 12:59:03');
INSERT INTO `exp_trans_mark` VALUES ('799', '1321160400000-1321162200000', 'billing_1321160400000_1321162200000_1_326.gz', '2011-11-13 13:28:52', '1', '2011-11-13 13:29:02');
INSERT INTO `exp_trans_mark` VALUES ('800', '1321162200000-1321164000000', 'billing_1321162200000_1321164000000_1_483.gz', '2011-11-13 13:58:53', '1', '2011-11-13 13:59:03');
INSERT INTO `exp_trans_mark` VALUES ('801', '1321164000000-1321165800000', 'billing_1321164000000_1321165800000_1_594.gz', '2011-11-13 14:28:53', '1', '2011-11-13 14:29:03');
INSERT INTO `exp_trans_mark` VALUES ('802', '1321165800000-1321167600000', 'billing_1321165800000_1321167600000_1_255.gz', '2011-11-13 14:58:53', '1', '2011-11-13 14:59:03');
INSERT INTO `exp_trans_mark` VALUES ('803', '1321167600000-1321169400000', 'billing_1321167600000_1321169400000_1_918.gz', '2011-11-13 15:28:53', '1', '2011-11-13 15:29:03');
INSERT INTO `exp_trans_mark` VALUES ('804', '1321169400000-1321171200000', 'billing_1321169400000_1321171200000_1_2.gz', '2011-11-13 15:58:53', '1', '2011-11-13 15:59:03');
INSERT INTO `exp_trans_mark` VALUES ('805', '1321171200000-1321173000000', 'billing_1321171200000_1321173000000_1_835.gz', '2011-11-13 16:28:53', '1', '2011-11-13 16:29:03');
INSERT INTO `exp_trans_mark` VALUES ('806', '1321173000000-1321174800000', 'billing_1321173000000_1321174800000_1_957.gz', '2011-11-13 16:58:53', '1', '2011-11-13 16:59:03');
INSERT INTO `exp_trans_mark` VALUES ('807', '1321174800000-1321176600000', 'billing_1321174800000_1321176600000_1_866.gz', '2011-11-13 17:28:53', '1', '2011-11-13 17:29:03');
INSERT INTO `exp_trans_mark` VALUES ('808', '1321176600000-1321178400000', 'billing_1321176600000_1321178400000_1_377.gz', '2011-11-13 17:58:53', '1', '2011-11-13 17:59:03');
INSERT INTO `exp_trans_mark` VALUES ('809', '1321178400000-1321180200000', 'billing_1321178400000_1321180200000_1_218.gz', '2011-11-13 18:28:52', '1', '2011-11-13 18:29:02');
INSERT INTO `exp_trans_mark` VALUES ('810', '1321180200000-1321182000000', 'billing_1321180200000_1321182000000_1_167.gz', '2011-11-13 18:58:53', '1', '2011-11-13 18:59:03');
INSERT INTO `exp_trans_mark` VALUES ('811', '1321182000000-1321183800000', 'billing_1321182000000_1321183800000_1_801.gz', '2011-11-13 19:28:52', '1', '2011-11-13 19:29:02');
INSERT INTO `exp_trans_mark` VALUES ('812', '1321183800000-1321185600000', 'billing_1321183800000_1321185600000_1_769.gz', '2011-11-13 19:58:53', '1', '2011-11-13 19:59:03');
INSERT INTO `exp_trans_mark` VALUES ('813', '1321185600000-1321187400000', 'billing_1321185600000_1321187400000_1_690.gz', '2011-11-13 20:28:53', '1', '2011-11-13 20:29:03');
INSERT INTO `exp_trans_mark` VALUES ('814', '1321187400000-1321189200000', 'billing_1321187400000_1321189200000_1_94.gz', '2011-11-13 20:58:53', '1', '2011-11-13 20:59:03');
INSERT INTO `exp_trans_mark` VALUES ('815', '1321189200000-1321191000000', 'billing_1321189200000_1321191000000_1_472.gz', '2011-11-13 21:28:53', '1', '2011-11-13 21:29:03');
INSERT INTO `exp_trans_mark` VALUES ('816', '1321191000000-1321192800000', 'billing_1321191000000_1321192800000_1_91.gz', '2011-11-13 21:58:53', '1', '2011-11-13 21:59:03');
INSERT INTO `exp_trans_mark` VALUES ('817', '1321192800000-1321194600000', 'billing_1321192800000_1321194600000_1_906.gz', '2011-11-13 22:28:53', '1', '2011-11-13 22:29:03');
INSERT INTO `exp_trans_mark` VALUES ('818', '1321194600000-1321196400000', 'billing_1321194600000_1321196400000_1_308.gz', '2011-11-13 22:58:53', '1', '2011-11-13 22:59:03');
INSERT INTO `exp_trans_mark` VALUES ('819', '1321196400000-1321198200000', 'billing_1321196400000_1321198200000_1_155.gz', '2011-11-13 23:28:53', '1', '2011-11-13 23:29:03');
INSERT INTO `exp_trans_mark` VALUES ('820', '1321198200000-1321200000000', 'billing_1321198200000_1321200000000_1_695.gz', '2011-11-13 23:58:53', '1', '2011-11-13 23:59:03');
INSERT INTO `exp_trans_mark` VALUES ('821', '1321200000000-1321201800000', 'billing_1321200000000_1321201800000_1_172.gz', '2011-11-14 00:28:53', '1', '2011-11-14 00:29:03');
INSERT INTO `exp_trans_mark` VALUES ('822', '1321201800000-1321203600000', 'billing_1321201800000_1321203600000_1_173.gz', '2011-11-14 00:58:53', '1', '2011-11-14 00:59:03');
INSERT INTO `exp_trans_mark` VALUES ('823', '1321203600000-1321205400000', 'billing_1321203600000_1321205400000_1_478.gz', '2011-11-14 01:28:52', '1', '2011-11-14 01:29:03');
INSERT INTO `exp_trans_mark` VALUES ('824', '1321205400000-1321207200000', 'billing_1321205400000_1321207200000_1_992.gz', '2011-11-14 01:58:53', '1', '2011-11-14 01:59:03');
INSERT INTO `exp_trans_mark` VALUES ('825', '1321207200000-1321209000000', 'billing_1321207200000_1321209000000_1_108.gz', '2011-11-14 02:28:53', '1', '2011-11-14 02:29:03');
INSERT INTO `exp_trans_mark` VALUES ('826', '1321209000000-1321210800000', 'billing_1321209000000_1321210800000_1_796.gz', '2011-11-14 02:58:53', '1', '2011-11-14 02:59:03');
INSERT INTO `exp_trans_mark` VALUES ('827', '1321210800000-1321212600000', 'billing_1321210800000_1321212600000_1_122.gz', '2011-11-14 03:28:53', '1', '2011-11-14 03:29:03');
INSERT INTO `exp_trans_mark` VALUES ('828', '1321212600000-1321214400000', 'billing_1321212600000_1321214400000_1_460.gz', '2011-11-14 03:58:54', '1', '2011-11-14 03:59:04');
INSERT INTO `exp_trans_mark` VALUES ('829', '1321214400000-1321216200000', 'billing_1321214400000_1321216200000_1_574.gz', '2011-11-14 04:28:53', '1', '2011-11-14 04:29:03');
INSERT INTO `exp_trans_mark` VALUES ('830', '1321216200000-1321218000000', 'billing_1321216200000_1321218000000_1_980.gz', '2011-11-14 04:58:53', '1', '2011-11-14 04:59:03');
INSERT INTO `exp_trans_mark` VALUES ('831', '1321218000000-1321219800000', 'billing_1321218000000_1321219800000_1_786.gz', '2011-11-14 05:28:53', '1', '2011-11-14 05:29:03');
INSERT INTO `exp_trans_mark` VALUES ('832', '1321219800000-1321221600000', 'billing_1321219800000_1321221600000_1_572.gz', '2011-11-14 05:58:52', '1', '2011-11-14 05:59:02');
INSERT INTO `exp_trans_mark` VALUES ('833', '1321221600000-1321223400000', 'billing_1321221600000_1321223400000_1_317.gz', '2011-11-14 06:28:53', '1', '2011-11-14 06:29:04');
INSERT INTO `exp_trans_mark` VALUES ('834', '1321223400000-1321225200000', 'billing_1321223400000_1321225200000_1_693.gz', '2011-11-14 06:58:52', '1', '2011-11-14 06:59:03');
INSERT INTO `exp_trans_mark` VALUES ('835', '1321225200000-1321227000000', 'billing_1321225200000_1321227000000_1_807.gz', '2011-11-14 07:28:53', '1', '2011-11-14 07:29:03');
INSERT INTO `exp_trans_mark` VALUES ('836', '1321227000000-1321228800000', 'billing_1321227000000_1321228800000_1_731.gz', '2011-11-14 07:58:52', '1', '2011-11-14 07:59:02');
INSERT INTO `exp_trans_mark` VALUES ('837', '1321228800000-1321230600000', 'billing_1321228800000_1321230600000_1_540.gz', '2011-11-14 08:28:52', '1', '2011-11-14 08:29:02');
INSERT INTO `exp_trans_mark` VALUES ('838', '1321230600000-1321232400000', 'billing_1321230600000_1321232400000_1_650.gz', '2011-11-14 08:58:53', '1', '2011-11-14 08:58:53');
INSERT INTO `exp_trans_mark` VALUES ('839', '1321232400000-1321234200000', 'billing_1321232400000_1321234200000_1_847.gz', '2011-11-14 09:28:53', '1', '2011-11-14 09:28:53');
INSERT INTO `exp_trans_mark` VALUES ('840', '1321234200000-1321236000000', 'billing_1321234200000_1321236000000_1_881.gz', '2011-11-14 09:58:53', '1', '2011-11-14 09:58:53');
INSERT INTO `exp_trans_mark` VALUES ('841', '1321236000000-1321237800000', 'billing_1321236000000_1321237800000_1_451.gz', '2011-11-14 10:28:53', '1', '2011-11-14 10:28:53');
INSERT INTO `exp_trans_mark` VALUES ('842', '1321237800000-1321239600000', 'billing_1321237800000_1321239600000_1_830.gz', '2011-11-14 10:58:53', '1', '2011-11-14 10:58:53');
INSERT INTO `exp_trans_mark` VALUES ('843', '1321239600000-1321241400000', 'billing_1321239600000_1321241400000_1_833.gz', '2011-11-14 11:28:53', '1', '2011-11-14 11:28:53');
INSERT INTO `exp_trans_mark` VALUES ('844', '1321241400000-1321243200000', 'billing_1321241400000_1321243200000_1_698.gz', '2011-11-14 11:58:52', '1', '2011-11-14 11:58:53');
INSERT INTO `exp_trans_mark` VALUES ('845', '1321243200000-1321245000000', 'billing_1321243200000_1321245000000_1_88.gz', '2011-11-14 12:28:52', '1', '2011-11-14 12:28:53');
INSERT INTO `exp_trans_mark` VALUES ('846', '1321245000000-1321246800000', 'billing_1321245000000_1321246800000_1_980.gz', '2011-11-14 12:58:52', '1', '2011-11-14 12:58:52');
INSERT INTO `exp_trans_mark` VALUES ('847', '1321246800000-1321248600000', 'billing_1321246800000_1321248600000_1_670.gz', '2011-11-14 13:28:53', '1', '2011-11-14 13:28:53');
INSERT INTO `exp_trans_mark` VALUES ('848', '1321248600000-1321250400000', 'billing_1321248600000_1321250400000_1_470.gz', '2011-11-14 13:58:53', '1', '2011-11-14 13:58:53');
INSERT INTO `exp_trans_mark` VALUES ('849', '1321250400000-1321252200000', 'billing_1321250400000_1321252200000_1_109.gz', '2011-11-14 14:28:53', '1', '2011-11-14 14:28:53');
INSERT INTO `exp_trans_mark` VALUES ('850', '1321252200000-1321254000000', 'billing_1321252200000_1321254000000_1_146.gz', '2011-11-14 14:58:53', '1', '2011-11-14 14:58:53');
INSERT INTO `exp_trans_mark` VALUES ('851', '1321254000000-1321255800000', 'billing_1321254000000_1321255800000_1_991.gz', '2011-11-14 15:28:53', '1', '2011-11-14 15:28:53');
INSERT INTO `exp_trans_mark` VALUES ('852', '1321255800000-1321257600000', 'billing_1321255800000_1321257600000_1_652.gz', '2011-11-14 15:58:53', '1', '2011-11-14 15:58:53');
INSERT INTO `exp_trans_mark` VALUES ('853', '1321257600000-1321259400000', 'billing_1321257600000_1321259400000_1_58.gz', '2011-11-14 16:28:53', '1', '2011-11-14 16:28:53');
INSERT INTO `exp_trans_mark` VALUES ('854', '1321259400000-1321261200000', 'billing_1321259400000_1321261200000_1_461.gz', '2011-11-14 16:58:53', '1', '2011-11-14 16:58:53');
INSERT INTO `exp_trans_mark` VALUES ('855', '1321261200000-1321263000000', 'billing_1321261200000_1321263000000_1_231.gz', '2011-11-14 17:28:52', '1', '2011-11-14 17:28:53');
INSERT INTO `exp_trans_mark` VALUES ('856', '1321263000000-1321264800000', 'billing_1321263000000_1321264800000_1_145.gz', '2011-11-14 17:58:53', '1', '2011-11-14 17:58:53');
INSERT INTO `exp_trans_mark` VALUES ('857', '1321264800000-1321266600000', 'billing_1321264800000_1321266600000_1_55.gz', '2011-11-14 18:28:53', '1', '2011-11-14 18:28:53');
INSERT INTO `exp_trans_mark` VALUES ('858', '1321266600000-1321268400000', 'billing_1321266600000_1321268400000_1_85.gz', '2011-11-14 18:58:53', '1', '2011-11-14 18:58:53');
INSERT INTO `exp_trans_mark` VALUES ('859', '1321268400000-1321270200000', 'billing_1321268400000_1321270200000_1_298.gz', '2011-11-14 19:28:53', '1', '2011-11-14 19:28:53');
INSERT INTO `exp_trans_mark` VALUES ('860', '1321270200000-1321272000000', 'billing_1321270200000_1321272000000_1_994.gz', '2011-11-14 19:58:53', '1', '2011-11-14 19:58:53');
INSERT INTO `exp_trans_mark` VALUES ('861', '1321272000000-1321273800000', 'billing_1321272000000_1321273800000_1_354.gz', '2011-11-14 20:28:52', '1', '2011-11-14 20:28:53');
INSERT INTO `exp_trans_mark` VALUES ('862', '1321273800000-1321275600000', 'billing_1321273800000_1321275600000_1_991.gz', '2011-11-14 20:58:53', '1', '2011-11-14 20:58:53');
INSERT INTO `exp_trans_mark` VALUES ('863', '1321275600000-1321277400000', 'billing_1321275600000_1321277400000_1_896.gz', '2011-11-14 21:28:52', '1', '2011-11-14 21:28:53');
INSERT INTO `exp_trans_mark` VALUES ('864', '1321277400000-1321279200000', 'billing_1321277400000_1321279200000_1_408.gz', '2011-11-14 21:58:53', '1', '2011-11-14 21:58:53');
INSERT INTO `exp_trans_mark` VALUES ('865', '1321279200000-1321281000000', 'billing_1321279200000_1321281000000_1_317.gz', '2011-11-14 22:28:53', '1', '2011-11-14 22:28:53');
INSERT INTO `exp_trans_mark` VALUES ('866', '1321281000000-1321282800000', 'billing_1321281000000_1321282800000_1_925.gz', '2011-11-14 22:58:53', '1', '2011-11-14 22:58:53');
INSERT INTO `exp_trans_mark` VALUES ('867', '1321282800000-1321284600000', 'billing_1321282800000_1321284600000_1_939.gz', '2011-11-14 23:28:53', '1', '2011-11-14 23:28:53');
INSERT INTO `exp_trans_mark` VALUES ('868', '1321284600000-1321286400000', 'billing_1321284600000_1321286400000_1_696.gz', '2011-11-14 23:58:53', '1', '2011-11-14 23:58:53');
INSERT INTO `exp_trans_mark` VALUES ('869', '1321286400000-1321288200000', 'billing_1321286400000_1321288200000_1_425.gz', '2011-11-15 00:28:53', '1', '2011-11-15 00:28:53');
INSERT INTO `exp_trans_mark` VALUES ('870', '1321288200000-1321290000000', 'billing_1321288200000_1321290000000_1_566.gz', '2011-11-15 00:58:53', '1', '2011-11-15 00:58:53');
INSERT INTO `exp_trans_mark` VALUES ('871', '1321290000000-1321291800000', 'billing_1321290000000_1321291800000_1_356.gz', '2011-11-15 01:28:53', '1', '2011-11-15 01:28:53');
INSERT INTO `exp_trans_mark` VALUES ('872', '1321291800000-1321293600000', 'billing_1321291800000_1321293600000_1_131.gz', '2011-11-15 01:58:53', '1', '2011-11-15 01:58:53');
INSERT INTO `exp_trans_mark` VALUES ('873', '1321293600000-1321295400000', 'billing_1321293600000_1321295400000_1_755.gz', '2011-11-15 02:28:53', '1', '2011-11-15 02:28:53');
INSERT INTO `exp_trans_mark` VALUES ('874', '1321295400000-1321297200000', 'billing_1321295400000_1321297200000_1_961.gz', '2011-11-15 02:58:53', '1', '2011-11-15 02:58:53');
INSERT INTO `exp_trans_mark` VALUES ('875', '1321297200000-1321299000000', 'billing_1321297200000_1321299000000_1_548.gz', '2011-11-15 03:28:53', '1', '2011-11-15 03:28:53');
INSERT INTO `exp_trans_mark` VALUES ('876', '1321299000000-1321300800000', 'billing_1321299000000_1321300800000_1_958.gz', '2011-11-15 03:58:53', '1', '2011-11-15 03:58:53');
INSERT INTO `exp_trans_mark` VALUES ('877', '1321300800000-1321302600000', 'billing_1321300800000_1321302600000_1_236.gz', '2011-11-15 04:28:52', '1', '2011-11-15 04:28:52');
INSERT INTO `exp_trans_mark` VALUES ('878', '1321302600000-1321304400000', 'billing_1321302600000_1321304400000_1_286.gz', '2011-11-15 04:58:53', '1', '2011-11-15 04:58:53');
INSERT INTO `exp_trans_mark` VALUES ('879', '1321304400000-1321306200000', 'billing_1321304400000_1321306200000_1_711.gz', '2011-11-15 05:28:53', '1', '2011-11-15 05:28:53');
INSERT INTO `exp_trans_mark` VALUES ('880', '1321306200000-1321308000000', 'billing_1321306200000_1321308000000_1_744.gz', '2011-11-15 05:58:53', '1', '2011-11-15 05:58:53');
INSERT INTO `exp_trans_mark` VALUES ('881', '1321308000000-1321309800000', 'billing_1321308000000_1321309800000_1_969.gz', '2011-11-15 06:28:53', '1', '2011-11-15 06:28:53');
INSERT INTO `exp_trans_mark` VALUES ('882', '1321309800000-1321311600000', 'billing_1321309800000_1321311600000_1_663.gz', '2011-11-15 06:58:53', '1', '2011-11-15 06:58:53');
INSERT INTO `exp_trans_mark` VALUES ('883', '1321311600000-1321313400000', 'billing_1321311600000_1321313400000_1_973.gz', '2011-11-15 07:28:53', '1', '2011-11-15 07:28:53');
INSERT INTO `exp_trans_mark` VALUES ('884', '1321313400000-1321315200000', 'billing_1321313400000_1321315200000_1_592.gz', '2011-11-15 07:58:53', '1', '2011-11-15 07:58:53');
INSERT INTO `exp_trans_mark` VALUES ('885', '1321315200000-1321317000000', 'billing_1321315200000_1321317000000_1_799.gz', '2011-11-15 08:28:53', '1', '2011-11-15 08:28:53');
INSERT INTO `exp_trans_mark` VALUES ('886', '1321317000000-1321318800000', 'billing_1321317000000_1321318800000_1_981.gz', '2011-11-15 08:58:53', '1', '2011-11-15 08:58:53');
INSERT INTO `exp_trans_mark` VALUES ('887', '1321318800000-1321320600000', 'billing_1321318800000_1321320600000_1_600.gz', '2011-11-15 09:28:53', '1', '2011-11-15 09:28:53');
INSERT INTO `exp_trans_mark` VALUES ('888', '1321320600000-1321322400000', 'billing_1321320600000_1321322400000_1_258.gz', '2011-11-15 09:58:53', '1', '2011-11-15 09:58:53');
INSERT INTO `exp_trans_mark` VALUES ('889', '1321322400000-1321324200000', 'billing_1321322400000_1321324200000_1_330.gz', '2011-11-15 10:28:53', '1', '2011-11-15 10:28:53');
INSERT INTO `exp_trans_mark` VALUES ('890', '1321324200000-1321326000000', 'billing_1321324200000_1321326000000_1_261.gz', '2011-11-15 10:58:53', '1', '2011-11-15 10:58:53');
INSERT INTO `exp_trans_mark` VALUES ('891', '1321326000000-1321327800000', 'billing_1321326000000_1321327800000_1_319.gz', '2011-11-15 11:28:53', '1', '2011-11-15 11:28:53');
INSERT INTO `exp_trans_mark` VALUES ('892', '1321327800000-1321329600000', 'billing_1321327800000_1321329600000_1_690.gz', '2011-11-15 11:58:53', '1', '2011-11-15 11:58:53');
INSERT INTO `exp_trans_mark` VALUES ('893', '1321329600000-1321331400000', 'billing_1321329600000_1321331400000_1_27.gz', '2011-11-15 12:28:52', '1', '2011-11-15 12:28:52');
INSERT INTO `exp_trans_mark` VALUES ('894', '1321331400000-1321333200000', 'billing_1321331400000_1321333200000_1_827.gz', '2011-11-15 12:58:53', '1', '2011-11-15 12:58:53');
INSERT INTO `exp_trans_mark` VALUES ('895', '1321333200000-1321335000000', 'billing_1321333200000_1321335000000_1_535.gz', '2011-11-15 13:28:52', '1', '2011-11-15 13:28:53');
INSERT INTO `exp_trans_mark` VALUES ('896', '1321335000000-1321336800000', 'billing_1321335000000_1321336800000_1_774.gz', '2011-11-15 13:58:53', '1', '2011-11-15 13:58:53');
INSERT INTO `exp_trans_mark` VALUES ('897', '1321336800000-1321338600000', 'billing_1321336800000_1321338600000_1_588.gz', '2011-11-15 14:28:53', '1', '2011-11-15 14:28:53');
INSERT INTO `exp_trans_mark` VALUES ('898', '1321338600000-1321340400000', 'billing_1321338600000_1321340400000_1_203.gz', '2011-11-15 14:58:52', '1', '2011-11-15 14:58:53');
INSERT INTO `exp_trans_mark` VALUES ('899', '1321340400000-1321342200000', 'billing_1321340400000_1321342200000_1_694.gz', '2011-11-15 15:28:53', '1', '2011-11-15 15:28:54');
INSERT INTO `exp_trans_mark` VALUES ('900', '1321342200000-1321344000000', 'billing_1321342200000_1321344000000_1_539.gz', '2011-11-15 15:58:52', '1', '2011-11-15 15:58:52');
INSERT INTO `exp_trans_mark` VALUES ('901', '1321344000000-1321345800000', 'billing_1321344000000_1321345800000_1_247.gz', '2011-11-15 16:28:53', '1', '2011-11-15 16:28:59');
INSERT INTO `exp_trans_mark` VALUES ('902', '1321345800000-1321347600000', 'billing_1321345800000_1321347600000_1_270.gz', '2011-11-15 16:58:53', '1', '2011-11-15 16:58:53');
INSERT INTO `exp_trans_mark` VALUES ('903', '1321347600000-1321349400000', 'billing_1321347600000_1321349400000_1_358.gz', '2011-11-15 17:28:53', '1', '2011-11-15 17:28:53');
INSERT INTO `exp_trans_mark` VALUES ('904', '1321349400000-1321351200000', 'billing_1321349400000_1321351200000_1_217.gz', '2011-11-15 17:58:53', '1', '2011-11-15 17:58:53');
INSERT INTO `exp_trans_mark` VALUES ('905', '1321351200000-1321353000000', 'billing_1321351200000_1321353000000_1_140.gz', '2011-11-15 18:28:53', '1', '2011-11-15 18:28:53');
INSERT INTO `exp_trans_mark` VALUES ('906', '1321353000000-1321354800000', 'billing_1321353000000_1321354800000_1_482.gz', '2011-11-15 18:58:53', '1', '2011-11-15 18:58:53');
INSERT INTO `exp_trans_mark` VALUES ('907', '1321354800000-1321356600000', 'billing_1321354800000_1321356600000_1_69.gz', '2011-11-15 19:28:52', '1', '2011-11-15 19:28:52');
INSERT INTO `exp_trans_mark` VALUES ('908', '1321356600000-1321358400000', 'billing_1321356600000_1321358400000_1_108.gz', '2011-11-15 19:58:53', '1', '2011-11-15 19:58:53');
INSERT INTO `exp_trans_mark` VALUES ('909', '1321358400000-1321360200000', 'billing_1321358400000_1321360200000_1_256.gz', '2011-11-15 20:28:53', '1', '2011-11-15 20:28:53');
INSERT INTO `exp_trans_mark` VALUES ('910', '1321360200000-1321362000000', 'billing_1321360200000_1321362000000_1_183.gz', '2011-11-15 20:58:52', '1', '2011-11-15 20:58:52');
INSERT INTO `exp_trans_mark` VALUES ('911', '1321362000000-1321363800000', 'billing_1321362000000_1321363800000_1_358.gz', '2011-11-15 21:28:53', '1', '2011-11-15 21:28:53');
INSERT INTO `exp_trans_mark` VALUES ('912', '1321363800000-1321365600000', 'billing_1321363800000_1321365600000_1_363.gz', '2011-11-15 21:58:53', '1', '2011-11-15 21:58:53');
INSERT INTO `exp_trans_mark` VALUES ('913', '1321365600000-1321367400000', 'billing_1321365600000_1321367400000_1_960.gz', '2011-11-15 22:28:53', '1', '2011-11-15 22:28:53');
INSERT INTO `exp_trans_mark` VALUES ('914', '1321367400000-1321369200000', 'billing_1321367400000_1321369200000_1_198.gz', '2011-11-15 22:58:52', '1', '2011-11-15 22:58:53');
INSERT INTO `exp_trans_mark` VALUES ('915', '1321369200000-1321371000000', 'billing_1321369200000_1321371000000_1_512.gz', '2011-11-15 23:28:52', '1', '2011-11-15 23:28:52');
INSERT INTO `exp_trans_mark` VALUES ('916', '1321371000000-1321372800000', 'billing_1321371000000_1321372800000_1_370.gz', '2011-11-15 23:58:53', '1', '2011-11-15 23:58:53');
INSERT INTO `exp_trans_mark` VALUES ('917', '1321372800000-1321374600000', 'billing_1321372800000_1321374600000_1_675.gz', '2011-11-16 00:28:52', '1', '2011-11-16 00:28:52');
INSERT INTO `exp_trans_mark` VALUES ('918', '1321374600000-1321376400000', 'billing_1321374600000_1321376400000_1_191.gz', '2011-11-16 00:58:53', '1', '2011-11-16 00:58:53');
INSERT INTO `exp_trans_mark` VALUES ('919', '1321376400000-1321378200000', 'billing_1321376400000_1321378200000_1_821.gz', '2011-11-16 01:28:53', '1', '2011-11-16 01:28:53');
INSERT INTO `exp_trans_mark` VALUES ('920', '1321378200000-1321380000000', 'billing_1321378200000_1321380000000_1_832.gz', '2011-11-16 01:58:52', '1', '2011-11-16 01:58:52');
INSERT INTO `exp_trans_mark` VALUES ('921', '1321380000000-1321381800000', 'billing_1321380000000_1321381800000_1_226.gz', '2011-11-16 02:28:53', '1', '2011-11-16 02:28:53');
INSERT INTO `exp_trans_mark` VALUES ('922', '1321381800000-1321383600000', 'billing_1321381800000_1321383600000_1_438.gz', '2011-11-16 02:58:53', '1', '2011-11-16 02:58:53');
INSERT INTO `exp_trans_mark` VALUES ('923', '1321383600000-1321385400000', 'billing_1321383600000_1321385400000_1_708.gz', '2011-11-16 03:28:53', '1', '2011-11-16 03:28:53');
INSERT INTO `exp_trans_mark` VALUES ('924', '1321385400000-1321387200000', 'billing_1321385400000_1321387200000_1_705.gz', '2011-11-16 03:58:53', '1', '2011-11-16 03:58:53');
INSERT INTO `exp_trans_mark` VALUES ('925', '1321387200000-1321389000000', 'billing_1321387200000_1321389000000_1_377.gz', '2011-11-16 04:28:53', '1', '2011-11-16 04:28:53');
INSERT INTO `exp_trans_mark` VALUES ('926', '1321389000000-1321390800000', 'billing_1321389000000_1321390800000_1_503.gz', '2011-11-16 04:58:53', '1', '2011-11-16 04:58:53');
INSERT INTO `exp_trans_mark` VALUES ('927', '1321390800000-1321392600000', 'billing_1321390800000_1321392600000_1_261.gz', '2011-11-16 05:28:53', '1', '2011-11-16 05:28:53');
INSERT INTO `exp_trans_mark` VALUES ('928', '1321392600000-1321394400000', 'billing_1321392600000_1321394400000_1_724.gz', '2011-11-16 05:58:53', '1', '2011-11-16 05:58:53');
INSERT INTO `exp_trans_mark` VALUES ('929', '1321394400000-1321396200000', 'billing_1321394400000_1321396200000_1_290.gz', '2011-11-16 06:28:53', '1', '2011-11-16 06:28:53');
INSERT INTO `exp_trans_mark` VALUES ('930', '1321396200000-1321398000000', 'billing_1321396200000_1321398000000_1_833.gz', '2011-11-16 06:58:53', '1', '2011-11-16 06:58:53');
INSERT INTO `exp_trans_mark` VALUES ('931', '1321398000000-1321399800000', 'billing_1321398000000_1321399800000_1_839.gz', '2011-11-16 07:28:53', '1', '2011-11-16 07:28:53');
INSERT INTO `exp_trans_mark` VALUES ('932', '1321399800000-1321401600000', 'billing_1321399800000_1321401600000_1_544.gz', '2011-11-16 07:58:52', '1', '2011-11-16 07:58:52');
INSERT INTO `exp_trans_mark` VALUES ('933', '1321401600000-1321403400000', 'billing_1321401600000_1321403400000_1_118.gz', '2011-11-16 08:28:52', '1', '2011-11-16 08:28:52');
INSERT INTO `exp_trans_mark` VALUES ('934', '1321403400000-1321405200000', 'billing_1321403400000_1321405200000_1_810.gz', '2011-11-16 08:58:52', '1', '2011-11-16 08:58:53');
INSERT INTO `exp_trans_mark` VALUES ('935', '1321405200000-1321407000000', 'billing_1321405200000_1321407000000_1_59.gz', '2011-11-16 09:28:53', '1', '2011-11-16 09:28:53');
INSERT INTO `exp_trans_mark` VALUES ('936', '1321407000000-1321408800000', 'billing_1321407000000_1321408800000_1_595.gz', '2011-11-16 09:58:54', '1', '2011-11-16 09:58:54');
INSERT INTO `exp_trans_mark` VALUES ('937', '1321408800000-1321410600000', 'billing_1321408800000_1321410600000_1_868.gz', '2011-11-16 10:28:53', '1', '2011-11-16 10:28:53');
INSERT INTO `exp_trans_mark` VALUES ('938', '1321410600000-1321412400000', 'billing_1321410600000_1321412400000_1_964.gz', '2011-11-16 10:58:53', '1', '2011-11-16 10:58:53');
INSERT INTO `exp_trans_mark` VALUES ('939', '1321412400000-1321414200000', 'billing_1321412400000_1321414200000_1_44.gz', '2011-11-16 11:28:53', '1', '2011-11-16 11:28:59');
INSERT INTO `exp_trans_mark` VALUES ('940', '1321414200000-1321416000000', 'billing_1321414200000_1321416000000_1_126.gz', '2011-11-16 11:58:52', '1', '2011-11-16 11:58:52');
INSERT INTO `exp_trans_mark` VALUES ('941', '1321416000000-1321417800000', 'billing_1321416000000_1321417800000_1_654.gz', '2011-11-16 12:28:53', '1', '2011-11-16 12:28:53');
INSERT INTO `exp_trans_mark` VALUES ('942', '1321417800000-1321419600000', 'billing_1321417800000_1321419600000_1_340.gz', '2011-11-16 12:58:53', '1', '2011-11-16 12:58:53');
INSERT INTO `exp_trans_mark` VALUES ('943', '1321419600000-1321421400000', 'billing_1321419600000_1321421400000_1_50.gz', '2011-11-16 13:28:53', '1', '2011-11-16 13:28:53');
INSERT INTO `exp_trans_mark` VALUES ('944', '1321421400000-1321423200000', 'billing_1321421400000_1321423200000_1_320.gz', '2011-11-16 13:58:53', '1', '2011-11-16 13:58:53');
INSERT INTO `exp_trans_mark` VALUES ('945', '1321423200000-1321425000000', 'billing_1321423200000_1321425000000_1_781.gz', '2011-11-16 14:28:53', '1', '2011-11-16 14:28:53');
INSERT INTO `exp_trans_mark` VALUES ('946', '1321425000000-1321426800000', 'billing_1321425000000_1321426800000_1_551.gz', '2011-11-16 14:58:53', '1', '2011-11-16 14:59:03');
INSERT INTO `exp_trans_mark` VALUES ('947', '1321426800000-1321428600000', 'billing_1321426800000_1321428600000_1_107.gz', '2011-11-16 15:28:53', '1', '2011-11-16 15:28:53');
INSERT INTO `exp_trans_mark` VALUES ('948', '1321428600000-1321430400000', 'billing_1321428600000_1321430400000_1_363.gz', '2011-11-16 15:58:53', '1', '2011-11-16 15:58:53');
INSERT INTO `exp_trans_mark` VALUES ('949', '1321430400000-1321432200000', 'billing_1321430400000_1321432200000_1_449.gz', '2011-11-16 16:28:53', '1', '2011-11-16 16:28:53');
INSERT INTO `exp_trans_mark` VALUES ('950', '1321432200000-1321434000000', 'billing_1321432200000_1321434000000_1_706.gz', '2011-11-16 16:58:53', '1', '2011-11-16 16:58:53');
INSERT INTO `exp_trans_mark` VALUES ('951', '1321434000000-1321435800000', 'billing_1321434000000_1321435800000_1_102.gz', '2011-11-16 17:28:52', '1', '2011-11-16 17:28:52');
INSERT INTO `exp_trans_mark` VALUES ('952', '1321435800000-1321437600000', 'billing_1321435800000_1321437600000_1_787.gz', '2011-11-16 17:58:53', '1', '2011-11-16 17:58:53');
INSERT INTO `exp_trans_mark` VALUES ('953', '1321437600000-1321439400000', 'billing_1321437600000_1321439400000_1_736.gz', '2011-11-16 18:28:53', '1', '2011-11-16 18:28:53');
INSERT INTO `exp_trans_mark` VALUES ('954', '1321439400000-1321441200000', 'billing_1321439400000_1321441200000_1_654.gz', '2011-11-16 18:58:53', '1', '2011-11-16 18:58:53');
INSERT INTO `exp_trans_mark` VALUES ('955', '1321441200000-1321443000000', 'billing_1321441200000_1321443000000_1_87.gz', '2011-11-16 19:28:52', '1', '2011-11-16 19:28:53');
INSERT INTO `exp_trans_mark` VALUES ('956', '1321443000000-1321444800000', 'billing_1321443000000_1321444800000_1_578.gz', '2011-11-16 19:58:52', '1', '2011-11-16 19:58:52');
INSERT INTO `exp_trans_mark` VALUES ('957', '1321444800000-1321446600000', 'billing_1321444800000_1321446600000_1_344.gz', '2011-11-16 20:28:53', '1', '2011-11-16 20:28:53');
INSERT INTO `exp_trans_mark` VALUES ('958', '1321446600000-1321448400000', 'billing_1321446600000_1321448400000_1_764.gz', '2011-11-16 20:58:52', '1', '2011-11-16 20:58:53');
INSERT INTO `exp_trans_mark` VALUES ('959', '1321448400000-1321450200000', 'billing_1321448400000_1321450200000_1_280.gz', '2011-11-16 21:28:53', '1', '2011-11-16 21:28:53');
INSERT INTO `exp_trans_mark` VALUES ('960', '1321450200000-1321452000000', 'billing_1321450200000_1321452000000_1_310.gz', '2011-11-16 21:58:52', '1', '2011-11-16 21:58:53');
INSERT INTO `exp_trans_mark` VALUES ('961', '1321452000000-1321453800000', 'billing_1321452000000_1321453800000_1_956.gz', '2011-11-16 22:28:52', '1', '2011-11-16 22:28:52');
INSERT INTO `exp_trans_mark` VALUES ('962', '1321453800000-1321455600000', 'billing_1321453800000_1321455600000_1_588.gz', '2011-11-16 22:58:53', '1', '2011-11-16 22:58:53');
INSERT INTO `exp_trans_mark` VALUES ('963', '1321455600000-1321457400000', 'billing_1321455600000_1321457400000_1_408.gz', '2011-11-16 23:28:53', '1', '2011-11-16 23:28:53');
INSERT INTO `exp_trans_mark` VALUES ('964', '1321457400000-1321459200000', 'billing_1321457400000_1321459200000_1_120.gz', '2011-11-16 23:58:52', '1', '2011-11-16 23:59:02');
INSERT INTO `exp_trans_mark` VALUES ('965', '1321459200000-1321461000000', 'billing_1321459200000_1321461000000_1_853.gz', '2011-11-17 00:28:53', '1', '2011-11-17 00:29:03');
INSERT INTO `exp_trans_mark` VALUES ('966', '1321461000000-1321462800000', 'billing_1321461000000_1321462800000_1_711.gz', '2011-11-17 00:58:53', '1', '2011-11-17 00:59:03');
INSERT INTO `exp_trans_mark` VALUES ('967', '1321462800000-1321464600000', 'billing_1321462800000_1321464600000_1_333.gz', '2011-11-17 01:28:53', '1', '2011-11-17 01:29:03');
INSERT INTO `exp_trans_mark` VALUES ('968', '1321464600000-1321466400000', 'billing_1321464600000_1321466400000_1_987.gz', '2011-11-17 01:58:52', '1', '2011-11-17 01:59:02');
INSERT INTO `exp_trans_mark` VALUES ('969', '1321466400000-1321468200000', 'billing_1321466400000_1321468200000_1_54.gz', '2011-11-17 02:28:52', '1', '2011-11-17 02:29:03');
INSERT INTO `exp_trans_mark` VALUES ('970', '1321468200000-1321470000000', 'billing_1321468200000_1321470000000_1_951.gz', '2011-11-17 02:58:52', '1', '2011-11-17 02:59:02');
INSERT INTO `exp_trans_mark` VALUES ('971', '1321470000000-1321471800000', 'billing_1321470000000_1321471800000_1_593.gz', '2011-11-17 03:28:53', '1', '2011-11-17 03:29:03');
INSERT INTO `exp_trans_mark` VALUES ('972', '1321471800000-1321473600000', 'billing_1321471800000_1321473600000_1_217.gz', '2011-11-17 03:58:53', '1', '2011-11-17 03:59:03');
INSERT INTO `exp_trans_mark` VALUES ('973', '1321473600000-1321475400000', 'billing_1321473600000_1321475400000_1_422.gz', '2011-11-17 04:28:53', '1', '2011-11-17 04:29:03');
INSERT INTO `exp_trans_mark` VALUES ('974', '1321475400000-1321477200000', 'billing_1321475400000_1321477200000_1_383.gz', '2011-11-17 04:58:53', '1', '2011-11-17 04:59:03');
INSERT INTO `exp_trans_mark` VALUES ('975', '1321477200000-1321479000000', 'billing_1321477200000_1321479000000_1_99.gz', '2011-11-17 05:28:53', '1', '2011-11-17 05:29:03');
INSERT INTO `exp_trans_mark` VALUES ('976', '1321479000000-1321480800000', 'billing_1321479000000_1321480800000_1_429.gz', '2011-11-17 05:58:53', '1', '2011-11-17 05:59:03');
INSERT INTO `exp_trans_mark` VALUES ('977', '1321480800000-1321482600000', 'billing_1321480800000_1321482600000_1_838.gz', '2011-11-17 06:28:52', '1', '2011-11-17 06:29:02');
INSERT INTO `exp_trans_mark` VALUES ('978', '1321482600000-1321484400000', 'billing_1321482600000_1321484400000_1_203.gz', '2011-11-17 06:58:53', '1', '2011-11-17 06:59:03');
INSERT INTO `exp_trans_mark` VALUES ('979', '1321484400000-1321486200000', 'billing_1321484400000_1321486200000_1_660.gz', '2011-11-17 07:28:53', '1', '2011-11-17 07:29:03');
INSERT INTO `exp_trans_mark` VALUES ('980', '1321486200000-1321488000000', 'billing_1321486200000_1321488000000_1_178.gz', '2011-11-17 07:58:53', '1', '2011-11-17 07:59:03');
INSERT INTO `exp_trans_mark` VALUES ('981', '1321488000000-1321489800000', 'billing_1321488000000_1321489800000_1_424.gz', '2011-11-17 08:28:53', '1', '2011-11-17 08:29:03');
INSERT INTO `exp_trans_mark` VALUES ('982', '1321489800000-1321491600000', 'billing_1321489800000_1321491600000_1_480.gz', '2011-11-17 08:58:52', '1', '2011-11-17 08:58:52');
INSERT INTO `exp_trans_mark` VALUES ('983', '1321491600000-1321493400000', 'billing_1321491600000_1321493400000_1_704.gz', '2011-11-17 09:28:53', '1', '2011-11-17 09:28:53');
INSERT INTO `exp_trans_mark` VALUES ('984', '1321493400000-1321495200000', 'billing_1321493400000_1321495200000_1_167.gz', '2011-11-17 09:58:53', '1', '2011-11-17 09:58:53');
INSERT INTO `exp_trans_mark` VALUES ('985', '1321495200000-1321497000000', 'billing_1321495200000_1321497000000_1_460.gz', '2011-11-17 10:28:53', '1', '2011-11-17 10:28:53');
INSERT INTO `exp_trans_mark` VALUES ('986', '1321497000000-1321498800000', 'billing_1321497000000_1321498800000_1_220.gz', '2011-11-17 10:58:53', '1', '2011-11-17 10:58:53');
INSERT INTO `exp_trans_mark` VALUES ('987', '1321498800000-1321500600000', 'billing_1321498800000_1321500600000_1_487.gz', '2011-11-17 11:28:52', '1', '2011-11-17 11:28:52');
INSERT INTO `exp_trans_mark` VALUES ('988', '1321500600000-1321502400000', 'billing_1321500600000_1321502400000_1_788.gz', '2011-11-17 11:58:53', '1', '2011-11-17 11:58:53');
INSERT INTO `exp_trans_mark` VALUES ('989', '1321502400000-1321504200000', 'billing_1321502400000_1321504200000_1_722.gz', '2011-11-17 12:28:53', '1', '2011-11-17 12:28:53');
INSERT INTO `exp_trans_mark` VALUES ('990', '1321504200000-1321506000000', 'billing_1321504200000_1321506000000_1_243.gz', '2011-11-17 12:58:53', '1', '2011-11-17 12:58:53');
INSERT INTO `exp_trans_mark` VALUES ('991', '1321506000000-1321507800000', 'billing_1321506000000_1321507800000_1_375.gz', '2011-11-17 13:28:53', '1', '2011-11-17 13:28:53');
INSERT INTO `exp_trans_mark` VALUES ('992', '1321507800000-1321509600000', 'billing_1321507800000_1321509600000_1_440.gz', '2011-11-17 13:58:53', '1', '2011-11-17 13:58:53');
INSERT INTO `exp_trans_mark` VALUES ('993', '1321509600000-1321511400000', 'billing_1321509600000_1321511400000_1_12.gz', '2011-11-17 14:28:53', '1', '2011-11-17 14:28:53');
INSERT INTO `exp_trans_mark` VALUES ('994', '1321511400000-1321513200000', 'billing_1321511400000_1321513200000_1_910.gz', '2011-11-17 14:58:52', '1', '2011-11-17 14:58:52');
INSERT INTO `exp_trans_mark` VALUES ('995', '1321513200000-1321515000000', 'billing_1321513200000_1321515000000_1_972.gz', '2011-11-17 15:28:53', '1', '2011-11-17 15:28:54');
INSERT INTO `exp_trans_mark` VALUES ('996', '1321515000000-1321516800000', 'billing_1321515000000_1321516800000_1_720.gz', '2011-11-17 15:58:52', '1', '2011-11-17 15:58:52');
INSERT INTO `exp_trans_mark` VALUES ('997', '1321516800000-1321518600000', 'billing_1321516800000_1321518600000_1_522.gz', '2011-11-17 16:28:53', '1', '2011-11-17 16:28:53');
INSERT INTO `exp_trans_mark` VALUES ('998', '1321518600000-1321520400000', 'billing_1321518600000_1321520400000_1_177.gz', '2011-11-17 16:58:53', '1', '2011-11-17 16:58:53');
INSERT INTO `exp_trans_mark` VALUES ('999', '1321520400000-1321522200000', 'billing_1321520400000_1321522200000_1_95.gz', '2011-11-17 17:28:53', '1', '2011-11-17 17:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1000', '1321522200000-1321524000000', 'billing_1321522200000_1321524000000_1_417.gz', '2011-11-17 17:58:53', '1', '2011-11-17 17:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1001', '1321524000000-1321525800000', 'billing_1321524000000_1321525800000_1_561.gz', '2011-11-17 18:28:53', '1', '2011-11-17 18:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1002', '1321525800000-1321527600000', 'billing_1321525800000_1321527600000_1_319.gz', '2011-11-17 18:58:53', '1', '2011-11-17 18:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1003', '1321527600000-1321529400000', 'billing_1321527600000_1321529400000_1_240.gz', '2011-11-17 19:28:53', '1', '2011-11-17 19:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1004', '1321529400000-1321531200000', 'billing_1321529400000_1321531200000_1_944.gz', '2011-11-17 19:58:53', '1', '2011-11-17 19:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1005', '1321531200000-1321533000000', 'billing_1321531200000_1321533000000_1_850.gz', '2011-11-17 20:28:53', '1', '2011-11-17 20:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1006', '1321533000000-1321534800000', 'billing_1321533000000_1321534800000_1_312.gz', '2011-11-17 20:58:53', '1', '2011-11-17 20:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1007', '1321534800000-1321536600000', 'billing_1321534800000_1321536600000_1_66.gz', '2011-11-17 21:28:53', '1', '2011-11-17 21:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1008', '1321536600000-1321538400000', 'billing_1321536600000_1321538400000_1_187.gz', '2011-11-17 21:58:53', '1', '2011-11-17 21:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1009', '1321538400000-1321540200000', 'billing_1321538400000_1321540200000_1_797.gz', '2011-11-17 22:28:53', '1', '2011-11-17 22:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1010', '1321540200000-1321542000000', 'billing_1321540200000_1321542000000_1_680.gz', '2011-11-17 22:58:53', '1', '2011-11-17 22:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1011', '1321542000000-1321543800000', 'billing_1321542000000_1321543800000_1_667.gz', '2011-11-17 23:28:52', '1', '2011-11-17 23:28:52');
INSERT INTO `exp_trans_mark` VALUES ('1012', '1321543800000-1321545600000', 'billing_1321543800000_1321545600000_1_903.gz', '2011-11-17 23:58:53', '1', '2011-11-17 23:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1013', '1321545600000-1321547400000', 'billing_1321545600000_1321547400000_1_240.gz', '2011-11-18 00:28:53', '1', '2011-11-18 00:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1014', '1321547400000-1321549200000', 'billing_1321547400000_1321549200000_1_296.gz', '2011-11-18 00:58:53', '1', '2011-11-18 00:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1015', '1321549200000-1321551000000', 'billing_1321549200000_1321551000000_1_331.gz', '2011-11-18 01:28:53', '1', '2011-11-18 01:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1016', '1321551000000-1321552800000', 'billing_1321551000000_1321552800000_1_98.gz', '2011-11-18 01:58:53', '1', '2011-11-18 01:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1017', '1321552800000-1321554600000', 'billing_1321552800000_1321554600000_1_824.gz', '2011-11-18 02:28:52', '1', '2011-11-18 02:28:52');
INSERT INTO `exp_trans_mark` VALUES ('1018', '1321554600000-1321556400000', 'billing_1321554600000_1321556400000_1_700.gz', '2011-11-18 02:58:53', '1', '2011-11-18 02:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1019', '1321556400000-1321558200000', 'billing_1321556400000_1321558200000_1_349.gz', '2011-11-18 03:28:53', '1', '2011-11-18 03:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1020', '1321558200000-1321560000000', 'billing_1321558200000_1321560000000_1_182.gz', '2011-11-18 03:58:52', '1', '2011-11-18 03:58:52');
INSERT INTO `exp_trans_mark` VALUES ('1021', '1321560000000-1321561800000', 'billing_1321560000000_1321561800000_1_93.gz', '2011-11-18 04:28:53', '1', '2011-11-18 04:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1022', '1321561800000-1321563600000', 'billing_1321561800000_1321563600000_1_677.gz', '2011-11-18 04:58:53', '1', '2011-11-18 04:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1023', '1321563600000-1321565400000', 'billing_1321563600000_1321565400000_1_975.gz', '2011-11-18 05:28:53', '1', '2011-11-18 05:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1024', '1321565400000-1321567200000', 'billing_1321565400000_1321567200000_1_504.gz', '2011-11-18 05:58:53', '1', '2011-11-18 05:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1025', '1321567200000-1321569000000', 'billing_1321567200000_1321569000000_1_943.gz', '2011-11-18 06:28:53', '1', '2011-11-18 06:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1026', '1321569000000-1321570800000', 'billing_1321569000000_1321570800000_1_609.gz', '2011-11-18 06:58:53', '1', '2011-11-18 06:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1027', '1321570800000-1321572600000', 'billing_1321570800000_1321572600000_1_156.gz', '2011-11-18 07:28:52', '1', '2011-11-18 07:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1028', '1321572600000-1321574400000', 'billing_1321572600000_1321574400000_1_974.gz', '2011-11-18 07:58:53', '1', '2011-11-18 07:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1029', '1321574400000-1321576200000', 'billing_1321574400000_1321576200000_1_476.gz', '2011-11-18 08:28:53', '1', '2011-11-18 08:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1030', '1321576200000-1321578000000', 'billing_1321576200000_1321578000000_1_617.gz', '2011-11-18 08:58:53', '1', '2011-11-18 08:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1031', '1321578000000-1321579800000', 'billing_1321578000000_1321579800000_1_166.gz', '2011-11-18 09:28:53', '1', '2011-11-18 09:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1032', '1321579800000-1321581600000', 'billing_1321579800000_1321581600000_1_425.gz', '2011-11-18 09:58:52', '1', '2011-11-18 09:58:52');
INSERT INTO `exp_trans_mark` VALUES ('1033', '1321581600000-1321583400000', 'billing_1321581600000_1321583400000_1_382.gz', '2011-11-18 10:28:53', '1', '2011-11-18 10:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1034', '1321583400000-1321585200000', 'billing_1321583400000_1321585200000_1_63.gz', '2011-11-18 10:58:53', '1', '2011-11-18 10:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1035', '1321585200000-1321587000000', 'billing_1321585200000_1321587000000_1_72.gz', '2011-11-18 11:28:53', '1', '2011-11-18 11:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1036', '1321587000000-1321588800000', 'billing_1321587000000_1321588800000_1_923.gz', '2011-11-18 11:58:52', '1', '2011-11-18 11:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1037', '1321588800000-1321590600000', 'billing_1321588800000_1321590600000_1_513.gz', '2011-11-18 12:28:53', '1', '2011-11-18 12:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1038', '1321590600000-1321592400000', 'billing_1321590600000_1321592400000_1_234.gz', '2011-11-18 12:58:53', '1', '2011-11-18 12:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1039', '1321592400000-1321594200000', 'billing_1321592400000_1321594200000_1_833.gz', '2011-11-18 13:28:53', '1', '2011-11-18 13:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1040', '1321594200000-1321596000000', 'billing_1321594200000_1321596000000_1_509.gz', '2011-11-18 13:58:53', '1', '2011-11-18 13:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1041', '1321596000000-1321597800000', 'billing_1321596000000_1321597800000_1_369.gz', '2011-11-18 14:28:53', '1', '2011-11-18 14:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1042', '1321597800000-1321599600000', 'billing_1321597800000_1321599600000_1_599.gz', '2011-11-18 14:58:53', '1', '2011-11-18 14:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1043', '1321599600000-1321601400000', 'billing_1321599600000_1321601400000_1_77.gz', '2011-11-18 15:28:52', '1', '2011-11-18 15:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1044', '1321601400000-1321603200000', 'billing_1321601400000_1321603200000_1_961.gz', '2011-11-18 15:58:53', '1', '2011-11-18 15:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1045', '1321603200000-1321605000000', 'billing_1321603200000_1321605000000_1_417.gz', '2011-11-18 16:28:53', '1', '2011-11-18 16:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1046', '1321605000000-1321606800000', 'billing_1321605000000_1321606800000_1_485.gz', '2011-11-18 16:58:53', '1', '2011-11-18 16:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1047', '1321606800000-1321608600000', 'billing_1321606800000_1321608600000_1_914.gz', '2011-11-18 17:28:53', '1', '2011-11-18 17:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1048', '1321608600000-1321610400000', 'billing_1321608600000_1321610400000_1_532.gz', '2011-11-18 17:58:53', '1', '2011-11-18 17:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1049', '1321610400000-1321612200000', 'billing_1321610400000_1321612200000_1_719.gz', '2011-11-18 18:28:52', '1', '2011-11-18 18:28:52');
INSERT INTO `exp_trans_mark` VALUES ('1050', '1321612200000-1321614000000', 'billing_1321612200000_1321614000000_1_326.gz', '2011-11-18 18:58:53', '1', '2011-11-18 18:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1051', '1321614000000-1321615800000', 'billing_1321614000000_1321615800000_1_178.gz', '2011-11-18 19:28:53', '1', '2011-11-18 19:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1052', '1321615800000-1321617600000', 'billing_1321615800000_1321617600000_1_368.gz', '2011-11-18 19:58:53', '1', '2011-11-18 19:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1053', '1321617600000-1321619400000', 'billing_1321617600000_1321619400000_1_999.gz', '2011-11-18 20:28:53', '1', '2011-11-18 20:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1054', '1321619400000-1321621200000', 'billing_1321619400000_1321621200000_1_463.gz', '2011-11-18 20:58:53', '1', '2011-11-18 20:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1055', '1321621200000-1321623000000', 'billing_1321621200000_1321623000000_1_818.gz', '2011-11-18 21:28:52', '1', '2011-11-18 21:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1056', '1321623000000-1321624800000', 'billing_1321623000000_1321624800000_1_643.gz', '2011-11-18 21:58:53', '1', '2011-11-18 21:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1057', '1321624800000-1321626600000', 'billing_1321624800000_1321626600000_1_767.gz', '2011-11-18 22:28:53', '1', '2011-11-18 22:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1058', '1321626600000-1321628400000', 'billing_1321626600000_1321628400000_1_547.gz', '2011-11-18 22:58:53', '1', '2011-11-18 22:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1059', '1321628400000-1321630200000', 'billing_1321628400000_1321630200000_1_62.gz', '2011-11-18 23:28:53', '1', '2011-11-18 23:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1060', '1321630200000-1321632000000', 'billing_1321630200000_1321632000000_1_10.gz', '2011-11-18 23:58:52', '1', '2011-11-18 23:58:52');
INSERT INTO `exp_trans_mark` VALUES ('1061', '1321632000000-1321633800000', 'billing_1321632000000_1321633800000_1_363.gz', '2011-11-19 00:28:52', '1', '2011-11-19 00:28:52');
INSERT INTO `exp_trans_mark` VALUES ('1062', '1321633800000-1321635600000', 'billing_1321633800000_1321635600000_1_507.gz', '2011-11-19 00:58:53', '1', '2011-11-19 00:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1063', '1321635600000-1321637400000', 'billing_1321635600000_1321637400000_1_588.gz', '2011-11-19 01:28:53', '1', '2011-11-19 01:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1064', '1321637400000-1321639200000', 'billing_1321637400000_1321639200000_1_323.gz', '2011-11-19 01:58:52', '1', '2011-11-19 01:58:52');
INSERT INTO `exp_trans_mark` VALUES ('1065', '1321639200000-1321641000000', 'billing_1321639200000_1321641000000_1_232.gz', '2011-11-19 02:28:52', '1', '2011-11-19 02:28:52');
INSERT INTO `exp_trans_mark` VALUES ('1066', '1321641000000-1321642800000', 'billing_1321641000000_1321642800000_1_386.gz', '2011-11-19 02:58:53', '1', '2011-11-19 02:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1067', '1321642800000-1321644600000', 'billing_1321642800000_1321644600000_1_201.gz', '2011-11-19 03:28:53', '1', '2011-11-19 03:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1068', '1321644600000-1321646400000', 'billing_1321644600000_1321646400000_1_827.gz', '2011-11-19 03:58:53', '1', '2011-11-19 03:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1069', '1321646400000-1321648200000', 'billing_1321646400000_1321648200000_1_545.gz', '2011-11-19 04:28:52', '1', '2011-11-19 04:28:52');
INSERT INTO `exp_trans_mark` VALUES ('1070', '1321648200000-1321650000000', 'billing_1321648200000_1321650000000_1_113.gz', '2011-11-19 04:58:53', '1', '2011-11-19 04:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1071', '1321650000000-1321651800000', 'billing_1321650000000_1321651800000_1_154.gz', '2011-11-19 05:28:52', '1', '2011-11-19 05:28:52');
INSERT INTO `exp_trans_mark` VALUES ('1072', '1321651800000-1321653600000', 'billing_1321651800000_1321653600000_1_44.gz', '2011-11-19 05:58:52', '1', '2011-11-19 05:58:52');
INSERT INTO `exp_trans_mark` VALUES ('1073', '1321653600000-1321655400000', 'billing_1321653600000_1321655400000_1_213.gz', '2011-11-19 06:28:52', '1', '2011-11-19 06:28:52');
INSERT INTO `exp_trans_mark` VALUES ('1074', '1321655400000-1321657200000', 'billing_1321655400000_1321657200000_1_779.gz', '2011-11-19 06:58:53', '1', '2011-11-19 06:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1075', '1321657200000-1321659000000', 'billing_1321657200000_1321659000000_1_976.gz', '2011-11-19 07:28:53', '1', '2011-11-19 07:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1076', '1321659000000-1321660800000', 'billing_1321659000000_1321660800000_1_573.gz', '2011-11-19 07:58:53', '1', '2011-11-19 07:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1077', '1321660800000-1321662600000', 'billing_1321660800000_1321662600000_1_676.gz', '2011-11-19 08:28:53', '1', '2011-11-19 08:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1078', '1321662600000-1321664400000', 'billing_1321662600000_1321664400000_1_554.gz', '2011-11-19 08:58:52', '1', '2011-11-19 08:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1079', '1321664400000-1321666200000', 'billing_1321664400000_1321666200000_1_47.gz', '2011-11-19 09:28:52', '1', '2011-11-19 09:28:52');
INSERT INTO `exp_trans_mark` VALUES ('1080', '1321666200000-1321668000000', 'billing_1321666200000_1321668000000_1_527.gz', '2011-11-19 09:58:53', '1', '2011-11-19 09:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1081', '1321668000000-1321669800000', 'billing_1321668000000_1321669800000_1_549.gz', '2011-11-19 10:28:53', '1', '2011-11-19 10:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1082', '1321669800000-1321671600000', 'billing_1321669800000_1321671600000_1_279.gz', '2011-11-19 10:58:53', '1', '2011-11-19 10:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1083', '1321671600000-1321673400000', 'billing_1321671600000_1321673400000_1_439.gz', '2011-11-19 11:28:52', '1', '2011-11-19 11:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1084', '1321673400000-1321675200000', 'billing_1321673400000_1321675200000_1_126.gz', '2011-11-19 11:58:53', '1', '2011-11-19 11:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1085', '1321675200000-1321677000000', 'billing_1321675200000_1321677000000_1_875.gz', '2011-11-19 12:28:53', '1', '2011-11-19 12:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1086', '1321677000000-1321678800000', 'billing_1321677000000_1321678800000_1_810.gz', '2011-11-19 12:58:53', '1', '2011-11-19 12:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1087', '1321678800000-1321680600000', 'billing_1321678800000_1321680600000_1_863.gz', '2011-11-19 13:28:53', '1', '2011-11-19 13:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1088', '1321680600000-1321682400000', 'billing_1321680600000_1321682400000_1_320.gz', '2011-11-19 13:58:53', '1', '2011-11-19 13:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1089', '1321682400000-1321684200000', 'billing_1321682400000_1321684200000_1_165.gz', '2011-11-19 14:28:53', '1', '2011-11-19 14:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1090', '1321684200000-1321686000000', 'billing_1321684200000_1321686000000_1_410.gz', '2011-11-19 14:58:53', '1', '2011-11-19 14:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1091', '1321686000000-1321687800000', 'billing_1321686000000_1321687800000_1_133.gz', '2011-11-19 15:28:53', '1', '2011-11-19 15:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1092', '1321687800000-1321689600000', 'billing_1321687800000_1321689600000_1_453.gz', '2011-11-19 15:58:52', '1', '2011-11-19 15:58:52');
INSERT INTO `exp_trans_mark` VALUES ('1093', '1321689600000-1321691400000', 'billing_1321689600000_1321691400000_1_279.gz', '2011-11-19 16:28:53', '1', '2011-11-19 16:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1094', '1321691400000-1321693200000', 'billing_1321691400000_1321693200000_1_832.gz', '2011-11-19 16:58:53', '1', '2011-11-19 16:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1095', '1321693200000-1321695000000', 'billing_1321693200000_1321695000000_1_748.gz', '2011-11-19 17:28:52', '1', '2011-11-19 17:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1096', '1321695000000-1321696800000', 'billing_1321695000000_1321696800000_1_397.gz', '2011-11-19 17:58:53', '1', '2011-11-19 17:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1097', '1321696800000-1321698600000', 'billing_1321696800000_1321698600000_1_503.gz', '2011-11-19 18:28:52', '1', '2011-11-19 18:28:52');
INSERT INTO `exp_trans_mark` VALUES ('1098', '1321698600000-1321700400000', 'billing_1321698600000_1321700400000_1_834.gz', '2011-11-19 18:58:53', '1', '2011-11-19 18:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1099', '1321700400000-1321702200000', 'billing_1321700400000_1321702200000_1_214.gz', '2011-11-19 19:28:53', '1', '2011-11-19 19:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1100', '1321702200000-1321704000000', 'billing_1321702200000_1321704000000_1_743.gz', '2011-11-19 19:58:52', '1', '2011-11-19 19:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1101', '1321704000000-1321705800000', 'billing_1321704000000_1321705800000_1_300.gz', '2011-11-19 20:28:53', '1', '2011-11-19 20:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1102', '1321705800000-1321707600000', 'billing_1321705800000_1321707600000_1_94.gz', '2011-11-19 20:58:53', '1', '2011-11-19 20:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1103', '1321707600000-1321709400000', 'billing_1321707600000_1321709400000_1_98.gz', '2011-11-19 21:28:53', '1', '2011-11-19 21:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1104', '1321709400000-1321711200000', 'billing_1321709400000_1321711200000_1_814.gz', '2011-11-19 21:58:53', '1', '2011-11-19 21:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1105', '1321711200000-1321713000000', 'billing_1321711200000_1321713000000_1_751.gz', '2011-11-19 22:28:53', '1', '2011-11-19 22:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1106', '1321713000000-1321714800000', 'billing_1321713000000_1321714800000_1_403.gz', '2011-11-19 22:58:52', '1', '2011-11-19 22:58:52');
INSERT INTO `exp_trans_mark` VALUES ('1107', '1321714800000-1321716600000', 'billing_1321714800000_1321716600000_1_84.gz', '2011-11-19 23:28:53', '1', '2011-11-19 23:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1108', '1321716600000-1321718400000', 'billing_1321716600000_1321718400000_1_290.gz', '2011-11-19 23:58:53', '1', '2011-11-19 23:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1109', '1321718400000-1321720200000', 'billing_1321718400000_1321720200000_1_882.gz', '2011-11-20 00:28:53', '1', '2011-11-20 00:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1110', '1321720200000-1321722000000', 'billing_1321720200000_1321722000000_1_166.gz', '2011-11-20 00:58:52', '1', '2011-11-20 00:58:52');
INSERT INTO `exp_trans_mark` VALUES ('1111', '1321722000000-1321723800000', 'billing_1321722000000_1321723800000_1_648.gz', '2011-11-20 01:28:52', '1', '2011-11-20 01:28:52');
INSERT INTO `exp_trans_mark` VALUES ('1112', '1321723800000-1321725600000', 'billing_1321723800000_1321725600000_1_548.gz', '2011-11-20 01:58:53', '1', '2011-11-20 01:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1113', '1321725600000-1321727400000', 'billing_1321725600000_1321727400000_1_646.gz', '2011-11-20 02:28:52', '1', '2011-11-20 02:28:52');
INSERT INTO `exp_trans_mark` VALUES ('1114', '1321727400000-1321729200000', 'billing_1321727400000_1321729200000_1_475.gz', '2011-11-20 02:58:53', '1', '2011-11-20 02:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1115', '1321729200000-1321731000000', 'billing_1321729200000_1321731000000_1_798.gz', '2011-11-20 03:28:53', '1', '2011-11-20 03:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1116', '1321731000000-1321732800000', 'billing_1321731000000_1321732800000_1_115.gz', '2011-11-20 03:58:53', '1', '2011-11-20 03:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1117', '1321732800000-1321734600000', 'billing_1321732800000_1321734600000_1_245.gz', '2011-11-20 04:28:53', '1', '2011-11-20 04:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1118', '1321734600000-1321736400000', 'billing_1321734600000_1321736400000_1_559.gz', '2011-11-20 04:58:52', '1', '2011-11-20 04:58:52');
INSERT INTO `exp_trans_mark` VALUES ('1119', '1321736400000-1321738200000', 'billing_1321736400000_1321738200000_1_533.gz', '2011-11-20 05:28:52', '1', '2011-11-20 05:28:52');
INSERT INTO `exp_trans_mark` VALUES ('1120', '1321738200000-1321740000000', 'billing_1321738200000_1321740000000_1_818.gz', '2011-11-20 05:58:53', '1', '2011-11-20 05:58:54');
INSERT INTO `exp_trans_mark` VALUES ('1121', '1321740000000-1321741800000', 'billing_1321740000000_1321741800000_1_827.gz', '2011-11-20 06:28:53', '1', '2011-11-20 06:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1122', '1321741800000-1321743600000', 'billing_1321741800000_1321743600000_1_245.gz', '2011-11-20 06:58:53', '1', '2011-11-20 06:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1123', '1321743600000-1321745400000', 'billing_1321743600000_1321745400000_1_860.gz', '2011-11-20 07:28:52', '1', '2011-11-20 07:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1124', '1321745400000-1321747200000', 'billing_1321745400000_1321747200000_1_788.gz', '2011-11-20 07:58:52', '1', '2011-11-20 07:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1125', '1321747200000-1321749000000', 'billing_1321747200000_1321749000000_1_71.gz', '2011-11-20 08:28:52', '1', '2011-11-20 08:28:52');
INSERT INTO `exp_trans_mark` VALUES ('1126', '1321749000000-1321750800000', 'billing_1321749000000_1321750800000_1_712.gz', '2011-11-20 08:58:53', '1', '2011-11-20 08:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1127', '1321750800000-1321752600000', 'billing_1321750800000_1321752600000_1_293.gz', '2011-11-20 09:28:53', '1', '2011-11-20 09:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1128', '1321752600000-1321754400000', 'billing_1321752600000_1321754400000_1_16.gz', '2011-11-20 09:58:53', '1', '2011-11-20 09:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1129', '1321754400000-1321756200000', 'billing_1321754400000_1321756200000_1_923.gz', '2011-11-20 10:28:53', '1', '2011-11-20 10:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1130', '1321756200000-1321758000000', 'billing_1321756200000_1321758000000_1_362.gz', '2011-11-20 10:58:53', '1', '2011-11-20 10:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1131', '1321758000000-1321759800000', 'billing_1321758000000_1321759800000_1_991.gz', '2011-11-20 11:28:53', '1', '2011-11-20 11:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1132', '1321759800000-1321761600000', 'billing_1321759800000_1321761600000_1_252.gz', '2011-11-20 11:58:53', '1', '2011-11-20 11:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1133', '1321761600000-1321763400000', 'billing_1321761600000_1321763400000_1_814.gz', '2011-11-20 12:28:53', '1', '2011-11-20 12:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1134', '1321763400000-1321765200000', 'billing_1321763400000_1321765200000_1_203.gz', '2011-11-20 12:58:52', '1', '2011-11-20 12:58:52');
INSERT INTO `exp_trans_mark` VALUES ('1135', '1321765200000-1321767000000', 'billing_1321765200000_1321767000000_1_639.gz', '2011-11-20 13:28:53', '1', '2011-11-20 13:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1136', '1321767000000-1321768800000', 'billing_1321767000000_1321768800000_1_840.gz', '2011-11-20 13:58:53', '1', '2011-11-20 13:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1137', '1321768800000-1321770600000', 'billing_1321768800000_1321770600000_1_545.gz', '2011-11-20 14:28:53', '1', '2011-11-20 14:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1138', '1321770600000-1321772400000', 'billing_1321770600000_1321772400000_1_387.gz', '2011-11-20 14:58:53', '1', '2011-11-20 14:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1139', '1321772400000-1321774200000', 'billing_1321772400000_1321774200000_1_325.gz', '2011-11-20 15:28:53', '1', '2011-11-20 15:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1140', '1321774200000-1321776000000', 'billing_1321774200000_1321776000000_1_477.gz', '2011-11-20 15:58:53', '1', '2011-11-20 15:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1141', '1321776000000-1321777800000', 'billing_1321776000000_1321777800000_1_420.gz', '2011-11-20 16:28:52', '1', '2011-11-20 16:28:52');
INSERT INTO `exp_trans_mark` VALUES ('1142', '1321777800000-1321779600000', 'billing_1321777800000_1321779600000_1_481.gz', '2011-11-20 16:58:52', '1', '2011-11-20 16:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1143', '1321779600000-1321781400000', 'billing_1321779600000_1321781400000_1_670.gz', '2011-11-20 17:28:53', '1', '2011-11-20 17:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1144', '1321781400000-1321783200000', 'billing_1321781400000_1321783200000_1_315.gz', '2011-11-20 17:58:53', '1', '2011-11-20 17:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1145', '1321783200000-1321785000000', 'billing_1321783200000_1321785000000_1_533.gz', '2011-11-20 18:28:53', '1', '2011-11-20 18:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1146', '1321785000000-1321786800000', 'billing_1321785000000_1321786800000_1_122.gz', '2011-11-20 18:58:52', '1', '2011-11-20 18:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1147', '1321786800000-1321788600000', 'billing_1321786800000_1321788600000_1_135.gz', '2011-11-20 19:28:53', '1', '2011-11-20 19:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1148', '1321788600000-1321790400000', 'billing_1321788600000_1321790400000_1_648.gz', '2011-11-20 19:58:53', '1', '2011-11-20 19:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1149', '1321790400000-1321792200000', 'billing_1321790400000_1321792200000_1_625.gz', '2011-11-20 20:28:53', '1', '2011-11-20 20:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1150', '1321792200000-1321794000000', 'billing_1321792200000_1321794000000_1_778.gz', '2011-11-20 20:58:52', '1', '2011-11-20 20:58:52');
INSERT INTO `exp_trans_mark` VALUES ('1151', '1321794000000-1321795800000', 'billing_1321794000000_1321795800000_1_245.gz', '2011-11-20 21:28:53', '1', '2011-11-20 21:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1152', '1321795800000-1321797600000', 'billing_1321795800000_1321797600000_1_681.gz', '2011-11-20 21:58:53', '1', '2011-11-20 21:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1153', '1321797600000-1321799400000', 'billing_1321797600000_1321799400000_1_212.gz', '2011-11-20 22:28:53', '1', '2011-11-20 22:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1154', '1321799400000-1321801200000', 'billing_1321799400000_1321801200000_1_636.gz', '2011-11-20 22:58:53', '1', '2011-11-20 22:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1155', '1321801200000-1321803000000', 'billing_1321801200000_1321803000000_1_487.gz', '2011-11-20 23:28:53', '1', '2011-11-20 23:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1156', '1321803000000-1321804800000', 'billing_1321803000000_1321804800000_1_776.gz', '2011-11-20 23:58:53', '1', '2011-11-20 23:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1157', '1321804800000-1321806600000', 'billing_1321804800000_1321806600000_1_819.gz', '2011-11-21 00:28:53', '1', '2011-11-21 00:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1158', '1321806600000-1321808400000', 'billing_1321806600000_1321808400000_1_996.gz', '2011-11-21 00:58:53', '1', '2011-11-21 00:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1159', '1321808400000-1321810200000', 'billing_1321808400000_1321810200000_1_435.gz', '2011-11-21 01:28:53', '1', '2011-11-21 01:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1160', '1321810200000-1321812000000', 'billing_1321810200000_1321812000000_1_776.gz', '2011-11-21 01:58:53', '1', '2011-11-21 01:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1161', '1321812000000-1321813800000', 'billing_1321812000000_1321813800000_1_469.gz', '2011-11-21 02:28:52', '1', '2011-11-21 02:28:52');
INSERT INTO `exp_trans_mark` VALUES ('1162', '1321813800000-1321815600000', 'billing_1321813800000_1321815600000_1_725.gz', '2011-11-21 02:58:52', '1', '2011-11-21 02:58:52');
INSERT INTO `exp_trans_mark` VALUES ('1163', '1321815600000-1321817400000', 'billing_1321815600000_1321817400000_1_950.gz', '2011-11-21 03:28:53', '1', '2011-11-21 03:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1164', '1321817400000-1321819200000', 'billing_1321817400000_1321819200000_1_799.gz', '2011-11-21 03:58:53', '1', '2011-11-21 03:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1165', '1321819200000-1321821000000', 'billing_1321819200000_1321821000000_1_678.gz', '2011-11-21 04:28:53', '1', '2011-11-21 04:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1166', '1321821000000-1321822800000', 'billing_1321821000000_1321822800000_1_739.gz', '2011-11-21 04:58:53', '1', '2011-11-21 04:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1167', '1321822800000-1321824600000', 'billing_1321822800000_1321824600000_1_261.gz', '2011-11-21 05:28:52', '1', '2011-11-21 05:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1168', '1321824600000-1321826400000', 'billing_1321824600000_1321826400000_1_252.gz', '2011-11-21 05:58:53', '1', '2011-11-21 05:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1169', '1321826400000-1321828200000', 'billing_1321826400000_1321828200000_1_222.gz', '2011-11-21 06:28:53', '1', '2011-11-21 06:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1170', '1321828200000-1321830000000', 'billing_1321828200000_1321830000000_1_781.gz', '2011-11-21 06:58:52', '1', '2011-11-21 06:58:52');
INSERT INTO `exp_trans_mark` VALUES ('1171', '1321830000000-1321831800000', 'billing_1321830000000_1321831800000_1_764.gz', '2011-11-21 07:28:52', '1', '2011-11-21 07:28:52');
INSERT INTO `exp_trans_mark` VALUES ('1172', '1321831800000-1321833600000', 'billing_1321831800000_1321833600000_1_43.gz', '2011-11-21 07:58:52', '1', '2011-11-21 07:58:52');
INSERT INTO `exp_trans_mark` VALUES ('1173', '1321833600000-1321835400000', 'billing_1321833600000_1321835400000_1_25.gz', '2011-11-21 08:28:52', '1', '2011-11-21 08:28:52');
INSERT INTO `exp_trans_mark` VALUES ('1174', '1321835400000-1321837200000', 'billing_1321835400000_1321837200000_1_878.gz', '2011-11-21 08:58:53', '1', '2011-11-21 08:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1175', '1321837200000-1321839000000', 'billing_1321837200000_1321839000000_1_655.gz', '2011-11-21 09:28:53', '1', '2011-11-21 09:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1176', '1321839000000-1321840800000', 'billing_1321839000000_1321840800000_1_642.gz', '2011-11-21 09:58:53', '1', '2011-11-21 09:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1177', '1321840800000-1321842600000', 'billing_1321840800000_1321842600000_1_471.gz', '2011-11-21 10:28:53', '1', '2011-11-21 10:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1178', '1321842600000-1321844400000', 'billing_1321842600000_1321844400000_1_206.gz', '2011-11-21 10:58:52', '1', '2011-11-21 10:58:52');
INSERT INTO `exp_trans_mark` VALUES ('1179', '1321844400000-1321846200000', 'billing_1321844400000_1321846200000_1_544.gz', '2011-11-21 11:28:53', '1', '2011-11-21 11:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1180', '1321846200000-1321848000000', 'billing_1321846200000_1321848000000_1_870.gz', '2011-11-21 11:58:53', '1', '2011-11-21 11:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1181', '1321848000000-1321849800000', 'billing_1321848000000_1321849800000_1_300.gz', '2011-11-21 12:28:53', '1', '2011-11-21 12:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1182', '1321849800000-1321851600000', 'billing_1321849800000_1321851600000_1_598.gz', '2011-11-21 12:58:52', '1', '2011-11-21 12:58:52');
INSERT INTO `exp_trans_mark` VALUES ('1183', '1321851600000-1321853400000', 'billing_1321851600000_1321853400000_1_923.gz', '2011-11-21 13:28:53', '1', '2011-11-21 13:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1184', '1321853400000-1321855200000', 'billing_1321853400000_1321855200000_1_655.gz', '2011-11-21 13:58:52', '1', '2011-11-21 13:58:52');
INSERT INTO `exp_trans_mark` VALUES ('1185', '1321855200000-1321857000000', 'billing_1321855200000_1321857000000_1_237.gz', '2011-11-21 14:28:53', '1', '2011-11-21 14:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1186', '1321857000000-1321858800000', 'billing_1321857000000_1321858800000_1_90.gz', '2011-11-21 14:58:53', '1', '2011-11-21 14:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1187', '1321858800000-1321860600000', 'billing_1321858800000_1321860600000_1_254.gz', '2011-11-21 15:28:53', '1', '2011-11-21 15:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1188', '1321860600000-1321862400000', 'billing_1321860600000_1321862400000_1_617.gz', '2011-11-21 15:58:53', '1', '2011-11-21 15:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1189', '1321862400000-1321864200000', 'billing_1321862400000_1321864200000_1_340.gz', '2011-11-21 16:28:53', '1', '2011-11-21 16:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1190', '1321864200000-1321866000000', 'billing_1321864200000_1321866000000_1_755.gz', '2011-11-21 16:58:53', '1', '2011-11-21 16:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1191', '1321866000000-1321867800000', 'billing_1321866000000_1321867800000_1_178.gz', '2011-11-21 17:28:53', '1', '2011-11-21 17:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1192', '1321867800000-1321869600000', 'billing_1321867800000_1321869600000_1_151.gz', '2011-11-21 17:58:52', '1', '2011-11-21 17:58:52');
INSERT INTO `exp_trans_mark` VALUES ('1193', '1321869600000-1321871400000', 'billing_1321869600000_1321871400000_1_140.gz', '2011-11-21 18:28:53', '1', '2011-11-21 18:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1194', '1321871400000-1321873200000', 'billing_1321871400000_1321873200000_1_744.gz', '2011-11-21 18:58:52', '1', '2011-11-21 18:58:52');
INSERT INTO `exp_trans_mark` VALUES ('1195', '1321873200000-1321875000000', 'billing_1321873200000_1321875000000_1_957.gz', '2011-11-21 19:28:53', '1', '2011-11-21 19:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1196', '1321875000000-1321876800000', 'billing_1321875000000_1321876800000_1_473.gz', '2011-11-21 19:58:52', '1', '2011-11-21 19:58:52');
INSERT INTO `exp_trans_mark` VALUES ('1197', '1321876800000-1321878600000', 'billing_1321876800000_1321878600000_1_992.gz', '2011-11-21 20:28:53', '1', '2011-11-21 20:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1198', '1321878600000-1321880400000', 'billing_1321878600000_1321880400000_1_14.gz', '2011-11-21 20:58:53', '1', '2011-11-21 20:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1199', '1321880400000-1321882200000', 'billing_1321880400000_1321882200000_1_779.gz', '2011-11-21 21:28:53', '1', '2011-11-21 21:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1200', '1321882200000-1321884000000', 'billing_1321882200000_1321884000000_1_456.gz', '2011-11-21 21:58:53', '1', '2011-11-21 21:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1201', '1321884000000-1321885800000', 'billing_1321884000000_1321885800000_1_972.gz', '2011-11-21 22:28:53', '1', '2011-11-21 22:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1202', '1321885800000-1321887600000', 'billing_1321885800000_1321887600000_1_949.gz', '2011-11-21 22:58:53', '1', '2011-11-21 22:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1203', '1321887600000-1321889400000', 'billing_1321887600000_1321889400000_1_343.gz', '2011-11-21 23:28:53', '1', '2011-11-21 23:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1204', '1321889400000-1321891200000', 'billing_1321889400000_1321891200000_1_837.gz', '2011-11-21 23:58:53', '1', '2011-11-21 23:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1205', '1321891200000-1321893000000', 'billing_1321891200000_1321893000000_1_269.gz', '2011-11-22 00:28:53', '1', '2011-11-22 00:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1206', '1321893000000-1321894800000', 'billing_1321893000000_1321894800000_1_633.gz', '2011-11-22 00:58:52', '1', '2011-11-22 00:58:52');
INSERT INTO `exp_trans_mark` VALUES ('1207', '1321894800000-1321896600000', 'billing_1321894800000_1321896600000_1_631.gz', '2011-11-22 01:28:53', '1', '2011-11-22 01:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1208', '1321896600000-1321898400000', 'billing_1321896600000_1321898400000_1_465.gz', '2011-11-22 01:58:53', '1', '2011-11-22 01:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1209', '1321898400000-1321900200000', 'billing_1321898400000_1321900200000_1_786.gz', '2011-11-22 02:28:53', '1', '2011-11-22 02:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1210', '1321900200000-1321902000000', 'billing_1321900200000_1321902000000_1_928.gz', '2011-11-22 02:58:53', '1', '2011-11-22 02:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1211', '1321902000000-1321903800000', 'billing_1321902000000_1321903800000_1_641.gz', '2011-11-22 03:28:52', '1', '2011-11-22 03:28:52');
INSERT INTO `exp_trans_mark` VALUES ('1212', '1321903800000-1321905600000', 'billing_1321903800000_1321905600000_1_945.gz', '2011-11-22 03:58:53', '1', '2011-11-22 03:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1213', '1321905600000-1321907400000', 'billing_1321905600000_1321907400000_1_798.gz', '2011-11-22 04:28:53', '1', '2011-11-22 04:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1214', '1321907400000-1321909200000', 'billing_1321907400000_1321909200000_1_112.gz', '2011-11-22 04:58:52', '1', '2011-11-22 04:58:52');
INSERT INTO `exp_trans_mark` VALUES ('1215', '1321909200000-1321911000000', 'billing_1321909200000_1321911000000_1_33.gz', '2011-11-22 05:28:53', '1', '2011-11-22 05:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1216', '1321911000000-1321912800000', 'billing_1321911000000_1321912800000_1_200.gz', '2011-11-22 05:58:53', '1', '2011-11-22 05:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1217', '1321912800000-1321914600000', 'billing_1321912800000_1321914600000_1_629.gz', '2011-11-22 06:28:53', '1', '2011-11-22 06:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1218', '1321914600000-1321916400000', 'billing_1321914600000_1321916400000_1_20.gz', '2011-11-22 06:58:52', '1', '2011-11-22 06:58:52');
INSERT INTO `exp_trans_mark` VALUES ('1219', '1321916400000-1321918200000', 'billing_1321916400000_1321918200000_1_746.gz', '2011-11-22 07:28:53', '1', '2011-11-22 07:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1220', '1321918200000-1321920000000', 'billing_1321918200000_1321920000000_1_765.gz', '2011-11-22 07:58:53', '1', '2011-11-22 07:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1221', '1321920000000-1321921800000', 'billing_1321920000000_1321921800000_1_322.gz', '2011-11-22 08:28:53', '1', '2011-11-22 08:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1222', '1321921800000-1321923600000', 'billing_1321921800000_1321923600000_1_795.gz', '2011-11-22 08:58:52', '1', '2011-11-22 08:58:52');
INSERT INTO `exp_trans_mark` VALUES ('1223', '1321923600000-1321925400000', 'billing_1321923600000_1321925400000_1_999.gz', '2011-11-22 09:28:53', '1', '2011-11-22 09:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1224', '1321925400000-1321927200000', 'billing_1321925400000_1321927200000_1_363.gz', '2011-11-22 09:58:53', '1', '2011-11-22 09:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1225', '1321927200000-1321929000000', 'billing_1321927200000_1321929000000_1_524.gz', '2011-11-22 10:28:53', '1', '2011-11-22 10:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1226', '1321929000000-1321930800000', 'billing_1321929000000_1321930800000_1_309.gz', '2011-11-22 10:58:52', '1', '2011-11-22 10:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1227', '1321930800000-1321932600000', 'billing_1321930800000_1321932600000_1_535.gz', '2011-11-22 11:28:53', '1', '2011-11-22 11:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1228', '1321932600000-1321934400000', 'billing_1321932600000_1321934400000_1_632.gz', '2011-11-22 11:58:53', '1', '2011-11-22 11:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1229', '1321934400000-1321936200000', 'billing_1321934400000_1321936200000_1_764.gz', '2011-11-22 12:28:53', '1', '2011-11-22 12:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1230', '1321936200000-1321938000000', 'billing_1321936200000_1321938000000_1_416.gz', '2011-11-22 12:58:53', '1', '2011-11-22 12:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1231', '1321938000000-1321939800000', 'billing_1321938000000_1321939800000_1_297.gz', '2011-11-22 13:28:52', '1', '2011-11-22 13:28:52');
INSERT INTO `exp_trans_mark` VALUES ('1232', '1321939800000-1321941600000', 'billing_1321939800000_1321941600000_1_476.gz', '2011-11-22 13:58:53', '1', '2011-11-22 13:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1233', '1321941600000-1321943400000', 'billing_1321941600000_1321943400000_1_235.gz', '2011-11-22 14:28:53', '1', '2011-11-22 14:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1234', '1321943400000-1321945200000', 'billing_1321943400000_1321945200000_1_366.gz', '2011-11-22 14:58:53', '1', '2011-11-22 14:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1235', '1321945200000-1321947000000', 'billing_1321945200000_1321947000000_1_274.gz', '2011-11-22 15:28:53', '1', '2011-11-22 15:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1236', '1321947000000-1321948800000', 'billing_1321947000000_1321948800000_1_443.gz', '2011-11-22 15:58:52', '1', '2011-11-22 15:58:52');
INSERT INTO `exp_trans_mark` VALUES ('1237', '1321948800000-1321950600000', 'billing_1321948800000_1321950600000_1_894.gz', '2011-11-22 16:28:52', '1', '2011-11-22 16:28:52');
INSERT INTO `exp_trans_mark` VALUES ('1238', '1321950600000-1321952400000', 'billing_1321950600000_1321952400000_1_659.gz', '2011-11-22 16:58:53', '1', '2011-11-22 16:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1239', '1321952400000-1321954200000', 'billing_1321952400000_1321954200000_1_737.gz', '2011-11-22 17:28:52', '1', '2011-11-22 17:28:52');
INSERT INTO `exp_trans_mark` VALUES ('1240', '1321954200000-1321956000000', 'billing_1321954200000_1321956000000_1_261.gz', '2011-11-22 17:58:53', '1', '2011-11-22 17:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1241', '1321956000000-1321957800000', 'billing_1321956000000_1321957800000_1_455.gz', '2011-11-22 18:28:53', '1', '2011-11-22 18:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1242', '1321957800000-1321959600000', 'billing_1321957800000_1321959600000_1_735.gz', '2011-11-22 18:58:53', '1', '2011-11-22 18:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1243', '1321959600000-1321961400000', 'billing_1321959600000_1321961400000_1_874.gz', '2011-11-22 19:28:53', '1', '2011-11-22 19:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1244', '1321961400000-1321963200000', 'billing_1321961400000_1321963200000_1_308.gz', '2011-11-22 19:58:53', '1', '2011-11-22 19:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1245', '1321963200000-1321965000000', 'billing_1321963200000_1321965000000_1_66.gz', '2011-11-22 20:28:53', '1', '2011-11-22 20:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1246', '1321965000000-1321966800000', 'billing_1321965000000_1321966800000_1_500.gz', '2011-11-22 20:58:52', '1', '2011-11-22 20:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1247', '1321966800000-1321968600000', 'billing_1321966800000_1321968600000_1_180.gz', '2011-11-22 21:28:53', '1', '2011-11-22 21:28:53');
INSERT INTO `exp_trans_mark` VALUES ('1248', '1321968600000-1321970400000', 'billing_1321968600000_1321970400000_1_722.gz', '2011-11-22 21:58:53', '1', '2011-11-22 21:58:53');
INSERT INTO `exp_trans_mark` VALUES ('1249', '1321970400000-1321972200000', 'billing_1321970400000_1321972200000_1_903.gz', '2011-11-22 22:28:53', '1', '2011-11-22 22:29:03');
INSERT INTO `exp_trans_mark` VALUES ('1250', '1321972200000-1321974000000', 'billing_1321972200000_1321974000000_1_97.gz', '2011-11-22 22:58:53', '1', '2011-11-22 22:59:03');
INSERT INTO `exp_trans_mark` VALUES ('1251', '1321974000000-1321975800000', 'billing_1321974000000_1321975800000_1_930.gz', '2011-11-22 23:28:53', '1', '2011-11-22 23:29:03');
INSERT INTO `exp_trans_mark` VALUES ('1252', '1321975800000-1321977600000', 'billing_1321975800000_1321977600000_1_299.gz', '2011-11-22 23:58:53', '1', '2011-11-22 23:59:03');
INSERT INTO `exp_trans_mark` VALUES ('1253', '1321977600000-1321979400000', 'billing_1321977600000_1321979400000_1_615.gz', '2011-11-23 00:28:52', '1', '2011-11-23 00:29:03');
INSERT INTO `exp_trans_mark` VALUES ('1254', '1321979400000-1321981200000', 'billing_1321979400000_1321981200000_1_65.gz', '2011-11-23 00:58:52', '1', '2011-11-23 00:59:02');
INSERT INTO `exp_trans_mark` VALUES ('1255', '1321981200000-1321983000000', 'billing_1321981200000_1321983000000_1_126.gz', '2011-11-23 01:28:53', '1', '2011-11-23 01:29:03');
INSERT INTO `exp_trans_mark` VALUES ('1256', '1321983000000-1321984800000', 'billing_1321983000000_1321984800000_1_691.gz', '2011-11-23 01:58:53', '1', '2011-11-23 01:59:03');
INSERT INTO `exp_trans_mark` VALUES ('1257', '1321984800000-1321986600000', 'billing_1321984800000_1321986600000_1_591.gz', '2011-11-23 02:28:53', '1', '2011-11-23 02:29:03');
INSERT INTO `exp_trans_mark` VALUES ('1258', '1321986600000-1321988400000', 'billing_1321986600000_1321988400000_1_543.gz', '2011-11-23 02:58:53', '1', '2011-11-23 02:59:03');
INSERT INTO `exp_trans_mark` VALUES ('1259', '1321988400000-1321990200000', 'billing_1321988400000_1321990200000_1_741.gz', '2011-11-23 03:28:53', '1', '2011-11-23 03:29:03');
INSERT INTO `exp_trans_mark` VALUES ('1260', '1321990200000-1321992000000', 'billing_1321990200000_1321992000000_1_657.gz', '2011-11-23 03:58:53', '1', '2011-11-23 03:59:03');
INSERT INTO `exp_trans_mark` VALUES ('1261', '1321992000000-1321993800000', 'billing_1321992000000_1321993800000_1_332.gz', '2011-11-23 04:28:53', '1', '2011-11-23 04:29:03');
INSERT INTO `exp_trans_mark` VALUES ('1262', '1321993800000-1321995600000', 'billing_1321993800000_1321995600000_1_118.gz', '2011-11-23 04:58:53', '1', '2011-11-23 04:59:03');
INSERT INTO `exp_trans_mark` VALUES ('1263', '1321995600000-1321997400000', 'billing_1321995600000_1321997400000_1_851.gz', '2011-11-23 05:28:53', '1', '2011-11-23 05:29:03');
INSERT INTO `exp_trans_mark` VALUES ('1264', '1321997400000-1321999200000', 'billing_1321997400000_1321999200000_1_117.gz', '2011-11-23 05:58:53', '1', '2011-11-23 05:59:03');
INSERT INTO `exp_trans_mark` VALUES ('1265', '1321999200000-1322001000000', 'billing_1321999200000_1322001000000_1_332.gz', '2011-11-23 06:28:53', '1', '2011-11-23 06:29:03');
INSERT INTO `exp_trans_mark` VALUES ('1266', '1322001000000-1322002800000', 'billing_1322001000000_1322002800000_1_741.gz', '2011-11-23 06:58:53', '1', '2011-11-23 06:59:03');
INSERT INTO `exp_trans_mark` VALUES ('1267', '1322002800000-1322004600000', 'billing_1322002800000_1322004600000_1_218.gz', '2011-11-23 07:28:53', '1', '2011-11-23 07:29:03');
INSERT INTO `exp_trans_mark` VALUES ('1268', '1322004600000-1322006400000', 'billing_1322004600000_1322006400000_1_35.gz', '2011-11-23 07:58:53', '1', '2011-11-23 07:59:03');
INSERT INTO `exp_trans_mark` VALUES ('1269', '1322006400000-1322008200000', 'billing_1322006400000_1322008200000_1_708.gz', '2011-11-23 08:28:53', '1', '2011-11-23 08:29:03');
INSERT INTO `exp_trans_mark` VALUES ('1270', '1322008200000-1322010000000', 'billing_1322008200000_1322010000000_1_546.gz', '2011-11-23 08:58:53', '1', '2011-11-23 08:58:53');

-- ----------------------------
-- Table structure for `instance_operation_logs`
-- ----------------------------
DROP TABLE IF EXISTS `instance_operation_logs`;
CREATE TABLE `instance_operation_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `instance_id` int(11) DEFAULT NULL COMMENT 'å®žä¾‹è¡¨ä¸­çš„id',
  `instance_sid` varchar(20) DEFAULT NULL COMMENT 'å®žä¾‹çš„äº‘åŽå°çš„ID',
  `ecu_count` float(11,2) NOT NULL COMMENT 'æ­¤å®žä¾‹çš„ECUæ•°',
  `company_id` int(11) NOT NULL,
  `department_id` int(11) DEFAULT NULL,
  `region_id` int(11) DEFAULT NULL,
  `operation_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1636 DEFAULT CHARSET=utf8 COMMENT='å®žä¾‹çš„æ“ä½œæ—¥å¿—,ç›®å‰åªè®°å½•å®žä¾‹çš„å¼€å¯å’Œé‡å';

-- ----------------------------
-- Records of instance_operation_logs
-- ----------------------------

-- ----------------------------
-- Table structure for `ip_operation_logs`
-- ----------------------------
DROP TABLE IF EXISTS `ip_operation_logs`;
CREATE TABLE `ip_operation_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(20) DEFAULT NULL,
  `operation` enum('add','delete') DEFAULT NULL COMMENT 'å¯¹IPçš„æ“ä½œ',
  `current_ip_count` int(11) DEFAULT NULL COMMENT 'å½“å‰æ‹¥æœ‰IPæ•°',
  `company_id` int(11) DEFAULT NULL,
  `region_id` int(11) DEFAULT NULL,
  `operation_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=443 DEFAULT CHARSET=utf8 COMMENT='å¼¹æ€§IPæ“ä½œè¡¨';

-- ----------------------------
-- Records of ip_operation_logs
-- ----------------------------
INSERT INTO `ip_operation_logs` VALUES ('437', '192.168.56.133', 'add', '1', '296', '10', '2014-04-25 09:28:45');
INSERT INTO `ip_operation_logs` VALUES ('438', '192.168.56.133', 'add', '2', '296', '10', '2014-04-25 09:28:45');
INSERT INTO `ip_operation_logs` VALUES ('439', '192.168.56.134', 'add', '3', '296', '10', '2014-04-25 09:28:45');
INSERT INTO `ip_operation_logs` VALUES ('440', '192.168.56.134', 'add', '4', '296', '10', '2014-04-25 09:28:45');
INSERT INTO `ip_operation_logs` VALUES ('441', '192.168.56.135', 'add', '5', '296', '10', '2014-04-25 09:28:45');
INSERT INTO `ip_operation_logs` VALUES ('442', '192.168.56.135', 'add', '6', '296', '10', '2014-04-25 09:28:45');

-- ----------------------------
-- Table structure for `mymreports`
-- ----------------------------
DROP TABLE IF EXISTS `mymreports`;
CREATE TABLE `mymreports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `repalias` varchar(100) NOT NULL,
  `repname` varchar(100) NOT NULL,
  `source` longblob NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ui_repname` (`repname`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Please do not modify this table!';

-- ----------------------------
-- Records of mymreports
-- ----------------------------

-- ----------------------------
-- Table structure for `product_prices`
-- ----------------------------
DROP TABLE IF EXISTS `product_prices`;
CREATE TABLE `product_prices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL COMMENT 'äº§å“ID',
  `daily_payment_price` float(9,3) NOT NULL COMMENT 'åŒ…å¤©è®¡è´¹æ—¶çš„ä»·æ ¼',
  `monthly_payment_price` float(9,3) NOT NULL COMMENT 'åŒ…æœˆæ—¶çš„ä»·æ ¼',
  `creation_price` float(9,3) DEFAULT '0.000' COMMENT 'åˆ›å»ºæ­¤äº§å“è¿™ä¸ªæ“ä½œçš„ä»·æ ¼',
  `effective_date` datetime DEFAULT NULL COMMENT 'ç”Ÿæ•ˆæ—¥æœŸ',
  `expiration_date` datetime NOT NULL COMMENT 'å¤±æ•ˆæ—¥æœŸ',
  `price_h0` float(9,3) DEFAULT '0.000' COMMENT 'æ­¤äº§å“åœ¨æŒ‰é‡è®¡è´¹æ—¶ï¼Œåœ¨0ç‚¹çš„ä»·æ ¼',
  `price_h1` float(9,3) DEFAULT '0.000' COMMENT 'æ­¤äº§å“åœ¨æŒ‰é‡è®¡è´¹æ—¶ï¼Œåœ¨1ç‚¹çš„ä»·æ ¼',
  `price_h2` float(9,3) DEFAULT '0.000' COMMENT 'æ­¤äº§å“åœ¨æŒ‰é‡è®¡è´¹æ—¶ï¼Œåœ¨2ç‚¹çš„ä»·æ ¼',
  `price_h3` float(9,3) DEFAULT '0.000' COMMENT 'æ­¤äº§å“åœ¨æŒ‰é‡è®¡è´¹æ—¶ï¼Œåœ¨3ç‚¹çš„ä»·æ ¼',
  `price_h4` float(9,3) DEFAULT '0.000' COMMENT 'æ­¤äº§å“åœ¨æŒ‰é‡è®¡è´¹æ—¶ï¼Œåœ¨4ç‚¹çš„ä»·æ ¼',
  `price_h5` float(9,3) DEFAULT '0.000' COMMENT 'æ­¤äº§å“åœ¨æŒ‰é‡è®¡è´¹æ—¶ï¼Œåœ¨5ç‚¹çš„ä»·æ ¼',
  `price_h6` float(9,3) DEFAULT '0.000' COMMENT 'æ­¤äº§å“åœ¨æŒ‰é‡è®¡è´¹æ—¶ï¼Œåœ¨6ç‚¹çš„ä»·æ ¼',
  `price_h7` float(9,3) DEFAULT '0.000' COMMENT 'æ­¤äº§å“åœ¨æŒ‰é‡è®¡è´¹æ—¶ï¼Œåœ¨7ç‚¹çš„ä»·æ ¼',
  `price_h8` float(9,3) DEFAULT '0.000' COMMENT 'æ­¤äº§å“åœ¨æŒ‰é‡è®¡è´¹æ—¶ï¼Œåœ¨8ç‚¹çš„ä»·æ ¼',
  `price_h9` float(9,3) DEFAULT '0.000' COMMENT 'æ­¤äº§å“åœ¨æŒ‰é‡è®¡è´¹æ—¶ï¼Œåœ¨9ç‚¹çš„ä»·æ ¼',
  `price_h10` float(9,3) DEFAULT '0.000' COMMENT 'æ­¤äº§å“åœ¨æŒ‰é‡è®¡è´¹æ—¶ï¼Œåœ¨10ç‚¹çš„ä»·æ ¼',
  `price_h11` float(9,3) DEFAULT '0.000' COMMENT 'æ­¤äº§å“åœ¨æŒ‰é‡è®¡è´¹æ—¶ï¼Œåœ¨11ç‚¹çš„ä»·æ ¼',
  `price_h12` float(9,3) DEFAULT '0.000' COMMENT 'æ­¤äº§å“åœ¨æŒ‰é‡è®¡è´¹æ—¶ï¼Œåœ¨12ç‚¹çš„ä»·æ ¼',
  `price_h13` float(9,3) DEFAULT '0.000' COMMENT 'æ­¤äº§å“åœ¨æŒ‰é‡è®¡è´¹æ—¶ï¼Œåœ¨13ç‚¹çš„ä»·æ ¼',
  `price_h14` float(9,3) DEFAULT '0.000' COMMENT 'æ­¤äº§å“åœ¨æŒ‰é‡è®¡è´¹æ—¶ï¼Œåœ¨14ç‚¹çš„ä»·æ ¼',
  `price_h15` float(9,3) DEFAULT '0.000' COMMENT 'æ­¤äº§å“åœ¨æŒ‰é‡è®¡è´¹æ—¶ï¼Œåœ¨15ç‚¹çš„ä»·æ ¼',
  `price_h16` float(9,3) DEFAULT '0.000' COMMENT 'æ­¤äº§å“åœ¨æŒ‰é‡è®¡è´¹æ—¶ï¼Œåœ¨16ç‚¹çš„ä»·æ ¼',
  `price_h17` float(9,3) DEFAULT '0.000' COMMENT 'æ­¤äº§å“åœ¨æŒ‰é‡è®¡è´¹æ—¶ï¼Œåœ¨17ç‚¹çš„ä»·æ ¼',
  `price_h18` float(9,3) DEFAULT '0.000' COMMENT 'æ­¤äº§å“åœ¨æŒ‰é‡è®¡è´¹æ—¶ï¼Œåœ¨18ç‚¹çš„ä»·æ ¼',
  `price_h19` float(9,3) DEFAULT '0.000' COMMENT 'æ­¤äº§å“åœ¨æŒ‰é‡è®¡è´¹æ—¶ï¼Œåœ¨19ç‚¹çš„ä»·æ ¼',
  `price_h20` float(9,3) DEFAULT '0.000' COMMENT 'æ­¤äº§å“åœ¨æŒ‰é‡è®¡è´¹æ—¶ï¼Œåœ¨20ç‚¹çš„ä»·æ ¼',
  `price_h21` float(9,3) DEFAULT '0.000' COMMENT 'æ­¤äº§å“åœ¨æŒ‰é‡è®¡è´¹æ—¶ï¼Œåœ¨21ç‚¹çš„ä»·æ ¼',
  `price_h22` float(9,3) DEFAULT '0.000' COMMENT 'æ­¤äº§å“åœ¨æŒ‰é‡è®¡è´¹æ—¶ï¼Œåœ¨22ç‚¹çš„ä»·æ ¼',
  `price_h23` float(9,3) DEFAULT '0.000' COMMENT 'æ­¤äº§å“åœ¨æŒ‰é‡è®¡è´¹æ—¶ï¼Œåœ¨23ç‚¹çš„ä»·æ ¼',
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_id` (`product_id`,`effective_date`)
) ENGINE=MyISAM AUTO_INCREMENT=96 DEFAULT CHARSET=utf8 COMMENT='äº§å“ä»·æ ¼è¡¨';

-- ----------------------------
-- Records of product_prices
-- ----------------------------
INSERT INTO `product_prices` VALUES ('86', '1', '10.000', '300.000', '2.000', '2020-11-17 00:00:00', '2020-11-17 00:00:00', '1.000', '2.000', '3.000', '4.000', '5.000', '6.000', '7.000', '8.000', '9.000', '10.000', '11.000', '12.000', '13.000', '14.000', '15.000', '16.000', '17.000', '18.000', '19.000', '20.000', '21.000', '23.000', '23.000', '24.000');
INSERT INTO `product_prices` VALUES ('61', '1', '2.000', '60.000', '1.000', '2011-05-27 00:00:00', '2011-06-05 00:00:00', '1.000', '2.000', '3.000', '4.000', '5.000', '6.000', '7.000', '8.000', '9.000', '0.000', '1.000', '2.000', '3.000', '4.000', '5.000', '6.000', '7.000', '8.000', '9.000', '0.000', '1.000', '2.000', '3.000', '4.000');
INSERT INTO `product_prices` VALUES ('88', '1', '1.000', '1.000', '1.000', '2011-12-15 00:00:00', '2011-12-30 00:00:00', '1.000', '34.000', '4.000', '4.000', '3.000', '3.000', '11.000', '2.000', '4.000', '4.000', '3.000', '3.000', '11.000', '4.000', '4.000', '4.000', '3.000', '3.000', '1.000', '1.000', '4.000', '4.000', '34.000', '3.000');
INSERT INTO `product_prices` VALUES ('89', '1', '1.000', '1.000', '1.000', '2001-01-01 00:00:00', '2011-12-23 00:00:00', '1.000', '1.000', '3.000', '5.000', '4.000', '4.000', '1.000', '1.000', '3.000', '6.000', '2.000', '8.000', '11.000', '1.000', '3.000', '1.000', '58.000', '7.000', '24.000', '1.000', '352.000', '7.000', '85.000', '5.000');
INSERT INTO `product_prices` VALUES ('87', '79', '2.000', '60.000', '2.000', '2011-11-01 00:00:00', '2011-12-01 00:00:00', '1.000', '2.000', '3.000', '4.000', '5.000', '6.000', '7.000', '8.000', '9.000', '10.000', '11.000', '12.000', '13.000', '14.000', '15.000', '16.000', '17.000', '18.000', '19.000', '20.000', '21.000', '22.000', '23.000', '24.000');
INSERT INTO `product_prices` VALUES ('90', '1', '2.000', '2.000', '2.000', '2011-12-16 00:00:00', '2011-12-31 00:00:00', '2.000', '2.000', '2.000', '2.000', '2.000', '2.000', '2.000', '2.000', '2.000', '2.000', '2.000', '2.000', '2.000', '2.000', '2.000', '2.000', '2.000', '2.000', '2.000', '2.000', '2.000', '2.000', '2.000', '2.000');
INSERT INTO `product_prices` VALUES ('91', '1', '3.000', '3.000', '3.000', '2011-12-01 00:00:00', '2011-12-31 00:00:00', '3.000', '3.000', '3.000', '3.000', '3.000', '3.000', '3.000', '3.000', '3.000', '3.000', '3.000', '3.000', '3.000', '3.000', '3.000', '3.000', '3.000', '3.000', '3.000', '3.000', '3.000', '3.000', '3.000', '3.000');
INSERT INTO `product_prices` VALUES ('92', '1', '4.000', '4.000', '4.000', '2011-12-08 00:00:00', '2011-12-10 00:00:00', '4.000', '4.000', '4.000', '4.000', '4.000', '4.000', '4.000', '4.000', '4.000', '4.000', '4.000', '4.000', '4.000', '4.000', '4.000', '4.000', '4.000', '4.000', '4.000', '4.000', '4.000', '4.000', '4.000', '4.000');

-- ----------------------------
-- Table structure for `products`
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(30) NOT NULL COMMENT 'äº§å“åç§°',
  `resource_type` enum('ecu','volume','snapshot','traffic','elb','elastic-ip','ha') NOT NULL COMMENT 'è³‡æºé¡žåž‹',
  `region_id` int(11) DEFAULT NULL COMMENT 'åŒºåŸŸID',
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_name` (`product_name`)
) ENGINE=MyISAM AUTO_INCREMENT=104 DEFAULT CHARSET=utf8 COMMENT='äº§å“è¡¨';

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('1', 'ecu', 'ecu', '10');
INSERT INTO `products` VALUES ('2', 'storage(å­˜å„²)11', 'volume', '10');
INSERT INTO `products` VALUES ('3', 'snapshot', 'snapshot', '10');
INSERT INTO `products` VALUES ('20', 'è”é€šELB', 'elb', '10');
INSERT INTO `products` VALUES ('4', 'ip', 'elastic-ip', '10');
INSERT INTO `products` VALUES ('5', 'traffic', 'traffic', '10');
INSERT INTO `products` VALUES ('58', 'é«˜å¯ç”¨(HA)', 'ha', '10');

-- ----------------------------
-- Table structure for `s_instancemonitor`
-- ----------------------------
DROP TABLE IF EXISTS `s_instancemonitor`;
CREATE TABLE `s_instancemonitor` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `INSTANCEID` varchar(16) NOT NULL,
  `COMPANYID` int(11) NOT NULL,
  `CREATETIME` datetime NOT NULL,
  `ICOUNT` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=456 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_instancemonitor
-- ----------------------------
INSERT INTO `s_instancemonitor` VALUES ('1', 'i-4F8C08F7', '1', '2011-03-08 00:00:00', '1');
INSERT INTO `s_instancemonitor` VALUES ('2', 'i-560D09B5', '1', '2011-03-09 00:00:00', '1');
INSERT INTO `s_instancemonitor` VALUES ('3', 'i-53B2090E', '1', '2011-03-09 00:00:00', '1');
INSERT INTO `s_instancemonitor` VALUES ('4', 'i-4551077D', '1', '2011-03-09 00:00:00', '1');
INSERT INTO `s_instancemonitor` VALUES ('5', 'i-4733086A', '1', '2011-03-09 00:00:00', '1');
INSERT INTO `s_instancemonitor` VALUES ('6', 'i-515B08D7', '1', '2011-03-09 00:00:00', '1');
INSERT INTO `s_instancemonitor` VALUES ('7', 'i-45E90860', '1', '2011-03-23 00:00:00', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('8', 'i-42A50843', '1', '2011-03-23 00:00:00', '0.5');
INSERT INTO `s_instancemonitor` VALUES ('9', 'i-4761083E', '1', '2011-03-24 00:00:00', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('10', 'i-33420705', '3', '2011-03-31 00:00:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('11', 'i-31C5072D', '3', '2011-04-02 00:00:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('12', 'i-4A1D08BB', '2', '2011-04-02 00:00:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('13', 'i-4D8E089C', '2', '2011-04-02 00:00:00', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('14', 'i-3CC706DE', '3', '2011-04-02 00:00:00', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('15', 'i-485D078E', '3', '2011-04-02 00:00:00', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('16', 'i-37BA068A', '2', '2011-04-02 00:00:00', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('17', 'i-60AF0A78', '4', '2011-04-03 00:00:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('18', 'i-4CAD08E6', '2', '2011-04-05 00:00:00', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('19', 'i-413407CF', '2', '2011-04-05 00:00:00', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('20', 'i-3D990759', '2', '2011-04-06 00:00:00', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('21', 'i-3D8F08AC', '2', '2011-04-06 00:00:00', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('22', 'i-40E70790', '2', '2011-04-06 00:00:00', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('23', 'i-3729064E', '2', '2011-04-06 00:00:00', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('24', 'i-4D5C098B', '2', '2011-04-06 00:00:00', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('25', 'i-4A6E0918', '3', '2011-04-07 00:00:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('26', 'i-4AA5081C', '2', '2011-04-07 00:00:00', '2.0');
INSERT INTO `s_instancemonitor` VALUES ('27', 'i-31B10647', '2', '2011-04-07 00:00:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('28', 'i-4FB4096B', '2', '2011-04-07 00:00:00', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('29', 'i-5D510A38', '2', '2011-04-07 00:00:00', '2.0');
INSERT INTO `s_instancemonitor` VALUES ('30', 'i-57DF0946', '2', '2011-04-07 00:00:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('31', 'i-5093096D', '2', '2011-04-07 00:00:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('32', 'i-45EC07FA', '2', '2011-04-07 00:00:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('33', 'i-42480716', '2', '2011-04-07 00:00:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('34', 'i-40370717', '2', '2011-04-07 00:00:00', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('35', 'i-427D07DB', '2', '2011-04-07 00:00:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('36', 'i-35C9077F', '2', '2011-04-07 00:00:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('37', 'i-3E23083A', '2', '2011-04-07 00:00:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('38', 'i-4C380934', '2', '2011-04-07 00:00:00', '2.0');
INSERT INTO `s_instancemonitor` VALUES ('39', 'i-4441074E', '2', '2011-04-07 00:00:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('40', 'i-39B40626', '2', '2011-04-07 00:00:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('41', 'i-45A90883', '4', '2011-04-07 00:00:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('42', 'i-57B20AFF', '2', '2011-04-07 00:00:00', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('43', 'i-3D4207C0', '2', '2011-04-07 00:00:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('44', 'i-549D09FB', '2', '2011-04-07 00:00:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('45', 'i-449F0710', '2', '2011-04-07 00:00:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('46', 'i-340606D2', '2', '2011-04-07 00:00:00', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('47', 'i-40A80875', '6', '2011-04-08 00:00:00', '2.0');
INSERT INTO `s_instancemonitor` VALUES ('48', 'i-491B0840', '6', '2011-04-08 00:00:00', '2.0');
INSERT INTO `s_instancemonitor` VALUES ('49', 'i-41E507F7', '6', '2011-04-08 00:00:00', '2.0');
INSERT INTO `s_instancemonitor` VALUES ('50', 'i-324F05D5', '6', '2011-04-11 00:00:00', '2.0');
INSERT INTO `s_instancemonitor` VALUES ('51', 'i-4EFE0A27', '5', '2011-04-11 00:00:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('52', 'i-431407F9', '5', '2011-04-11 00:00:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('53', 'i-369B0724', '5', '2011-04-11 00:00:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('54', 'i-3C6A076A', '5', '2011-04-11 00:00:00', '4.0');
INSERT INTO `s_instancemonitor` VALUES ('55', 'i-61650AF5', '5', '2011-04-11 00:00:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('56', 'i-2C1B06C1', '5', '2011-04-11 00:00:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('57', 'i-3E1506CD', '5', '2011-04-11 00:00:00', '4.0');
INSERT INTO `s_instancemonitor` VALUES ('58', 'i-43F80879', '5', '2011-04-12 00:00:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('59', 'i-2FB4079A', '5', '2011-04-12 00:00:00', '0.5');
INSERT INTO `s_instancemonitor` VALUES ('60', 'i-4315081B', '5', '2011-04-12 00:00:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('61', 'i-3A400771', '5', '2011-04-12 00:00:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('62', 'i-4713085A', '5', '2011-04-12 00:00:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('63', 'i-40EC086C', '5', '2011-04-12 00:00:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('64', 'i-365E05FE', '5', '2011-04-12 00:00:00', '4.0');
INSERT INTO `s_instancemonitor` VALUES ('65', 'i-342A063E', '5', '2011-04-14 00:00:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('66', 'i-43D206DB', '5', '2011-04-14 00:00:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('67', 'i-37C706F4', '5', '2011-04-14 00:00:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('68', 'i-4D510A27', '5', '2011-04-14 00:00:00', '2.0');
INSERT INTO `s_instancemonitor` VALUES ('69', 'i-3A8A06B5', '5', '2011-04-14 00:00:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('70', 'i-3F2D0793', '5', '2011-04-16 00:00:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('71', 'i-475B086D', '5', '2011-04-17 00:00:00', '2.0');
INSERT INTO `s_instancemonitor` VALUES ('72', 'i-4815097A', '5', '2011-04-17 00:00:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('73', 'i-32DA066D', '5', '2011-04-17 00:00:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('74', 'i-4B68086A', '5', '2011-04-17 00:00:00', '4.0');
INSERT INTO `s_instancemonitor` VALUES ('75', 'i-4F190950', '5', '2011-04-17 00:00:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('76', 'i-396D06B5', '5', '2011-04-17 00:00:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('77', 'i-554B0897', '5', '2011-04-17 00:00:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('78', 'i-41E3085A', '5', '2011-04-17 00:00:00', '2.0');
INSERT INTO `s_instancemonitor` VALUES ('79', 'i-58E009D4', '5', '2011-04-17 00:00:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('80', 'i-4A0607FE', '5', '2011-04-18 00:00:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('81', 'i-5A0809ED', '5', '2011-04-18 00:00:00', '2.0');
INSERT INTO `s_instancemonitor` VALUES ('82', 'i-374A065C', '5', '2011-04-18 00:00:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('83', 'i-50370A25', '6', '2011-04-19 00:00:00', '2.0');
INSERT INTO `s_instancemonitor` VALUES ('84', 'i-546308FC', '7', '2011-04-28 00:00:00', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('85', 'i-3A0406C7', '7', '2011-04-28 00:00:00', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('86', 'i-444E07B4', '7', '2011-04-28 00:00:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('87', 'i-4C020881', '7', '2011-05-03 00:00:00', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('88', 'i-3EF507C2', '7', '2011-05-03 00:00:00', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('89', 'i-430207F7', '7', '2011-05-03 00:00:00', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('90', 'i-35B20775', '7', '2011-05-04 00:00:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('91', 'i-448D0866', '8', '2011-05-05 00:00:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('92', 'i-35F20665', '8', '2011-05-05 00:00:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('93', 'i-3A76071D', '7', '2011-05-06 00:00:00', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('94', 'i-41D40853', '8', '2011-05-10 00:00:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('95', 'i-390F073F', '8', '2011-05-10 00:00:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('96', 'i-5AA30A6A', '8', '2011-05-11 00:00:00', '2.0');
INSERT INTO `s_instancemonitor` VALUES ('97', 'i-42C10885', '8', '2011-05-11 00:00:00', '6.0');
INSERT INTO `s_instancemonitor` VALUES ('98', 'i-4B6508CF', '6', '2011-05-12 00:00:00', '2.0');
INSERT INTO `s_instancemonitor` VALUES ('99', 'i-47210824', '6', '2011-05-12 00:00:00', '2.0');
INSERT INTO `s_instancemonitor` VALUES ('100', 'i-4CD008BC', '6', '2011-05-12 00:00:00', '2.0');
INSERT INTO `s_instancemonitor` VALUES ('101', 'i-4F27089F', '4', '2011-05-12 00:00:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('102', 'i-479F0795', '2', '2011-05-12 00:00:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('103', 'i-41E50766', '2', '2011-05-12 00:00:00', '2.0');
INSERT INTO `s_instancemonitor` VALUES ('104', 'i-3F4F079C', '2', '2011-05-12 00:00:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('105', 'i-426A0793', '2', '2011-05-12 00:00:00', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('106', 'i-555B09F5', '2', '2011-05-12 00:00:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('107', 'i-407607BE', '2', '2011-05-12 00:00:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('108', 'i-421907A3', '2', '2011-05-12 00:00:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('109', 'i-4DBB091D', '2', '2011-05-12 00:00:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('110', 'i-513408D2', '8', '2011-05-13 00:00:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('111', 'i-412807CA', '8', '2011-05-13 00:00:00', '6.0');
INSERT INTO `s_instancemonitor` VALUES ('112', 'i-3C0906AF', '8', '2011-05-13 00:00:00', '6.0');
INSERT INTO `s_instancemonitor` VALUES ('113', 'i-517709F8', '6', '2011-05-16 00:00:00', '2.0');
INSERT INTO `s_instancemonitor` VALUES ('114', 'i-4FD90861', '6', '2011-05-24 00:00:00', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('115', 'i-45740776', '6', '2011-05-24 00:00:00', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('116', 'i-4B3D07FB', '6', '2011-05-26 00:00:00', '2.0');
INSERT INTO `s_instancemonitor` VALUES ('117', 'i-4FD40AD2', '6', '2011-05-26 00:00:00', '2.0');
INSERT INTO `s_instancemonitor` VALUES ('118', 'i-454E0743', '6', '2011-05-26 00:00:00', '2.0');
INSERT INTO `s_instancemonitor` VALUES ('119', 'i-36C90797', '6', '2011-05-26 00:00:00', '4.0');
INSERT INTO `s_instancemonitor` VALUES ('120', 'i-481E088E', '6', '2011-05-26 00:00:00', '4.0');
INSERT INTO `s_instancemonitor` VALUES ('121', 'i-4805081F', '6', '2011-05-26 00:00:00', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('122', 'i-48E60747', '9', '2011-05-30 00:00:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('123', 'i-41D30742', '6', '2011-06-07 00:00:00', '2.0');
INSERT INTO `s_instancemonitor` VALUES ('124', 'i-48220886', '6', '2011-06-08 00:00:00', '4.0');
INSERT INTO `s_instancemonitor` VALUES ('125', 'i-4BEE0898', '7', '2011-06-10 00:00:00', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('126', 'i-40DD083C', '7', '2011-06-10 00:00:00', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('127', 'i-3D9A06C3', '7', '2011-06-10 00:00:00', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('128', 'i-4CA50843', '7', '2011-06-10 00:00:00', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('129', 'i-36F206BF', '7', '2011-06-10 00:00:00', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('130', 'i-5DCE0B0A', '7', '2011-06-10 00:00:00', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('131', 'i-4AC007A7', '6', '2011-06-13 00:00:00', '4.0');
INSERT INTO `s_instancemonitor` VALUES ('132', 'i-355806EE', '6', '2011-06-14 00:00:00', '4.0');
INSERT INTO `s_instancemonitor` VALUES ('133', 'i-48D90838', '5', '2011-06-15 00:00:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('134', 'i-4FBA08FC', '5', '2011-06-15 00:00:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('135', 'i-4E9408E9', '5', '2011-06-15 00:00:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('136', 'i-4BA50880', '6', '2011-06-17 00:00:00', '4.0');
INSERT INTO `s_instancemonitor` VALUES ('137', 'i-398E06D7', '5', '2011-06-17 00:00:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('138', 'i-33A905E0', '5', '2011-06-17 00:00:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('139', 'i-46C50823', '5', '2011-06-17 00:00:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('140', 'i-49BB0829', '5', '2011-06-17 00:00:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('141', 'i-350E07D3', '5', '2011-06-20 00:00:00', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('142', 'i-3B72062C', '7', '2011-06-22 00:00:00', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('143', 'i-3C050746', '7', '2011-06-22 00:00:00', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('144', 'i-48C107E8', '7', '2011-06-22 00:00:00', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('145', 'i-42ED06ED', '7', '2011-06-22 00:00:00', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('146', 'i-4EDA07E1', '7', '2011-06-22 00:00:00', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('147', 'i-599A0999', '7', '2011-06-22 00:00:00', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('148', 'i-3C3307A1', '7', '2011-06-22 00:00:00', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('149', 'i-292F05C9', '7', '2011-06-22 00:00:00', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('150', 'i-4F680A38', '7', '2011-06-22 00:00:00', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('151', 'i-4B1A0814', '6', '2011-06-24 00:00:00', '4.0');
INSERT INTO `s_instancemonitor` VALUES ('152', 'i-44C6090D', '6', '2011-06-24 00:00:00', '4.0');
INSERT INTO `s_instancemonitor` VALUES ('153', 'i-383806C8', '6', '2011-06-24 00:00:00', '4.0');
INSERT INTO `s_instancemonitor` VALUES ('154', 'i-323B06E5', '6', '2011-06-24 00:00:00', '4.0');
INSERT INTO `s_instancemonitor` VALUES ('155', 'i-3A3C074F', '6', '2011-06-24 00:00:00', '4.0');
INSERT INTO `s_instancemonitor` VALUES ('156', 'i-303905DC', '6', '2011-06-24 00:00:00', '4.0');
INSERT INTO `s_instancemonitor` VALUES ('157', 'i-4751086E', '6', '2011-06-24 00:00:00', '4.0');
INSERT INTO `s_instancemonitor` VALUES ('158', 'i-4D38091F', '3', '2011-06-27 00:00:00', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('159', 'i-2DBF06D4', '3', '2011-06-27 00:00:00', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('160', 'i-4F8C0974', '3', '2011-06-27 00:00:00', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('161', 'i-398607BF', '3', '2011-06-27 00:00:00', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('162', 'i-482B0771', '5', '2011-06-27 00:00:00', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('163', 'i-4D060991', '5', '2011-06-27 00:00:00', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('164', 'i-3C4507A1', '5', '2011-06-28 00:00:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('165', 'i-553508BA', '5', '2011-06-28 00:00:00', '2.0');
INSERT INTO `s_instancemonitor` VALUES ('166', 'i-603E0A62', '6', '2011-06-28 00:00:00', '4.0');
INSERT INTO `s_instancemonitor` VALUES ('167', 'i-3D44073E', '6', '2011-06-28 00:00:00', '4.0');
INSERT INTO `s_instancemonitor` VALUES ('168', 'i-33A105D0', '6', '2011-06-28 00:00:00', '2.0');
INSERT INTO `s_instancemonitor` VALUES ('169', 'i-543E0A35', '5', '2011-06-29 00:00:00', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('170', 'i-3E070755', '6', '2011-07-06 00:00:00', '2.0');
INSERT INTO `s_instancemonitor` VALUES ('171', 'i-4B5708C0', '6', '2011-07-06 00:00:00', '2.0');
INSERT INTO `s_instancemonitor` VALUES ('172', 'i-33CE0657', '6', '2011-07-06 00:00:00', '2.0');
INSERT INTO `s_instancemonitor` VALUES ('173', 'i-4D9E098C', '6', '2011-07-06 14:42:31', '2.0');
INSERT INTO `s_instancemonitor` VALUES ('174', 'i-47BF080E', '3', '2011-07-07 11:22:27', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('175', 'i-48D10834', '6', '2011-07-11 11:27:02', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('176', 'i-3B15073A', '7', '2011-07-11 13:53:09', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('177', 'i-3E03075B', '6', '2011-07-11 14:04:20', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('178', 'i-33570660', '6', '2011-07-11 14:24:30', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('179', 'i-45AB0860', '6', '2011-07-11 14:33:10', '4.0');
INSERT INTO `s_instancemonitor` VALUES ('180', 'i-2F6F0633', '6', '2011-07-11 15:10:46', '4.0');
INSERT INTO `s_instancemonitor` VALUES ('181', 'i-458E07CD', '6', '2011-07-11 15:15:56', '4.0');
INSERT INTO `s_instancemonitor` VALUES ('182', 'i-4903093F', '7', '2011-07-11 16:36:02', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('183', 'i-4B92080D', '7', '2011-07-11 17:06:33', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('184', 'i-3B61072D', '7', '2011-07-11 17:38:19', '0.5');
INSERT INTO `s_instancemonitor` VALUES ('185', 'i-502908AE', '6', '2011-07-11 21:39:19', '4.0');
INSERT INTO `s_instancemonitor` VALUES ('186', 'i-45FC0879', '6', '2011-07-11 23:46:14', '4.0');
INSERT INTO `s_instancemonitor` VALUES ('187', 'i-347D0607', '7', '2011-07-12 00:37:48', '0.5');
INSERT INTO `s_instancemonitor` VALUES ('188', 'i-3D5B081E', '6', '2011-07-12 14:40:24', '4.0');
INSERT INTO `s_instancemonitor` VALUES ('189', 'i-4AA6087E', '6', '2011-07-12 14:41:12', '4.0');
INSERT INTO `s_instancemonitor` VALUES ('190', 'i-38160793', '6', '2011-07-12 15:25:39', '4.0');
INSERT INTO `s_instancemonitor` VALUES ('191', 'i-2A670505', '6', '2011-07-12 15:34:28', '4.0');
INSERT INTO `s_instancemonitor` VALUES ('192', 'i-3D6307A6', '6', '2011-07-14 06:36:26', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('193', 'i-4A4A073A', '6', '2011-07-14 06:41:15', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('194', 'i-47500804', '6', '2011-07-14 06:44:46', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('195', 'i-41C20714', '6', '2011-07-14 06:47:47', '4.0');
INSERT INTO `s_instancemonitor` VALUES ('196', 'i-488C07DF', '6', '2011-07-14 06:50:58', '4.0');
INSERT INTO `s_instancemonitor` VALUES ('197', 'i-4B6D07FF', '6', '2011-07-14 06:56:14', '2.0');
INSERT INTO `s_instancemonitor` VALUES ('198', 'i-3AC407E9', '6', '2011-07-14 06:56:53', '2.0');
INSERT INTO `s_instancemonitor` VALUES ('199', 'i-520508FA', '2', '2011-07-14 07:00:12', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('200', 'i-51B00905', '2', '2011-07-14 07:00:52', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('201', 'i-2E7E05EA', '2', '2011-07-14 07:01:15', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('202', 'i-3F6E0751', '2', '2011-07-14 07:01:50', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('203', 'i-4D230815', '2', '2011-07-14 07:02:14', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('204', 'i-4E9408B2', '2', '2011-07-14 07:03:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('205', 'i-39040842', '2', '2011-07-14 07:03:31', '2.0');
INSERT INTO `s_instancemonitor` VALUES ('206', 'i-305A0679', '2', '2011-07-14 07:03:50', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('207', 'i-45B007B1', '9', '2011-07-14 07:06:59', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('208', 'i-3AA4077B', '5', '2011-07-14 07:10:58', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('209', 'i-477907B6', '6', '2011-07-14 07:19:33', '4.0');
INSERT INTO `s_instancemonitor` VALUES ('210', 'i-3BBB07C2', '6', '2011-07-14 07:23:33', '4.0');
INSERT INTO `s_instancemonitor` VALUES ('211', 'i-5469096A', '6', '2011-07-14 07:35:45', '4.0');
INSERT INTO `s_instancemonitor` VALUES ('212', 'i-502309A0', '5', '2011-07-14 07:37:20', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('213', 'i-441507D2', '4', '2011-07-14 09:10:41', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('214', 'i-4CBA08B6', '3', '2011-07-14 14:52:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('215', 'i-39B80723', '3', '2011-07-14 15:01:05', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('216', 'i-2EE0067B', '3', '2011-07-14 15:08:37', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('217', 'i-455707CD', '3', '2011-07-14 15:18:51', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('218', 'i-3983079A', '3', '2011-07-14 17:32:29', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('219', 'i-4E020984', '3', '2011-07-14 17:42:44', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('220', 'i-46E8083B', '3', '2011-07-14 17:55:49', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('221', 'i-42AF086E', '3', '2011-07-14 20:02:03', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('222', 'i-345D06AD', '6', '2011-07-15 10:18:26', '4.0');
INSERT INTO `s_instancemonitor` VALUES ('223', 'i-44B40880', '3', '2011-07-15 10:48:05', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('224', 'i-44E807E9', '5', '2011-07-15 11:13:26', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('225', 'i-33590624', '3', '2011-07-18 22:50:08', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('226', 'i-4863081E', '6', '2011-07-18 22:52:59', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('227', 'i-45980860', '6', '2011-07-18 22:53:32', '2.0');
INSERT INTO `s_instancemonitor` VALUES ('228', 'i-45CD0766', '6', '2011-07-18 22:53:44', '2.0');
INSERT INTO `s_instancemonitor` VALUES ('229', 'i-3E870757', '6', '2011-07-18 22:53:53', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('230', 'i-405F07A4', '6', '2011-07-18 22:54:13', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('231', 'i-4282081B', '6', '2011-07-18 22:54:39', '4.0');
INSERT INTO `s_instancemonitor` VALUES ('232', 'i-40E30769', '6', '2011-07-18 22:54:47', '4.0');
INSERT INTO `s_instancemonitor` VALUES ('233', 'i-483C07D0', '2', '2011-07-18 22:55:49', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('234', 'i-32A40679', '3', '2011-07-18 23:01:00', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('235', 'i-40CF06DF', '3', '2011-07-19 11:08:15', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('236', 'i-3D5807BA', '10', '2011-07-20 14:09:39', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('237', 'i-46D00806', '10', '2011-07-20 14:18:54', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('238', 'i-3EEE0724', '10', '2011-07-20 14:34:29', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('239', 'i-3CAC0722', '10', '2011-07-20 14:54:02', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('240', 'i-2CF0055E', '10', '2011-07-20 14:55:23', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('241', 'i-58930A0B', '10', '2011-07-20 15:02:29', '6.0');
INSERT INTO `s_instancemonitor` VALUES ('242', 'i-3FA10794', '10', '2011-07-20 15:14:09', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('243', 'i-4A0308E4', '10', '2011-07-20 15:23:39', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('244', 'i-53F30942', '10', '2011-07-20 15:29:20', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('245', 'i-45350911', '10', '2011-07-20 15:39:11', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('246', 'i-54730987', '3', '2011-07-21 09:54:03', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('247', 'i-40F408C2', '10', '2011-07-21 14:31:31', '4.0');
INSERT INTO `s_instancemonitor` VALUES ('248', 'i-3BE206D4', '10', '2011-07-21 14:48:52', '4.0');
INSERT INTO `s_instancemonitor` VALUES ('249', 'i-32F406A3', '10', '2011-07-21 14:52:07', '2.0');
INSERT INTO `s_instancemonitor` VALUES ('250', 'i-4E30094F', '10', '2011-07-21 15:04:18', '4.0');
INSERT INTO `s_instancemonitor` VALUES ('251', 'i-4A9F0848', '10', '2011-07-21 15:07:02', '2.0');
INSERT INTO `s_instancemonitor` VALUES ('252', 'i-4CAC08A0', '10', '2011-07-21 15:10:25', '4.0');
INSERT INTO `s_instancemonitor` VALUES ('253', 'i-402907FD', '10', '2011-07-21 16:01:08', '4.0');
INSERT INTO `s_instancemonitor` VALUES ('254', 'i-4CAD08E5', '10', '2011-07-21 16:58:54', '2.0');
INSERT INTO `s_instancemonitor` VALUES ('255', 'i-51570986', '10', '2011-07-21 16:59:15', '4.0');
INSERT INTO `s_instancemonitor` VALUES ('256', 'i-3241068C', '10', '2011-07-21 17:17:56', '2.0');
INSERT INTO `s_instancemonitor` VALUES ('257', 'i-39800716', '10', '2011-07-21 17:42:45', '2.0');
INSERT INTO `s_instancemonitor` VALUES ('258', 'i-43230755', '10', '2011-07-21 18:27:28', '4.0');
INSERT INTO `s_instancemonitor` VALUES ('259', 'i-39FC069E', '10', '2011-07-21 18:34:46', '4.0');
INSERT INTO `s_instancemonitor` VALUES ('260', 'i-404E07B9', '10', '2011-07-21 18:38:44', '2.0');
INSERT INTO `s_instancemonitor` VALUES ('261', 'i-52F309F2', '10', '2011-07-22 18:55:18', '4.0');
INSERT INTO `s_instancemonitor` VALUES ('262', 'i-4DA2079D', '10', '2011-07-22 19:06:01', '4.0');
INSERT INTO `s_instancemonitor` VALUES ('263', 'i-43DE0738', '10', '2011-07-22 19:06:45', '4.0');
INSERT INTO `s_instancemonitor` VALUES ('264', 'i-4DD409B3', '4', '2011-07-24 23:55:20', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('265', 'i-46360843', '4', '2011-07-25 00:03:13', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('266', 'i-47AB083F', '10', '2011-07-25 00:11:15', '4.0');
INSERT INTO `s_instancemonitor` VALUES ('267', 'i-3BB006C3', '10', '2011-07-25 00:50:33', '4.0');
INSERT INTO `s_instancemonitor` VALUES ('268', 'i-56630906', '10', '2011-07-25 01:04:23', '4.0');
INSERT INTO `s_instancemonitor` VALUES ('269', 'i-40D6074B', '10', '2011-07-25 10:16:03', '4.0');
INSERT INTO `s_instancemonitor` VALUES ('270', 'i-3B04073F', '10', '2011-07-25 10:33:13', '4.0');
INSERT INTO `s_instancemonitor` VALUES ('271', 'i-45830812', '10', '2011-07-25 11:31:54', '4.0');
INSERT INTO `s_instancemonitor` VALUES ('272', 'i-369C07F8', '10', '2011-07-25 11:53:19', '4.0');
INSERT INTO `s_instancemonitor` VALUES ('273', 'i-2C1A05C2', '10', '2011-07-25 11:55:32', '4.0');
INSERT INTO `s_instancemonitor` VALUES ('274', 'i-4B510864', '10', '2011-07-25 12:34:32', '4.0');
INSERT INTO `s_instancemonitor` VALUES ('275', 'i-46990872', '10', '2011-07-25 13:04:20', '4.0');
INSERT INTO `s_instancemonitor` VALUES ('276', 'i-33D80737', '10', '2011-07-25 14:40:13', '4.0');
INSERT INTO `s_instancemonitor` VALUES ('277', 'i-4C04082C', '3', '2011-07-28 16:48:25', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('278', 'i-468C078A', '5', '2011-08-02 15:31:02', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('279', 'i-40AE0784', '104', '2011-08-04 15:40:40', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('280', 'i-4C530A74', '10', '2011-08-08 17:10:45', '4.0');
INSERT INTO `s_instancemonitor` VALUES ('281', 'i-3FF10678', '10', '2011-08-08 17:20:38', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('282', 'i-381805B2', '10', '2011-08-08 17:41:59', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('283', 'i-4398086A', '10', '2011-08-08 18:08:50', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('284', 'i-417508EA', '10', '2011-08-08 18:11:21', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('285', 'i-3E200737', '7', '2011-08-16 17:39:57', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('286', 'i-4B160865', '10', '2011-08-18 17:10:59', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('287', 'i-41680819', '10', '2011-08-18 17:22:12', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('288', 'i-3DEB07C8', '10', '2011-08-18 17:45:02', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('289', 'i-388906F4', '10', '2011-08-18 17:46:04', '4.0');
INSERT INTO `s_instancemonitor` VALUES ('290', 'i-405507F9', '10', '2011-08-18 17:50:45', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('291', 'i-49360828', '10', '2011-08-18 17:54:51', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('292', 'i-43CB07F0', '10', '2011-08-18 17:56:23', '2.0');
INSERT INTO `s_instancemonitor` VALUES ('293', 'i-3E4307D8', '10', '2011-08-18 17:56:37', '2.0');
INSERT INTO `s_instancemonitor` VALUES ('294', 'i-41B00814', '10', '2011-08-18 18:01:45', '2.0');
INSERT INTO `s_instancemonitor` VALUES ('295', 'i-50C408F5', '10', '2011-08-18 20:54:34', '4.0');
INSERT INTO `s_instancemonitor` VALUES ('296', 'i-3AB2077E', '10', '2011-08-18 20:54:36', '4.0');
INSERT INTO `s_instancemonitor` VALUES ('297', 'i-4033076A', '10', '2011-08-18 20:55:59', '4.0');
INSERT INTO `s_instancemonitor` VALUES ('298', 'i-3AF407EF', '10', '2011-08-18 21:00:24', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('299', 'i-406E0699', '10', '2011-08-18 21:05:40', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('300', 'i-4BAB092F', '10', '2011-08-18 21:08:28', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('301', 'i-5A5609CF', '10', '2011-08-18 21:12:17', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('302', 'i-328F063C', '10', '2011-08-18 21:16:55', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('303', 'i-35A2074C', '10', '2011-08-18 21:19:06', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('304', 'i-56A30A3E', '10', '2011-08-18 21:31:42', '0.5');
INSERT INTO `s_instancemonitor` VALUES ('305', 'i-4C670980', '10', '2011-08-19 09:02:04', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('306', 'i-4CAD091B', '10', '2011-08-19 09:29:24', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('307', 'i-482C0857', '10', '2011-08-19 09:30:56', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('308', 'i-496A085E', '10', '2011-08-19 09:52:18', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('309', 'i-4573076A', '107', '2011-08-22 14:44:13', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('310', 'i-44910844', '106', '2011-08-22 16:55:58', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('311', 'i-450E08F5', '106', '2011-08-22 17:01:20', '4.0');
INSERT INTO `s_instancemonitor` VALUES ('312', 'i-3BCC0725', '107', '2011-08-22 22:09:15', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('313', 'i-3A2307D9', '107', '2011-08-22 22:10:07', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('314', 'i-61930A04', '107', '2011-08-22 22:12:43', '2.0');
INSERT INTO `s_instancemonitor` VALUES ('315', 'i-486907E7', '107', '2011-08-22 22:13:10', '2.0');
INSERT INTO `s_instancemonitor` VALUES ('316', 'i-4E180899', '107', '2011-08-23 16:55:06', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('317', 'i-47C60843', '107', '2011-08-23 17:16:44', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('318', 'i-418206B2', '107', '2011-08-23 17:25:15', '2.0');
INSERT INTO `s_instancemonitor` VALUES ('319', 'i-439B0869', '107', '2011-08-23 17:27:32', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('320', 'i-3E6107C8', '107', '2011-08-23 17:30:57', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('321', 'i-488B088E', '3', '2011-08-24 11:21:26', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('322', 'i-3CA9081A', '3', '2011-08-24 11:36:09', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('323', 'i-43A00839', '3', '2011-08-24 11:37:33', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('324', 'i-43B308B6', '3', '2011-08-24 13:03:17', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('325', 'i-4FF508C8', '3', '2011-08-24 13:04:31', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('326', 'i-4F21080D', '107', '2011-08-24 13:32:02', '2.0');
INSERT INTO `s_instancemonitor` VALUES ('327', 'i-3CA606A1', '7', '2011-08-24 14:13:53', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('328', 'i-49FE08D8', '10', '2011-08-24 16:46:16', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('329', 'i-373C06DB', '10', '2011-08-24 16:47:47', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('330', 'i-399A0723', '10', '2011-08-24 16:48:02', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('331', 'i-3135069E', '10', '2011-08-30 11:53:47', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('332', 'i-4E0108BD', '10', '2011-08-30 12:00:41', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('333', 'i-43D607CE', '10', '2011-08-30 12:06:22', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('334', 'i-49670921', '10', '2011-08-30 12:08:59', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('335', 'i-4C210844', '10', '2011-08-30 12:11:42', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('336', 'i-48BC08AC', '10', '2011-08-30 12:17:19', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('337', 'i-42A90872', '10', '2011-08-30 12:39:06', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('338', 'i-3B7D071C', '10', '2011-08-30 13:18:58', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('339', 'i-3C010838', '10', '2011-08-30 13:20:39', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('340', 'i-4C900853', '10', '2011-08-30 16:13:23', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('341', 'i-37690728', '10', '2011-08-30 16:19:39', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('342', 'i-4503080D', '10', '2011-08-30 16:22:01', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('343', 'i-5394091A', '10', '2011-08-31 09:36:15', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('344', 'i-488908B1', '6', '2011-08-31 14:35:53', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('345', 'i-3F9F0868', '5', '2011-09-01 09:34:51', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('346', 'i-3CB90796', '5', '2011-09-01 09:39:04', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('347', 'i-4F04099B', '5', '2011-09-01 12:49:44', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('348', 'i-4E8F089B', '5', '2011-09-01 12:51:15', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('349', 'i-59BF09BE', '5', '2011-09-01 13:07:05', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('350', 'i-2CB60607', '5', '2011-09-01 13:08:04', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('351', 'i-4F7F08E4', '5', '2011-09-01 14:51:09', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('352', 'i-37B2066C', '5', '2011-09-01 15:00:49', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('353', 'i-59CF0AD6', '5', '2011-09-02 08:48:28', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('354', 'i-3C700804', '5', '2011-09-02 09:27:25', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('355', 'i-40FA0802', '5', '2011-09-02 09:28:41', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('356', 'i-3C570759', '5', '2011-09-02 09:59:00', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('357', 'i-3CCC0720', '10', '2011-09-06 08:44:00', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('358', 'i-4282071D', '105', '2011-09-06 10:11:28', '6.0');
INSERT INTO `s_instancemonitor` VALUES ('359', 'i-41BA071B', '105', '2011-09-06 10:43:37', '6.0');
INSERT INTO `s_instancemonitor` VALUES ('360', 'i-472F08AF', '108', '2011-09-07 14:53:38', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('361', 'i-31A40629', '10', '2011-09-07 23:38:51', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('362', 'i-392707F9', '10', '2011-09-07 23:46:23', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('363', 'i-460706B4', '10', '2011-09-07 23:51:04', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('364', 'i-44DA0814', '10', '2011-09-08 11:03:49', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('365', 'i-3782063E', '10', '2011-09-08 11:16:32', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('366', 'i-2DB605CC', '108', '2011-09-15 14:35:06', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('367', 'i-3368076D', '10', '2011-09-15 14:36:11', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('368', 'i-2A1404B6', '108', '2011-09-15 15:10:41', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('369', 'i-40970817', '108', '2011-09-15 15:10:51', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('370', 'i-52C80A51', '108', '2011-09-15 15:14:55', '4.0');
INSERT INTO `s_instancemonitor` VALUES ('371', 'i-4A2D0975', '108', '2011-09-16 09:24:35', '2.0');
INSERT INTO `s_instancemonitor` VALUES ('372', 'i-49A80845', '108', '2011-09-16 10:07:39', '2.0');
INSERT INTO `s_instancemonitor` VALUES ('373', 'i-4B4208F0', '108', '2011-09-16 10:16:21', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('374', 'i-4CF50992', '108', '2011-09-16 10:25:16', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('375', 'i-4B9208E1', '108', '2011-09-16 10:41:24', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('376', 'i-456B0793', '108', '2011-09-16 10:58:13', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('377', 'i-4D4B08D9', '108', '2011-09-16 11:02:55', '0.5');
INSERT INTO `s_instancemonitor` VALUES ('378', 'i-54D1096E', '108', '2011-09-16 14:01:44', '0.5');
INSERT INTO `s_instancemonitor` VALUES ('379', 'i-4ED6094C', '108', '2011-09-16 14:01:59', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('380', 'i-5F060AAC', '108', '2011-09-16 17:07:26', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('381', 'i-56BD0954', '108', '2011-09-16 17:34:43', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('382', 'i-423F088A', '108', '2011-09-19 10:39:49', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('383', 'i-3A9106E0', '104', '2011-09-19 10:53:36', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('384', 'i-3C800707', '104', '2011-09-19 11:45:34', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('385', 'i-2730059A', '104', '2011-09-19 12:01:37', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('386', 'i-39550727', '104', '2011-09-19 13:08:16', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('387', 'i-48000837', '104', '2011-09-19 13:15:18', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('388', 'i-31C7068A', '104', '2011-09-19 13:29:59', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('389', 'i-36EF0768', '104', '2011-09-19 13:40:57', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('390', 'i-3B850727', '108', '2011-09-19 13:54:01', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('391', 'i-3F7806DC', '104', '2011-09-19 14:04:48', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('392', 'i-40EA0825', '108', '2011-09-19 14:25:35', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('393', 'i-469E07D5', '108', '2011-09-19 14:50:36', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('394', 'i-4FC308F9', '108', '2011-09-19 14:50:42', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('395', 'i-3A9F07F1', '104', '2011-09-19 15:11:58', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('396', 'i-2DF805ED', '104', '2011-09-19 15:12:10', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('397', 'i-4F8E0748', '10', '2011-09-19 15:36:07', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('398', 'i-604F0ABF', '104', '2011-09-19 15:40:54', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('399', 'i-3CE30871', '108', '2011-09-19 15:49:07', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('400', 'i-4DCF09D5', '104', '2011-09-19 18:17:09', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('401', 'i-3D9006BB', '110', '2011-09-19 20:09:30', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('402', 'i-37E306F0', '110', '2011-09-19 20:14:52', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('403', 'i-36EE06A7', '110', '2011-09-19 20:20:42', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('404', 'i-509D08FC', '110', '2011-09-20 09:23:45', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('405', 'i-34E30520', '110', '2011-09-20 09:27:04', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('406', 'i-3DAD0714', '5', '2011-09-20 09:32:43', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('407', 'i-4E1508CE', '5', '2011-09-20 10:13:17', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('408', 'i-3FA0077F', '5', '2011-09-20 10:13:19', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('409', 'i-39EA071A', '5', '2011-09-20 10:15:08', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('410', 'i-3A0406F0', '5', '2011-09-20 15:31:31', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('411', 'i-4E7309DB', '108', '2011-09-20 15:51:35', '0.5');
INSERT INTO `s_instancemonitor` VALUES ('412', 'i-47200847', '108', '2011-09-20 16:47:20', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('413', 'i-493A0813', '108', '2011-09-20 16:51:15', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('414', 'i-4D12090E', '10', '2011-09-20 17:48:35', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('415', 'i-4B4D086B', '10', '2011-09-20 17:51:16', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('416', 'i-32A4057B', '110', '2011-09-20 18:24:41', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('417', 'i-5197098E', '10', '2011-09-21 08:53:55', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('418', 'i-3F6A06F9', '10', '2011-09-21 08:59:32', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('419', 'i-469B0791', '10', '2011-09-21 09:16:29', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('420', 'i-53D709CA', '10', '2011-09-21 11:05:53', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('421', 'i-40F6079D', '10', '2011-09-21 11:07:51', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('422', 'i-49030918', '10', '2011-09-21 11:32:05', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('423', 'i-45730808', '10', '2011-09-21 12:54:10', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('424', 'i-4109079C', '10', '2011-09-21 12:54:11', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('425', 'i-2E650536', '10', '2011-09-21 15:00:02', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('426', 'i-39350795', '10', '2011-09-21 15:00:31', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('427', 'i-4C5E08EF', '108', '2011-09-21 16:06:21', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('428', 'i-4AB5095C', '110', '2011-09-21 16:14:55', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('429', 'i-371F05E8', '10', '2011-09-21 16:45:25', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('430', 'i-2BF305BB', '10', '2011-09-21 18:02:52', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('431', 'i-3C1E07EE', '10', '2011-09-21 18:05:15', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('432', 'i-48C00849', '108', '2011-09-22 23:04:33', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('433', 'i-50AC0961', '108', '2011-09-22 23:25:56', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('434', 'i-3F5707E3', '108', '2011-09-22 23:30:57', '0.5');
INSERT INTO `s_instancemonitor` VALUES ('435', 'i-53EB097F', '108', '2011-09-22 23:32:49', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('436', 'i-48E808F3', '10', '2011-09-23 09:59:16', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('437', 'i-4A830855', '10', '2011-09-23 10:27:21', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('438', 'i-479607C3', '5', '2011-09-23 10:48:59', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('439', 'i-4C250954', '5', '2011-09-23 10:55:45', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('440', 'i-2B0706CF', '5', '2011-09-23 11:01:20', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('441', 'i-4C2D08EA', '108', '2011-09-23 14:16:45', '0.5');
INSERT INTO `s_instancemonitor` VALUES ('442', 'i-37F10705', '108', '2011-09-23 14:26:50', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('443', 'i-32D20733', '111', '2011-09-26 15:01:19', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('444', 'i-4D06088F', '111', '2011-09-26 15:02:31', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('445', 'i-3E2C07D1', '111', '2011-09-26 17:32:44', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('446', 'i-4B2B081D', '111', '2011-09-26 17:34:26', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('447', 'i-38CD07C2', '111', '2011-09-26 17:35:55', '2.0');
INSERT INTO `s_instancemonitor` VALUES ('448', 'i-4262080B', '111', '2011-09-26 17:38:12', '0.5');
INSERT INTO `s_instancemonitor` VALUES ('449', 'i-50A50868', '111', '2011-09-27 10:48:07', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('450', 'i-4F8F0875', '111', '2011-09-27 10:51:11', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('451', 'i-51390944', '111', '2011-09-27 10:52:29', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('452', 'i-53F808CC', '111', '2011-09-27 10:53:15', '0.25');
INSERT INTO `s_instancemonitor` VALUES ('453', 'i-4DF408A8', '111', '2011-09-27 10:55:06', '1.5');
INSERT INTO `s_instancemonitor` VALUES ('454', 'i-3F1F07BF', '111', '2011-09-27 16:49:13', '1.0');
INSERT INTO `s_instancemonitor` VALUES ('455', 'i-33A90743', '3', '2011-09-28 10:38:14', '1.5');

-- ----------------------------
-- Table structure for `s_xentop`
-- ----------------------------
DROP TABLE IF EXISTS `s_xentop`;
CREATE TABLE `s_xentop` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIME` datetime DEFAULT NULL,
  `HOSTNAME` varchar(50) DEFAULT NULL,
  `IP` varchar(20) DEFAULT NULL,
  `NAME` varchar(30) DEFAULT NULL,
  `CPU` double DEFAULT NULL,
  `MAXMEM` bigint(20) DEFAULT NULL,
  `VCPUS` int(11) DEFAULT NULL,
  `NETTX` bigint(20) DEFAULT NULL,
  `NETRX` bigint(20) DEFAULT NULL,
  `VBD_OO` bigint(20) DEFAULT NULL,
  `VBD_RD` bigint(20) DEFAULT NULL,
  `VBD_WR` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=52150 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_xentop
-- ----------------------------

-- ----------------------------
-- Table structure for `snapshot_operation_logs`
-- ----------------------------
DROP TABLE IF EXISTS `snapshot_operation_logs`;
CREATE TABLE `snapshot_operation_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `snapshot_id` int(11) DEFAULT NULL COMMENT 'å…ƒæ•°æ®å¿«ç…§è¡¨ä¸­çš„id',
  `snapshot_sid` varchar(30) DEFAULT NULL COMMENT 'å¿«ç…§åœ¨äº‘é‡Œçš„ID,å­—ç¬¦ä¸²',
  `operation` enum('add','delete') DEFAULT NULL COMMENT 'å¯¹å¿«ç…§çš„æ“ä½œ',
  `snapshot_size` int(11) DEFAULT NULL COMMENT 'å½“å‰æ“ä½œå¿«ç…§çš„å¤§å°',
  `department_id` int(11) DEFAULT NULL COMMENT 'æ‰€å±žéƒ¨é—¨ID',
  `company_id` int(11) DEFAULT NULL COMMENT 'æ‰€å±žå…¬å¸ID',
  `total_size_of_department` int(11) DEFAULT NULL,
  `total_size_of_company` int(11) DEFAULT NULL,
  `region_id` int(11) DEFAULT NULL,
  `operation_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=99 DEFAULT CHARSET=utf8 COMMENT='å¿«ç…§çš„æ“ä½œæ—¥å¿—è¡¨ï¼Œè®°å½•å¿«ç…§çš„æ·»åŠ å’Œåˆ é™¤æ“';

-- ----------------------------
-- Records of snapshot_operation_logs
-- ----------------------------

-- ----------------------------
-- Table structure for `usage_report`
-- ----------------------------
DROP TABLE IF EXISTS `usage_report`;
CREATE TABLE `usage_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `charge_duration` enum('pay-for-time','daily','monthly') DEFAULT NULL COMMENT 'ä»˜è´¹ç±»åž‹',
  `quantity` double(20,4) NOT NULL COMMENT 'ä½¿ç”¨é‡',
  `payables` double(11,4) DEFAULT NULL COMMENT 'åº”ä»˜æ¬¾',
  `rtype` enum('elastic-ip','elb','snapshot','volume','ecu','traffic') NOT NULL COMMENT 'èµ„æºç±»åž‹',
  `charge_time` datetime NOT NULL,
  `is_pay` int(1) NOT NULL DEFAULT '0' COMMENT '0 æœªä»˜ ï¼Œ1 å·²ä»˜',
  `org_type` enum('company','department') NOT NULL COMMENT 'æ‰€å±žç»„ç»‡ç»“æž„ï¼Œå…¬å¸æˆ–éƒ¨é—¨',
  `org_id` int(11) NOT NULL COMMENT 'æ‰€å±žç»„ç»‡ç»“æž„id',
  `region_id` int(11) NOT NULL COMMENT 'åŒºåŸŸID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1046 DEFAULT CHARSET=utf8 COMMENT='ç”¨é‡æŠ¥å‘Š';

-- ----------------------------
-- Records of usage_report
-- ----------------------------
INSERT INTO `usage_report` VALUES ('890', 'pay-for-time', '43.0000', null, 'traffic', '2011-10-21 11:30:00', '0', 'company', '1', '1');
INSERT INTO `usage_report` VALUES ('891', 'pay-for-time', '1.0000', null, 'ecu', '2011-10-21 11:30:00', '0', 'department', '1', '1');
INSERT INTO `usage_report` VALUES ('892', 'pay-for-time', '0.5000', null, 'ecu', '2011-10-21 11:30:00', '0', 'department', '2', '1');
INSERT INTO `usage_report` VALUES ('893', 'pay-for-time', '10.0000', null, 'elastic-ip', '2011-10-21 11:30:00', '0', 'company', '2', '1');
INSERT INTO `usage_report` VALUES ('894', 'pay-for-time', '2.0000', null, 'elastic-ip', '2011-10-21 11:30:00', '0', 'company', '1', '0');
INSERT INTO `usage_report` VALUES ('895', 'pay-for-time', '1.0000', null, 'elastic-ip', '2011-10-21 11:30:00', '0', 'company', '4', '1');
INSERT INTO `usage_report` VALUES ('896', 'pay-for-time', '8.0000', null, 'elastic-ip', '2011-10-21 11:30:00', '0', 'company', '3', '1');
INSERT INTO `usage_report` VALUES ('897', 'pay-for-time', '2.0000', null, 'elb', '2011-10-21 11:30:00', '0', 'department', '2', '1');
INSERT INTO `usage_report` VALUES ('898', 'pay-for-time', '4.0000', null, 'elb', '2011-10-21 11:30:00', '0', 'department', '3', '1');
INSERT INTO `usage_report` VALUES ('899', 'pay-for-time', '100.0000', null, 'elb', '2011-10-21 11:30:00', '0', 'department', '123', '1');
INSERT INTO `usage_report` VALUES ('900', 'pay-for-time', '5.0000', null, 'elb', '2011-10-21 11:30:00', '0', 'department', '1', '1');
INSERT INTO `usage_report` VALUES ('901', 'pay-for-time', '5.0000', null, 'volume', '2011-10-21 11:30:00', '0', 'department', '2', '1');
INSERT INTO `usage_report` VALUES ('902', 'pay-for-time', '0.0000', null, 'volume', '2011-10-21 11:30:00', '0', 'department', '160', '1');
INSERT INTO `usage_report` VALUES ('903', 'pay-for-time', '10.0000', null, 'volume', '2011-10-21 11:30:00', '0', 'department', '1', '1');
INSERT INTO `usage_report` VALUES ('904', 'pay-for-time', '100.0000', null, 'snapshot', '2011-10-21 11:30:00', '0', 'department', '123', '1');
INSERT INTO `usage_report` VALUES ('905', 'pay-for-time', '0.0000', null, 'snapshot', '2011-10-21 11:30:00', '0', 'department', '1', '1');
INSERT INTO `usage_report` VALUES ('906', 'pay-for-time', '171320038.0000', null, 'traffic', '2011-10-21 13:00:00', '0', 'company', '1', '1');
INSERT INTO `usage_report` VALUES ('907', 'pay-for-time', '1.0000', null, 'ecu', '2011-10-21 13:00:00', '0', 'department', '1', '1');
INSERT INTO `usage_report` VALUES ('908', 'pay-for-time', '0.5000', null, 'ecu', '2011-10-21 13:00:00', '0', 'department', '2', '1');
INSERT INTO `usage_report` VALUES ('909', 'pay-for-time', '10.0000', null, 'elastic-ip', '2011-10-21 13:00:00', '0', 'company', '2', '1');
INSERT INTO `usage_report` VALUES ('910', 'pay-for-time', '2.0000', null, 'elastic-ip', '2011-10-21 13:00:00', '0', 'company', '1', '0');
INSERT INTO `usage_report` VALUES ('911', 'pay-for-time', '1.0000', null, 'elastic-ip', '2011-10-21 13:00:00', '0', 'company', '4', '1');
INSERT INTO `usage_report` VALUES ('912', 'pay-for-time', '8.0000', null, 'elastic-ip', '2011-10-21 13:00:00', '0', 'company', '3', '1');
INSERT INTO `usage_report` VALUES ('913', 'pay-for-time', '2.0000', null, 'elb', '2011-10-21 13:00:00', '0', 'department', '2', '1');
INSERT INTO `usage_report` VALUES ('914', 'pay-for-time', '4.0000', null, 'elb', '2011-10-21 13:00:00', '0', 'department', '3', '1');
INSERT INTO `usage_report` VALUES ('915', 'pay-for-time', '100.0000', null, 'elb', '2011-10-21 13:00:00', '0', 'department', '123', '1');
INSERT INTO `usage_report` VALUES ('916', 'pay-for-time', '5.0000', null, 'elb', '2011-10-21 13:00:00', '0', 'department', '1', '1');
INSERT INTO `usage_report` VALUES ('917', 'pay-for-time', '5.0000', null, 'volume', '2011-10-21 13:00:00', '0', 'department', '2', '1');
INSERT INTO `usage_report` VALUES ('918', 'pay-for-time', '0.0000', null, 'volume', '2011-10-21 13:00:00', '0', 'department', '160', '1');
INSERT INTO `usage_report` VALUES ('919', 'pay-for-time', '10.0000', null, 'volume', '2011-10-21 13:00:00', '0', 'department', '1', '1');
INSERT INTO `usage_report` VALUES ('920', 'pay-for-time', '100.0000', null, 'snapshot', '2011-10-21 13:00:00', '0', 'department', '123', '1');
INSERT INTO `usage_report` VALUES ('921', 'pay-for-time', '0.0000', null, 'snapshot', '2011-10-21 13:00:00', '0', 'department', '1', '1');
INSERT INTO `usage_report` VALUES ('922', 'pay-for-time', '171545179.0000', null, 'traffic', '2011-10-21 12:30:00', '0', 'company', '1', '1');
INSERT INTO `usage_report` VALUES ('923', 'pay-for-time', '1.0000', null, 'ecu', '2011-10-21 12:30:00', '0', 'department', '1', '1');
INSERT INTO `usage_report` VALUES ('924', 'pay-for-time', '0.5000', null, 'ecu', '2011-10-21 12:30:00', '0', 'department', '2', '1');
INSERT INTO `usage_report` VALUES ('925', 'pay-for-time', '10.0000', null, 'elastic-ip', '2011-10-21 12:30:00', '0', 'company', '2', '1');
INSERT INTO `usage_report` VALUES ('926', 'pay-for-time', '2.0000', null, 'elastic-ip', '2011-10-21 12:30:00', '0', 'company', '1', '0');
INSERT INTO `usage_report` VALUES ('927', 'pay-for-time', '1.0000', null, 'elastic-ip', '2011-10-21 12:30:00', '0', 'company', '4', '1');
INSERT INTO `usage_report` VALUES ('928', 'pay-for-time', '8.0000', null, 'elastic-ip', '2011-10-21 12:30:00', '0', 'company', '3', '1');
INSERT INTO `usage_report` VALUES ('929', 'pay-for-time', '2.0000', null, 'elb', '2011-10-21 12:30:00', '0', 'department', '2', '1');
INSERT INTO `usage_report` VALUES ('930', 'pay-for-time', '4.0000', null, 'elb', '2011-10-21 12:30:00', '0', 'department', '3', '1');
INSERT INTO `usage_report` VALUES ('931', 'pay-for-time', '100.0000', null, 'elb', '2011-10-21 12:30:00', '0', 'department', '123', '1');
INSERT INTO `usage_report` VALUES ('932', 'pay-for-time', '5.0000', null, 'elb', '2011-10-21 12:30:00', '0', 'department', '1', '1');
INSERT INTO `usage_report` VALUES ('933', 'pay-for-time', '5.0000', null, 'volume', '2011-10-21 12:30:00', '0', 'department', '2', '1');
INSERT INTO `usage_report` VALUES ('934', 'pay-for-time', '0.0000', null, 'volume', '2011-10-21 12:30:00', '0', 'department', '160', '1');
INSERT INTO `usage_report` VALUES ('935', 'pay-for-time', '10.0000', null, 'volume', '2011-10-21 12:30:00', '0', 'department', '1', '1');
INSERT INTO `usage_report` VALUES ('936', 'pay-for-time', '100.0000', null, 'snapshot', '2011-10-21 12:30:00', '0', 'department', '123', '1');
INSERT INTO `usage_report` VALUES ('937', 'pay-for-time', '0.0000', null, 'snapshot', '2011-10-21 12:30:00', '0', 'department', '1', '1');
INSERT INTO `usage_report` VALUES ('938', 'pay-for-time', '135152216.0000', null, 'traffic', '2011-10-21 12:00:00', '0', 'company', '1', '1');
INSERT INTO `usage_report` VALUES ('939', 'pay-for-time', '1.0000', null, 'ecu', '2011-10-21 12:00:00', '0', 'department', '1', '1');
INSERT INTO `usage_report` VALUES ('940', 'pay-for-time', '0.5000', null, 'ecu', '2011-10-21 12:00:00', '0', 'department', '2', '1');
INSERT INTO `usage_report` VALUES ('941', 'pay-for-time', '10.0000', null, 'elastic-ip', '2011-10-21 12:00:00', '0', 'company', '2', '1');
INSERT INTO `usage_report` VALUES ('942', 'pay-for-time', '2.0000', null, 'elastic-ip', '2011-10-21 12:00:00', '0', 'company', '1', '0');
INSERT INTO `usage_report` VALUES ('943', 'pay-for-time', '1.0000', null, 'elastic-ip', '2011-10-21 12:00:00', '0', 'company', '4', '1');
INSERT INTO `usage_report` VALUES ('944', 'pay-for-time', '8.0000', null, 'elastic-ip', '2011-10-21 12:00:00', '0', 'company', '3', '1');
INSERT INTO `usage_report` VALUES ('945', 'pay-for-time', '2.0000', null, 'elb', '2011-10-21 12:00:00', '0', 'department', '2', '1');
INSERT INTO `usage_report` VALUES ('946', 'pay-for-time', '4.0000', null, 'elb', '2011-10-21 12:00:00', '0', 'department', '3', '1');
INSERT INTO `usage_report` VALUES ('947', 'pay-for-time', '100.0000', null, 'elb', '2011-10-21 12:00:00', '0', 'department', '123', '1');
INSERT INTO `usage_report` VALUES ('948', 'pay-for-time', '5.0000', null, 'elb', '2011-10-21 12:00:00', '0', 'department', '1', '1');
INSERT INTO `usage_report` VALUES ('949', 'pay-for-time', '5.0000', null, 'volume', '2011-10-21 12:00:00', '0', 'department', '2', '1');
INSERT INTO `usage_report` VALUES ('950', 'pay-for-time', '0.0000', null, 'volume', '2011-10-21 12:00:00', '0', 'department', '160', '1');
INSERT INTO `usage_report` VALUES ('951', 'pay-for-time', '10.0000', null, 'volume', '2011-10-21 12:00:00', '0', 'department', '1', '1');
INSERT INTO `usage_report` VALUES ('952', 'pay-for-time', '100.0000', null, 'snapshot', '2011-10-21 12:00:00', '0', 'department', '123', '1');
INSERT INTO `usage_report` VALUES ('953', 'pay-for-time', '0.0000', null, 'snapshot', '2011-10-21 12:00:00', '0', 'department', '1', '1');
INSERT INTO `usage_report` VALUES ('954', 'pay-for-time', '171151773.0000', null, 'traffic', '2011-10-21 13:30:00', '0', 'company', '1', '1');
INSERT INTO `usage_report` VALUES ('955', 'pay-for-time', '1.0000', null, 'ecu', '2011-10-21 13:30:00', '0', 'department', '1', '1');
INSERT INTO `usage_report` VALUES ('956', 'pay-for-time', '0.5000', null, 'ecu', '2011-10-21 13:30:00', '0', 'department', '2', '1');
INSERT INTO `usage_report` VALUES ('957', 'pay-for-time', '10.0000', null, 'elastic-ip', '2011-10-21 13:30:00', '0', 'company', '2', '1');
INSERT INTO `usage_report` VALUES ('958', 'pay-for-time', '2.0000', null, 'elastic-ip', '2011-10-21 13:30:00', '0', 'company', '1', '0');
INSERT INTO `usage_report` VALUES ('959', 'pay-for-time', '1.0000', null, 'elastic-ip', '2011-10-21 13:30:00', '0', 'company', '4', '1');
INSERT INTO `usage_report` VALUES ('960', 'pay-for-time', '8.0000', null, 'elastic-ip', '2011-10-21 13:30:00', '0', 'company', '3', '1');
INSERT INTO `usage_report` VALUES ('961', 'pay-for-time', '2.0000', null, 'elb', '2011-10-21 13:30:00', '0', 'department', '2', '1');
INSERT INTO `usage_report` VALUES ('962', 'pay-for-time', '4.0000', null, 'elb', '2011-10-21 13:30:00', '0', 'department', '3', '1');
INSERT INTO `usage_report` VALUES ('963', 'pay-for-time', '100.0000', null, 'elb', '2011-10-21 13:30:00', '0', 'department', '123', '1');
INSERT INTO `usage_report` VALUES ('964', 'pay-for-time', '5.0000', null, 'elb', '2011-10-21 13:30:00', '0', 'department', '1', '1');
INSERT INTO `usage_report` VALUES ('965', 'pay-for-time', '5.0000', null, 'volume', '2011-10-21 13:30:00', '0', 'department', '2', '1');
INSERT INTO `usage_report` VALUES ('966', 'pay-for-time', '0.0000', null, 'volume', '2011-10-21 13:30:00', '0', 'department', '160', '1');
INSERT INTO `usage_report` VALUES ('967', 'pay-for-time', '10.0000', null, 'volume', '2011-10-21 13:30:00', '0', 'department', '1', '1');
INSERT INTO `usage_report` VALUES ('968', 'pay-for-time', '100.0000', null, 'snapshot', '2011-10-21 13:30:00', '0', 'department', '123', '1');
INSERT INTO `usage_report` VALUES ('969', 'pay-for-time', '0.0000', null, 'snapshot', '2011-10-21 13:30:00', '0', 'department', '1', '1');
INSERT INTO `usage_report` VALUES ('970', 'pay-for-time', '170767168.0000', null, 'traffic', '2011-10-21 14:00:00', '0', 'company', '1', '1');
INSERT INTO `usage_report` VALUES ('971', 'pay-for-time', '1.0000', null, 'ecu', '2011-10-21 14:00:00', '0', 'department', '1', '1');
INSERT INTO `usage_report` VALUES ('972', 'pay-for-time', '0.5000', null, 'ecu', '2011-10-21 14:00:00', '0', 'department', '2', '1');
INSERT INTO `usage_report` VALUES ('973', 'pay-for-time', '10.0000', null, 'elastic-ip', '2011-10-21 14:00:00', '0', 'company', '2', '1');
INSERT INTO `usage_report` VALUES ('974', 'pay-for-time', '2.0000', null, 'elastic-ip', '2011-10-21 14:00:00', '0', 'company', '1', '0');
INSERT INTO `usage_report` VALUES ('975', 'pay-for-time', '1.0000', null, 'elastic-ip', '2011-10-21 14:00:00', '0', 'company', '4', '1');
INSERT INTO `usage_report` VALUES ('976', 'pay-for-time', '8.0000', null, 'elastic-ip', '2011-10-21 14:00:00', '0', 'company', '3', '1');
INSERT INTO `usage_report` VALUES ('977', 'pay-for-time', '2.0000', null, 'elb', '2011-10-21 14:00:00', '0', 'department', '2', '1');
INSERT INTO `usage_report` VALUES ('978', 'pay-for-time', '4.0000', null, 'elb', '2011-10-21 14:00:00', '0', 'department', '3', '1');
INSERT INTO `usage_report` VALUES ('979', 'pay-for-time', '100.0000', null, 'elb', '2011-10-21 14:00:00', '0', 'department', '123', '1');
INSERT INTO `usage_report` VALUES ('980', 'pay-for-time', '5.0000', null, 'elb', '2011-10-21 14:00:00', '0', 'department', '1', '1');
INSERT INTO `usage_report` VALUES ('981', 'pay-for-time', '5.0000', null, 'volume', '2011-10-21 14:00:00', '0', 'department', '2', '1');
INSERT INTO `usage_report` VALUES ('982', 'pay-for-time', '0.0000', null, 'volume', '2011-10-21 14:00:00', '0', 'department', '160', '1');
INSERT INTO `usage_report` VALUES ('983', 'pay-for-time', '10.0000', null, 'volume', '2011-10-21 14:00:00', '0', 'department', '1', '1');
INSERT INTO `usage_report` VALUES ('984', 'pay-for-time', '100.0000', null, 'snapshot', '2011-10-21 14:00:00', '0', 'department', '123', '1');
INSERT INTO `usage_report` VALUES ('985', 'pay-for-time', '0.0000', null, 'snapshot', '2011-10-21 14:00:00', '0', 'department', '1', '1');
INSERT INTO `usage_report` VALUES ('986', 'pay-for-time', '15.0000', null, 'traffic', '2011-10-21 14:30:00', '0', 'company', '1', '1');
INSERT INTO `usage_report` VALUES ('987', 'pay-for-time', '0.2500', null, 'ecu', '2011-10-21 14:30:00', '0', 'department', '2', '1');
INSERT INTO `usage_report` VALUES ('988', 'pay-for-time', '10.0000', null, 'elastic-ip', '2011-10-21 14:30:00', '0', 'company', '2', '1');
INSERT INTO `usage_report` VALUES ('989', 'pay-for-time', '2.0000', null, 'elastic-ip', '2011-10-21 14:30:00', '0', 'company', '1', '0');
INSERT INTO `usage_report` VALUES ('990', 'pay-for-time', '1.0000', null, 'elastic-ip', '2011-10-21 14:30:00', '0', 'company', '4', '1');
INSERT INTO `usage_report` VALUES ('991', 'pay-for-time', '8.0000', null, 'elastic-ip', '2011-10-21 14:30:00', '0', 'company', '3', '1');
INSERT INTO `usage_report` VALUES ('992', 'pay-for-time', '2.0000', null, 'elb', '2011-10-21 14:30:00', '0', 'department', '2', '1');
INSERT INTO `usage_report` VALUES ('993', 'pay-for-time', '4.0000', null, 'elb', '2011-10-21 14:30:00', '0', 'department', '3', '1');
INSERT INTO `usage_report` VALUES ('994', 'pay-for-time', '100.0000', null, 'elb', '2011-10-21 14:30:00', '0', 'department', '123', '1');
INSERT INTO `usage_report` VALUES ('995', 'pay-for-time', '5.0000', null, 'elb', '2011-10-21 14:30:00', '0', 'department', '1', '1');
INSERT INTO `usage_report` VALUES ('996', 'pay-for-time', '5.0000', null, 'volume', '2011-10-21 14:30:00', '0', 'department', '2', '1');
INSERT INTO `usage_report` VALUES ('997', 'pay-for-time', '0.0000', null, 'volume', '2011-10-21 14:30:00', '0', 'department', '160', '1');
INSERT INTO `usage_report` VALUES ('998', 'pay-for-time', '10.0000', null, 'volume', '2011-10-21 14:30:00', '0', 'department', '1', '1');
INSERT INTO `usage_report` VALUES ('999', 'pay-for-time', '100.0000', null, 'snapshot', '2011-10-21 14:30:00', '0', 'department', '123', '1');
INSERT INTO `usage_report` VALUES ('1000', 'pay-for-time', '0.0000', null, 'snapshot', '2011-10-21 14:30:00', '0', 'department', '1', '1');
INSERT INTO `usage_report` VALUES ('1001', 'daily', '20.0000', null, 'ecu', '2011-10-22 23:59:59', '0', 'department', '222', '1');
INSERT INTO `usage_report` VALUES ('1002', 'daily', '20.0000', null, 'ecu', '2011-10-22 23:59:59', '0', 'department', '222', '1');
INSERT INTO `usage_report` VALUES ('1003', 'daily', '20.0000', null, 'ecu', '2011-10-22 23:59:59', '0', 'department', '222', '1');
INSERT INTO `usage_report` VALUES ('1004', 'daily', '30.0000', null, 'ecu', '2011-10-22 23:59:59', '0', 'department', '1', '1');
INSERT INTO `usage_report` VALUES ('1005', 'daily', '10.0000', null, 'snapshot', '2011-10-22 23:59:59', '0', 'department', '1', '1');
INSERT INTO `usage_report` VALUES ('1006', 'daily', '44.0000', null, 'ecu', '2011-10-22 23:59:59', '0', 'company', '1', '1');
INSERT INTO `usage_report` VALUES ('1007', 'daily', '20.0000', null, 'snapshot', '2011-10-22 23:59:59', '0', 'company', '1', '1');
INSERT INTO `usage_report` VALUES ('1008', 'daily', '20.0000', null, 'ecu', '2011-10-23 23:59:59', '0', 'department', '222', '1');
INSERT INTO `usage_report` VALUES ('1009', 'daily', '20.0000', null, 'ecu', '2011-10-23 23:59:59', '0', 'department', '222', '1');
INSERT INTO `usage_report` VALUES ('1010', 'daily', '20.0000', null, 'ecu', '2011-10-23 23:59:59', '0', 'department', '222', '1');
INSERT INTO `usage_report` VALUES ('1011', 'daily', '30.0000', null, 'ecu', '2011-10-23 23:59:59', '0', 'department', '1', '1');
INSERT INTO `usage_report` VALUES ('1012', 'daily', '10.0000', null, 'snapshot', '2011-10-23 23:59:59', '0', 'department', '1', '1');
INSERT INTO `usage_report` VALUES ('1013', 'daily', '44.0000', null, 'ecu', '2011-10-23 23:59:59', '0', 'company', '1', '1');
INSERT INTO `usage_report` VALUES ('1014', 'daily', '20.0000', null, 'snapshot', '2011-10-23 23:59:59', '0', 'company', '1', '1');
INSERT INTO `usage_report` VALUES ('1015', 'daily', '20.0000', null, 'ecu', '2011-10-24 23:59:59', '0', 'department', '222', '1');
INSERT INTO `usage_report` VALUES ('1016', 'daily', '20.0000', null, 'ecu', '2011-10-24 23:59:59', '0', 'department', '222', '1');
INSERT INTO `usage_report` VALUES ('1017', 'daily', '20.0000', null, 'ecu', '2011-10-24 23:59:59', '0', 'department', '222', '1');
INSERT INTO `usage_report` VALUES ('1018', 'daily', '30.0000', null, 'ecu', '2011-10-24 23:59:59', '0', 'department', '1', '1');
INSERT INTO `usage_report` VALUES ('1019', 'daily', '10.0000', null, 'snapshot', '2011-10-24 23:59:59', '0', 'department', '1', '1');
INSERT INTO `usage_report` VALUES ('1020', 'daily', '44.0000', null, 'ecu', '2011-10-24 23:59:59', '0', 'company', '1', '1');
INSERT INTO `usage_report` VALUES ('1021', 'daily', '20.0000', null, 'snapshot', '2011-10-24 23:59:59', '0', 'company', '1', '1');
INSERT INTO `usage_report` VALUES ('1022', 'daily', '20.0000', null, 'ecu', '2011-10-25 23:59:59', '0', 'department', '222', '1');
INSERT INTO `usage_report` VALUES ('1023', 'daily', '20.0000', null, 'ecu', '2011-10-25 23:59:59', '0', 'department', '222', '1');
INSERT INTO `usage_report` VALUES ('1024', 'daily', '20.0000', null, 'ecu', '2011-10-25 23:59:59', '0', 'department', '222', '1');
INSERT INTO `usage_report` VALUES ('1025', 'daily', '30.0000', null, 'ecu', '2011-10-25 23:59:59', '0', 'department', '1', '1');
INSERT INTO `usage_report` VALUES ('1026', 'daily', '10.0000', null, 'snapshot', '2011-10-25 23:59:59', '0', 'department', '1', '1');
INSERT INTO `usage_report` VALUES ('1027', 'daily', '44.0000', null, 'ecu', '2011-10-25 23:59:59', '0', 'company', '1', '1');
INSERT INTO `usage_report` VALUES ('1028', 'daily', '20.0000', null, 'snapshot', '2011-10-25 23:59:59', '0', 'company', '1', '1');
INSERT INTO `usage_report` VALUES ('1029', 'daily', '20.0000', null, 'ecu', '2011-10-26 23:59:59', '0', 'department', '222', '1');
INSERT INTO `usage_report` VALUES ('1030', 'daily', '20.0000', null, 'ecu', '2011-10-26 23:59:59', '0', 'department', '222', '1');
INSERT INTO `usage_report` VALUES ('1031', 'daily', '20.0000', null, 'ecu', '2011-10-26 23:59:59', '0', 'department', '222', '1');
INSERT INTO `usage_report` VALUES ('1032', 'daily', '30.0000', null, 'ecu', '2011-10-26 23:59:59', '0', 'department', '1', '1');
INSERT INTO `usage_report` VALUES ('1033', 'daily', '10.0000', null, 'snapshot', '2011-10-26 23:59:59', '0', 'department', '1', '1');
INSERT INTO `usage_report` VALUES ('1034', 'daily', '44.0000', null, 'ecu', '2011-10-26 23:59:59', '0', 'company', '1', '1');
INSERT INTO `usage_report` VALUES ('1035', 'daily', '20.0000', null, 'snapshot', '2011-10-26 23:59:59', '0', 'company', '1', '1');
INSERT INTO `usage_report` VALUES ('1036', 'daily', '20.0000', null, 'ecu', '2011-10-27 23:59:59', '0', 'department', '222', '1');
INSERT INTO `usage_report` VALUES ('1037', 'daily', '20.0000', null, 'ecu', '2011-10-27 23:59:59', '0', 'department', '222', '1');
INSERT INTO `usage_report` VALUES ('1038', 'daily', '20.0000', null, 'ecu', '2011-10-27 23:59:59', '0', 'department', '222', '1');
INSERT INTO `usage_report` VALUES ('1039', 'daily', '30.0000', null, 'ecu', '2011-10-27 23:59:59', '0', 'department', '1', '1');
INSERT INTO `usage_report` VALUES ('1040', 'daily', '10.0000', null, 'snapshot', '2011-10-27 23:59:59', '0', 'department', '1', '1');
INSERT INTO `usage_report` VALUES ('1041', 'daily', '44.0000', null, 'ecu', '2011-10-27 23:59:59', '0', 'company', '1', '1');
INSERT INTO `usage_report` VALUES ('1042', 'daily', '20.0000', null, 'snapshot', '2011-10-27 23:59:59', '0', 'company', '1', '1');
INSERT INTO `usage_report` VALUES ('1043', 'monthly', '1200.0000', '1200.0000', 'traffic', '2011-12-02 10:33:53', '0', 'company', '1', '1');
INSERT INTO `usage_report` VALUES ('1044', 'monthly', '30.0000', '30.0000', 'traffic', '2011-12-02 14:41:52', '0', 'company', '1', '1');
INSERT INTO `usage_report` VALUES ('1045', 'monthly', '10.0000', '1.0000', 'traffic', '2011-12-02 14:53:50', '0', 'company', '1', '1');

-- ----------------------------
-- Table structure for `usage_report_calculate_logs`
-- ----------------------------
DROP TABLE IF EXISTS `usage_report_calculate_logs`;
CREATE TABLE `usage_report_calculate_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `billing_cycle_starttime` datetime DEFAULT NULL,
  `billing_cycle_endtime` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `xenfile` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usage_report_calculate_logs
-- ----------------------------
INSERT INTO `usage_report_calculate_logs` VALUES ('10', '2011-09-01 00:00:00', '2011-09-30 23:59:59', '2011-09-27 13:46:25', null);
INSERT INTO `usage_report_calculate_logs` VALUES ('3', '2011-09-26 12:00:00', '2011-09-26 12:30:00', '2011-09-26 16:22:51', 'billing_1317009600000_1317011400000_1_468.gz');
INSERT INTO `usage_report_calculate_logs` VALUES ('4', '2011-09-30 21:00:00', '2011-09-30 21:30:00', '2011-09-26 17:09:15', 'billing_1317387600000_1317389400000_1_622.gz');
INSERT INTO `usage_report_calculate_logs` VALUES ('5', '2011-09-30 20:30:00', '2011-09-30 21:00:00', '2011-09-26 17:37:27', 'billing_1317385800000_1317387600000_1_373.gz');
INSERT INTO `usage_report_calculate_logs` VALUES ('6', '2011-09-30 21:00:00', '2011-09-30 21:30:00', '2011-09-26 17:37:27', 'billing_1317387600000_1317389400000_1_837.gz');
INSERT INTO `usage_report_calculate_logs` VALUES ('11', '2011-09-27 00:00:00', '2011-09-27 23:59:59', '2011-09-27 13:46:25', null);
INSERT INTO `usage_report_calculate_logs` VALUES ('8', '2011-09-27 12:00:00', '2011-09-27 12:30:00', '2011-09-27 13:05:43', 'billing_1317096000000_1317097800000_1_116.gz');
INSERT INTO `usage_report_calculate_logs` VALUES ('9', '2011-09-27 12:00:00', '2011-09-27 12:30:00', '2011-09-27 13:05:43', 'billing_1317096000000_1317097800000_1_414.gz');
INSERT INTO `usage_report_calculate_logs` VALUES ('12', '2011-09-28 00:00:00', '2011-09-28 23:59:59', '2011-09-28 11:14:55', null);
INSERT INTO `usage_report_calculate_logs` VALUES ('14', '2011-09-28 10:30:00', '2011-09-28 11:00:00', '2011-09-28 14:19:44', 'billing_1317177000000_1317178800000_1_910.gz');
INSERT INTO `usage_report_calculate_logs` VALUES ('15', '2011-10-21 00:00:00', '2011-10-21 23:59:59', '2011-10-21 11:31:16', null);
INSERT INTO `usage_report_calculate_logs` VALUES ('16', '2011-10-01 00:00:00', '2011-10-31 23:59:59', '2011-10-21 11:31:16', null);
INSERT INTO `usage_report_calculate_logs` VALUES ('17', '2011-10-21 08:00:00', '2011-10-21 08:30:00', '2011-10-21 11:31:17', 'billing_1319155200000_1319157000000_1_642.gz');
INSERT INTO `usage_report_calculate_logs` VALUES ('18', '2011-10-20 22:30:00', '2011-10-20 23:00:00', '2011-10-21 11:31:18', 'billing_1319121000000_1319122800000_1_127.gz');
INSERT INTO `usage_report_calculate_logs` VALUES ('19', '2011-10-21 05:00:00', '2011-10-21 05:30:00', '2011-10-21 11:31:18', 'billing_1319144400000_1319146200000_1_630.gz');
INSERT INTO `usage_report_calculate_logs` VALUES ('20', '2011-09-28 14:30:00', '2011-09-28 15:00:00', '2011-10-21 11:31:18', 'billing_1317191400000_1317193200000_1_769.gz');
INSERT INTO `usage_report_calculate_logs` VALUES ('21', '2011-10-20 21:00:00', '2011-10-20 21:30:00', '2011-10-21 11:31:18', 'billing_1319115600000_1319117400000_1_831.gz');
INSERT INTO `usage_report_calculate_logs` VALUES ('22', '2011-09-28 14:30:00', '2011-09-28 15:00:00', '2011-10-21 11:31:18', 'billing_1317191400000_1317193200000_1_403.gz');
INSERT INTO `usage_report_calculate_logs` VALUES ('23', '2011-10-21 05:30:00', '2011-10-21 06:00:00', '2011-10-21 11:31:19', 'billing_1319146200000_1319148000000_1_975.gz');
INSERT INTO `usage_report_calculate_logs` VALUES ('24', '2011-10-21 00:00:00', '2011-10-21 00:30:00', '2011-10-21 11:31:19', 'billing_1319126400000_1319128200000_1_44.gz');
INSERT INTO `usage_report_calculate_logs` VALUES ('25', '2011-10-20 18:00:00', '2011-10-20 18:30:00', '2011-10-21 11:31:19', 'billing_1319104800000_1319106600000_1_907.gz');
INSERT INTO `usage_report_calculate_logs` VALUES ('26', '2011-10-20 20:30:00', '2011-10-20 21:00:00', '2011-10-21 11:31:19', 'billing_1319113800000_1319115600000_1_740.gz');
INSERT INTO `usage_report_calculate_logs` VALUES ('27', '2011-10-21 10:00:00', '2011-10-21 10:30:00', '2011-10-21 11:31:20', 'billing_1319162400000_1319164200000_1_716.gz');
INSERT INTO `usage_report_calculate_logs` VALUES ('28', '2011-10-20 19:00:00', '2011-10-20 19:30:00', '2011-10-21 11:31:20', 'billing_1319108400000_1319110200000_1_97.gz');
INSERT INTO `usage_report_calculate_logs` VALUES ('29', '2011-10-20 23:30:00', '2011-10-21 00:00:00', '2011-10-21 11:31:20', 'billing_1319124600000_1319126400000_1_360.gz');
INSERT INTO `usage_report_calculate_logs` VALUES ('30', '2011-10-21 02:00:00', '2011-10-21 02:30:00', '2011-10-21 11:31:21', 'billing_1319133600000_1319135400000_1_333.gz');
INSERT INTO `usage_report_calculate_logs` VALUES ('31', '2011-10-21 02:30:00', '2011-10-21 03:00:00', '2011-10-21 11:31:21', 'billing_1319135400000_1319137200000_1_326.gz');
INSERT INTO `usage_report_calculate_logs` VALUES ('32', '2011-10-21 00:30:00', '2011-10-21 01:00:00', '2011-10-21 11:31:21', 'billing_1319128200000_1319130000000_1_251.gz');
INSERT INTO `usage_report_calculate_logs` VALUES ('33', '2011-10-20 22:00:00', '2011-10-20 22:30:00', '2011-10-21 11:31:21', 'billing_1319119200000_1319121000000_1_643.gz');
INSERT INTO `usage_report_calculate_logs` VALUES ('34', '2011-10-20 23:00:00', '2011-10-20 23:30:00', '2011-10-21 11:31:21', 'billing_1319122800000_1319124600000_1_539.gz');
INSERT INTO `usage_report_calculate_logs` VALUES ('35', '2011-10-21 10:30:00', '2011-10-21 11:00:00', '2011-10-21 11:31:21', 'billing_1319164200000_1319166000000_1_499.gz');
INSERT INTO `usage_report_calculate_logs` VALUES ('36', '2011-10-21 07:00:00', '2011-10-21 07:30:00', '2011-10-21 11:31:22', 'billing_1319151600000_1319153400000_1_215.gz');
INSERT INTO `usage_report_calculate_logs` VALUES ('37', '2011-10-19 17:00:00', '2011-10-19 17:30:00', '2011-10-21 11:31:23', 'billing_1319014800000_1319016600000_1_135.gz');
INSERT INTO `usage_report_calculate_logs` VALUES ('38', '2011-10-21 09:30:00', '2011-10-21 10:00:00', '2011-10-21 11:31:23', 'billing_1319160600000_1319162400000_1_1.gz');
INSERT INTO `usage_report_calculate_logs` VALUES ('39', '2011-10-21 04:30:00', '2011-10-21 05:00:00', '2011-10-21 11:31:23', 'billing_1319142600000_1319144400000_1_182.gz');
INSERT INTO `usage_report_calculate_logs` VALUES ('40', '2011-10-20 16:30:00', '2011-10-20 17:00:00', '2011-10-21 11:31:23', 'billing_1319099400000_1319101200000_1_794.gz');
INSERT INTO `usage_report_calculate_logs` VALUES ('41', '2011-10-20 20:00:00', '2011-10-20 20:30:00', '2011-10-21 11:31:23', 'billing_1319112000000_1319113800000_1_376.gz');
INSERT INTO `usage_report_calculate_logs` VALUES ('42', '2011-10-21 01:00:00', '2011-10-21 01:30:00', '2011-10-21 11:31:23', 'billing_1319130000000_1319131800000_1_866.gz');
INSERT INTO `usage_report_calculate_logs` VALUES ('43', '2011-10-20 16:00:00', '2011-10-20 16:30:00', '2011-10-21 11:31:23', 'billing_1319097600000_1319099400000_1_984.gz');
INSERT INTO `usage_report_calculate_logs` VALUES ('44', '2011-10-21 08:30:00', '2011-10-21 09:00:00', '2011-10-21 11:31:24', 'billing_1319157000000_1319158800000_1_528.gz');
INSERT INTO `usage_report_calculate_logs` VALUES ('45', '2011-10-21 03:30:00', '2011-10-21 04:00:00', '2011-10-21 11:31:24', 'billing_1319139000000_1319140800000_1_788.gz');
INSERT INTO `usage_report_calculate_logs` VALUES ('46', '2011-10-21 01:30:00', '2011-10-21 02:00:00', '2011-10-21 11:31:25', 'billing_1319131800000_1319133600000_1_743.gz');
INSERT INTO `usage_report_calculate_logs` VALUES ('47', '2011-09-28 14:00:00', '2011-09-28 14:30:00', '2011-10-21 11:31:25', 'billing_1317189600000_1317191400000_1_647.gz');
INSERT INTO `usage_report_calculate_logs` VALUES ('48', '2011-10-21 04:00:00', '2011-10-21 04:30:00', '2011-10-21 11:31:25', 'billing_1319140800000_1319142600000_1_828.gz');
INSERT INTO `usage_report_calculate_logs` VALUES ('49', '2011-10-20 17:00:00', '2011-10-20 17:30:00', '2011-10-21 11:31:25', 'billing_1319101200000_1319103000000_1_52.gz');
INSERT INTO `usage_report_calculate_logs` VALUES ('50', '2011-10-20 18:30:00', '2011-10-20 19:00:00', '2011-10-21 11:31:25', 'billing_1319106600000_1319108400000_1_456.gz');
INSERT INTO `usage_report_calculate_logs` VALUES ('51', '2011-10-21 06:00:00', '2011-10-21 06:30:00', '2011-10-21 11:31:26', 'billing_1319148000000_1319149800000_1_885.gz');
INSERT INTO `usage_report_calculate_logs` VALUES ('52', '2011-10-20 17:30:00', '2011-10-20 18:00:00', '2011-10-21 11:31:26', 'billing_1319103000000_1319104800000_1_96.gz');
INSERT INTO `usage_report_calculate_logs` VALUES ('53', '2011-10-21 03:00:00', '2011-10-21 03:30:00', '2011-10-21 11:31:26', 'billing_1319137200000_1319139000000_1_172.gz');
INSERT INTO `usage_report_calculate_logs` VALUES ('54', '2011-10-21 07:30:00', '2011-10-21 08:00:00', '2011-10-21 11:31:26', 'billing_1319153400000_1319155200000_1_451.gz');
INSERT INTO `usage_report_calculate_logs` VALUES ('55', '2011-10-20 21:30:00', '2011-10-20 22:00:00', '2011-10-21 11:31:27', 'billing_1319117400000_1319119200000_1_965.gz');
INSERT INTO `usage_report_calculate_logs` VALUES ('56', '2011-10-21 09:00:00', '2011-10-21 09:30:00', '2011-10-21 11:31:27', 'billing_1319158800000_1319160600000_1_764.gz');
INSERT INTO `usage_report_calculate_logs` VALUES ('57', '2011-10-21 06:30:00', '2011-10-21 07:00:00', '2011-10-21 11:31:27', 'billing_1319149800000_1319151600000_1_626.gz');
INSERT INTO `usage_report_calculate_logs` VALUES ('58', '2011-10-20 19:30:00', '2011-10-20 20:00:00', '2011-10-21 11:31:27', 'billing_1319110200000_1319112000000_1_543.gz');
INSERT INTO `usage_report_calculate_logs` VALUES ('59', '2011-10-21 11:00:00', '2011-10-21 11:30:00', '2011-10-21 11:41:30', 'billing_1319166000000_1319167800000_1_960.gz');
INSERT INTO `usage_report_calculate_logs` VALUES ('60', '2011-10-21 12:30:00', '2011-10-21 13:00:00', '2011-10-21 13:05:07', 'billing_1319171400000_1319173200000_1_108.gz');
INSERT INTO `usage_report_calculate_logs` VALUES ('61', '2011-10-21 12:00:00', '2011-10-21 12:30:00', '2011-10-21 13:05:07', 'billing_1319169600000_1319171400000_1_341.gz');
INSERT INTO `usage_report_calculate_logs` VALUES ('62', '2011-10-21 11:30:00', '2011-10-21 12:00:00', '2011-10-21 13:05:08', 'billing_1319167800000_1319169600000_1_553.gz');
INSERT INTO `usage_report_calculate_logs` VALUES ('63', '2011-10-21 13:00:00', '2011-10-21 13:30:00', '2011-10-21 13:35:06', 'billing_1319173200000_1319175000000_1_677.gz');
INSERT INTO `usage_report_calculate_logs` VALUES ('64', '2011-10-21 13:30:00', '2011-10-21 14:00:00', '2011-10-21 14:05:07', 'billing_1319175000000_1319176800000_1_18.gz');
INSERT INTO `usage_report_calculate_logs` VALUES ('65', '2011-10-21 14:00:00', '2011-10-21 14:30:00', '2011-10-21 14:35:07', 'billing_1319176800000_1319178600000_1_845.gz');
INSERT INTO `usage_report_calculate_logs` VALUES ('66', '2011-10-22 00:00:00', '2011-10-22 23:59:59', '2011-10-22 00:00:07', null);
INSERT INTO `usage_report_calculate_logs` VALUES ('67', '2011-10-23 00:00:00', '2011-10-23 23:59:59', '2011-10-23 00:00:06', null);
INSERT INTO `usage_report_calculate_logs` VALUES ('68', '2011-10-24 00:00:00', '2011-10-24 23:59:59', '2011-10-24 00:00:07', null);
INSERT INTO `usage_report_calculate_logs` VALUES ('69', '2011-10-25 00:00:00', '2011-10-25 23:59:59', '2011-10-25 00:00:06', null);
INSERT INTO `usage_report_calculate_logs` VALUES ('70', '2011-10-26 00:00:00', '2011-10-26 23:59:59', '2011-10-26 00:00:07', null);
INSERT INTO `usage_report_calculate_logs` VALUES ('71', '2011-10-27 00:00:00', '2011-10-27 23:59:59', '2011-10-27 00:00:06', null);

-- ----------------------------
-- Table structure for `vmoney_accounts`
-- ----------------------------
DROP TABLE IF EXISTS `vmoney_accounts`;
CREATE TABLE `vmoney_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `balance` float(15,3) DEFAULT NULL COMMENT 'å¸æˆ·ä½™é¢',
  `parent` int(11) DEFAULT '0' COMMENT 'çˆ¶å¸æˆ·',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=288 DEFAULT CHARSET=utf8 COMMENT='è™šæ‹Ÿå¸å¸æˆ·';

-- ----------------------------
-- Records of vmoney_accounts
-- ----------------------------
INSERT INTO `vmoney_accounts` VALUES ('1', 'china-ops\'s account', '-1222218496.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('4', 'yanglijun', '-308.000', '1');
INSERT INTO `vmoney_accounts` VALUES ('9', 't2', '1.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('10', 'as', '100.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('11', 'elb', '100.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('12', 'asdf', '0.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('13', '111', '111.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('25', 'åŒ—äº¬äºšåº·åœ¨çº¿è½', '80.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('27', 'b', '1000.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('39', 'tom@com.cn', '100.000', '130');
INSERT INTO `vmoney_accounts` VALUES ('130', 'tom', '2000.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('155', 'ceshi', '1000.000', '1');
INSERT INTO `vmoney_accounts` VALUES ('175', 'tomhat', '100.000', '130');
INSERT INTO `vmoney_accounts` VALUES ('181', 'ä¸­åœ‹è¯é€š', '12345678.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('185', 'è§†é¢‘æµ‹è¯•', '10000.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('202', 'abc', '1000.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('203', 'aabb', '1000.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('208', 'XiangMuBu', '1000.000', '1');
INSERT INTO `vmoney_accounts` VALUES ('209', '测试', '10000.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('210', '易通明锐（试用3小时）', '10000.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('211', '演示', '10000.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('212', 'admin', '10000.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('213', '演示', '10000.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('214', '演示演示', '10000.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('215', '1', '10000.000', '214');
INSERT INTO `vmoney_accounts` VALUES ('216', '2', '10000.000', '214');
INSERT INTO `vmoney_accounts` VALUES ('217', '红会测试2', '11.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('218', '1', '1.000', '217');
INSERT INTO `vmoney_accounts` VALUES ('219', '红会测试3', '10000.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('220', 'cc', '1.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('221', '王田田测试', '111.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('222', '孙云鹏测试', '0.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('223', '孙云鹏测试专享云开启部门', '1.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('224', 'liuyajuan2', '22233.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('225', '12', '1000.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('226', '232', '1212.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('227', '111', '1212.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('228', '测试公司--专享云', '1212.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('229', '专享云', '1212.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('230', '专', '12121.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('231', '共', '12121.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('232', '阿萨德', '1.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('233', '专享云测试未开启部门', '1.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('234', '专享云测试开启部门', '2.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('235', '专享云测试开启部门', '2.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('236', 'ceshi1', '134.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('237', 'ceshi1', '134.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('238', 'ceshi1', '134.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('239', 'ceshi1', '333.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('240', 'ceshi2', '222.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('241', '专享云测试开启部门-4', '10.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('242', '共享云测试未开启部门', '12.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('243', '共享云测试未开启部门-71', '11.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('244', '111', '11.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('245', '专享云', '11111.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('246', 'test for 共享云(未开启部门)', '2333333248.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('247', '33', '333.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('248', '开启部门共享云-5', '1.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('249', '专享云未开启部门——-8', '1.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('250', '专享云开启部门-9', '121221.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('251', '韩双测试公司', '1.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('252', '周慧敏测试（共享云-未开启部门）', '12.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('253', '运维测试', '1111.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('254', '周慧敏测试（专享云未开启部门）', '2.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('255', 'test for 共享云（开启 部门）', '221221.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('256', '122222222', '1222222208.000', '1');
INSERT INTO `vmoney_accounts` VALUES ('257', 'hh454', '555.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('258', 'xx', '2.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('259', 'test for  专享云（开启部门）', '34.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('260', 'sdfd', '121.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('261', '12', '1000.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('262', '222222233', '333.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('263', 'kkk', '11.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('264', '666', '9999.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('265', '99', '111.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('266', '周慧敏测试（共享云2-未开启部门）', '22.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('267', '88', '99.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('268', 'rt', '145.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('269', 'sdf', '111.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('270', '运维测试2', '10000.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('271', '222255', '11111.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('272', '王田田--专享云', '1111111.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('273', '12', '11111.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('274', '王田田-2 共享云12', '11111.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('275', 'zlq', '1000.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('276', 'zlq', '1000.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('277', '55', '1000.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('278', '王田田--测试资源', '111.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('279', '共享云（开启部门）测试', '771000.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('280', '12', '12.000', '1');
INSERT INTO `vmoney_accounts` VALUES ('281', '11', '11.000', '1');
INSERT INTO `vmoney_accounts` VALUES ('282', '1', '1.000', '1');
INSERT INTO `vmoney_accounts` VALUES ('283', '周慧敏测试并发', '1.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('284', '周慧敏测试并发', '1111.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('285', '22', '22.000', '1');
INSERT INTO `vmoney_accounts` VALUES ('286', '专享云测试（开启部门）-zouhao', '110.000', '0');
INSERT INTO `vmoney_accounts` VALUES ('287', '共享云测试（开启部门）-zouhao', '11111111.000', '0');

-- ----------------------------
-- Table structure for `volume_operation_logs`
-- ----------------------------
DROP TABLE IF EXISTS `volume_operation_logs`;
CREATE TABLE `volume_operation_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `volume_id` int(11) DEFAULT NULL COMMENT 'å…ƒæ•°æ®å·è¡¨ä¸­çš„id',
  `volume_sid` varchar(30) DEFAULT NULL COMMENT 'å·åœ¨äº‘é‡Œçš„ID,å­—ç¬¦ä¸²',
  `operation` enum('add','delete') DEFAULT NULL COMMENT 'å¯¹å·çš„æ“ä½œ',
  `volume_size` int(11) DEFAULT NULL COMMENT 'æœ¬æ¬¡æ“ä½œå·çš„å¤§å°',
  `department_id` int(11) DEFAULT NULL COMMENT 'æ‰€å±žéƒ¨é—¨ID',
  `company_id` int(11) DEFAULT NULL COMMENT 'æ‰€å±žå…¬å¸ID',
  `total_size_of_department` int(11) DEFAULT NULL COMMENT 'éƒ¨é—¨å·çš„æ€»å¤§å°',
  `total_size_of_company` int(11) DEFAULT NULL COMMENT 'å…¬å¸å·çš„æ€»å¤§å°',
  `region_id` int(11) DEFAULT NULL,
  `operation_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1991 DEFAULT CHARSET=utf8 COMMENT='å·çš„æ“ä½œæ—¥å¿—è¡¨ï¼Œè®°å½•å·çš„æ·»åŠ å’Œåˆ é™¤æ“ä½œï¼Œ';

-- ----------------------------
-- Records of volume_operation_logs
-- ----------------------------
