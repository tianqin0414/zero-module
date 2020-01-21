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
CREATE TABLE `mms_moment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uuid` binary(36) DEFAULT '' COMMENT '朋友圈uuid',
  `ums_user_id` binary(36) DEFAULT '' COMMENT 'ums_user_uuid',
 `content` varchar(200) DEFAULT '' COMMENT '内容限制144个字',
 `album_pics` JSON DEFAULT NULL COMMENT '画册图片，限制为9张，json格式',
 `short_video` varchar(255) DEFAULT '' COMMENT '短视频',
 `long_video` varchar(255) DEFAULT '' COMMENT '长视频',
 `price` decimal(10,2) DEFAULT 0 COMMENT '朋友圈长视频价格(未发布广场)',
 `promotion_price` decimal(10,2) DEFAULT 0 COMMENT '朋友圈促销价格(未发布广场)',
 `limit_status` int(1) DEFAULT 0 COMMENT '朋友圈权限:0->所有人(需审核)；1->粉丝可见;2->铁粉(好友)可见;3->仅自己可见',
 `delete_status` int(1) DEFAULT 0 COMMENT '删除状态：0->未删除；1->已删除',
 `verify_status` int(1) DEFAULT 0 COMMENT '审核状态：0->未审核；1->审核通过',
`create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_uuid` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='朋友圈';

SET FOREIGN_KEY_CHECKS = 1;