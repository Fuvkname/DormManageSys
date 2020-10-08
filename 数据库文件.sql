/*
Navicat MySQL Data Transfer

Source Server         : link
Source Server Version : 80020
Source Host           : localhost:3306
Source Database       : ssm_dorm_manage

Target Server Type    : MYSQL
Target Server Version : 80020
File Encoding         : 65001

Date: 2020-10-08 16:29:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_admin
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin`;
CREATE TABLE `tb_admin` (
  `id` int NOT NULL COMMENT 'id',
  `username` varchar(255) NOT NULL COMMENT '用户名',
  `password` varchar(255) NOT NULL COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of tb_admin
-- ----------------------------
INSERT INTO `tb_admin` VALUES ('1', '阿珍', '123456');

-- ----------------------------
-- Table structure for tb_dormitory
-- ----------------------------
DROP TABLE IF EXISTS `tb_dormitory`;
CREATE TABLE `tb_dormitory` (
  `building` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '楼栋',
  `room` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '宿舍号',
  `water` int NOT NULL DEFAULT '0' COMMENT '水费',
  `electricity` int NOT NULL DEFAULT '0' COMMENT '电费',
  `mem1id` int DEFAULT '0' COMMENT '成员1',
  `mem2id` int DEFAULT '0' COMMENT '成员2',
  `mem3id` int DEFAULT '0' COMMENT '成员3',
  `mem4id` int DEFAULT '0' COMMENT '成员4',
  PRIMARY KEY (`building`,`room`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of tb_dormitory
-- ----------------------------
INSERT INTO `tb_dormitory` VALUES ('01', '101', '12', '-69', '1', '2', '3', '10');
INSERT INTO `tb_dormitory` VALUES ('01', '102', '-100', '-22', '5', '6', '7', '8');
INSERT INTO `tb_dormitory` VALUES ('01', '103', '-90', '-70', '9', '10', '11', '12');
INSERT INTO `tb_dormitory` VALUES ('01', '201', '50', '95', '13', '14', '15', '16');
INSERT INTO `tb_dormitory` VALUES ('01', '202', '40', '100', '17', '18', '19', '20');
INSERT INTO `tb_dormitory` VALUES ('01', '203', '45', '90', '21', '22', '23', '24');
INSERT INTO `tb_dormitory` VALUES ('02', '101', '40', '85', '25', '26', '27', '28');
INSERT INTO `tb_dormitory` VALUES ('02', '102', '30', '70', '29', '30', '31', '32');
INSERT INTO `tb_dormitory` VALUES ('02', '103', '40', '80', '33', '34', '35', '36');
INSERT INTO `tb_dormitory` VALUES ('02', '201', '55', '110', '37', '38', '39', '40');
INSERT INTO `tb_dormitory` VALUES ('02', '202', '45', '95', '41', '42', '43', '44');
INSERT INTO `tb_dormitory` VALUES ('02', '203', '40', '105', '45', '46', '47', '48');
INSERT INTO `tb_dormitory` VALUES ('02', '204', '2', '2', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` int NOT NULL COMMENT 'id',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '密码',
  `building` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '楼栋',
  `room` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '宿舍号',
  PRIMARY KEY (`id`),
  KEY `DOM` (`building`,`room`),
  CONSTRAINT `DOM` FOREIGN KEY (`building`, `room`) REFERENCES `tb_dormitory` (`building`, `room`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', '张一', 'zhangyi', '01', '101');
INSERT INTO `tb_user` VALUES ('2', '张二', 'zhanger', '01', '101');
INSERT INTO `tb_user` VALUES ('3', '张三', 'zhangsan', '01', '101');
INSERT INTO `tb_user` VALUES ('4', '张四', 'zhangsi', '01', '101');
INSERT INTO `tb_user` VALUES ('5', '李一', 'liyi', '01', '102');
INSERT INTO `tb_user` VALUES ('6', '李二', 'lier', '01', '102');
INSERT INTO `tb_user` VALUES ('7', '李三', 'lisan', '01', '102');
INSERT INTO `tb_user` VALUES ('8', '李四', 'lisi', '01', '102');
INSERT INTO `tb_user` VALUES ('9', '林一', 'linyi', '01', '103');
INSERT INTO `tb_user` VALUES ('10', '林二', 'liner', '01', '103');
INSERT INTO `tb_user` VALUES ('11', '林三', 'linsan', '01', '103');
INSERT INTO `tb_user` VALUES ('12', '林四', 'linsi', '01', '103');
INSERT INTO `tb_user` VALUES ('13', '王一', 'wangyi', '01', '201');
INSERT INTO `tb_user` VALUES ('14', '王二', 'wanger', '01', '201');
INSERT INTO `tb_user` VALUES ('15', '王三', 'wangsan', '01', '201');
INSERT INTO `tb_user` VALUES ('16', '王四', 'wangsi', '01', '201');
INSERT INTO `tb_user` VALUES ('17', '刘一', 'liuyi', '01', '202');
INSERT INTO `tb_user` VALUES ('18', '刘二', 'liuer', '01', '202');
INSERT INTO `tb_user` VALUES ('19', '刘三', 'liusan', '01', '202');
INSERT INTO `tb_user` VALUES ('20', '刘四', 'liusi', '01', '202');
INSERT INTO `tb_user` VALUES ('21', '宋一', 'songyi', '01', '203');
INSERT INTO `tb_user` VALUES ('22', '宋二', 'songer', '01', '203');
INSERT INTO `tb_user` VALUES ('23', '宋三', 'songsan', '01', '203');
INSERT INTO `tb_user` VALUES ('24', '宋四', 'songsi', '01', '203');
INSERT INTO `tb_user` VALUES ('25', '杨一', 'yangyi', '02', '101');
INSERT INTO `tb_user` VALUES ('26', '杨二', 'yanger', '02', '101');
INSERT INTO `tb_user` VALUES ('27', '杨三', 'yangsan', '02', '101');
INSERT INTO `tb_user` VALUES ('28', '杨四', 'yangsi', '02', '101');
INSERT INTO `tb_user` VALUES ('29', '高一', 'gaoyi', '02', '102');
INSERT INTO `tb_user` VALUES ('30', '高二', 'gaoer', '02', '102');
INSERT INTO `tb_user` VALUES ('31', '高三 ', 'gaosan', '02', '102');
INSERT INTO `tb_user` VALUES ('32', '高四', 'gaosi', '02', '102');
INSERT INTO `tb_user` VALUES ('33', '陈一', 'chenyi', '02', '103');
INSERT INTO `tb_user` VALUES ('34', '陈二', 'chener', '02', '103');
INSERT INTO `tb_user` VALUES ('35', '陈三', 'chensan', '02', '103');
INSERT INTO `tb_user` VALUES ('36', '陈四', 'chensi', '02', '103');
INSERT INTO `tb_user` VALUES ('37', '吴一', 'wuyi', '02', '201');
INSERT INTO `tb_user` VALUES ('38', '吴二', 'wuer', '02', '201');
INSERT INTO `tb_user` VALUES ('39', '吴三', 'wusan', '02', '201');
INSERT INTO `tb_user` VALUES ('40', '吴四', 'wusi', '02', '201');
INSERT INTO `tb_user` VALUES ('41', '赵一', 'zhaoyi', '02', '202');
INSERT INTO `tb_user` VALUES ('42', '赵二', 'zhaoer', '02', '202');
INSERT INTO `tb_user` VALUES ('43', '赵三', 'zhaosan', '02', '202');
INSERT INTO `tb_user` VALUES ('44', '赵四', 'zhaosi', '02', '202');
INSERT INTO `tb_user` VALUES ('45', '杜一', 'duyi', '02', '203');
INSERT INTO `tb_user` VALUES ('46', '杜二', 'duer', '02', '203');
INSERT INTO `tb_user` VALUES ('47', '杜三', 'dusan', '02', '203');
INSERT INTO `tb_user` VALUES ('48', '杜四', 'dusi', '02', '203');
