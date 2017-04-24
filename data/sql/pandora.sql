/*
Navicat MySQL Data Transfer

Source Server         : fiveTeamProject
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : pandora

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2017-04-24 10:52:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `goods_id` int(255) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `goods_name` varchar(255) DEFAULT NULL,
  `goods_new_price` decimal(10,2) DEFAULT NULL,
  `goods_old_price` decimal(10,2) DEFAULT NULL,
  `goods_discount` varchar(255) DEFAULT NULL,
  `goods_small_img` varchar(255) DEFAULT NULL,
  `goods_message` varchar(255) DEFAULT NULL,
  `goods_big_img` varchar(255) DEFAULT NULL,
  `goods_count` varchar(255) DEFAULT NULL,
  `goods_size` varchar(255) DEFAULT NULL,
  `goods_color` varchar(255) DEFAULT NULL,
  `goods_collection` varchar(255) DEFAULT NULL,
  `goods_star` varchar(255) DEFAULT NULL,
  `mark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10002 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('10001', '88001', '99001', '商品名称', '88.00', '77.00', '9折', '小图片地址', '商品描述', '大图片地址', '99', '[S,M,L,XXL]', '[红，绿，蓝]', '99', '5', '备注');

-- ----------------------------
-- Table structure for goods_brand
-- ----------------------------
DROP TABLE IF EXISTS `goods_brand`;
CREATE TABLE `goods_brand` (
  `brand_id` int(255) NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(255) DEFAULT NULL,
  `brand_name_en` varchar(255) DEFAULT NULL,
  `brand_messsage_title` varchar(255) DEFAULT NULL,
  `brand_messsage_detail` varchar(255) DEFAULT NULL,
  `brand_img_small` varchar(255) DEFAULT NULL,
  `brand_img_big` varchar(255) DEFAULT NULL,
  `brand_mark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=99002 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_brand
-- ----------------------------
INSERT INTO `goods_brand` VALUES ('99001', '品牌', '品牌英文', null, null, null, null, null);

-- ----------------------------
-- Table structure for goods_type
-- ----------------------------
DROP TABLE IF EXISTS `goods_type`;
CREATE TABLE `goods_type` (
  `type_id` int(255) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(255) DEFAULT NULL,
  `type_name_en` varchar(255) DEFAULT NULL,
  `type_messsage_title` varchar(255) DEFAULT NULL,
  `type_messsage_detail` varchar(255) DEFAULT NULL,
  `type_img_small` varchar(255) DEFAULT NULL,
  `type_img_big` varchar(255) DEFAULT NULL,
  `type_mark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=88002 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_type
-- ----------------------------
INSERT INTO `goods_type` VALUES ('88001', '类型名称', '类型英文', null, null, null, null, null);

-- ----------------------------
-- Table structure for ralation
-- ----------------------------
DROP TABLE IF EXISTS `ralation`;
CREATE TABLE `ralation` (
  `user_id` int(11) NOT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `buy_number` int(11) DEFAULT NULL,
  `buy_address` varchar(255) DEFAULT NULL,
  `buy_time` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ralation
-- ----------------------------
INSERT INTO `ralation` VALUES ('70001', '10001', '2', '广州天河', '2017-04-24 10:51:42');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_nickname` varchar(255) DEFAULT NULL,
  `user_img` varchar(255) DEFAULT NULL,
  `user_phone` int(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_qq` varchar(255) DEFAULT NULL,
  `user_star` varchar(255) DEFAULT NULL,
  `user_status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('70001', '用户名称', '用户昵称', null, null, null, null, '用户等级', '用户状态');
