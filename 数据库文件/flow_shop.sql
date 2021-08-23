/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : localhost:3306
 Source Schema         : flow_shop

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : 65001

 Date: 12/08/2021 16:32:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for s_address
-- ----------------------------
DROP TABLE IF EXISTS `s_address`;
CREATE TABLE `s_address`  (
  `province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of s_address
-- ----------------------------
INSERT INTO `s_address` VALUES ('吉林省', '通化');

-- ----------------------------
-- Table structure for s_admin
-- ----------------------------
DROP TABLE IF EXISTS `s_admin`;
CREATE TABLE `s_admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `passWord` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lastLoginTime` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of s_admin
-- ----------------------------
INSERT INTO `s_admin` VALUES (2, 'admin', '123456', 'xzy', '2021-08-12 16:28:45');

-- ----------------------------
-- Table structure for s_catalog
-- ----------------------------
DROP TABLE IF EXISTS `s_catalog`;
CREATE TABLE `s_catalog`  (
  `catalogId` int(11) NOT NULL AUTO_INCREMENT,
  `catalogName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`catalogId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of s_catalog
-- ----------------------------
INSERT INTO `s_catalog` VALUES (1, '爱情鲜花');
INSERT INTO `s_catalog` VALUES (2, '生日鲜花');
INSERT INTO `s_catalog` VALUES (3, '友情鲜花');
INSERT INTO `s_catalog` VALUES (4, '问候长辈');
INSERT INTO `s_catalog` VALUES (5, '探病慰问');
INSERT INTO `s_catalog` VALUES (6, '道歉鲜花');
INSERT INTO `s_catalog` VALUES (7, '祝贺鲜花');
INSERT INTO `s_catalog` VALUES (8, '婚庆鲜花');
INSERT INTO `s_catalog` VALUES (9, '商务鲜花');

-- ----------------------------
-- Table structure for s_charger
-- ----------------------------
DROP TABLE IF EXISTS `s_charger`;
CREATE TABLE `s_charger`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of s_charger
-- ----------------------------
INSERT INTO `s_charger` VALUES (1, '张三', '15245124578', 'PSY1628560152651');
INSERT INTO `s_charger` VALUES (3, '李四', '110', 'PSY1628582400053');

-- ----------------------------
-- Table structure for s_flow
-- ----------------------------
DROP TABLE IF EXISTS `s_flow`;
CREATE TABLE `s_flow`  (
  `flowID` int(11) NOT NULL AUTO_INCREMENT,
  `catalogId` int(11) NOT NULL,
  `flowName` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `price` double(10, 2) NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `imgId` int(11) NOT NULL,
  `addTime` datetime NULL DEFAULT NULL,
  `keywords` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '关键词搜索',
  PRIMARY KEY (`flowID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of s_flow
-- ----------------------------
INSERT INTO `s_flow` VALUES (1, 7, '莓你不行', 238.00, NULL, 1, '2021-04-12 00:00:00', NULL);
INSERT INTO `s_flow` VALUES (2, 7, '降雪', 218.00, '最佳保存温度10°C，最佳赏味期为24小时内\r\n食用前请在室温下放置20分钟，口感更佳', 2, '2021-04-12 00:00:00', NULL);
INSERT INTO `s_flow` VALUES (3, 7, '小红帽', 218.00, '最佳保存温度10°C，最佳赏味期为24小时内\r\n食用前请在室温下放置20分钟，口感更佳', 3, '2021-04-12 00:00:00', NULL);
INSERT INTO `s_flow` VALUES (4, 7, '草莓千层', 228.00, '最佳保存温度10°C，最佳赏味期为24小时内\r\n食用前请在室温下放置20分钟，口感更佳', 4, '2021-04-12 00:00:00', NULL);
INSERT INTO `s_flow` VALUES (5, 2, '佛罗伦萨之春', 268.00, '最佳保存温度10°C，最佳赏味期为24小时内\r\n食用前请在室温下放置20分钟，口感更佳', 5, '2021-04-12 00:00:00', NULL);
INSERT INTO `s_flow` VALUES (6, 2, '托斯卡纳斜阳', 268.00, '最佳保存温度10°C，最佳赏味期为24小时内\r\n食用前请在室温下放置20分钟，口感更佳', 6, '2021-04-12 00:00:00', NULL);
INSERT INTO `s_flow` VALUES (7, 2, '巴黎之恋', 268.00, '最佳保存温度10°C，最佳赏味期为24小时内\r\n食用前请在室温下放置20分钟，口感更佳', 7, '2021-04-12 00:00:00', NULL);
INSERT INTO `s_flow` VALUES (9, 2, '莫奈花园', 268.00, '最佳保存温度10°C，最佳赏味期为24小时内\r\n食用前请在室温下放置20分钟，口感更佳', 9, '2021-04-12 00:00:00', NULL);
INSERT INTO `s_flow` VALUES (10, 2, '罗马假日', 268.00, '最佳保存温度10°C，最佳赏味期为24小时内\r\n食用前请在室温下放置20分钟，口感更佳', 10, '2021-04-12 00:00:00', NULL);
INSERT INTO `s_flow` VALUES (11, 2, '赛尔河畔', 268.00, '最佳保存温度10°C，最佳赏味期为24小时内\r\n食用前请在室温下放置20分钟，口感更佳', 11, '2021-04-12 00:00:00', NULL);
INSERT INTO `s_flow` VALUES (12, 3, '鼠你有财', 318.00, '最佳保存温度10°C，最佳赏味期为24小时内\r\n食用前请在室温下放置20分钟，口感更佳', 12, '2021-04-12 00:00:00', NULL);
INSERT INTO `s_flow` VALUES (13, 3, '鼠你幸运', 318.00, '最佳保存温度10°C，最佳赏味期为24小时内\r\n食用前请在室温下放置20分钟，口感更佳', 13, '2021-04-12 00:00:00', NULL);
INSERT INTO `s_flow` VALUES (14, 3, '钻石星河', 238.00, '最佳保存温度10°C，最佳赏味期为24小时内\r\n食用前请在室温下放置20分钟，口感更佳', 14, '2021-04-12 00:00:00', NULL);
INSERT INTO `s_flow` VALUES (15, 3, '桃粉星海', 238.00, '最佳保存温度10°C，最佳赏味期为24小时内\r\n食用前请在室温下放置20分钟，口感更佳', 15, '2021-04-12 00:00:00', NULL);
INSERT INTO `s_flow` VALUES (16, 3, '极光', 238.00, '最佳保存温度10°C，最佳赏味期为24小时内\r\n食用前请在室温下放置20分钟，口感更佳', 16, '2021-04-12 00:00:00', NULL);
INSERT INTO `s_flow` VALUES (17, 3, '星云', 238.00, '最佳保存温度10°C，最佳赏味期为24小时内\r\n食用前请在室温下放置20分钟，口感更佳', 17, '2021-04-12 00:00:00', NULL);
INSERT INTO `s_flow` VALUES (18, 4, '粉红乐园', 198.00, '最佳保存温度10°C，最佳赏味期为24小时内\r\n食用前请在室温下放置20分钟，口感更佳', 18, '2021-04-12 00:00:00', NULL);
INSERT INTO `s_flow` VALUES (19, 4, '梦幻星球', 218.00, '最佳保存温度10°C，最佳赏味期为24小时内\r\n食用前请在室温下放置20分钟，口感更佳', 19, '2021-04-12 00:00:00', NULL);
INSERT INTO `s_flow` VALUES (20, 4, '独角天使', 189.00, '最佳保存温度10°C，最佳赏味期为24小时内\r\n食用前请在室温下放置20分钟，口感更佳', 20, '2021-04-12 00:00:00', NULL);
INSERT INTO `s_flow` VALUES (21, 4, '玫红精灵', 218.00, '最佳保存温度10°C，最佳赏味期为24小时内\r\n食用前请在室温下放置20分钟，口感更佳', 21, '2021-04-12 00:00:00', NULL);
INSERT INTO `s_flow` VALUES (22, 5, '至爱', 999.00, '最佳保存温度10°C，最佳赏味期为24小时内\r\n食用前请在室温下放置20分钟，口感更佳', 22, '2021-04-12 00:00:00', NULL);
INSERT INTO `s_flow` VALUES (23, 5, '偏爱', 1099.00, '最佳保存温度10°C，最佳赏味期为24小时内\r\n食用前请在室温下放置20分钟，口感更佳', 23, '2021-04-12 00:00:00', NULL);
INSERT INTO `s_flow` VALUES (24, 5, '宠爱', 1099.00, '最佳保存温度10°C，最佳赏味期为24小时内\r\n食用前请在室温下放置20分钟，口感更佳', 24, '2021-04-12 00:00:00', NULL);
INSERT INTO `s_flow` VALUES (25, 5, '唯爱', 1099.00, '最佳保存温度10°C，最佳赏味期为24小时内\r\n食用前请在室温下放置20分钟，口感更佳', 25, '2021-04-12 00:00:00', NULL);
INSERT INTO `s_flow` VALUES (26, 6, '蜜雪儿', 238.00, '最佳保存温度10°C，最佳赏味期为24小时内\r\n食用前请在室温下放置20分钟，口感更佳', 26, '2021-04-12 00:00:00', NULL);
INSERT INTO `s_flow` VALUES (27, 6, '糖果儿', 238.00, '最佳保存温度10°C，最佳赏味期为24小时内\r\n食用前请在室温下放置20分钟，口感更佳', 27, '2021-04-12 00:00:00', NULL);
INSERT INTO `s_flow` VALUES (28, 6, '甜心儿', 238.00, '最佳保存温度10°C，最佳赏味期为24小时内\r\n食用前请在室温下放置20分钟，口感更佳', 28, '2021-04-12 00:00:00', NULL);
INSERT INTO `s_flow` VALUES (29, 6, '糖果盒子', 238.00, '最佳保存温度10°C，最佳赏味期为24小时内\r\n食用前请在室温下放置20分钟，口感更佳', 29, '2021-04-12 00:00:00', NULL);
INSERT INTO `s_flow` VALUES (30, 6, '蜜糖宝贝', 238.00, '最佳保存温度10°C，最佳赏味期为24小时内\r\n食用前请在室温下放置20分钟，口感更佳', 30, '2021-04-12 00:00:00', NULL);
INSERT INTO `s_flow` VALUES (31, 6, '小乖乖', 238.00, '最佳保存温度10°C，最佳赏味期为24小时内\r\n食用前请在室温下放置20分钟，口感更佳', 31, '2021-04-12 00:00:00', NULL);
INSERT INTO `s_flow` VALUES (32, 1, '新年之歌', 268.00, '最佳保存温度10°C，最佳赏味期为24小时内\r\n食用前请在室温下放置20分钟，口感更佳', 32, '2021-04-12 00:00:00', NULL);
INSERT INTO `s_flow` VALUES (33, 1, '温暖的家', 268.00, '最佳保存温度10°C，最佳赏味期为24小时内\r\n食用前请在室温下放置20分钟，口感更佳', 33, '2021-04-12 00:00:00', NULL);
INSERT INTO `s_flow` VALUES (34, 1, '丘比特的祝福', 268.00, '最佳保存温度10°C，最佳赏味期为24小时内\r\n食用前请在室温下放置20分钟，口感更佳', 34, '2021-04-12 00:00:00', NULL);
INSERT INTO `s_flow` VALUES (35, 1, '旋转木马', 268.00, '最佳保存温度10°C，最佳赏味期为24小时内\r\n食用前请在室温下放置20分钟，口感更佳', 35, '2021-04-12 00:00:00', NULL);
INSERT INTO `s_flow` VALUES (36, 8, '真爱', 238.00, '最佳保存温度10°C，最佳赏味期为24小时内\r\n食用前请在室温下放置20分钟，口感更佳', 36, '2021-04-12 00:00:00', NULL);
INSERT INTO `s_flow` VALUES (37, 8, '小精灵', 198.00, '最佳保存温度10°C，最佳赏味期为24小时内\r\n食用前请在室温下放置20分钟，口感更佳', 37, '2021-04-12 00:00:00', NULL);
INSERT INTO `s_flow` VALUES (38, 8, '小公主', 198.00, '最佳保存温度10°C，最佳赏味期为24小时内\r\n食用前请在室温下放置20分钟，口感更佳', 38, '2021-04-12 00:00:00', NULL);
INSERT INTO `s_flow` VALUES (39, 8, '女神的花冠', 268.00, '最佳保存温度10°C，最佳赏味期为24小时内\r\n食用前请在室温下放置20分钟，口感更佳', 39, '2021-04-12 00:00:00', NULL);
INSERT INTO `s_flow` VALUES (40, 9, '桃李春风', 238.00, '最佳保存温度10°C，最佳赏味期为24小时内\r\n食用前请在室温下放置20分钟，口感更佳', 40, '2021-04-12 00:00:00', NULL);
INSERT INTO `s_flow` VALUES (41, 9, '生如夏花', 238.00, '最佳保存温度10°C，最佳赏味期为24小时内\r\n食用前请在室温下放置20分钟，口感更佳', 41, '2021-04-12 00:00:00', NULL);
INSERT INTO `s_flow` VALUES (43, 2, '牡丹花', 20.00, NULL, 44, '2021-08-10 17:25:54', '情人节，母亲节1');
INSERT INTO `s_flow` VALUES (44, 2, '牡丹花1', 204.00, '好看的很啊', 45, '2021-08-12 16:17:21', '情人节，母亲节1');

-- ----------------------------
-- Table structure for s_msg
-- ----------------------------
DROP TABLE IF EXISTS `s_msg`;
CREATE TABLE `s_msg`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contain` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `inputtime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `inputperson` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of s_msg
-- ----------------------------
INSERT INTO `s_msg` VALUES (4, '测试留言', '2021-08-12 16:28:31', 'maker');

-- ----------------------------
-- Table structure for s_order
-- ----------------------------
DROP TABLE IF EXISTS `s_order`;
CREATE TABLE `s_order`  (
  `orderId` int(11) NOT NULL AUTO_INCREMENT,
  `orderNum` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `userId` int(11) NOT NULL,
  `orderDate` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `money` double(10, 2) NOT NULL,
  `orderStatus` int(2) NOT NULL COMMENT '1 订单提交   2 已发货  3确认收货',
  `chargerid` int(11) NULL DEFAULT 0 COMMENT '配送员id',
  `chargername` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '配送员姓名',
  `chargerphone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '配送员联系方式',
  `shpeople` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '收货人',
  `shphone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '收货人联系方式',
  `shaddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '收货人地址',
  PRIMARY KEY (`orderId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of s_order
-- ----------------------------
INSERT INTO `s_order` VALUES (23, '202004251637490511035426557', 1, '2020-04-25 16:37:49', 238.00, 3, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `s_order` VALUES (24, '202004260804010521761193487', 1, '2020-04-26 08:04:01', 268.00, 1, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `s_order` VALUES (25, '202004270847353362024855301', 1, '2020-04-27 08:47:35', 268.00, 1, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `s_order` VALUES (26, '20200608154606826308660424', 1, '2020-06-08 15:46:06', 486.00, 1, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `s_order` VALUES (27, '20200608223506325553025626', 1, '2020-06-08 22:35:06', 238.00, 1, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `s_order` VALUES (28, '20200608223525230270400150', 1, '2020-06-08 22:35:25', 198.00, 1, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `s_order` VALUES (29, '202006082235493061029991075', 1, '2020-06-08 22:35:49', 1099.00, 1, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `s_order` VALUES (30, '20200608223605705324973357', 1, '2020-06-08 22:36:05', 318.00, 1, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `s_order` VALUES (31, '202006082236335371817449023', 1, '2020-06-08 22:36:33', 556.00, 1, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `s_order` VALUES (32, '202006082301268132086210119', 1, '2020-06-08 23:01:26', 268.00, 1, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `s_order` VALUES (33, '202006091209043771628149911', 3, '2020-06-09 12:09:04', 238.00, 1, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `s_order` VALUES (34, '20200618115712425966562914', 1, '2020-06-18 11:57:12', 238.00, 3, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `s_order` VALUES (37, '20210812154242192732811177', 1, '2021-08-12 15:42:42', 218.00, 1, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `s_order` VALUES (38, '202108121543518242102048522', 1, '2021-08-12 15:43:51', 238.00, 1, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `s_order` VALUES (39, '202108121544417661782807680', 1, '2021-08-12 15:44:41', 238.00, 2, 1, '张三', '15245124578', NULL, NULL, NULL);
INSERT INTO `s_order` VALUES (40, '20210812155712560954413231', 1, '2021-08-12 15:57:12', 238.00, 1, 1, '张三', '15245124578', NULL, NULL, NULL);
INSERT INTO `s_order` VALUES (41, '202108121605204722143892960', 1, '2021-08-12 16:05:20', 238.00, 2, 1, '张三', '15245124578', NULL, NULL, NULL);
INSERT INTO `s_order` VALUES (42, '202108121607262801285903980', 1, '2021-08-12 16:07:26', 218.00, 1, 3, '李四', '110', '小马哥', '110', '重庆市大楼');
INSERT INTO `s_order` VALUES (43, '20210812163029980175964826', 6, '2021-08-12 16:30:29', 218.00, 3, 3, '李四', '110', '小马哥', '2221', '小平房一号楼');

-- ----------------------------
-- Table structure for s_orderitem
-- ----------------------------
DROP TABLE IF EXISTS `s_orderitem`;
CREATE TABLE `s_orderitem`  (
  `itemId` int(11) NOT NULL AUTO_INCREMENT,
  `flowId` int(11) NOT NULL,
  `orderId` int(11) NOT NULL DEFAULT 0,
  `quantity` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`itemId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of s_orderitem
-- ----------------------------
INSERT INTO `s_orderitem` VALUES (2, 41, 23, 1);
INSERT INTO `s_orderitem` VALUES (3, 5, 24, 1);
INSERT INTO `s_orderitem` VALUES (4, 32, 25, 1);
INSERT INTO `s_orderitem` VALUES (5, 34, 26, 1);
INSERT INTO `s_orderitem` VALUES (6, 3, 26, 1);
INSERT INTO `s_orderitem` VALUES (7, 36, 27, 1);
INSERT INTO `s_orderitem` VALUES (8, 37, 28, 1);
INSERT INTO `s_orderitem` VALUES (9, 23, 29, 1);
INSERT INTO `s_orderitem` VALUES (10, 12, 30, 1);
INSERT INTO `s_orderitem` VALUES (11, 1, 31, 1);
INSERT INTO `s_orderitem` VALUES (12, 12, 31, 1);
INSERT INTO `s_orderitem` VALUES (13, 32, 32, 1);
INSERT INTO `s_orderitem` VALUES (14, 26, 33, 1);
INSERT INTO `s_orderitem` VALUES (15, 16, 34, 1);
INSERT INTO `s_orderitem` VALUES (19, 2, 37, 1);
INSERT INTO `s_orderitem` VALUES (20, 40, 38, 1);
INSERT INTO `s_orderitem` VALUES (21, 41, 39, 1);
INSERT INTO `s_orderitem` VALUES (22, 36, 40, 1);
INSERT INTO `s_orderitem` VALUES (23, 40, 41, 1);
INSERT INTO `s_orderitem` VALUES (24, 2, 42, 1);
INSERT INTO `s_orderitem` VALUES (25, 2, 43, 1);

-- ----------------------------
-- Table structure for s_uploadimg
-- ----------------------------
DROP TABLE IF EXISTS `s_uploadimg`;
CREATE TABLE `s_uploadimg`  (
  `imgId` int(11) NOT NULL AUTO_INCREMENT,
  `imgName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `imgSrc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `imgType` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`imgId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of s_uploadimg
-- ----------------------------
INSERT INTO `s_uploadimg` VALUES (1, '0ef5f810cc8a4d5db6c1bf33abf2a6d6.jpg', 'images/flow/flowimg/0ef5f810cc8a4d5db6c1bf33abf2a6d6.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (2, '降雪2.jpg', 'images/flow/flowimg/降雪2.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (3, '小红帽3.jpg', 'images/flow/flowimg/小红帽3.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (4, '草莓千层4.jpg', 'images/flow/flowimg/草莓千层4.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (5, '佛罗伦萨之春5.jpg', 'images/flow/flowimg/佛罗伦萨之春5.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (6, '托斯卡纳斜阳6.jpg', 'images/flow/flowimg/托斯卡纳斜阳6.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (7, '巴黎之恋7.jpg', 'images/flow/flowimg/巴黎之恋7.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (8, '凡尔赛花园8.jpg', 'images/flow/flowimg/凡尔赛花园8.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (9, '莫奈花园9.jpg', 'images/flow/flowimg/莫奈花园9.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (10, '罗马假日10.jpg', 'images/flow/flowimg/罗马假日10.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (11, '赛尔河畔11.jpg', 'images/flow/flowimg/赛尔河畔11.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (12, '鼠你有财12.jpg', 'images/flow/flowimg/鼠你有财12.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (13, '鼠你幸运13.jpg', 'images/flow/flowimg/鼠你幸运13.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (14, '钻石星河14.jpg', 'images/flow/flowimg/钻石星河14.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (15, '桃粉星海15.jpg', 'images/flow/flowimg/桃粉星海15.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (16, '极光16.jpg', 'images/flow/flowimg/极光16.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (17, '星云17.jpg', 'images/flow/flowimg/星云17.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (18, '粉红乐园18.jpg', 'images/flow/flowimg/粉红乐园18.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (19, '梦幻星球19.jpg', 'images/flow/flowimg/梦幻星球19.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (20, '独角天使20.jpg', 'images/flow/flowimg/独角天使20.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (21, '玫红精灵21.jpg', 'images/flow/flowimg/玫红精灵21.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (22, '至爱22.jpg', 'images/flow/flowimg/至爱22.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (23, '偏爱23.jpg', 'images/flow/flowimg/偏爱23.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (24, '宠爱24.jpg', 'images/flow/flowimg/宠爱24.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (25, '唯爱25.jpg', 'images/flow/flowimg/唯爱25.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (26, '蜜雪儿26.jpg', 'images/flow/flowimg/蜜雪儿26.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (27, '糖果儿27.jpg', 'images/flow/flowimg/糖果儿27.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (28, '甜心儿28.jpg', 'images/flow/flowimg/甜心儿28.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (29, '糖果盒子29.jpg', 'images/flow/flowimg/糖果盒子29.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (30, '蜜糖宝贝30.jpg', 'images/flow/flowimg/蜜糖宝贝30.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (31, '小乖乖31.jpg', 'images/flow/flowimg/小乖乖31.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (32, '新年之歌32.jpg', 'images/flow/flowimg/新年之歌32.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (33, '温暖的家33.jpg', 'images/flow/flowimg/温暖的家33.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (34, '丘比特的祝福34.jpg', 'images/flow/flowimg/丘比特的祝福34.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (35, '旋转木马35.jpg', 'images/flow/flowimg/旋转木马35.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (36, '真爱36.jpg', 'images/flow/flowimg/真爱36.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (37, '小精灵37.jpg', 'images/flow/flowimg/小精灵37.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (38, '小公主38.jpg', 'images/flow/flowimg/小公主38.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (39, '女神的花冠39.jpg', 'images/flow/flowimg/女神的花冠39.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (40, '桃李春风40.jpg', 'images/flow/flowimg/桃李春风40.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (41, '生如夏花41.jpg', 'images/flow/flowimg/生如夏花41.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (42, 'e65d3fc2f0e347c68c8e1c36c2b2dca4.jpg', 'images/flow/flowimg/e65d3fc2f0e347c68c8e1c36c2b2dca4.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (43, '9e4fd1d28c7f44b8a6d2e390eaa9a736.jpg', 'images/flow/flowimg/9e4fd1d28c7f44b8a6d2e390eaa9a736.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (44, '9d74e81d7d1443bdb1aeb6290c9291d7.jpg', 'images/flow/flowimg/9d74e81d7d1443bdb1aeb6290c9291d7.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (45, 'b15f1c8568414e8788a40fc7aac70ee3.jpg', 'images/flow/flowimg/b15f1c8568414e8788a40fc7aac70ee3.jpg', 'image/jpeg');

-- ----------------------------
-- Table structure for s_user
-- ----------------------------
DROP TABLE IF EXISTS `s_user`;
CREATE TABLE `s_user`  (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `userPassWord` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sex` varchar(2) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `age` int(5) NOT NULL,
  `tell` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `enabled` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`userId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of s_user
-- ----------------------------
INSERT INTO `s_user` VALUES (1, 'user', '1234', 'xzy', '男', 22, '18000000000', '湖北武汉', 'n');
INSERT INTO `s_user` VALUES (2, 'dsfsd', '1234', 'fsdaf', '男', 32, '18000000000', 'ghsf', 'y');
INSERT INTO `s_user` VALUES (3, 'user1234', '123456', '11', '女', 22, '15072186406', 'aa', 'y');
INSERT INTO `s_user` VALUES (4, 'useraa', '123456', '11', '女', 20, '15072186406', '11', 'y');
INSERT INTO `s_user` VALUES (6, 'maker', '111111', '小马', '男', 24, '15064781245', '安徽', 'y');

-- ----------------------------
-- View structure for view_flow
-- ----------------------------
DROP VIEW IF EXISTS `view_flow`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_flow` AS select `s_catalog`.`catalogName` AS `catalogName`,`s_flow`.`flowID` AS `flowId`,`s_flow`.`keywords` AS `keywords`,`s_flow`.`catalogId` AS `catalogId`,`s_flow`.`flowName` AS `flowName`,`s_flow`.`price` AS `price`,`s_flow`.`description` AS `description`,`s_flow`.`imgId` AS `imgId`,`s_uploadimg`.`imgName` AS `imgName`,`s_uploadimg`.`imgSrc` AS `imgSrc`,`s_uploadimg`.`imgType` AS `imgType`,`s_flow`.`addTime` AS `addTime` from ((`s_flow` join `s_catalog` on((`s_flow`.`catalogId` = `s_catalog`.`catalogId`))) join `s_uploadimg` on((`s_flow`.`imgId` = `s_uploadimg`.`imgId`)));

-- ----------------------------
-- View structure for view_order
-- ----------------------------
DROP VIEW IF EXISTS `view_order`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_order` AS select `s_orderitem`.`itemId` AS `itemId`,`s_orderitem`.`flowId` AS `flowId`,`s_orderitem`.`quantity` AS `quantity`,`s_order`.`orderId` AS `orderId`,`s_order`.`orderNum` AS `orderNum`,`s_order`.`userId` AS `userId`,`s_order`.`orderDate` AS `orderDate`,`s_order`.`money` AS `money`,`s_order`.`orderStatus` AS `orderStatus` from (`s_order` join `s_orderitem` on((`s_orderitem`.`orderId` = `s_order`.`orderId`)));

SET FOREIGN_KEY_CHECKS = 1;
