/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : ecloud_auth

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2014-09-19 18:17:24
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `company`
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MARK` varchar(100) DEFAULT NULL,
  `STATUS` char(2) DEFAULT '2' COMMENT '状态：-1:关闭 0:试用 1:启用 2:审核中 3:暂关',
  `NAME` varchar(200) DEFAULT NULL,
  `CONTACT` varchar(20) DEFAULT NULL,
  `ADDRESS` varchar(500) DEFAULT NULL,
  `CREATETIME` datetime DEFAULT NULL,
  `enable_dynamic_password_card` int(11) NOT NULL DEFAULT '0' COMMENT '是否启用动态密码卡， 0：不启用;1：启用。',
  `IsFirstLogin` int(11) NOT NULL DEFAULT '1' COMMENT '是否是第一次登陆，1：第一次登陆，0：不是第一次登陆',
  `contact_person` varchar(50) DEFAULT NULL COMMENT '联系人',
  `contact_cell_phone` varchar(50) DEFAULT NULL COMMENT '联系手机',
  `contact_phone` varchar(50) DEFAULT NULL COMMENT '联系电话',
  `contact_email` varchar(50) DEFAULT NULL COMMENT '联系邮箱',
  `domain_name` varchar(50) DEFAULT NULL COMMENT '代理商域名',
  `logo_img` varchar(100) DEFAULT NULL COMMENT '代理商logo',
  `footer` varchar(200) DEFAULT NULL COMMENT '代理商页脚',
  `IsOpenDept` int(11) DEFAULT '0' COMMENT '是否开启部门：1:开启部门，0:不开启部门。',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=329 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES ('323', null, '1', 'zlq', null, 'zlq', '2014-04-01 17:09:10', '0', '0', 'zlq', '111', '111', null, null, null, null, '0');
INSERT INTO `company` VALUES ('280', null, '1', 'sdddddddddddddddddddddddddddddddddddddddddddddddddddddd dddddddddddddddddddddddddddddddddd', null, '1221111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111', '2014-03-11 10:19:47', '0', '0', '12211111111121111111111111111111111111111111111111', '12122222222', '121', null, null, null, null, '0');
INSERT INTO `company` VALUES ('281', null, '1', 'test for 共享云(未开启部门)', null, 'test for 共享云', '2014-03-11 11:29:30', '0', '0', 'Chris zou', '12221122', '12221122', null, null, null, null, '0');
INSERT INTO `company` VALUES ('328', null, '1', '共享云测试（开启部门）-zouhao', null, 'null', '2014-04-15 15:41:38', '0', '0', 'zouhao', '111', '12', null, null, null, null, '1');
INSERT INTO `company` VALUES ('271', null, '-1', '测试共享（未开启部门）', null, 'ceshi1', '2014-04-15 15:47:21', '0', '0', 'ceshi1', '11', '111', null, null, null, null, '0');
INSERT INTO `company` VALUES ('287', null, '1', '开启部门共享云-5', null, 'asdasd', '2014-03-11 14:01:55', '0', '0', 'asda', '12', '121', null, null, null, null, '1');
INSERT INTO `company` VALUES ('288', null, '1', '专享云未开启部门——-8', null, '海淀', '2014-03-25 14:55:33', '0', '0', 'coco', '11', '111', null, null, null, null, '0');
INSERT INTO `company` VALUES ('274', null, '1', '共享云测试未开启部门-71', null, '海淀', '2014-03-21 15:25:48', '0', '0', '罗肃', '12', '21', null, null, null, null, '0');
INSERT INTO `company` VALUES ('275', null, '-1', '12共享云', null, '121', '2014-04-02 10:29:44', '0', '0', '21', '12', '12', null, null, null, null, '0');
INSERT INTO `company` VALUES ('276', null, '1', '专享云未开启部门', null, '12', '2014-03-21 11:45:31', '0', '0', '121', '212', '12', null, null, null, null, '0');
INSERT INTO `company` VALUES ('289', null, '1', '专享云开启部门-9', null, '海淀', '2014-03-20 11:32:02', '0', '0', '阿萨德', '111', '11', null, null, null, null, '1');
INSERT INTO `company` VALUES ('326', null, '1', '周慧敏测试并发', null, '周慧敏测试并发', '2014-04-11 10:51:37', '0', '0', 'zhm', '134223333', '1353333', null, null, null, null, '0');
INSERT INTO `company` VALUES ('292', null, '0', '桌面云内测项目', null, '韩双测试公司', '2014-04-11 10:37:16', '0', '0', '韩双', '12347658921', '13716472216', null, null, null, null, '0');
INSERT INTO `company` VALUES ('285', null, '-1', 'jjjj', null, 'jjsjd', '2014-04-01 11:31:55', '0', '1', 'sl -1', '00000000000', '00000000000', null, null, null, null, '0');
INSERT INTO `company` VALUES ('325', null, '1', '共享云（开启部门）测试', null, '天天', '2014-04-04 11:27:53', '0', '0', 'Chris Zou', '222', '3333', null, null, null, null, '1');
INSERT INTO `company` VALUES ('293', null, '1', '周慧敏测试（共享云-未开启部门）', null, '周慧敏测试', '2014-03-13 11:11:56', '0', '0', '周慧敏', '18828282828', '828288282', null, null, null, null, '0');
INSERT INTO `company` VALUES ('294', null, '1', '运维测试', null, '1213', '2014-03-13 10:40:57', '0', '0', '123', '123', '123', null, null, null, null, '0');
INSERT INTO `company` VALUES ('295', null, '1', '周慧敏测试（专享云未开启部门）--勿操作', null, '测试的', '2014-03-21 11:34:30', '0', '0', '周慧敏', '1111111', '11111111111', null, null, null, null, '0');
INSERT INTO `company` VALUES ('296', null, '1', 'test for 共享云（开启 部门）', null, 'null null', '2014-03-25 10:28:07', '0', '0', 'Chris Zou', '111111111', '111111111', null, null, null, null, '1');
INSERT INTO `company` VALUES ('299', null, '1', 'test for  专享云（开启部门）', null, 'test for  专享云（开启部门）', '2014-03-21 15:49:51', '0', '0', 'qiye', '11', '11111111111', null, null, null, null, '1');
INSERT INTO `company` VALUES ('307', null, '1', '周慧敏测试（共享云2-未开启部门）', null, '周慧敏测试（共享云-未开启部门）', '2014-03-26 10:32:35', '0', '0', '周慧敏', '11111111111', '11111111111', null, null, null, null, '0');
INSERT INTO `company` VALUES ('321', null, '-1', '55', null, '55', '2014-04-14 16:10:51', '0', '0', '55', '55', '55', null, null, null, null, '0');
INSERT INTO `company` VALUES ('313', null, '-1', 'rt', null, 'rt', '2014-04-14 16:08:46', '0', '0', 'rt', '11', '11', null, null, null, null, '0');
INSERT INTO `company` VALUES ('314', null, '1', 'sdf', null, 'sd', '2014-03-31 10:40:46', '0', '0', 'we', '11111', '1111111', null, null, null, null, '1');
INSERT INTO `company` VALUES ('315', null, '1', '运维测试2', null, '12', '2014-03-31 16:32:03', '0', '0', '12', '12', '12', null, null, null, null, '0');
INSERT INTO `company` VALUES ('327', null, '1', '专享云测试（开启部门）-zouhao', null, 'haidian', '2014-04-14 16:03:13', '0', '0', 'zouhao', '123', '123', null, null, null, null, '1');
INSERT INTO `company` VALUES ('324', null, '1', '王田田--测试资源', null, '12', '2014-04-02 09:49:09', '0', '0', '121', '121', '12', null, null, null, null, '1');

-- ----------------------------
-- Table structure for `company_dynamic_password_cards`
-- ----------------------------
DROP TABLE IF EXISTS `company_dynamic_password_cards`;
CREATE TABLE `company_dynamic_password_cards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `card_id` int(11) NOT NULL,
  `active` int(11) DEFAULT '0' COMMENT '是否激活，0：未激活；1：已激活',
  `fee_card` int(11) DEFAULT '0' COMMENT '是否是帐务卡,0:不是;1:是;',
  `user_id` int(11) DEFAULT NULL COMMENT '绑定用户，当密码卡为非帐务卡时，即为登录卡，登录卡要与用户绑定，此字体保存绑定用户的ID',
  `company_id` int(11) DEFAULT NULL,
  `activetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=152 DEFAULT CHARSET=utf8 COMMENT='公司动态密码卡对应表';

-- ----------------------------
-- Records of company_dynamic_password_cards
-- ----------------------------
INSERT INTO `company_dynamic_password_cards` VALUES ('149', '141', '1', '0', '491', '292', '2014-03-12 15:26:00');
INSERT INTO `company_dynamic_password_cards` VALUES ('151', '145', '1', '0', '0', '296', '2014-03-25 09:39:47');

-- ----------------------------
-- Table structure for `dept`
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(256) NOT NULL,
  `SYSTIME` datetime NOT NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=380 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES ('285', '互联港湾', '2013-01-28 17:48:21', '225');
INSERT INTO `dept` VALUES ('224', 'yakang', '2012-08-31 15:15:17', '175');
INSERT INTO `dept` VALUES ('226', '仲弘时代', '2012-10-01 11:40:09', '175');
INSERT INTO `dept` VALUES ('286', '易通明锐', '2013-03-27 14:51:44', '226');
INSERT INTO `dept` VALUES ('287', '1', '2013-04-11 11:36:17', '229');
INSERT INTO `dept` VALUES ('288', '2', '2013-04-11 13:30:44', '229');
INSERT INTO `dept` VALUES ('303', '1', '2013-12-25 01:02:01', '246');
INSERT INTO `dept` VALUES ('292', 'cb', '2013-07-31 17:58:03', '232');
INSERT INTO `dept` VALUES ('326', '2q13', '2014-02-20 10:58:44', '264');
INSERT INTO `dept` VALUES ('327', 'aaa', '2014-02-26 10:45:37', '264');
INSERT INTO `dept` VALUES ('325', 'ceshi1', '2014-02-19 14:08:18', '264');
INSERT INTO `dept` VALUES ('329', 'bumen1', '2014-03-11 09:49:14', '287');
INSERT INTO `dept` VALUES ('330', 'bumen2', '2014-03-11 10:53:58', '287');
INSERT INTO `dept` VALUES ('331', '部门1', '2014-03-11 14:15:28', '289');
INSERT INTO `dept` VALUES ('332', '部门2', '2014-03-11 14:15:38', '289');
INSERT INTO `dept` VALUES ('348', 'default', '2014-04-01 17:50:09', '296');
INSERT INTO `dept` VALUES ('339', '选择已有账户创建账户', '2014-03-24 10:10:22', '299');
INSERT INTO `dept` VALUES ('342', '全球部1212sdf', '2014-03-28 11:32:50', '311');
INSERT INTO `dept` VALUES ('343', '亚洲部34343sdf', '2014-03-28 11:32:51', '311');
INSERT INTO `dept` VALUES ('344', '全球部1212sdf', '2014-03-28 11:32:54', '311');
INSERT INTO `dept` VALUES ('345', '亚洲部34343sdf', '2014-03-28 11:32:54', '311');
INSERT INTO `dept` VALUES ('346', '全球部1212sdf', '2014-03-28 16:28:21', '313');
INSERT INTO `dept` VALUES ('347', '亚洲部34343sdf', '2014-03-28 16:28:21', '313');
INSERT INTO `dept` VALUES ('349', '测试1', '2014-04-02 09:53:38', '324');
INSERT INTO `dept` VALUES ('350', '测试2', '2014-04-02 09:54:37', '324');
INSERT INTO `dept` VALUES ('351', '测试3', '2014-04-02 09:55:12', '324');
INSERT INTO `dept` VALUES ('354', '选择已有账户', '2014-04-03 15:21:56', '325');
INSERT INTO `dept` VALUES ('369', 'dd', '2014-04-14 09:50:49', '296');
INSERT INTO `dept` VALUES ('371', 'test', '2014-04-14 16:18:32', '327');
INSERT INTO `dept` VALUES ('373', '001', '2014-04-15 15:54:36', '328');
INSERT INTO `dept` VALUES ('376', '002', '2014-04-17 10:32:49', '328');

-- ----------------------------
-- Table structure for `dynamic_password_cards`
-- ----------------------------
DROP TABLE IF EXISTS `dynamic_password_cards`;
CREATE TABLE `dynamic_password_cards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `card_number` varchar(40) NOT NULL,
  `seed` varchar(50) NOT NULL COMMENT '种子',
  `state` int(11) DEFAULT '0' COMMENT '0:未售;1：售出；-1：禁用；-2 锁定 ; 2正常',
  `last_success` int(11) DEFAULT NULL COMMENT '上次成功同步或认证后的返回值',
  `drift` int(11) DEFAULT NULL COMMENT '漂移值，上次成功调用后的返回值',
  `continuous_failure` int(11) DEFAULT '0' COMMENT '连续失败次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `card_number` (`card_number`),
  UNIQUE KEY `card_number_2` (`card_number`)
) ENGINE=MyISAM AUTO_INCREMENT=156 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dynamic_password_cards
-- ----------------------------
INSERT INTO `dynamic_password_cards` VALUES ('138', '2100000075782', 'll7761579A81D96D4EF5EA155EF27AADB7053A33F0FFCDD6F0', '0', '-8', '1394505150', '0');
INSERT INTO `dynamic_password_cards` VALUES ('139', '210000007578', 'll2EB6B82B78B079D5C89BD90070CF70DF0178C13179000B75', '0', '-10', '1395285752', '0');
INSERT INTO `dynamic_password_cards` VALUES ('140', '2100000075785', 'll856DCF91865091D09DA6525E21B9C713D3877A607681B1E0', '1', '0', '0', '0');
INSERT INTO `dynamic_password_cards` VALUES ('141', '2100000075787', 'll9842A23348533753364AF18B900B6C676675400BE72F130D', '1', '-13', '1394689927', '0');
INSERT INTO `dynamic_password_cards` VALUES ('145', '2100000075781', 'll2EB6B82B78B079D5C89BD90070CF70DF0178C13179000B75', '1', '-11', '1395710927', '0');
INSERT INTO `dynamic_password_cards` VALUES ('146', '21', '21', '0', null, null, '0');
INSERT INTO `dynamic_password_cards` VALUES ('147', '22', '22', '0', null, null, '0');
INSERT INTO `dynamic_password_cards` VALUES ('148', '23', '23', '0', null, null, '0');
INSERT INTO `dynamic_password_cards` VALUES ('149', '24', '24', '0', null, null, '0');
INSERT INTO `dynamic_password_cards` VALUES ('150', '25', '25', '0', null, null, '0');
INSERT INTO `dynamic_password_cards` VALUES ('151', '26', '26', '0', null, null, '0');
INSERT INTO `dynamic_password_cards` VALUES ('152', '27', '27', '0', null, null, '0');
INSERT INTO `dynamic_password_cards` VALUES ('153', '2829', '28', '0', null, null, '0');
INSERT INTO `dynamic_password_cards` VALUES ('154', '121212', '12121212', '-1', null, null, '0');
INSERT INTO `dynamic_password_cards` VALUES ('155', '22233', '2233', '1', null, null, '0');

