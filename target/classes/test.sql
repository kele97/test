/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80015
 Source Host           : localhost:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 80015
 File Encoding         : 65001

 Date: 04/06/2020 05:39:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for record
-- ----------------------------
DROP TABLE IF EXISTS `record`;
CREATE TABLE `record`  (
  `recordId` int(10) NOT NULL AUTO_INCREMENT COMMENT '记录Id',
  `roomId` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '房间Id',
  `date` date NOT NULL COMMENT '日期',
  `startTime` int(2) NOT NULL COMMENT '开始时间',
  `endTime` int(2) NOT NULL COMMENT '结束时间',
  `subscriber` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '预约者',
  `phone` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `reason` int(2) NOT NULL COMMENT '原因',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `registerId` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '登录者ID',
  `updateId` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者ID',
  `registerDate` date NOT NULL COMMENT '登录时间',
  `updateDate` date NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`recordId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of record
-- ----------------------------
INSERT INTO `record` VALUES (1, '1', '2020-06-04', 1, 1, '1', '1', '1', 1, '1', '1', '1', '2020-06-04', '2020-06-04');
INSERT INTO `record` VALUES (2, '1', '2020-06-04', 0, 1, '1', '1', '', 0, '									', '0001', NULL, '2020-06-04', NULL);
INSERT INTO `record` VALUES (3, '1', '2020-06-04', 0, 1, '1', '1', '', 0, '									', '0001', NULL, '2020-06-04', NULL);
INSERT INTO `record` VALUES (4, '1', '2020-06-04', 2, 4, '1', '1', '', 0, '									', '0001', NULL, '2020-06-04', NULL);
INSERT INTO `record` VALUES (5, '1', '2020-06-04', 3, 4, '1', '1', '', 0, '									', '0001', NULL, '2020-06-04', NULL);
INSERT INTO `record` VALUES (6, '1', '2020-06-04', 3, 4, '1', '1', '', 0, '									', '0001', NULL, '2020-06-04', NULL);
INSERT INTO `record` VALUES (7, '1', '2020-06-04', 3, 4, '1', '1', '', 0, '									', '0001', NULL, '2020-06-04', NULL);
INSERT INTO `record` VALUES (8, '1', '2020-06-04', 3, 4, '1', '1', '', 0, '									', '0001', NULL, '2020-06-04', NULL);
INSERT INTO `record` VALUES (9, '1', '2020-06-04', 3, 4, '1', '1', '', 0, '									', '0001', NULL, '2020-06-04', NULL);
INSERT INTO `record` VALUES (10, '1', '2020-06-05', 2, 4, '1', '1', '', 0, '									', '0001', NULL, '2020-06-04', NULL);
INSERT INTO `record` VALUES (11, '1', '2020-06-05', 3, 4, '1', '1', '', 0, '									', '0001', NULL, '2020-06-04', NULL);

SET FOREIGN_KEY_CHECKS = 1;
