--公司表
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `ID` int(11) NOT NULL auto_increment,
  `MARK` varchar(100) default NULL,
  `STATUS` char(2) default '2' COMMENT '状态：-1:关闭 0:试用 1:启用 2:审核中 3:暂关',
  `NAME` varchar(200) default NULL,
  `CONTACT` varchar(20) default NULL,
  `ADDRESS` varchar(500) default NULL,
  `CREATETIME` datetime default NULL,
  `enable_dynamic_password_card` int(11) NOT NULL default '0' COMMENT '是否启用动态密码卡， 0：不启用;1：启用。',
  `IsFirstLogin` int(11) NOT NULL default '1' COMMENT '是否是第一次登陆，1：第一次登陆，0：不是第一次登陆',
  `contact_person` varchar(50) default NULL COMMENT '联系人',
  `contact_cell_phone` varchar(50) default NULL COMMENT '联系手机',
  `contact_phone` varchar(50) default NULL COMMENT '联系电话',
  `contact_email` varchar(50) default NULL COMMENT '联系邮箱',
  `domain_name` varchar(50) default NULL COMMENT '代理商域名',
  `logo_img` varchar(100) default NULL COMMENT '代理商logo',
  `footer` varchar(2000) default NULL COMMENT '代理商页脚',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

--INSERT INTO `company` VALUES (1,'admin','1','北京中联润通信息技术有限公司','0000','北京中联润通信息技术有限公司1','2013-04-26 20:44:57',0,0,'1','1','1',NULL,NULL,'2013\\04\\26\\shoppingcart2.jpg',NULL)

