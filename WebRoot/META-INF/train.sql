/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : train

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2018-10-29 21:52:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_admin`
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `Aname` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Add_time` datetime DEFAULT NULL,
  `Last_time` datetime DEFAULT NULL,
  `Login_times` int(11) DEFAULT NULL,
  `Null1` int(11) DEFAULT NULL,
  `Null2` int(11) DEFAULT NULL,
  `Null3` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin
-- ----------------------------

-- ----------------------------
-- Table structure for `t_admin_view`
-- ----------------------------
DROP TABLE IF EXISTS `t_admin_view`;
CREATE TABLE `t_admin_view` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `people_id` varchar(20) NOT NULL,
  `View_url` varchar(100) NOT NULL,
  `Picture_url` varchar(100) DEFAULT NULL,
  `Content_Typeid` varchar(500) NOT NULL,
  `View_Typeid` int(11) NOT NULL,
  `Price` float(11,1) NOT NULL,
  `Upload_time` datetime DEFAULT NULL,
  `Delete` int(4) DEFAULT NULL,
  `Null1` int(11) DEFAULT NULL,
  `Null2` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin_view
-- ----------------------------

-- ----------------------------
-- Table structure for `t_arole`
-- ----------------------------
DROP TABLE IF EXISTS `t_arole`;
CREATE TABLE `t_arole` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `Role_id` int(5) NOT NULL,
  `Admin_id` int(4) NOT NULL,
  `Null1` int(11) DEFAULT NULL,
  `Null2` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_arole
-- ----------------------------

-- ----------------------------
-- Table structure for `t_auditing_view`
-- ----------------------------
DROP TABLE IF EXISTS `t_auditing_view`;
CREATE TABLE `t_auditing_view` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Admin_id` int(4) NOT NULL,
  `View_id` int(11) NOT NULL,
  `View_state_id` int(4) NOT NULL,
  `Auditing_time` datetime DEFAULT NULL,
  `Null1` int(11) DEFAULT NULL,
  `Null2` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_auditing_view
-- ----------------------------

-- ----------------------------
-- Table structure for `t_buy_view`
-- ----------------------------
DROP TABLE IF EXISTS `t_buy_view`;
CREATE TABLE `t_buy_view` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `User_idUser` int(11) NOT NULL,
  `View_id` int(11) NOT NULL,
  `Integral` int(5) DEFAULT NULL,
  `Buy_time` datetime NOT NULL,
  `Null1` int(11) DEFAULT NULL,
  `Null2` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_buy_view
-- ----------------------------

-- ----------------------------
-- Table structure for `t_edit_view`
-- ----------------------------
DROP TABLE IF EXISTS `t_edit_view`;
CREATE TABLE `t_edit_view` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Admin_id` int(4) NOT NULL,
  `Auditing_view_id` int(11) NOT NULL,
  `show` tinyint(2) NOT NULL,
  `Browsing_volume` int(11) DEFAULT NULL,
  `Null1` int(11) DEFAULT NULL,
  `Null2` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_edit_view
-- ----------------------------

-- ----------------------------
-- Table structure for `t_father_message`
-- ----------------------------
DROP TABLE IF EXISTS `t_father_message`;
CREATE TABLE `t_father_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `View_id` int(11) NOT NULL,
  `Userid` int(11) NOT NULL,
  `Content` varchar(500) NOT NULL,
  `Time` datetime NOT NULL,
  `Null1` int(11) DEFAULT NULL,
  `Null2` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_father_message
-- ----------------------------

-- ----------------------------
-- Table structure for `t_function`
-- ----------------------------
DROP TABLE IF EXISTS `t_function`;
CREATE TABLE `t_function` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `Classificatio` varchar(20) NOT NULL,
  `Fname` varchar(20) NOT NULL,
  `Add_time` datetime DEFAULT NULL,
  `Null1` int(11) DEFAULT NULL,
  `Null2` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_function
-- ----------------------------

-- ----------------------------
-- Table structure for `t_integral`
-- ----------------------------
DROP TABLE IF EXISTS `t_integral`;
CREATE TABLE `t_integral` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `User_id` int(11) NOT NULL,
  `Current_integral` int(8) DEFAULT NULL,
  `Use_integral` int(8) DEFAULT NULL,
  `Null1` int(11) DEFAULT NULL,
  `Null2` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_integral
-- ----------------------------

-- ----------------------------
-- Table structure for `t_reply_message`
-- ----------------------------
DROP TABLE IF EXISTS `t_reply_message`;
CREATE TABLE `t_reply_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Father_messageid` int(11) NOT NULL,
  `Userid` int(11) NOT NULL,
  `Reply_userid` int(11) NOT NULL,
  `Reply_content` varchar(500) NOT NULL,
  `Reply_time` datetime NOT NULL,
  `Null1` int(11) DEFAULT NULL,
  `Null2` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_reply_message
-- ----------------------------

-- ----------------------------
-- Table structure for `t_rfunction`
-- ----------------------------
DROP TABLE IF EXISTS `t_rfunction`;
CREATE TABLE `t_rfunction` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `Admin_id` int(5) NOT NULL,
  `Function_id` int(4) NOT NULL,
  `Add_time` datetime DEFAULT NULL,
  `Null1` int(11) DEFAULT NULL,
  `Null2` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_rfunction
-- ----------------------------

-- ----------------------------
-- Table structure for `t_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) NOT NULL,
  `Add_time` datetime NOT NULL,
  `Null1` int(11) DEFAULT NULL,
  `Null2` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role
-- ----------------------------

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(20) NOT NULL,
  `Phone_number` varchar(15) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Register_time` datetime NOT NULL,
  `Mailbox` varchar(50) NOT NULL,
  `Null1` int(11) DEFAULT NULL,
  `Null2` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------

-- ----------------------------
-- Table structure for `t_u_information`
-- ----------------------------
DROP TABLE IF EXISTS `t_u_information`;
CREATE TABLE `t_u_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `User_id` int(11) NOT NULL,
  `Content` varchar(200) DEFAULT NULL,
  `Head_pictur_url` varchar(150) DEFAULT NULL,
  `Null1` int(11) DEFAULT NULL,
  `Null2` int(11) DEFAULT NULL,
  `Null3` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_u_information
-- ----------------------------

-- ----------------------------
-- Table structure for `t_view_state`
-- ----------------------------
DROP TABLE IF EXISTS `t_view_state`;
CREATE TABLE `t_view_state` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `T_State_name` varchar(15) NOT NULL,
  `Null1` int(11) DEFAULT NULL,
  `Null2` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_view_state
-- ----------------------------

-- ----------------------------
-- Table structure for `t_view_type`
-- ----------------------------
DROP TABLE IF EXISTS `t_view_type`;
CREATE TABLE `t_view_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Tname` varchar(20) NOT NULL,
  `Null1` int(11) DEFAULT NULL,
  `Null2` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_view_type
-- ----------------------------