-- ----------------------------
-- Table structure for `employee`
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `ename` varchar(20) DEFAULT NULL,
  `sex` char(2) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee
-- ----------------------------

-- ----------------------------
-- Table structure for `privileges`
-- ----------------------------
DROP TABLE IF EXISTS `privileges`;
CREATE TABLE `privileges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT 'chinese name.',
  `token` varchar(50) NOT NULL COMMENT '权限标识',
  `url` varchar(50) DEFAULT NULL COMMENT '地址',
  `level` enum('module','button') DEFAULT NULL COMMENT '权限级别:module模块级;button按钮级;',
  `group` varchar(20) NOT NULL COMMENT '分组',
  `category` varchar(50) DEFAULT NULL COMMENT '分類',
  `sn` int(11) DEFAULT '0' COMMENT '序号，用来排序的。',
  `tooltip` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token` (`token`)
) ENGINE=MyISAM AUTO_INCREMENT=131 DEFAULT CHARSET=utf8 COMMENT='权限表';

-- ----------------------------
-- Records of privileges
-- ----------------------------
INSERT INTO `privileges` VALUES ('80', '云主机', '/instance', '/instances.htm', 'module', '弹性组', '弹性主机', '3', '预装操作系统的服务器(含CPU、内存和系统分区)');
INSERT INTO `privileges` VALUES ('81', '密钥', '/keypairs', '/keypairs/keypairs.htm', 'module', '网络和安全', '弹性主机', '5', '用于linux服务器ssh登录的公私密钥文件');
INSERT INTO `privileges` VALUES ('82', '网络虚拟防火墙', '/securitygroups', '/securitygroups/securitygroups.htm', 'module', '网络和安全', '弹性主机', '6', '针对云主机客户提供虚拟网络防火墙');
INSERT INTO `privileges` VALUES ('83', '首页', '/index', '/index.htm', 'module', '', '弹性主机', '99', '首页');
INSERT INTO `privileges` VALUES ('84', '公司管理', '/company', '/company.htm', 'module', '公司管理', '弹性主机', '1', '公司管理');
INSERT INTO `privileges` VALUES ('85', '部门管理', '/dept', '/dept.htm', 'module', '部门管理', '弹性主机', '9', '部门管理');
INSERT INTO `privileges` VALUES ('86', '权限管理', '/privilege', '/privileges.htm', 'module', '权限管理', '弹性主机', '10', '权限管理');
INSERT INTO `privileges` VALUES ('87', '角色管理', '/role', '/roles.htm', 'module', '权限管理', '弹性主机', '11', '角色管理');
INSERT INTO `privileges` VALUES ('88', '用户管理', '/user', '/user.htm', 'module', '部门管理', '弹性主机', '12', '用户管理');
INSERT INTO `privileges` VALUES ('89', '存储', '/volume', '/volume.htm', 'module', '弹性组', '弹性主机', '4', '产品为云主机提供存储空间，类似于物理硬盘');
INSERT INTO `privileges` VALUES ('90', '密码卡管理', '/dynamicCard', '/dynamicCard.htm', 'module', '账户管理', '弹性主机', '15', '密码卡管理');
INSERT INTO `privileges` VALUES ('91', 's3', '/bucket', '/bucket.htm', 'module', '云存储', '弹性主机', '0', '云存储 S3');
INSERT INTO `privileges` VALUES ('92', '日志管理', '/userLog', '/userLog.htm', 'module', '信息管理', '弹性主机', '13', '日志管理');
INSERT INTO `privileges` VALUES ('93', '修改密码', '/updateUserPassword', '/updateUserPassword.htm', 'module', '信息管理', '弹性主机', '14', '修改密码');
INSERT INTO `privileges` VALUES ('94', '账户管理', '/account', '/account.htm', 'module', '账户管理', '弹性主机', '16', '账户管理');
INSERT INTO `privileges` VALUES ('95', '快照', '/snapshot', '/snapshot.htm', 'module', '弹性组', '弹性主机', '5', '为云主机的存储提供全盘在线备份，该备份可快速进行存储恢复');
INSERT INTO `privileges` VALUES ('96', '动态密码卡管理', '/dynamicPasswordCard', '/dynamicPasswordCard.htm', 'module', '账户管理', '弹性主机', '17', '新动态密码卡管理');
INSERT INTO `privileges` VALUES ('97', '弹性IP', '/elasticips', '/elasticips.htm', 'module', '网络和安全', '弹性主机', '7', '一个静态的公网IP地址');
INSERT INTO `privileges` VALUES ('98', 'IP分配详情', '/zoneips', '/zoneips.htm', 'module', '集群管理', '弹性主机', '10', 'IP分配详情');
INSERT INTO `privileges` VALUES ('99', '集群组管理', '/zonegroup', '/zonegroup.htm', 'module', '集群管理', '弹性主机', '9', '集群组管理');
INSERT INTO `privileges` VALUES ('100', '云用户管理', '/clouduser', '/clouduser.htm', 'module', '云用户管理', '弹性主机', '6', '云用户管理');
INSERT INTO `privileges` VALUES ('101', '集群管理', '/zone', '/zone.htm', 'module', '集群管理', '弹性主机', '8', '集群管理');
INSERT INTO `privileges` VALUES ('102', '镜像管理', '/machineimage', '/machineimage.htm', 'module', '镜像管理', '弹性主机', '7', '镜像管理');
INSERT INTO `privileges` VALUES ('103', '产品管理', '/products', '/products.htm', 'module', '运营管理', '弹性主机', '2', '新产品管理');
INSERT INTO `privileges` VALUES ('104', '幽灵云主机', '/findghostinstances', '/findghostinstances.htm', 'module', '运营管理', '弹性主机', '3', '幽灵云主机');
INSERT INTO `privileges` VALUES ('105', '控制台', '/dashboard', '/dashboard.htm', 'module', '控制台', '弹性主机', '1', '控制台');
INSERT INTO `privileges` VALUES ('106', '动态密码卡激活统计', '/dynamicCardActive', '/dynamicCardActive.htm', 'module', '账户管理', '弹性主机', '89', '动态密码卡激活统计');
INSERT INTO `privileges` VALUES ('108', '云管理', '/cloudlist', '/cloudlist.htm', 'module', '云用户管理', '弹性主机', '40', '云管理');
INSERT INTO `privileges` VALUES ('109', '资源统计', '/resourcesummation', '/resourcesummation.htm', 'module', '资源统计', '弹性主机', '57', '资源统计');
INSERT INTO `privileges` VALUES ('110', '产品升级公告', '/announcements', '/announcements.htm', 'module', '通知公告管理', '弹性主机', '99', '产品升级公告');
INSERT INTO `privileges` VALUES ('111', '发布公告', '/addAnnouncements', '/addAnnouncements.htm', 'module', '通知公告管理', '弹性主机', '89', '发布公告');
INSERT INTO `privileges` VALUES ('112', '管理员管理', '/adminmanager', '/adminmanager.htm', 'module', '管理员管理', '弹性主机', '1', '管理员管理');
INSERT INTO `privileges` VALUES ('113', '产品升级公告', '/showAnnouncement', '/showAnnouncement.htm', 'module', '网络和安全', '弹性主机', '300', '产品升级公告');
INSERT INTO `privileges` VALUES ('114', '55', '551', '551', 'module', '55', '弹性主机', '55', '55');
INSERT INTO `privileges` VALUES ('115', '55', '331', '33', 'module', '33', '弹性主机', '33', '33');
INSERT INTO `privileges` VALUES ('118', 'S3用户管理', '/s3User', '/s3User.htm', 'module', 'S3', '弹性主机', '1', 'S3用户管理');
INSERT INTO `privileges` VALUES ('119', 'S3管理', '/s3', '/s3.htm', 'module', 'S3', '弹性主机', '2', 'S3管理');
INSERT INTO `privileges` VALUES ('120', 'eclouds3', '/eclouds3', '/eclouds3.htm', 'module', 'S3', '弹性主机', '3', 'eclouds3');
INSERT INTO `privileges` VALUES ('121', 'S3 Search', '/searchFile.htm', '/searchFile', 'module', 'S3', '弹性主机', '5', 'S3 Search');
INSERT INTO `privileges` VALUES ('130', '66', '66', '66', 'module', '66', '弹性主机', '66', '66');

