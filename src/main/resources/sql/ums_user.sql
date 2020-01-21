/*
 Navicat Premium Data Transfer

 Source Server         : zeromysql
 Source Server Type    : MySQL
 Source Server Version : 50728
 Source Host           : 47.97.41.157:3306
 Source Schema         : mall

 Target Server Type    : MySQL
 Target Server Version : 50728
 File Encoding         : 65001

 Date: 03/01/2020 13:47:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ums_member
-- u:user
-- ----------------------------
DROP TABLE IF EXISTS `ums_user`;
CREATE TABLE `ums_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uuid` binary(36) DEFAULT '' COMMENT '用户uuid',
`user_number` varchar(64) DEFAULT '' COMMENT '用户9位数账号',
  `password` varchar(64) DEFAULT '' COMMENT '密码',
  `nickname` varchar(64) DEFAULT '' COMMENT '昵称',
  `phone` varchar(64) DEFAULT '' COMMENT '手机号码',
  `status` int(1) DEFAULT 1 COMMENT '帐号启用状态:0->禁用；1->启用',
  `create_time` datetime DEFAULT NULL COMMENT '注册时间',
  `icon` varchar(500) DEFAULT '' COMMENT '头像',
  `gender` int(1) DEFAULT 0 COMMENT '性别：0->未知；1->男；2->女',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `personalized_signature` varchar(200) DEFAULT '' COMMENT '个性签名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_uuid` (`uuid`),
  UNIQUE KEY `idx_phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='会员表';

SET FOREIGN_KEY_CHECKS = 1;
