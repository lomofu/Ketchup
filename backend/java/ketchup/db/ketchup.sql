/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : ketchup

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 08/01/2021 20:01:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `id` varchar(18) COLLATE utf8mb4_bin NOT NULL COMMENT 'id',
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL COMMENT 'name',
  `email` varchar(255) COLLATE utf8mb4_bin NOT NULL COMMENT 'email',
  `phone` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'phone number',
  `gender` tinyint(1) NOT NULL DEFAULT '3' COMMENT 'gender',
  `avatar_url` varchar(255) COLLATE utf8mb4_bin NOT NULL COMMENT 'avatar',
  `create_time` datetime NOT NULL COMMENT 'create time',
  `password` varchar(255) COLLATE utf8mb4_bin NOT NULL COMMENT 'password',
  `language` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT 'default language',
  `position` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'occupation',
  `preference_id` varchar(255) COLLATE utf8mb4_bin NOT NULL COMMENT 'preference setting',
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'is active or not',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of account
-- ----------------------------
BEGIN;
INSERT INTO `account` VALUES ('1111', 'test', 'test@test.com', '110', 3, 'http://wwwww', '2021-01-08 17:35:50', 'sdsxsdsd', 'english', 'student', 'p1111', 1);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
