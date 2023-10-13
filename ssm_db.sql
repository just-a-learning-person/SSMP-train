/*
 Navicat Premium Data Transfer

 Source Server         : link
 Source Server Type    : MySQL
 Source Server Version : 80034
 Source Host           : localhost:3306
 Source Schema         : ssm_db

 Target Server Type    : MySQL
 Target Server Version : 80034
 File Encoding         : 65001

 Date: 13/10/2023 15:00:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_book
-- ----------------------------
DROP TABLE IF EXISTS `tbl_book`;
CREATE TABLE `tbl_book`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 64 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_book
-- ----------------------------
INSERT INTO `tbl_book` VALUES (1, '计算机理论', 'Spring实战 第5版', 'Spring入门经典教程，深入理解Spring原理技术内幕');
INSERT INTO `tbl_book` VALUES (2, '计算机理论', 'Spring5核心原理与30个类手写实战', '十年沉淀之作，手写Spring精华思想');
INSERT INTO `tbl_book` VALUES (3, '计算机理论', 'Spring5设计模式', '深入Spring源码剖析Spring源码中蕴含的10大设计模式');
INSERT INTO `tbl_book` VALUES (4, '计算机理论', 'Spring MVC+MyBatis开发从入门到项目实战', '全方位解析面向Web应用的轻量级框架，带你成为Spring MVC开发高手');
INSERT INTO `tbl_book` VALUES (5, '计算机理论', '轻量级Java Web企业应用实战', '源码级剖析Spring框架，适合已掌握Java基础的读者');
INSERT INTO `tbl_book` VALUES (6, '计算机理论', 'Java核心技术卷I基础知识 (原书第11版)', 'Core Java 第11版，Jolt大奖获奖作品，针对Java SE9、10、11全面更新');
INSERT INTO `tbl_book` VALUES (7, '计算机理论', '深入理解Java虚拟机', '5个维度全面剖析JVM，大厂面试知识点全双盖');
INSERT INTO `tbl_book` VALUES (8, '计算机理论', 'Java编程思想 (第4版)', 'Java学习必读经典殿堂级著作!赢得了全球程序员的广泛赞誉');
INSERT INTO `tbl_book` VALUES (9, '计算机理论', '零基础学Java(全彩版)', '零基础自学编程的入门图书，由浅入深，详解Java语言的编程思想和核心技术');
INSERT INTO `tbl_book` VALUES (10, '市场营销', '直播就该这么做:主播高效沟通实战指南', '李子柒、李佳琦、薇娅成长为网红的秘密都在书中');
INSERT INTO `tbl_book` VALUES (11, '市场营销', '直播销讲实战一本通', '和秋叶一起学系列网络营销书籍');
INSERT INTO `tbl_book` VALUES (13, '测试类型', '测试数据', '测试描述数据');
INSERT INTO `tbl_book` VALUES (14, '测试数据update', '测试数据update', '测试数据update');
INSERT INTO `tbl_book` VALUES (17, '测试数据fwvwxc', '测试数据1fdsfs', '测试数据2fdsfc4');
INSERT INTO `tbl_book` VALUES (52, '123', '1234', '123');
INSERT INTO `tbl_book` VALUES (53, '123', '1234', '123');
INSERT INTO `tbl_book` VALUES (54, '的方式', 'ds f', ' 第三方');
INSERT INTO `tbl_book` VALUES (56, '人ew', ' 额我', '热望');
INSERT INTO `tbl_book` VALUES (60, '发顺丰', 'f发顺丰', '发生范德萨');
INSERT INTO `tbl_book` VALUES (62, '测试数据123', '测试数据123', '测试数据234');
INSERT INTO `tbl_book` VALUES (63, '测试数据123', '测试数据123', '测试数据234');
INSERT INTO `tbl_book` VALUES (64, '测试数据123', '测试数据123', '测试数据234');

SET FOREIGN_KEY_CHECKS = 1;