-- ----------------------------
-- Table structure for `revoked_privileges`
-- ----------------------------
DROP TABLE IF EXISTS `revoked_privileges`;
CREATE TABLE `revoked_privileges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `privilege_id` int(11) DEFAULT NULL,
  `signs` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `userid_pid` (`user_id`,`privilege_id`)
) ENGINE=MyISAM AUTO_INCREMENT=230 DEFAULT CHARSET=utf8 COMMENT='用来保存针对某个用户“收回”的权限';

-- ----------------------------
-- Records of revoked_privileges
-- ----------------------------

-- ----------------------------
-- Table structure for `role_privileges`
-- ----------------------------
DROP TABLE IF EXISTS `role_privileges`;
CREATE TABLE `role_privileges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) DEFAULT NULL COMMENT 'english name of a role',
  `privilege_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1277 DEFAULT CHARSET=utf8 COMMENT='角色权限表';

-- ----------------------------
-- Records of role_privileges
-- ----------------------------
INSERT INTO `role_privileges` VALUES ('1205', 'CLAA', '121');
INSERT INTO `role_privileges` VALUES ('1198', 'SystemAdmin', '112');
INSERT INTO `role_privileges` VALUES ('1197', 'SystemAdmin', '103');
INSERT INTO `role_privileges` VALUES ('589', 'user', '40');
INSERT INTO `role_privileges` VALUES ('1100', 'user', '113');
INSERT INTO `role_privileges` VALUES ('588', 'user', '39');
INSERT INTO `role_privileges` VALUES ('587', 'user', '38');
INSERT INTO `role_privileges` VALUES ('1152', 'CompanyAdmin', '105');
INSERT INTO `role_privileges` VALUES ('99', 'dome', '13');
INSERT INTO `role_privileges` VALUES ('586', 'user', '37');
INSERT INTO `role_privileges` VALUES ('585', 'user', '36');
INSERT INTO `role_privileges` VALUES ('584', 'user', '35');
INSERT INTO `role_privileges` VALUES ('1204', 'CLAA', '120');
INSERT INTO `role_privileges` VALUES ('1099', 'user', '97');
INSERT INTO `role_privileges` VALUES ('1098', 'user', '82');
INSERT INTO `role_privileges` VALUES ('497', 'AccountAdmin', '47');
INSERT INTO `role_privileges` VALUES ('1097', 'user', '81');
INSERT INTO `role_privileges` VALUES ('1096', 'user', '95');
INSERT INTO `role_privileges` VALUES ('583', 'user', '34');
INSERT INTO `role_privileges` VALUES ('1095', 'user', '89');
INSERT INTO `role_privileges` VALUES ('1151', 'CompanyAdmin', '93');
INSERT INTO `role_privileges` VALUES ('1196', 'SystemAdmin', '92');
INSERT INTO `role_privileges` VALUES ('1150', 'CompanyAdmin', '92');
INSERT INTO `role_privileges` VALUES ('1149', 'CompanyAdmin', '90');
INSERT INTO `role_privileges` VALUES ('1148', 'CompanyAdmin', '88');
INSERT INTO `role_privileges` VALUES ('1147', 'CompanyAdmin', '85');
INSERT INTO `role_privileges` VALUES ('1146', 'CompanyAdmin', '83');
INSERT INTO `role_privileges` VALUES ('1145', 'CompanyAdmin', '113');
INSERT INTO `role_privileges` VALUES ('1144', 'CompanyAdmin', '97');
INSERT INTO `role_privileges` VALUES ('1143', 'CompanyAdmin', '82');
INSERT INTO `role_privileges` VALUES ('1142', 'CompanyAdmin', '81');
INSERT INTO `role_privileges` VALUES ('1078', 'OperationsAdmin', '110');
INSERT INTO `role_privileges` VALUES ('1077', 'OperationsAdmin', '109');
INSERT INTO `role_privileges` VALUES ('1076', 'OperationsAdmin', '102');
INSERT INTO `role_privileges` VALUES ('1075', 'OperationsAdmin', '108');
INSERT INTO `role_privileges` VALUES ('1074', 'OperationsAdmin', '100');
INSERT INTO `role_privileges` VALUES ('1073', 'OperationsAdmin', '101');
INSERT INTO `role_privileges` VALUES ('1072', 'OperationsAdmin', '99');
INSERT INTO `role_privileges` VALUES ('1141', 'CompanyAdmin', '95');
INSERT INTO `role_privileges` VALUES ('1094', 'user', '80');
INSERT INTO `role_privileges` VALUES ('1071', 'OperationsAdmin', '98');
INSERT INTO `role_privileges` VALUES ('1070', 'OperationsAdmin', '106');
INSERT INTO `role_privileges` VALUES ('1069', 'OperationsAdmin', '96');
INSERT INTO `role_privileges` VALUES ('1068', 'OperationsAdmin', '84');
INSERT INTO `role_privileges` VALUES ('1067', 'OperationsAdmin', '83');
INSERT INTO `role_privileges` VALUES ('1195', 'SystemAdmin', '87');
INSERT INTO `role_privileges` VALUES ('1194', 'SystemAdmin', '86');
INSERT INTO `role_privileges` VALUES ('1193', 'SystemAdmin', '84');
INSERT INTO `role_privileges` VALUES ('1079', 'OperationsAdmin', '111');
INSERT INTO `role_privileges` VALUES ('1140', 'CompanyAdmin', '89');
INSERT INTO `role_privileges` VALUES ('1139', 'CompanyAdmin', '80');
INSERT INTO `role_privileges` VALUES ('1101', 'user', '83');
INSERT INTO `role_privileges` VALUES ('1102', 'user', '105');
INSERT INTO `role_privileges` VALUES ('1203', 'CLAA', '119');
INSERT INTO `role_privileges` VALUES ('1202', 'CLAA', '118');
INSERT INTO `role_privileges` VALUES ('1153', 'CompanyAdmin', '118');
INSERT INTO `role_privileges` VALUES ('1154', 'CompanyAdmin', '119');
INSERT INTO `role_privileges` VALUES ('1201', 'CLAA', '91');
INSERT INTO `role_privileges` VALUES ('1200', 'CLAA', '86');
INSERT INTO `role_privileges` VALUES ('1199', 'CLAA', '83');
INSERT INTO `role_privileges` VALUES ('1192', 'SystemAdmin', '83');
INSERT INTO `role_privileges` VALUES ('1206', 'rose', '112');
INSERT INTO `role_privileges` VALUES ('1265', 'qqqq', '102');
INSERT INTO `role_privileges` VALUES ('1264', 'qqqq', '108');
INSERT INTO `role_privileges` VALUES ('1263', 'qqqq', '100');
INSERT INTO `role_privileges` VALUES ('1262', 'qqqq', '101');
INSERT INTO `role_privileges` VALUES ('1261', 'qqqq', '99');
INSERT INTO `role_privileges` VALUES ('1260', 'qqqq', '98');
INSERT INTO `role_privileges` VALUES ('1259', 'qqqq', '93');
INSERT INTO `role_privileges` VALUES ('1258', 'qqqq', '92');
INSERT INTO `role_privileges` VALUES ('1257', 'qqqq', '91');
INSERT INTO `role_privileges` VALUES ('1256', 'qqqq', '106');
INSERT INTO `role_privileges` VALUES ('1255', 'qqqq', '96');
INSERT INTO `role_privileges` VALUES ('1254', 'qqqq', '94');
INSERT INTO `role_privileges` VALUES ('1253', 'qqqq', '90');
INSERT INTO `role_privileges` VALUES ('1252', 'qqqq', '87');
INSERT INTO `role_privileges` VALUES ('1251', 'qqqq', '86');
INSERT INTO `role_privileges` VALUES ('1250', 'qqqq', '88');
INSERT INTO `role_privileges` VALUES ('1249', 'qqqq', '85');
INSERT INTO `role_privileges` VALUES ('1248', 'qqqq', '84');
INSERT INTO `role_privileges` VALUES ('1247', 'qqqq', '113');
INSERT INTO `role_privileges` VALUES ('1246', 'qqqq', '97');
INSERT INTO `role_privileges` VALUES ('1245', 'qqqq', '82');
INSERT INTO `role_privileges` VALUES ('1244', 'qqqq', '81');
INSERT INTO `role_privileges` VALUES ('1243', 'qqqq', '95');
INSERT INTO `role_privileges` VALUES ('1242', 'qqqq', '89');
INSERT INTO `role_privileges` VALUES ('1241', 'qqqq', '80');
INSERT INTO `role_privileges` VALUES ('1266', 'qqqq', '103');
INSERT INTO `role_privileges` VALUES ('1267', 'qqqq', '104');
INSERT INTO `role_privileges` VALUES ('1268', 'qqqq', '105');
INSERT INTO `role_privileges` VALUES ('1269', 'qqqq', '109');
INSERT INTO `role_privileges` VALUES ('1270', 'qqqq', '110');
INSERT INTO `role_privileges` VALUES ('1271', 'qqqq', '111');
INSERT INTO `role_privileges` VALUES ('1272', 'qqqq', '112');
INSERT INTO `role_privileges` VALUES ('1273', 'qqqq', '118');
INSERT INTO `role_privileges` VALUES ('1274', 'qqqq', '119');
INSERT INTO `role_privileges` VALUES ('1275', 'qqqq', '120');
INSERT INTO `role_privileges` VALUES ('1276', 'qqqq', '121');

-- ----------------------------
-- Table structure for `roles`
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `english_name` varchar(100) DEFAULT NULL,
  `chinese_name` varchar(100) DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  `category` varchar(20) DEFAULT NULL COMMENT '角色类别',
  PRIMARY KEY (`id`),
  UNIQUE KEY `english_name` (`english_name`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('4', 'CompanyAdmin', '公司管理员', '公司管理员角色', null);
INSERT INTO `roles` VALUES ('5', 'OperationsAdmin', '运营管理员', '运营管理员角色', null);
INSERT INTO `roles` VALUES ('6', 'SystemAdmin', '系统管理员', '系统管理员角色', null);
INSERT INTO `roles` VALUES ('7', 'AccountAdmin', '账务管理员', '账务管理员角色', null);
INSERT INTO `roles` VALUES ('8', 'user', '部门管理员', '部门管理员角色', null);
INSERT INTO `roles` VALUES ('12', 'NewSysAdmin', '系统管理员', '用在新版(HTML5)的管理平台上', null);
INSERT INTO `roles` VALUES ('13', 'NewUser', '部门管理员', '新部门管理员', null);
INSERT INTO `roles` VALUES ('14', 'NewCompanyAdmin', '公司管理员', '新公司管理员', null);
INSERT INTO `roles` VALUES ('16', 'CLAA', '公司级的应用管理员', '公司级的应用管理员', null);

-- ----------------------------
-- Table structure for `sysadmin_dynamic_password_cards`
-- ----------------------------
DROP TABLE IF EXISTS `sysadmin_dynamic_password_cards`;
CREATE TABLE `sysadmin_dynamic_password_cards` (
  `id` int(11) NOT NULL DEFAULT '0',
  `card_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sysadmin_dynamic_password_cards
