/*
 Navicat Premium Data Transfer

 Source Server         : @192.168.20.20
 Source Server Type    : MySQL
 Source Server Version : 50733
 Source Host           : 192.168.20.20:3306
 Source Schema         : cat_user_srv

 Target Server Type    : MySQL
 Target Server Version : 50733
 File Encoding         : 65001

 Date: 13/03/2021 01:32:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mobile` varchar(11) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nickname` varchar(20) NOT NULL DEFAULT '',
  `avatar` varchar(200) NOT NULL DEFAULT '',
  `birthday` date DEFAULT NULL,
  `address` varchar(200) NOT NULL DEFAULT '',
  `description` text,
  `gender` tinyint(1) NOT NULL,
  `role` int(11) NOT NULL,
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_mobile` (`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES (1, '13390703500', '$pbkdf2-sha256$29000$N8b431tr7T3nXOvde.99Dw$v8yl77.qkK/amr105S/qkZYEEmPXpoYPf1abIyVhGdI', 'finnley-0', '', NULL, '', NULL, 1, 1, '2021-03-06 12:48:12', '2021-03-06 12:48:12', NULL);
INSERT INTO `user` VALUES (2, '13390703501', '$pbkdf2-sha256$29000$9r4XAmDsXQuBsDZmDME4Bw$4wmzL7jkzekonPVQUrkrFvdSsKpe94pg2Efi7dhesN4', 'finnley-1', '', NULL, '', NULL, 1, 1, '2021-03-06 12:48:12', '2021-03-06 12:48:12', NULL);
INSERT INTO `user` VALUES (3, '13390703502', '$pbkdf2-sha256$29000$7f1/D6HU2tsbI2QMAYBwbg$zUNunx/LQyj3rNA1Nq7sPDD4e2tuwToborY2a1OTCmU', 'finnley-2', '', NULL, '', NULL, 1, 1, '2021-03-06 12:48:12', '2021-03-06 12:48:12', NULL);
INSERT INTO `user` VALUES (4, '13390703503', '$pbkdf2-sha256$29000$H8OY03rPmVMqJUQoxZjzvg$AlZ2yfIwYHxE/iFJiG9fOPgSDEcKjk/M5qNpYTjzyes', 'finnley-3', '', NULL, '', NULL, 1, 1, '2021-03-06 12:48:12', '2021-03-06 12:48:12', NULL);
INSERT INTO `user` VALUES (5, '13390703504', '$pbkdf2-sha256$29000$jhHinHMuhTCmlPJ.j7H2Xg$aXxPvQ8gG8L.OiJhgf95deJh1cHMRsQzQWydPfIKAJo', 'finnley-4', '', NULL, '', NULL, 1, 1, '2021-03-06 12:48:12', '2021-03-06 12:48:12', NULL);
INSERT INTO `user` VALUES (6, '13390703505', '$pbkdf2-sha256$29000$oJRyrtX6v5cSglDK.X.PEQ$xaZdtl3tzilAIb2Rl8SEPXeMbahJXxvuY9brFt5QhRs', 'finnley-5', '', NULL, '', NULL, 1, 1, '2021-03-06 12:48:12', '2021-03-06 12:48:12', NULL);
INSERT INTO `user` VALUES (7, '13390703543', '$pbkdf2-sha256$29000$7r03RsiZEyKk9P4/J2SsFQ$G4hOIHIfE.2g1OO29V0b.6VMDn5HFY0M26EQVTFutf4', 'finnley-6', '', NULL, '', NULL, 1, 1, '2021-03-06 12:48:12', '2021-03-06 12:48:12', NULL);
INSERT INTO `user` VALUES (8, '13390703507', '$pbkdf2-sha256$29000$x3jP2fs/Z2yNcW5tDWEsxQ$0PIH70RUY5OLp75zYgXMyAQcDrD45Rmm54cspAcZ.CM', 'finnley-7', '', NULL, '', NULL, 1, 1, '2021-03-06 12:48:12', '2021-03-06 12:48:12', NULL);
INSERT INTO `user` VALUES (9, '13390703508', '$pbkdf2-sha256$29000$Zgxh7F0Lwbi3VkpJKcWYsw$2gKzWnVRUNTkHphaLykHMqnu40k6N77y0kBVUcQqSqg', 'finnley-8', '', NULL, '', NULL, 1, 1, '2021-03-06 12:48:12', '2021-03-06 12:48:12', NULL);
INSERT INTO `user` VALUES (10, '13390703509', '$pbkdf2-sha256$29000$EiKEUCrFWIsxplRqjdHauw$yu3ttC9m2tRqa9Cpx4HD3cc53y.zxvCjBtazaZT2hLc', 'finnley-9', '', NULL, '', NULL, 1, 1, '2021-03-06 12:48:12', '2021-03-06 12:48:12', NULL);
INSERT INTO `user` VALUES (11, '13390703506', '$pbkdf2-sha256$29000$Qei9N8Y4p3RuLYUQYmwtJQ$ySdAnnJilH5rVal3q/cbt10/dXIagQSIKnw98UG.BFo', '13390703506', '', NULL, '', NULL, 1, 1, '2021-03-10 21:52:21', '2021-03-10 21:52:21', NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
