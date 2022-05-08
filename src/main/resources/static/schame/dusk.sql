/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : dusk

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2022-05-08 22:27:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
                           `id` int(11) NOT NULL,
                           `title` varchar(200) DEFAULT NULL,
                           `keyword` varchar(200) DEFAULT NULL,
                           `content` varchar(1000) DEFAULT NULL,
                           `click` int(11) DEFAULT NULL,
                           `status` int(11) DEFAULT NULL,
                           `type` int(11) DEFAULT NULL,
                           `create_user` int(11) DEFAULT NULL,
                           `create_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
                           `modify_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
                           `author` varchar(50) DEFAULT NULL,
                           PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('1', '进阶架构师学习路线', '云计算', '容器技术是虚拟化技术的一种，以 Docker 为例，Docker 利用 Linux 的 LXC(LinuX Containers)技术、CGroup(Controll Group)技术 和 AUFS(Advance UnionFileSystem)技术等，通过对进程和资源加以限制，进行调控，隔离出来一套供程序运行的环境。\n \n我们把这一环境称为 “ 容器 ”，把构建该 “ 容器 ” 的 “ 只读模板 ”，称之为 “ 镜像 ”。\n \n容器是独立的、隔离的，不同容器间不能直接通信，容器与宿主机也是隔离开来的，容器不能直接感知到宿主机的存在，同时宿主机也无法直接窥探容器内部。\n \r\n————————————————\r\n版权声明：本文为CSDN博主「飞向星的客机」的原创文章，遵循CC 4.0 BY-SA版权协议，转载请附上原文出处链接及本声明。\r\n原文链接：https://blog.csdn.net/m0_63325890/article/details/124120422', '1', '1', '1', '1', '2022-05-08 20:34:36', '2022-05-08 20:34:36', '1');
INSERT INTO `article` VALUES ('2', 'Docker不香吗？为什么还需要K8s？', '云原生', '分布式就是把一个系统拆分开来部署到不同机器，与集群相同的是，两者都需要多台服务器，不同点是分布式并不强调实现相同的业务。\n \n貌似网上大多数资料，对于集群和分布式的区分，都执着于两者是否实现相同的业务，即不同服务器运行同一份功能就是集群，运行不同功能就是分布式。\n \n个人看法是，集群强调的是“集”、“统一的概念”，是物理上的、环境上的概念，只要是多台计算机搞在一起就是集群；\n \n而分布式，更多的是描述应用系统的部署方式，把一个系统拆开部署到不同服务器，就是分布式。\r\n————————————————\r\n版权声明：本文为CSDN博主「飞向星的客机」的原创文章，遵循CC 4.0 BY-SA版权协议，转载请附上原文出处链接及本声明。\r\n原文链接：https://blog.csdn.net/m0_63325890/article/details/124120422', '500', '1', '2', '1', '2022-05-08 20:35:10', '2022-05-08 20:35:10', '1');

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
                        `order` int(1) DEFAULT NULL COMMENT '排序',
                        PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '英雄对骂区', 'M_ONE', '1', '0', null, '1', '1');
INSERT INTO `menu` VALUES ('2', '祖安找骂区', 'M_TWO', '1', '0', null, '1', '2');
INSERT INTO `menu` VALUES ('3', '自我发泄区', 'M_THREE', '1', '0', null, '1', '3');

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