-- ----------------------------

-- ----------------------------
-- Table structure for `sysadmin_user`
-- ----------------------------
DROP TABLE IF EXISTS `sysadmin_user`;
CREATE TABLE `sysadmin_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login_id` varchar(50) NOT NULL,
  `passwd` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `rolename` varchar(20) NOT NULL,
  `is_encrypt` int(11) DEFAULT '0' COMMENT '是否启动加密;1为启用;0为禁用',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login_id` (`login_id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `login_id_2` (`login_id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='系统管理员表，存储系统的管理员帐号。';

-- ----------------------------
-- Records of sysadmin_user
-- ----------------------------
INSERT INTO `sysadmin_user` VALUES ('3', 'system@admin', 'poiu1234', '系统管理员', 'SystemAdmin', '0', '2013-02-19 22:44:42');
INSERT INTO `sysadmin_user` VALUES ('11', 'operation@admin', 'operation', 'operation', 'OperationsAdmin', '0', '2013-02-19 22:53:40');
INSERT INTO `sysadmin_user` VALUES ('12', 'zouhao@admin', 'zouhao', 'zouhao@admin', 'SystemAdmin', '0', '2014-03-18 10:37:46');
INSERT INTO `sysadmin_user` VALUES ('16', 'carry', 'carry', 'carry', 'SysAdmin', '0', '2014-03-21 14:46:02');
INSERT INTO `sysadmin_user` VALUES ('17', 'wtt@china-ops.com', 'wtt', '王田田--系统', 'SystemAdmin', '0', '2014-03-24 10:54:39');
INSERT INTO `sysadmin_user` VALUES ('18', 'user@china-ops.com', 'user', '王田田-运营', 'OperationsAdmin', '0', '2014-03-24 10:54:28');
INSERT INTO `sysadmin_user` VALUES ('20', 'aa', 'aa', 'aa', 'OperationAdmin', '0', '2014-03-25 11:39:49');
INSERT INTO `sysadmin_user` VALUES ('21', 'bb', 'bb', 'bb', 'SysAdmin', '0', '2014-03-25 11:40:05');
INSERT INTO `sysadmin_user` VALUES ('22', 'cc', 'cc', 'ccc', 'SystemAdmin', '0', '2014-03-25 11:42:47');
INSERT INTO `sysadmin_user` VALUES ('23', 'dd', '66', 'dd', 'SysAdmin', '0', '2014-03-25 15:07:23');
INSERT INTO `sysadmin_user` VALUES ('24', '66', '55', '66', 'SysAdmin', '0', '2014-03-27 11:52:12');
INSERT INTO `sysadmin_user` VALUES ('25', 'ww@ww.com', 'ww', 'ww', 'SysAdmin', '0', '2014-03-27 11:59:18');
INSERT INTO `sysadmin_user` VALUES ('26', '88', '88', '88', 'SysAdmin', '0', '2014-03-28 15:18:30');
INSERT INTO `sysadmin_user` VALUES ('27', '22', '22', '22', 'SysAdmin', '0', '2014-03-31 15:56:00');

-- ----------------------------
-- Table structure for `system_admin`
-- ----------------------------
DROP TABLE IF EXISTS `system_admin`;
CREATE TABLE `system_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL COMMENT '管理员名称',
  `access_key` varchar(100) DEFAULT NULL,
  `secret_key` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of system_admin
-- ----------------------------
INSERT INTO `system_admin` VALUES ('1', 'test1', 'sdcgf78j8f7dpdfkf09ky9fjtgjf8djdmfda', '8djdfnj49fd0dj49jrj4ejd9fkr4ide9e987dn7d');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login_id` varchar(128) NOT NULL,
  `passwd` varchar(256) NOT NULL,
  `username` varchar(128) NOT NULL,
  `rolename` varchar(30) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `status` char(2) DEFAULT '0',
  `create_time` datetime DEFAULT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL,
  `last_login_ip` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=557 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('461', 'ceshi@1.com', 'ceshi1', 'ceshi@1.com', 'CompanyAdmin', '266', '0', '0', '2014-03-04 09:36:14', '2014-03-04 10:12:39', '2014-03-05 10:35:01', '127.0.0.1');
INSERT INTO `users` VALUES ('462', 'ceshi@2.com', 'ceshi2', 'ceshi@2.com', 'CompanyAdmin', '267', '0', '1', '2014-03-04 09:38:02', '2014-03-04 09:38:02', null, null);
INSERT INTO `users` VALUES ('463', 'ceshi@3.com', 'ceshi3', 'ceshi@3.com', 'CompanyAdmin', '268', '0', '1', '2014-03-04 09:48:16', '2014-03-04 09:48:16', null, null);
INSERT INTO `users` VALUES ('464', 'ceshi@4.com', 'ceshi4', 'ceshi@4.com', 'CompanyAdmin', '269', '0', '1', '2014-03-04 09:51:52', '2014-03-04 09:51:52', '2014-03-11 14:03:20', '127.0.0.1');
INSERT INTO `users` VALUES ('465', 'ceshi1@admin.com', '123', 'ceshi1', 'CompanyAdmin', '270', '0', '1', '2014-03-04 10:09:23', '2014-03-04 10:09:23', null, null);
INSERT INTO `users` VALUES ('466', 'ceshi1@1.com', '111', 'ceshi1', 'CompanyAdmin', '271', '0', '1', '2014-03-04 10:21:40', '2014-03-04 10:21:40', '2014-04-15 15:44:20', '127.0.0.1');
INSERT INTO `users` VALUES ('467', 'ceshi2@2.com', '111', 'ceshi2', 'CompanyAdmin', '272', '0', '1', '2014-03-04 10:29:18', '2014-03-04 10:29:18', null, null);
INSERT INTO `users` VALUES ('468', 'ceshi@6.com', 'cesho6', 'ceshi@7.com', 'CompanyAdmin', '273', '0', '1', '2014-03-04 13:57:32', '2014-03-04 13:57:32', null, null);
INSERT INTO `users` VALUES ('469', 'ceshi@7.com', 'ceshi7', 'ceshi@7.com', 'CompanyAdmin', '274', '0', '0', '2014-03-04 15:03:26', '2014-03-04 15:45:30', '2014-04-03 15:58:50', '127.0.0.1');
INSERT INTO `users` VALUES ('470', '144@144.com', '144', '12', 'CompanyAdmin', '275', '0', '1', '2014-03-05 09:37:54', '2014-03-05 09:37:54', '2014-04-02 10:27:33', '127.0.0.1');
INSERT INTO `users` VALUES ('471', '155@155.com', '155', '121', 'CompanyAdmin', '276', '0', '1', '2014-03-05 10:15:29', '2014-03-05 10:15:29', '2014-04-03 16:00:33', '127.0.0.1');
INSERT INTO `users` VALUES ('472', '166@166.com', '166', '12', 'CompanyAdmin', '277', '0', '1', '2014-03-05 10:54:49', '2014-03-05 10:54:49', null, null);
INSERT INTO `users` VALUES ('473', '12@1212.com', '12', '212', 'CompanyAdmin', '278', '0', '1', '2014-03-05 11:05:42', '2014-03-05 11:05:42', null, null);
INSERT INTO `users` VALUES ('474', 'ceshi2@33.com', '22', 'ceshi2', 'CompanyAdmin', '279', '0', '1', '2014-03-05 15:47:20', '2014-03-05 15:47:20', null, null);
INSERT INTO `users` VALUES ('475', '12@12.com', '12', '21', 'CompanyAdmin', '280', '0', '1', '2014-03-05 18:24:52', '2014-03-05 18:24:52', null, null);
INSERT INTO `users` VALUES ('476', 'qiye@admin.com', 'qiye', 'qiye', 'CompanyAdmin', '281', '0', '1', '2014-03-10 10:37:47', '2014-03-10 10:37:47', '2014-04-10 13:35:41', '127.0.0.1');
INSERT INTO `users` VALUES ('477', '112@112.com', '112', '112', 'CompanyAdmin', '282', '0', '1', '2014-03-10 11:01:18', '2014-03-10 11:01:18', null, null);
INSERT INTO `users` VALUES ('478', '121@12.com', '12', '21212', 'CompanyAdmin', '283', '0', '1', '2014-03-10 11:03:19', '2014-03-10 11:03:19', null, null);
INSERT INTO `users` VALUES ('479', '321424@24242.com', '12', '121', 'CompanyAdmin', '284', '0', '1', '2014-03-10 11:04:46', '2014-03-10 11:04:46', null, null);
INSERT INTO `users` VALUES ('480', 'tt@126.com', '1234', ')))))', 'CompanyAdmin', '285', '0', '1', '2014-03-10 16:25:46', '2014-03-10 16:25:46', null, null);
INSERT INTO `users` VALUES ('481', '33@33.com', '33', '33', 'CompanyAdmin', '286', '0', '1', '2014-03-10 17:48:48', '2014-03-10 17:48:48', null, null);
INSERT INTO `users` VALUES ('482', 'ceshi@5.com', 'ceshi5', 'ceshi@5.com', 'CompanyAdmin', '287', '0', '1', '2014-03-11 09:41:58', '2014-03-11 09:41:58', '2014-04-14 13:59:03', '127.0.0.1');
INSERT INTO `users` VALUES ('483', 'bumen@1.com', 'bumen1', 'as', 'user', '287', '329', '1', '2014-03-11 09:50:00', '2014-03-11 09:50:00', '2014-04-14 11:32:30', '127.0.0.1');
INSERT INTO `users` VALUES ('484', 'bumen@2.com', 'bumen2', 'bumen2', 'user', '287', '330', '0', '2014-03-11 10:52:28', '2014-03-11 10:55:10', '2014-04-10 13:45:23', '127.0.0.1');
INSERT INTO `users` VALUES ('485', 'ceshi@8.com', 'ceshi8', 'ceshi@8.com', 'CompanyAdmin', '288', '0', '1', '2014-03-11 14:01:45', '2014-03-11 14:01:45', '2014-04-03 18:15:27', '127.0.0.1');
INSERT INTO `users` VALUES ('486', 'ceshi@9.com', 'ceshi9', 'ceshi@9.com', 'CompanyAdmin', '289', '0', '1', '2014-03-11 14:11:56', '2014-03-11 14:11:56', '2014-04-03 17:44:41', '127.0.0.1');
INSERT INTO `users` VALUES ('487', 'aa@a.com', 'aaa', 'aa@a.com', 'user', '289', '331', '0', '2014-03-11 14:23:03', '2014-03-18 14:20:30', '2014-04-14 13:48:16', '127.0.0.1');
INSERT INTO `users` VALUES ('488', 's3@s3.com', 's3', '测试S3', 'CLAA', '289', '331', '1', '2014-03-11 17:02:47', '2014-03-11 17:02:47', null, null);
INSERT INTO `users` VALUES ('489', 'sss@ss.com', 'ss', 'ss', 'CompanyAdmin', '290', '0', '1', '2014-03-12 14:42:53', '2014-03-12 14:42:53', null, null);
INSERT INTO `users` VALUES ('490', '1212@1212.com', '12', '1212', 'CompanyAdmin', '291', '0', '1', '2014-03-12 14:43:03', '2014-03-12 14:43:03', null, null);
INSERT INTO `users` VALUES ('491', 'han@ad.com', 'han@ad.com', '韩双', 'CompanyAdmin', '292', '0', '1', '2014-03-12 14:47:15', '2014-03-12 14:47:15', '2014-04-17 10:42:43', '127.0.0.1');
INSERT INTO `users` VALUES ('492', 'zhm@zhm.zhm', 'zhm', '周慧敏测试', 'CompanyAdmin', '293', '0', '1', '2014-03-12 15:05:21', '2014-03-12 15:05:21', '2014-04-14 17:16:57', '127.0.0.1');
INSERT INTO `users` VALUES ('493', 'yunwei@ceshi.com', 'yunwei', '123', 'CompanyAdmin', '294', '0', '1', '2014-03-13 10:40:57', '2014-03-13 10:40:57', '2014-04-17 14:14:03', '127.0.0.1');
INSERT INTO `users` VALUES ('494', 'zhm2@zhm.zhm', 'zhm', 'zhm', 'CompanyAdmin', '295', '0', '1', '2014-03-13 11:13:27', '2014-03-13 11:13:27', '2014-04-16 17:12:52', '127.0.0.1');
INSERT INTO `users` VALUES ('495', 'Chris@admin.com', 'qiye', 'Chris Zou', 'CompanyAdmin', '296', '0', '1', '2014-03-13 14:54:53', '2014-03-13 14:54:53', '2014-04-25 09:41:31', '127.0.0.1');
INSERT INTO `users` VALUES ('537', '121@121.com', '121', '121', 'CompanyAdmin', '324', '0', '1', '2014-04-02 09:49:09', '2014-04-02 09:49:09', '2014-04-03 15:33:16', '127.0.0.1');
INSERT INTO `users` VALUES ('538', 'user@user.com', 'user', '王田田', 'user', '324', '349', '1', '2014-04-02 09:55:56', '2014-04-02 09:55:56', '2014-04-10 09:17:07', '127.0.0.1');
INSERT INTO `users` VALUES ('498', 'aa@s3.com', 's3', 'aa@s3.com', 'CLAA', '289', '332', '1', '2014-03-18 14:53:30', '2014-03-18 14:53:30', null, null);
INSERT INTO `users` VALUES ('499', 'carry@admin.com', 'carry', 'carry', 'CompanyAdmin', '297', '0', '1', '2014-03-19 14:06:53', '2014-03-19 14:06:53', null, null);
INSERT INTO `users` VALUES ('503', 'chriszou@admin.com', 'qiye', 'Chirs Zou', 'CompanyAdmin', '299', '0', '1', '2014-03-21 15:49:51', '2014-03-21 15:49:51', '2014-04-14 17:04:39', '127.0.0.1');
INSERT INTO `users` VALUES ('501', 'xx@xx.xx', 'xx', 'xx', 'CompanyAdmin', '298', '0', '1', '2014-03-20 14:53:29', '2014-03-20 14:53:29', null, null);
INSERT INTO `users` VALUES ('505', 'a@user.com', 'a', 'auser', 'user', '296', '348', '1', '2014-03-24 10:14:09', '2014-03-24 10:14:09', '2014-04-17 11:15:54', '127.0.0.1');
INSERT INTO `users` VALUES ('506', '1@1.com', '1', '111', 'CompanyAdmin', '300', '0', '1', '2014-03-24 11:34:00', '2014-03-24 11:34:00', null, null);
INSERT INTO `users` VALUES ('507', '2@2.com', '22', '1', 'CompanyAdmin', '301', '0', '1', '2014-03-24 14:20:55', '2014-03-24 14:20:55', null, null);
INSERT INTO `users` VALUES ('508', '2@1.com', '1', '1', 'CompanyAdmin', '302', '0', '1', '2014-03-24 18:01:04', '2014-03-24 18:01:04', null, null);
INSERT INTO `users` VALUES ('509', '121@111.com', '12', '121', 'CompanyAdmin', '303', '0', '1', '2014-03-25 14:26:22', '2014-03-25 14:26:22', null, null);
INSERT INTO `users` VALUES ('510', 'kk@kk.com', 'kk', 'kk', 'CompanyAdmin', '304', '0', '1', '2014-03-25 16:04:42', '2014-03-25 16:04:42', '2014-03-25 17:18:31', '127.0.0.1');
INSERT INTO `users` VALUES ('511', '666@66.com', '66', '6666', 'CompanyAdmin', '305', '0', '1', '2014-03-25 16:14:05', '2014-03-25 16:14:05', null, null);
INSERT INTO `users` VALUES ('513', '99@99.com', '99', '999', 'CompanyAdmin', '306', '0', '1', '2014-03-25 16:33:14', '2014-03-25 16:33:14', null, null);
INSERT INTO `users` VALUES ('516', 'zhm3@zhm.zhm', 'zhm', 'zhm', 'CompanyAdmin', '307', '0', '1', '2014-03-26 10:32:35', '2014-03-26 10:32:35', '2014-04-17 12:35:03', '127.0.0.1');
INSERT INTO `users` VALUES ('517', '88@88.com', '88', '888', 'CompanyAdmin', '308', '0', '1', '2014-03-26 14:07:54', '2014-03-26 14:07:54', null, null);
INSERT INTO `users` VALUES ('518', '77@77.com', '77', '77', 'CompanyAdmin', '309', '0', '1', '2014-03-26 14:13:00', '2014-03-26 14:13:00', null, null);
INSERT INTO `users` VALUES ('519', '6@6.com', '6', '6', 'CompanyAdmin', '310', '0', '1', '2014-03-26 14:20:18', '2014-03-26 14:20:18', null, null);
INSERT INTO `users` VALUES ('523', '776@11.com', '66', '66', 'CompanyAdmin', '312', '0', '1', '2014-03-28 15:21:08', '2014-03-28 15:21:08', null, null);
INSERT INTO `users` VALUES ('524', '11@11.com', '11', '11', 'CompanyAdmin', '313', '0', '1', '2014-03-28 15:23:35', '2014-03-28 15:23:35', '2014-04-14 16:06:45', '127.0.0.1');
INSERT INTO `users` VALUES ('526', 'we@11.com', '11', 'we', 'CompanyAdmin', '314', '0', '1', '2014-03-31 10:40:46', '2014-03-31 10:40:46', '2014-04-15 15:49:16', '127.0.0.1');
INSERT INTO `users` VALUES ('527', 'yunwei@ceshi2.com', 'yunwei', 'yunwei', 'CompanyAdmin', '315', '0', '1', '2014-03-31 16:32:03', '2014-03-31 16:32:03', '2014-04-02 10:51:36', '127.0.0.1');
INSERT INTO `users` VALUES ('528', '2222@222.com', '12', '12', 'CompanyAdmin', '316', '0', '1', '2014-04-01 11:12:20', '2014-04-01 11:12:20', null, null);
INSERT INTO `users` VALUES ('529', '12222@12121.com', '12', '12', 'CompanyAdmin', '317', '0', '1', '2014-04-01 11:45:52', '2014-04-01 11:45:52', null, null);
INSERT INTO `users` VALUES ('530', '22222@222.com', '122', '12', 'CompanyAdmin', '318', '0', '1', '2014-04-01 11:51:01', '2014-04-01 11:51:01', null, null);
INSERT INTO `users` VALUES ('531', '12121@1212.com', '12', '1212', 'CompanyAdmin', '319', '0', '1', '2014-04-01 15:14:11', '2014-04-01 15:14:11', null, null);
INSERT INTO `users` VALUES ('532', '12af@afa.com', '12', '12', 'CompanyAdmin', '320', '0', '1', '2014-04-01 15:35:42', '2014-04-01 15:35:42', null, null);
INSERT INTO `users` VALUES ('533', '55@qq.com', '55', '555', 'CompanyAdmin', '321', '0', '1', '2014-04-01 16:06:11', '2014-04-01 16:06:11', null, null);
INSERT INTO `users` VALUES ('535', 'gs@china-ops.com', 'gs', 'gs', 'CompanyAdmin', '323', '0', '1', '2014-04-01 17:09:10', '2014-04-01 17:09:10', null, null);
INSERT INTO `users` VALUES ('539', 'qy@admin.com', 'qy', 'qy', 'CompanyAdmin', '325', '0', '1', '2014-04-02 10:35:00', '2014-04-02 10:35:00', '2014-04-11 11:21:58', '127.0.0.1');
INSERT INTO `users` VALUES ('541', 'zh@user.com', 'zh', 'zouhao', 'user', '325', '354', '1', '2014-04-03 16:39:03', '2014-04-03 16:39:03', '2014-04-11 18:00:57', '127.0.0.1');
INSERT INTO `users` VALUES ('542', 'abc@qiyi.com', 'abc', 'abc', 'user', '299', '339', '1', '2014-04-04 15:03:47', '2014-04-04 15:03:47', '2014-04-14 15:45:34', '127.0.0.1');
INSERT INTO `users` VALUES ('547', 'aaa@aaa.com', 'aaa', 'aaa', 'user', '325', '354', '1', '2014-04-10 14:46:40', '2014-04-10 14:46:40', null, null);
INSERT INTO `users` VALUES ('549', 's@s.com', 's', 's', 'user', '325', '354', '1', '2014-04-10 15:17:14', '2014-04-10 15:17:14', null, null);
INSERT INTO `users` VALUES ('550', 'zhm6@zhm.zhm', 'zhm', 'zhm', 'CompanyAdmin', '326', '0', '1', '2014-04-10 16:52:10', '2014-04-10 16:52:10', '2014-04-17 15:28:13', '127.0.0.1');
INSERT INTO `users` VALUES ('552', 'b@user.com', 'b', 'buser', 'user', '296', '369', '1', '2014-04-14 15:22:20', '2014-04-14 15:22:20', null, null);
INSERT INTO `users` VALUES ('553', '110@110.com', '110', '110', 'CompanyAdmin', '327', '0', '1', '2014-04-14 16:03:13', '2014-04-14 16:03:13', '2014-04-14 17:06:28', '127.0.0.1');
INSERT INTO `users` VALUES ('554', 'test@1.com', 'TEST1', 'test1', 'user', '327', '371', '1', '2014-04-14 16:22:41', '2014-04-14 16:22:41', null, null);
INSERT INTO `users` VALUES ('555', '001@001.001', '001', '001', 'CompanyAdmin', '328', '0', '1', '2014-04-15 15:41:38', '2014-04-15 15:41:38', '2014-04-17 16:28:21', '127.0.0.1');
INSERT INTO `users` VALUES ('556', '007@user.com', '007', '007', 'user', '328', '373', '1', '2014-04-15 16:03:27', '2014-04-15 16:03:27', '2014-04-17 14:11:26', '127.0.0.1');
