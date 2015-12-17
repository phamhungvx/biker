/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50626
Source Host           : localhost:3306
Source Database       : biker24h

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2015-12-18 00:02:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for 0_admin
-- ----------------------------
DROP TABLE IF EXISTS `0_admin`;
CREATE TABLE `0_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `slat` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `birthday` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(1) NOT NULL,
  `create_date` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for 0_comments
-- ----------------------------
DROP TABLE IF EXISTS `0_comments`;
CREATE TABLE `0_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment` text,
  `parent` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `datetime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for 0_menus
-- ----------------------------
DROP TABLE IF EXISTS `0_menus`;
CREATE TABLE `0_menus` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `parent` int(11) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `target` varchar(20) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `type` int(1) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for 0_options
-- ----------------------------
DROP TABLE IF EXISTS `0_options`;
CREATE TABLE `0_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `option_name` varchar(255) NOT NULL,
  `option_value` varchar(255) NOT NULL,
  `create_date` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for 0_posts
-- ----------------------------
DROP TABLE IF EXISTS `0_posts`;
CREATE TABLE `0_posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `thumbnai` varchar(255) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `createBy` int(11) NOT NULL,
  `createDate` int(11) NOT NULL,
  `except` varchar(255) DEFAULT NULL,
  `status` int(1) NOT NULL,
  `comment_status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for 0_users
-- ----------------------------
DROP TABLE IF EXISTS `0_users`;
CREATE TABLE `0_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `slat` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `birthday` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(1) NOT NULL,
  `create_date` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for 1_admin
-- ----------------------------
DROP TABLE IF EXISTS `1_admin`;
CREATE TABLE `1_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `slat` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `birthday` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(1) NOT NULL,
  `create_date` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for 1_comments
-- ----------------------------
DROP TABLE IF EXISTS `1_comments`;
CREATE TABLE `1_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment` text,
  `parent` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `datetime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for 1_menus
-- ----------------------------
DROP TABLE IF EXISTS `1_menus`;
CREATE TABLE `1_menus` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `parent` int(11) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `target` varchar(20) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `type` int(1) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for 1_options
-- ----------------------------
DROP TABLE IF EXISTS `1_options`;
CREATE TABLE `1_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `option_name` varchar(255) NOT NULL,
  `option_value` varchar(255) NOT NULL,
  `create_date` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for 1_posts
-- ----------------------------
DROP TABLE IF EXISTS `1_posts`;
CREATE TABLE `1_posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `thumbnai` varchar(255) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `createBy` int(11) NOT NULL,
  `createDate` int(11) NOT NULL,
  `except` varchar(255) DEFAULT NULL,
  `status` int(1) NOT NULL,
  `comment_status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for 1_users
-- ----------------------------
DROP TABLE IF EXISTS `1_users`;
CREATE TABLE `1_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `slat` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `birthday` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(1) NOT NULL,
  `create_date` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sites
-- ----------------------------
DROP TABLE IF EXISTS `sites`;
CREATE TABLE `sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_name` varchar(255) NOT NULL,
  `site_slug` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `create_date` int(11) NOT NULL,
  `expiry_date` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `slat` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `birthday` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(1) NOT NULL,
  `create_date` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
