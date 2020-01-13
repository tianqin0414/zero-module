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
-- mms m:moment
-- ----------------------------
DROP TABLE IF EXISTS `mms_moment`;
CREATE TABLE `ums_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uuid` binary(36) DEFAULT '' COMMENT '朋友圈uuid',
  `ums_user_id` binary(36) DEFAULT '' COMMENT 'ums_user_uuid',
 `content` varchar(200) DEFAULT '' COMMENT '内容限制144个字',
 `album_pics` json(720) DEFAULT '' COMMENT '画册图片，限制为9张，json格式',
 `short_video` varchar(255) DEFAULT '' COMMENT '短视频',
 `long_video` varchar(255) DEFAULT '' COMMENT '长视频',
 `price` decimal(10,2) DEFAULT 0 COMMENT '朋友圈长视频价格(未发布广场)',
 `promotion_price` decimal(10,2) DEFAULT 0 COMMENT '朋友圈促销价格(未发布广场)',
 `topublic_status` int(1) DEFAULT 0 COMMENT '发布广场:0->不发布；1->发布',
 `delete_status` int(1) DEFAULT 0 COMMENT '删除状态：0->未删除；1->已删除',
 `verify_status` int(1) DEFAULT 0 COMMENT '审核状态：0->未审核；1->审核通过',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_moment_id` (`moment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='朋友圈';

SET FOREIGN_KEY_CHECKS = 1;