--公司动态密码卡对应表
DROP TABLE IF EXISTS `company_dynamic_password_cards`;
CREATE TABLE `company_dynamic_password_cards` (
  `id` int(11) NOT NULL auto_increment,
  `card_id` int(11) NOT NULL,
  `active` int(11) default '0' COMMENT '是否激活，0：未激活；1：已激活',
  `fee_card` int(11) default '0' COMMENT '是否是帐务卡,0:不是;1:是;',
  `user_id` int(11) default NULL COMMENT '绑定用户，当密码卡为非帐务卡时，即为登录卡，登录卡要与用户绑定，此字体保存绑定用户的ID',
  `company_id` int(11) default NULL,
  `activetime` datetime default NULL COMMENT '动态密码卡激活时间',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='公司动态密码卡对应表';

--INSERT INTO `company_dynamic_password_cards` VALUES (36,103,1,0,11188,541,'2013-04-19 19:19:55');

--部门表
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept` (
  `ID` int(11) NOT NULL auto_increment,
  `NAME` varchar(256) NOT NULL,
  `SYSTIME` datetime NOT NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

--INSERT INTO `dept` VALUES (1,'开发部','2011-10-31 10:27:39',1),(192,'市场部','2012-01-12 15:01:28',1);

--动态密码卡表
DROP TABLE IF EXISTS `dynamic_password_cards`;
CREATE TABLE `dynamic_password_cards` (
  `id` int(11) NOT NULL auto_increment,
  `card_number` varchar(40) NOT NULL,
  `seed` varchar(50) NOT NULL COMMENT '种子',
  `state` int(11) default '0' COMMENT '0:未售;1：售出；-1：禁用',
  `last_success` int(11) default NULL COMMENT '上次成功同步或认证后的返回值',
  `drift` int(11) default NULL COMMENT '漂移值，上次成功调用后的返回值',
  `continuous_failure` int(11) default '0' COMMENT '连续失败次数',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `card_number` (`card_number`),
  UNIQUE KEY `card_number_2` (`card_number`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

--INSERT INTO `dynamic_password_cards` VALUES (1,'2100000093401','ll939D9263BD491AE62D2BA30C5276444BA4FAC5914FE5CD5D',0,NULL,NULL,0);

--员工表
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `eid` int(11) NOT NULL,
  `ename` varchar(20) default NULL,
  `sex` char(2) default NULL,
  `dept_id` int(11) default NULL,
  PRIMARY KEY  (`eid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--权限表
DROP TABLE IF EXISTS `privileges`;
CREATE TABLE `privileges` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL COMMENT 'chinese name.',
  `token` varchar(50) NOT NULL COMMENT '权限标识',
  `url` varchar(50) default NULL,
  `level` enum('module','button') default NULL COMMENT '权限级别:module模块级;button按钮级;',
  `group` varchar(20) NOT NULL COMMENT '分组',
  `category` varchar(50) default NULL COMMENT '角色类别',
  `sn` int(11) NOT NULL default '0' COMMENT '序号，用来排序的。',
  `tooltip` varchar(200) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `token` (`token`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='权限表';

--INSERT INTO `privileges` VALUES (93,'资源统计','/resourcesummation','/resourcesummation.htm','module','运营管理','弹性主机',52,'资源统计'),(94,'管理员管理','/adminmanager','/adminmanager.htm','module','管理员管理','系统权限',45,'管理员管理'),(49,'云主机','/instance','/instances.htm','module','云主机','弹性主机',10,'预装操作系统的服务器(含CPU、内存和系统分区)'),(50,'密钥','/keypairs','/keypairs/keypairs.htm','module','网络和安全','弹性主机',25,'用于linux服务器ssh登录的公私密钥文件'),(51,'网络虚拟防火墙','/securitygroups','/securitygroups/securitygroups.htm','module','网络和安全','弹性主机',30,'针对云主机客户提供虚拟网络防火墙'),(52,'首页','/index','/index.htm','module','','弹性主机',5,'首页'),(53,'代理商管理','/company','/company.htm','module','代理商管理','弹性主机',40,'代理商管理'),(54,'公司管理','/dept','/dept.htm','module','公司管理','弹性主机',45,'公司管理'),(55,'权限管理','/privilege','/privileges.htm','module','权限管理','系统权限',55,'权限管理'),(56,'角色管理','/role','/roles.htm','module','权限管理','系统权限',60,'角色管理'),(57,'用户管理','/user','/user.htm','module','用户管理','弹性主机',65,'用户管理'),(58,'存储','/volume','/volume.htm','module','弹性组','弹性主机',15,'产品为云主机提供存储空间，类似于物理硬盘'),(59,'密码卡管理','/companyCard','companyCard.htm','module','账户管理','弹性主机',75,'密码卡管理'),(60,'s3','/bucket','/bucket.htm','module','云存储','弹性主机',0,'云存储 S3'),(61,'日志管理','/userLog','/userLog.htm','module','用户管理','弹性主机',65,'日志管理'),(62,'修改密码','/updateUserPassword','/updateUserPassword.htm','module','用户管理','弹性主机',70,'修改密码'),(63,'账户管理','/account','/account.htm','module','账户管理','弹性主机',80,'账户管理'),(64,'快照','/snapshot','/snapshot.htm','module','弹性组','弹性主机',20,'为云主机的存储提供全盘在线备份，该备份可快速进行存储恢复'),(68,'动态密码卡管理','/dynamicPasswordCard','/dynamicPasswordCard.htm','module','运营管理','弹性主机',51,'动态密码卡管理'),(65,'弹性IP','/elasticips','/elasticips.htm','module','网络和安全','弹性主机',35,'一个静态的公网IP地址'),(69,'IP分配详情','/zoneips','/zoneips.htm','module','集群管理','弹性主机',80,'IP分配详情'),(70,'集群组管理','/zonegroup','/zonegroup.htm','module','集群管理','弹性主机',75,'集群组管理'),(71,'云用户管理','/clouduser','/clouduser.htm','module','云用户管理','弹性主机',61,'云用户管理'),(72,'集群管理','/zone','/zone.htm','module','集群管理','弹性主机',70,'集群管理'),(73,'镜像管理','/machineimage','/machineimage.htm','module','镜像管理','弹性主机',65,'镜像管理'),(92,'云管理','/cloudlist','/cloudlist.htm','module','云用户管理','弹性主机',60,'云管理'),(78,'产品管理','/products','/products.htm','module','运营管理','弹性主机',50,'新产品管理'),(77,'幽灵云主机','/findghostinstances','/findghostinstances.htm','module','运营管理','弹性主机',53,'幽灵云主机'),(79,'控制台','/dashboard','/dashboard.htm','module','控制台','弹性主机',0,'控制台'),(99,'logo管理','/agent_logo','/agent_logo.htm','module','权限管理','弹性主机',46,'logo管理');

--撤销权限
DROP TABLE IF EXISTS `revoked_privileges`;
CREATE TABLE `revoked_privileges` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `privilege_id` int(11) default NULL,
  `signs` int(11) default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `userid_pid` (`user_id`,`privilege_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='撤销权限';

--INSERT INTO `revoked_privileges` VALUES (74,245,16,0);

--角色权限表
DROP TABLE IF EXISTS `role_privileges`;
CREATE TABLE `role_privileges` (
  `id` int(11) NOT NULL auto_increment,
  `role_name` varchar(100) default NULL COMMENT 'english name of a role',
  `privilege_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `role_name` (`role_name`,`privilege_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='角色权限表';

--INSERT INTO `role_privileges` VALUES (1,'AccountAdmin',15),(2,'user',49),(3,'user',52),(4,'SysAAA',61),(5,'CLAA',60),(6,'SysAdmin',78),(7,'CompanyAdmin',95),(8,'SysAdmin',69),(9,'CLAA',52),(10,'SysAdmin',77),(11,'SysAdmin',56),(12,'CompanyAdmin',79),(13,'CompanyAdmin',58),(14,'CompanyAdmin',62),(15,'CompanyAdmin',61),(16,'CompanyAdmin',54),(17,'CompanyAdmin',52),(18,'OperationAdmin',73),(19,'SysAdmin',55),(20,'SysAdmin',53),(21,'SysAdmin',52),(22,'OperationAdmin',71),(23,'OperationAdmin',72),(24,'OperationAdmin',70),(25,'OperationAdmin',93),(26,'OperationAdmin',56),(27,'OperationAdmin',53),(28,'SysAAA',57),(29,'SysAAA',56),(30,'SysAAA',54),(31,'SysAAA',53),(32,'SysAAA',52),(33,'SysAAA',65),(34,'SysAAA',51),(35,'SysAAA',50),(36,'SysAAA',49),(37,'CompanyAdmin',49),(38,'OperationAdmin',52),(39,'user',58),(40,'SysAdmin',71),(41,'SysAdmin',92),(42,'SysAdmin',94),(43,'user',79),(44,'CompanyAdmin',99);

--角色表
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL auto_increment,
  `english_name` varchar(100) default NULL,
  `chinese_name` varchar(100) default NULL,
  `description` varchar(256) default NULL,
  `category` varchar(50) default NULL COMMENT '角色类别',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `english_name` (`english_name`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='角色表';

--INSERT INTO `roles` VALUES (1,'SysAdmin','系统管理员','用在新版(HTML5)的管理平台上','系统权限'),(2,'user','公司管理员','公司管理员','弹性主机'),(3,'CompanyAdmin','代理商管理员','代理商管理员','弹性主机'),(4,'OperationAdmin','运营管理员','运营管理员','系统权限'),(5,'CLAA','公司级的应用管理员','公司级的应用管理员','系统权限');

--系统管理员表
DROP TABLE IF EXISTS `sysadmin_user`;
CREATE TABLE `sysadmin_user` (
  `id` int(11) NOT NULL auto_increment,
  `login_id` varchar(50) NOT NULL,
  `passwd` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `rolename` varchar(20) NOT NULL,
  `create_time` datetime default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `login_id` (`login_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='系统管理员表，存储系统的管理员帐号。';

--INSERT INTO `sysadmin_user` VALUES (1,'operation','operation','运营管理员','SysAdmin','2013-04-27 22:37:04'),(2,'yunying@admin','yunying','系统管理员','SysAdmin','2013-02-19 22:53:40'),(3,'operation@admin','operation','operation','OperationAdmin','2013-02-19 22:53:40');

--用户表
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment,
  `login_id` varchar(128) NOT NULL,
  `passwd` varchar(256) NOT NULL,
  `username` varchar(128) NOT NULL,
  `rolename` varchar(30) default NULL,
  `company_id` int(11) default NULL,
  `department_id` int(11) default NULL,
  `status` char(2) default '0',
  `create_time` datetime default NULL,
  `last_update_time` datetime default NULL,
  `last_login_time` datetime default NULL,
  `last_login_ip` varchar(30) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='用户表';

--INSERT INTO `users` VALUES (1,'a@q.qq','a','a','CompanyAdmin',560,0,'1','2013-04-27 22:07:56','2013-04-27 22:07:56',NULL,NULL);

--by wangbin 20130422 增加角色类别
ALTER TABLE `roles` ADD COLUMN `category` varchar(50) default NULL COMMENT '角色类别';

--by wangbin 20130425 增加字段
ALTER TABLE `company` ADD COLUMN `domain_name` varchar(50) default NULL COMMENT '代理商域名';
ALTER TABLE `company` ADD COLUMN `logo_img` varchar(100) default NULL COMMENT '代理商logo';
ALTER TABLE `company` ADD COLUMN `footer` varchar(2000) default NULL COMMENT '代理商页脚';



-byzhouhuimin20130816
ALTER TABLE `company` ADD COLUMN `IsOpenDept ` int(11) default '1' COMMENT '是否开启部门';