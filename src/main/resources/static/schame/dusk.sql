/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50562
Source Host           : localhost:3306
Source Database       : dusk

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2020-08-11 17:22:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL COMMENT '菜单名称',
  `code` varchar(50) DEFAULT NULL COMMENT '菜单编码',
  `level` int(1) DEFAULT NULL COMMENT '菜单等级',
  `parent_id` int(11) DEFAULT NULL COMMENT '父级菜单id',
  `url` varchar(200) DEFAULT NULL COMMENT '菜单地址',
  `status` int(1) DEFAULT NULL COMMENT '菜单状态 1：启用 0：禁用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '英雄对骂区', 'M_TWO', '1', '0', null, '1');
INSERT INTO `menu` VALUES ('2', '祖安找骂区', 'M_ALL', '1', '0', null, '1');
INSERT INTO `menu` VALUES ('3', '自我发泄区', 'M_ONE', '1', '0', null, '1');

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `modify_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES ('1', '新增菜单', 'P_new_menu', '1', '2020-08-11 14:30:00', '1', null, null);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL COMMENT '角色名称',
  `code` varchar(50) DEFAULT NULL COMMENT '角色编码',
  `status` int(1) DEFAULT NULL COMMENT '角色状态1启用0停用',
  `create_time` datetime DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `modify_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '管理员', 'ROLE_ADMIN', '1', '2020-08-11 14:28:40', '1', '2020-08-11 14:28:45', '1');

-- ----------------------------
-- Table structure for role_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission` (
  `id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `permission_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_permission
-- ----------------------------
INSERT INTO `role_permission` VALUES ('1', '1', '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL COMMENT '姓名',
  `login_name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `age` int(5) DEFAULT NULL COMMENT '年龄',
  `sex` varchar(1) DEFAULT NULL COMMENT 'M为男  F为女',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `telephone` varchar(50) DEFAULT NULL COMMENT '手机号',
  `id_card` varchar(50) DEFAULT NULL COMMENT '身份证号',
  `status` int(1) DEFAULT NULL COMMENT '状态 1；启用 0：禁用',
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '管理员', 'admin', '1', '18', 'M', '123456', '123456', '111222333444555666', '1', '2020-08-06 16:19:54', '2020-08-06 16:19:57');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('1', '1', '1');
