/*
 Navicat Premium Data Transfer

 Source Server         : local_db
 Source Server Type    : MySQL
 Source Server Version : 50739
 Source Host           : localhost:3306
 Source Schema         : bookshop

 Target Server Type    : MySQL
 Target Server Version : 50739
 File Encoding         : 65001

 Date: 10/12/2022 13:54:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cover` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `image1` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `image2` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` float NULL DEFAULT NULL,
  `author` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `intro` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stock` int(11) NULL DEFAULT NULL,
  `type_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_type_id_idx`(`type_id`) USING BTREE,
  CONSTRAINT `fk_type_id` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 182 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (15, 'Anna Karenina (Rosamund Bartlett)', '/picture/15-1.jpg', '/picture/15-1.jpg', '/picture/15-1.jpg', 492, 'Leo Tolstoy', '女性主義專題Ａ-本課程立意以「表演藝術」作為社會實踐與人文批判的教學策略，透過業界專業師資的引進，嘗試建立一套表演藝術教學實作教學系統，引導學生在藝術創作的實踐中， 提升自主學習能力並建立跨域合作方法。', 0, 1);
INSERT INTO `goods` VALUES (25, 'Classical mechanics', '/picture/25-1.jpg', '/picture/25-1.jpg', '/picture/25-1.jpg', 3598, 'John R. Taylor', '力學- By analyzing classical mechanical systems with vector calculus and linear algebra, the main objective of this course is to prepare the students for more advanced physics courses. ', 3, 2);
INSERT INTO `goods` VALUES (40, 'Advanced Engineering Mathema', '/picture/40-1.jpg', '/picture/40-1.jpg', '/picture/40-1.jpg', 1800, 'Erwin Kreyszig', ' 工程數學 Ｉ-本課程教學目標主要在於訓練學生解決工程相關問題的數學能力，讓學生能夠從較實務性的工程相關問題和物理問題中，理解它們和數學上的相關性。藉由本課程中學得的數學能力，以解決工程上相關的問題。', 10, 3);
INSERT INTO `goods` VALUES (55, '計算機概論(第四版)(Forouzan 4/e)', '/picture/55.jpg', '/picture/55.jpg', '/picture/55.jpg', 540, '林仁勇', 'IM1001-* 計算機概論Ｉ本課程的主要目標在對大一同學介紹與資管領域相關與需要認識的電腦科技， 使同學對這些科技能有基本概念， 以做為未來各個相關課程的基礎。因此，本課程將提供廣度的多領域介紹。為達成上述目標，本課程內容包括：(1)介紹電腦的整體架構，以對電腦有整體概念。', 7, 4);
INSERT INTO `goods` VALUES (82, 'Handbook of Applied Cryptography', '/picture/82.jpg', '/picture/82.jpg', '/picture/82.jpg', 2583, 'Alfred J.', '這門課程旨在用科技與社會的角度去理解資安與隱私的重要性，如何用賽局的角度去理解敵人，如何設計安全穩定的系統。此課程重點為用寬廣的角度去理解世界上各式各樣的資安問題，並不著重深入討論資安相關技術，例如:駭客、CODING、資安管理等。', 10, 5);
INSERT INTO `goods` VALUES (114, 'Mesoscale Meteorology in Midlatitudes', '/picture/114.jpg', '/picture/114.jpg', '/picture/114.jpg', 2398, 'Paul Markowski, Yvette Richardson', '本課程目的為介紹中尺度天氣現象, 並就各種不同的中尺度天氣系統, 說明它們的生成機制、內部的結構、物理與動力過程、維持機制等。透過專題報告的方式，幫助學生了解實際中尺度天氣個案。', 9, 6);

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `total` float NULL DEFAULT NULL,
  `amount` int(6) NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT NULL,
  `paytype` tinyint(1) NULL DEFAULT NULL,
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `datetime` datetime NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_user_id_idx`(`user_id`) USING BTREE,
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 80 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES (75, 28, 1, 4, 2, '管理員', '1333333333', '美國', '2022-10-07 12:31:07', 1);
INSERT INTO `order` VALUES (76, 600, 2, 1, 1, 'vili', '1344444444', '美國', '2022-12-03 13:31:29', 2);
INSERT INTO `order` VALUES (78, 72, 2, 3, 1, '林俊霆', '電話不給', '地址不想給', '2022-12-10 13:40:21', 41);
INSERT INTO `order` VALUES (79, 64, 2, 2, 2, 'vili', '1344444444', '美國', '2022-12-10 13:49:45', 2);

-- ----------------------------
-- Table structure for orderitem
-- ----------------------------
DROP TABLE IF EXISTS `orderitem`;
CREATE TABLE `orderitem`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` float NULL DEFAULT NULL,
  `amount` int(11) NULL DEFAULT NULL,
  `goods_id` int(11) NULL DEFAULT NULL,
  `order_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_order_id_idx`(`order_id`) USING BTREE,
  INDEX `fk_orderitem_goods_id_idx`(`goods_id`) USING BTREE,
  CONSTRAINT `fk_order_id` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_orderitem_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 84 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orderitem
-- ----------------------------
INSERT INTO `orderitem` VALUES (78, 28, 1, 55, 75);
INSERT INTO `orderitem` VALUES (79, 300, 2, 15, 76);
INSERT INTO `orderitem` VALUES (81, 36, 2, 55, 78);
INSERT INTO `orderitem` VALUES (82, 28, 1, 114, 79);
INSERT INTO `orderitem` VALUES (83, 36, 1, 55, 79);

-- ----------------------------
-- Table structure for recommend
-- ----------------------------
DROP TABLE IF EXISTS `recommend`;
CREATE TABLE `recommend`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NULL DEFAULT NULL,
  `goods_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_goods_id_idx`(`goods_id`) USING BTREE,
  CONSTRAINT `fk_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of recommend
-- ----------------------------
INSERT INTO `recommend` VALUES (9, 1, 15);
INSERT INTO `recommend` VALUES (10, 1, 25);
INSERT INTO `recommend` VALUES (11, 1, 40);
INSERT INTO `recommend` VALUES (12, 2, 55);
INSERT INTO `recommend` VALUES (13, 3, 82);
INSERT INTO `recommend` VALUES (14, 2, 114);

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES (1, '英美語文學系');
INSERT INTO `type` VALUES (2, '物理學系');
INSERT INTO `type` VALUES (3, '機械工程學系');
INSERT INTO `type` VALUES (4, '資訊管理學系');
INSERT INTO `type` VALUES (5, '資訊工程學系');
INSERT INTO `type` VALUES (6, '大氣科學學系');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(85) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `isadmin` bit(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username_UNIQUE`(`username`) USING BTREE,
  UNIQUE INDEX `email_UNIQUE`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', 'admin@gmail.com', '$2a$10$FdNRmAeG9VTPy7.m7.CXmu5opagl1v876xqHS6n8dTW1/6SK1blra', '管理員', '1333333333', '美國', b'1');
INSERT INTO `user` VALUES (2, 'vili', 'vili@gmail.com', '$2a$10$duKyYeM3FEQ9z3IS9qxhlu71vRaCCQvePb0ZtkfJVsXgGiQY4Rsyq', 'vili', '1344444444', '美國', b'0');
INSERT INTO `user` VALUES (41, 'junting', 'junting@ncu.edu.tw', '$2a$10$G1gDeimORybHlXLOqVgnBe/sZdR1/LjR28FNikFdKFT2IjoaWMDJm', '', '', '', b'0');

SET FOREIGN_KEY_CHECKS = 1;
