/*
 Navicat Premium Data Transfer

 Source Server         : L
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : student

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 16/05/2019 06:57:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for dormroom
-- ----------------------------
DROP TABLE IF EXISTS `dormroom`;
CREATE TABLE `dormroom`  (
  `sno` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sname` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sex` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sdept` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dno` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `scheckin` date NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dormroom
-- ----------------------------
INSERT INTO `dormroom` VALUES ('0308', '小小', '男', '物联网', '408', '2016-09-01');
INSERT INTO `dormroom` VALUES ('0313', '女女', '女', '物联网', '666', '2016-09-01');
INSERT INTO `dormroom` VALUES ('0306', '男男', '男', '物联王', '408', '2016-09-01');

-- ----------------------------
-- Table structure for lr
-- ----------------------------
DROP TABLE IF EXISTS `lr`;
CREATE TABLE `lr`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Sno` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dno` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Ltime` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Lreturn` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lr
-- ----------------------------
INSERT INTO `lr` VALUES (1, '0308', '408', '2019-01-15', '2019-02-17');
INSERT INTO `lr` VALUES (2, '0308', '408', '2019-07-05', '2019-09-02');

-- ----------------------------
-- Table structure for record
-- ----------------------------
DROP TABLE IF EXISTS `record`;
CREATE TABLE `record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sno` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `dno` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `btime` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `breason` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of record
-- ----------------------------
INSERT INTO `record` VALUES (1, '0308', '408', '2019-12-31-23:30', '跨年');
INSERT INTO `record` VALUES (2, '0308', '408', '2019-02-17-22:50', '地铁没赶上');
INSERT INTO `record` VALUES (3, '0207', '758', '2019-02-07-22:50', '兼职');

-- ----------------------------
-- Table structure for service
-- ----------------------------
DROP TABLE IF EXISTS `service`;
CREATE TABLE `service`  (
  `dno` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `pno` int(11) NULL DEFAULT NULL,
  `rsubmit` date NULL DEFAULT NULL,
  `rsolve` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `reason` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of service
-- ----------------------------
INSERT INTO `service` VALUES ('408', 2, '2019-02-06', NULL, '床坏了', 2);
INSERT INTO `service` VALUES ('408', 3, '2019-02-12', NULL, '椅子坏了', 3);
INSERT INTO `service` VALUES ('408', 4, '2019-02-09', NULL, '门坏了', 4);
INSERT INTO `service` VALUES ('408', 5, '2019-01-16', '2019-02-14', '就是坏了', 5);
INSERT INTO `service` VALUES ('408', 6, '2019-02-18', NULL, '好多坏了', 6);
INSERT INTO `service` VALUES ('408', 7, '2019-01-15', NULL, '你猜', 7);
INSERT INTO `service` VALUES ('666', 1, '2018-09-18', NULL, '床榻了', 8);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `uname` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `upassword` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `utype` int(11) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('小小', '123', 1);
INSERT INTO `users` VALUES ('女女', '234', 1);
INSERT INTO `users` VALUES ('大妈', '111', 2);

-- ----------------------------
-- Table structure for wexpress
-- ----------------------------
DROP TABLE IF EXISTS `wexpress`;
CREATE TABLE `wexpress`  (
  `sname` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dno` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `marrive` date NULL DEFAULT NULL,
  `mreceive` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `mnumber` int(11) NULL DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wexpress
-- ----------------------------
INSERT INTO `wexpress` VALUES ('小小', '408', '2019-02-01', '2019-02-09', 0, 1);
INSERT INTO `wexpress` VALUES ('女女', '666', '2019-02-07', NULL, 4, 2);
INSERT INTO `wexpress` VALUES ('男男', '408', '2019-02-19', NULL, 2, 3);
INSERT INTO `wexpress` VALUES ('小明', '234', '2019-03-12', NULL, 2, 4);
INSERT INTO `wexpress` VALUES ('小李', '435', '2019-03-01', NULL, 6, 5);
INSERT INTO `wexpress` VALUES ('晓红', '267', '2019-03-11', NULL, 2, 7);
INSERT INTO `wexpress` VALUES ('小赵', '726', '2019-03-01', NULL, 1, 8);
INSERT INTO `wexpress` VALUES ('小刘', '478', '2018-12-27', NULL, 7, 9);
INSERT INTO `wexpress` VALUES ('铁柱', '765', '2018-09-08', NULL, 2, 10);

SET FOREIGN_KEY_CHECKS = 1;
