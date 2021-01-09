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

 Date: 09/01/2021 22:01:31
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
  PRIMARY KEY (`id`),
  KEY `email_index` (`email`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of account
-- ----------------------------
BEGIN;
INSERT INTO `account` VALUES ('1111', 'test', 'test@test.com', '110', 3, 'http://wwwww', '2021-01-08 17:35:50', 'sdsxsdsd', 'english', 'student', 'p1111', 1);
COMMIT;

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `post_id` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT 'post id',
  `post_title` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `post_content` longtext COLLATE utf8mb4_bin NOT NULL,
  `post_create_time` datetime NOT NULL,
  `post_update_time` datetime NOT NULL,
  `post_size` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `post_mark` int(11) DEFAULT NULL,
  `post_errors` int(11) NOT NULL DEFAULT '0',
  `post_extra` text COLLATE utf8mb4_bin,
  `user_id` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of post
-- ----------------------------
BEGIN;
INSERT INTO `post` VALUES ('p1111', 'titke', 'aaaaaa', '2021-01-09 20:55:56', '2021-01-09 20:55:58', '', 100, 0, '{}', '11111', 1);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
