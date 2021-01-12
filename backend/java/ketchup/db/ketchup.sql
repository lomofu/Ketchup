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

 Date: 12/01/2021 00:40:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'id',
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
  `post_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'post id',
  `post_title` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `post_content` longtext COLLATE utf8mb4_bin NOT NULL,
  `post_create_time` datetime NOT NULL,
  `post_update_time` datetime NOT NULL,
  `post_size` int(20) DEFAULT '0',
  `post_mark` tinyint(4) DEFAULT '0',
  `post_errors` smallint(6) NOT NULL DEFAULT '0',
  `post_extra` text COLLATE utf8mb4_bin,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`post_id`),
  KEY `post_title_index` (`post_title`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of post
-- ----------------------------
BEGIN;
INSERT INTO `post` VALUES ('p1111', 'titke', 'aaaaaa', '2021-01-09 20:55:56', '2021-01-09 20:55:58', 12, 100, 0, '{}', 1);
COMMIT;

-- ----------------------------
-- Table structure for user_post_mapping
-- ----------------------------
DROP TABLE IF EXISTS `user_post_mapping`;
CREATE TABLE `user_post_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `post_id` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_index` (`user_id`) USING BTREE,
  KEY `post_id_index` (`post_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of user_post_mapping
-- ----------------------------
BEGIN;
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
