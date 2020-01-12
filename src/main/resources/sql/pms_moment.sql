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
-- Table structure for pms_moment
-- pms p:publish
-- ----------------------------
DROP TABLE IF EXISTS `pms_moment`;
CREATE TABLE `ums_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uuid` binary(36) DEFAULT NULL '朋友圈uuid',
  `ums_user_id` binary(36) DEFAULT NULL 'ums_user_uuid',

  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_moment_id` (`moment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='会员表';

SET FOREIGN_KEY_CHECKS = 1;
