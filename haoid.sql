/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50519
Source Host           : localhost:3306
Source Database       : xiaom

Target Server Type    : MYSQL
Target Server Version : 50519
File Encoding         : 65001

Date: 2015-12-20 14:19:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ecs_account_log`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_account_log`;
CREATE TABLE `ecs_account_log` (
  `log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL,
  `user_money` decimal(10,2) NOT NULL,
  `frozen_money` decimal(10,2) NOT NULL,
  `rank_points` mediumint(9) NOT NULL,
  `pay_points` mediumint(9) NOT NULL,
  `change_time` int(10) unsigned NOT NULL,
  `change_desc` varchar(255) NOT NULL,
  `change_type` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_account_log
-- ----------------------------
INSERT INTO `ecs_account_log` VALUES ('1', '5', '1100000.00', '0.00', '0', '0', '1242140736', '11', '2');
INSERT INTO `ecs_account_log` VALUES ('2', '3', '400000.00', '0.00', '0', '0', '1242140752', '21312', '2');
INSERT INTO `ecs_account_log` VALUES ('3', '2', '300000.00', '0.00', '0', '0', '1242140775', '300000', '2');
INSERT INTO `ecs_account_log` VALUES ('4', '1', '50000.00', '0.00', '0', '0', '1242140811', '50', '2');
INSERT INTO `ecs_account_log` VALUES ('5', '5', '0.00', '10000.00', '0', '0', '1242140853', '32', '2');
INSERT INTO `ecs_account_log` VALUES ('6', '1', '-400.00', '0.00', '0', '0', '1242142274', '支付订单 2009051298180', '99');
INSERT INTO `ecs_account_log` VALUES ('7', '1', '-975.00', '0.00', '0', '0', '1242142324', '支付订单 2009051255518', '99');
INSERT INTO `ecs_account_log` VALUES ('8', '1', '0.00', '0.00', '960', '960', '1242142390', '订单 2009051255518 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('9', '1', '0.00', '0.00', '385', '385', '1242142432', '订单 2009051298180 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('10', '1', '-2310.00', '0.00', '0', '0', '1242142549', '支付订单 2009051267570', '99');
INSERT INTO `ecs_account_log` VALUES ('11', '1', '0.00', '0.00', '2300', '2300', '1242142589', '订单 2009051267570 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('12', '1', '-5989.00', '0.00', '0', '0', '1242142681', '支付订单 2009051230249', '99');
INSERT INTO `ecs_account_log` VALUES ('13', '1', '-8610.00', '0.00', '0', '0', '1242142808', '支付订单 2009051276258', '99');
INSERT INTO `ecs_account_log` VALUES ('14', '1', '0.00', '0.00', '0', '-1', '1242142910', '参加夺宝奇兵夺宝奇兵之夏新N7 ', '99');
INSERT INTO `ecs_account_log` VALUES ('15', '1', '0.00', '0.00', '0', '-1', '1242142935', '参加夺宝奇兵夺宝奇兵之诺基亚N96 ', '99');
INSERT INTO `ecs_account_log` VALUES ('16', '1', '0.00', '0.00', '0', '100000', '1242143867', '奖励', '2');
INSERT INTO `ecs_account_log` VALUES ('17', '1', '-10.00', '0.00', '0', '0', '1242143920', '支付订单 2009051268194', '99');
INSERT INTO `ecs_account_log` VALUES ('18', '1', '0.00', '0.00', '0', '-17000', '1242143920', '支付订单 2009051268194', '99');
INSERT INTO `ecs_account_log` VALUES ('19', '1', '0.00', '0.00', '-960', '-960', '1242144185', '由于退货或未发货操作，退回订单 2009051255518 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('20', '1', '975.00', '0.00', '0', '0', '1242144185', '由于取消、无效或退货操作，退回支付订单 2009051255518 时使用的预付款', '99');
INSERT INTO `ecs_account_log` VALUES ('21', '1', '0.00', '0.00', '960', '960', '1242576445', '订单 2009051719232 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('22', '3', '-1000.00', '0.00', '0', '0', '1242973612', '追加使用余额支付订单：2009051227085', '99');
INSERT INTO `ecs_account_log` VALUES ('23', '1', '-13806.60', '0.00', '0', '0', '1242976699', '支付订单 2009052224892', '99');
INSERT INTO `ecs_account_log` VALUES ('24', '1', '0.00', '0.00', '14045', '14045', '1242976740', '订单 2009052224892 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('25', '1', '0.00', '0.00', '-2300', '-2300', '1245045334', '由于退货或未发货操作，退回订单 2009051267570 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('26', '1', '2310.00', '0.00', '0', '0', '1245045334', '由于取消、无效或退货操作，退回支付订单 2009051267570 时使用的预付款', '99');
INSERT INTO `ecs_account_log` VALUES ('27', '1', '0.00', '0.00', '17044', '17044', '1245045443', '订单 2009061585887 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('28', '1', '17054.00', '0.00', '0', '0', '1245045515', '1', '99');
INSERT INTO `ecs_account_log` VALUES ('29', '1', '0.00', '0.00', '-17044', '-17044', '1245045515', '由于退货或未发货操作，退回订单 2009061585887 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('30', '1', '-3196.30', '0.00', '0', '0', '1245045672', '支付订单 2009061525429', '99');
INSERT INTO `ecs_account_log` VALUES ('31', '1', '-1910.00', '0.00', '0', '0', '1245047978', '支付订单 2009061503335', '99');
INSERT INTO `ecs_account_log` VALUES ('32', '1', '0.00', '0.00', '1900', '1900', '1245048189', '订单 2009061503335 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('33', '1', '0.00', '0.00', '-1900', '-1900', '1245048212', '由于退货或未发货操作，退回订单 2009061503335 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('34', '1', '1910.00', '0.00', '0', '0', '1245048212', '由于取消、无效或退货操作，退回支付订单 2009061503335 时使用的预付款', '99');
INSERT INTO `ecs_account_log` VALUES ('35', '1', '-500.00', '0.00', '0', '0', '1245048585', '支付订单 2009061510313', '99');
INSERT INTO `ecs_account_log` VALUES ('36', '6', '0.00', '0.00', '0', '8388607', '1402439037', '1', '2');
INSERT INTO `ecs_account_log` VALUES ('37', '6', '0.00', '0.00', '327', '327', '1406141920', '订单 2014070752549 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('38', '6', '0.00', '0.00', '1386', '1386', '1406141936', '订单 2014060932408 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('39', '3', '0.00', '0.00', '2000', '2000', '1406141997', '订单 2009051210718 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('40', '3', '0.00', '0.00', '623', '623', '1406142018', '订单 2009051299732 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('41', '3', '0.00', '0.00', '-623', '-623', '1406142205', '由于退货或未发货操作，退回订单 2009051299732 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('42', '3', '0.00', '0.00', '623', '623', '1406142208', '订单 2009051299732 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('43', '3', '0.00', '0.00', '-2000', '-2000', '1406142212', '由于退货或未发货操作，退回订单 2009051210718 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('44', '3', '0.00', '0.00', '2000', '2000', '1406142216', '订单 2009051210718 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('45', '6', '0.00', '0.00', '-1386', '-1386', '1406142226', '由于退货或未发货操作，退回订单 2014060932408 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('46', '6', '0.00', '0.00', '1386', '1386', '1406142229', '订单 2014060932408 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('47', '6', '0.00', '0.00', '-327', '-327', '1406142238', '由于退货或未发货操作，退回订单 2014070752549 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('48', '6', '0.00', '0.00', '327', '327', '1406142241', '订单 2014070752549 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('49', '6', '0.00', '0.00', '488', '488', '1406763639', '订单 2014073126550 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('50', '6', '0.00', '0.00', '8082', '8082', '1407369195', '订单 2014080751421 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('51', '6', '0.00', '0.00', '26473', '26473', '1408039002', '订单 2014081591904 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('52', '6', '0.00', '0.00', '-26473', '-26473', '1408317454', '由于退货或未发货操作，退回订单 2014081591904 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('53', '6', '0.00', '0.00', '26473', '26473', '1408317460', '订单 2014081591904 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('54', '6', '0.00', '0.00', '-8082', '-8082', '1408390265', '由于退货或未发货操作，退回订单 2014080751421 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('55', '6', '0.00', '0.00', '8082', '8082', '1408390270', '订单 2014080751421 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('56', '6', '0.00', '0.00', '-488', '-488', '1408390308', '由于退货或未发货操作，退回订单 2014073126550 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('57', '6', '0.00', '0.00', '488', '488', '1408390312', '订单 2014073126550 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('58', '6', '0.00', '0.00', '948', '948', '1414107898', '订单 2014102455815 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('59', '6', '0.00', '0.00', '-37704', '0', '1419879902', '1', '2');
INSERT INTO `ecs_account_log` VALUES ('60', '6', '0.00', '0.00', '0', '-8388608', '1419879940', '1', '2');
INSERT INTO `ecs_account_log` VALUES ('61', '2', '0.00', '0.00', '99', '99', '1441823955', '订单 2015090922397 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('62', '2', '0.00', '0.00', '299', '299', '1441833387', '订单 2015090966609 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('63', '16', '0.00', '0.00', '327', '327', '1441906074', '订单 2015083129579 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('64', '16', '0.00', '0.00', '258', '258', '1441906236', '订单 2015082830546 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('65', '16', '0.00', '0.00', '1467', '1467', '1441906327', '订单 2015082675900 赠送的积分', '99');

-- ----------------------------
-- Table structure for `ecs_ad`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_ad`;
CREATE TABLE `ecs_ad` (
  `ad_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `position_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `media_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ad_name` varchar(60) NOT NULL DEFAULT '',
  `ad_link` varchar(255) NOT NULL DEFAULT '',
  `ad_code` text NOT NULL,
  `start_time` int(11) NOT NULL DEFAULT '0',
  `end_time` int(11) NOT NULL DEFAULT '0',
  `link_man` varchar(60) NOT NULL DEFAULT '',
  `link_email` varchar(60) NOT NULL DEFAULT '',
  `link_phone` varchar(60) NOT NULL DEFAULT '',
  `click_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `enabled` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`ad_id`),
  KEY `position_id` (`position_id`),
  KEY `enabled` (`enabled`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_ad
-- ----------------------------
INSERT INTO `ecs_ad` VALUES ('11', '5', '0', '大家都喜欢左边广告', '#', '1437091450567936588.jpg', '1437033600', '1597478400', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('10', '4', '0', '新品上架左边广告', '#', '1437081494946827817.jpg', '1437033600', '1597478400', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('8', '3', '0', '首页轮播下广告2', 'http://www.haoid.cn/post/513', '1439235672175247984.jpg', '1436976000', '1597420800', '', '', '', '7', '1');
INSERT INTO `ecs_ad` VALUES ('9', '3', '0', '首页轮播下广告3', 'http://www.haoid.cn/post/513', '1439235663686851046.jpg', '1436976000', '1597420800', '', '', '', '5', '1');
INSERT INTO `ecs_ad` VALUES ('7', '3', '0', '首页轮播下广告1', 'http://www.haoid.cn/post/513', '1439235680072464326.jpg', '1436976000', '1597420800', '', '', '', '6', '1');
INSERT INTO `ecs_ad` VALUES ('5', '2', '0', '日化清洁分类下商品左广告', '', '1418945930438785320.jpg', '1418889600', '1547712000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('27', '11', '0', '团购页顶部广告1', '', '1440453088903649388.jpg', '1440403200', '1442995200', '', '', '', '4', '1');
INSERT INTO `ecs_ad` VALUES ('15', '0', '0', '购买电视与平板分类下商品左广告', '', '1439243111683292287.jpg', '1439193600', '1568016000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('16', '8', '0', '路由器与智能硬件分类下商品左侧广告大', '#', '1439256935405590666.jpg', '1439193600', '1820476800', '', '', '', '3', '1');
INSERT INTO `ecs_ad` VALUES ('17', '9', '0', '插线板、移动电源与电池分类下商品左侧广告小1', '', '1439257063359182674.jpg', '1439193600', '1788940800', '', '', '', '2', '1');
INSERT INTO `ecs_ad` VALUES ('18', '9', '0', '插线板、移动电源与电池分类下商品左侧广告小2', '#', '1439257083300448761.jpg', '1439193600', '1725868800', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('19', '9', '0', '耳机音箱与存储卡分类下商品左侧广告小1', '', '1439257211458415529.jpg', '1439193600', '1599638400', '', '', '', '1', '1');
INSERT INTO `ecs_ad` VALUES ('20', '9', '0', '耳机音箱与存储卡分类下商品左侧广告小2', '', '1439257230078103078.jpg', '1439193600', '1599638400', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('21', '9', '0', '小米生活方式分类下商品左侧广告小1', '', '1439257305251304063.jpg', '1439193600', '1631174400', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('22', '9', '0', '小米生活方式分类下商品左侧广告小2', '', '1439257325691545396.jpg', '1439193600', '1694246400', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('1', '1', '0', '首页倒计时广告1', 'http://www.haoid.cn/post/513', '1416768092332228240.jpg', '1416672000', '1577030400', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('2', '1', '0', '首页倒计时广告2', '', '1416768116149461443.jpg', '1416729600', '1545552000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('3', '2', '0', '护肤分类下商品左广告', '', '1418945852395048180.jpg', '1418889600', '1516176000', '', '', '', '1', '1');
INSERT INTO `ecs_ad` VALUES ('4', '2', '0', '彩妆分类下商品左广告', '', '1418945889355542340.jpg', '1418889600', '1516176000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('6', '2', '0', '化妆工具分类下商品左广告', '', '1418945942250564060.jpg', '1418889600', '1579248000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('28', '255', '0', '1', '', 'http://www.ectouch.cn/data/assets/images/ectouch2_ad1.png', '1396339200', '1525161600', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('29', '255', '0', '2', '', 'http://www.ectouch.cn/data/assets/images/ectouch2_ad2.png', '1396339200', '1525161600', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('30', '255', '0', '3', '', 'http://www.ectouch.cn/data/assets/images/ectouch2_ad3.png', '1396339200', '1525161600', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('31', '256', '0', '1', '', 'themes/xiaomi/images/index-theme-icon1.gif', '1396339200', '1525161600', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('32', '256', '0', '1', '', 'themes/xiaomi/images/index-theme-icon2.gif', '1396339200', '1525161600', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('33', '256', '0', '1', '', 'themes/xiaomi/images/index-theme-icon3.gif', '1396339200', '1525161600', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('34', '256', '0', '1', '', 'themes/xiaomi/images/index-theme-icon4.gif', '1396339200', '1525161600', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('35', '256', '0', '1', '', 'themes/xiaomi/images/index-theme-icon5.gif', '1396339200', '1525161600', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('36', '256', '0', '1', '', 'themes/xiaomi/images/index-theme-icon6.gif', '1396339200', '1525161600', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('37', '256', '0', '1', '', 'themes/xiaomi/images/index-theme-icon7.gif', '1396339200', '1525161600', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('38', '256', '0', '1', '', 'themes/xiaomi/images/index-theme-icon8.gif', '1396339200', '1525161600', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('39', '256', '0', '1', '', 'themes/xiaomi/images/index-theme-icon9.gif', '1396339200', '1525161600', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('40', '256', '0', '1', '', 'themes/xiaomi/images/index-theme-icon10.gif', '1396339200', '1525161600', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('41', '257', '0', '1', '', 'http://img30.360buyimg.com/mobilecms/jfs/t1285/301/224079095/27270/fbbc1f40/555c6c90Ncb4fe515.jpg', '1396339200', '1525161600', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('42', '258', '0', '1', '', 'http://m.360buyimg.com/mobilecms/jfs/t2500/354/5004119/28206/c13fa182/55e5a38fN0b84386b.jpg', '1396339200', '1525161600', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('43', '258', '0', '1', '', 'http://m.360buyimg.com/mobilecms/jfs/t1951/303/313107422/21311/5bc233db/55ffda9bN7c81adbe.jpg', '1396339200', '1525161600', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('44', '259', '0', '1', '', 'http://m.360buyimg.com/mobilecms/jfs/t1786/20/1237061297/11292/32fb2a76/55e41b2aN73bcf4d3.jpg', '1396339200', '1525161600', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('45', '259', '0', '1', '', 'http://m.360buyimg.com/mobilecms/jfs/t1660/172/1178175164/12107/b84acf01/55e41becN110f0639.jpg', '1396339200', '1525161600', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('46', '260', '0', '1', '', 'http://m.360buyimg.com/mobilecms/jfs/t1753/282/1346478890/16937/b0c72fa9/55e41ca6N55f0952e.jpg', '1396339200', '1525161600', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('47', '261', '0', '1', '', 'http://m.360buyimg.com/mobilecms/jfs/t1339/42/1033573654/18650/85fb7e47/55e41d25Ne7fd71e7.jpg', '1396339200', '1525161600', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('48', '262', '0', '1', '', 'http://m.360buyimg.com/mobilecms/jfs/t1825/226/1292630398/9320/a7003c2f/55e42185N8d6eb615.jpg', '1396339200', '1525161600', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('49', '262', '0', '1', '', 'http://m.360buyimg.com/mobilecms/jfs/t1753/288/1310409506/7943/7beba973/55e4221bN9857b1f4.jpg', '1396339200', '1525161600', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('50', '263', '0', '1', '', 'http://m.360buyimg.com/mobilecms/jfs/t2293/126/6325541/15463/885e77f2/55e5a839N76e8a8ab.jpg', '1396339200', '1525161600', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('51', '263', '0', '1', '', 'http://m.360buyimg.com/mobilecms/jfs/t2101/138/4648025/12171/7f46ddb9/55e5ac15N3f33b3cd.jpg', '1396339200', '1525161600', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('52', '264', '0', '1', '', 'http://m.360buyimg.com/mobilecms/jfs/t2317/6/7126462/28018/ea8767a/55e5a70bNb1ffd2fe.jpg', '1396339200', '1525161600', '', '', '', '0', '1');

-- ----------------------------
-- Table structure for `ecs_admin_action`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_admin_action`;
CREATE TABLE `ecs_admin_action` (
  `action_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `action_code` varchar(20) NOT NULL DEFAULT '',
  `relevance` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`action_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=136 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_admin_action
-- ----------------------------
INSERT INTO `ecs_admin_action` VALUES ('1', '0', 'goods', '');
INSERT INTO `ecs_admin_action` VALUES ('2', '0', 'cms_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('3', '0', 'users_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('4', '0', 'priv_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('5', '0', 'sys_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('6', '0', 'order_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('7', '0', 'promotion', '');
INSERT INTO `ecs_admin_action` VALUES ('8', '0', 'email', '');
INSERT INTO `ecs_admin_action` VALUES ('9', '0', 'templates_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('10', '0', 'db_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('11', '0', 'sms_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('21', '1', 'goods_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('22', '1', 'remove_back', '');
INSERT INTO `ecs_admin_action` VALUES ('23', '1', 'cat_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('24', '1', 'cat_drop', 'cat_manage');
INSERT INTO `ecs_admin_action` VALUES ('25', '1', 'attr_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('26', '1', 'brand_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('27', '1', 'comment_priv', '');
INSERT INTO `ecs_admin_action` VALUES ('84', '1', 'tag_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('30', '2', 'article_cat', '');
INSERT INTO `ecs_admin_action` VALUES ('31', '2', 'article_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('32', '2', 'shopinfo_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('33', '2', 'shophelp_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('34', '2', 'vote_priv', '');
INSERT INTO `ecs_admin_action` VALUES ('35', '7', 'topic_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('74', '4', 'template_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('73', '3', 'feedback_priv', '');
INSERT INTO `ecs_admin_action` VALUES ('38', '3', 'integrate_users', '');
INSERT INTO `ecs_admin_action` VALUES ('39', '3', 'sync_users', 'integrate_users');
INSERT INTO `ecs_admin_action` VALUES ('40', '3', 'users_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('41', '3', 'users_drop', 'users_manage');
INSERT INTO `ecs_admin_action` VALUES ('42', '3', 'user_rank', '');
INSERT INTO `ecs_admin_action` VALUES ('85', '3', 'surplus_manage', 'account_manage');
INSERT INTO `ecs_admin_action` VALUES ('43', '4', 'admin_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('44', '4', 'admin_drop', 'admin_manage');
INSERT INTO `ecs_admin_action` VALUES ('45', '4', 'allot_priv', 'admin_manage');
INSERT INTO `ecs_admin_action` VALUES ('46', '4', 'logs_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('47', '4', 'logs_drop', 'logs_manage');
INSERT INTO `ecs_admin_action` VALUES ('48', '5', 'shop_config', '');
INSERT INTO `ecs_admin_action` VALUES ('49', '5', 'ship_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('50', '5', 'payment', '');
INSERT INTO `ecs_admin_action` VALUES ('51', '5', 'shiparea_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('52', '5', 'area_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('53', '6', 'order_os_edit', '');
INSERT INTO `ecs_admin_action` VALUES ('54', '6', 'order_ps_edit', 'order_os_edit');
INSERT INTO `ecs_admin_action` VALUES ('55', '6', 'order_ss_edit', 'order_os_edit');
INSERT INTO `ecs_admin_action` VALUES ('56', '6', 'order_edit', 'order_os_edit');
INSERT INTO `ecs_admin_action` VALUES ('57', '6', 'order_view', '');
INSERT INTO `ecs_admin_action` VALUES ('58', '6', 'order_view_finished', '');
INSERT INTO `ecs_admin_action` VALUES ('59', '6', 'repay_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('60', '6', 'booking', '');
INSERT INTO `ecs_admin_action` VALUES ('61', '6', 'sale_order_stats', '');
INSERT INTO `ecs_admin_action` VALUES ('62', '6', 'client_flow_stats', '');
INSERT INTO `ecs_admin_action` VALUES ('78', '7', 'snatch_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('83', '7', 'ad_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('80', '7', 'gift_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('81', '7', 'card_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('70', '1', 'goods_type', '');
INSERT INTO `ecs_admin_action` VALUES ('82', '7', 'pack', '');
INSERT INTO `ecs_admin_action` VALUES ('79', '7', 'bonus_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('75', '5', 'friendlink', '');
INSERT INTO `ecs_admin_action` VALUES ('76', '5', 'db_backup', '');
INSERT INTO `ecs_admin_action` VALUES ('77', '5', 'db_renew', 'db_backup');
INSERT INTO `ecs_admin_action` VALUES ('86', '4', 'agency_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('87', '3', 'account_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('88', '5', 'flash_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('89', '5', 'navigator', '');
INSERT INTO `ecs_admin_action` VALUES ('90', '7', 'auction', '');
INSERT INTO `ecs_admin_action` VALUES ('91', '7', 'group_by', '');
INSERT INTO `ecs_admin_action` VALUES ('92', '7', 'favourable', '');
INSERT INTO `ecs_admin_action` VALUES ('93', '7', 'whole_sale', '');
INSERT INTO `ecs_admin_action` VALUES ('94', '1', 'goods_auto', '');
INSERT INTO `ecs_admin_action` VALUES ('95', '2', 'article_auto', '');
INSERT INTO `ecs_admin_action` VALUES ('96', '5', 'cron', '');
INSERT INTO `ecs_admin_action` VALUES ('97', '5', 'affiliate', '');
INSERT INTO `ecs_admin_action` VALUES ('98', '5', 'affiliate_ck', '');
INSERT INTO `ecs_admin_action` VALUES ('99', '8', 'attention_list', '');
INSERT INTO `ecs_admin_action` VALUES ('100', '8', 'email_list', '');
INSERT INTO `ecs_admin_action` VALUES ('101', '8', 'magazine_list', '');
INSERT INTO `ecs_admin_action` VALUES ('102', '8', 'view_sendlist', '');
INSERT INTO `ecs_admin_action` VALUES ('103', '1', 'virualcard', '');
INSERT INTO `ecs_admin_action` VALUES ('104', '7', 'package_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('105', '1', 'picture_batch', '');
INSERT INTO `ecs_admin_action` VALUES ('106', '1', 'goods_export', '');
INSERT INTO `ecs_admin_action` VALUES ('107', '1', 'goods_batch', '');
INSERT INTO `ecs_admin_action` VALUES ('108', '1', 'gen_goods_script', '');
INSERT INTO `ecs_admin_action` VALUES ('109', '5', 'sitemap', '');
INSERT INTO `ecs_admin_action` VALUES ('110', '5', 'file_priv', '');
INSERT INTO `ecs_admin_action` VALUES ('111', '5', 'file_check', '');
INSERT INTO `ecs_admin_action` VALUES ('112', '9', 'template_select', '');
INSERT INTO `ecs_admin_action` VALUES ('113', '9', 'template_setup', '');
INSERT INTO `ecs_admin_action` VALUES ('114', '9', 'library_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('115', '9', 'lang_edit', '');
INSERT INTO `ecs_admin_action` VALUES ('116', '9', 'backup_setting', '');
INSERT INTO `ecs_admin_action` VALUES ('117', '9', 'mail_template', '');
INSERT INTO `ecs_admin_action` VALUES ('118', '10', 'db_backup', '');
INSERT INTO `ecs_admin_action` VALUES ('119', '10', 'db_renew', '');
INSERT INTO `ecs_admin_action` VALUES ('120', '10', 'db_optimize', '');
INSERT INTO `ecs_admin_action` VALUES ('121', '10', 'sql_query', '');
INSERT INTO `ecs_admin_action` VALUES ('122', '10', 'convert', '');
INSERT INTO `ecs_admin_action` VALUES ('124', '11', 'sms_send', '');
INSERT INTO `ecs_admin_action` VALUES ('128', '7', 'exchange_goods', '');
INSERT INTO `ecs_admin_action` VALUES ('129', '6', 'delivery_view', '');
INSERT INTO `ecs_admin_action` VALUES ('130', '6', 'back_view', '');
INSERT INTO `ecs_admin_action` VALUES ('131', '5', 'reg_fields', '');
INSERT INTO `ecs_admin_action` VALUES ('132', '5', 'shop_authorized', '');
INSERT INTO `ecs_admin_action` VALUES ('133', '5', 'webcollect_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('134', '4', 'suppliers_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('135', '4', 'role_manage', '');

-- ----------------------------
-- Table structure for `ecs_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_admin_log`;
CREATE TABLE `ecs_admin_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `log_time` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `log_info` varchar(255) NOT NULL DEFAULT '',
  `ip_address` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`log_id`),
  KEY `log_time` (`log_time`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3728 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_admin_log
-- ----------------------------
INSERT INTO `ecs_admin_log` VALUES ('3697', '1446663718', '6', '编辑商店设置: ', '222.182.199.85');
INSERT INTO `ecs_admin_log` VALUES ('3698', '1446663743', '6', '编辑商店设置: ', '222.182.199.85');
INSERT INTO `ecs_admin_log` VALUES ('3699', '1446663787', '6', '编辑商店设置: ', '222.182.199.85');
INSERT INTO `ecs_admin_log` VALUES ('3700', '1446665861', '6', '编辑商店设置: ', '222.182.199.85');
INSERT INTO `ecs_admin_log` VALUES ('3701', '1446665871', '6', '编辑商店设置: ', '222.182.199.85');
INSERT INTO `ecs_admin_log` VALUES ('3702', '1447181200', '1', '还原数据库备份: 备份时间2015-11-05 22:51:44', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3703', '1450021611', '1', '编辑权限管理: admin', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3704', '1450021652', '1', '编辑权限管理: admin', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3705', '1450022084', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3706', '1450022336', '1', '编辑商品: Yeelight床头灯', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3707', '1450022400', '1', '编辑商品: Yeelight床头灯', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3708', '1450022737', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3709', '1450022820', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3710', '1450023177', '1', '编辑商品: 小米电视2 40英寸', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3711', '1450023332', '1', '编辑商品: 小米头戴式耳机', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3712', '1450401139', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3713', '1450401228', '1', '编辑商品: 好站长社区铁三角COR150入耳式耳机', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3714', '1450401347', '1', '编辑文章: 好站长F码购买通道', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3715', '1450401409', '1', '编辑广告: 首页轮播下广告3', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3716', '1450401417', '1', '编辑广告: 首页轮播下广告2', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3717', '1450401427', '1', '编辑广告: 首页轮播下广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3718', '1450401438', '1', '编辑广告: 首页倒计时广告1', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3719', '1450401523', '1', '编辑权限管理: admin', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3720', '1450401615', '1', '编辑权限管理: admin', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3721', '1450401642', '1', '编辑会员账号: heirui', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3722', '1450401671', '1', '添加会员账号: 好站长资源网', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3723', '1450401882', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3724', '1450508317', '1', '编辑权限管理: admin', '58.19.185.3');
INSERT INTO `ecs_admin_log` VALUES ('3725', '1450508372', '1', '编辑商店设置: ', '58.19.185.3');
INSERT INTO `ecs_admin_log` VALUES ('3726', '1450508704', '1', '编辑商店设置: ', '58.19.185.3');
INSERT INTO `ecs_admin_log` VALUES ('3727', '1450508990', '1', '编辑商店设置: ', '58.19.185.3');

-- ----------------------------
-- Table structure for `ecs_admin_message`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_admin_message`;
CREATE TABLE `ecs_admin_message` (
  `message_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `sender_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `receiver_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sent_time` int(11) unsigned NOT NULL DEFAULT '0',
  `read_time` int(11) unsigned NOT NULL DEFAULT '0',
  `readed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `sender_id` (`sender_id`,`receiver_id`),
  KEY `receiver_id` (`receiver_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_admin_message
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_admin_user`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_admin_user`;
CREATE TABLE `ecs_admin_user` (
  `user_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `ec_salt` varchar(10) DEFAULT NULL,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `last_login` int(11) NOT NULL DEFAULT '0',
  `last_ip` varchar(15) NOT NULL DEFAULT '',
  `action_list` text NOT NULL,
  `nav_list` text NOT NULL,
  `lang_type` varchar(50) NOT NULL DEFAULT '',
  `agency_id` smallint(5) unsigned NOT NULL,
  `suppliers_id` smallint(5) unsigned DEFAULT '0',
  `todolist` longtext,
  `role_id` smallint(5) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `user_name` (`user_name`),
  KEY `agency_id` (`agency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_admin_user
-- ----------------------------
INSERT INTO `ecs_admin_user` VALUES ('1', 'admin', 'admin@haoid.cn', '51edba7b304c16d41aa1ba1f78f6aa96', '8425', '1450021287', '1450572338', '127.0.0.1', 'all', '商品列表|goods.php?act=list,订单列表|order.php?act=list,用户评论|comment_manage.php?act=list,会员列表|users.php?act=list,商店设置|shop_config.php?act=list_edit', '', '0', '0', null, null);

-- ----------------------------
-- Table structure for `ecs_adsense`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_adsense`;
CREATE TABLE `ecs_adsense` (
  `from_ad` smallint(5) NOT NULL DEFAULT '0',
  `referer` varchar(255) NOT NULL DEFAULT '',
  `clicks` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `from_ad` (`from_ad`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_adsense
-- ----------------------------
INSERT INTO `ecs_adsense` VALUES ('11', '本站', '1');
INSERT INTO `ecs_adsense` VALUES ('41', '本站', '1');
INSERT INTO `ecs_adsense` VALUES ('48', '本站', '1');
INSERT INTO `ecs_adsense` VALUES ('3', '本站', '5');
INSERT INTO `ecs_adsense` VALUES ('84', '本站', '2');
INSERT INTO `ecs_adsense` VALUES ('17', '本站', '3');
INSERT INTO `ecs_adsense` VALUES ('24', '本站', '1');
INSERT INTO `ecs_adsense` VALUES ('4', '本站', '2');
INSERT INTO `ecs_adsense` VALUES ('8', '本站', '8');
INSERT INTO `ecs_adsense` VALUES ('100', '本站', '2');
INSERT INTO `ecs_adsense` VALUES ('12', '本站', '1');
INSERT INTO `ecs_adsense` VALUES ('14', '本站', '1');
INSERT INTO `ecs_adsense` VALUES ('0', '本站', '4');
INSERT INTO `ecs_adsense` VALUES ('2', '本站', '11');
INSERT INTO `ecs_adsense` VALUES ('7', '本站', '8');
INSERT INTO `ecs_adsense` VALUES ('5', '本站', '1');
INSERT INTO `ecs_adsense` VALUES ('10', '本站', '1');
INSERT INTO `ecs_adsense` VALUES ('9', '本站', '5');
INSERT INTO `ecs_adsense` VALUES ('27', '本站', '4');
INSERT INTO `ecs_adsense` VALUES ('16', '本站', '3');
INSERT INTO `ecs_adsense` VALUES ('19', '本站', '1');

-- ----------------------------
-- Table structure for `ecs_ad_custom`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_ad_custom`;
CREATE TABLE `ecs_ad_custom` (
  `ad_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ad_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ad_name` varchar(60) DEFAULT NULL,
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext,
  `url` varchar(255) DEFAULT NULL,
  `ad_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ad_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_ad_custom
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_ad_position`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_ad_position`;
CREATE TABLE `ecs_ad_position` (
  `position_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `position_name` varchar(60) NOT NULL DEFAULT '',
  `ad_width` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ad_height` smallint(5) unsigned NOT NULL DEFAULT '0',
  `position_desc` varchar(255) NOT NULL DEFAULT '',
  `position_style` text NOT NULL,
  PRIMARY KEY (`position_id`)
) ENGINE=MyISAM AUTO_INCREMENT=265 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_ad_position
-- ----------------------------
INSERT INTO `ecs_ad_position` VALUES ('3', '首页轮播下广告', '316', '170', '', '<ul class=\"home-promo-list clearfix\">\r\n{foreach from=$ads item=ad name=ad}\r\n<li class=\"<!-- {if $smarty.foreach.ad.first} -->first<!-- {/if} -->\">{$ad}</li>\r\n{/foreach}\r\n</ul>\r\n');
INSERT INTO `ecs_ad_position` VALUES ('4', '新品上架左边广告', '620', '310', '', '\r\n{foreach from=$ads item=ad}\r\n{$ad}\r\n{/foreach}\r\n');
INSERT INTO `ecs_ad_position` VALUES ('5', '大家都喜欢左边广告', '620', '310', '', '\r\n{foreach from=$ads item=ad}\r\n{$ad}\r\n{/foreach}\r\n');
INSERT INTO `ecs_ad_position` VALUES ('8', '分类下商品左侧广告大', '234', '614', '', '\r\n{foreach from=$ads item=ad}\r\n{$ad}\r\n{/foreach}\r\n');
INSERT INTO `ecs_ad_position` VALUES ('9', '分类下商品左侧广告小', '234', '300', '', '\r\n{foreach from=$ads item=ad}\r\n{$ad}\r\n{/foreach}\r\n');
INSERT INTO `ecs_ad_position` VALUES ('1', '首页倒计时广告位', '580', '250', '', '{foreach from=$ads item=ad}\r\n{$ad}\r\n{/foreach}');
INSERT INTO `ecs_ad_position` VALUES ('2', '分类下商品左广告', '340', '400', '', '{foreach from=$ads item=ad}\r\n{$ad}\r\n{/foreach}');
INSERT INTO `ecs_ad_position` VALUES ('11', '团购页顶部广告', '1226', '460', '', '{foreach from=$ads item=ad}\r\n{$ad}\r\n{/foreach}');
INSERT INTO `ecs_ad_position` VALUES ('255', '手机端首页Banner广告位', '360', '168', '', '<ul>\r\n{foreach from=$ads item=ad}\r\n  <li>{$ad}</li>\r\n{/foreach}\r\n</ul>\r\n');
INSERT INTO `ecs_ad_position` VALUES ('256', '手机端首页主题精选广告位', '360', '168', '', '{foreach from=$ads item=ad name=ads}{if $smarty.foreach.ads.iteration % 2 == 0}<li class=\"fl\">{else}<li class=\"fr\">{/if}{$ad}</li>{/foreach}');
INSERT INTO `ecs_ad_position` VALUES ('257', '手机端首页限时促销广告位1', '360', '168', '', '{foreach from=$ads item=ad name=ads}{$ad}{/foreach}');
INSERT INTO `ecs_ad_position` VALUES ('258', '手机端首页限时促销广告位2', '360', '168', '', '{foreach from=$ads item=ad name=ads}{$ad}{/foreach}');
INSERT INTO `ecs_ad_position` VALUES ('259', '手机端首页热门活动广告位1', '360', '168', '', '{foreach from=$ads item=ad name=ads}{$ad}{/foreach}');
INSERT INTO `ecs_ad_position` VALUES ('260', '手机端首页热门活动广告位2', '360', '168', '', '{foreach from=$ads item=ad name=ads}{$ad}{/foreach}');
INSERT INTO `ecs_ad_position` VALUES ('261', '手机端首页精品推荐广告位1', '360', '168', '', '{foreach from=$ads item=ad name=ads}{$ad}{/foreach}');
INSERT INTO `ecs_ad_position` VALUES ('262', '手机端首页精品推荐广告位2', '360', '168', '', '{foreach from=$ads item=ad name=ads}{$ad}{/foreach}');
INSERT INTO `ecs_ad_position` VALUES ('263', '手机端首页品牌街广告位1', '360', '168', '', '{foreach from=$ads item=ad name=ads}{$ad}{/foreach}');
INSERT INTO `ecs_ad_position` VALUES ('264', '手机端首页品牌街广告位2', '360', '168', '', '{foreach from=$ads item=ad name=ads}{$ad}{/foreach}');

-- ----------------------------
-- Table structure for `ecs_affiliate_log`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_affiliate_log`;
CREATE TABLE `ecs_affiliate_log` (
  `log_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `order_id` mediumint(8) NOT NULL,
  `time` int(10) NOT NULL,
  `user_id` mediumint(8) NOT NULL,
  `user_name` varchar(60) DEFAULT NULL,
  `money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `point` int(10) NOT NULL DEFAULT '0',
  `separate_type` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_affiliate_log
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_agency`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_agency`;
CREATE TABLE `ecs_agency` (
  `agency_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `agency_name` varchar(255) NOT NULL,
  `agency_desc` text NOT NULL,
  PRIMARY KEY (`agency_id`),
  KEY `agency_name` (`agency_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_agency
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_area_region`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_area_region`;
CREATE TABLE `ecs_area_region` (
  `shipping_area_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `region_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`shipping_area_id`,`region_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_area_region
-- ----------------------------
INSERT INTO `ecs_area_region` VALUES ('1', '1');
INSERT INTO `ecs_area_region` VALUES ('2', '1');
INSERT INTO `ecs_area_region` VALUES ('3', '1');
INSERT INTO `ecs_area_region` VALUES ('4', '3');
INSERT INTO `ecs_area_region` VALUES ('4', '4');
INSERT INTO `ecs_area_region` VALUES ('4', '6');
INSERT INTO `ecs_area_region` VALUES ('4', '9');
INSERT INTO `ecs_area_region` VALUES ('4', '30');
INSERT INTO `ecs_area_region` VALUES ('4', '32');
INSERT INTO `ecs_area_region` VALUES ('5', '1');

-- ----------------------------
-- Table structure for `ecs_article`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_article`;
CREATE TABLE `ecs_article` (
  `article_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` smallint(5) NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `content` longtext NOT NULL,
  `author` varchar(30) NOT NULL DEFAULT '',
  `author_email` varchar(60) NOT NULL DEFAULT '',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `article_type` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `is_open` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `file_url` varchar(255) NOT NULL DEFAULT '',
  `open_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `link` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`article_id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_article
-- ----------------------------
INSERT INTO `ecs_article` VALUES ('1', '2', '免责条款', '', '', '', '', '0', '1', '1398244330', '', '0', '', '');
INSERT INTO `ecs_article` VALUES ('2', '2', '隐私保护', '', '', '', '', '0', '1', '1398244330', '', '0', '', '');
INSERT INTO `ecs_article` VALUES ('3', '2', '咨询热点', '', '', '', '', '0', '1', '1398244330', '', '0', '', '');
INSERT INTO `ecs_article` VALUES ('4', '2', '联系我们', '<p>&nbsp;11</p>', '', '', '', '0', '1', '1398244330', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('5', '2', '公司简介', '<p>&nbsp;<span style=\"color: rgb(51, 51, 51); font-family: \'Microsoft YaHei\', Tahoma, Helvetica, Arial, simsun; font-size: 14px; line-height: 25px;\">&nbsp;</span><span style=\"color: rgb(51, 51, 51); font-family: \'Microsoft YaHei\', Tahoma, Helvetica, Arial, simsun; font-size: 14px; line-height: 25px;\">&nbsp; 丽子（lizi.com）隶属于杭州徐娜拉电子商务有限公司，是辛巴信息科技（杭州）有限公司、香港丽子美妆SHOP INVESTMENT CORP.、经纬创投中国等联合投资、致力于提供专业全球美妆零售与服务的网络零售公司。旗下有丽子化妆品零售官网（www.lizi.com），娜拉（丽子美妆）化妆品零售品牌（www.nala.com.cn）、农草堂保健品零售品牌。旗下亦有美丽工匠、美丽法则、理肤师、柏羽等自主化妆品品牌。</span></p>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; color: rgb(51, 51, 51); font-family: \'Microsoft YaHei\', Tahoma, Helvetica, Arial, simsun; font-size: 14px; line-height: 25px;\">&nbsp; &nbsp; &nbsp; 企业由刘勇明先生创办于2009年，目标和宗旨为专注化妆品售卖100年。专业体现在我们的专注，专业体现在我们对化妆品商品和品牌的深刻理解和精挑细选，专业也体现在我们在网络购物从售前、售后、选品、设计、仓储发货、物流、包裹、客户CRM关怀等环节的细腻和苛刻把控。正是这份专注和专业，让丽子成为一个可以信赖的公司和用户可以信赖的购物网站。</p>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; color: rgb(51, 51, 51); font-family: \'Microsoft YaHei\', Tahoma, Helvetica, Arial, simsun; font-size: 14px; line-height: 25px;\">&nbsp; &nbsp; &nbsp; 丽子代理和销售的国内外知名化妆品品牌超过300余种，并与国内外知名化妆品公司和保健品公司建立了深厚的合作关系，携手提供良好的商品和服务。丽子官网为用户提供品质正宗、价格低廉、选品专业、服务一流的极佳网络化妆品购买体验。由于良好的用户体验，丽子官网累计购买用户已超过500万人，是近年来中国发展最快的女性电子商务网站之一。同时，丽子公司旗下娜拉淘宝网店（nala.taobao.com）和天猫旗舰店（nala.tmall.com）分别是淘宝和天猫上最大的化妆品零售品牌之一。丽子同时是中国国际航空公司电商战略合作伙伴，并由PICC中国人保为顾客每一份订单做网购正品承保。</p>\r\n<p style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: \'Microsoft YaHei\', Tahoma, Helvetica, Arial, simsun; font-size: 14px; line-height: 25px;\"><img alt=\"丽子lizi\" original=\"\" src=\"http://img.nala.com.cn/images/about/20140331-1.jpg\" style=\"border: 0px; display: inline;\" /></p>\r\n<h3 style=\"margin: 30px 0px 20px; padding: 0px 0px 10px; font-size: 18px; font-weight: 400; font-family: \'Microsoft YaHei\', Tahoma, Helvetica, Arial, simsun; line-height: 25px; color: rgb(255, 119, 0); border-bottom-width: 2px; border-bottom-style: solid; border-bottom-color: rgb(51, 51, 51);\">发展历程</h3>\r\n<p style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: \'Microsoft YaHei\', Tahoma, Helvetica, Arial, simsun; font-size: 14px; line-height: 25px;\">2009.5 海外留学生刘勇明先生开始从事<span class=\"red\" style=\"color: rgb(255, 119, 0);\">网络化妆品零售</span>业务；</p>\r\n<p style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: \'Microsoft YaHei\', Tahoma, Helvetica, Arial, simsun; font-size: 14px; line-height: 25px;\">2010.10 公司经营业绩突破<span class=\"red\" style=\"color: rgb(255, 119, 0);\">500万元/月</span>；</p>\r\n<p style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: \'Microsoft YaHei\', Tahoma, Helvetica, Arial, simsun; font-size: 14px; line-height: 25px;\">2010.12 经纬创投投资<span class=\"red\" style=\"color: rgb(255, 119, 0);\">500万美元</span>用于公司业务拓展；</p>\r\n<p style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: \'Microsoft YaHei\', Tahoma, Helvetica, Arial, simsun; font-size: 14px; line-height: 25px;\">2011.5 公司经营业绩突破<span class=\"red\" style=\"color: rgb(255, 119, 0);\">1000万元/月</span>；</p>\r\n<p style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: \'Microsoft YaHei\', Tahoma, Helvetica, Arial, simsun; font-size: 14px; line-height: 25px;\">2012 公司董事长刘勇明先生获得<span class=\"red\" style=\"color: rgb(255, 119, 0);\">杭州市杰出创业人才奖</span>；</p>\r\n<p style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: \'Microsoft YaHei\', Tahoma, Helvetica, Arial, simsun; font-size: 14px; line-height: 25px;\">2012.5 公司经营业绩突破<span class=\"red\" style=\"color: rgb(255, 119, 0);\">2000万元/月</span>；</p>\r\n<p style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: \'Microsoft YaHei\', Tahoma, Helvetica, Arial, simsun; font-size: 14px; line-height: 25px;\">2012 荣获浙江省首届<span class=\"red\" style=\"color: rgb(255, 119, 0);\">十大杰出青年网商</span>；</p>\r\n<p style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: \'Microsoft YaHei\', Tahoma, Helvetica, Arial, simsun; font-size: 14px; line-height: 25px;\">2012 荣获杭州市江干区留学<span class=\"red\" style=\"color: rgb(255, 119, 0);\">创业先进个人</span>奖励；</p>\r\n<p style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: \'Microsoft YaHei\', Tahoma, Helvetica, Arial, simsun; font-size: 14px; line-height: 25px;\">2013 荣获杭州市江干区<span class=\"red\" style=\"color: rgb(255, 119, 0);\">百人计划</span>入选；</p>\r\n<p style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: \'Microsoft YaHei\', Tahoma, Helvetica, Arial, simsun; font-size: 14px; line-height: 25px;\">2013.5 公司经营零售业绩突破<span class=\"red\" style=\"color: rgb(255, 119, 0);\">3000万元/月</span>，发单量突破<span class=\"red\" style=\"color: rgb(255, 119, 0);\">10000单/日</span>；</p>\r\n<p style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: \'Microsoft YaHei\', Tahoma, Helvetica, Arial, simsun; font-size: 14px; line-height: 25px;\">2013.7 公司华东<span class=\"red\" style=\"color: rgb(255, 119, 0);\">一万平方米仓储</span>大仓投入使用。</p>\r\n<h3 style=\"margin: 30px 0px 20px; padding: 0px 0px 10px; font-size: 18px; font-weight: 400; font-family: \'Microsoft YaHei\', Tahoma, Helvetica, Arial, simsun; line-height: 25px; color: rgb(255, 119, 0); border-bottom-width: 2px; border-bottom-style: solid; border-bottom-color: rgb(51, 51, 51);\">现任管理团队</h3>\r\n<p style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: \'Microsoft YaHei\', Tahoma, Helvetica, Arial, simsun; font-size: 14px; line-height: 25px;\"><img alt=\"现任管理团队-丽子美妆\" original=\"\" src=\"http://img.nala.com.cn/images/about/20141027.jpg\" style=\"border: 0px; display: inline;\" /></p>\r\n<p style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: \'Microsoft YaHei\', Tahoma, Helvetica, Arial, simsun; font-size: 14px; line-height: 25px;\"><a class=\"blue\" style=\"color: rgb(0, 153, 255); -webkit-transition: color 0.2s; transition: color 0.2s;\">&gt;&gt;感谢那些奉献过青春和热情的创始人！</a></p>\r\n<h3 id=\"new_dongxiang\" style=\"margin: 30px 0px 20px; padding: 0px 0px 10px; font-size: 18px; font-weight: 400; font-family: \'Microsoft YaHei\', Tahoma, Helvetica, Arial, simsun; line-height: 25px; color: rgb(255, 119, 0); border-bottom-width: 2px; border-bottom-style: solid; border-bottom-color: rgb(51, 51, 51);\">最新动向</h3>\r\n<h5 style=\"margin: 0px 0px 10px; padding: 0px; font-size: 24px; font-weight: 400; color: rgb(51, 51, 51); font-family: \'Microsoft YaHei\', Tahoma, Helvetica, Arial, simsun; line-height: 25px;\">丽子与欧莱雅达成战略合作</h5>\r\n<p style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: \'Microsoft YaHei\', Tahoma, Helvetica, Arial, simsun; font-size: 14px; line-height: 25px;\">辛巴技术与百年化妆品牌巴黎欧莱雅签订战略合作协议。</p>\r\n<p style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: \'Microsoft YaHei\', Tahoma, Helvetica, Arial, simsun; font-size: 14px; line-height: 25px;\">此次战略合作的签署，标志着辛巴技术成为巴黎欧莱雅在国内最大的两家A级品牌授权经销商之一。辛巴技术旗下的所有巴黎欧莱雅化妆品将进一步规范品牌授权、品类将更加丰富、服务将更为专业，这意味着将为客户带去更多的惊喜。据悉巴黎欧莱雅选择A级品牌授权经销商的条件非常苛刻，对于企业的品牌、服务、价值三大维度都有非常高的要求。辛巴此次成功签约意味着向业内最专业的化妆品零售电商更进了一步。</p>\r\n<p style=\"margin: 15px 0px 0px; padding: 0px; color: rgb(51, 51, 51); font-family: \'Microsoft YaHei\', Tahoma, Helvetica, Arial, simsun; font-size: 14px; line-height: 25px;\"><img alt=\"中国人保为丽子正品承保-丽子lizi\" original=\"\" src=\"http://img.nala.com.cn/images/about/20140412-2.jpg\" style=\"border: 0px; display: inline;\" /></p>\r\n<h5 style=\"margin: 25px 0px 10px; padding: 0px; font-size: 24px; font-weight: 400; color: rgb(51, 51, 51); font-family: \'Microsoft YaHei\', Tahoma, Helvetica, Arial, simsun; line-height: 25px;\">中国人保为丽子正品承保</h5>\r\n<p style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: \'Microsoft YaHei\', Tahoma, Helvetica, Arial, simsun; font-size: 14px; line-height: 25px;\">丽子所在辛巴信息技术（杭州）有限公司与PICC中国人民财产保险公司举行战略合作签约仪式。</p>\r\n<p style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: \'Microsoft YaHei\', Tahoma, Helvetica, Arial, simsun; font-size: 14px; line-height: 25px;\">此番合作是国内化妆品网上零售行业的一个创举，在业内率先引入实力雄厚的世界级大型保险公司，为消费者提供坚实的第三方保障。</p>\r\n<p style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: \'Microsoft YaHei\', Tahoma, Helvetica, Arial, simsun; font-size: 14px; line-height: 25px;\">人保财险郑总表示，辛巴信息技术接下来将成为人保公司的优质客户，双方的合作将实现互利双赢的良好局面。</p>', '', '', '', '0', '1', '1398244330', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('6', '-1', '用户协议', '', '', '', '', '0', '1', '1398244330', '', '0', '', '');
INSERT INTO `ecs_article` VALUES ('7', '4', '三星电子宣布将在中国发布15款3G手机', '<p>全球领先的电子产品及第二大移动通信终端制造商三星电子今天在北京宣布，为全面支持中国开展3G移动通信业务，将在3G服务正式商用之际，向中国市场推出 15款3G手机。这些产品分别支持中国三大无线运营商的各种3G服务，并已经得到运营商的合作认可。凭借在电子和通信领域的整体技术实力和对消费者的准确 把握，三星电子已经开始全面发力中国的3G移动通信市场。<br />\n<br />\n&nbsp;&nbsp;&nbsp;&nbsp;2009年1月，中国政府宣布正式启动3G移动通信服务。并根据中国的实际情况，决定由三大运营商分别采用全部三种3G网络制式，&nbsp;即以中国自主知识产权为核心的TD-SCDMA，以欧洲为主要市场的WCDMA和源自北美的CDMA2000技术。<br />\n<br />\n&nbsp;&nbsp;&nbsp;&nbsp;多 年来，三星电子秉承&ldquo;做中国人民喜爱的企业，贡献于中国社会的企业&rdquo;的企业理念，准确地把握了中国社会的发展和市场的需求，推出了一系列深受中国消费者喜 爱的电子产品。为了配合中国推进具有自主知识产权的3G移动通信标准TD-SCDMA，&nbsp;三星电子从2000年开始在中国设立了通信技术研究院，&nbsp;开始进 行TD-SCDMA技术的研究。作为最早承诺支持中国3G标准的手机制造企业，三星电子已经先后投入了上亿元的研究费用，&nbsp;组建了几百人的研发团队。推出 的TD-SCDMA制式的产品，不仅通过了各级权威部门的试验和检测，也经历了2008年北京奥运会的现场考验。此次为中国移动定制的TD-SCDMA手 机，包括了满足高端商务需求的双待产品B7702C，以及数字电视手机、多媒体手机和时尚手机。<br />\n<br />\n&nbsp;&nbsp;&nbsp;&nbsp;作为世界第二大手机制造企业，三 星电子已经在全球3G市场积累了多年的技术和市场经验。最新的统计表明，在完全采用WCDMA标准的欧洲，三星电子的市场份额已经排名第二。在为中国联通 准备的产品中，不仅包括能够支持HSDPA的高端多媒体手机S7520U，也涵盖了能够支持高速上网、在线电影、在线音乐等适合不同消费需求的各种产品。<br />\n<br />\n&nbsp;&nbsp;&nbsp;&nbsp;而 在主要采用CDMA2000技术的北美市场，三星电子也取得了市场份额的第一名。即将陆续上市的支持中国电信3G服务的EVDO产品，有高端商务手机 W709。该机能够支持EVDO/GSM的双网双待功能，含800万像素拍摄系统。其他产品还包括音乐手机M609，双模手机W239，以及时尚设计的 F539等。<br />\n<br />\n&nbsp;&nbsp;&nbsp;&nbsp;作为世界上少数能够提供支持三种3G标准的终端厂商，三星电子正利用其在通信、半导体、显示器以及数字多媒体等方面 的优势，加快产品数字融合的进程。除上述3G手机产品外，三星电子也于近期推出了用于3G网络的上网卡和网络笔记本电脑。三星电子专务、无线事业部大中华 区高级副总裁卢基学先生说，&ldquo;上述15款新品，&nbsp;只是我们二季度新产品的一部分。随着中国3G移动通信市场的不断扩大，三星还将推出更多适合中国市场的终 端产品，以满足消费者对于通信和数字产品的不同需求。三星也将积极配合运营商业务的发展计划，加快技术和应用的研发。中国3G的移动通信市场前景将是非常 明亮的。&rdquo;</p>', '', '', '', '0', '1', '1241426864', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('8', '4', '诺基亚牵手移动 5款热门TD手机机型推荐', '<p>随着5月17日电信日的来临，自从09年初网民对于3G方面关注越来越多，目前国内3G网络主要有中国移动TD-SCDMA，中国联通WCDMA以及 中国电信的CDMA2000这三种制式。到底是哪一种网络制式能让消费者满意，相信好多消费者都难以判断。  而作为3G网络最主要的组 成部分-手持终端（手机） ，相信也是好多消费者关注的焦点。目前，中国移动TD-SCDMA手机机型频频爆出，其中不乏亮点产品，像联想联想 Ophone、诺基亚、多普达 Magic等，下面就让笔者与大家一起来了解TD-SCDMA网络制式下的几款强势机型吧。  诺基亚TD-SCDMA手机　型号：待定　参考报价：尚未上市  随着国内3G网络发展速度加快及众多手机厂商纷纷跟进，诺基亚终于推出TD-SCDMA手机，这款诺基亚的首台TD-SCDMA测试手机型号目前仍无法 得知，但从键盘及菜单设计来看，我们可以是知道其并没有采用S60操作系统，只是配备了S40系统，机身直板造型与早期热卖的6300有几分相像。      图为：诺基亚TD-SCDMA手机  虽然没有更多的参数资料，但是从曝光的图片我们可以知道这款诺基亚TD-SCDMA手机必定配备了QVGA分辨率的屏幕以及320万像素的摄像头，而标准的MP3以及蓝牙等功能自然不会缺少，在功能方面不会比以往的S40手机逊色。      图为：诺基亚TD-SCDMA手机  这款诺基亚的TD手机最大的卖点便是提供了对TD-HSDPA技术的支持，最大的功能特色便是该技术被看为是TD网络下一步的演进技术，能够同时适用于 WCDMA和TD-SCDMA两种不同的网络支持，能够很好的支持非对称的数据业务，也就是说这款诺基亚手机的用户即便在全球漫游都能够使用到3G网络。 而其机身前置的摄像头也更是证实了其3G手机的身份。      图为：诺基亚TD-SCDMA手机  从目前曝光的测试情况来看，通过这款诺基亚TD手机连接网络，其下载速度能够稳定在1.3Mbps左右，不过根据国内有些媒体的报道，诺基亚官方已经证实将于今天下半年配合运营商中国移动对出自己的第一款TD-SCDMA制式的S60手机，大家要拭目以待了。     图为：诺基亚TD-SCDMA手机  最后较为耐人寻味的便是目前有业内人士指出目前曝光的的诺基亚TD手机其实是去年夏季就出现过的 TD测试手机，但是随着诺基亚拥有部分股份的TD芯片厂商&ldquo;凯明&rdquo;的倒闭，这款机型也就被取消了。尽管对于目前这款诺基亚的TD测试手机的身份尚无官方的 消息，但是诺基亚将推出TD手机遗失毫无悬念的事情了，相信大家也希望在TD制式下能够有更多的手机可以选择。</p>', '', '', '', '0', '1', '1241427051', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('9', '5', '配送方式', '', '', '', '', '0', '1', '1242576700', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('10', '5', '支付方式', '<p><img width=\"899\" height=\"1059\" alt=\"\" src=\"/xiaomi2015273/images/upload/Image/af7135721(1).png\" /></p>', '', '', '', '0', '1', '1242576717', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('11', '5', '购物指南', '', '', '', '', '0', '1', '1242576727', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('12', '6', '预约亲临到店服务', '<p><font size=\"2\">一般在购买时主要是依靠观察外观特征的方法来鉴别电池，而原装电池一般应具有以下一些特征：&nbsp;<br />\n<br />\n1、 电池外观整齐，外表面有一定的粗糙度且手感舒适，内表面手感光滑，灯光下能看见细密的纵向划痕&nbsp;<br />\n<br />\n2、 生产厂家字样应该轮廓清晰，且防伪标志亮度高，看上去有立体感，电池标贴 字迹清晰，有与电池类型相一致的电池件号<br />\n3、 电池标贴采用二次印刷技术，在一定光线下从斜面看，条形码部分的颜色比其他部分要黑，且用手触摸有凹凸感<br />\n<br />\n4、 原装电池电极与手机电池片宽度相等，电池电极下方标有&ldquo; + &rdquo;、&ldquo; - &rdquo;标志，电池电极片之间的隔离材料与外壳材料一致，但不是一体<br />\n<br />\n5、 原装电池装入手机时手感舒适，安装自如，电池按压部分卡位适当而且牢固<br />\n<br />\n6、 原装电池的金属触点采用优质的铜片，只有在正面看时才会有反光，而从其它角度看的话，都是比较暗淡的</font></p>', '', '', '', '1', '1', '1242576826', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('15', '7', '官方微信', '', '', '', '', '0', '1', '1242577023', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('16', '7', '小米部落', '', '', '', '', '0', '1', '1242577032', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('17', '7', '新浪微博', '', '', '', '', '0', '1', '1242577041', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('18', '10', '资金管理', '', '', '', '', '0', '1', '1242577127', '', '0', 'user.php?act=account_log', '');
INSERT INTO `ecs_article` VALUES ('19', '10', '我的收藏', '', '', '', '', '0', '1', '1242577178', '', '0', 'user.php?act=collection_list', '');
INSERT INTO `ecs_article` VALUES ('20', '10', '我的订单', '', '', '', '', '0', '1', '1242577199', '', '0', 'user.php?act=order_list', '');
INSERT INTO `ecs_article` VALUES ('21', '8', '相关下载', '', '', '', '服务', '0', '1', '1242577293', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('22', '8', '自助服务', '', '', '', '售后', '0', '1', '1242577308', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('23', '8', '售后政策', '', '', '', '质量', '1', '1', '1242577326', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('24', '9', '联系小米', '', '', '', '', '0', '1', '1242577432', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('25', '9', '加入小米', '', '', '', '', '0', '1', '1242577448', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('26', '9', '了解小米', '', '', '', '', '0', '1', '1242577459', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('27', '4', '800万像素超强拍照机 LG Viewty Smart再曝光', '', '', '', '', '0', '1', '1242577702', '', '0', 'http://news.imobile.com.cn/index-a-view-id-66790.html', '');
INSERT INTO `ecs_article` VALUES ('28', '11', '飞利浦9@9促销', '<p>&nbsp;</p>\r\n<div class=\"boxCenterList RelaArticle\" id=\"com_v\">\r\n<p align=\"left\">作为一款性价比极高的入门级<font size=\"3\" color=\"#ff0000\"><strong>商务手机</strong></font>，飞利浦<a href=\"mailto:9@9v\">Xenium&nbsp; 9@9v</a>三围大小为105&times;44&times;15.8mm，机身重量仅为<strong><font size=\"3\" color=\"#ff0000\">75g</font></strong>，装配了一块低规格1.75英寸128&times;160像素65000色CSTN显示屏。身正面采用月银色功能键区与屏幕数字键区相分隔，键盘设计较为<font size=\"3\"><strong><font color=\"#ff0000\">别</font><font color=\"#ff0000\">致</font></strong></font>，中部导航键区采用钛金色的&ldquo;腰带&rdquo;彰显出浓郁的商务气息。</p>\r\n<p align=\"left\">&nbsp;</p>\r\n<p align=\"left\">此款手机采用<strong><font size=\"3\" color=\"#ff0000\">触摸屏</font></strong>设计，搭配精致的手写笔，可支持手写中文和英文两个版本。增强的内置系统还能识别潦草字迹，确保在移动中和匆忙时输入文字的识别率。手写指令功能还支持特定图案的瞬间调用，独特的手写记事本功能，可以在触摸屏上随意绘制个性化的图案并进行<strong><font size=\"3\" color=\"#ff0000\">记事提醒</font></strong>，让商务应用更加随意。</p>\r\n<p align=\"left\">&nbsp;</p>\r\n<p align=\"left\">&nbsp;作为入门级为数不多支持<strong><font size=\"3\" color=\"#ff0000\">双卡功能</font></strong>的手机，可以同时插入两张SIM卡，通过菜单随意切换，只需开启漫游自动切换模式，<a href=\"mailto:9@9V\">9@9V</a>在该模式下能够判断网络情况，自动切换适合的手机号。</p>\r\n<p align=\"left\">&nbsp;</p>\r\n<p align=\"left\">&nbsp;</p>\r\n</div>\r\n<p>&nbsp;</p>', '', '', '', '0', '1', '1242578199', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('29', '11', '诺基亚5320 促销', '<p>&nbsp;</p>\r\n<div id=\"com_v\" class=\"boxCenterList RelaArticle\">\r\n<p>诺基亚5320XpressMusic音乐手机采用XpressMusic系列常见的黑红、黑蓝配色方案，而材质方便则选用的是经过<strong><font size=\"3\" color=\"#ff0000\">抛光处理</font></strong>的工程塑料；三围/体重为，为108&times;46&times;15mm/<strong><font size=\"3\" color=\"#ff0000\">90g</font></strong>，手感舒适。</p>\r\n<p>&nbsp;</p>\r\n<p>诺基亚5320采用的是一块可视面积为2.0英寸的<font size=\"3\" color=\"#ff0000\"><strong>1600万色</strong></font>屏幕，分辨率是常见的240&times;320像素（QVGA）。虽然屏幕不是特别大，但效果非常精细，色彩还原不错。</p>\r\n<p>&nbsp;</p>\r\n<p>手机背面，诺基亚为5320XM配备一颗<strong><font size=\"3\" color=\"#ff0000\">200W像素</font></strong>的摄像头，并且带有<strong><font size=\"3\" color=\"#ff0000\">两个LED的补光灯</font></strong>，可以实现拍照、摄像功能，并能通过彩信、邮件方式发送给朋友。</p>\r\n<p>&nbsp;</p>\r\n</div>\r\n<p>&nbsp;</p>', '', '', '', '1', '1', '1242578676', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('30', '11', '促销诺基亚N96', '<p>&nbsp;</p>\r\n<div class=\"boxCenterList RelaArticle\" id=\"com_v\">\r\n<p>诺基亚N96采用了<strong><font size=\"3\" color=\"#ff0000\">双向滑盖</font></strong>设计，机身整体呈灰黑色，沉稳、大气，机身材质采用了高强度的塑料材质，手机背面采用了抛光面板的设计风格。N96三维体积103*55*20mm，重量为125g。屏幕方面，诺基亚N96配备一块<strong><font size=\"3\" color=\"#ff0000\">2.8英寸</font></strong>的屏幕，支持<strong><font size=\"3\" color=\"#ff0000\">1670万色</font></strong>显示，分辨率达到QVGA（320&times;240）水准。</p>\r\n<p>&nbsp;<img src=\"http://img2.zol.com.cn/product/21/896/ceN6LBMCid3X6.jpg\" alt=\"\" /></p>\r\n<p>&nbsp;</p>\r\n<p>诺基亚N96设置有专门的<strong><font size=\"3\" color=\"#ff0000\">音乐播放键</font></strong>和标准的3.5毫米音频插口，支持多格式音乐播放。内置了<strong><font size=\"3\" color=\"#ff0000\">多媒体播放器</font></strong>，支持FM调频收音机等娱乐功能。N96手机支持<strong><font size=\"3\" color=\"#ff0000\">N-Gage游戏平台</font></strong>，内置包括<font size=\"3\" color=\"#ff0000\"><strong>《PinBall》完整版</strong></font>在内的四款N-Gage游戏，除了手机本身内置的游戏，还可以从N-Gage的网站下载或者购买最新的游戏，而且可以在论坛里和其他玩家一起讨论。</p>\r\n<p>&nbsp;</p>\r\n</div>\r\n<p>&nbsp;<img src=\"http://img2.zol.com.cn/product/21/898/cekkw57qJjSI.jpg\" alt=\"\" /></p>', '', '', '', '1', '1', '1242578826', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('13', '6', '服务网点', '<p>\n<div class=\"artibody\">\n<p><font size=\"2\"><strong>1、&nbsp;什么是水货？</strong><br />\n提及水货手机，按照行业内的说法，可以将水货手机分成三类：A类、B类和C类。 </font></p>\n<p><font size=\"2\">A类水货手机是指由国外、港澳台等地区在没有经过正常海关渠道的情况下进入国内市场的产品，就是我们常说的走私货， 与行货的主要差异是在输入法上，这类手机都是英文输入法或者是港澳台地区的繁体中文输入法。这类手机其最主要的目的是为了逃避国家关税或者因为该种产品曾 经过不正当改装而不能够通过正常渠道入关，质量一般没有大的问题。但由于逃避关税本身就是违法的，所以购买这类手机的用户根本得不到任何售后保障服务； </font></p>\n<p><font size=\"2\">B类水货手机就是走私者将手机的系统软件由英文版升级至中文版后，偷运到内地，然后贴上非法渠道购买的入网标志，作为行货手机充数。 </font></p>\n<p><font size=\"2\">C类水货手机则是那些由其他型号机改装、更换芯片等等方法做假&ldquo;生产&rdquo;出来的，或者就是从各地购买手机的部件，自己组装然后再贴上非法购买的入网标志。 </font></p>\n<p><font size=\"2\">水货手机虽然不排除它是原厂正货的可能，但通过市场调研发现，绝大多数水货手机都是改版的次货，而且产品基本没有受国内厂商的保修许可。</font></p>\n<p><font size=\"2\"><strong>2、水货有哪些？</strong>水货有两种，一种俗称港行，也称作水行，这种产品原本是在香港 及周边地区销售的，但是经过非法途径进入大陆地区销售。另一种是欧版水改机，也称作欧版，水改等，此种产品以英文改版机为主，通过刷改机内软件达到英文改 中文的目的，原来这类产品是销往欧美地区的，由于和大陆地区有相当大的价格差，所以通过走私进入中国市场。</font></p>\n<p><font size=\"2\"><strong>3、水货手机的危害</strong><br />\n1、售后服务无保障 <br />\n手机作为精密类电子产品，软件、硬件方面都有可能产生不同的问题。购买正规渠道的手机，一旦出现问题，只要将问题反映给厂商客户服务中心并静候佳音就 可以了。大多数走私手机的贩卖点规模较小，根本没有资金和技术能力建立起自己的维修网点，因此他们往往制定非常苛刻的保修条件，将国家明令的一年保修期缩 短为三个月，并加入完全对走私手机经销商有利的诸如&ldquo;认为摔打&rdquo;等概念难以界定的排除条件(众所周知，手机很有可能发生摔撞事件)，是确确实实的霸王条 款。规定时间内手机出了故障，走私手机经销商会通过曲解条款尽可能地开脱保修责任。即使他们愿意承担保修服务，也需将手机发往广州、深圳等地，委托他人维 修。一来路途漫长，二来经手人繁多，小问题&ldquo;修&rdquo;成了大问题。最终走私手机经销商会以无法维修为由劝客户自行去当地正规客服维修。至于维修费用，他们自然 也不愿意出了。<br />\n<br />\n2、产品本身质量不过关<br />\n&nbsp;&nbsp;&nbsp; 现在很多奸商为了谋取暴利，经常使用C类的翻修或者组装手机冒充A类水货手机进行销售。作为消费者来说面对和正规行货之间巨大的价格差异，他们无法分辨想要购买的手机是否象销售商说的那样质量过硬，在销售商的巧舌如簧下只能眼看自己的钱包&ldquo;减肥&rdquo;。 </font></p>\n<p><font size=\"2\">但是这类翻修或者组装的水货手机往往为了降低成本，其采用的配件往往也是不合格产品，甚至也是伪劣产品，可以想象由这样产品组装起来的手机的质量究竟可以好到那里去。目前在经常看到手机电池爆炸伤人的事件的报道，究其原因也是消费者购买了这些组装的水货手机。</font></p>\n<p><font size=\"2\">而且不光这类手机硬件存在问题，包括手机使用的软件。由于组装的水货硬件规格根本无法保证和原场产品一致，手机使用的软件也会造成和手机硬件的冲突。频繁死机就是家常便饭，更有甚者会造成经常性的电话本丢失，无法联系到好友。</font></p>\n<p><br />\n<font size=\"2\"><strong>4、如何分辨行、水货手机？</strong><br />\n1、看手机上是否贴有信息产业部&ldquo;进网许可&rdquo;标志。水货与正品的入网标志稍微有一点不同：真的入网标志一般都是针式打印机打印的，数字清晰，颜色较浅，仔细看有针打的凹痕；假的入网标志一般是普通喷墨打印机打印的，数字不很清晰，颜色较深，没有凹痕。 </font></p>\n<p><font size=\"2\">2、检查手机的配置，包括中文说明书、电池、充电器等，如果是厂家原配，一般均贴有厂家的激光防伪标志。原厂配置的 中文说明书通常印刷精美，并与其他语言的说明书及相关产品资料的印刷质量、格式、风格等保持一致。不是原厂家配置的中文说明书通常印刷质量低劣，常出现错 别字，甚至字迹模糊。正品手机的包装盒中均附带有原厂合格证、原厂条码卡、原厂保修卡，而水货则没有。 </font></p>\n<p><font size=\"2\">3、确认经销商的保修条例是否与厂家一致，在购买手机时应索要发票和保修卡。 </font></p>\n<p><font size=\"2\">4、电子串号是否一致也是验证是否水货手机的重要途径。首先在手机上按&ldquo;*#06#&rdquo;，一般会在手机上显示15个数 字，这就是本手机的IMEI码。然后打开手机的电池盖，在手机里有一张贴纸，上面也有一个IMEI码，这个码应该同手机上显示的IMEI码完全一致。然后 再检查手机的外包装盒上的贴纸，上面也应该有一个IMEI码，这个码也应该同手机上显示的IMEI码完全一致。如果此三个码有不一致的地方，这个手机就有 问题。</font></p>\n</div>\n<p>&nbsp;</p>\n</p>', '', '', '', '0', '1', '1242576911', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('14', '6', '小米之家', '', '', '', '', '0', '1', '1242576927', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('31', '12', '诺基亚6681手机广告欣赏', '<object>\n<param value=\"always\" name=\"allowScriptAccess\" />\n<param value=\"transparent\" name=\"wmode\" />\n<param value=\"http://6.cn/player.swf?flag=0&amp;vid=nZNyu3nGNWWYjmtPQDY9nQ\" name=\"movie\" /><embed width=\"480\" height=\"385\" src=\"http://6.cn/player.swf?flag=0&amp;vid=nZNyu3nGNWWYjmtPQDY9nQ\" allowscriptaccess=\"always\" wmode=\"transparent\" type=\"application/x-shockwave-flash\"></embed></object>', '', '', '', '0', '1', '1242579069', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('32', '12', '手机游戏下载', '<p>三星SGHU308说明书下载，点击相关链接下载</p>', '', '', '', '1', '1', '1242579189', '', '0', 'http://soft.imobile.com.cn/index-a-list_softs-cid-1.html', '');
INSERT INTO `ecs_article` VALUES ('33', '12', '三星SGHU308说明书下载', '<p>三星SGHU308说明书下载</p>', '', '', '', '1', '1', '1242579559', 'data/article/1245043292228851198.rar', '2', 'http://', '');
INSERT INTO `ecs_article` VALUES ('34', '12', '3G知识普及', '<p>\n<h2>3G知识普及</h2>\n<div class=\"t_msgfont\" id=\"postmessage_8792145\"><font color=\"black\">3G，全称为3rd Generation，中文含义就是指第三代数字通信。<br />\n</font><br />\n<font color=\"black\">　　1995年问世的第一代<span class=\"t_tag\" onclick=\"tagshow(event)\" href=\"http://mbbs.enet.com.cn/tag.php?name=%C4%A3%C4%E2\">模拟</span>制式<span class=\"t_tag\" onclick=\"tagshow(event)\" href=\"http://mbbs.enet.com.cn/tag.php?name=%CA%D6%BB%FA\">手机</span>（1G）只能进行<span class=\"t_tag\" onclick=\"tagshow(event)\" href=\"http://mbbs.enet.com.cn/tag.php?name=%D3%EF%D2%F4\">语音</span>通话；<br />\n</font><br />\n<font color=\"black\">　　1996到1997年出现的第二代GSM、TDMA等数字制式手机（2G）便增加了接收数据的功能，如接收电子邮件或网页；<br />\n</font><br />\n<font color=\"black\">　　3G不是2009年诞生的，它是上个世纪的产物，而早在2007年国外就已经产生4G了，而<span class=\"t_tag\" onclick=\"tagshow(event)\" href=\"http://mbbs.enet.com.cn/tag.php?name=%D6%D0%B9%FA\">中国</span>也于2008年成功开发出<span class=\"t_tag\" onclick=\"tagshow(event)\" href=\"http://mbbs.enet.com.cn/tag.php?name=%D6%D0%B9%FA\">中国</span>4G，其网络传输的速度可达到每秒钟2G，也就相当于下一部电影只要一秒钟。在上世纪90年末的日韩电影如《我的野蛮女友》中，女主角使用的可以让对方看见自己的视频<span class=\"t_tag\" onclick=\"tagshow(event)\" href=\"http://mbbs.enet.com.cn/tag.php?name=%B5%E7%BB%B0\">电话</span>，就是属于3G技术的重要运用之一。日韩等国3G的运用是上世纪末期的事。而目前国外有些地区已经试运行3.5G甚至4G网络。<br />\n</font><br />\n<font color=\"black\">　 </font><font color=\"black\">（以下为误导）2009年问世的第三代（3G）与 前两代的主要区别是在传输声音和数据的速度上的提升，它能够在全球范围内更好地实现无缝漫游，并处理图像、音乐、视频流等多种媒体形式，提供包括网页浏 览、电话会议、电子商务等多种信息服务，同时也要考虑与已有第二代系统的良好兼容性。为了提供这种服务，无线网络必须能够支持不同的数据传输速度，也就是 说在室内、室外和行车的环境中能够分别支持至少2Mbps（兆比特／每秒）、384kbps（千比特／每秒）以及144kbps的传输速度。（此数值根据 网络环境会发生变化)。<br />\n</font><br />\n<font color=\"black\">　　3G标准，国际电信联盟(ITU)目前一共确定了全球四大3G标准，它们分别是WCDMA、CDMA2000和TD-SCDMA和WiMAX。</font><br />\n<br />\n<font color=\"black\">3G标准　　国际电信联盟（ITU）在2000年5月确定W-CDMA、CDMA2000、TD-SCDMA以 及WiMAX四大主流无线接口标准，写入3G技术指导性文件《2000年国际移动通讯计划》（简称IMT&mdash;2000）。 CDMA是Code Division Multiple Access (码分多址)的缩写，是第三代移动通信系统的技术基础。第一代移动通信系统采用频分多址(FDMA)的模拟调制方式，这种系统的主要缺点是频谱利用率低， 信令干扰话音业务。第二代移动通信系统主要采用时分多址(TDMA)的数字调制方式，提高了系统容量，并采用独立信道传送信令，使系统性能大大改善，但 TDMA的系统容量仍然有限，越区切换性能仍不完善。CDMA系统以其频率规划简单、系统容量大、频率复用系数高、抗多径能力强、通信质量好、软容量、软 切换等特点显示出巨大的发展潜力。下面分别介绍一下3G的几种标准：<br />\n</font><br />\n<br />\n<font color=\"black\">　　 </font><br />\n<font color=\"black\">(1) W-CDMA</font><font color=\"black\"><br />\n</font><br />\n<br />\n<font color=\"black\">　　也称为WCDMA，全称为Wideband CDMA，也称为CDMA Direct Spread，意为宽频分码多重存取，这是基于GSM网发展出来的3G技术规范，是欧洲提出的宽带CDMA技术，它与日本提出的宽带CDMA技术基本相 同，目前正在进一步融合。W-CDMA的支持者主要是以GSM系统为主的欧洲厂商，日本公司也或多或少参与其中，包括欧美的爱立信、阿尔卡特、<span class=\"t_tag\" onclick=\"tagshow(event)\" href=\"http://mbbs.enet.com.cn/tag.php?name=%C5%B5%BB%F9%D1%C7\">诺基亚</span>、 朗讯、北电，以及日本的NTT、富士通、夏普等厂商。 该标准提出了GSM(2G)-GPRS-EDGE-WCDMA(3G)的演进策略。这套系统能够架设在现有的GSM网络上，对于系统提供商而言可以较轻易 地过渡，但是GSM系统相当普及的亚洲对这套新技术的接受度预料会相当高。因此W-CDMA具有先天的市场优势。<br />\n</font><br />\n<br />\n<font color=\"black\">　　 </font><br />\n<font color=\"black\">(2)CDMA2000</font><font color=\"black\"><br />\n</font><br />\n<br />\n<font color=\"black\">　　CDMA2000是由窄带CDMA(CDMA IS95)技术发展而来的宽带CDMA技术，也称为CDMA Multi-Carrier，它是由美国高通北美公司为主导提出，<span class=\"t_tag\" onclick=\"tagshow(event)\" href=\"http://mbbs.enet.com.cn/tag.php?name=%C4%A6%CD%D0%C2%DE%C0%AD\">摩托罗拉</span>、Lucent 和后来加入的韩国三星都有参与，韩国现在成为该标准的主导者。这套系统是从窄频CDMAOne数字标准衍生出来的，可以从原有的CDMAOne结构直接升 级到3G，建设成本低廉。但目前使用CDMA的地区只有日、韩和北美，所以CDMA2000的支持者不如W-CDMA多。不过CDMA2000的研发技术 却是目前各标准中进度最快的，许多3G手机已经率先面世。该标准提出了从CDMA IS95(2G)-CDMA20001x-CDMA20003x(3G)的演进策略。CDMA20001x被称为2.5代移动通信技术。 CDMA20003x与CDMA20001x的主要区别在于应用了多路载波技术，通过采用三载波使带宽提高。目前<span class=\"t_tag\" onclick=\"tagshow(event)\" href=\"http://mbbs.enet.com.cn/tag.php?name=%D6%D0%B9%FA%B5%E7%D0%C5\">中国电信</span>正在采用这一方案向3G过渡，并已建成了CDMA IS95网络。<br />\n</font><br />\n<br />\n<font color=\"black\">　　 </font><br />\n<font color=\"black\">(3)TD-SCDMA</font><font color=\"black\"><br />\n</font><br />\n<br />\n<font color=\"black\">　　全称为Time Division - Synchronous CDMA(时分<span class=\"t_tag\" onclick=\"tagshow(event)\" href=\"http://mbbs.enet.com.cn/tag.php?name=%CD%AC%B2%BD\">同步</span>CDMA)，该标准是由中国大陆独自制定的3G标准，1999年6月29日，中国原邮电部电信科学技术研究院（大唐电信）向ITU提出。该标准将智能无线、<span class=\"t_tag\" onclick=\"tagshow(event)\" href=\"http://mbbs.enet.com.cn/tag.php?name=%CD%AC%B2%BD\">同步</span>CDMA和<span class=\"t_tag\" onclick=\"tagshow(event)\" href=\"http://mbbs.enet.com.cn/tag.php?name=%C8%ED%BC%FE\">软件</span>无 线电等当今国际领先技术融于其中，在频谱利用率、对业务支持具有灵活性、频率灵活性及成本等方面的独特优势。另外，由于中国内的庞大的市场，该标准受到各 大主要电信设备厂商的重视，全球一半以上的设备厂商都宣布可以支持TD&mdash;SCDMA标准。 该标准提出不经过2.5代的中间环节，直接向3G过渡，非常适用于GSM系统向3G升级。<br />\n</font><br />\n<br />\n<font color=\"black\">　　 </font><br />\n<font color=\"black\">(4)WiMAX</font><font color=\"black\"><br />\n</font><br />\n<br />\n<font color=\"black\">　　WiMAX 的全名是微波存取全球互通(Worldwide Interoperability for Microwave Access)，又称为802&middot;16无线城域网，是又一种为企业和家庭用户提供&ldquo;最后一英里&rdquo;的宽带无线连接方案。将此技术与需要授权或免授权的微波设备 相结合之后，由于成本较低，将扩大宽带无线市场，改善企业与服务供应商的认知度。2007年10月19日，国际电信联盟在日内瓦举行的无线通信全体会议 上，经过多数国家投票通过，WiMAX正式被批准成为继WCDMA、CDMA2000和TD-SCDMA之后的第四个全球3G标准。</font></div>\n</p>', '', '', '', '0', '1', '1242580013', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('35', '4', '“沃”的世界我做主', '<p><strong>导语：<br />\n<br />\n</strong>&nbsp;&nbsp;&nbsp;&nbsp;今年5月17日，是每年一度的世界电信日。同时，也是值得中国人民高兴的日子。昨天，中国联通企业品牌下的全品牌业务&ldquo;沃&rdquo;开始试商用，这也就意味着继中国移动、中国电信之后，国内第三种3G网络将要走入我们的生活，为我们带来更加快速便捷的通信服务。<br />\n<br />\n&nbsp;&nbsp;&nbsp;&nbsp;沃，意味着此品牌将为用户提供一个丰盈的平台，为个人客户、家庭客户、集团客户和企业服务提供全面的支撑，它代表着中国联通全新的服务理念和创新的品牌精神，在3G时代，为客户提供精彩的信息化服务。<br />\n<br />\n&nbsp;&nbsp;&nbsp;&nbsp;下面小编为各位介绍几款各大手机品牌专为&ldquo;沃&rdquo;打造的定制机型，为您迎接&ldquo;沃&rdquo;的到来做好充分准备。</p>\n<p><strong>诺基亚6210si<br />\n<br />\n</strong>&nbsp;&nbsp;&nbsp;&nbsp;诺基亚6210s大家肯定不陌生，经典的滑盖导航手机。其实6210si 与6210s外观、参数、硬件配置几乎完全一样，只不过在6210s的基础上，增加了对WCDMA网络的支持，成为中国联通定制手机。6210si采用诺 基亚经典的滑盖机身设计，机身面板为钢琴烤漆材质，高贵优雅。机身背板则为磨砂外观工程塑料材质，美观的同时增加了手机与手掌间的摩擦系数，防止使用中手 机滑落。</p>\n<p><strong>摩托罗拉A3100<br />\n</strong><br />\n&nbsp;&nbsp;&nbsp;&nbsp;作为摩托罗拉旗下为中国联通定制的A3100，它有着经典的鹅卵石造型， 大气稳重。从最初的U6，到U9再到A3100，鹅卵石的辉煌依旧。A3100有着高贵的血统，钢琴烤漆黑色面板，金属拉丝机身以及 Windows&nbsp;Mobile&nbsp;6.1&nbsp;Professional操作系统，都告诉我们它绝对是一部不可多得的好手机。</p>\n<p><br />\n<strong>三星S7520U<br />\n</strong><br />\n&nbsp;&nbsp;&nbsp;&nbsp;三星S7520U外观造型时尚，镜面设计以及超薄的 98.4&times;55&times;11.6mm金属机身，更适合女性朋友使用。通观机身，最显眼的就要数这3.0英寸的超大触摸屏幕了，400x240的WQGVA级别分 辨率，能够比QVGA级别屏幕显示更为细腻，细节表现力更强。500万像素摄像头说明了该机还是一名拍照能手，捕捉精彩瞬间不在话下。</p>', '', '', '', '0', '0', '1242974613', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('36', '12', '母婴4周年最高200减100', '', '', '', '', '0', '1', '1406074910', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('37', '12', '充话费抢美菱对开门冰箱', '', '', '', '', '0', '1', '1406074918', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('38', '12', '京东大篷车百城行', '', '', '', '', '0', '1', '1406074925', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('39', '12', '七夕表白珠宝专场', '', '', '', '', '0', '1', '1406074932', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('40', '12', '出游装备1-5折还满减', '', '', '', '', '0', '1', '1406074938', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('41', '12', '小家电专场满500减100', '', '', '', '', '0', '1', '1406074946', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('42', '12', '手机7周年特惠盛典', '', '', '', '', '0', '1', '1406074952', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('43', '12', '海尔品牌团 特价一天！', '', '', '', '', '0', '1', '1406074958', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('44', '11', '科龙空调发红包，快抢！', '', '', '', '', '0', '1', '1408040206', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('45', '11', '秒抢299元双缸洗衣机，8.15钜惠', '', '', '', '', '0', '1', '1408040214', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('46', '11', '美的首发送豪礼，等的您抢！', '', '', '', '', '0', '1', '1408040228', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('47', '13', '企业用户采购通道', '', '', '', '', '0', '1', '1437084092', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('48', '13', '小米手机防伪查询', '', '', '', '', '0', '1', '1437084104', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('49', '13', '小米手机官翻版', '', '', '', '', '0', '1', '1437084114', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('50', '13', '小米路由器官翻版', '', '', '', '', '0', '1', '1437084123', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('51', '13', '好站长F码购买通道', '', '', '', '', '0', '1', '1437084134', '', '0', 'http://', '');

-- ----------------------------
-- Table structure for `ecs_article_cat`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_article_cat`;
CREATE TABLE `ecs_article_cat` (
  `cat_id` smallint(5) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(255) NOT NULL DEFAULT '',
  `cat_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `cat_desc` varchar(255) NOT NULL DEFAULT '',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '50',
  `show_in_nav` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cat_id`),
  KEY `cat_type` (`cat_type`),
  KEY `sort_order` (`sort_order`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_article_cat
-- ----------------------------
INSERT INTO `ecs_article_cat` VALUES ('1', '系统分类', '2', '', '系统保留分类', '50', '0', '0');
INSERT INTO `ecs_article_cat` VALUES ('2', '网店信息', '3', '', '网店信息分类', '50', '0', '1');
INSERT INTO `ecs_article_cat` VALUES ('3', '网店帮助分类', '4', '', '网店帮助分类', '50', '1', '1');
INSERT INTO `ecs_article_cat` VALUES ('4', '3G资讯', '1', '', '', '50', '0', '0');
INSERT INTO `ecs_article_cat` VALUES ('5', '帮助中心', '5', '', '', '1', '0', '3');
INSERT INTO `ecs_article_cat` VALUES ('6', '小米之家', '5', '', '手机常识 ', '3', '0', '3');
INSERT INTO `ecs_article_cat` VALUES ('7', '关注小米', '5', '', '配送与支付 ', '50', '0', '3');
INSERT INTO `ecs_article_cat` VALUES ('8', '服务支持', '5', '', '', '2', '0', '3');
INSERT INTO `ecs_article_cat` VALUES ('9', '关于小米', '5', '', '联系我们 ', '4', '0', '3');
INSERT INTO `ecs_article_cat` VALUES ('10', '会员中心', '5', '', '', '50', '0', '3');
INSERT INTO `ecs_article_cat` VALUES ('11', '促销活动', '1', '', '', '50', '0', '0');
INSERT INTO `ecs_article_cat` VALUES ('12', '站内快讯', '1', '', '', '50', '0', '0');
INSERT INTO `ecs_article_cat` VALUES ('13', '小米资讯', '1', '', '', '50', '0', '0');

-- ----------------------------
-- Table structure for `ecs_attribute`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_attribute`;
CREATE TABLE `ecs_attribute` (
  `attr_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attr_name` varchar(60) NOT NULL DEFAULT '',
  `attr_input_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `attr_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `attr_values` text NOT NULL,
  `attr_index` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_linked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `attr_group` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_show_img` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`attr_id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_attribute
-- ----------------------------
INSERT INTO `ecs_attribute` VALUES ('11', '3', '颜色', '1', '1', '白\r\n黑\r\n蓝\r\n红\r\n黄\r\n灰\r\n黑白', '0', '0', '0', '0', '1');
INSERT INTO `ecs_attribute` VALUES ('10', '3', '尺寸', '1', '1', '15\r\n21\r\n25\r\n33\r\n38\r\n45\r\n52\r\n58', '0', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('12', '4', '颜色', '1', '1', '丁香紫\r\n樱花粉\r\n冰川蓝', '0', '0', '0', '0', '1');
INSERT INTO `ecs_attribute` VALUES ('13', '4', '线长', '1', '1', '50cm\r\n60cm\r\n70cm\r\n80cm', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `ecs_auction_log`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_auction_log`;
CREATE TABLE `ecs_auction_log` (
  `log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `act_id` mediumint(8) unsigned NOT NULL,
  `bid_user` mediumint(8) unsigned NOT NULL,
  `bid_price` decimal(10,2) unsigned NOT NULL,
  `bid_time` int(10) unsigned NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `act_id` (`act_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_auction_log
-- ----------------------------
INSERT INTO `ecs_auction_log` VALUES ('1', '4', '1', '170.00', '1242144083');

-- ----------------------------
-- Table structure for `ecs_auto_manage`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_auto_manage`;
CREATE TABLE `ecs_auto_manage` (
  `item_id` mediumint(8) NOT NULL,
  `type` varchar(10) NOT NULL,
  `starttime` int(10) NOT NULL,
  `endtime` int(10) NOT NULL,
  PRIMARY KEY (`item_id`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_auto_manage
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_back_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_back_goods`;
CREATE TABLE `ecs_back_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `back_id` mediumint(8) unsigned DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `product_sn` varchar(60) DEFAULT NULL,
  `goods_name` varchar(120) DEFAULT NULL,
  `brand_name` varchar(60) DEFAULT NULL,
  `goods_sn` varchar(60) DEFAULT NULL,
  `is_real` tinyint(1) unsigned DEFAULT '0',
  `send_number` smallint(5) unsigned DEFAULT '0',
  `goods_attr` text,
  PRIMARY KEY (`rec_id`),
  KEY `back_id` (`back_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_back_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_back_order`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_back_order`;
CREATE TABLE `ecs_back_order` (
  `back_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `delivery_sn` varchar(20) NOT NULL,
  `order_sn` varchar(20) NOT NULL,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `invoice_no` varchar(50) DEFAULT NULL,
  `add_time` int(10) unsigned DEFAULT '0',
  `shipping_id` tinyint(3) unsigned DEFAULT '0',
  `shipping_name` varchar(120) DEFAULT NULL,
  `user_id` mediumint(8) unsigned DEFAULT '0',
  `action_user` varchar(30) DEFAULT NULL,
  `consignee` varchar(60) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `country` smallint(5) unsigned DEFAULT '0',
  `province` smallint(5) unsigned DEFAULT '0',
  `city` smallint(5) unsigned DEFAULT '0',
  `district` smallint(5) unsigned DEFAULT '0',
  `sign_building` varchar(120) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `zipcode` varchar(60) DEFAULT NULL,
  `tel` varchar(60) DEFAULT NULL,
  `mobile` varchar(60) DEFAULT NULL,
  `best_time` varchar(120) DEFAULT NULL,
  `postscript` varchar(255) DEFAULT NULL,
  `how_oos` varchar(120) DEFAULT NULL,
  `insure_fee` decimal(10,2) unsigned DEFAULT '0.00',
  `shipping_fee` decimal(10,2) unsigned DEFAULT '0.00',
  `update_time` int(10) unsigned DEFAULT '0',
  `suppliers_id` smallint(5) DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `return_time` int(10) unsigned DEFAULT '0',
  `agency_id` smallint(5) unsigned DEFAULT '0',
  PRIMARY KEY (`back_id`),
  KEY `user_id` (`user_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_back_order
-- ----------------------------
INSERT INTO `ecs_back_order` VALUES ('1', '20090615054961769', '2009061585887', '15', '2009061585884', '1245044533', '3', '', '1', 'admin', '刘先生', '海兴大厦', '1', '2', '52', '502', '', 'ecshop@ecshop.com', '', '010-25851234', '13986765412', '', '', '等待所有商品备齐后再发', '0.00', '10.00', '1245044964', '2', '0', '1245045515', '0');
INSERT INTO `ecs_back_order` VALUES ('2', '20090615055104671', '2009061585887', '15', '20090615', '1245044533', '3', '', '1', 'admin', '刘先生', '海兴大厦', '1', '2', '52', '502', '', 'ecshop@ecshop.com', '', '010-25851234', '13986765412', '', '', '等待所有商品备齐后再发', '0.00', '10.00', '1245045061', '1', '0', '1245045515', '0');
INSERT INTO `ecs_back_order` VALUES ('3', '20090615055780744', '2009061585887', '15', '123232', '1245044533', '3', '', '1', 'admin', '刘先生', '海兴大厦', '1', '2', '52', '502', '', 'ecshop@ecshop.com', '', '010-25851234', '13986765412', '', '', '等待所有商品备齐后再发', '0.00', '10.00', '1245045443', '0', '0', '1245045515', '0');
INSERT INTO `ecs_back_order` VALUES ('4', '20090615064331475', '2009061503335', '17', '00906150333512', '1245047978', '3', '', '1', 'admin', '刘先生', '海兴大厦', '1', '2', '52', '502', '', 'ecshop@ecshop.com', '', '010-25851234', '13986765412', '', '', '等待所有商品备齐后再发', '0.00', '10.00', '1245048189', '0', '0', '1245048212', '0');

-- ----------------------------
-- Table structure for `ecs_bonus_type`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_bonus_type`;
CREATE TABLE `ecs_bonus_type` (
  `type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `type_name` varchar(60) NOT NULL DEFAULT '',
  `type_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `send_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `min_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `max_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `send_start_date` int(11) NOT NULL DEFAULT '0',
  `send_end_date` int(11) NOT NULL DEFAULT '0',
  `use_start_date` int(11) NOT NULL DEFAULT '0',
  `use_end_date` int(11) NOT NULL DEFAULT '0',
  `min_goods_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_bonus_type
-- ----------------------------
INSERT INTO `ecs_bonus_type` VALUES ('5', '订单满500减100', '100.00', '2', '500.00', '0.00', '1413964800', '1479888000', '1413964800', '1511424000', '500.00');

-- ----------------------------
-- Table structure for `ecs_booking_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_booking_goods`;
CREATE TABLE `ecs_booking_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `email` varchar(60) NOT NULL DEFAULT '',
  `link_man` varchar(60) NOT NULL DEFAULT '',
  `tel` varchar(60) NOT NULL DEFAULT '',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_desc` varchar(255) NOT NULL DEFAULT '',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `booking_time` int(10) unsigned NOT NULL DEFAULT '0',
  `is_dispose` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dispose_user` varchar(30) NOT NULL DEFAULT '',
  `dispose_time` int(10) unsigned NOT NULL DEFAULT '0',
  `dispose_note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`rec_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_booking_goods
-- ----------------------------
INSERT INTO `ecs_booking_goods` VALUES ('1', '1', 'ecshop@ecshop.com', '刘先生', '13986765412', '19', '可以补货吗？\n我想要一个', '1', '1242142762', '0', '', '0', '');
INSERT INTO `ecs_booking_goods` VALUES ('2', '3', 'text@ecshop.com', '叶先生', '13588104710', '17', '什么时候有货', '1', '1242143592', '0', '', '0', '');

-- ----------------------------
-- Table structure for `ecs_brand`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_brand`;
CREATE TABLE `ecs_brand` (
  `brand_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(60) NOT NULL DEFAULT '',
  `brand_logo` varchar(80) NOT NULL DEFAULT '',
  `brand_desc` text NOT NULL,
  `site_url` varchar(255) NOT NULL DEFAULT '',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '50',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `brand_banner` varchar(80) DEFAULT '',
  PRIMARY KEY (`brand_id`),
  KEY `is_show` (`is_show`)
) ENGINE=MyISAM AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_brand
-- ----------------------------
INSERT INTO `ecs_brand` VALUES ('1', '创维', '1408388661280162950.gif', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('2', '统帅', '1408388666819567839.gif', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('3', '志高', '1408388672554358389.jpg', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('4', '科龙', '1408388684265799995.gif', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('5', '海尔', '1408388690499800497.gif', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('6', '海信', '1408388695099889406.gif', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('7', '赛忆', '1408388701900679009.gif', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('8', '美的', '1408388707352962838.jpg', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('9', '飞利浦', '1408388712994021778.gif', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('10', 'GESS', '1408388718360024044.gif', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('11', '雷瓦', '1408388724151793747.jpg', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('12', '松下', '1408388731946030201.gif', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('13', '力博得', '1408388737190527333.jpg', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('14', '华盛昌', '1408388743502127596.gif', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('15', '香山', '1408388750931256592.gif', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('16', '惠人', '1408388757754426015.jpg', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('17', '利仁', '1408388764380000521.gif', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('18', '德龙', '1408388769268713985.gif', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('19', '雷士照明', '1408388776466056113.gif', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('20', '佳德', '1408388781280380119.gif', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('21', '华帝', '1408388787219162737.gif', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('22', '博深', '1408388792532331469.jpg', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('23', '史丹利', '1408388798539179139.gif', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('24', '宝工', '1408388804300088359.jpg', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('25', '九阳', '1408388809703051734.jpg', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('26', 'Coway', '1408388816346280508.jpg', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('27', '德尔玛', '1408388822765587489.jpg', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('28', '艾美特', '1408388827131597608.jpg', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('29', '春花', '1408388834144170833.jpg', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('30', '科沃斯', '1408388841053871044.jpg', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('31', '美菱', '1408388850881493453.jpg', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('32', '海燕', '1408388856645179024.jpg', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('33', '联想', '1408388860169094248.jpg', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('34', '雷神', '1408388867536060524.jpg', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('35', '宏碁', '1408388873290611085.jpg', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('36', '微软', '1408388884893878072.jpg', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('37', '机械革命', '1408388892253249002.jpg', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('38', '华硕', '1408388897063788352.jpg', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('39', '惠普', '1408388904367521114.jpg', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('40', '刊菲', '1408388912842195129.gif', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('41', 'HARMARYCIAGA', '1408388917023098895.gif', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('42', '俏妮妃', '1408388927970168396.gif', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('43', '琼瑛', '1408388934924405061.jpg', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('44', '时竟', '1408388941128040572.gif', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('45', '誉彩', '1408388948874779333.gif', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('46', '莱雪曼', '1408388959674000474.gif', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('47', '洗颜专科', '1408388968061368049.gif', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('48', '富安娜家纺', '1408388977236154439.jpg', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('49', '巧布万棉家纺', '1408388984062114039.gif', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('50', '九洲鹿', '1408388992835276757.gif', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('51', '爱斯基摩人', '1408389003705467870.gif', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('52', '么小毛家纺', '1408389011381507906.gif', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('53', '雅培', '1408389020467816163.gif', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('54', '美素力', '1408389028549234249.gif', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('55', '美赞臣', '1408389036032699536.gif', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('56', '雀巢', '1408389045513441324.jpg', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('57', '可瑞康', '1408389052474444489.gif', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('58', '惠氏', '1408389066427584551.gif', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('59', '纽诺迪克', '1408389072317069867.gif', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('60', '太太', '1408389079817514576.gif', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('61', '养生堂', '1408389088273428177.gif', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('62', '健安喜', '1408389094494256102.gif', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('63', '东阿阿胶', '1408389099241315294.gif', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('64', '康宝', '1408389123539332672.gif', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('65', '康佳', '1408389129807210291.gif', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('66', '维诺夫卡', '1408389135311019767.gif', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('67', '奔腾', '1408389143148210575.gif', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('68', '飞科', '1408389150819938429.gif', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('69', '博世', '1408389156477230125.gif', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('70', '老A', '1408389162960941945.gif', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('71', '山崎', '1408389168988509340.gif', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('72', '索尼', '', '', '', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('73', '海尔电脑', '1408400371994766756.gif', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('74', '清华同方', '1408400377137441291.gif', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('75', '美旅', '1408400628618339077.jpg', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('76', 'ELLE', '1408400611316891423.jpg', '', 'http://', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('77', '科颜氏', '', '', '', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('78', '小青猪', '', '', '', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('79', '希芸', '', '', '', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('80', 'It\'s Skin', '', '', '', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('81', '姬芮', '', '', '', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('82', '婵真', '', '', '', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('83', '美丽工匠', '', '', '', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('84', '亦博', '', '', '', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('85', '雅诗兰黛', '', '', '', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('86', 'CANMAKE', '', '', '', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('87', 'Solone', '', '', '', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('88', 'StyleNanda', '', '', '', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('89', '美国箭牌', '', '', '', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('90', '英国AA', '', '', '', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('91', '资生堂', '', '', '', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('92', '罗瑞塔', '', '', '', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('93', '绿丽', '', '', '', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('94', '安若蔓', '', '', '', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('95', '玛姬儿', '', '', '', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('96', '蜜丝佛陀', '', '', '', '50', '1', '');
INSERT INTO `ecs_brand` VALUES ('97', '蝶翠诗', '', '', '', '50', '1', '');

-- ----------------------------
-- Table structure for `ecs_card`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_card`;
CREATE TABLE `ecs_card` (
  `card_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `card_name` varchar(120) NOT NULL DEFAULT '',
  `card_img` varchar(255) NOT NULL DEFAULT '',
  `card_fee` decimal(6,2) unsigned NOT NULL DEFAULT '0.00',
  `free_money` decimal(6,2) unsigned NOT NULL DEFAULT '0.00',
  `card_desc` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`card_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_card
-- ----------------------------
INSERT INTO `ecs_card` VALUES ('1', '祝福贺卡', '1242108754847457261.jpg', '5.00', '1000.00', '把您的祝福带给您身边的人');

-- ----------------------------
-- Table structure for `ecs_cart`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_cart`;
CREATE TABLE `ecs_cart` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `session_id` char(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_sn` varchar(60) NOT NULL DEFAULT '',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_id` varchar(255) NOT NULL,
  `goods_name` varchar(120) NOT NULL DEFAULT '',
  `market_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `goods_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_attr` text NOT NULL,
  `is_real` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `extension_code` varchar(30) NOT NULL DEFAULT '',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rec_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_gift` smallint(5) unsigned NOT NULL DEFAULT '0',
  `is_shipping` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `can_handsel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `goods_attr_id` varchar(255) NOT NULL DEFAULT '',
  `touch_sale` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `touch_fencheng` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`rec_id`),
  KEY `session_id` (`session_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_cart
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_cart_combo`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_cart_combo`;
CREATE TABLE `ecs_cart_combo` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `session_id` char(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_sn` varchar(60) NOT NULL DEFAULT '',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_id` varchar(255) NOT NULL,
  `goods_name` varchar(120) NOT NULL DEFAULT '',
  `market_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `goods_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_attr` text NOT NULL,
  `is_real` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `extension_code` varchar(30) NOT NULL DEFAULT '',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rec_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_gift` smallint(5) unsigned NOT NULL DEFAULT '0',
  `is_shipping` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `can_handsel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `goods_attr_id` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`rec_id`),
  KEY `session_id` (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_cart_combo
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_category`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_category`;
CREATE TABLE `ecs_category` (
  `cat_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(90) NOT NULL DEFAULT '',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `cat_desc` varchar(255) NOT NULL DEFAULT '',
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sort_order` tinyint(1) unsigned NOT NULL DEFAULT '50',
  `template_file` varchar(50) NOT NULL DEFAULT '',
  `measure_unit` varchar(15) NOT NULL DEFAULT '',
  `show_in_nav` tinyint(1) NOT NULL DEFAULT '0',
  `style` varchar(150) NOT NULL,
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `grade` tinyint(4) NOT NULL DEFAULT '0',
  `filter_attr` varchar(255) NOT NULL DEFAULT '0',
  `is_top_style` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_on_top` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `cat_ico` varchar(255) NOT NULL,
  PRIMARY KEY (`cat_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=133 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_category
-- ----------------------------
INSERT INTO `ecs_category` VALUES ('69', '购买手机', '', '', '0', '50', '', '', '1', '', '1', '0', '', '0', '0', '', '');
INSERT INTO `ecs_category` VALUES ('91', '床头灯', '', '', '80', '50', '', '', '0', '', '1', '0', '0', '0', '0', '1440714828177337851.jpg', '');
INSERT INTO `ecs_category` VALUES ('83', '小米手环', '', '', '80', '50', '', '', '0', '', '1', '0', '0', '0', '0', '1440714594129934702.jpg', '');
INSERT INTO `ecs_category` VALUES ('77', '小米电视2', '', '', '76', '50', '', '', '0', '', '1', '0', '0', '0', '0', '1440714523818497367.jpg', '');
INSERT INTO `ecs_category` VALUES ('75', '根据机型选配件', '', '', '69', '50', '', '', '0', '', '1', '0', '0', '0', '0', '1440714436136987275.jpg', '');
INSERT INTO `ecs_category` VALUES ('70', '小米Note', '', '', '69', '50', '', '', '0', '', '1', '0', '0', '0', '0', '1440694830757590201.jpg', '');
INSERT INTO `ecs_category` VALUES ('71', '小米手机4', '', '', '69', '50', '', '', '0', '', '1', '0', '0', '0', '0', '1440714333309950345.jpg', '');
INSERT INTO `ecs_category` VALUES ('95', '小米移动电源', '', '', '94', '50', '', '', '0', '', '1', '0', '0', '0', '0', '1440714900932574593.jpg', '');
INSERT INTO `ecs_category` VALUES ('92', '随身WiFi', '', '', '80', '50', '', '', '0', '', '1', '0', '0', '0', '0', '1440715656375233503.jpg', '');
INSERT INTO `ecs_category` VALUES ('84', '净化器与滤芯', '', '', '80', '50', '', '', '0', '', '1', '0', '0', '0', '0', '1440714604871156701.jpg', '');
INSERT INTO `ecs_category` VALUES ('80', '路由器与智能硬件', '', '', '0', '50', '', '', '0', '', '1', '0', '', '0', '0', '', '');
INSERT INTO `ecs_category` VALUES ('81', '小米路由器', '', '', '80', '50', '', '', '0', '', '1', '0', '0', '0', '0', '1440714625090181569.jpg', '');
INSERT INTO `ecs_category` VALUES ('76', '购买电视与平板', '', '', '0', '50', '', '', '1', '', '1', '9', '11,10', '0', '0', '', '');
INSERT INTO `ecs_category` VALUES ('73', '红米Note', '', '', '69', '50', '', '', '0', '', '1', '0', '0', '0', '0', '1440714403858779637.jpg', '');
INSERT INTO `ecs_category` VALUES ('72', '红米手机2', '', '', '69', '50', '', '', '0', '', '1', '0', '0', '0', '0', '1440714364083646808.jpg', '');
INSERT INTO `ecs_category` VALUES ('74', '合约机', '', '', '69', '50', '', '', '0', '', '1', '0', '0', '0', '0', '1440714462800237542.jpg', '');
INSERT INTO `ecs_category` VALUES ('82', '小米路由器mini', '', '', '80', '50', '', '', '0', '', '1', '0', '0', '0', '0', '1440714634528408482.jpg', '');
INSERT INTO `ecs_category` VALUES ('104', '小米蓝牙耳机', '', '', '101', '50', '', '', '0', '', '1', '0', '0', '0', '0', '1440715065754194490.jpg', '');
INSERT INTO `ecs_category` VALUES ('105', '品牌耳机', '', '', '101', '50', '', '', '0', '', '1', '0', '0', '0', '0', '1440715032831550803.jpg', '');
INSERT INTO `ecs_category` VALUES ('101', '耳机音箱与存储卡', '', '', '0', '50', '', '', '1', '', '1', '0', '', '0', '0', '', '');
INSERT INTO `ecs_category` VALUES ('103', '小米活塞耳机', '', '', '101', '50', '', '', '0', '', '1', '0', '0', '0', '0', '1440715024130191189.jpg', '');
INSERT INTO `ecs_category` VALUES ('102', '小米头戴式耳机', '', '', '101', '50', '', '', '0', '', '1', '0', '0', '0', '0', '1440715048540050271.jpg', '');
INSERT INTO `ecs_category` VALUES ('97', '品牌移动电源', '', '', '94', '50', '', '', '0', '', '1', '0', '0', '0', '0', '1440714924713983846.jpg', '');
INSERT INTO `ecs_category` VALUES ('96', '插线板', '', '', '94', '50', '', '', '0', '', '1', '0', '0', '0', '0', '1440714915425315885.jpg', '');
INSERT INTO `ecs_category` VALUES ('100', '线材', '', '', '94', '50', '', '', '0', '', '1', '0', '0', '0', '0', '1440714936755382725.jpg', '');
INSERT INTO `ecs_category` VALUES ('98', '电池', '', '', '94', '50', '', '', '0', '', '1', '0', '0', '0', '0', '1440714981256300433.jpg', '');
INSERT INTO `ecs_category` VALUES ('99', '充电器', '', '', '94', '50', '', '', '0', '', '1', '0', '0', '0', '0', '1440714969081433313.jpg', '');
INSERT INTO `ecs_category` VALUES ('94', '插线板、移动电源与电池', '', '', '0', '50', '', '', '0', '', '1', '0', '', '0', '0', '', '');
INSERT INTO `ecs_category` VALUES ('93', '智能家庭套装', '', '', '80', '50', '', '', '0', '', '1', '0', '0', '0', '0', '1440714801144245694.jpg', '');
INSERT INTO `ecs_category` VALUES ('90', '体重秤', '', '', '80', '50', '', '', '0', '', '1', '0', '0', '0', '0', '1440714813461961388.jpg', '');
INSERT INTO `ecs_category` VALUES ('85', '运动相机', '', '', '80', '50', '', '', '0', '', '1', '0', '0', '0', '0', '1440714715783886182.jpg', '');
INSERT INTO `ecs_category` VALUES ('86', '摄像机', '', '', '80', '50', '', '', '0', '', '1', '0', '0', '0', '0', '1440714727617165633.jpg', '');
INSERT INTO `ecs_category` VALUES ('87', '血压计', '', '', '80', '50', '', '', '0', '', '1', '0', '0', '0', '0', '1440714693247309265.jpg', '');
INSERT INTO `ecs_category` VALUES ('88', '智能插座', '', '', '80', '50', '', '', '0', '', '1', '0', '0', '0', '0', '1440714705263121780.jpg', '');
INSERT INTO `ecs_category` VALUES ('89', '智能灯泡', '', '', '80', '50', '', '', '0', '', '1', '0', '0', '0', '0', '1440715638505801362.jpg', '');
INSERT INTO `ecs_category` VALUES ('108', '保护套与贴膜', '', '', '0', '50', '', '', '1', '', '1', '0', '', '0', '0', '', '');
INSERT INTO `ecs_category` VALUES ('107', '存储卡', '', '', '101', '50', '', '', '0', '', '1', '0', '0', '0', '0', '1440715085793740200.jpg', '');
INSERT INTO `ecs_category` VALUES ('106', '音箱', '', '', '101', '50', '', '', '0', '', '1', '0', '0', '0', '0', '1440715040881731212.jpg', '');
INSERT INTO `ecs_category` VALUES ('79', '小米平板', '', '', '76', '50', '', '', '0', '', '1', '0', '0', '0', '0', '1440714487073430021.jpg', '');
INSERT INTO `ecs_category` VALUES ('78', '小米盒子', '', '', '76', '50', '', '', '0', '', '1', '0', '0', '0', '0', '1440714530518865434.jpg', '');
INSERT INTO `ecs_category` VALUES ('109', '保护套', '', '', '108', '50', '', '', '0', '', '1', '0', '0', '0', '0', '1440715134794547790.jpg', '');
INSERT INTO `ecs_category` VALUES ('110', '贴膜', '', '', '108', '50', '', '', '0', '', '1', '0', '0', '0', '0', '1440715114068188035.jpg', '');
INSERT INTO `ecs_category` VALUES ('111', '防尘塞', '', '', '108', '50', '', '', '0', '', '1', '0', '0', '0', '0', '1440715123287405177.jpg', '');
INSERT INTO `ecs_category` VALUES ('112', '后盖与个性化配件', '', '', '0', '50', '', '', '0', '', '1', '0', '', '0', '0', '', '');
INSERT INTO `ecs_category` VALUES ('113', '米键', '', '', '112', '50', '', '', '0', '', '1', '0', '0', '0', '0', '1440715625439150214.jpg', '');
INSERT INTO `ecs_category` VALUES ('114', '后盖', '', '', '112', '50', '', '', '0', '', '1', '0', '0', '0', '0', '1440715187036075931.jpg', '');
INSERT INTO `ecs_category` VALUES ('115', '贴纸', '', '', '112', '50', '', '', '0', '', '1', '0', '0', '0', '0', '1440715195561532491.jpg', '');
INSERT INTO `ecs_category` VALUES ('116', '手机支架', '', '', '112', '50', '', '', '0', '', '1', '0', '0', '0', '0', '1440715238522222987.jpg', '');
INSERT INTO `ecs_category` VALUES ('117', '耳机绕线器', '', '', '112', '50', '', '', '0', '', '1', '0', '0', '0', '0', '1440715230765044894.jpg', '');
INSERT INTO `ecs_category` VALUES ('118', '小米生活方式', '', '', '0', '50', '', '', '1', '', '1', '0', '', '0', '0', '', '');
INSERT INTO `ecs_category` VALUES ('119', 'T恤', '', '', '118', '50', '', '', '0', '', '1', '0', '0', '0', '0', '1440715327531806544.jpg', '');
INSERT INTO `ecs_category` VALUES ('120', '米兔', '', '', '118', '50', '', '', '0', '', '1', '0', '0', '0', '0', '1440715299548417989.jpg', '');
INSERT INTO `ecs_category` VALUES ('121', '背包', '', '', '118', '50', '', '', '0', '', '1', '0', '0', '0', '0', '1440715307737503627.jpg', '');
INSERT INTO `ecs_category` VALUES ('122', '小米鼠标垫', '', '', '118', '50', '', '', '0', '', '1', '0', '0', '0', '0', '1440715318290414276.jpg', '');
INSERT INTO `ecs_category` VALUES ('123', '生活周边', '', '', '118', '50', '', '', '0', '', '1', '0', '0', '0', '0', '1440715289580224704.jpg', '');
INSERT INTO `ecs_category` VALUES ('124', '小米电视', '', '', '76', '50', '', '', '0', '', '1', '0', '0', '0', '0', '1441052146914725720.jpg', '');
INSERT INTO `ecs_category` VALUES ('125', '电视盒子配件', '', '', '76', '50', '', '', '0', '', '1', '0', '0', '0', '0', '1441052187926588684.jpg', '');
INSERT INTO `ecs_category` VALUES ('126', '小米盒子mini', '', '', '76', '50', '', '', '0', '', '1', '0', '0', '0', '0', '1441057025002599029.jpg', '');
INSERT INTO `ecs_category` VALUES ('127', '翻盖保护套', '', '', '108', '50', '', '', '0', '', '1', '0', '0', '0', '0', '1441055970998522204.png', '');
INSERT INTO `ecs_category` VALUES ('128', '软胶保护套', '', '', '108', '50', '', '', '0', '', '1', '0', '0', '0', '0', '1441056068949453322.png', '');
INSERT INTO `ecs_category` VALUES ('129', '保护壳', '', '', '108', '50', '', '', '0', '', '1', '0', '0', '0', '0', '1441056471201197370.png', '');
INSERT INTO `ecs_category` VALUES ('130', '酷玩产品', '', '', '118', '50', '', '', '0', '', '1', '0', '0', '0', '0', '1441056836925397608.jpg', '');
INSERT INTO `ecs_category` VALUES ('131', '卫衣', '', '', '118', '50', '', '', '0', '', '1', '0', '0', '0', '0', '1441057330781825431.jpg', '');
INSERT INTO `ecs_category` VALUES ('132', 'POLO衫', '', '', '118', '50', '', '', '0', '', '1', '0', '0', '0', '0', '1441057345875896145.jpg', '');

-- ----------------------------
-- Table structure for `ecs_cat_recommend`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_cat_recommend`;
CREATE TABLE `ecs_cat_recommend` (
  `cat_id` smallint(5) NOT NULL,
  `recommend_type` tinyint(1) NOT NULL,
  PRIMARY KEY (`cat_id`,`recommend_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_cat_recommend
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_collect_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_collect_goods`;
CREATE TABLE `ecs_collect_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `is_attention` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rec_id`),
  KEY `user_id` (`user_id`),
  KEY `goods_id` (`goods_id`),
  KEY `is_attention` (`is_attention`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_collect_goods
-- ----------------------------
INSERT INTO `ecs_collect_goods` VALUES ('6', '16', '39', '1440975180', '1');
INSERT INTO `ecs_collect_goods` VALUES ('4', '16', '32', '1440955562', '1');
INSERT INTO `ecs_collect_goods` VALUES ('5', '16', '58', '1440974744', '1');
INSERT INTO `ecs_collect_goods` VALUES ('7', '16', '56', '1440977617', '0');
INSERT INTO `ecs_collect_goods` VALUES ('8', '2', '27', '1441748113', '1');

-- ----------------------------
-- Table structure for `ecs_comment`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_comment`;
CREATE TABLE `ecs_comment` (
  `comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `comment_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `id_value` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `email` varchar(60) NOT NULL DEFAULT '',
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `comment_rank` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `ip_address` varchar(15) NOT NULL DEFAULT '',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_id`),
  KEY `parent_id` (`parent_id`),
  KEY `id_value` (`id_value`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_comment
-- ----------------------------
INSERT INTO `ecs_comment` VALUES ('88', '0', '27', '497110669@qq.com', '', '不买盒子可以直接放电视吗', '5', '1441666569', '127.0.0.1', '1', '0', '0');
INSERT INTO `ecs_comment` VALUES ('89', '0', '27', 'admin1232444@qq.com', '', '电视太漂亮了，外观很时尚', '5', '1441666602', '127.0.0.1', '1', '0', '0');
INSERT INTO `ecs_comment` VALUES ('92', '0', '27', '497110669@qq.com', '', '颜色好看，音质和简装版一样，有点小贵', '3', '1441666806', '127.0.0.1', '1', '0', '0');
INSERT INTO `ecs_comment` VALUES ('91', '0', '27', '497110669@qq.com', '', '这个冰川蓝我非常喜欢！颜色很亮！感觉很清爽呢！像是夏天的海洋！音质棒棒的！来吧！打开DJ一起摇…！', '5', '1441666787', '127.0.0.1', '1', '0', '0');
INSERT INTO `ecs_comment` VALUES ('90', '0', '27', '444@qq.com', '', '东西不错，是正品，现在高仿小米的产品太多了，只有选择官网购买，一分钱一分货', '4', '1441666765', '127.0.0.1', '1', '0', '0');
INSERT INTO `ecs_comment` VALUES ('54', '0', '39', 'af@sdds.dsd', '', '大发发生', '3', '1440454940', '127.0.0.1', '1', '0', '0');
INSERT INTO `ecs_comment` VALUES ('55', '0', '39', '497110669@qq.com', '', 'sadadsad', '4', '1440455014', '127.0.0.1', '1', '0', '0');
INSERT INTO `ecs_comment` VALUES ('56', '0', '55', 'dsadsadad@qq.cc', '', 'dsadsdsad', '2', '1440625711', '127.0.0.1', '1', '0', '0');
INSERT INTO `ecs_comment` VALUES ('57', '0', '55', '21e12@ww.aaa', '', 'DSADADSFASDFASD', '5', '1440625790', '127.0.0.1', '1', '0', '0');
INSERT INTO `ecs_comment` VALUES ('58', '0', '55', '21e12@ww.aaa', '', 'RSGDFHFRHRT', '5', '1440625812', '127.0.0.1', '1', '0', '0');
INSERT INTO `ecs_comment` VALUES ('59', '0', '55', '497110669@qq.com', '', '五星', '5', '1440626866', '127.0.0.1', '1', '0', '0');
INSERT INTO `ecs_comment` VALUES ('60', '0', '55', 'admin1232444@qq.com', '', '四星', '4', '1440626886', '127.0.0.1', '1', '0', '0');
INSERT INTO `ecs_comment` VALUES ('61', '0', '55', '497110669@qq.com', '', 'dasdsad', '5', '1440626899', '127.0.0.1', '1', '0', '0');
INSERT INTO `ecs_comment` VALUES ('62', '0', '55', 'admin1232444@qq.com', '', '三星', '3', '1440626939', '127.0.0.1', '1', '0', '0');
INSERT INTO `ecs_comment` VALUES ('63', '0', '55', '497110669@qq.com', '', '两星', '2', '1440626980', '127.0.0.1', '1', '0', '0');
INSERT INTO `ecs_comment` VALUES ('64', '0', '55', '497110669@qq.com', '', '一星', '1', '1440626998', '127.0.0.1', '1', '0', '0');
INSERT INTO `ecs_comment` VALUES ('65', '0', '55', '497110669@qq.com', '', 'dsddad', '3', '1440634960', '127.0.0.1', '1', '0', '0');
INSERT INTO `ecs_comment` VALUES ('66', '0', '55', 'admin1232444@qq.com', '', 'ededededededededededededededed', '2', '1440634977', '127.0.0.1', '1', '0', '0');
INSERT INTO `ecs_comment` VALUES ('67', '0', '55', 'admin1232444@qq.com', '', 'wdwdw', '2', '1440634988', '127.0.0.1', '1', '0', '0');
INSERT INTO `ecs_comment` VALUES ('93', '0', '27', '497110669@qq.com', '', '收到实物后，看见耳机确实是蓝色的，有一点像小清新的天空蓝，颜色真好看，超喜欢的说≧◇≦', '5', '1441666830', '127.0.0.1', '1', '0', '0');
INSERT INTO `ecs_comment` VALUES ('69', '0', '45', 'kk1346@qq.com', 'tyq', 'eeeeeeeeeeeeeeeee', '5', '1440974952', '127.0.0.1', '1', '0', '16');
INSERT INTO `ecs_comment` VALUES ('70', '0', '28', 'ss5521221w@qq.cs', '', '外观时尚，系统流畅，续航时间长。', '5', '1441492507', '127.0.0.1', '1', '0', '0');
INSERT INTO `ecs_comment` VALUES ('71', '0', '85', 'ssssssss@ww.aa', '', '同事很喜欢，不显厚～bling bling～ ', '5', '1441492559', '127.0.0.1', '1', '0', '0');
INSERT INTO `ecs_comment` VALUES ('72', '0', '38', 'ssssssss@ww.aa', '', '还不错，音质也好，就是太可爱了，被小侄女看到了。(๑´ω`๑) ', '5', '1441492617', '127.0.0.1', '1', '0', '0');
INSERT INTO `ecs_comment` VALUES ('73', '0', '88', 'ssssssss@ww.aa', '', 'So cool！看米关公风虎云龙！大喝一声—— 『刀下留人！』 ', '5', '1441492755', '127.0.0.1', '1', '0', '0');
INSERT INTO `ecs_comment` VALUES ('74', '0', '84', 'ssssssss@ww.aa', '', '东西是还可以啦。。就是不方便。要是带磁铁封的就好了。。可能是新东西。。放在哪老是自己张开。。这个情况令我很是烦恼。。。 ', '4', '1441502880', '127.0.0.1', '1', '0', '0');
INSERT INTO `ecs_comment` VALUES ('75', '0', '84', 'ssssssss@ww.aa', '', '我己买了手杌套，下一步就该手机了，必须买个红米note，因为手机我只用小米的！！！ ', '4', '1441502916', '127.0.0.1', '1', '0', '0');
INSERT INTO `ecs_comment` VALUES ('76', '0', '84', 'ssssssss@ww.aa', '', '昨天我夜观天象，被告知我评论完成，就可以得到客服妹妹的电话号码，特意前来验证 ', '4', '1441502938', '127.0.0.1', '1', '0', '0');
INSERT INTO `ecs_comment` VALUES ('77', '0', '84', 'ssssssss@ww.aa', '', '做工是比较熬好的，有几点不足，观看电影的时候保护套不能将手机倾斜45度角，在盖住手机的时候前盖盖不住，设计个按钮会更好地，弄的我有换了一个保护壳。 ', '3', '1441502981', '127.0.0.1', '1', '0', '0');
INSERT INTO `ecs_comment` VALUES ('78', '0', '84', 'ssssssss@ww.aa', '', '给力啊，小米的周边配件挺好用的。 ', '5', '1441503019', '127.0.0.1', '1', '0', '0');
INSERT INTO `ecs_comment` VALUES ('79', '0', '84', '', 'admin', '这么巧？小妹我昨夜夜观星象，发现贪狼移位，破军妄动，紫薇星暗淡！萤惑星闪耀红光。拈指一算，竟推出今日若有信息泄露，必定狼哭鬼嚎，血流成河。为了大地苍生，此事改日再议，感谢您对小米的支持。', '0', '1441503072', '127.0.0.1', '0', '76', '0');
INSERT INTO `ecs_comment` VALUES ('80', '0', '84', '', 'admin', '购物狂是种病，得治啊，不过闲着也是闲着，不如送给身边有用的人儿吧。感谢您对小米的支持。', '0', '1441503142', '127.0.0.1', '0', '77', '0');
INSERT INTO `ecs_comment` VALUES ('81', '0', '84', '', 'admin', '张开的解决办法……把手机反过来壳子背面朝上放一晚上……一定可以', '0', '1441503300', '127.0.0.1', '0', '74', '0');
INSERT INTO `ecs_comment` VALUES ('82', '0', '38', 'ssssssss@ww.aa', '', '颜色好看，音质和简装版一样，有点小贵 ', '5', '1441558875', '127.0.0.1', '1', '0', '0');
INSERT INTO `ecs_comment` VALUES ('83', '0', '38', 'ssssssss@ww.aa', '', '耳机音效还不错？价格也合适，就是又加了邮费让人不爽 ', '4', '1441558902', '127.0.0.1', '1', '0', '0');
INSERT INTO `ecs_comment` VALUES ('84', '0', '38', 'ssssssss@ww.aa', '', '这个冰川蓝我非常喜欢！颜色很亮！感觉很清爽呢！像是夏天的海洋！音质棒棒的！来吧！打开DJ一起摇…！ ', '5', '1441558926', '127.0.0.1', '1', '0', '0');
INSERT INTO `ecs_comment` VALUES ('85', '0', '38', 'ssssssss@ww.aa', '', '东西不错，是正品，现在高仿小米的产品太多了，只有选择官网购买，一分钱一分货 ', '5', '1441558947', '127.0.0.1', '1', '0', '0');
INSERT INTO `ecs_comment` VALUES ('86', '0', '38', 'ssssssss@ww.aa', '', '收到实物后，看见耳机确实是蓝色的，有一点像小清新的天空蓝，颜色真好看，超喜欢的说≧◇≦ ', '5', '1441558983', '127.0.0.1', '1', '0', '0');
INSERT INTO `ecs_comment` VALUES ('87', '0', '38', 'ssssssss@ww.aa', '', '跟女神版超配的。颜值高。 ', '5', '1441559012', '127.0.0.1', '1', '0', '0');
INSERT INTO `ecs_comment` VALUES ('94', '0', '94', 'vip@ecshop.com', 'vip', '猫儿很可爱，女朋友戴上萌萌哒', '5', '1441672540', '127.0.0.1', '1', '0', '2');
INSERT INTO `ecs_comment` VALUES ('95', '0', '43', 'vip@ecshop.com', 'vip', '超级帅的自拍杆，还可以伸缩，方便携带', '5', '1441672605', '127.0.0.1', '1', '0', '2');
INSERT INTO `ecs_comment` VALUES ('96', '0', '90', 'vip@ecshop.com', 'vip', '米兔的眼神好呆', '5', '1441672652', '127.0.0.1', '1', '0', '2');
INSERT INTO `ecs_comment` VALUES ('97', '0', '39', 'vip@ecshop.com', 'vip', '方便实用', '5', '1441672682', '127.0.0.1', '1', '0', '2');
INSERT INTO `ecs_comment` VALUES ('98', '0', '93', 'vip@ecshop.com', 'vip', '刚买就掉地上了，但是质量很坚固，没有摔坏', '5', '1441672799', '127.0.0.1', '1', '0', '2');
INSERT INTO `ecs_comment` VALUES ('99', '0', '45', '123@qq.com', '', 'dddd', '5', '1441835647', '127.0.0.1', '1', '0', '0');
INSERT INTO `ecs_comment` VALUES ('100', '0', '45', 'admin1232444@qq.com', '', 'dsad', '5', '1441835756', '127.0.0.1', '1', '0', '0');

-- ----------------------------
-- Table structure for `ecs_crons`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_crons`;
CREATE TABLE `ecs_crons` (
  `cron_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `cron_code` varchar(20) NOT NULL,
  `cron_name` varchar(120) NOT NULL,
  `cron_desc` text,
  `cron_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cron_config` text NOT NULL,
  `thistime` int(10) NOT NULL DEFAULT '0',
  `nextime` int(10) NOT NULL,
  `day` tinyint(2) NOT NULL,
  `week` varchar(1) NOT NULL,
  `hour` varchar(2) NOT NULL,
  `minute` varchar(255) NOT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `run_once` tinyint(1) NOT NULL DEFAULT '0',
  `allow_ip` varchar(100) NOT NULL DEFAULT '',
  `alow_files` varchar(255) NOT NULL,
  PRIMARY KEY (`cron_id`),
  KEY `nextime` (`nextime`),
  KEY `enable` (`enable`),
  KEY `cron_code` (`cron_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_crons
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_delivery_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_delivery_goods`;
CREATE TABLE `ecs_delivery_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `delivery_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `product_id` mediumint(8) unsigned DEFAULT '0',
  `product_sn` varchar(60) DEFAULT NULL,
  `goods_name` varchar(120) DEFAULT NULL,
  `brand_name` varchar(60) DEFAULT NULL,
  `goods_sn` varchar(60) DEFAULT NULL,
  `is_real` tinyint(1) unsigned DEFAULT '0',
  `extension_code` varchar(30) DEFAULT NULL,
  `parent_id` mediumint(8) unsigned DEFAULT '0',
  `send_number` smallint(5) unsigned DEFAULT '0',
  `goods_attr` text,
  PRIMARY KEY (`rec_id`),
  KEY `delivery_id` (`delivery_id`,`goods_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=163 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_delivery_goods
-- ----------------------------
INSERT INTO `ecs_delivery_goods` VALUES ('1', '1', '13', '0', '', '诺基亚5320 XpressMusic', '诺基亚', 'ECS000013', '1', '', '0', '3', '');
INSERT INTO `ecs_delivery_goods` VALUES ('2', '1', '14', '0', '', '诺基亚5800XM', '诺基亚', 'ECS000014', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('3', '2', '24', '0', '', 'P806', '联想', 'ECS000024', '1', '', '0', '3', '');
INSERT INTO `ecs_delivery_goods` VALUES ('4', '2', '9', '0', '', '诺基亚E66', '诺基亚', 'ECS000009', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('5', '3', '24', '0', '', 'P806', '联想', 'ECS000024', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('6', '3', '8', '0', '', '飞利浦9@9v', '飞利浦', 'ECS000008', '1', '', '0', '3', '');
INSERT INTO `ecs_delivery_goods` VALUES ('7', '4', '12', '0', '', '摩托罗拉A810', '摩托罗拉', 'ECS000012', '1', '', '0', '2', '');
INSERT INTO `ecs_delivery_goods` VALUES ('8', '5', '24', '0', '', 'P806', '联想', 'ECS000024', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('9', '6', '6', '20', 'ECS000006g_p20', '全棉色织格子格调拼接女式长袖衬衫 蓝绿格子', '', 'ECS000006', '1', '', '0', '1', '颜色:红黑格子[10] \n尺码:M \n');
INSERT INTO `ecs_delivery_goods` VALUES ('10', '7', '6', '20', 'ECS000006g_p20', '全棉色织格子格调拼接女式长袖衬衫 蓝绿格子', '', 'ECS000006', '1', '', '0', '3', '颜色:红黑格子[10] \n尺码:M \n');
INSERT INTO `ecs_delivery_goods` VALUES ('11', '8', '6', '0', '', '全棉色织格子格调拼接女式长袖衬衫 蓝绿格子', '', 'ECS000006', '1', '', '0', '14', '颜色:红黑格子 \n尺码:M \n');
INSERT INTO `ecs_delivery_goods` VALUES ('12', '9', '23', '0', '', '诺基亚N96', '', 'ECS000023', '1', '', '0', '1', '附加配件: 原装电池 [+100]');
INSERT INTO `ecs_delivery_goods` VALUES ('13', '10', '24', '0', '', 'P806', '', 'ECS000024', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('14', '11', '20', '0', '', '三星BC01', '', 'ECS000020', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('15', '11', '8', '0', '', '飞利浦9@9v', '', 'ECS000008', '1', '', '0', '1', '颜色:黑 \n');
INSERT INTO `ecs_delivery_goods` VALUES ('16', '12', '2', '0', '', '海尔统帅（Leader） D48MF7000 48英寸 安卓智能LED平板电视（黑色）', '统帅', 'ECS000002', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('17', '13', '107', '0', '', '康宝(Canbo) ZTP80A-25(H) 立式 消毒柜', '康宝', 'ECS000107', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('18', '14', '2', '0', '', '海尔统帅（Leader） D48MF7000 48英寸 安卓智能LED平板电视（黑色）', '统帅', 'ECS000002', '1', '', '0', '1', '32英寸智能');
INSERT INTO `ecs_delivery_goods` VALUES ('19', '14', '1', '0', '', '创维（Skyworth） 40E5CHR 40英寸 LED液晶电视（银色）', '创维', 'ECS000000', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('20', '14', '11', '0', '', '飞利浦（PHILIPS） HQ909/15 电动剃须刀', '飞利浦', 'ECS000011', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('21', '14', '26', '0', '', '利仁（Liven）LRT-310A 电饼铛 香槟金', '利仁', 'ECS000026', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('22', '14', '26', '0', '', '利仁（Liven）LRT-310A 电饼铛 香槟金', '利仁', 'ECS000026', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('23', '14', '10', '0', '', '美的（Midea） KFR-26GW/WJCA3 大1匹 除甲醛冷暖变频挂机（京东专供梦想版）', '美的', 'ECS000010', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('24', '14', '17', '0', '', '雷瓦（RIWA） RC-643A 专业静音1800W大功率恒温负离子电吹风吹风机', '雷瓦', 'ECS000017', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('25', '14', '16', '0', '', '力博得（Lebond）ilife家庭系列升级版 I3声波电动牙刷（和谐蓝）', '力博得', 'ECS000016', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('26', '15', '104', '0', '', '机器学习系统设计 ', '惠氏', 'ECS000104', '1', '', '0', '2', '');
INSERT INTO `ecs_delivery_goods` VALUES ('27', '15', '103', '0', '', '数据化管理：洞悉零售及电子商务运营 ', '雷瓦', 'ECS000103', '1', '', '0', '3', '');
INSERT INTO `ecs_delivery_goods` VALUES ('28', '15', '107', '0', '', '康宝(Canbo) ZTP80A-25(H) 立式 消毒柜', '康宝', 'ECS000107', '1', '', '0', '3', '');
INSERT INTO `ecs_delivery_goods` VALUES ('29', '15', '106', '0', '', 'Android开发秘籍进阶篇：Android 4编程入门经典+Android 4高级编程（第3版　套装共2册） ', '德尔玛', 'ECS000106', '1', '', '0', '3', '');
INSERT INTO `ecs_delivery_goods` VALUES ('30', '15', '105', '0', '', 'JavaScript框架设计 ', '美的', 'ECS000105', '1', '', '0', '3', '');
INSERT INTO `ecs_delivery_goods` VALUES ('31', '15', '25', '0', '', '美的（Midea） EM7KCGW3-NR 微波炉 微电脑 平板 薄膜按键', '美的', 'ECS000025', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('32', '15', '5', '0', '', '海尔（Haier） KFR-35GW/05GDC23A 1.5匹壁挂式冷暖变频空调', '海尔', 'ECS000005', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('33', '15', '102', '0', '', '算法谜题 ', '惠人', 'ECS000102', '1', '', '0', '2', '');
INSERT INTO `ecs_delivery_goods` VALUES ('34', '15', '101', '0', '', 'WebKit技术内幕 ', '德龙', 'ECS000101', '1', '', '0', '2', '');
INSERT INTO `ecs_delivery_goods` VALUES ('35', '15', '100', '0', '', '算法竞赛入门经典（第2版） ', '春花', 'ECS000100', '1', '', '0', '2', '');
INSERT INTO `ecs_delivery_goods` VALUES ('36', '15', '96', '0', '', 'GNC 健安喜 葡萄籽精华胶囊 100粒（美国原装进口）', '健安喜', 'ECS000096', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('37', '15', '95', '0', '', '养生堂 红六月焕白亲情特供装 90粒维生素C+160粒维生素E+60粒维生素C+多种维生素矿物质片25片', '养生堂', 'ECS000095', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('38', '15', '93', '0', '', '养生堂天然维生素E.C祛斑焕白套装（维生素C90片+维生素E160粒）（赠养生堂5片面膜）', '养生堂', 'ECS000093', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('39', '15', '89', '0', '', 'Karicare 可瑞康 新西兰原装进口 金装幼儿配方奶粉 3段（1-3岁幼儿适用）900克*6罐', '可瑞康', 'ECS000089', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('40', '15', '90', '0', '', '雅培 Abbott 金装喜康宝 婴儿配方奶粉 1段（0-12个月婴儿适用）900克 购雅培亲体新品，Mini Pad、万元大奖等你赢！点此查看！', '雅培', 'ECS000090', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('41', '15', '91', '0', '', '惠氏 Wyeth 启赋 illuma 亲和人体配方 幼儿配方奶粉 3段(1-3岁幼儿适用) 900克', '惠氏', 'ECS000091', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('42', '15', '92', '0', '', '太太静心助眠口服液15ml*60支', '太太', 'ECS000092', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('43', '15', '88', '0', '', 'Karicare 可瑞康 新西兰原装进口 金装幼儿配方奶粉 3段（1-3岁幼儿适用）900克', '可瑞康', 'ECS000088', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('44', '15', '86', '0', '', '美赞臣 MeadJohnson 进口奶源 安儿宝A+ 幼儿配方奶粉 3段（1-3岁幼儿适用） 1200克', '美赞臣', 'ECS000086', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('45', '15', '84', '0', '', '美素力 Frisolac 荷兰原装进口 金装婴儿配方奶粉 1段（0-6个月婴儿适用） 900克', '美素力', 'ECS000084', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('46', '15', '83', '0', '', '九洲鹿全工艺100%全棉超耐磨转移印花四件套 北京遇上西雅图 1.8米床', '九洲鹿', 'ECS000083', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('47', '15', '82', '0', '', '么小毛家纺 床上用品欧式经典 莫代尔全棉大提花 床单式婚庆四件套 加州记忆 1.8米床', '么小毛家纺', 'ECS000082', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('48', '15', '81', '0', '', '爱斯基摩人 四件套 纯棉床上用品 斜纹家纺 双人 丽人风尚 1.5米/1.8米', '爱斯基摩人', 'ECS000081', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('49', '15', '80', '0', '', '绿野仙踪床上用品 全棉斜纹印花套件纯棉四件套 1.5/1.8米床 醉花樱-玫红 1.5-1.8米床适用', '九洲鹿', 'ECS000080', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('50', '15', '79', '0', '', '九洲鹿 100%全棉斜纹印花套件纯棉四件套 1.5米1.8米床 北京遇上西雅图 1.5米床', '九洲鹿', 'ECS000079', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('51', '15', '78', '0', '', '巧布万棉家纺 床品件套 贡缎提花绣花1.5/1.8米婚庆四件套 舞动时尚-米白 1.8m床四件套', '巧布万棉家纺', 'ECS000078', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('52', '15', '77', '0', '', '富安娜家纺 圣之花床品套件 全棉清新田园 纯棉印花双人四件套 淑姿丰盈 蓝色 1.8m(6英尺)床', '富安娜家纺', 'ECS000077', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('53', '15', '76', '0', '', '胜伟 高支棉斜纹四件套裸婚时代100%棉1.5/1.8米床', '洗颜专科', 'ECS000076', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('54', '15', '75', '0', '', '欧莱雅（LOREAL）男士劲能深层净化洁面膏（100ml+50ml）', '洗颜专科', 'ECS000075', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('55', '15', '74', '0', '', 'Neutrogena露得清深层净化洗面乳两支套装100g*2', '洗颜专科', 'ECS000074', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('56', '15', '73', '0', '', '欧莱雅（LOREAL）男士 控油炭爽抗黑头洁面膏100ml', '洗颜专科', 'ECS000073', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('57', '15', '71', '0', '', '妮维雅 男士净油精华亮肤洁面炭泥 150ml+150ml （提亮肤色 控油美白洗面奶 深层洁面 温和去角质）', '洗颜专科', 'ECS000071', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('58', '15', '70', '0', '', '欧莱雅（LOREAL）男士火山岩控油清痘洁面膏 买一赠一装（100ml+50ml）', '洗颜专科', 'ECS000070', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('59', '15', '69', '0', '', '洗颜专科 柔澈泡沫 洁面乳 120g（资生堂授权正品）', '洗颜专科', 'ECS000069', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('60', '15', '68', '0', '', '莱雪曼2014夏装上新蕾丝镂空拼接修身连衣裙两件套8272 黑色 M', '莱雪曼', 'ECS000068', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('61', '15', '67', '0', '', '誉彩 2014夏季新款无袖碎花长裙 大码女装裙子 韩版修身大摆连衣裙 兰花 M', '誉彩', 'ECS000067', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('62', '15', '63', '0', '', '丝露怡语 2014夏雪纺撞色青花瓷修身连衣裙女 661 9919蓝色 M', 'HARMARYCIAGA', 'ECS000063', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('63', '15', '64', '0', '', '俏妮妃 2014夏装新款时尚韩版女装 雪纺连衣裙圆领气质修身显瘦休闲OL淑女短袖打底连衣裙 白色 M', '俏妮妃', 'ECS000064', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('64', '15', '65', '0', '', '琼瑛女装2014夏季新款 韩版修身圆领雪纺连衣裙短袖纯色提花裙子3368 黄色 M', '琼瑛', 'ECS000065', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('65', '15', '66', '0', '', '时竟 2014夏季女装新款时尚气质OL显瘦一字领套装两件套套裙 修身连衣裙D8618 白配大红 M', '时竟', 'ECS000066', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('66', '15', '62', '0', '', 'HARMARYCIAGA2014女装夏新款修身气质甜美糖果色假两件无袖连衣裙QZ109 水蓝 M', 'HARMARYCIAGA', 'ECS000062', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('67', '15', '61', '0', '', '刊菲(kanfei) 2014夏季新款修身中袖韩国金线蕾丝连衣裙9068 金色 M', '刊菲', 'ECS000061', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('68', '15', '60', '0', '', '联想（Lenovo） C245 18.5英寸一体电脑（E1-1200 2G 500G DVD刻录 Dos）白色', '惠普', 'ECS000060', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('69', '15', '59', '0', '', '微软（Microsoft） Surface2 64G（Tegra 4四核 2G内存 64G硬盘 1080P高清屏 USB3.0）', '微软', 'ECS000059', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('70', '15', '58', '0', '', '机械革命（MECHREVO） MR X3 升级版 14英寸游戏本(i7-4702MQ 4G 64G SSD+1T机械 GTX850M 游戏键盘)黑色', '机械革命', 'ECS000058', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('71', '15', '57', '0', '', '华硕（ASUS） N550JV 15.6英寸笔记本(i5-4200H 4G 750G GT750M 2G独显 1920x1080 Win8 黑色)', '华硕', 'ECS000057', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('72', '15', '56', '0', '', '惠普（HP） CQ14-a104TX 14英寸笔记本电脑 （i5-4200M 4G 750GB GT820M 2G独显 DOS）', '惠普', 'ECS000056', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('73', '15', '55', '0', '', '宏碁（acer） V3-572G 15.6英寸超薄本 （i5-4210U 4G 500G GT840M 2G独显 win8.1 料号59TB）银色', '宏碁', 'ECS000055', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('74', '15', '54', '0', '', '雷神（ThundeRobot）911-E1 15.6英寸游戏本（i7-4710HQ 4G 500G GTX850M 2G DDR5 背光键盘 全高清屏）黑', '雷神', 'ECS000054', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('75', '15', '53', '0', '', '联想（Lenovo） Y400N 14.0英寸笔记本电脑（i5-3230M 4G 1T 2G独显 摄像头 DVD刻 Win8）', '联想', 'ECS000053', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('76', '15', '52', '0', '', '海燕（HAIYAN） ZD-BV4 阻燃 塑铜线100米 双色', '海燕', 'ECS000052', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('77', '15', '51', '0', '', '公牛（BULL) GN-110 3米 插座', '飞利浦', 'ECS000051', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('78', '15', '41', '0', '', '德尔玛（Deerma） DEM-F300 超声波加湿器（深蓝）', '德尔玛', 'ECS000041', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('79', '15', '43', '0', '', '春花（CHUNHUA ） JC621-160J 旋风锥尘杯 真空吸尘器（黑色）', '春花', 'ECS000043', '1', '', '0', '3', '');
INSERT INTO `ecs_delivery_goods` VALUES ('80', '15', '46', '0', '', '美的（midea）单热型饮水机 MYR718S-X', '科沃斯', 'ECS000046', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('81', '15', '49', '0', '', '飞利浦（PHILIPS） CORD118大屏幕，免电池工作 来电显示电话机 黑色', '飞利浦', 'ECS000049', '1', '', '0', '2', '');
INSERT INTO `ecs_delivery_goods` VALUES ('82', '15', '40', '0', '', 'Coway AP-1009CH 空气净化器 除甲醛臭氧净化机pm2.5 韩国进口', 'Coway', 'ECS000040', '1', '', '0', '3', '');
INSERT INTO `ecs_delivery_goods` VALUES ('83', '15', '39', '0', '', '小熊（Bear) ZDQ-2191 多功能双层煎烙煮蛋器 14个蛋 （橙黄色）', '九阳', 'ECS000039', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('84', '15', '37', '0', '', '宝工（Pro\'skit) SS-989H 2合1SMD吹焊台 700W 热风焊接两用', '宝工', 'ECS000037', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('85', '15', '34', '0', '', '贝乐卫浴（ballee) G17-4 毛巾架浴巾架多功能套装', '华帝', 'ECS000034', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('86', '15', '33', '0', '', '佳德（GORLDE）99173T 304不锈钢拉丝面双槽水槽套餐', '佳德', 'ECS000033', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('87', '15', '31', '0', '', 'TCL 浴霸NH-21Y4A/01 风暖灯暖照明换气四合一', '雷士照明', 'ECS000031', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('88', '15', '30', '0', '', '雷士照明（NVC） NUD1895-3 餐吊吸顶灯(不带光源)', '雷士照明', 'ECS000030', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('89', '15', '28', '0', '', '意大利德龙(DeLonghi) ESAM2200 EX:1 全自动咖啡机（银色）', '德龙', 'ECS000028', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('90', '15', '23', '0', '', '美的(midea) W12PCS505E 电压力锅 5L多功能电脑版', '美的', 'ECS000023', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('91', '15', '26', '0', '', '利仁（Liven）LRT-310A 电饼铛 香槟金', '利仁', 'ECS000026', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('92', '15', '27', '0', '', '松下（Panasonic） SD-PM105 面包机', '松下', 'ECS000027', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('93', '15', '22', '0', '', '美的（Midea ）17S18K2c+ 电水壶(不锈钢色)', '美的', 'ECS000022', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('94', '15', '17', '0', '', '雷瓦（RIWA） RC-643A 专业静音1800W大功率恒温负离子电吹风吹风机', '雷瓦', 'ECS000017', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('95', '15', '18', '0', '', '华盛昌（CEM）DT-8806S 红外线人体测温仪 体温计（精致版）', '华盛昌', 'ECS000018', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('96', '15', '19', '0', '', '九安/Andon 家用全自动智能 上臂式 电子血压计 血压仪 血压计KD-5910', '华盛昌', 'ECS000019', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('97', '15', '21', '0', '', '韩国惠人（HUROM） HU-400WN-PLUS 原汁机 “小红2014全新升级版”', '惠人', 'ECS000021', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('98', '15', '16', '0', '', '力博得（Lebond）ilife家庭系列升级版 I3声波电动牙刷（和谐蓝）', '力博得', 'ECS000016', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('99', '15', '15', '0', '', '松下（Panasonic） EH-SQ10-W405 冷敷美容器', '松下', 'ECS000015', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('100', '15', '14', '0', '', '松下（Panasonic） EH-SA31QP405 温冷美容护肤套装 深层清洁补水 瞬间紧致肌肤', '松下', 'ECS000014', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('101', '15', '13', '0', '', '雷瓦（Riwa）RB-807S 两用陶瓷卷发棒 卷发器/直发器', '雷瓦', 'ECS000013', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('102', '15', '12', '0', '', 'GESS 德国GESS682 电动深层防水洁面仪 洗脸美容仪家用毛孔清洁器去黑头仪 清新绿', 'GESS', 'ECS000012', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('103', '15', '11', '0', '', '飞利浦（PHILIPS） HQ909/15 电动剃须刀', '飞利浦', 'ECS000011', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('104', '15', '10', '0', '', '美的（Midea） KFR-26GW/WJCA3 大1匹 除甲醛冷暖变频挂机（京东专供梦想版）', '美的', 'ECS000010', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('105', '15', '9', '0', '', '海信（Hisense） KFR-35GW/20FZBpD-3a 1.5匹 壁挂式直流变频家用冷暖空调', '海信', 'ECS000009', '1', '', '0', '1', '产品特色:超长质保 \n');
INSERT INTO `ecs_delivery_goods` VALUES ('106', '15', '6', '0', '', '海信（Hisense） KFR-35GW/10FZBpD-3a 1.5匹 壁挂式直流变频家用冷暖空调', '海信', 'ECS000006', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('107', '15', '6', '0', '', '海信（Hisense） KFR-35GW/10FZBpD-3a 1.5匹 壁挂式直流变频家用冷暖空调', '海信', 'ECS000006', '1', '', '0', '1', '产品特色:WIFI操控 \n');
INSERT INTO `ecs_delivery_goods` VALUES ('108', '15', '5', '0', '', '海尔（Haier） KFR-35GW/05GDC23A 1.5匹壁挂式冷暖变频空调', '海尔', 'ECS000005', '1', '', '0', '1', '产品特色:超静音 \n');
INSERT INTO `ecs_delivery_goods` VALUES ('109', '15', '4', '0', '', '志高（chigo）KFR-51LW/N33+N3 大2匹 柜式家用冷暖空调（白色 白5）', '志高', 'ECS000004', '1', '', '0', '1', '产品特色:祛PM2.5 \n');
INSERT INTO `ecs_delivery_goods` VALUES ('110', '16', '140', '0', '', '山崎(ASAKI)4.8伏家用充电式电动起子螺丝刀小电钻(带磁性)/充电电池电动工具', '山崎', 'ECS000140', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('111', '16', '139', '0', '', '新款BOSCH博世TSR 1080-2-LI锂电钻充电手电钻多功能家用电动螺丝刀起子 TSR1080-2-Li单电 一电一冲', '博世', 'ECS000139', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('112', '16', '138', '0', '', '老A（LAOA) 电动工具双速12V锂电池充电钻/手电钻/电起子/电动螺丝刀/充电批', '老A', 'ECS000138', '1', '', '0', '2', '');
INSERT INTO `ecs_delivery_goods` VALUES ('113', '16', '137', '0', '', '宝工（Pro\'skit） PT-5501I 可调速软轴电磨组', '宝工', 'ECS000137', '1', '', '0', '5', '');
INSERT INTO `ecs_delivery_goods` VALUES ('114', '16', '136', '0', '', '博世(Bosch)GSB600RE set 13毫米冲击钻套装', '博世', 'ECS000136', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('115', '16', '135', '0', '', '飞科（FLYCO）FS358全身水洗充电式三刀头电动剃须刀（银色）', '飞科', 'ECS000135', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('116', '16', '134', '0', '', '飞科（FLYCO）FS711充电式双刀头电动剃须刀（黑色）', '飞科', 'ECS000134', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('117', '16', '133', '0', '', '飞利浦(Philips) RQ311 电动剃须刀', '飞利浦', 'ECS000133', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('118', '16', '132', '0', '', '飞利浦（PHILIPS） PQ182/16 电动剃须刀', '奔腾', 'ECS000132', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('119', '16', '131', '0', '', '飞利浦（Philips）RQ310 锐锋系列电动剃须刀', '奔腾', 'ECS000131', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('120', '16', '130', '0', '', '奔腾（POVOS） LN5152 电压力锅 5L', '奔腾', 'ECS000130', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('121', '16', '129', '0', '', '美的（Midea） W13PCS503E 易拆洗一手开系列 5L电压力锅', '美的', 'ECS000129', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('122', '16', '128', '0', '', '九阳（Joyoung） 5升电脑板电压力锅JYY-50YL1', '九阳', 'ECS000128', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('123', '16', '127', '0', '', '九阳（Joyoung） 5升电脑板电压力锅JYY-50YL1', '九阳', 'ECS000127', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('124', '16', '126', '0', '', '美的(midea) W12PCS505E 电压力锅 5L多功能电脑版', '艾美特', 'ECS000126', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('125', '16', '125', '0', '', '艾美特(Airmate) FTW36T2-A 电风扇/塔扇', '艾美特', 'ECS000125', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('126', '16', '124', '0', '', '艾美特(Airmate) FSW27T2-5 电风扇/落地扇', '艾美特', 'ECS000124', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('127', '16', '123', '0', '', '艾美特(Airmate) FT42R 电风扇/遥控塔扇', '艾美特', 'ECS000123', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('128', '16', '122', '0', '', '艾美特(Airmate) FSW65R-5 电风扇/遥控落地扇', '艾美特', 'ECS000122', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('129', '16', '121', '0', '', '艾美特(Airmate) FSW52R 电风扇/遥控落地扇', '艾美特', 'ECS000121', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('130', '16', '120', '0', '', '华帝(VATTI) ZTD110-i13001 嵌入式 消毒柜', '美的', 'ECS000120', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('131', '16', '119', '0', '', '美的(Midea) MXV-ZLP90Q05 嵌入式 消毒柜', '美的', 'ECS000119', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('132', '16', '118', '0', '', '康宝(Canbo) ZTP108E-11E 嵌入式 消毒柜', '康宝', 'ECS000118', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('133', '16', '117', '0', '', '美的(Midea) MXV-ZLP80K03 立式 消毒柜', '美的', 'ECS000117', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('134', '16', '116', '0', '', '康宝(Canbo) ZTP80A-3 立式 消毒柜', '康宝', 'ECS000116', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('135', '16', '115', '0', '', '志高(Chigo)JC-270L 压缩机恒温红酒柜 底层自由摆放/8月新款8层100瓶', '志高', 'ECS000115', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('136', '16', '114', '0', '', '维诺卡夫(Vinocave) CWC-350AJP 压缩机恒温红酒柜 配挂杯架+展示层架', '维诺夫卡', 'ECS000114', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('137', '16', '113', '0', '', '维诺卡夫(Vinocave) CWC-200A 压缩机恒温红酒柜 配挂杯架+展示层架', '维诺夫卡', 'ECS000113', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('138', '16', '112', '0', '', '维诺卡夫(Vinocave) SC-28AJPM电子恒温红酒柜', '维诺夫卡', 'ECS000112', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('139', '16', '111', '0', '', '维诺卡夫(Vinocave)冰吧冰柜SC-28AJP电子恒温红酒柜', '维诺夫卡', 'ECS000111', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('140', '16', '110', '0', '', '康佳（KONKA） LED32E330C 32英寸 窄边高清液晶电视（银色）', '康佳', 'ECS000110', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('141', '16', '109', '0', '', '长虹（CHANGHONG）LED42B2080n 42英寸极窄边网络LED液晶电视（黑色）', '创维', 'ECS000109', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('142', '16', '108', '0', '', '长虹（CHANGHONG） LED42538E 42英寸 超窄边LED液晶电视(黑色)', '', 'ECS000108', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('143', '16', '107', '0', '', '康宝(Canbo) ZTP80A-25(H) 立式 消毒柜', '康宝', 'ECS000107', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('144', '17', '116', '0', '', '康宝(Canbo) ZTP80A-3 立式 消毒柜', '康宝', 'ECS000116', '1', '', '0', '2', '');
INSERT INTO `ecs_delivery_goods` VALUES ('145', '18', '27', '0', '', '小米电视2 40英寸', '', 'ECS000000', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('146', '19', '43', '0', '', '小蚁蓝牙自拍杆', '', 'ECS000043', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('147', '20', '44', '0', '', '小米移动电源5000mAh', '', 'ECS000044', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('148', '20', '38', '0', '', '小米活塞耳机 炫彩版', '', 'ECS000038', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('149', '20', '42', '0', '', '小米蓝牙手柄', '', 'ECS000042', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('150', '20', '46', '0', '', '小钢炮蓝牙音箱', '', 'ECS000046', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('151', '21', '40', '0', '', '小米体重秤', '', 'ECS000040', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('152', '22', '29', '0', '', '小米盒子增强版 1G', '', 'ECS000029', '1', '', '0', '1', '尺寸:15 \n颜色:黑 \n');
INSERT INTO `ecs_delivery_goods` VALUES ('153', '23', '76', '0', '', '小米盒子mini版', '', 'ECS000076', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('154', '23', '28', '0', '', '小米平板 16G', '', 'ECS000028', '1', '', '0', '1', '尺寸:45 \n颜色:灰 \n');
INSERT INTO `ecs_delivery_goods` VALUES ('155', '23', '29', '0', '', '小米盒子增强版 1G', '', 'ECS000029', '1', '', '0', '2', '尺寸:15 \n颜色:黑 \n');
INSERT INTO `ecs_delivery_goods` VALUES ('156', '24', '58', '0', '', '实木后盖', '', 'ECS000058', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('157', '24', '43', '0', '', '小蚁蓝牙自拍杆', '', 'ECS000043', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('158', '24', '46', '0', '', '小钢炮蓝牙音箱', '', 'ECS000046', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('159', '25', '33', '0', '', '小蚁智能摄像机 标准', '', 'ECS000033', '1', '', '0', '2', '');
INSERT INTO `ecs_delivery_goods` VALUES ('160', '26', '46', '0', '', '小钢炮蓝牙音箱', '', 'ECS000046', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('161', '26', '38', '0', '', '小米活塞耳机 炫彩版', '', 'ECS000038', '1', '', '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('162', '26', '28', '0', '', '小米平板 16G', '', 'ECS000028', '1', '', '0', '1', '尺寸:45 \n颜色:灰 \n');

-- ----------------------------
-- Table structure for `ecs_delivery_order`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_delivery_order`;
CREATE TABLE `ecs_delivery_order` (
  `delivery_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `delivery_sn` varchar(20) NOT NULL,
  `order_sn` varchar(20) NOT NULL,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `invoice_no` varchar(50) DEFAULT NULL,
  `add_time` int(10) unsigned DEFAULT '0',
  `shipping_id` tinyint(3) unsigned DEFAULT '0',
  `shipping_name` varchar(120) DEFAULT NULL,
  `user_id` mediumint(8) unsigned DEFAULT '0',
  `action_user` varchar(30) DEFAULT NULL,
  `consignee` varchar(60) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `country` smallint(5) unsigned DEFAULT '0',
  `province` smallint(5) unsigned DEFAULT '0',
  `city` smallint(5) unsigned DEFAULT '0',
  `district` smallint(5) unsigned DEFAULT '0',
  `sign_building` varchar(120) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `zipcode` varchar(60) DEFAULT NULL,
  `tel` varchar(60) DEFAULT NULL,
  `mobile` varchar(60) DEFAULT NULL,
  `best_time` varchar(120) DEFAULT NULL,
  `postscript` varchar(255) DEFAULT NULL,
  `how_oos` varchar(120) DEFAULT NULL,
  `insure_fee` decimal(10,2) unsigned DEFAULT '0.00',
  `shipping_fee` decimal(10,2) unsigned DEFAULT '0.00',
  `update_time` int(10) unsigned DEFAULT '0',
  `suppliers_id` smallint(5) DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `agency_id` smallint(5) unsigned DEFAULT '0',
  PRIMARY KEY (`delivery_id`),
  KEY `user_id` (`user_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_delivery_order
-- ----------------------------
INSERT INTO `ecs_delivery_order` VALUES ('1', '20090615054961769', '2009061585887', '15', '2009061585884', '1245044533', '3', '城际快递', '1', 'admin', '刘先生', '海兴大厦', '1', '2', '52', '502', '', 'ecshop@ecshop.com', '', '010-25851234', '13986765412', '', '', '等待所有商品备齐后再发', '0.00', '10.00', '1245044964', '2', '1', '0');
INSERT INTO `ecs_delivery_order` VALUES ('2', '20090615055104671', '2009061585887', '15', '20090615', '1245044533', '3', '城际快递', '1', 'admin', '刘先生', '海兴大厦', '1', '2', '52', '502', '', 'ecshop@ecshop.com', '', '010-25851234', '13986765412', '', '', '等待所有商品备齐后再发', '0.00', '10.00', '1245045061', '1', '1', '0');
INSERT INTO `ecs_delivery_order` VALUES ('3', '20090615055780744', '2009061585887', '15', '123232', '1245044533', '3', '城际快递', '1', 'admin', '刘先生', '海兴大厦', '1', '2', '52', '502', '', 'ecshop@ecshop.com', '', '010-25851234', '13986765412', '', '', '等待所有商品备齐后再发', '0.00', '10.00', '1245045443', '0', '1', '0');
INSERT INTO `ecs_delivery_order` VALUES ('4', '20090615060281017', '2009061525429', '16', '2009061525121', '1245045672', '3', '城际快递', '1', 'admin', '刘先生', '海兴大厦', '1', '2', '52', '502', '', 'ecshop@ecshop.com', '', '010-25851234', '13986765412', '', '', '等待所有商品备齐后再发', '0.00', '10.00', '1245045723', '2', '0', '0');
INSERT INTO `ecs_delivery_order` VALUES ('5', '20090615064331475', '2009061503335', '17', '00906150333512', '1245047978', '3', '城际快递', '1', 'admin', '刘先生', '海兴大厦', '1', '2', '52', '502', '', 'ecshop@ecshop.com', '', '010-25851234', '13986765412', '', '', '等待所有商品备齐后再发', '0.00', '10.00', '1245048189', '0', '1', '0');
INSERT INTO `ecs_delivery_order` VALUES ('6', '20140724105855761', '2014072193304', '22', '0999', '1405891658', '5', '申通快递', '0', 'admin', '22', '233', '1', '6', '81', '754', '', '55@qq.com', '', '444', '', '', '', '等待所有商品备齐后再发', '0.00', '15.00', '1406141894', '0', '0', '0');
INSERT INTO `ecs_delivery_order` VALUES ('7', '20140724105865105', '2014070752549', '21', '666', '1404680437', '7', '运费到付', '6', 'admin', 'q111', '22', '1', '4', '55', '540', '', 'admin123@qq.com', '', '333', '', '', '', '等待所有商品备齐后再发', '0.00', '0.00', '1406141913', '0', '0', '0');
INSERT INTO `ecs_delivery_order` VALUES ('8', '20140724105820896', '2014060932408', '20', '55', '1402273996', '5', '申通快递', '6', 'admin', 'q111', '22', '1', '4', '55', '540', '', 'admin123@qq.com', '', '333', '', '', '', '等待所有商品备齐后再发', '0.00', '15.00', '1406141930', '0', '0', '0');
INSERT INTO `ecs_delivery_order` VALUES ('9', '20140724105997657', '2009051264945', '11', '111', '1242144250', '3', '城际快递', '0', 'admin', '林小姐', '中关村海兴大厦', '1', '2', '52', '500', '', 'linzi@116.com', '', '135474510', '', '', '', '', '0.00', '10.00', '1406141975', '0', '0', '0');
INSERT INTO `ecs_delivery_order` VALUES ('10', '20140724105903154', '2009051210718', '9', '333', '1242143732', '5', '申通快递', '3', 'admin', '叶先生', '通州区旗舰凯旋小区', '1', '2', '52', '510', '', 'text@ecshop.com', '', '13588104710', '', '', '', '等待所有商品备齐后再发', '0.00', '15.00', '1406141992', '0', '0', '0');
INSERT INTO `ecs_delivery_order` VALUES ('11', '20140724110052048', '2009051299732', '8', '222', '1242143444', '5', '申通快递', '3', 'admin', '叶先生', '通州区旗舰凯旋小区', '1', '2', '52', '510', '', 'text@ecshop.com', '', '13588104710', '', '', '', '等待所有商品备齐后再发', '0.00', '15.00', '1406142013', '0', '0', '0');
INSERT INTO `ecs_delivery_order` VALUES ('12', '20140731151466480', '2014073113030', '1', '5555', '1406762023', '5', '申通快递', '0', 'admin', '11', '12', '1', '5', '64', '620', '', '444444@qq.com', '', '33333', '', '', '', '等待所有商品备齐后再发', '0.00', '15.00', '1406762040', '0', '0', '0');
INSERT INTO `ecs_delivery_order` VALUES ('13', '20140731154083813', '2014073126550', '2', '444444', '1406763595', '5', '申通快递', '6', 'admin', 'q111', '22', '1', '4', '55', '540', '', 'admin123@qq.com', '', '333', '', '', '', '', '0.00', '15.00', '1406763634', '0', '0', '0');
INSERT INTO `ecs_delivery_order` VALUES ('14', '20140807155359214', '2014080751421', '3', '3333', '1407369121', '5', '申通快递', '6', 'admin', 'q111', '22', '1', '4', '55', '540', '', 'admin123@qq.com', '', '333', '', '', '', '', '0.00', '15.00', '1407369190', '0', '0', '0');
INSERT INTO `ecs_delivery_order` VALUES ('15', '20140814173369846', '2014081499923', '5', '2222', '1407979978', '5', '申通快递', '0', 'admin', '1', '2', '1', '5', '66', '633', '', '44@qq.com', '', '3', '', '', '', '等待所有商品备齐后再发', '0.00', '15.00', '1407980002', '0', '0', '0');
INSERT INTO `ecs_delivery_order` VALUES ('16', '20140815095683888', '2014081591904', '6', '1111111', '1408038969', '5', '申通快递', '6', 'admin', 'q111', '22', '1', '4', '55', '540', '', 'admin123@qq.com', '', '333', '', '', '', '等待所有商品备齐后再发', '0.00', '15.00', '1408038995', '0', '0', '0');
INSERT INTO `ecs_delivery_order` VALUES ('17', '20141024154427688', '2014102455815', '7', '', '1414107878', '5', '申通快递', '6', 'admin', 'q111', '22', '1', '4', '55', '540', '', 'admin123@qq.com', '', '333', '', '', '', '等待所有商品备齐后再发', '0.00', '15.00', '1414107893', '0', '0', '0');
INSERT INTO `ecs_delivery_order` VALUES ('18', '20150717154198706', '2015071763877', '2', '', '1437090054', '5', '申通快递', '0', 'admin', '111111', '111111', '1', '4', '56', '549', '', '111@qq.com', '11111111', '1111111', '', '', '', '等待所有商品备齐后再发', '0.00', '15.00', '1437090077', '0', '0', '0');
INSERT INTO `ecs_delivery_order` VALUES ('19', '20150717164401102', '2015071757226', '3', '', '1437093845', '5', '申通快递', '0', 'admin', '2222', '222222', '1', '12', '175', '1490', '', '111@qq.com', '222', '2222222222', '', '', '', '等待所有商品备齐后再发', '0.00', '15.00', '1437093867', '0', '0', '0');
INSERT INTO `ecs_delivery_order` VALUES ('20', '20150717164550863', '2015071744264', '4', '', '1437093939', '5', '申通快递', '0', 'admin', '3333333', 'qqqqqqq', '1', '7', '101', '901', '', '333@qq.com', '1111111', '111111111', '', '', '', '等待所有商品备齐后再发', '0.00', '15.00', '1437093959', '0', '0', '0');
INSERT INTO `ecs_delivery_order` VALUES ('21', '20150910103904516', '2015090922397', '45', '', '1441733732', '7', '运费到付', '2', 'admin', '小明', '上海市普陀区金沙江路', '1', '3', '38', '417', '', 'vip@ecshop.com', '', '18655564452', '', '', '', '等待所有商品备齐后再发', '0.00', '0.00', '1441823948', '0', '0', '0');
INSERT INTO `ecs_delivery_order` VALUES ('22', '20150910131633453', '2015090966609', '44', '', '1441733719', '7', '运费到付', '2', 'admin', '小明', '上海市普陀区金沙江路', '1', '3', '38', '417', '', 'vip@ecshop.com', '', '18655564452', '', '', '', '等待所有商品备齐后再发', '0.00', '0.00', '1441833377', '0', '0', '0');
INSERT INTO `ecs_delivery_order` VALUES ('23', '20150910131746894', '2015090636481', '43', '', '1441475131', '3', '城际快递', '0', 'admin', '讲话稿', '合肥话题，睡的地方，是否独生', '1', '3', '36', '399', '', 'kk4455@qq.com', '242421', '313213123213', '', '', '', '等待所有商品备齐后再发', '0.00', '10.00', '1441833420', '0', '0', '0');
INSERT INTO `ecs_delivery_order` VALUES ('24', '20150911092701150', '2015083129579', '42', '', '1440977029', '3', '城际快递', '16', 'admin', 'dsdad', 'dsdadsadad', '1', '3', '36', '400', '', '497110669@qq.com', '3213', '13444442222', '13444442222', '', '', '等待所有商品备齐后再发', '0.00', '10.00', '1441906066', '0', '0', '0');
INSERT INTO `ecs_delivery_order` VALUES ('25', '20150911093067587', '2015082830546', '40', '231432535435345354', '1440721143', '6', '邮局平邮', '16', 'admin', '聚会啊', 'dsdadsadad', '1', '3', '36', '400', '', '497110669@qq.com', '321322', '13444442222', '13444442222', '', '', '等待所有商品备齐后再发', '0.00', '3.50', '1441906222', '0', '0', '0');
INSERT INTO `ecs_delivery_order` VALUES ('26', '20150911093104148', '2015082675900', '39', 'hgdgfdgfdg', '1440532305', '6', '邮局平邮', '16', 'admin', 'dsdad', 'dsdadsadad', '1', '3', '36', '400', '', '497110669@qq.com', '3213', '13444442222', '13444442222', '', '', '与店主协商', '0.00', '3.50', '1441906316', '0', '0', '0');

-- ----------------------------
-- Table structure for `ecs_drp_bank`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_drp_bank`;
CREATE TABLE `ecs_drp_bank` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(50) DEFAULT NULL COMMENT '银行名称',
  `bank_card` varchar(50) DEFAULT NULL COMMENT '银行卡号',
  `user_id` int(10) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_drp_bank
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_drp_config`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_drp_config`;
CREATE TABLE `ecs_drp_config` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `centent` text COMMENT '分销申请 温馨提示',
  `keyword` varchar(20) DEFAULT NULL COMMENT '区分文章的key',
  `name` varchar(50) DEFAULT NULL COMMENT '显示字段名',
  `remarks` text COMMENT '备注',
  `type` varchar(20) DEFAULT 'text' COMMENT '数据类型',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_drp_config
-- ----------------------------
INSERT INTO `ecs_drp_config` VALUES ('1', '温馨提示', 'apply', '温馨提示', '申请分销商时，提示用户的信息', 'textarea');
INSERT INTO `ecs_drp_config` VALUES ('2', '新手必读', 'novice', '新手必读', '分销商申请成功后，用户要注意的事项', 'textarea');
INSERT INTO `ecs_drp_config` VALUES ('3', '7', 'fxts', '分销间隔', '下单并付款之后经过设置天数才可以对订单分成', 'text');

-- ----------------------------
-- Table structure for `ecs_drp_log`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_drp_log`;
CREATE TABLE `ecs_drp_log` (
  `log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL,
  `user_money` decimal(10,2) NOT NULL,
  `pay_points` mediumint(9) NOT NULL,
  `change_time` int(10) unsigned NOT NULL,
  `change_desc` varchar(255) NOT NULL,
  `change_type` tinyint(3) unsigned NOT NULL,
  `bank_info` text COMMENT '提现银行卡信息',
  PRIMARY KEY (`log_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_drp_log
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_drp_profit`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_drp_profit`;
CREATE TABLE `ecs_drp_profit` (
  `profit_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '分类利润id',
  `cate_id` int(10) DEFAULT NULL COMMENT '商品分类',
  `profit1` float(20,2) DEFAULT '0.00' COMMENT '分销利润1级',
  `profit2` float(20,2) DEFAULT '0.00' COMMENT '分销利润2级',
  `profit3` float(20,2) DEFAULT '0.00' COMMENT '分销利润3级',
  PRIMARY KEY (`profit_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_drp_profit
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_drp_shop`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_drp_shop`;
CREATE TABLE `ecs_drp_shop` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '店铺id',
  `shop_name` varchar(20) DEFAULT NULL COMMENT '微店名称',
  `real_name` varchar(20) DEFAULT NULL COMMENT '真实姓名',
  `shop_mobile` varchar(20) DEFAULT NULL COMMENT '手机号',
  `shop_img` text COMMENT '店铺头像',
  `user_id` int(10) NOT NULL DEFAULT '0',
  `cat_id` text COMMENT '分销分类id',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `money` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `open` int(1) NOT NULL DEFAULT '0' COMMENT '店铺是否开启',
  `bank` int(10) NOT NULL DEFAULT '0' COMMENT '默认银行卡',
  PRIMARY KEY (`id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_drp_shop
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_email_list`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_email_list`;
CREATE TABLE `ecs_email_list` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `email` varchar(60) NOT NULL,
  `stat` tinyint(1) NOT NULL DEFAULT '0',
  `hash` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_email_list
-- ----------------------------
INSERT INTO `ecs_email_list` VALUES ('1', '497110669@qq.com', '0', '40f84b0112');

-- ----------------------------
-- Table structure for `ecs_email_sendlist`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_email_sendlist`;
CREATE TABLE `ecs_email_sendlist` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `template_id` mediumint(8) NOT NULL,
  `email_content` text NOT NULL,
  `error` tinyint(1) NOT NULL DEFAULT '0',
  `pri` tinyint(10) NOT NULL,
  `last_send` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_email_sendlist
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_error_log`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_error_log`;
CREATE TABLE `ecs_error_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `info` varchar(255) NOT NULL,
  `file` varchar(100) NOT NULL,
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_error_log
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_exchange_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_exchange_goods`;
CREATE TABLE `ecs_exchange_goods` (
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `exchange_integral` int(10) unsigned NOT NULL DEFAULT '0',
  `is_exchange` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_exchange_goods
-- ----------------------------
INSERT INTO `ecs_exchange_goods` VALUES ('63', '33', '1', '0');
INSERT INTO `ecs_exchange_goods` VALUES ('45', '122', '1', '0');
INSERT INTO `ecs_exchange_goods` VALUES ('33', '321', '1', '0');
INSERT INTO `ecs_exchange_goods` VALUES ('43', '2221', '1', '0');
INSERT INTO `ecs_exchange_goods` VALUES ('38', '123', '1', '0');
INSERT INTO `ecs_exchange_goods` VALUES ('55', '223', '1', '1');
INSERT INTO `ecs_exchange_goods` VALUES ('44', '120', '1', '0');
INSERT INTO `ecs_exchange_goods` VALUES ('64', '44', '1', '0');
INSERT INTO `ecs_exchange_goods` VALUES ('83', '342', '1', '0');
INSERT INTO `ecs_exchange_goods` VALUES ('35', '43', '1', '0');
INSERT INTO `ecs_exchange_goods` VALUES ('40', '21', '1', '0');
INSERT INTO `ecs_exchange_goods` VALUES ('69', '12', '1', '0');
INSERT INTO `ecs_exchange_goods` VALUES ('93', '2', '1', '0');
INSERT INTO `ecs_exchange_goods` VALUES ('56', '1234', '1', '0');
INSERT INTO `ecs_exchange_goods` VALUES ('39', '27', '1', '0');
INSERT INTO `ecs_exchange_goods` VALUES ('53', '3421', '1', '0');

-- ----------------------------
-- Table structure for `ecs_favourable_activity`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_favourable_activity`;
CREATE TABLE `ecs_favourable_activity` (
  `act_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `act_name` varchar(255) NOT NULL,
  `start_time` int(10) unsigned NOT NULL,
  `end_time` int(10) unsigned NOT NULL,
  `user_rank` varchar(255) NOT NULL,
  `act_range` tinyint(3) unsigned NOT NULL,
  `act_range_ext` varchar(255) NOT NULL,
  `min_amount` decimal(10,2) unsigned NOT NULL,
  `max_amount` decimal(10,2) unsigned NOT NULL,
  `act_type` tinyint(3) unsigned NOT NULL,
  `act_type_ext` decimal(10,2) unsigned NOT NULL,
  `gift` text NOT NULL,
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '50',
  `touch_img` varchar(50) DEFAULT '',
  PRIMARY KEY (`act_id`),
  KEY `act_name` (`act_name`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_favourable_activity
-- ----------------------------
INSERT INTO `ecs_favourable_activity` VALUES ('2', '测试优惠活动1', '1400140800', '1432022400', '0,1,2,3', '3', '6', '0.00', '0.00', '0', '0.00', 'a:1:{i:0;a:3:{s:2:\"id\";s:1:\"8\";s:4:\"name\";s:45:\"IOPE亦博气垫粉底霜液体粉饼中样4g\";s:5:\"price\";s:1:\"0\";}}', '50', '');

-- ----------------------------
-- Table structure for `ecs_feedback`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_feedback`;
CREATE TABLE `ecs_feedback` (
  `msg_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `user_email` varchar(60) NOT NULL DEFAULT '',
  `msg_title` varchar(200) NOT NULL DEFAULT '',
  `msg_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `msg_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `msg_content` text NOT NULL,
  `msg_time` int(10) unsigned NOT NULL DEFAULT '0',
  `message_img` varchar(255) NOT NULL DEFAULT '0',
  `order_id` int(11) unsigned NOT NULL DEFAULT '0',
  `msg_area` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`msg_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_feedback
-- ----------------------------
INSERT INTO `ecs_feedback` VALUES ('1', '0', '1', 'ecshop', 'ecshop@ecshop.com', '三星SGH-F258什么时候到', '4', '0', '三星SGH-F258什么时候有货', '1242107197', '', '0', '0');
INSERT INTO `ecs_feedback` VALUES ('2', '0', '16', 'tyq', 'kk1346@qq.com', '囧囧的撒', '4', '0', '的方法', '1440544030', '', '0', '0');
INSERT INTO `ecs_feedback` VALUES ('4', '2', '1', 'admin', 'qqw.aaa.33@33.cc', 'reply', '0', '0', '防感染人', '1440547098', '0', '0', '0');
INSERT INTO `ecs_feedback` VALUES ('6', '0', '16', 'tyq', 'kk1346@qq.com', '格外的的', '0', '0', '仍然高热高热个人各个，板块的巴萨就看的吧，的三倍海南。较大囧囧的。囧囧掉手机哦，暖暖氛围浓能给您。寂寞ID睡觉阿迪偶奇偶，的窘迫奇偶街，阿叫哦我我和和和和和和和和和和好好好好好好会会会会会会会会会会好好好好好号号号号号化化化化化化iwoijgiog66', '1440547417', '16_20150826ruuhvo.png', '0', '0');
INSERT INTO `ecs_feedback` VALUES ('7', '6', '1', 'admin', '规范广告德芙', 'reply', '0', '0', '的娃娃大大我的的。囧囧掉手机哦，暖暖氛围浓能给您。寂寞ID睡觉阿迪偶奇偶，的窘迫奇偶街，', '1440547434', '0', '0', '0');
INSERT INTO `ecs_feedback` VALUES ('8', '0', '0', '匿名用户', 'dsadds@qqqq.adsads', 'dsddsad', '1', '1', 'ggggdfsfdsf', '1440633136', '', '0', '1');
INSERT INTO `ecs_feedback` VALUES ('9', '8', '1', 'admin', 'fwwa', 'reply', '0', '0', 'wadsadsad', '1440633150', '0', '0', '0');
INSERT INTO `ecs_feedback` VALUES ('10', '0', '0', '匿名用户', 'aaa@d.sd', 'dsad', '2', '1', '询问', '1440960212', '', '0', '1');
INSERT INTO `ecs_feedback` VALUES ('11', '0', '0', '匿名用户', 'dsadds@qqqq.adsads', 'dfffffffffff', '3', '1', '售后', '1440960226', '', '0', '1');
INSERT INTO `ecs_feedback` VALUES ('12', '0', '0', '匿名用户', 'aaa@d.sd', 'dsad', '4', '1', '求购', '1440960242', '', '0', '1');
INSERT INTO `ecs_feedback` VALUES ('13', '0', '2', 'vip', 'vip@ecshop.com', '你好', '0', '0', '你们的新产品什么时候发布', '1441733619', '', '0', '0');

-- ----------------------------
-- Table structure for `ecs_friend_link`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_friend_link`;
CREATE TABLE `ecs_friend_link` (
  `link_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_logo` varchar(255) NOT NULL DEFAULT '',
  `show_order` tinyint(3) unsigned NOT NULL DEFAULT '50',
  PRIMARY KEY (`link_id`),
  KEY `show_order` (`show_order`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_friend_link
-- ----------------------------
INSERT INTO `ecs_friend_link` VALUES ('1', 'ECSHOP 网上商店管理系统', 'http://www.ecshop.com/', 'http://www.ecshop.com/images/logo/ecshop_logo.gif', '50');
INSERT INTO `ecs_friend_link` VALUES ('2', '买否网', 'http://www.maifou.net/', '', '51');
INSERT INTO `ecs_friend_link` VALUES ('3', '免费开独立网店', 'http://www.wdwd.com/', '', '52');

-- ----------------------------
-- Table structure for `ecs_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_goods`;
CREATE TABLE `ecs_goods` (
  `goods_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_sn` varchar(60) NOT NULL DEFAULT '',
  `goods_name` varchar(120) NOT NULL DEFAULT '',
  `goods_name_style` varchar(60) NOT NULL DEFAULT '+',
  `click_count` int(10) unsigned NOT NULL DEFAULT '0',
  `sales_count` int(10) unsigned NOT NULL DEFAULT '0',
  `brand_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `provider_name` varchar(100) NOT NULL DEFAULT '',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_weight` decimal(10,3) unsigned NOT NULL DEFAULT '0.000',
  `market_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `shop_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `promote_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `promote_start_date` int(11) unsigned NOT NULL DEFAULT '0',
  `promote_end_date` int(11) unsigned NOT NULL DEFAULT '0',
  `warn_number` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `goods_brief` varchar(255) NOT NULL DEFAULT '',
  `goods_desc` text NOT NULL,
  `goods_thumb` varchar(255) NOT NULL DEFAULT '',
  `goods_img` varchar(255) NOT NULL DEFAULT '',
  `original_img` varchar(255) NOT NULL DEFAULT '',
  `is_real` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `extension_code` varchar(30) NOT NULL DEFAULT '',
  `is_on_sale` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_alone_sale` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_shipping` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `integral` int(10) unsigned NOT NULL DEFAULT '0',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `sort_order` smallint(4) unsigned NOT NULL DEFAULT '100',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_best` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_new` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_promote` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `bonus_type_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `last_update` int(10) unsigned NOT NULL DEFAULT '0',
  `goods_type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `seller_note` varchar(255) NOT NULL DEFAULT '',
  `give_integral` int(11) NOT NULL DEFAULT '-1',
  `rank_integral` int(11) NOT NULL DEFAULT '-1',
  `suppliers_id` smallint(5) unsigned DEFAULT NULL,
  `is_check` tinyint(1) unsigned DEFAULT NULL,
  `sales_volume` int(10) unsigned NOT NULL DEFAULT '0',
  `comments_number` int(10) unsigned NOT NULL DEFAULT '0',
  `packing_list` text NOT NULL,
  `customer_service` text NOT NULL,
  `touch_sale` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `touch_fencheng` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `bb_chicun` char(28) NOT NULL,
  `mobile_desc` char(28) NOT NULL,
  `sales_volume_base` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '销量基数',
  PRIMARY KEY (`goods_id`),
  KEY `goods_sn` (`goods_sn`),
  KEY `cat_id` (`cat_id`),
  KEY `last_update` (`last_update`),
  KEY `brand_id` (`brand_id`),
  KEY `goods_weight` (`goods_weight`),
  KEY `promote_end_date` (`promote_end_date`),
  KEY `promote_start_date` (`promote_start_date`),
  KEY `goods_number` (`goods_number`),
  KEY `sort_order` (`sort_order`),
  KEY `sales_volume` (`sales_volume`)
) ENGINE=MyISAM AUTO_INCREMENT=105 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_goods
-- ----------------------------
INSERT INTO `ecs_goods` VALUES ('46', '106', 'ECS000046', '小钢炮蓝牙音箱', '+', '153', '0', '0', '', '9997', '0.000', '154.80', '129.00', '0.00', '0', '0', '1', '', '', '', 'images/201507/thumb_img/46_thumb_G_1437092278369.jpg', 'images/201507/goods_img/46_G_1437092278300.jpg', 'images/201507/source_img/46_G_1437092278839.jpg', '1', '', '1', '1', '0', '1', '1437092278', '4', '0', '0', '0', '1', '0', '0', '1439938394', '0', '', '-1', '-1', '0', '0', '3', '0', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('44', '95', 'ECS000044', '小米移动电源5000mAh', '+', '100', '0', '0', '', '9999', '0.000', '58.80', '49.00', '0.00', '0', '0', '1', '', '', '', 'images/201507/thumb_img/44_thumb_G_1437092148601.jpg', 'images/201507/goods_img/44_G_1437092148551.jpg', 'images/201507/source_img/44_G_1437092148573.jpg', '1', '', '1', '1', '0', '0', '1437092148', '2', '0', '0', '0', '1', '0', '0', '1439313623', '0', '', '-1', '-1', '0', '0', '1', '0', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('45', '103', 'ECS000045', '小米活塞耳机标准版', '+', '135', '0', '0', '', '10000', '0.000', '106.80', '89.00', '0.00', '0', '0', '1', '', '', '', 'images/201507/thumb_img/45_thumb_G_1437092199733.jpg', 'images/201507/goods_img/45_G_1437092199617.jpg', 'images/201507/source_img/45_G_1437092199141.jpg', '1', '', '1', '1', '0', '0', '1437092199', '3', '0', '1', '0', '1', '0', '0', '1439938396', '0', '', '-1', '-1', '0', '0', '0', '3', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('27', '77', 'ECS000000', '小米电视2 40英寸', '+', '417', '0', '0', '', '9999', '0.000', '2640.00', '2200.00', '1200.00', '1439827200', '1439913600', '1', '', '40/49/55英寸 现货购买', '<p><img width=\"720\" height=\"598\" alt=\"\" src=\"/images/upload/Image/20150818160807.png\" /></p>\r\n<p>&nbsp;</p>\r\n<p><img width=\"720\" height=\"572\" alt=\"\" src=\"/images/upload/Image/20150818160916.png\" /></p>\r\n<p><img width=\"1351\" height=\"762\" alt=\"\" src=\"/images/upload/Image/er08150123.png\" /></p>\r\n<p><img width=\"1138\" height=\"867\" alt=\"\" src=\"/images/upload/Image/ger908150140.png\" /></p>', 'images/201507/thumb_img/27_thumb_G_1437074702008.jpg', 'images/201507/goods_img/27_G_1437074702381.jpg', 'images/201507/source_img/27_G_1437074702064.jpg', '1', '', '1', '1', '0', '22', '1437074010', '1', '0', '1', '0', '1', '1', '0', '1450023177', '3', '', '-1', '-1', '0', '0', '1', '6', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('28', '79', 'ECS000028', '小米平板 16G', '+', '83', '0', '0', '', '9998', '0.000', '1558.00', '1299.00', '0.00', '0', '0', '1', '', '全球首款搭载 NVIDIA Tegra K1 处理器平板', '', 'images/201507/thumb_img/28_thumb_G_1437074792369.jpg', 'images/201507/goods_img/28_G_1437074792652.jpg', 'images/201507/source_img/28_G_1437074792489.jpg', '1', '', '1', '1', '0', '12', '1437074792', '2', '0', '0', '0', '1', '0', '0', '1439830263', '3', '', '-1', '-1', '0', '0', '2', '1', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('29', '78', 'ECS000029', '小米盒子增强版 1G', '+', '18', '0', '0', '', '9997', '0.000', '358.00', '299.00', '0.00', '0', '0', '1', '', '首款4K超高清网络机顶盒', '', 'images/201507/thumb_img/29_thumb_G_1437074933275.jpg', 'images/201507/goods_img/29_G_1437074933512.jpg', 'images/201507/source_img/29_G_1437074933166.jpg', '1', '', '1', '1', '0', '2', '1437074933', '3', '0', '0', '0', '1', '0', '0', '1441498116', '3', '', '-1', '-1', '0', '0', '3', '0', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('30', '102', 'ECS000030', '小米头戴式耳机', '+', '165', '0', '0', '', '10000', '0.000', '598.00', '499.00', '0.00', '0', '0', '1', '', '50mm大尺寸航天金属振膜', '<p><img width=\"1040\" height=\"813\" alt=\"\" src=\"/images/upload/Image/af71a35721.png\" /></p>\r\n<p>&nbsp;</p>\r\n<p><img width=\"913\" height=\"779\" alt=\"\" src=\"/images/upload/Image/he08110501.png\" /></p>\r\n<p><img width=\"854\" height=\"836\" alt=\"\" src=\"/images/upload/Image/mhyte110940.png\" /></p>', 'images/201507/thumb_img/30_thumb_G_1437075007558.jpg', 'images/201507/goods_img/30_G_1437075007745.jpg', 'images/201507/source_img/30_G_1437075007203.jpg', '1', '', '1', '1', '0', '4', '1437075007', '10000', '0', '1', '1', '1', '0', '0', '1450023332', '4', '', '-1', '-1', '0', '0', '0', '0', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('31', '95', 'ECS000031', '小米移动电源10000mAh', '+', '60', '0', '0', '', '10000', '0.000', '94.00', '79.00', '0.00', '0', '0', '1', '', '松下/LG高密度进口电芯', '', 'images/201507/thumb_img/31_thumb_G_1437075539254.jpg', 'images/201507/goods_img/31_G_1437075539651.jpg', 'images/201507/source_img/31_G_1437075539605.jpg', '1', '', '1', '1', '0', '0', '1437075539', '5', '0', '1', '0', '0', '0', '0', '1439171255', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('32', '82', 'ECS000032', '小米路由器 mini', '+', '39', '0', '0', '', '10000', '0.000', '154.00', '129.00', '0.00', '0', '0', '1', '', '主流双频AC智能路由器，性价比之王', '', 'images/201507/thumb_img/32_thumb_G_1437075765802.jpg', 'images/201507/goods_img/32_G_1437075765689.jpg', 'images/201507/source_img/32_G_1437075765600.jpg', '1', '', '1', '1', '0', '1', '1437075765', '6', '0', '1', '0', '1', '0', '0', '1439313614', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('33', '86', 'ECS000033', '小蚁智能摄像机 标准', '+', '6', '0', '0', '', '9998', '0.000', '154.80', '129.00', '0.00', '0', '0', '1', '', '能看能听能说，手机远程观看', '', 'images/201507/thumb_img/33_thumb_G_1437075865379.jpg', 'images/201507/goods_img/33_G_1437075865949.jpg', 'images/201507/source_img/33_G_1437075865463.jpg', '1', '', '1', '1', '0', '1', '1437075865', '7', '0', '1', '0', '1', '0', '0', '1439313614', '0', '', '-1', '-1', '0', '0', '2', '0', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('34', '85', 'ECS000034', '小蚁运动相机', '+', '6', '0', '0', '', '10000', '0.000', '478.00', '399.00', '0.00', '0', '0', '1', '', '边玩边录边拍，手机随时分享', '', 'images/201507/thumb_img/34_thumb_G_1437076036973.jpg', 'images/201507/goods_img/34_G_1437076036835.jpg', 'images/201507/source_img/34_G_1437076036893.jpg', '1', '', '1', '1', '0', '3', '1437076036', '8', '0', '1', '0', '1', '0', '0', '1439313615', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('35', '84', 'ECS000035', '小米空气净化器', '+', '4', '0', '0', '', '10000', '0.000', '1078.80', '899.00', '0.00', '0', '0', '1', '', '', '', 'images/201507/thumb_img/35_thumb_G_1437081702649.jpg', 'images/201507/goods_img/35_G_1437081702302.jpg', 'images/201507/source_img/35_G_1437081702860.jpg', '1', '', '1', '1', '0', '8', '1437081702', '1', '0', '0', '1', '1', '0', '0', '1439313797', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('36', '87', 'ECS000036', 'iHealth智能血压计', '+', '0', '0', '0', '', '10000', '0.000', '238.00', '199.00', '0.00', '0', '0', '1', '', '', '', 'images/201507/thumb_img/36_thumb_G_1437082145888.jpg', 'images/201507/goods_img/36_G_1437082145677.jpg', 'images/201507/source_img/36_G_1437082145811.jpg', '1', '', '1', '1', '0', '1', '1437082145', '2', '0', '0', '1', '0', '0', '0', '1439313706', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('37', '88', 'ECS000037', '小米智能插座', '+', '2', '0', '0', '', '10000', '0.000', '94.00', '79.00', '0.00', '0', '0', '1', '', '', '', 'images/201507/thumb_img/37_thumb_G_1437082214575.jpg', 'images/201507/goods_img/37_G_1437082214887.jpg', 'images/201507/source_img/37_G_1437082214044.jpg', '1', '', '1', '1', '0', '0', '1437082214', '3', '0', '0', '1', '0', '0', '0', '1439313617', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('38', '103', 'ECS000038', '小米活塞耳机 炫彩版', '+', '77', '0', '0', '', '9998', '0.000', '46.80', '39.00', '0.00', '0', '0', '1', '', '适合出街的耳机', '<p><img width=\"1226\" height=\"691\" alt=\"\" src=\"/xiaomi2015273/images/upload/Image/xhsejxcb_01x.jpg\" /></p>\r\n<p><img width=\"1226\" height=\"692\" alt=\"\" src=\"/xiaomi2015273/images/upload/Image/xhsejxcb_05.jpg\" /></p>\r\n<p><img width=\"1226\" height=\"692\" alt=\"\" src=\"/xiaomi2015273/images/upload/Image/xhsejxcb_11.jpg\" /></p>\r\n<p><img width=\"1226\" height=\"692\" alt=\"\" src=\"/xiaomi2015273/images/upload/Image/xhsejxcb_13.jpg\" /></p>\r\n<p><img width=\"1226\" height=\"692\" alt=\"\" src=\"/xiaomi2015273/images/upload/Image/xhsejxcb_23.jpg\" /></p>\r\n<p><img width=\"1226\" height=\"692\" alt=\"\" src=\"/xiaomi2015273/images/upload/Image/xhsejxcb_37.jpg\" /></p>', 'images/201507/thumb_img/38_thumb_G_1437082667838.jpg', 'images/201507/goods_img/38_G_1437082667243.jpg', 'images/201507/source_img/38_G_1437082667365.jpg', '1', '', '1', '1', '0', '0', '1437082667', '1', '0', '0', '1', '1', '0', '0', '1442180645', '4', '', '-1', '-1', '0', '0', '2', '7', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('39', '123', 'ECS000039', '小米水质TDS检测笔', '+', '8', '0', '0', '', '10000', '0.000', '46.80', '39.00', '0.00', '0', '0', '1', '', '', '', 'images/201507/thumb_img/39_thumb_G_1437082747983.jpg', 'images/201507/goods_img/39_G_1437082747038.jpg', 'images/201507/source_img/39_G_1437082747160.jpg', '1', '', '1', '1', '0', '0', '1437082747', '5', '0', '0', '1', '1', '0', '0', '1439313619', '0', '', '-1', '-1', '0', '0', '0', '3', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('40', '90', 'ECS000040', '小米体重秤', '+', '7', '0', '0', '', '9999', '0.000', '118.00', '99.00', '0.00', '0', '0', '1', '', '', '', 'images/201507/thumb_img/40_thumb_G_1437082798686.jpg', 'images/201507/goods_img/40_G_1437082798286.jpg', 'images/201507/source_img/40_G_1437082798429.jpg', '1', '', '1', '1', '0', '0', '1437082798', '6', '0', '1', '1', '1', '0', '0', '1439313620', '0', '', '-1', '-1', '0', '0', '1', '0', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('41', '95', 'ECS000041', '小米移动电源16000mAh', '+', '3', '0', '0', '', '10000', '0.000', '129.00', '109.00', '0.00', '0', '0', '1', '', '', '', 'images/201507/thumb_img/41_thumb_G_1437082849514.jpg', 'images/201507/goods_img/41_G_1437082849066.jpg', 'images/201507/source_img/41_G_1437082849886.jpg', '1', '', '1', '1', '0', '1', '1437082849', '7', '0', '1', '1', '0', '0', '0', '1439313620', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('42', '93', 'ECS000042', '小米蓝牙手柄', '+', '48', '0', '0', '', '9999', '0.000', '118.00', '99.00', '0.00', '0', '0', '1', '', '', '', 'images/201507/thumb_img/42_thumb_G_1437082936092.jpg', 'images/201507/goods_img/42_G_1437082936414.jpg', 'images/201507/source_img/42_G_1437082936458.jpg', '1', '', '1', '1', '0', '0', '1437082936', '8', '0', '1', '1', '0', '0', '0', '1439313622', '0', '', '-1', '-1', '0', '0', '1', '0', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('43', '123', 'ECS000043', '小蚁蓝牙自拍杆', '+', '6', '0', '0', '', '9998', '0.000', '154.80', '129.00', '0.00', '0', '0', '1', '', '', '', 'images/201507/thumb_img/43_thumb_G_1437091900155.jpg', 'images/201507/goods_img/43_G_1437091900518.jpg', 'images/201507/source_img/43_G_1437091900408.jpg', '1', '', '1', '1', '0', '1', '1437091900', '1', '0', '0', '0', '1', '0', '0', '1439313622', '0', '', '-1', '-1', '0', '0', '2', '1', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('47', '107', 'ECS000047', '米兔手机U盘升级版', '+', '58', '0', '0', '', '10000', '0.000', '59.87', '49.90', '0.00', '0', '0', '1', '', '', '', 'images/201508/thumb_img/47_thumb_G_1439331077002.jpg', 'images/201508/goods_img/47_G_1439331077204.jpg', 'images/201508/source_img/47_G_1439331077155.jpg', '1', '', '1', '1', '0', '0', '1439331077', '100', '0', '0', '0', '0', '0', '0', '1439938394', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('53', '124', 'ECS000053', '小米电视2S48英寸', '+', '2', '0', '62', '', '10000', '0.000', '3598.79', '2999.00', '0.00', '0', '0', '1', '', '', '', 'images/201508/thumb_img/53_thumb_G_1439511514539.jpg', 'images/201508/goods_img/53_G_1439511514043.jpg', 'images/201508/source_img/53_G_1439511514552.jpg', '1', '', '1', '1', '0', '29', '1439511514', '100', '0', '0', '0', '1', '0', '0', '1441498131', '3', '', '-1', '-1', '0', '0', '0', '0', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('54', '76', 'ECS000054', '小米电视2 55英寸', '+', '5', '0', '54', '', '10000', '0.000', '5398.80', '4499.00', '0.00', '0', '0', '1', '', '', '', 'images/201508/thumb_img/54_thumb_G_1439511600535.jpg', 'images/201508/goods_img/54_G_1439511600015.jpg', 'images/201508/source_img/54_G_1439511600707.jpg', '1', '', '1', '1', '0', '44', '1439511600', '100', '0', '0', '0', '1', '0', '0', '1441498095', '3', '', '-1', '-1', '0', '0', '0', '0', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('55', '76', 'ECS000055', '小米平板 64GB', '+', '28', '0', '0', '', '10000', '0.000', '1798.80', '1499.00', '0.00', '0', '0', '1', '', '', '', 'images/201508/thumb_img/55_thumb_G_1439511725721.jpg', 'images/201508/goods_img/55_G_1439511725534.jpg', 'images/201508/source_img/55_G_1439511725197.jpg', '1', '', '1', '1', '0', '14', '1439511725', '100', '0', '0', '0', '1', '0', '0', '1441498056', '3', '', '-1', '-1', '0', '0', '0', '12', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('77', '125', 'ECS000077', '小米电视/盒子遥控器', '+', '2', '0', '0', '', '10000', '0.000', '34.80', '29.00', '0.00', '0', '0', '1', '', '', '', 'images/201508/thumb_img/77_thumb_G_1440984390480.jpg', 'images/201508/goods_img/77_G_1440984390774.jpg', 'images/201508/source_img/77_G_1440984390578.png', '1', '', '1', '1', '0', '0', '1440984390', '100', '0', '0', '0', '1', '0', '0', '1441052227', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('78', '73', 'ECS000078', '红米Note2', '+', '1', '0', '0', '', '10000', '0.000', '958.80', '799.00', '0.00', '0', '0', '1', '', '千元旗舰，青春优选', '', 'images/201509/thumb_img/78_thumb_G_1441050387337.jpg', 'images/201509/goods_img/78_G_1441050387752.jpg', 'images/201509/source_img/78_G_1441050387167.png', '1', '', '1', '1', '0', '7', '1441050387', '100', '0', '0', '0', '0', '0', '0', '1441050387', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('56', '71', 'ECS000056', '小米手机4', '+', '12', '0', '0', '', '10000', '0.000', '1798.80', '1499.00', '0.00', '0', '0', '1', '', '', '<p><img src=\"/xiaomi2015273/images/upload/Image/1235.png\" width=\"1015\" height=\"941\" alt=\"\" /></p>', 'images/201508/thumb_img/56_thumb_G_1440717641715.jpg', 'images/201508/goods_img/56_G_1440717641435.jpg', 'images/201508/source_img/56_G_1440717640337.png', '1', '', '1', '1', '0', '14', '1440717640', '100', '0', '0', '0', '0', '0', '0', '1440717776', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('57', '109', 'ECS000057', '清水软胶保护套', '+', '10', '0', '0', '', '10000', '0.000', '5.88', '4.90', '0.00', '0', '0', '1', '', '', '', 'images/201508/thumb_img/57_thumb_G_1440717888680.jpg', 'images/201508/goods_img/57_G_1440717888357.jpg', 'images/201508/source_img/57_G_1440717888107.jpg', '1', '', '1', '1', '0', '0', '1440717888', '100', '0', '0', '0', '0', '0', '0', '1440717953', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('58', '114', 'ECS000058', '实木后盖', '+', '8', '0', '0', '', '9999', '0.000', '82.80', '69.00', '0.00', '0', '0', '1', '', '', '<p><img width=\"1240\" height=\"700\" alt=\"\" src=\"/xiaomi2015273/images/upload/Image/manguzhutoutu.jpg\" /></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><img width=\"1240\" height=\"700\" alt=\"\" src=\"/xiaomi2015273/images/upload/Image/manguzhu_03.jpg\" /></p>', 'images/201508/thumb_img/58_thumb_G_1440725448948.jpg', 'images/201508/goods_img/58_G_1440725448654.jpg', 'images/201508/source_img/58_G_1440725448687.jpg', '1', '', '1', '1', '0', '0', '1440725448', '100', '0', '0', '0', '0', '0', '0', '1440725512', '0', '', '-1', '-1', '0', '0', '1', '0', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('59', '106', 'ECS000059', '小米方盒子蓝牙音箱', '+', '2', '0', '0', '', '10000', '0.000', '118.80', '99.00', '0.00', '0', '0', '1', '', '', '', 'images/201508/thumb_img/59_thumb_G_1440983020324.jpg', 'images/201508/goods_img/59_G_1440983020503.jpg', 'images/201508/source_img/59_G_1440983020268.jpg', '1', '', '1', '1', '0', '0', '1440983020', '100', '0', '0', '0', '1', '0', '0', '1440983126', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('60', '106', 'ECS000060', '先锋APS-BA202蓝牙音箱', '+', '4', '0', '0', '', '10000', '0.000', '274.80', '229.00', '0.00', '0', '0', '1', '', '', '', 'images/201508/thumb_img/60_thumb_G_1440983103483.jpg', 'images/201508/goods_img/60_G_1440983103289.jpg', 'images/201508/source_img/60_G_1440983103358.jpg', '1', '', '1', '1', '0', '2', '1440983049', '100', '0', '0', '0', '1', '0', '0', '1440983125', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('61', '106', 'ECS000061', 'Jam Blast蓝牙音箱', '+', '0', '0', '0', '', '10000', '0.000', '358.80', '299.00', '0.00', '0', '0', '1', '', '', '', 'images/201508/thumb_img/61_thumb_G_1440983075965.jpg', 'images/201508/goods_img/61_G_1440983075775.jpg', 'images/201508/source_img/61_G_1440983075461.jpg', '1', '', '1', '1', '0', '2', '1440983075', '100', '0', '0', '0', '1', '0', '0', '1440983124', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('62', '105', 'ECS000062', '1MORE金澈耳机', '+', '2', '0', '0', '', '10000', '0.000', '118.80', '99.00', '0.00', '0', '0', '1', '', '', '', 'images/201508/thumb_img/62_thumb_G_1440983163158.jpg', 'images/201508/goods_img/62_G_1440983163401.jpg', 'images/201508/source_img/62_G_1440983163343.jpg', '1', '', '1', '1', '0', '0', '1440983163', '100', '0', '0', '0', '0', '0', '0', '1440983163', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('63', '105', 'ECS000063', 'Skullcandy Jib耳机', '+', '0', '0', '0', '', '10000', '0.000', '118.80', '99.00', '0.00', '0', '0', '1', '', '', '', 'images/201508/thumb_img/63_thumb_G_1440983188625.jpg', 'images/201508/goods_img/63_G_1440983188968.jpg', 'images/201508/source_img/63_G_1440983188774.jpg', '1', '', '1', '1', '0', '0', '1440983188', '100', '0', '0', '0', '0', '0', '0', '1440983188', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('64', '105', 'ECS000064', '魔声Beats Studio HD 2.0耳机', '+', '7', '0', '0', '', '10000', '0.000', '3238.79', '2699.00', '0.00', '0', '0', '1', '', '适用于 小米平板, 所有小米手机', '', 'images/201508/thumb_img/64_thumb_G_1440983246324.jpg', 'images/201508/goods_img/64_G_1440983246833.jpg', 'images/201508/source_img/64_G_1440983246755.jpg', '1', '', '1', '1', '0', '26', '1440983246', '100', '0', '0', '0', '1', '0', '0', '1440983246', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('65', '81', 'ECS000065', '全新小米路由器', '+', '0', '0', '0', '', '10000', '0.000', '838.80', '699.00', '0.00', '0', '0', '1', '', '顶配企业级性能，最高内置6TB监控级硬盘', '', 'images/201508/thumb_img/65_thumb_G_1440983430401.jpg', 'images/201508/goods_img/65_G_1440983430591.jpg', 'images/201508/source_img/65_G_1440983430781.png', '1', '', '1', '1', '0', '6', '1440983430', '100', '0', '0', '0', '1', '0', '0', '1440983551', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('66', '92', 'ECS000066', '小米随身WiFi U盘版本', '+', '0', '0', '0', '', '10000', '0.000', '59.87', '49.90', '0.00', '0', '0', '1', '', '', '', 'images/201508/thumb_img/66_thumb_G_1440983490045.jpg', 'images/201508/goods_img/66_G_1440983490432.jpg', 'images/201508/source_img/66_G_1440983490982.png', '1', '', '1', '1', '0', '0', '1440983490', '100', '0', '0', '0', '1', '0', '0', '1440983551', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('67', '83', 'ECS000067', '小米手环', '+', '11', '0', '0', '', '10000', '0.000', '82.80', '69.00', '0.00', '0', '0', '1', '', '', '', 'images/201508/thumb_img/67_thumb_G_1440983638116.jpg', 'images/201508/goods_img/67_G_1440983638287.jpg', 'images/201508/source_img/67_G_1440983638037.png', '1', '', '1', '1', '0', '0', '1440983638', '100', '0', '0', '0', '1', '0', '0', '1440983646', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('68', '100', 'ECS000068', '多彩便携USB线20CM', '+', '0', '0', '0', '', '10000', '0.000', '22.80', '19.00', '0.00', '0', '0', '1', '', '', '', 'images/201508/thumb_img/68_thumb_G_1440983695997.jpg', 'images/201508/goods_img/68_G_1440983695646.jpg', 'images/201508/source_img/68_G_1440983695262.jpg', '1', '', '1', '1', '0', '0', '1440983695', '100', '0', '0', '0', '1', '0', '0', '1440983756', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('69', '100', 'ECS000069', '小米千兆网线', '+', '1', '0', '0', '', '10000', '0.000', '17.88', '14.90', '0.00', '0', '0', '1', '', '', '', 'images/201508/thumb_img/69_thumb_G_1440983751530.jpg', 'images/201508/goods_img/69_G_1440983751111.jpg', 'images/201508/source_img/69_G_1440983751678.jpg', '1', '', '1', '1', '0', '0', '1440983751', '100', '0', '0', '0', '1', '0', '0', '1440983756', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('70', '98', 'ECS000070', '红米2/2A原装电池', '+', '0', '0', '0', '', '10000', '0.000', '58.80', '49.00', '0.00', '0', '0', '1', '', '', '', 'images/201508/thumb_img/70_thumb_G_1440983810214.jpg', 'images/201508/goods_img/70_G_1440983810229.jpg', 'images/201508/source_img/70_G_1440983810482.jpg', '1', '', '1', '1', '0', '0', '1440983810', '100', '0', '0', '0', '0', '0', '0', '1440983810', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('71', '98', 'ECS000071', '红米Note电池', '+', '0', '0', '0', '', '10000', '0.000', '58.80', '49.00', '0.00', '0', '0', '1', '', '', '', 'images/201508/thumb_img/71_thumb_G_1440983839269.jpg', 'images/201508/goods_img/71_G_1440983839789.jpg', 'images/201508/source_img/71_G_1440983839316.jpg', '1', '', '1', '1', '0', '0', '1440983839', '100', '0', '0', '0', '1', '0', '0', '1440983965', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('72', '98', 'ECS000072', '红米note 2原装电池', '+', '0', '0', '0', '', '10000', '0.000', '58.80', '49.00', '0.00', '0', '0', '1', '', '', '', 'images/201508/thumb_img/72_thumb_G_1440983887661.jpg', 'images/201508/goods_img/72_G_1440983887203.jpg', 'images/201508/source_img/72_G_1440983887349.jpg', '1', '', '1', '1', '0', '0', '1440983887', '100', '0', '0', '0', '1', '0', '0', '1440983962', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('73', '97', 'ECS000073', '刀锋移动电源', '+', '0', '0', '0', '', '10000', '0.000', '358.80', '299.00', '0.00', '0', '0', '1', '', '', '', 'images/201508/thumb_img/73_thumb_G_1440983937959.jpg', 'images/201508/goods_img/73_G_1440983937768.jpg', 'images/201508/source_img/73_G_1440983937124.jpg', '1', '', '1', '1', '0', '2', '1440983937', '100', '0', '0', '0', '1', '0', '0', '1440983962', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('74', '97', 'ECS000074', '萨摩小狗移动电源', '+', '8', '0', '0', '', '10000', '0.000', '153.60', '128.00', '0.00', '0', '0', '1', '', '', '', 'images/201508/thumb_img/74_thumb_G_1440983959230.jpg', 'images/201508/goods_img/74_G_1440983959272.jpg', 'images/201508/source_img/74_G_1440983959160.jpg', '1', '', '1', '1', '0', '1', '1440983959', '100', '0', '0', '0', '1', '0', '0', '1440983961', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('75', '97', 'ECS000075', '多彩电源适配器', '+', '1', '0', '0', '', '10000', '0.000', '23.88', '19.90', '0.00', '0', '0', '1', '', '', '', 'images/201508/thumb_img/75_thumb_G_1440984011595.jpg', 'images/201508/goods_img/75_G_1440984011527.jpg', 'images/201508/source_img/75_G_1440984011675.jpg', '1', '', '1', '1', '0', '0', '1440984011', '100', '0', '0', '0', '1', '0', '0', '1440984016', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('76', '126', 'ECS000076', '小米盒子mini版', '+', '2', '0', '0', '', '9999', '0.000', '238.79', '199.00', '0.00', '0', '0', '1', '', '', '', 'images/201508/thumb_img/76_thumb_G_1440984280864.jpg', 'images/201508/goods_img/76_G_1440984280941.jpg', 'images/201508/source_img/76_G_1440984280163.png', '1', '', '1', '1', '0', '1', '1440984280', '100', '0', '0', '0', '1', '0', '0', '1441052219', '0', '', '-1', '-1', '0', '0', '1', '0', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('79', '74', 'ECS000079', '小米Note顶配版 合约机', '+', '0', '0', '0', '', '10000', '0.000', '3598.79', '2999.00', '0.00', '0', '0', '1', '', '', '', 'images/201509/thumb_img/79_thumb_G_1441050485953.jpg', 'images/201509/goods_img/79_G_1441050485186.jpg', 'images/201509/source_img/79_G_1441050485988.png', '1', '', '1', '1', '0', '29', '1441050485', '100', '0', '0', '0', '0', '0', '0', '1441050485', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('80', '70', 'ECS000080', '小米NOTE', '+', '1', '0', '0', '', '10000', '0.000', '2638.79', '2199.00', '0.00', '0', '0', '1', '', '', '', 'images/201509/thumb_img/80_thumb_G_1441050558701.jpg', 'images/201509/goods_img/80_G_1441050558071.jpg', 'images/201509/source_img/80_G_1441050558342.png', '1', '', '1', '1', '0', '21', '1441050558', '100', '0', '0', '0', '0', '0', '0', '1441050558', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('81', '72', 'ECS000081', '红米手机2', '+', '1', '0', '0', '', '10000', '0.000', '718.80', '599.00', '0.00', '0', '0', '1', '', '', '', 'images/201509/thumb_img/81_thumb_G_1441050609661.jpg', 'images/201509/goods_img/81_G_1441050609705.jpg', 'images/201509/source_img/81_G_1441050609492.png', '1', '', '1', '1', '0', '5', '1441050609', '100', '0', '0', '0', '0', '0', '0', '1441050609', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('82', '75', 'ECS000082', '红米手机2A', '+', '1', '0', '0', '', '10000', '0.000', '1078.80', '899.00', '0.00', '0', '0', '1', '', '', '', 'images/201509/thumb_img/82_thumb_G_1441050801926.jpg', 'images/201509/goods_img/82_G_1441050801693.jpg', 'images/201509/source_img/82_G_1441050801052.jpg', '1', '', '1', '1', '0', '8', '1441050801', '100', '0', '0', '0', '0', '0', '0', '1441050801', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('83', '104', 'ECS000083', '小米蓝牙耳机', '+', '2', '0', '62', '', '10000', '0.000', '94.80', '79.00', '0.00', '0', '0', '1', '', '6.5克轻巧，蓝牙4.1高清通话音质', '', 'images/201509/thumb_img/83_thumb_G_1441052403875.jpg', 'images/201509/goods_img/83_G_1441052403275.jpg', 'images/201509/source_img/83_G_1441052403717.png', '1', '', '1', '1', '0', '0', '1441052403', '100', '0', '0', '0', '0', '0', '0', '1441052403', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('84', '127', 'ECS000084', '插卡式翻盖保护套', '+', '10', '0', '0', '', '10000', '0.000', '34.80', '29.00', '0.00', '0', '0', '1', '', '', '<p><img width=\"720\" height=\"530\" alt=\"\" src=\"/xiaomi2015273/images/upload/Image/hminote_01.jpg\" /></p>\r\n<p><img width=\"720\" height=\"140\" alt=\"\" src=\"/xiaomi2015273/images/upload/Image/hminote_04.jpg\" /></p>\r\n<p><img width=\"720\" height=\"530\" alt=\"\" src=\"/xiaomi2015273/images/upload/Image/hminote_05.jpg\" /></p>\r\n<p><img width=\"720\" height=\"130\" alt=\"\" src=\"/xiaomi2015273/images/upload/Image/hominote_06.jpg\" /></p>\r\n<p><img width=\"720\" height=\"530\" alt=\"\" src=\"/xiaomi2015273/images/upload/Image/shou.jpg\" /></p>\r\n<p><img width=\"720\" height=\"530\" alt=\"\" src=\"/xiaomi2015273/images/upload/Image/hminote_11.jpg\" /></p>', 'images/201509/thumb_img/84_thumb_G_1441056023645.jpg', 'images/201509/goods_img/84_G_1441056023990.jpg', 'images/201509/source_img/84_G_1441056023964.jpg', '1', '', '1', '1', '0', '0', '1441056023', '100', '0', '0', '0', '0', '0', '0', '1441502831', '0', '', '-1', '-1', '0', '0', '0', '5', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('85', '128', 'ECS000085', '清水软胶保护套', '+', '2', '0', '0', '', '10000', '0.000', '5.88', '4.90', '0.00', '0', '0', '1', '', '适用于 红米1S/红米', '', 'images/201509/thumb_img/85_thumb_G_1441056112107.jpg', 'images/201509/goods_img/85_G_1441056112082.jpg', 'images/201509/source_img/85_G_1441056112054.jpg', '1', '', '1', '1', '0', '0', '1441056112', '100', '0', '0', '0', '0', '0', '0', '1441056112', '0', '', '-1', '-1', '0', '0', '0', '1', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('86', '111', 'ECS000086', '安卓防尘塞', '+', '0', '0', '0', '', '10000', '0.000', '7.08', '5.90', '0.00', '0', '0', '1', '', '', '', 'images/201509/thumb_img/86_thumb_G_1441056239670.jpg', 'images/201509/goods_img/86_G_1441056239202.jpg', 'images/201509/source_img/86_G_1441056239893.jpg', '1', '', '1', '1', '0', '0', '1441056239', '100', '0', '0', '0', '0', '0', '0', '1441056239', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('87', '110', 'ECS000087', '普通高透贴膜(单片装)', '+', '0', '0', '0', '', '10000', '0.000', '11.88', '9.90', '0.00', '0', '0', '1', '', '', '', 'images/201509/thumb_img/87_thumb_G_1441056303542.jpg', 'images/201509/goods_img/87_G_1441056303571.jpg', 'images/201509/source_img/87_G_1441056303890.jpg', '1', '', '1', '1', '0', '0', '1441056303', '100', '0', '0', '0', '0', '0', '0', '1441056303', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('88', '129', 'ECS000088', '米兔主题3D保护壳', '+', '66', '0', '0', '', '10000', '0.000', '46.80', '39.00', '0.00', '0', '0', '1', '', '', '', 'images/201509/thumb_img/88_thumb_G_1441056484072.jpg', 'images/201509/goods_img/88_G_1441056484238.jpg', 'images/201509/source_img/88_G_1441056484508.jpg', '1', '', '1', '1', '0', '0', '1441056484', '100', '0', '0', '0', '0', '0', '0', '1441056484', '0', '', '-1', '-1', '0', '0', '0', '1', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('89', '119', 'ECS000089', '纯色开衫卫衣 女款', '+', '1', '0', '0', '', '10000', '0.000', '154.79', '129.00', '0.00', '0', '0', '1', '', '', '', 'images/201509/thumb_img/89_thumb_G_1441056597778.jpg', 'images/201509/goods_img/89_G_1441056597264.jpg', 'images/201509/source_img/89_G_1441056597372.jpg', '1', '', '1', '1', '0', '1', '1441056597', '100', '0', '0', '0', '1', '0', '0', '1441493401', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('90', '120', 'ECS000090', '企鹅版米兔', '+', '2', '0', '0', '', '10000', '0.000', '58.80', '49.00', '0.00', '0', '0', '1', '', '', '', 'images/201509/thumb_img/90_thumb_G_1441056659073.jpg', 'images/201509/goods_img/90_G_1441056659397.jpg', 'images/201509/source_img/90_G_1441056659816.jpg', '1', '', '1', '1', '0', '0', '1441056659', '100', '0', '0', '0', '1', '0', '0', '1441493400', '0', '', '-1', '-1', '0', '0', '0', '1', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('91', '121', 'ECS000091', '简约多功能双肩包', '+', '0', '0', '0', '', '10000', '0.000', '118.80', '99.00', '0.00', '0', '0', '1', '', '', '', 'images/201509/thumb_img/91_thumb_G_1441056702928.jpg', 'images/201509/goods_img/91_G_1441056702794.jpg', 'images/201509/source_img/91_G_1441056702721.jpg', '1', '', '1', '1', '0', '0', '1441056702', '100', '0', '0', '0', '1', '0', '0', '1441493400', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('92', '122', 'ECS000092', '小米鼠标垫', '+', '1', '0', '0', '', '10000', '0.000', '5.88', '4.90', '0.00', '0', '0', '1', '', '', '', 'images/201509/thumb_img/92_thumb_G_1441056728120.jpg', 'images/201509/goods_img/92_G_1441056728244.jpg', 'images/201509/source_img/92_G_1441056728619.jpg', '1', '', '1', '1', '0', '0', '1441056728', '100', '0', '0', '0', '1', '0', '0', '1441493399', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('93', '123', 'ECS000093', '小米百变随身杯', '+', '3', '0', '0', '', '10000', '0.000', '46.80', '39.00', '0.00', '0', '0', '1', '', '', '', 'images/201509/thumb_img/93_thumb_G_1441056767939.jpg', 'images/201509/goods_img/93_G_1441056767774.jpg', 'images/201509/source_img/93_G_1441056767621.jpg', '1', '', '1', '1', '0', '0', '1441056767', '100', '0', '0', '0', '1', '0', '0', '1441493398', '0', '', '-1', '-1', '0', '0', '0', '1', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('94', '130', 'ECS000094', '猫的秘密', '+', '7', '0', '0', '', '10000', '0.000', '238.79', '199.00', '0.00', '0', '0', '1', '', '', '', 'images/201509/thumb_img/94_thumb_G_1441056891849.jpg', 'images/201509/goods_img/94_G_1441056891405.jpg', 'images/201509/source_img/94_G_1441056891886.jpg', '1', '', '1', '1', '0', '1', '1441056891', '1', '0', '0', '0', '1', '0', '0', '1441759636', '0', '', '-1', '-1', '0', '0', '0', '1', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('95', '105', 'ECS000095', '先锋SE-MJ512折叠式头戴耳机', '+', '0', '0', '0', '', '10000', '0.000', '201.60', '168.00', '0.00', '0', '0', '1', '', '', '', 'images/201509/thumb_img/95_thumb_G_1441738494824.jpg', 'images/201509/goods_img/95_G_1441738494127.jpg', 'images/201509/source_img/95_G_1441738494837.png', '1', '', '1', '1', '0', '1', '1441738494', '100', '0', '0', '0', '0', '0', '0', '1441738494', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('96', '104', 'ECS000096', 'QCY派Q8蓝牙耳机', '+', '0', '0', '0', '', '10000', '0.000', '71.88', '59.90', '0.00', '0', '0', '1', '', '', '', 'images/201509/thumb_img/96_thumb_G_1441738537157.jpg', 'images/201509/goods_img/96_G_1441738537224.jpg', 'images/201509/source_img/96_G_1441738537599.png', '1', '', '1', '1', '0', '0', '1441738537', '100', '0', '0', '0', '0', '0', '0', '1441738537', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('97', '105', 'ECS000097', '先锋CL31系列入耳式耳机', '+', '0', '0', '0', '', '10000', '0.000', '118.80', '99.00', '0.00', '0', '0', '1', '', '', '', 'images/201509/thumb_img/97_thumb_G_1441738581513.jpg', 'images/201509/goods_img/97_G_1441738581436.jpg', 'images/201509/source_img/97_G_1441738581597.png', '1', '', '1', '1', '0', '0', '1441738581', '100', '0', '0', '0', '0', '0', '0', '1441738581', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('98', '105', 'ECS000098', '铁三角J100耳机', '+', '0', '0', '0', '', '10000', '0.000', '94.80', '79.00', '0.00', '0', '0', '1', '', '', '', 'images/201509/thumb_img/98_thumb_G_1441738620606.jpg', 'images/201509/goods_img/98_G_1441738620612.jpg', 'images/201509/source_img/98_G_1441738620612.png', '1', '', '1', '1', '0', '0', '1441738620', '100', '0', '1', '0', '0', '0', '0', '1441754973', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('99', '105', 'ECS000099', '捷波朗EASY–CALL蓝牙耳机', '+', '0', '0', '0', '', '10000', '0.000', '214.79', '179.00', '0.00', '0', '0', '1', '', '', '', 'images/201509/thumb_img/99_thumb_G_1441738667754.jpg', 'images/201509/goods_img/99_G_1441738667970.jpg', 'images/201509/source_img/99_G_1441738667868.png', '1', '', '1', '1', '0', '1', '1441738667', '100', '0', '0', '0', '0', '0', '0', '1441738667', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('100', '105', 'ECS000100', '铁三角CLR100耳机', '+', '1', '0', '0', '', '10000', '0.000', '213.60', '178.00', '0.00', '0', '0', '1', '', '', '', 'images/201509/thumb_img/100_thumb_G_1441738698084.jpg', 'images/201509/goods_img/100_G_1441738698092.jpg', 'images/201509/source_img/100_G_1441738698062.png', '1', '', '1', '1', '0', '1', '1441738698', '100', '0', '0', '0', '0', '0', '0', '1441738698', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('101', '105', 'ECS000101', '中锘基B97S运动蓝牙耳机', '+', '0', '0', '0', '', '10000', '0.000', '142.79', '119.00', '0.00', '0', '0', '1', '', '', '', 'images/201509/thumb_img/101_thumb_G_1441738730692.jpg', 'images/201509/goods_img/101_G_1441738730248.jpg', 'images/201509/source_img/101_G_1441738730067.png', '1', '', '1', '1', '0', '1', '1441738730', '100', '0', '0', '0', '1', '0', '0', '1441758533', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('102', '105', 'ECS000102', 'QCY 杰克J02蓝牙耳机', '+', '2', '0', '0', '', '10000', '0.000', '116.28', '96.90', '0.00', '0', '0', '1', '', '', '', 'images/201509/thumb_img/102_thumb_G_1441738765271.jpg', 'images/201509/goods_img/102_G_1441738765970.jpg', 'images/201509/source_img/102_G_1441738765409.png', '1', '', '1', '1', '0', '0', '1441738765', '100', '0', '0', '0', '1', '0', '0', '1441758532', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('103', '105', 'ECS000103', '好站长社区铁三角COR150入耳式耳机', '+', '0', '0', '0', '', '10000', '0.000', '166.79', '139.00', '0.00', '0', '0', '1', '', '', '', 'images/201509/thumb_img/103_thumb_G_1441738795942.jpg', 'images/201509/goods_img/103_G_1441738795866.jpg', 'images/201509/source_img/103_G_1441738794688.png', '1', '', '1', '1', '0', '1', '1441738794', '100', '0', '0', '0', '0', '0', '0', '1450401228', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0.00', '0.00', '', '', '0');
INSERT INTO `ecs_goods` VALUES ('104', '91', 'ECS000104', 'Yeelight床头灯', '+', '2', '0', '0', '', '10000', '0.000', '298.80', '249.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/104_thumb_G_1450022336692.jpg', 'images/201512/goods_img/104_G_1450022336726.jpg', 'images/201512/source_img/104_G_1450022336505.jpg', '1', '', '1', '1', '0', '2', '1441747447', '100', '0', '1', '0', '1', '0', '0', '1450022400', '0', '', '-1', '-1', '0', '0', '0', '0', '', '', '0.00', '0.00', '', '', '0');

-- ----------------------------
-- Table structure for `ecs_goods_activity`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_goods_activity`;
CREATE TABLE `ecs_goods_activity` (
  `act_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `act_name` varchar(255) NOT NULL,
  `act_desc` text NOT NULL,
  `act_type` tinyint(3) unsigned NOT NULL,
  `goods_id` mediumint(8) unsigned NOT NULL,
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_name` varchar(255) NOT NULL,
  `start_time` int(10) unsigned NOT NULL,
  `end_time` int(10) unsigned NOT NULL,
  `is_finished` tinyint(3) unsigned NOT NULL,
  `ext_info` text NOT NULL,
  `touch_img` varchar(50) DEFAULT '',
  PRIMARY KEY (`act_id`),
  KEY `act_name` (`act_name`,`act_type`,`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_goods_activity
-- ----------------------------
INSERT INTO `ecs_goods_activity` VALUES ('23', '小米活塞耳机 炫彩版', '', '1', '38', '0', '小米活塞耳机 炫彩版', '1442131200', '1568361600', '0', 'a:4:{s:12:\"price_ladder\";a:1:{i:0;a:2:{s:6:\"amount\";i:10;s:5:\"price\";d:200;}}s:15:\"restrict_amount\";i:2000;s:13:\"gift_integral\";i:0;s:7:\"deposit\";d:0;}', '');
INSERT INTO `ecs_goods_activity` VALUES ('12', '小米电视2 40英寸', '', '1', '27', '0', '小米电视2 40英寸', '1439798400', '1472371200', '0', 'a:4:{s:12:\"price_ladder\";a:1:{i:0;a:2:{s:6:\"amount\";i:12;s:5:\"price\";d:10;}}s:15:\"restrict_amount\";i:0;s:13:\"gift_integral\";i:0;s:7:\"deposit\";d:0;}', '');
INSERT INTO `ecs_goods_activity` VALUES ('19', '小米手机-夺宝奇兵-耳机', '耳机限量夺宝', '0', '62', '0', '1MORE金澈耳机', '1441479840', '1442372640', '0', 'a:4:{s:11:\"start_price\";s:4:\"1.00\";s:9:\"end_price\";s:6:\"800.00\";s:9:\"max_price\";i:0;s:11:\"cost_points\";s:1:\"1\";}', '');
INSERT INTO `ecs_goods_activity` VALUES ('20', '猫的秘密', '', '1', '94', '0', '猫的秘密', '1441526400', '1505376000', '0', 'a:4:{s:12:\"price_ladder\";a:1:{i:0;a:2:{s:6:\"amount\";i:1000;s:5:\"price\";d:10;}}s:15:\"restrict_amount\";i:0;s:13:\"gift_integral\";i:0;s:7:\"deposit\";d:0;}', '');
INSERT INTO `ecs_goods_activity` VALUES ('18', '拍卖小米手机4', '限时拍卖，价高者得', '2', '56', '0', '小米手机4', '1441440000', '1441872000', '0', 'a:5:{s:7:\"deposit\";d:100;s:11:\"start_price\";d:1;s:9:\"end_price\";d:2000;s:9:\"amplitude\";d:10;s:6:\"no_top\";i:0;}', '');
INSERT INTO `ecs_goods_activity` VALUES ('21', '萨摩小狗移动电源', '', '1', '74', '0', '萨摩小狗移动电源', '1441612800', '1537862400', '0', 'a:4:{s:12:\"price_ladder\";a:1:{i:0;a:2:{s:6:\"amount\";i:18;s:5:\"price\";d:10;}}s:15:\"restrict_amount\";i:0;s:13:\"gift_integral\";i:0;s:7:\"deposit\";d:0;}', '');
INSERT INTO `ecs_goods_activity` VALUES ('13', '小钢炮蓝牙音箱', '', '1', '46', '0', '小钢炮蓝牙音箱', '1439280000', '1470816000', '0', 'a:4:{s:12:\"price_ladder\";a:1:{i:0;a:2:{s:6:\"amount\";i:11;s:5:\"price\";d:22;}}s:15:\"restrict_amount\";i:0;s:13:\"gift_integral\";i:0;s:7:\"deposit\";d:0;}', '');
INSERT INTO `ecs_goods_activity` VALUES ('14', '小米活塞耳机标准版', '', '1', '45', '0', '小米活塞耳机标准版', '1440403200', '1471334400', '0', 'a:4:{s:12:\"price_ladder\";a:1:{i:0;a:2:{s:6:\"amount\";i:11;s:5:\"price\";d:22;}}s:15:\"restrict_amount\";i:0;s:13:\"gift_integral\";i:0;s:7:\"deposit\";d:0;}', '');
INSERT INTO `ecs_goods_activity` VALUES ('15', '小米盒子增强版 1G', '', '1', '29', '0', '小米盒子增强版 1G', '1439107200', '1503907200', '0', 'a:4:{s:12:\"price_ladder\";a:1:{i:0;a:2:{s:6:\"amount\";i:3;s:5:\"price\";d:113;}}s:15:\"restrict_amount\";i:0;s:13:\"gift_integral\";i:0;s:7:\"deposit\";d:0;}', '');
INSERT INTO `ecs_goods_activity` VALUES ('16', '米兔手机U盘升级版', '', '1', '47', '0', '米兔手机U盘升级版', '1439884800', '1503907200', '0', 'a:4:{s:12:\"price_ladder\";a:1:{i:0;a:2:{s:6:\"amount\";i:13;s:5:\"price\";d:444;}}s:15:\"restrict_amount\";i:0;s:13:\"gift_integral\";i:0;s:7:\"deposit\";d:0;}', '');
INSERT INTO `ecs_goods_activity` VALUES ('17', '小米头戴式耳机', '小米头戴式耳机疯狂大甩卖', '1', '30', '0', '小米头戴式耳机', '1439193600', '1503907200', '0', 'a:4:{s:12:\"price_ladder\";a:3:{i:0;a:2:{s:6:\"amount\";i:10;s:5:\"price\";d:400;}i:1;a:2:{s:6:\"amount\";i:50;s:5:\"price\";d:300;}i:2;a:2:{s:6:\"amount\";i:150;s:5:\"price\";d:200;}}s:15:\"restrict_amount\";i:500;s:13:\"gift_integral\";i:0;s:7:\"deposit\";d:0;}', '');
INSERT INTO `ecs_goods_activity` VALUES ('22', '米兔主题3D保护壳', '', '1', '88', '0', '米兔主题3D保护壳', '1441526400', '1505030400', '0', 'a:4:{s:12:\"price_ladder\";a:1:{i:0;a:2:{s:6:\"amount\";i:50;s:5:\"price\";d:2;}}s:15:\"restrict_amount\";i:0;s:13:\"gift_integral\";i:0;s:7:\"deposit\";d:0;}', '');

-- ----------------------------
-- Table structure for `ecs_goods_article`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_goods_article`;
CREATE TABLE `ecs_goods_article` (
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `article_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `admin_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`goods_id`,`article_id`,`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_goods_article
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_goods_attr`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_goods_attr`;
CREATE TABLE `ecs_goods_attr` (
  `goods_attr_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `attr_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attr_value` text NOT NULL,
  `attr_price` varchar(255) NOT NULL DEFAULT '',
  `img_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`goods_attr_id`),
  KEY `goods_id` (`goods_id`),
  KEY `attr_id` (`attr_id`)
) ENGINE=MyISAM AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_goods_attr
-- ----------------------------
INSERT INTO `ecs_goods_attr` VALUES ('36', '28', '11', '灰', '', '35');
INSERT INTO `ecs_goods_attr` VALUES ('35', '28', '10', '45', '', '0');
INSERT INTO `ecs_goods_attr` VALUES ('34', '29', '11', '黑', '', '36');
INSERT INTO `ecs_goods_attr` VALUES ('33', '29', '10', '15', '', '0');
INSERT INTO `ecs_goods_attr` VALUES ('37', '27', '10', '45', '', '0');
INSERT INTO `ecs_goods_attr` VALUES ('38', '27', '11', '黄', '100', '34');
INSERT INTO `ecs_goods_attr` VALUES ('91', '38', '12', '樱花粉', '30', '121');
INSERT INTO `ecs_goods_attr` VALUES ('90', '38', '12', '冰川蓝', '20', '120');
INSERT INTO `ecs_goods_attr` VALUES ('66', '53', '10', '45', '', '0');
INSERT INTO `ecs_goods_attr` VALUES ('67', '53', '11', '黑', '', '55');
INSERT INTO `ecs_goods_attr` VALUES ('68', '54', '10', '58', '', '0');
INSERT INTO `ecs_goods_attr` VALUES ('69', '54', '11', '黄', '', '56');
INSERT INTO `ecs_goods_attr` VALUES ('70', '55', '10', '15', '', '0');
INSERT INTO `ecs_goods_attr` VALUES ('71', '55', '11', '蓝', '', '57');
INSERT INTO `ecs_goods_attr` VALUES ('72', '55', '11', '黄', '', '103');
INSERT INTO `ecs_goods_attr` VALUES ('73', '55', '11', '黑', '', '104');
INSERT INTO `ecs_goods_attr` VALUES ('74', '55', '11', '白', '', '106');
INSERT INTO `ecs_goods_attr` VALUES ('89', '38', '12', '丁香紫', '10', '122');
INSERT INTO `ecs_goods_attr` VALUES ('82', '27', '11', '红', '300', '58');
INSERT INTO `ecs_goods_attr` VALUES ('81', '27', '11', '黑白', '200', '60');
INSERT INTO `ecs_goods_attr` VALUES ('83', '27', '11', '灰', '400', '59');
INSERT INTO `ecs_goods_attr` VALUES ('92', '38', '13', '50cm', '100', '0');

-- ----------------------------
-- Table structure for `ecs_goods_cat`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_goods_cat`;
CREATE TABLE `ecs_goods_cat` (
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `cat_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`goods_id`,`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_goods_cat
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_goods_gallery`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_goods_gallery`;
CREATE TABLE `ecs_goods_gallery` (
  `img_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `img_url` varchar(255) NOT NULL DEFAULT '',
  `img_desc` varchar(255) NOT NULL DEFAULT '',
  `thumb_url` varchar(255) NOT NULL DEFAULT '',
  `img_original` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`img_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=124 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_goods_gallery
-- ----------------------------
INSERT INTO `ecs_goods_gallery` VALUES ('53', '46', 'images/201507/goods_img/46_P_1437092278066.jpg', '', 'images/201507/thumb_img/46_thumb_P_1437092278473.jpg', 'images/201507/source_img/46_P_1437092278010.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('38', '31', 'images/201507/goods_img/31_P_1437075539094.jpg', '', 'images/201507/thumb_img/31_thumb_P_1437075539421.jpg', 'images/201507/source_img/31_P_1437075539906.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('39', '32', 'images/201507/goods_img/32_P_1437075765944.jpg', '', 'images/201507/thumb_img/32_thumb_P_1437075765465.jpg', 'images/201507/source_img/32_P_1437075765079.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('40', '33', 'images/201507/goods_img/33_P_1437075865227.jpg', '', 'images/201507/thumb_img/33_thumb_P_1437075865237.jpg', 'images/201507/source_img/33_P_1437075865884.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('41', '34', 'images/201507/goods_img/34_P_1437076036621.jpg', '', 'images/201507/thumb_img/34_thumb_P_1437076036805.jpg', 'images/201507/source_img/34_P_1437076036376.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('42', '35', 'images/201507/goods_img/35_P_1437081702366.jpg', '', 'images/201507/thumb_img/35_thumb_P_1437081702651.jpg', 'images/201507/source_img/35_P_1437081702899.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('43', '36', 'images/201507/goods_img/36_P_1437082145143.jpg', '', 'images/201507/thumb_img/36_thumb_P_1437082145850.jpg', 'images/201507/source_img/36_P_1437082145148.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('44', '37', 'images/201507/goods_img/37_P_1437082214509.jpg', '', 'images/201507/thumb_img/37_thumb_P_1437082214988.jpg', 'images/201507/source_img/37_P_1437082214538.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('45', '38', 'images/201507/goods_img/38_P_1437082667902.jpg', '', 'images/201507/thumb_img/38_thumb_P_1437082667724.jpg', 'images/201507/source_img/38_P_1437082667957.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('46', '39', 'images/201507/goods_img/39_P_1437082747827.jpg', '', 'images/201507/thumb_img/39_thumb_P_1437082747037.jpg', 'images/201507/source_img/39_P_1437082747506.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('47', '40', 'images/201507/goods_img/40_P_1437082798936.jpg', '', 'images/201507/thumb_img/40_thumb_P_1437082798602.jpg', 'images/201507/source_img/40_P_1437082798751.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('48', '41', 'images/201507/goods_img/41_P_1437082849358.jpg', '', 'images/201507/thumb_img/41_thumb_P_1437082849448.jpg', 'images/201507/source_img/41_P_1437082849433.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('49', '42', 'images/201507/goods_img/42_P_1437082936955.jpg', '', 'images/201507/thumb_img/42_thumb_P_1437082936854.jpg', 'images/201507/source_img/42_P_1437082936981.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('50', '43', 'images/201507/goods_img/43_P_1437091900195.jpg', '', 'images/201507/thumb_img/43_thumb_P_1437091900030.jpg', 'images/201507/source_img/43_P_1437091900687.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('51', '44', 'images/201507/goods_img/44_P_1437092148904.jpg', '', 'images/201507/thumb_img/44_thumb_P_1437092148467.jpg', 'images/201507/source_img/44_P_1437092148962.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('52', '45', 'images/201507/goods_img/45_P_1437092199657.jpg', '', 'images/201507/thumb_img/45_thumb_P_1437092199896.jpg', 'images/201507/source_img/45_P_1437092199809.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('37', '30', 'images/201507/goods_img/30_P_1437075007961.jpg', '', 'images/201507/thumb_img/30_thumb_P_1437075007298.jpg', 'images/201507/source_img/30_P_1437075007281.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('36', '29', 'images/201507/goods_img/29_P_1437074933206.jpg', '', 'images/201507/thumb_img/29_thumb_P_1437074933782.jpg', 'images/201507/source_img/29_P_1437074933560.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('35', '28', 'images/201507/goods_img/28_P_1437074792937.jpg', '', 'images/201507/thumb_img/28_thumb_P_1437074792079.jpg', 'images/201507/source_img/28_P_1437074792599.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('34', '27', 'images/201507/goods_img/27_P_1437074702951.jpg', '', 'images/201507/thumb_img/27_thumb_P_1437074702931.jpg', 'images/201507/source_img/27_P_1437074702620.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('33', '27', 'images/201507/goods_img/27_P_1437074010553.jpg', '', 'images/201507/thumb_img/27_thumb_P_1437074010140.jpg', 'images/201507/source_img/27_P_1437074010780.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('54', '47', 'images/201508/goods_img/47_P_1439331077456.jpg', '', 'images/201508/thumb_img/47_thumb_P_1439331077895.jpg', 'images/201508/source_img/47_P_1439331077302.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('55', '53', 'images/201508/goods_img/53_P_1439511514491.jpg', '', 'images/201508/thumb_img/53_thumb_P_1439511514984.jpg', 'images/201508/source_img/53_P_1439511514441.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('56', '54', 'images/201508/goods_img/54_P_1439511600464.jpg', '', 'images/201508/thumb_img/54_thumb_P_1439511600402.jpg', 'images/201508/source_img/54_P_1439511600835.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('57', '55', 'images/201508/goods_img/55_P_1439511725475.jpg', '', 'images/201508/thumb_img/55_thumb_P_1439511725800.jpg', 'images/201508/source_img/55_P_1439511725177.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('58', '27', 'images/201508/goods_img/27_P_1440636386428.jpg', '', 'images/201508/thumb_img/27_thumb_P_1440636386334.jpg', 'images/201508/source_img/27_P_1440636386348.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('59', '27', 'images/201508/goods_img/27_P_1440636396953.png', '', 'images/201508/thumb_img/27_thumb_P_1440636396876.jpg', 'images/201508/source_img/27_P_1440636396708.png');
INSERT INTO `ecs_goods_gallery` VALUES ('60', '27', 'images/201508/goods_img/27_P_1440636492199.jpg', '', 'images/201508/thumb_img/27_thumb_P_1440636492790.jpg', 'images/201508/source_img/27_P_1440636492732.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('110', '95', 'images/201509/goods_img/95_P_1441738495691.png', '', 'images/201509/thumb_img/95_thumb_P_1441738495450.jpg', 'images/201509/source_img/95_P_1441738495871.png');
INSERT INTO `ecs_goods_gallery` VALUES ('62', '56', 'images/201508/goods_img/56_P_1440717641995.png', '', 'images/201508/thumb_img/56_thumb_P_1440717641728.jpg', 'images/201508/source_img/56_P_1440717641227.png');
INSERT INTO `ecs_goods_gallery` VALUES ('63', '57', 'images/201508/goods_img/57_P_1440717888340.jpg', '', 'images/201508/thumb_img/57_thumb_P_1440717888922.jpg', 'images/201508/source_img/57_P_1440717888289.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('64', '58', 'images/201508/goods_img/58_P_1440725448086.jpg', '', 'images/201508/thumb_img/58_thumb_P_1440725448884.jpg', 'images/201508/source_img/58_P_1440725448044.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('65', '59', 'images/201508/goods_img/59_P_1440983020331.jpg', '', 'images/201508/thumb_img/59_thumb_P_1440983020113.jpg', 'images/201508/source_img/59_P_1440983020449.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('66', '61', 'images/201508/goods_img/61_P_1440983075194.jpg', '', 'images/201508/thumb_img/61_thumb_P_1440983075257.jpg', 'images/201508/source_img/61_P_1440983075683.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('67', '60', 'images/201508/goods_img/60_P_1440983103335.jpg', '', 'images/201508/thumb_img/60_thumb_P_1440983103759.jpg', 'images/201508/source_img/60_P_1440983103825.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('68', '62', 'images/201508/goods_img/62_P_1440983163360.jpg', '', 'images/201508/thumb_img/62_thumb_P_1440983163430.jpg', 'images/201508/source_img/62_P_1440983163883.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('69', '63', 'images/201508/goods_img/63_P_1440983188388.jpg', '', 'images/201508/thumb_img/63_thumb_P_1440983188630.jpg', 'images/201508/source_img/63_P_1440983188664.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('70', '64', 'images/201508/goods_img/64_P_1440983246654.jpg', '', 'images/201508/thumb_img/64_thumb_P_1440983246436.jpg', 'images/201508/source_img/64_P_1440983246818.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('71', '65', 'images/201508/goods_img/65_P_1440983430245.png', '', 'images/201508/thumb_img/65_thumb_P_1440983430750.jpg', 'images/201508/source_img/65_P_1440983430130.png');
INSERT INTO `ecs_goods_gallery` VALUES ('72', '66', 'images/201508/goods_img/66_P_1440983490499.png', '', 'images/201508/thumb_img/66_thumb_P_1440983490179.jpg', 'images/201508/source_img/66_P_1440983490681.png');
INSERT INTO `ecs_goods_gallery` VALUES ('73', '67', 'images/201508/goods_img/67_P_1440983638515.png', '', 'images/201508/thumb_img/67_thumb_P_1440983638347.jpg', 'images/201508/source_img/67_P_1440983638706.png');
INSERT INTO `ecs_goods_gallery` VALUES ('74', '68', 'images/201508/goods_img/68_P_1440983695525.jpg', '', 'images/201508/thumb_img/68_thumb_P_1440983695392.jpg', 'images/201508/source_img/68_P_1440983695874.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('75', '69', 'images/201508/goods_img/69_P_1440983751707.jpg', '', 'images/201508/thumb_img/69_thumb_P_1440983751247.jpg', 'images/201508/source_img/69_P_1440983751360.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('76', '69', 'images/201508/goods_img/69_P_1440983751268.jpg', '', 'images/201508/thumb_img/69_thumb_P_1440983751851.jpg', 'images/201508/source_img/69_P_1440983751038.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('77', '69', 'images/201508/goods_img/69_P_1440983751855.jpg', '', 'images/201508/thumb_img/69_thumb_P_1440983751517.jpg', 'images/201508/source_img/69_P_1440983751470.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('78', '70', 'images/201508/goods_img/70_P_1440983810457.jpg', '', 'images/201508/thumb_img/70_thumb_P_1440983810977.jpg', 'images/201508/source_img/70_P_1440983810155.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('79', '71', 'images/201508/goods_img/71_P_1440983839013.jpg', '', 'images/201508/thumb_img/71_thumb_P_1440983839171.jpg', 'images/201508/source_img/71_P_1440983839575.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('80', '72', 'images/201508/goods_img/72_P_1440983887937.jpg', '', 'images/201508/thumb_img/72_thumb_P_1440983887273.jpg', 'images/201508/source_img/72_P_1440983887487.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('81', '73', 'images/201508/goods_img/73_P_1440983937493.jpg', '', 'images/201508/thumb_img/73_thumb_P_1440983937145.jpg', 'images/201508/source_img/73_P_1440983937958.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('82', '74', 'images/201508/goods_img/74_P_1440983959915.jpg', '', 'images/201508/thumb_img/74_thumb_P_1440983959089.jpg', 'images/201508/source_img/74_P_1440983959660.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('83', '75', 'images/201508/goods_img/75_P_1440984011204.jpg', '', 'images/201508/thumb_img/75_thumb_P_1440984011032.jpg', 'images/201508/source_img/75_P_1440984011552.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('84', '76', 'images/201508/goods_img/76_P_1440984280952.png', '', 'images/201508/thumb_img/76_thumb_P_1440984280227.jpg', 'images/201508/source_img/76_P_1440984280400.png');
INSERT INTO `ecs_goods_gallery` VALUES ('85', '77', 'images/201508/goods_img/77_P_1440984390419.png', '', 'images/201508/thumb_img/77_thumb_P_1440984390019.jpg', 'images/201508/source_img/77_P_1440984390701.png');
INSERT INTO `ecs_goods_gallery` VALUES ('86', '78', 'images/201509/goods_img/78_P_1441050387993.png', '', 'images/201509/thumb_img/78_thumb_P_1441050387910.jpg', 'images/201509/source_img/78_P_1441050387023.png');
INSERT INTO `ecs_goods_gallery` VALUES ('87', '79', 'images/201509/goods_img/79_P_1441050485571.png', '', 'images/201509/thumb_img/79_thumb_P_1441050485861.jpg', 'images/201509/source_img/79_P_1441050485884.png');
INSERT INTO `ecs_goods_gallery` VALUES ('88', '80', 'images/201509/goods_img/80_P_1441050558370.png', '', 'images/201509/thumb_img/80_thumb_P_1441050558679.jpg', 'images/201509/source_img/80_P_1441050558797.png');
INSERT INTO `ecs_goods_gallery` VALUES ('89', '81', 'images/201509/goods_img/81_P_1441050609354.png', '', 'images/201509/thumb_img/81_thumb_P_1441050609396.jpg', 'images/201509/source_img/81_P_1441050609935.png');
INSERT INTO `ecs_goods_gallery` VALUES ('90', '82', 'images/201509/goods_img/82_P_1441050801811.jpg', '', 'images/201509/thumb_img/82_thumb_P_1441050801396.jpg', 'images/201509/source_img/82_P_1441050801454.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('91', '83', 'images/201509/goods_img/83_P_1441052403904.png', '', 'images/201509/thumb_img/83_thumb_P_1441052403926.jpg', 'images/201509/source_img/83_P_1441052403124.png');
INSERT INTO `ecs_goods_gallery` VALUES ('92', '84', 'images/201509/goods_img/84_P_1441056023451.jpg', '', 'images/201509/thumb_img/84_thumb_P_1441056023162.jpg', 'images/201509/source_img/84_P_1441056023607.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('93', '85', 'images/201509/goods_img/85_P_1441056112035.jpg', '', 'images/201509/thumb_img/85_thumb_P_1441056112906.jpg', 'images/201509/source_img/85_P_1441056112504.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('94', '86', 'images/201509/goods_img/86_P_1441056239799.jpg', '', 'images/201509/thumb_img/86_thumb_P_1441056239192.jpg', 'images/201509/source_img/86_P_1441056239437.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('95', '87', 'images/201509/goods_img/87_P_1441056303446.jpg', '', 'images/201509/thumb_img/87_thumb_P_1441056303989.jpg', 'images/201509/source_img/87_P_1441056303788.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('96', '88', 'images/201509/goods_img/88_P_1441056484153.jpg', '', 'images/201509/thumb_img/88_thumb_P_1441056484641.jpg', 'images/201509/source_img/88_P_1441056484525.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('97', '89', 'images/201509/goods_img/89_P_1441056597776.jpg', '', 'images/201509/thumb_img/89_thumb_P_1441056597458.jpg', 'images/201509/source_img/89_P_1441056597511.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('98', '90', 'images/201509/goods_img/90_P_1441056659643.jpg', '', 'images/201509/thumb_img/90_thumb_P_1441056659969.jpg', 'images/201509/source_img/90_P_1441056659528.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('99', '91', 'images/201509/goods_img/91_P_1441056702062.jpg', '', 'images/201509/thumb_img/91_thumb_P_1441056702481.jpg', 'images/201509/source_img/91_P_1441056702311.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('100', '92', 'images/201509/goods_img/92_P_1441056728536.jpg', '', 'images/201509/thumb_img/92_thumb_P_1441056728093.jpg', 'images/201509/source_img/92_P_1441056728693.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('101', '93', 'images/201509/goods_img/93_P_1441056767053.jpg', '', 'images/201509/thumb_img/93_thumb_P_1441056767377.jpg', 'images/201509/source_img/93_P_1441056767969.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('102', '94', 'images/201509/goods_img/94_P_1441056891966.jpg', '', 'images/201509/thumb_img/94_thumb_P_1441056891641.jpg', 'images/201509/source_img/94_P_1441056891627.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('103', '55', 'images/201509/goods_img/55_P_1441498030235.jpg', '', 'images/201509/thumb_img/55_thumb_P_1441498030464.jpg', 'images/201509/source_img/55_P_1441498030729.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('104', '55', 'images/201509/goods_img/55_P_1441498030320.jpg', '', 'images/201509/thumb_img/55_thumb_P_1441498030567.jpg', 'images/201509/source_img/55_P_1441498030051.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('105', '55', 'images/201509/goods_img/55_P_1441498031944.jpg', '', 'images/201509/thumb_img/55_thumb_P_1441498031389.jpg', 'images/201509/source_img/55_P_1441498031853.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('106', '55', 'images/201509/goods_img/55_P_1441498031553.png', '', 'images/201509/thumb_img/55_thumb_P_1441498031661.jpg', 'images/201509/source_img/55_P_1441498031036.png');
INSERT INTO `ecs_goods_gallery` VALUES ('107', '30', 'images/201509/goods_img/30_P_1441661907785.png', '', 'images/201509/thumb_img/30_thumb_P_1441661907216.jpg', 'images/201509/source_img/30_P_1441661907596.png');
INSERT INTO `ecs_goods_gallery` VALUES ('108', '30', 'images/201509/goods_img/30_P_1441661907757.png', '', 'images/201509/thumb_img/30_thumb_P_1441661907011.jpg', 'images/201509/source_img/30_P_1441661907757.png');
INSERT INTO `ecs_goods_gallery` VALUES ('109', '30', 'images/201509/goods_img/30_P_1441661908217.png', '', 'images/201509/thumb_img/30_thumb_P_1441661908459.jpg', 'images/201509/source_img/30_P_1441661908909.png');
INSERT INTO `ecs_goods_gallery` VALUES ('111', '96', 'images/201509/goods_img/96_P_1441738537411.png', '', 'images/201509/thumb_img/96_thumb_P_1441738537288.jpg', 'images/201509/source_img/96_P_1441738537805.png');
INSERT INTO `ecs_goods_gallery` VALUES ('112', '97', 'images/201509/goods_img/97_P_1441738581693.png', '', 'images/201509/thumb_img/97_thumb_P_1441738581210.jpg', 'images/201509/source_img/97_P_1441738581386.png');
INSERT INTO `ecs_goods_gallery` VALUES ('113', '98', 'images/201509/goods_img/98_P_1441738620481.png', '', 'images/201509/thumb_img/98_thumb_P_1441738620390.jpg', 'images/201509/source_img/98_P_1441738620047.png');
INSERT INTO `ecs_goods_gallery` VALUES ('114', '99', 'images/201509/goods_img/99_P_1441738667644.png', '', 'images/201509/thumb_img/99_thumb_P_1441738667068.jpg', 'images/201509/source_img/99_P_1441738667880.png');
INSERT INTO `ecs_goods_gallery` VALUES ('115', '100', 'images/201509/goods_img/100_P_1441738698187.png', '', 'images/201509/thumb_img/100_thumb_P_1441738698771.jpg', 'images/201509/source_img/100_P_1441738698582.png');
INSERT INTO `ecs_goods_gallery` VALUES ('116', '101', 'images/201509/goods_img/101_P_1441738730510.png', '', 'images/201509/thumb_img/101_thumb_P_1441738730487.jpg', 'images/201509/source_img/101_P_1441738730994.png');
INSERT INTO `ecs_goods_gallery` VALUES ('117', '102', 'images/201509/goods_img/102_P_1441738765274.png', '', 'images/201509/thumb_img/102_thumb_P_1441738765170.jpg', 'images/201509/source_img/102_P_1441738765702.png');
INSERT INTO `ecs_goods_gallery` VALUES ('118', '103', 'images/201509/goods_img/103_P_1441738795859.png', '', 'images/201509/thumb_img/103_thumb_P_1441738795088.jpg', 'images/201509/source_img/103_P_1441738795138.png');
INSERT INTO `ecs_goods_gallery` VALUES ('119', '104', 'images/201509/goods_img/104_P_1441747447909.png', '', 'images/201509/thumb_img/104_thumb_P_1441747447681.jpg', 'images/201509/source_img/104_P_1441747447303.png');
INSERT INTO `ecs_goods_gallery` VALUES ('120', '38', 'images/201509/goods_img/38_P_1442179091821.png', '', 'images/201509/thumb_img/38_thumb_P_1442179091550.jpg', 'images/201509/source_img/38_P_1442179091563.png');
INSERT INTO `ecs_goods_gallery` VALUES ('121', '38', 'images/201509/goods_img/38_P_1442179091715.png', '', 'images/201509/thumb_img/38_thumb_P_1442179091581.jpg', 'images/201509/source_img/38_P_1442179091565.png');
INSERT INTO `ecs_goods_gallery` VALUES ('122', '38', 'images/201509/goods_img/38_P_1442179091449.png', '', 'images/201509/thumb_img/38_thumb_P_1442179091766.jpg', 'images/201509/source_img/38_P_1442179091088.png');

-- ----------------------------
-- Table structure for `ecs_goods_type`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_goods_type`;
CREATE TABLE `ecs_goods_type` (
  `cat_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(60) NOT NULL DEFAULT '',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `attr_group` varchar(255) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_goods_type
-- ----------------------------
INSERT INTO `ecs_goods_type` VALUES ('3', '电视和平板', '1', '');
INSERT INTO `ecs_goods_type` VALUES ('4', '耳机', '1', '');

-- ----------------------------
-- Table structure for `ecs_group_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_group_goods`;
CREATE TABLE `ecs_group_goods` (
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `admin_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `group_id` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '配件分组',
  PRIMARY KEY (`parent_id`,`goods_id`,`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_group_goods
-- ----------------------------
INSERT INTO `ecs_group_goods` VALUES ('38', '46', '129.00', '1', '1');
INSERT INTO `ecs_group_goods` VALUES ('38', '45', '89.00', '1', '1');
INSERT INTO `ecs_group_goods` VALUES ('38', '30', '499.00', '1', '1');
INSERT INTO `ecs_group_goods` VALUES ('38', '47', '49.90', '1', '1');
INSERT INTO `ecs_group_goods` VALUES ('27', '75', '15.90', '1', '1');
INSERT INTO `ecs_group_goods` VALUES ('27', '32', '120.00', '1', '2');
INSERT INTO `ecs_group_goods` VALUES ('27', '67', '50.00', '1', '2');
INSERT INTO `ecs_group_goods` VALUES ('27', '35', '799.00', '1', '2');
INSERT INTO `ecs_group_goods` VALUES ('27', '73', '200.00', '1', '1');
INSERT INTO `ecs_group_goods` VALUES ('27', '34', '299.00', '1', '2');
INSERT INTO `ecs_group_goods` VALUES ('27', '31', '60.00', '1', '1');
INSERT INTO `ecs_group_goods` VALUES ('27', '44', '40.00', '1', '1');
INSERT INTO `ecs_group_goods` VALUES ('27', '33', '119.00', '1', '3');
INSERT INTO `ecs_group_goods` VALUES ('27', '36', '129.00', '1', '3');
INSERT INTO `ecs_group_goods` VALUES ('27', '37', '49.00', '1', '3');

-- ----------------------------
-- Table structure for `ecs_keywords`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_keywords`;
CREATE TABLE `ecs_keywords` (
  `date` date NOT NULL DEFAULT '0000-00-00',
  `searchengine` varchar(20) NOT NULL DEFAULT '',
  `keyword` varchar(90) NOT NULL DEFAULT '',
  `count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`date`,`searchengine`,`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_keywords
-- ----------------------------
INSERT INTO `ecs_keywords` VALUES ('2009-04-21', 'ecshop', '诺基亚', '1');
INSERT INTO `ecs_keywords` VALUES ('2009-04-27', 'ecshop', '智能手机', '1');
INSERT INTO `ecs_keywords` VALUES ('2009-05-04', 'ecshop', '斤', '1');
INSERT INTO `ecs_keywords` VALUES ('2009-05-10', 'ecshop', '诺基亚', '1');
INSERT INTO `ecs_keywords` VALUES ('2009-05-11', 'ecshop', '智能手机', '1');
INSERT INTO `ecs_keywords` VALUES ('2009-05-11', 'ecshop', '诺基亚', '1');
INSERT INTO `ecs_keywords` VALUES ('2009-05-12', 'ecshop', '三星', '1');
INSERT INTO `ecs_keywords` VALUES ('2009-05-12', 'ecshop', '智能手机', '1');
INSERT INTO `ecs_keywords` VALUES ('2009-05-12', 'ecshop', 'p806', '1');
INSERT INTO `ecs_keywords` VALUES ('2009-05-12', 'ecshop', '诺基亚', '1');
INSERT INTO `ecs_keywords` VALUES ('2009-05-12', 'ecshop', '夏新', '1');
INSERT INTO `ecs_keywords` VALUES ('2009-05-18', 'ecshop', '52', '2');
INSERT INTO `ecs_keywords` VALUES ('2009-05-22', 'ecshop', 'p', '1');
INSERT INTO `ecs_keywords` VALUES ('2014-05-15', 'ecshop', '棉色织格子花边舒适女式长袖衬衫', '1');
INSERT INTO `ecs_keywords` VALUES ('2014-06-11', 'ecshop', '衣', '55');
INSERT INTO `ecs_keywords` VALUES ('2014-06-11', 'ecshop', '1', '26');
INSERT INTO `ecs_keywords` VALUES ('2014-06-12', 'ecshop', '1', '1');
INSERT INTO `ecs_keywords` VALUES ('2014-07-23', 'ecshop', '1', '1');
INSERT INTO `ecs_keywords` VALUES ('2014-07-23', 'ecshop', '天空', '1');
INSERT INTO `ecs_keywords` VALUES ('2014-08-07', 'ecshop', 'D48', '2');
INSERT INTO `ecs_keywords` VALUES ('2014-08-08', 'ecshop', 'D48', '1');
INSERT INTO `ecs_keywords` VALUES ('2014-08-09', 'ecshop', 'D48', '1');
INSERT INTO `ecs_keywords` VALUES ('2014-08-11', 'ecshop', '1', '40');
INSERT INTO `ecs_keywords` VALUES ('2014-08-11', 'ecshop', 'D48MF', '1');
INSERT INTO `ecs_keywords` VALUES ('2014-08-13', 'ecshop', '1', '3');
INSERT INTO `ecs_keywords` VALUES ('2014-08-13', 'ecshop', '的（Midea）', '1');
INSERT INTO `ecs_keywords` VALUES ('2014-08-13', 'ecshop', 'FS406C', '1');
INSERT INTO `ecs_keywords` VALUES ('2014-08-13', 'ecshop', '4L', '1');
INSERT INTO `ecs_keywords` VALUES ('2014-08-13', 'ecshop', '电脑版电饭煲', '1');
INSERT INTO `ecs_keywords` VALUES ('2014-08-13', 'ecshop', 'D48MF', '2');
INSERT INTO `ecs_keywords` VALUES ('2014-08-13', 'ecshop', '防晒隔离', '1');
INSERT INTO `ecs_keywords` VALUES ('2014-08-14', 'ecshop', '1', '6');
INSERT INTO `ecs_keywords` VALUES ('2014-08-15', 'ecshop', '1', '5');
INSERT INTO `ecs_keywords` VALUES ('2014-08-20', 'ecshop', 'D48MF', '1');
INSERT INTO `ecs_keywords` VALUES ('2014-08-21', 'ecshop', 'D48MF', '1');
INSERT INTO `ecs_keywords` VALUES ('2014-08-21', 'ecshop', '1', '1');
INSERT INTO `ecs_keywords` VALUES ('2014-09-01', 'ecshop', '48', '3');
INSERT INTO `ecs_keywords` VALUES ('2014-09-04', 'ecshop', 'D48', '1');
INSERT INTO `ecs_keywords` VALUES ('2014-09-04', 'ecshop', 'D48MF', '2');
INSERT INTO `ecs_keywords` VALUES ('2014-09-15', 'ecshop', 'M48DF', '1');
INSERT INTO `ecs_keywords` VALUES ('2014-09-15', 'ecshop', '48', '2');
INSERT INTO `ecs_keywords` VALUES ('2014-09-16', 'ecshop', '48', '1');
INSERT INTO `ecs_keywords` VALUES ('2014-09-29', 'ecshop', 'D48MF', '1');
INSERT INTO `ecs_keywords` VALUES ('2014-10-22', 'ecshop', '古井贡酒', '2');
INSERT INTO `ecs_keywords` VALUES ('2014-11-18', 'ecshop', '1', '1');
INSERT INTO `ecs_keywords` VALUES ('2014-11-18', 'ecshop', '箱', '1');
INSERT INTO `ecs_keywords` VALUES ('2014-11-20', 'ecshop', '1', '1');
INSERT INTO `ecs_keywords` VALUES ('2014-11-20', 'ecshop', 'all', '1');
INSERT INTO `ecs_keywords` VALUES ('2014-11-28', 'ecshop', '电视机', '1');
INSERT INTO `ecs_keywords` VALUES ('2014-12-03', 'ecshop', '1', '3');
INSERT INTO `ecs_keywords` VALUES ('2014-12-03', 'ecshop', '电视', '6');
INSERT INTO `ecs_keywords` VALUES ('2014-12-15', 'ecshop', '1', '1');
INSERT INTO `ecs_keywords` VALUES ('2014-12-25', 'ecshop', 'RMZONE婵真美菁红酒二件套装', '1');
INSERT INTO `ecs_keywords` VALUES ('2014-12-25', 'ecshop', 'CHARMZONE婵真美菁红酒二件套装', '2');
INSERT INTO `ecs_keywords` VALUES ('2014-12-25', 'ecshop', 'HARMZONE婵真美菁红酒二件套装', '1');
INSERT INTO `ecs_keywords` VALUES ('2014-12-26', 'ecshop', '粉', '2');
INSERT INTO `ecs_keywords` VALUES ('2014-12-26', 'ecshop', 'ONE婵真美菁红酒二件套装', '1');
INSERT INTO `ecs_keywords` VALUES ('2014-12-29', 'ecshop', '1', '3');
INSERT INTO `ecs_keywords` VALUES ('2014-12-29', 'ecshop', 'Kiehl\\\\\\\'s', '2');
INSERT INTO `ecs_keywords` VALUES ('2014-12-29', 'ecshop', '科颜氏（契尔氏）小黄瓜水植物精华化妆水250ml', '2');
INSERT INTO `ecs_keywords` VALUES ('2014-12-30', 'ecshop', '1', '37');
INSERT INTO `ecs_keywords` VALUES ('2014-12-30', 'ecshop', '面膜', '1');
INSERT INTO `ecs_keywords` VALUES ('2014-12-30', 'ecshop', '菲诗小铺', '1');
INSERT INTO `ecs_keywords` VALUES ('2014-12-30', 'ecshop', '爱丽小屋', '1');
INSERT INTO `ecs_keywords` VALUES ('2014-12-30', 'ecshop', 'CHARMZONE婵真美菁红酒二件套装', '5');
INSERT INTO `ecs_keywords` VALUES ('2014-12-31', 'ecshop', '1', '37');
INSERT INTO `ecs_keywords` VALUES ('2014-12-31', 'ecshop', '深深深', '4');
INSERT INTO `ecs_keywords` VALUES ('2014-12-31', 'ecshop', 'sss', '5');
INSERT INTO `ecs_keywords` VALUES ('2015-08-07', 'ecshop', '耳机', '1');
INSERT INTO `ecs_keywords` VALUES ('2015-08-07', 'ecshop', '小米手环', '1');
INSERT INTO `ecs_keywords` VALUES ('2015-08-11', 'ecshop', '小米手环', '2');
INSERT INTO `ecs_keywords` VALUES ('2015-08-12', 'ecshop', '小米手环', '1');
INSERT INTO `ecs_keywords` VALUES ('2015-08-12', 'ecshop', '耳机', '1');
INSERT INTO `ecs_keywords` VALUES ('2015-08-12', 'ecshop', 'xiao', '1');
INSERT INTO `ecs_keywords` VALUES ('2015-08-24', 'ecshop', '小米手环', '1');
INSERT INTO `ecs_keywords` VALUES ('2015-08-24', 'ecshop', '耳机', '1');
INSERT INTO `ecs_keywords` VALUES ('2015-08-27', 'ecshop', '1', '34');
INSERT INTO `ecs_keywords` VALUES ('2015-08-27', 'ecshop', 'dsad', '2');
INSERT INTO `ecs_keywords` VALUES ('2015-08-27', 'ecshop', 'dsadsad', '3');
INSERT INTO `ecs_keywords` VALUES ('2015-08-27', 'ecshop', '455666', '7');
INSERT INTO `ecs_keywords` VALUES ('2015-08-27', 'ecshop', 'dsadadsad', '1');
INSERT INTO `ecs_keywords` VALUES ('2015-08-27', 'ecshop', 'a', '19');
INSERT INTO `ecs_keywords` VALUES ('2015-08-27', 'ecshop', '小米手环', '1');
INSERT INTO `ecs_keywords` VALUES ('2015-08-27', 'ecshop', '耳机', '1');
INSERT INTO `ecs_keywords` VALUES ('2015-08-27', 'ecshop', '插线板', '1');
INSERT INTO `ecs_keywords` VALUES ('2015-08-28', 'ecshop', '耳机', '1');
INSERT INTO `ecs_keywords` VALUES ('2015-08-28', 'ecshop', '小米手环', '1');
INSERT INTO `ecs_keywords` VALUES ('2015-08-28', 'ecshop', '2', '5');
INSERT INTO `ecs_keywords` VALUES ('2015-08-31', 'ecshop', '小米手环', '3');
INSERT INTO `ecs_keywords` VALUES ('2015-08-31', 'ecshop', '耳机', '14');
INSERT INTO `ecs_keywords` VALUES ('2015-08-31', 'ecshop', '插线板', '1');
INSERT INTO `ecs_keywords` VALUES ('2015-09-01', 'ecshop', '小米手环', '3');
INSERT INTO `ecs_keywords` VALUES ('2015-09-01', 'ecshop', '插线板', '2');
INSERT INTO `ecs_keywords` VALUES ('2015-09-02', 'ecshop', '耳机', '1');
INSERT INTO `ecs_keywords` VALUES ('2015-09-06', 'ecshop', '小米手环', '41');
INSERT INTO `ecs_keywords` VALUES ('2015-09-07', 'ecshop', '小米手环', '1');
INSERT INTO `ecs_keywords` VALUES ('2015-09-07', 'ecshop', '耳机', '7');
INSERT INTO `ecs_keywords` VALUES ('2015-09-08', 'ecshop', 'fffffffff', '1');
INSERT INTO `ecs_keywords` VALUES ('2015-09-08', 'ecshop', 'aaaaaaaaa', '1');
INSERT INTO `ecs_keywords` VALUES ('2015-09-08', 'ecshop', '小米手环', '1');
INSERT INTO `ecs_keywords` VALUES ('2015-09-09', 'ecshop', '音乐手机', '1');
INSERT INTO `ecs_keywords` VALUES ('2015-09-10', 'ecshop', 'dsad', '1');
INSERT INTO `ecs_keywords` VALUES ('2015-09-10', 'ecshop', '音乐手机', '1');
INSERT INTO `ecs_keywords` VALUES ('2015-11-05', 'ecshop', '小米手环', '1');

-- ----------------------------
-- Table structure for `ecs_link_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_link_goods`;
CREATE TABLE `ecs_link_goods` (
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `link_goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `is_double` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `admin_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`goods_id`,`link_goods_id`,`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_link_goods
-- ----------------------------
INSERT INTO `ecs_link_goods` VALUES ('46', '44', '1', '1');
INSERT INTO `ecs_link_goods` VALUES ('44', '46', '1', '1');

-- ----------------------------
-- Table structure for `ecs_mail_templates`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_mail_templates`;
CREATE TABLE `ecs_mail_templates` (
  `template_id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `template_code` varchar(30) NOT NULL DEFAULT '',
  `is_html` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `template_subject` varchar(200) NOT NULL DEFAULT '',
  `template_content` text NOT NULL,
  `last_modify` int(10) unsigned NOT NULL DEFAULT '0',
  `last_send` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL,
  PRIMARY KEY (`template_id`),
  UNIQUE KEY `template_code` (`template_code`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_mail_templates
-- ----------------------------
INSERT INTO `ecs_mail_templates` VALUES ('1', 'send_password', '1', '密码找回', '{$user_name}您好！<br>\n<br>\n您已经进行了密码重置的操作，请点击以下链接(或者复制到您的浏览器):<br>\n<br>\n<a href=\"{$reset_email}\" target=\"_blank\">{$reset_email}</a><br>\n<br>\n以确认您的新密码重置操作！<br>\n<br>\n{$shop_name}<br>\n{$send_date}', '1194824789', '0', 'template');
INSERT INTO `ecs_mail_templates` VALUES ('2', 'order_confirm', '0', '订单确认通知', '亲爱的{$order.consignee}，你好！ \n\n我们已经收到您于 {$order.formated_add_time} 提交的订单，该订单编号为：{$order.order_sn} 请记住这个编号以便日后的查询。\n\n{$shop_name}\n{$sent_date}\n\n\n', '1158226370', '0', 'template');
INSERT INTO `ecs_mail_templates` VALUES ('3', 'deliver_notice', '1', '发货通知', '亲爱的{$order.consignee}。你好！</br></br>\n\n您的订单{$order.order_sn}已于{$send_time}按照您预定的配送方式给您发货了。</br>\n</br>\n{if $order.invoice_no}发货单号是{$order.invoice_no}。</br>{/if}\n</br>\n在您收到货物之后请点击下面的链接确认您已经收到货物：</br>\n<a href=\"{$confirm_url}\" target=\"_blank\">{$confirm_url}</a></br></br>\n如果您还没有收到货物可以点击以下链接给我们留言：</br></br>\n<a href=\"{$send_msg_url}\" target=\"_blank\">{$send_msg_url}</a></br>\n<br>\n再次感谢您对我们的支持。欢迎您的再次光临。 <br>\n<br>\n{$shop_name} </br>\n{$send_date}', '1194823291', '0', 'template');
INSERT INTO `ecs_mail_templates` VALUES ('4', 'order_cancel', '0', '订单取消', '亲爱的{$order.consignee}，你好！ \n\n您的编号为：{$order.order_sn}的订单已取消。\n\n{$shop_name}\n{$send_date}', '1156491130', '0', 'template');
INSERT INTO `ecs_mail_templates` VALUES ('5', 'order_invalid', '0', '订单无效', '亲爱的{$order.consignee}，你好！\n\n您的编号为：{$order.order_sn}的订单无效。\n\n{$shop_name}\n{$send_date}', '1156491164', '0', 'template');
INSERT INTO `ecs_mail_templates` VALUES ('6', 'send_bonus', '0', '发红包', '亲爱的{$user_name}您好！\n\n恭喜您获得了{$count}个红包，金额{if $count > 1}分别{/if}为{$money}\n\n{$shop_name}\n{$send_date}\n', '1156491184', '0', 'template');
INSERT INTO `ecs_mail_templates` VALUES ('7', 'group_buy', '1', '团购商品', '亲爱的{$consignee}，您好！<br>\n<br>\n您于{$order_time}在本店参加团购商品活动，所购买的商品名称为：{$goods_name}，数量：{$goods_number}，订单号为：{$order_sn}，订单金额为：{$order_amount}<br>\n<br>\n此团购商品现在已到结束日期，并达到最低价格，您现在可以对该订单付款。<br>\n<br>\n请点击下面的链接：<br>\n<a href=\"{$shop_url}\" target=\"_blank\">{$shop_url}</a><br>\n<br>\n请尽快登录到用户中心，查看您的订单详情信息。 <br>\n<br>\n{$shop_name} <br>\n<br>\n{$send_date}', '1194824668', '0', 'template');
INSERT INTO `ecs_mail_templates` VALUES ('8', 'register_validate', '1', '邮件验证', '{$user_name}您好！<br><br>\r\n\r\n这封邮件是 {$shop_name} 发送的。你收到这封邮件是为了验证你注册邮件地址是否有效。如果您已经通过验证了，请忽略这封邮件。<br>\r\n请点击以下链接(或者复制到您的浏览器)来验证你的邮件地址:<br>\r\n<a href=\"{$validate_email}\" target=\"_blank\">{$validate_email}</a><br><br>\r\n\r\n{$shop_name}<br>\r\n{$send_date}', '1162201031', '0', 'template');
INSERT INTO `ecs_mail_templates` VALUES ('9', 'virtual_card', '0', '虚拟卡片', '亲爱的{$order.consignee}\r\n你好！您的订单{$order.order_sn}中{$goods.goods_name} 商品的详细信息如下:\r\n{foreach from=$virtual_card item=card}\r\n{if $card.card_sn}卡号：{$card.card_sn}{/if}{if $card.card_password}卡片密码：{$card.card_password}{/if}{if $card.end_date}截至日期：{$card.end_date}{/if}\r\n{/foreach}\r\n再次感谢您对我们的支持。欢迎您的再次光临。\r\n\r\n{$shop_name} \r\n{$send_date}', '1162201031', '0', 'template');
INSERT INTO `ecs_mail_templates` VALUES ('10', 'attention_list', '0', '关注商品', '亲爱的{$user_name}您好~\n\n您关注的商品 : {$goods_name} 最近已经更新,请您查看最新的商品信息\n\n{$goods_url}\r\n\r\n{$shop_name} \r\n{$send_date}', '1183851073', '0', 'template');
INSERT INTO `ecs_mail_templates` VALUES ('11', 'remind_of_new_order', '0', '新订单通知', '亲爱的店长，您好：\n   快来看看吧，又有新订单了。\n    订单号:{$order.order_sn} \n 订单金额:{$order.order_amount}，\n 用户购买商品:{foreach from=$goods_list item=goods_data}{$goods_data.goods_name}(货号:{$goods_data.goods_sn})    {/foreach} \n\n 收货人:{$order.consignee}， \n 收货人地址:{$order.address}，\n 收货人电话:{$order.tel} {$order.mobile}, \n 配送方式:{$order.shipping_name}(费用:{$order.shipping_fee}), \n 付款方式:{$order.pay_name}(费用:{$order.pay_fee})。\n\n               系统提醒\n               {$send_date}', '1196239170', '0', 'template');
INSERT INTO `ecs_mail_templates` VALUES ('12', 'goods_booking', '1', '缺货回复', '亲爱的{$user_name}。你好！</br></br>{$dispose_note}</br></br>您提交的缺货商品链接为</br></br><a href=\"{$goods_link}\" target=\"_blank\">{$goods_name}</a></br><br>{$shop_name} </br>{$send_date}', '0', '0', 'template');
INSERT INTO `ecs_mail_templates` VALUES ('13', 'user_message', '1', '留言回复', '亲爱的{$user_name}。你好！</br></br>对您的留言：</br>{$message_content}</br></br>店主作了如下回复：</br>{$message_note}</br></br>您可以随时回到店中和店主继续沟通。</br>{$shop_name}</br>{$send_date}', '0', '0', 'template');
INSERT INTO `ecs_mail_templates` VALUES ('14', 'recomment', '1', '用户评论回复', '亲爱的{$user_name}。你好！</br></br>对您的评论：</br>“{$comment}”</br></br>店主作了如下回复：</br>“{$recomment}”</br></br>您可以随时回到店中和店主继续沟通。</br>{$shop_name}</br>{$send_date}', '0', '0', 'template');

-- ----------------------------
-- Table structure for `ecs_member_price`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_member_price`;
CREATE TABLE `ecs_member_price` (
  `price_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_rank` tinyint(3) NOT NULL DEFAULT '0',
  `user_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`price_id`),
  KEY `goods_id` (`goods_id`,`user_rank`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_member_price
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_nav`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_nav`;
CREATE TABLE `ecs_nav` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `ctype` varchar(10) DEFAULT NULL,
  `cid` smallint(5) unsigned DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `ifshow` tinyint(1) NOT NULL,
  `vieworder` tinyint(1) NOT NULL,
  `opennew` tinyint(1) NOT NULL,
  `url` varchar(255) NOT NULL,
  `type` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `ifshow` (`ifshow`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_nav
-- ----------------------------
INSERT INTO `ecs_nav` VALUES ('2', '', '0', '选购中心', '0', '2', '0', 'pick_out.php', 'top');
INSERT INTO `ecs_nav` VALUES ('3', '', '0', '查看购物车', '0', '0', '0', 'flow.php', 'top');
INSERT INTO `ecs_nav` VALUES ('6', '', '0', '标签云', '0', '5', '6', 'tag_cloud.php', 'top');
INSERT INTO `ecs_nav` VALUES ('54', '', '0', '留言板', '1', '16', '1', 'message.php', 'top');
INSERT INTO `ecs_nav` VALUES ('53', '', '0', '520余家售后网点', '1', '5', '0', '#', 'bottom');
INSERT INTO `ecs_nav` VALUES ('52', '', '0', '满150元包邮', '1', '4', '0', '#', 'bottom');
INSERT INTO `ecs_nav` VALUES ('51', '', '0', '15天免费换货', '1', '3', '0', '#', 'bottom');
INSERT INTO `ecs_nav` VALUES ('50', '', '0', '7天无理由退货', '1', '2', '0', '#', 'bottom');
INSERT INTO `ecs_nav` VALUES ('32', 'c', '101', '耳机音箱与存储卡', '1', '3', '0', 'category.php?id=101', 'middle');
INSERT INTO `ecs_nav` VALUES ('23', '', '0', '报价单', '0', '6', '0', 'quotation.php', 'top');
INSERT INTO `ecs_nav` VALUES ('42', 'c', '76', '购买电视与平板', '1', '1', '0', 'category.php?id=76', 'middle');
INSERT INTO `ecs_nav` VALUES ('43', 'c', '69', '购买手机', '1', '2', '0', 'category.php?id=69', 'middle');
INSERT INTO `ecs_nav` VALUES ('33', '', '0', '小米模板', '1', '7', '0', 'index.php', 'top');
INSERT INTO `ecs_nav` VALUES ('34', '', '0', 'MIUI', '1', '8', '1', '#', 'top');
INSERT INTO `ecs_nav` VALUES ('35', '', '0', '米聊', '1', '9', '1', '#', 'top');
INSERT INTO `ecs_nav` VALUES ('36', '', '0', '游戏', '1', '10', '1', '#', 'top');
INSERT INTO `ecs_nav` VALUES ('37', '', '0', '多看阅读', '1', '11', '1', '#', 'top');
INSERT INTO `ecs_nav` VALUES ('38', '', '0', '云服务', '1', '12', '1', '#', 'top');
INSERT INTO `ecs_nav` VALUES ('39', '', '0', '移动版商城', '1', '13', '1', '/mobile', 'top');
INSERT INTO `ecs_nav` VALUES ('40', '', '0', 'Select region', '1', '14', '0', '#', 'top');
INSERT INTO `ecs_nav` VALUES ('44', 'c', '108', '保护套与贴膜', '1', '4', '0', 'category.php?id=108', 'middle');
INSERT INTO `ecs_nav` VALUES ('45', 'c', '118', '小米生活方式', '1', '5', '0', 'category.php?id=118', 'middle');
INSERT INTO `ecs_nav` VALUES ('49', '', '0', '1小时快修服务', '1', '1', '0', '#', 'bottom');
INSERT INTO `ecs_nav` VALUES ('47', '', '0', '网店帮助分类', '1', '15', '0', 'article_cat.php?id=3', 'top');
INSERT INTO `ecs_nav` VALUES ('48', 'a', '3', '网店帮助分类', '0', '7', '0', 'article_cat.php?id=3', 'middle');

-- ----------------------------
-- Table structure for `ecs_order_action`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_order_action`;
CREATE TABLE `ecs_order_action` (
  `action_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `action_user` varchar(30) NOT NULL DEFAULT '',
  `order_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pay_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `action_place` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `action_note` varchar(255) NOT NULL DEFAULT '',
  `log_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`action_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_order_action
-- ----------------------------
INSERT INTO `ecs_order_action` VALUES ('1', '2', 'admin', '1', '0', '2', '0', '1', '1437090070');
INSERT INTO `ecs_order_action` VALUES ('2', '2', 'admin', '1', '3', '2', '0', '', '1437090073');
INSERT INTO `ecs_order_action` VALUES ('3', '2', 'admin', '5', '5', '2', '0', '', '1437090077');
INSERT INTO `ecs_order_action` VALUES ('4', '2', 'admin', '1', '1', '2', '1', '', '1437090084');
INSERT INTO `ecs_order_action` VALUES ('5', '2', 'admin', '5', '2', '2', '0', '1', '1437090091');
INSERT INTO `ecs_order_action` VALUES ('6', '3', 'admin', '1', '0', '2', '0', '1', '1437093859');
INSERT INTO `ecs_order_action` VALUES ('7', '3', 'admin', '1', '3', '2', '0', '', '1437093862');
INSERT INTO `ecs_order_action` VALUES ('8', '3', 'admin', '5', '5', '2', '0', '', '1437093867');
INSERT INTO `ecs_order_action` VALUES ('9', '3', 'admin', '1', '1', '2', '1', '', '1437093874');
INSERT INTO `ecs_order_action` VALUES ('10', '3', 'admin', '5', '2', '2', '0', '1', '1437093881');
INSERT INTO `ecs_order_action` VALUES ('11', '4', 'admin', '1', '0', '2', '0', '1', '1437093951');
INSERT INTO `ecs_order_action` VALUES ('12', '4', 'admin', '1', '3', '2', '0', '', '1437093954');
INSERT INTO `ecs_order_action` VALUES ('13', '4', 'admin', '5', '5', '2', '0', '', '1437093959');
INSERT INTO `ecs_order_action` VALUES ('14', '4', 'admin', '1', '1', '2', '1', '', '1437093965');
INSERT INTO `ecs_order_action` VALUES ('15', '4', 'admin', '5', '2', '2', '0', '1', '1437093971');
INSERT INTO `ecs_order_action` VALUES ('16', '45', 'admin', '1', '0', '0', '0', '', '1441822340');
INSERT INTO `ecs_order_action` VALUES ('17', '45', 'admin', '1', '0', '2', '0', ' ', '1441823939');
INSERT INTO `ecs_order_action` VALUES ('18', '45', 'admin', '1', '3', '2', '0', '', '1441823943');
INSERT INTO `ecs_order_action` VALUES ('19', '45', 'admin', '5', '5', '2', '0', '', '1441823948');
INSERT INTO `ecs_order_action` VALUES ('20', '45', 'admin', '1', '1', '2', '1', '', '1441823955');
INSERT INTO `ecs_order_action` VALUES ('21', '44', 'admin', '1', '0', '0', '0', '', '1441833359');
INSERT INTO `ecs_order_action` VALUES ('22', '44', 'admin', '1', '0', '2', '0', ' ', '1441833367');
INSERT INTO `ecs_order_action` VALUES ('23', '44', 'admin', '1', '3', '2', '0', '', '1441833371');
INSERT INTO `ecs_order_action` VALUES ('24', '44', 'admin', '5', '5', '2', '0', '', '1441833378');
INSERT INTO `ecs_order_action` VALUES ('25', '44', 'admin', '1', '1', '2', '1', '', '1441833387');
INSERT INTO `ecs_order_action` VALUES ('26', '43', 'admin', '1', '0', '0', '0', '', '1441833406');
INSERT INTO `ecs_order_action` VALUES ('27', '43', 'admin', '1', '0', '2', '0', ' ', '1441833411');
INSERT INTO `ecs_order_action` VALUES ('28', '43', 'admin', '1', '3', '2', '0', '', '1441833414');
INSERT INTO `ecs_order_action` VALUES ('29', '43', 'admin', '5', '5', '2', '0', '', '1441833420');
INSERT INTO `ecs_order_action` VALUES ('30', '43', 'admin', '1', '1', '2', '1', '', '1441833428');
INSERT INTO `ecs_order_action` VALUES ('31', '42', 'admin', '1', '0', '0', '0', '', '1441906058');
INSERT INTO `ecs_order_action` VALUES ('32', '42', 'admin', '1', '3', '0', '0', '', '1441906061');
INSERT INTO `ecs_order_action` VALUES ('33', '42', 'admin', '5', '5', '0', '0', '', '1441906067');
INSERT INTO `ecs_order_action` VALUES ('34', '42', 'admin', '1', '1', '0', '1', '', '1441906074');
INSERT INTO `ecs_order_action` VALUES ('35', '41', 'admin', '1', '0', '0', '0', '', '1441906118');
INSERT INTO `ecs_order_action` VALUES ('36', '41', 'admin', '1', '0', '2', '0', ' ', '1441906124');
INSERT INTO `ecs_order_action` VALUES ('37', '41', 'admin', '1', '3', '2', '0', '', '1441906131');
INSERT INTO `ecs_order_action` VALUES ('38', '41', 'admin', '1', '3', '2', '0', '[售后]  ', '1441906181');
INSERT INTO `ecs_order_action` VALUES ('39', '40', 'admin', '1', '0', '0', '0', '', '1441906209');
INSERT INTO `ecs_order_action` VALUES ('40', '40', 'admin', '1', '0', '2', '0', ' ', '1441906214');
INSERT INTO `ecs_order_action` VALUES ('41', '40', 'admin', '1', '3', '2', '0', '', '1441906217');
INSERT INTO `ecs_order_action` VALUES ('42', '40', 'admin', '5', '5', '2', '0', '', '1441906222');
INSERT INTO `ecs_order_action` VALUES ('43', '40', 'admin', '1', '1', '2', '1', 'sasdsadsadssasd', '1441906236');
INSERT INTO `ecs_order_action` VALUES ('44', '39', 'admin', '1', '0', '0', '0', '', '1441906303');
INSERT INTO `ecs_order_action` VALUES ('45', '39', 'admin', '1', '0', '2', '0', '  ', '1441906307');
INSERT INTO `ecs_order_action` VALUES ('46', '39', 'admin', '1', '3', '2', '0', '', '1441906311');
INSERT INTO `ecs_order_action` VALUES ('47', '39', 'admin', '5', '5', '2', '0', 'd', '1441906316');
INSERT INTO `ecs_order_action` VALUES ('48', '39', 'admin', '1', '1', '2', '1', 'fwfegr', '1441906327');

-- ----------------------------
-- Table structure for `ecs_order_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_order_goods`;
CREATE TABLE `ecs_order_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_name` varchar(120) NOT NULL DEFAULT '',
  `goods_sn` varchar(60) NOT NULL DEFAULT '',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '1',
  `market_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `goods_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `goods_attr` text NOT NULL,
  `send_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `is_real` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `extension_code` varchar(30) NOT NULL DEFAULT '',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `is_gift` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_attr_id` varchar(255) NOT NULL DEFAULT '',
  `touch_sale` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `touch_fencheng` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`rec_id`),
  KEY `order_id` (`order_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_order_goods
-- ----------------------------
INSERT INTO `ecs_order_goods` VALUES ('1', '1', '6', 'CHARMZONE婵真美菁红酒二件套装', 'ECS000006', '0', '2', '261.59', '218.00', '', '0', '1', '', '0', '0', '', '0.00', '0.00');
INSERT INTO `ecs_order_goods` VALUES ('2', '2', '27', '小米电视2 40英寸', 'ECS000000', '0', '1', '2398.00', '1999.00', '', '1', '1', '', '0', '0', '', '0.00', '0.00');
INSERT INTO `ecs_order_goods` VALUES ('3', '3', '43', '小蚁蓝牙自拍杆', 'ECS000043', '0', '1', '154.00', '129.00', '', '1', '1', '', '0', '0', '', '0.00', '0.00');
INSERT INTO `ecs_order_goods` VALUES ('4', '4', '44', '小米移动电源5000mAh', 'ECS000044', '0', '1', '58.00', '49.00', '', '1', '1', '', '0', '0', '', '0.00', '0.00');
INSERT INTO `ecs_order_goods` VALUES ('5', '4', '38', '小米活塞耳机 炫彩版', 'ECS000038', '0', '1', '49.00', '39.00', '', '1', '1', '', '0', '0', '', '0.00', '0.00');
INSERT INTO `ecs_order_goods` VALUES ('6', '4', '42', '小米蓝牙手柄', 'ECS000042', '0', '1', '118.00', '99.00', '', '1', '1', '', '0', '0', '', '0.00', '0.00');
INSERT INTO `ecs_order_goods` VALUES ('7', '4', '46', '小钢炮蓝牙音箱', 'ECS000046', '0', '1', '154.00', '129.00', '', '1', '1', '', '0', '0', '', '0.00', '0.00');
INSERT INTO `ecs_order_goods` VALUES ('8', '5', '27', '小米电视2 40英寸', 'ECS000000', '0', '1', '2640.00', '2200.00', '尺寸:45 \n颜色:黄 \n', '0', '1', '', '0', '0', '37,38', '0.00', '0.00');
INSERT INTO `ecs_order_goods` VALUES ('9', '5', '32', '小米路由器 mini', 'ECS000032', '0', '1', '154.00', '129.00', '', '0', '1', '', '0', '0', '', '0.00', '0.00');
INSERT INTO `ecs_order_goods` VALUES ('10', '6', '33', '小蚁智能摄像机 标准', 'ECS000033', '0', '1', '154.80', '129.00', '', '0', '1', '', '0', '0', '', '0.00', '0.00');
INSERT INTO `ecs_order_goods` VALUES ('11', '7', '31', '小米移动电源10000mAh', 'ECS000031', '0', '1', '94.00', '79.00', '', '0', '1', '', '0', '0', '', '0.00', '0.00');
INSERT INTO `ecs_order_goods` VALUES ('12', '8', '32', '小米路由器 mini', 'ECS000032', '0', '1', '154.00', '129.00', '', '0', '1', '', '0', '0', '', '0.00', '0.00');
INSERT INTO `ecs_order_goods` VALUES ('13', '9', '42', '小米蓝牙手柄', 'ECS000042', '0', '1', '118.00', '99.00', '', '0', '1', '', '0', '0', '', '0.00', '0.00');
INSERT INTO `ecs_order_goods` VALUES ('14', '10', '42', '小米蓝牙手柄', 'ECS000042', '0', '1', '118.00', '99.00', '', '0', '1', '', '0', '0', '', '0.00', '0.00');
INSERT INTO `ecs_order_goods` VALUES ('15', '11', '32', '小米路由器 mini', 'ECS000032', '0', '1', '154.00', '129.00', '', '0', '1', '', '0', '0', '', '0.00', '0.00');
INSERT INTO `ecs_order_goods` VALUES ('16', '12', '33', '小蚁智能摄像机 标准', 'ECS000033', '0', '1', '154.80', '129.00', '', '0', '1', '', '0', '0', '', '0.00', '0.00');
INSERT INTO `ecs_order_goods` VALUES ('17', '13', '44', '小米移动电源5000mAh', 'ECS000044', '0', '1', '58.80', '49.00', '', '0', '1', '', '0', '0', '', '0.00', '0.00');
INSERT INTO `ecs_order_goods` VALUES ('18', '14', '32', '小米路由器 mini', 'ECS000032', '0', '1', '154.00', '129.00', '', '0', '1', '', '0', '0', '', '0.00', '0.00');
INSERT INTO `ecs_order_goods` VALUES ('19', '15', '46', '小钢炮蓝牙音箱', 'ECS000046', '0', '1', '154.80', '129.00', '', '0', '1', '', '0', '0', '', '0.00', '0.00');
INSERT INTO `ecs_order_goods` VALUES ('20', '16', '28', '小米平板 16G', 'ECS000028', '0', '1', '1558.00', '1299.00', '尺寸:45 \n颜色:灰 \n', '0', '1', '', '0', '0', '35,36', '0.00', '0.00');
INSERT INTO `ecs_order_goods` VALUES ('21', '17', '41', '小米移动电源16000mAh', 'ECS000041', '0', '1', '129.00', '109.00', '', '0', '1', '', '0', '0', '', '0.00', '0.00');
INSERT INTO `ecs_order_goods` VALUES ('22', '18', '32', '小米路由器 mini', 'ECS000032', '0', '1', '154.00', '129.00', '', '0', '1', '', '0', '0', '', '0.00', '0.00');
INSERT INTO `ecs_order_goods` VALUES ('23', '19', '28', '小米平板 16G', 'ECS000028', '0', '1', '1558.00', '1299.00', '尺寸:45 \n颜色:灰 \n', '0', '1', '', '0', '0', '35,36', '0.00', '0.00');
INSERT INTO `ecs_order_goods` VALUES ('24', '20', '28', '小米平板 16G', 'ECS000028', '0', '1', '1558.00', '1299.00', '尺寸:45 \n颜色:灰 \n', '0', '1', '', '0', '0', '35,36', '0.00', '0.00');
INSERT INTO `ecs_order_goods` VALUES ('25', '21', '44', '小米移动电源5000mAh', 'ECS000044', '0', '1', '58.80', '49.00', '', '0', '1', '', '0', '0', '', '0.00', '0.00');
INSERT INTO `ecs_order_goods` VALUES ('26', '22', '32', '小米路由器 mini', 'ECS000032', '0', '1', '154.00', '129.00', '', '0', '1', '', '0', '0', '', '0.00', '0.00');
INSERT INTO `ecs_order_goods` VALUES ('27', '23', '42', '小米蓝牙手柄', 'ECS000042', '0', '1', '118.00', '99.00', '', '0', '1', '', '0', '0', '', '0.00', '0.00');
INSERT INTO `ecs_order_goods` VALUES ('28', '24', '32', '小米路由器 mini', 'ECS000032', '0', '1', '154.00', '129.00', '', '0', '1', '', '0', '0', '', '0.00', '0.00');
INSERT INTO `ecs_order_goods` VALUES ('29', '25', '38', '小米活塞耳机 炫彩版', 'ECS000038', '0', '1', '46.80', '39.00', '', '0', '1', '', '0', '0', '', '0.00', '0.00');
INSERT INTO `ecs_order_goods` VALUES ('30', '26', '38', '小米活塞耳机 炫彩版', 'ECS000038', '0', '1', '46.80', '39.00', '', '0', '1', '', '0', '0', '', '0.00', '0.00');
INSERT INTO `ecs_order_goods` VALUES ('31', '27', '31', '小米移动电源10000mAh', 'ECS000031', '0', '1', '94.00', '79.00', '', '0', '1', '', '0', '0', '', '0.00', '0.00');
INSERT INTO `ecs_order_goods` VALUES ('32', '28', '31', '小米移动电源10000mAh', 'ECS000031', '0', '1', '94.00', '79.00', '', '0', '1', '', '0', '0', '', '0.00', '0.00');
INSERT INTO `ecs_order_goods` VALUES ('33', '29', '32', '小米路由器 mini', 'ECS000032', '0', '1', '154.00', '129.00', '', '0', '1', '', '0', '0', '', '0.00', '0.00');
INSERT INTO `ecs_order_goods` VALUES ('34', '30', '32', '小米路由器 mini', 'ECS000032', '0', '1', '154.00', '129.00', '', '0', '1', '', '0', '0', '', '0.00', '0.00');
INSERT INTO `ecs_order_goods` VALUES ('35', '31', '41', '小米移动电源16000mAh', 'ECS000041', '0', '1', '129.00', '109.00', '', '0', '1', '', '0', '0', '', '0.00', '0.00');
INSERT INTO `ecs_order_goods` VALUES ('36', '32', '31', '小米移动电源10000mAh', 'ECS000031', '0', '1', '94.00', '79.00', '', '0', '1', '', '0', '0', '', '0.00', '0.00');
INSERT INTO `ecs_order_goods` VALUES ('37', '33', '32', '小米路由器 mini', 'ECS000032', '0', '1', '154.00', '129.00', '', '0', '1', '', '0', '0', '', '0.00', '0.00');
INSERT INTO `ecs_order_goods` VALUES ('38', '34', '32', '小米路由器 mini', 'ECS000032', '0', '1', '154.00', '129.00', '', '0', '1', '', '0', '0', '', '0.00', '0.00');
INSERT INTO `ecs_order_goods` VALUES ('39', '35', '31', '小米移动电源10000mAh', 'ECS000031', '0', '1', '94.00', '79.00', '', '0', '1', '', '0', '0', '', '0.00', '0.00');
INSERT INTO `ecs_order_goods` VALUES ('40', '36', '28', '小米平板 16G', 'ECS000028', '0', '1', '1558.00', '1299.00', '尺寸:45 \n颜色:灰 \n', '0', '1', '', '0', '0', '35,36', '0.00', '0.00');
INSERT INTO `ecs_order_goods` VALUES ('41', '37', '45', '小米活塞耳机标准版', 'ECS000045', '0', '1', '106.80', '89.00', '', '0', '1', '', '0', '0', '', '0.00', '0.00');
INSERT INTO `ecs_order_goods` VALUES ('42', '38', '31', '小米移动电源10000mAh', 'ECS000031', '0', '1', '94.00', '79.00', '', '0', '1', '', '0', '0', '', '0.00', '0.00');
INSERT INTO `ecs_order_goods` VALUES ('43', '39', '46', '小钢炮蓝牙音箱', 'ECS000046', '0', '1', '154.80', '129.00', '', '1', '1', '', '0', '0', '', '0.00', '0.00');
INSERT INTO `ecs_order_goods` VALUES ('44', '39', '38', '小米活塞耳机 炫彩版', 'ECS000038', '0', '1', '46.80', '39.00', '', '1', '1', '', '0', '0', '', '0.00', '0.00');
INSERT INTO `ecs_order_goods` VALUES ('45', '39', '28', '小米平板 16G', 'ECS000028', '0', '1', '1558.00', '1299.00', '尺寸:45 \n颜色:灰 \n', '1', '1', '', '0', '0', '35,36', '0.00', '0.00');
INSERT INTO `ecs_order_goods` VALUES ('46', '40', '33', '小蚁智能摄像机 标准', 'ECS000033', '0', '2', '154.80', '129.00', '', '2', '1', '', '0', '0', '', '0.00', '0.00');
INSERT INTO `ecs_order_goods` VALUES ('47', '41', '47', '米兔手机U盘升级版', 'ECS000047', '0', '555', '59.87', '444.00', '', '0', '1', '', '0', '0', '', '0.00', '0.00');
INSERT INTO `ecs_order_goods` VALUES ('48', '42', '58', '实木后盖', 'ECS000058', '0', '1', '82.80', '69.00', '', '1', '1', '', '0', '0', '', '0.00', '0.00');
INSERT INTO `ecs_order_goods` VALUES ('49', '42', '43', '小蚁蓝牙自拍杆', 'ECS000043', '0', '1', '154.80', '129.00', '', '1', '1', '', '0', '0', '', '0.00', '0.00');
INSERT INTO `ecs_order_goods` VALUES ('50', '42', '46', '小钢炮蓝牙音箱', 'ECS000046', '0', '1', '154.80', '129.00', '', '1', '1', '', '0', '0', '', '0.00', '0.00');
INSERT INTO `ecs_order_goods` VALUES ('51', '43', '76', '小米盒子mini版', 'ECS000076', '0', '1', '238.79', '199.00', '', '1', '1', '', '0', '0', '', '0.00', '0.00');
INSERT INTO `ecs_order_goods` VALUES ('52', '43', '28', '小米平板 16G', 'ECS000028', '0', '1', '1558.00', '1299.00', '尺寸:45 \n颜色:灰 \n', '1', '1', '', '0', '0', '35,36', '0.00', '0.00');
INSERT INTO `ecs_order_goods` VALUES ('53', '43', '29', '小米盒子增强版 1G', 'ECS000029', '0', '2', '358.00', '299.00', '尺寸:15 \n颜色:黑 \n', '2', '1', '', '0', '0', '33,34', '0.00', '0.00');
INSERT INTO `ecs_order_goods` VALUES ('54', '44', '29', '小米盒子增强版 1G', 'ECS000029', '0', '1', '358.00', '299.00', '尺寸:15 \n颜色:黑 \n', '1', '1', '', '0', '0', '33,34', '0.00', '0.00');
INSERT INTO `ecs_order_goods` VALUES ('55', '45', '40', '小米体重秤', 'ECS000040', '0', '1', '118.00', '99.00', '', '1', '1', '', '0', '0', '', '0.00', '0.00');
INSERT INTO `ecs_order_goods` VALUES ('56', '46', '32', '小米路由器 mini', 'ECS000032', '0', '3', '154.00', '129.00', '', '0', '1', '', '0', '0', '', '0.00', '0.00');
INSERT INTO `ecs_order_goods` VALUES ('57', '47', '74', '萨摩小狗移动电源', 'ECS000074', '0', '1', '153.60', '128.00', '', '0', '1', '', '0', '0', '', '0.00', '0.00');

-- ----------------------------
-- Table structure for `ecs_order_info`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_order_info`;
CREATE TABLE `ecs_order_info` (
  `order_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(20) NOT NULL DEFAULT '',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `order_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pay_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `consignee` varchar(60) NOT NULL DEFAULT '',
  `country` smallint(5) unsigned NOT NULL DEFAULT '0',
  `province` smallint(5) unsigned NOT NULL DEFAULT '0',
  `city` smallint(5) unsigned NOT NULL DEFAULT '0',
  `district` smallint(5) unsigned NOT NULL DEFAULT '0',
  `address` varchar(255) NOT NULL DEFAULT '',
  `zipcode` varchar(60) NOT NULL DEFAULT '',
  `tel` varchar(60) NOT NULL DEFAULT '',
  `mobile` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `best_time` varchar(120) NOT NULL DEFAULT '',
  `sign_building` varchar(120) NOT NULL DEFAULT '',
  `postscript` varchar(255) NOT NULL DEFAULT '',
  `shipping_id` tinyint(3) NOT NULL DEFAULT '0',
  `shipping_name` varchar(120) NOT NULL DEFAULT '',
  `pay_id` tinyint(3) NOT NULL DEFAULT '0',
  `pay_name` varchar(120) NOT NULL DEFAULT '',
  `how_oos` varchar(120) NOT NULL DEFAULT '',
  `how_surplus` varchar(120) NOT NULL DEFAULT '',
  `pack_name` varchar(120) NOT NULL DEFAULT '',
  `card_name` varchar(120) NOT NULL DEFAULT '',
  `card_message` varchar(255) NOT NULL DEFAULT '',
  `inv_payee` varchar(120) NOT NULL DEFAULT '',
  `inv_content` varchar(120) NOT NULL DEFAULT '',
  `goods_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `shipping_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `insure_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pay_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pack_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `card_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `money_paid` decimal(10,2) NOT NULL DEFAULT '0.00',
  `surplus` decimal(10,2) NOT NULL DEFAULT '0.00',
  `integral` int(10) unsigned NOT NULL DEFAULT '0',
  `integral_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `bonus` decimal(10,2) NOT NULL DEFAULT '0.00',
  `order_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `from_ad` smallint(5) NOT NULL DEFAULT '0',
  `referer` varchar(255) NOT NULL DEFAULT '',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `confirm_time` int(10) unsigned NOT NULL DEFAULT '0',
  `pay_time` int(10) unsigned NOT NULL DEFAULT '0',
  `shipping_time` int(10) unsigned NOT NULL DEFAULT '0',
  `pack_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `card_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `bonus_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `invoice_no` varchar(255) NOT NULL DEFAULT '',
  `extension_code` varchar(30) NOT NULL DEFAULT '',
  `extension_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `to_buyer` varchar(255) NOT NULL DEFAULT '',
  `pay_note` varchar(255) NOT NULL DEFAULT '',
  `agency_id` smallint(5) unsigned NOT NULL,
  `inv_type` varchar(60) NOT NULL,
  `tax` decimal(10,2) NOT NULL,
  `is_separate` tinyint(1) NOT NULL DEFAULT '0',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `discount` decimal(10,2) NOT NULL,
  `mobile_pay` int(1) unsigned NOT NULL DEFAULT '0',
  `order_source` int(1) unsigned NOT NULL DEFAULT '0',
  `drp_id` int(8) unsigned NOT NULL DEFAULT '0',
  `shop_separate` int(1) unsigned NOT NULL DEFAULT '0',
  `mobile_order` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `order_sn` (`order_sn`),
  KEY `user_id` (`user_id`),
  KEY `order_status` (`order_status`),
  KEY `shipping_status` (`shipping_status`),
  KEY `pay_status` (`pay_status`),
  KEY `shipping_id` (`shipping_id`),
  KEY `pay_id` (`pay_id`),
  KEY `extension_code` (`extension_code`,`extension_id`),
  KEY `agency_id` (`agency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_order_info
-- ----------------------------
INSERT INTO `ecs_order_info` VALUES ('1', '2014123084242', '0', '0', '0', '0', '少废话收费的', '1', '4', '56', '549', 'dgadgadgasdgag', '545651', '515625684', '', '51556@qq.com', '', '', '', '5', '申通快递', '5', '快钱人民币网关', '等待所有商品备齐后再发', '', '', '', '', '', '', '436.00', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '451.00', '0', '本站', '1419878596', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0', '0', '0', '0', '0');
INSERT INTO `ecs_order_info` VALUES ('2', '2015071763877', '0', '5', '2', '2', '111111', '1', '4', '56', '549', '111111', '11111111', '1111111', '', '111@qq.com', '', '', '', '5', '申通快递', '2', '银行汇款/转帐', '等待所有商品备齐后再发', '', '', '', '', '', '', '1999.00', '15.00', '0.00', '0.00', '0.00', '0.00', '2014.00', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1437090054', '1437090070', '1437090070', '1437090084', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0', '0', '0', '0', '0');
INSERT INTO `ecs_order_info` VALUES ('3', '2015071757226', '0', '5', '2', '2', '2222', '1', '12', '175', '1490', '222222', '222', '2222222222', '', '111@qq.com', '', '', '', '5', '申通快递', '2', '银行汇款/转帐', '等待所有商品备齐后再发', '', '', '', '', '', '', '129.00', '15.00', '0.00', '0.00', '0.00', '0.00', '144.00', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1437093845', '1437093859', '1437093859', '1437093874', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0', '0', '0', '0', '0');
INSERT INTO `ecs_order_info` VALUES ('4', '2015071744264', '0', '5', '2', '2', '3333333', '1', '7', '101', '901', 'qqqqqqq', '1111111', '111111111', '', '333@qq.com', '', '', '', '5', '申通快递', '2', '银行汇款/转帐', '等待所有商品备齐后再发', '', '', '', '', '', '', '316.00', '15.00', '0.00', '0.00', '0.00', '0.00', '331.00', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1437093939', '1437093951', '1437093951', '1437093965', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0', '0', '0', '0', '0');
INSERT INTO `ecs_order_info` VALUES ('5', '2015082469895', '0', '0', '0', '0', 'dsdad', '1', '3', '37', '409', 'dsdadsadad', '3213', '13444442222', '13444442222', '497110669@qq.com', '', '', '', '10', '中通速递', '4', '网银在线', '与店主协商', '', '', '', '', '', '食品', '2329.00', '10.00', '100.00', '24.64', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '2463.64', '0', '本站', '1440354330', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '3', '0.00', '0', '0', '0.00', '0', '0', '0', '0', '0');
INSERT INTO `ecs_order_info` VALUES ('6', '2015082490968', '0', '0', '0', '0', 'dsdad', '1', '3', '37', '409', 'dsdadsadad', '3213', '13444442222', '13444442222', '497110669@qq.com', '', '', '', '10', '中通速递', '2', '银行汇款/转帐', '等待所有商品备齐后再发', '', '', '', '', '', '', '129.00', '10.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '139.00', '0', '本站', '1440366039', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0', '0', '0', '0', '0');
INSERT INTO `ecs_order_info` VALUES ('7', '2015082486449', '0', '0', '0', '0', 'aaaa', '1', '3', '38', '417', 'dsdadsadad', '3213', '13444442222', '13444442222', '497110669@qq.com', '', '', '', '5', '申通快递', '4', '网银在线', '等待所有商品备齐后再发', '', '', '', '', '', '', '79.00', '15.00', '0.00', '0.95', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '94.95', '0', '本站', '1440366468', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0', '0', '0', '0', '0');
INSERT INTO `ecs_order_info` VALUES ('8', '2015082496755', '0', '0', '0', '0', 'dsdad', '1', '4', '56', '550', 'dsdadsadad', '3213', '13444442222', '13444442222', '497110669@qq.com', '', '', '', '3', '城际快递', '2', '银行汇款/转帐', '等待所有商品备齐后再发', '', '', '', '', '', '', '129.00', '10.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '139.00', '0', '本站', '1440366542', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0', '0', '0', '0', '0');
INSERT INTO `ecs_order_info` VALUES ('9', '2015082461215', '0', '0', '0', '0', 'dsdad', '1', '3', '37', '410', 'dsdadsadad', '3213', '13444442222', '13444442222', '497110669@qq.com', '', '', '', '3', '城际快递', '2', '银行汇款/转帐', '等待所有商品备齐后再发', '', '', '', '', '', '', '99.00', '10.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '109.00', '0', '本站', '1440366890', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0', '0', '0', '0', '0');
INSERT INTO `ecs_order_info` VALUES ('10', '2015082482615', '0', '0', '0', '0', 'dsdad', '1', '3', '37', '409', 'dsdadsadad', '3213', '13444442222', '13444442222', '497110669@qq.com', '', '', '', '3', '城际快递', '2', '银行汇款/转帐', '等待所有商品备齐后再发', '', '', '', '', '', '', '99.00', '10.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '109.00', '0', '本站', '1440367085', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0', '0', '0', '0', '0');
INSERT INTO `ecs_order_info` VALUES ('11', '2015082484416', '0', '0', '0', '0', 'dsdad', '1', '3', '37', '410', 'dsdadsadad', '3213', '13444442222', '13444442222', '497110669@qq.com', '', '', '', '6', '邮局平邮', '2', '银行汇款/转帐', '等待所有商品备齐后再发', '', '', '', '', '', '', '129.00', '3.50', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '132.50', '0', '本站', '1440367163', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0', '0', '0', '0', '0');
INSERT INTO `ecs_order_info` VALUES ('12', '2015082492296', '0', '0', '0', '0', 'dsdad', '1', '3', '38', '417', 'dsdadsadad', '3213', '13444442222', '13444442222', '497110669@qq.com', '', '', '', '6', '邮局平邮', '2', '银行汇款/转帐', '等待所有商品备齐后再发', '', '', '', '', '', '', '129.00', '3.50', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '132.50', '0', '本站', '1440367233', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0', '0', '0', '0', '0');
INSERT INTO `ecs_order_info` VALUES ('13', '2015082428022', '0', '0', '0', '0', 'dsdad', '1', '3', '37', '411', 'dsdadsadad', '3213', '13444442222', '13444442222', '497110669@qq.com', '', '', '', '6', '邮局平邮', '2', '银行汇款/转帐', '等待所有商品备齐后再发', '', '', '', '', '', '', '49.00', '3.50', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '52.50', '0', '本站', '1440367438', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0', '0', '0', '0', '0');
INSERT INTO `ecs_order_info` VALUES ('14', '2015082457607', '0', '0', '0', '0', 'dsdad', '1', '3', '38', '416', 'dsdadsadad', '3213', '13444442222', '13444442222', '497110669@qq.com', '', '', '', '7', '运费到付', '2', '银行汇款/转帐', '等待所有商品备齐后再发', '', '', '', '', '', '', '129.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '129.00', '0', '本站', '1440367500', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0', '0', '0', '0', '0');
INSERT INTO `ecs_order_info` VALUES ('15', '2015082477642', '0', '0', '0', '0', 'dsdad', '1', '3', '37', '411', 'dsdadsadad', '3213', '13444442222', '13444442222', '497110669@qq.com', '', '', '', '6', '邮局平邮', '2', '银行汇款/转帐', '等待所有商品备齐后再发', '', '', '', '', '', '', '129.00', '3.50', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '132.50', '0', '本站', '1440367552', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0', '0', '0', '0', '0');
INSERT INTO `ecs_order_info` VALUES ('16', '2015082482227', '0', '0', '0', '0', 'dsdad', '1', '3', '36', '399', 'dsdadsadad', '3213', '13444442222', '13444442222', '497110669@qq.com', '', '', '', '6', '邮局平邮', '2', '银行汇款/转帐', '等待所有商品备齐后再发', '', '', '', '', '', '', '1299.00', '3.50', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '1302.50', '0', '本站', '1440367869', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0', '0', '0', '0', '0');
INSERT INTO `ecs_order_info` VALUES ('17', '2015082408857', '0', '0', '0', '0', 'dsdad', '1', '3', '37', '412', 'dsdadsadad', '3213', '13444442222', '13444442222', '497110669@qq.com', '', '', '', '6', '邮局平邮', '2', '银行汇款/转帐', '等待所有商品备齐后再发', '', '', '', '', '', '', '109.00', '3.50', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '112.50', '0', '本站', '1440368149', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0', '0', '0', '0', '0');
INSERT INTO `ecs_order_info` VALUES ('18', '2015082427405', '0', '0', '0', '0', 'dsdad', '1', '3', '36', '399', 'dsdadsadad', '3213', '13444442222', '13444442222', '497110669@qq.com', '', '', '', '6', '邮局平邮', '2', '银行汇款/转帐', '等待所有商品备齐后再发', '', '', '', '', '', '', '129.00', '3.50', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '132.50', '0', '本站', '1440368520', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0', '0', '0', '0', '0');
INSERT INTO `ecs_order_info` VALUES ('19', '2015082485815', '0', '0', '0', '0', 'dsdad', '1', '3', '37', '409', 'dsdadsadad', '3213', '13444442222', '13444442222', '497110669@qq.com', '', '', '', '3', '城际快递', '5', '快钱人民币网关', '等待所有商品备齐后再发', '', '', '', '', '', '', '1299.00', '10.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '1309.00', '0', '本站', '1440368965', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0', '0', '0', '0', '0');
INSERT INTO `ecs_order_info` VALUES ('20', '2015082416737', '0', '0', '0', '0', 'dsdad', '1', '3', '37', '410', 'dsdadsadad', '3213', '13444442222', '13444442222', '497110669@qq.com', '', '', '', '6', '邮局平邮', '2', '银行汇款/转帐', '等待所有商品备齐后再发', '', '', '', '', '', '', '1299.00', '3.50', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '1302.50', '0', '本站', '1440369649', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0', '0', '0', '0', '0');
INSERT INTO `ecs_order_info` VALUES ('21', '2015082458210', '0', '0', '0', '0', 'dsdad', '1', '3', '38', '417', 'dsdadsadad', '3213', '13444442222', '13444442222', '497110669@qq.com', '', '', '', '6', '邮局平邮', '2', '银行汇款/转帐', '等待所有商品备齐后再发', '', '', '', '', '', '', '49.00', '3.50', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '52.50', '0', '本站', '1440369831', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0', '0', '0', '0', '0');
INSERT INTO `ecs_order_info` VALUES ('22', '2015082422669', '0', '0', '0', '0', 'dsdad', '1', '3', '37', '410', 'dsdadsadad', '3213', '13444442222', '13444442222', '497110669@qq.com', '', '', '', '6', '邮局平邮', '5', '快钱人民币网关', '等待所有商品备齐后再发', '', '', '', '', '', '', '129.00', '3.50', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '132.50', '0', '本站', '1440370023', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0', '0', '0', '0', '0');
INSERT INTO `ecs_order_info` VALUES ('23', '2015082412678', '0', '0', '0', '0', 'dsdad', '1', '3', '38', '418', 'dsdadsadad', '3213', '13444442222', '13444442222', '497110669@qq.com', '', '', '', '6', '邮局平邮', '2', '银行汇款/转帐', '等待所有商品备齐后再发', '', '', '', '', '', '', '99.00', '3.50', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '102.50', '0', '本站', '1440370377', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0', '0', '0', '0', '0');
INSERT INTO `ecs_order_info` VALUES ('24', '2015082421244', '0', '0', '0', '0', 'dsdad', '1', '3', '38', '418', 'dsdadsadad', '3213', '13444442222', '13444442222', '497110669@qq.com', '', '', '', '6', '邮局平邮', '4', '网银在线', '等待所有商品备齐后再发', '', '', '', '', '', '', '129.00', '3.50', '0.00', '1.34', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '133.84', '0', '本站', '1440370422', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0', '0', '0', '0', '0');
INSERT INTO `ecs_order_info` VALUES ('25', '2015082407547', '0', '0', '0', '0', 'dsdad', '1', '3', '38', '417', 'dsdadsadad', '3213', '13444442222', '13444442222', '497110669@qq.com', '', '', '', '5', '申通快递', '2', '银行汇款/转帐', '等待所有商品备齐后再发', '', '', '', '', '', '', '39.00', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '54.00', '0', '本站', '1440370573', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0', '0', '0', '0', '0');
INSERT INTO `ecs_order_info` VALUES ('26', '2015082459438', '0', '0', '0', '0', 'dsdad', '1', '3', '38', '420', 'dsdadsadad', '3213', '13444442222', '13444442222', '497110669@qq.com', '', '', '', '3', '城际快递', '2', '银行汇款/转帐', '等待所有商品备齐后再发', '', '', '', '', '', '', '39.00', '10.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '49.00', '0', '本站', '1440370609', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0', '0', '0', '0', '0');
INSERT INTO `ecs_order_info` VALUES ('27', '2015082426614', '0', '0', '0', '0', 'dsdad', '1', '3', '37', '410', 'dsdadsadad', '3213', '13444442222', '13444442222', '497110669@qq.com', '', '', '', '3', '城际快递', '5', '快钱人民币网关', '等待所有商品备齐后再发', '', '', '', '', '', '', '79.00', '10.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '89.00', '0', '本站', '1440370679', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0', '0', '0', '0', '0');
INSERT INTO `ecs_order_info` VALUES ('28', '2015082437190', '0', '0', '0', '0', 'dsdad', '1', '3', '38', '418', 'dsdadsadad', '3213', '13444442222', '13444442222', '497110669@qq.com', '', '', '', '7', '运费到付', '4', '网银在线', '等待所有商品备齐后再发', '', '', '', '', '', '', '79.00', '0.00', '0.00', '0.80', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '79.80', '0', '本站', '1440370715', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0', '0', '0', '0', '0');
INSERT INTO `ecs_order_info` VALUES ('29', '2015082477988', '0', '0', '0', '0', 'dsdad', '1', '3', '37', '409', 'dsdadsadad', '3213', '13444442222', '13444442222', '497110669@qq.com', '', '', '', '7', '运费到付', '6', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '129.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '129.00', '0', '本站', '1440371012', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0', '0', '0', '0', '0');
INSERT INTO `ecs_order_info` VALUES ('30', '2015082471687', '0', '0', '0', '0', 'dsdad', '1', '3', '39', '422', 'dsdadsadad', '3213', '13444442222', '13444442222', '497110669@qq.com', '', '', '', '10', '中通速递', '6', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '129.00', '10.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '139.00', '0', '本站', '1440371238', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0', '0', '0', '0', '0');
INSERT INTO `ecs_order_info` VALUES ('31', '2015082435476', '0', '0', '0', '0', 'dsdad', '1', '3', '37', '411', 'dsdadsadad', '3213', '13444442222', '13444442222', '497110669@qq.com', '', '', '', '7', '运费到付', '2', '银行汇款/转帐', '等待所有商品备齐后再发', '', '', '', '', '', '', '109.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '109.00', '0', '本站', '1440371357', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0', '0', '0', '0', '0');
INSERT INTO `ecs_order_info` VALUES ('32', '2015082437079', '0', '0', '0', '0', 'dsdad', '1', '3', '37', '409', 'dsdadsadad', '3213', '13444442222', '13444442222', '497110669@qq.com', '', '', '', '6', '邮局平邮', '6', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '79.00', '3.50', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '82.50', '0', '本站', '1440371387', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0', '0', '0', '0', '0');
INSERT INTO `ecs_order_info` VALUES ('33', '2015082428472', '0', '0', '0', '0', 'dsdad', '1', '3', '37', '409', 'dsdadsadad', '3213', '13444442222', '13444442222', '497110669@qq.com', '', '', '', '7', '运费到付', '6', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '129.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '129.00', '0', '本站', '1440371667', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0', '0', '0', '0', '0');
INSERT INTO `ecs_order_info` VALUES ('34', '2015082483641', '0', '0', '0', '0', 'dsdad', '1', '3', '37', '410', 'dsdadsadad', '3213', '13444442222', '13444442222', '497110669@qq.com', '', '', '', '7', '运费到付', '5', '快钱人民币网关', '等待所有商品备齐后再发', '', '', '', '', '', '', '129.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '129.00', '0', '本站', '1440371727', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0', '0', '0', '0', '0');
INSERT INTO `ecs_order_info` VALUES ('35', '2015082411884', '0', '0', '0', '0', 'dsdad', '1', '3', '37', '412', 'dsdadsadad', '3213', '13444442222', '13444442222', '497110669@qq.com', '', '', '', '3', '城际快递', '6', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '79.00', '10.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '89.00', '0', '本站', '1440371821', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0', '0', '0', '0', '0');
INSERT INTO `ecs_order_info` VALUES ('36', '2015082420880', '0', '0', '0', '0', 'dsdad', '1', '3', '37', '411', 'dsdadsadad', '3213', '13444442222', '13444442222', '497110669@qq.com', '', '', '', '7', '运费到付', '6', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '1299.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '1299.00', '0', '本站', '1440371928', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0', '0', '0', '0', '0');
INSERT INTO `ecs_order_info` VALUES ('37', '2015082465116', '0', '0', '0', '0', 'dsdad', '1', '3', '37', '409', 'dsdadsadad', '3213', '13444442222', '13444442222', '497110669@qq.com', '', '', '', '7', '运费到付', '4', '网银在线', '等待所有商品备齐后再发', '', '', '', '', '', '', '89.00', '0.00', '0.00', '0.90', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '89.90', '0', '本站', '1440371969', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0', '0', '0', '0', '0');
INSERT INTO `ecs_order_info` VALUES ('38', '2015082403059', '0', '0', '0', '0', 'dsdad', '1', '3', '37', '411', 'dsdadsadad', '3213', '13444442222', '13444442222', '497110669@qq.com', '', '', '', '7', '运费到付', '6', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '79.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '79.00', '0', '本站', '1440372066', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0', '0', '0', '0', '0');
INSERT INTO `ecs_order_info` VALUES ('39', '2015082675900', '16', '5', '1', '2', 'dsdad', '1', '3', '36', '400', 'dsdadsadad', '3213', '13444442222', '13444442222', '497110669@qq.com', '', '', '', '6', '邮局平邮', '6', '支付宝', '与店主协商', '', '', '', '', '', '', '1467.00', '3.50', '0.00', '0.00', '0.00', '0.00', '1470.50', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1440532305', '1441906303', '1441906307', '1441906327', '0', '0', '0', 'hgdgfdgfdg', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0', '0', '0', '0', '0');
INSERT INTO `ecs_order_info` VALUES ('40', '2015082830546', '16', '5', '1', '2', '聚会啊', '1', '3', '36', '400', 'dsdadsadad', '321322', '13444442222', '13444442222', '497110669@qq.com', '', '', '', '6', '邮局平邮', '6', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '服装', '258.00', '3.50', '0.00', '0.00', '0.00', '0.00', '265.37', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1440721143', '1441906209', '1441906214', '1441906236', '0', '0', '0', '231432535435345354', '', '0', '', '', '0', '2', '3.87', '0', '0', '0.00', '0', '0', '0', '0', '0');
INSERT INTO `ecs_order_info` VALUES ('41', '2015083176580', '16', '1', '3', '2', 'dsdad', '1', '3', '36', '400', 'dsdadsadad', '3213', '13444442222', '13444442222', '497110669@qq.com', '', '', '', '3', '城际快递', '5', '快钱人民币网关', '等待所有商品备齐后再发', '', '', '', '', '', '', '246420.00', '0.00', '0.00', '0.00', '0.00', '0.00', '246420.00', '0.00', '0', '0.00', '0.00', '0.00', '27', '本站', '1440976998', '1441906118', '1441906124', '0', '0', '0', '0', '', 'group_buy', '16', '', '', '0', '', '0.00', '0', '0', '0.00', '0', '0', '0', '0', '0');
INSERT INTO `ecs_order_info` VALUES ('42', '2015083129579', '16', '5', '1', '0', 'dsdad', '1', '3', '36', '400', 'dsdadsadad', '3213', '13444442222', '13444442222', '497110669@qq.com', '', '', '', '3', '城际快递', '3', '货到付款', '等待所有商品备齐后再发', '', '', '', '', '', '', '327.00', '10.00', '0.00', '5.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '342.00', '27', '本站', '1440977029', '1441906058', '0', '1441906074', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0', '0', '0', '0', '0');
INSERT INTO `ecs_order_info` VALUES ('43', '2015090636481', '0', '5', '1', '2', '讲话稿', '1', '3', '36', '399', '合肥话题，睡的地方，是否独生', '242421', '313213123213', '', 'kk4455@qq.com', '', '', '', '3', '城际快递', '4', '网银在线', '等待所有商品备齐后再发', '', '', '', '', '', '', '2096.00', '10.00', '0.00', '21.27', '0.00', '0.00', '2127.27', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1441475131', '1441833406', '1441833411', '1441833428', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0', '0', '0', '0', '0');
INSERT INTO `ecs_order_info` VALUES ('44', '2015090966609', '2', '5', '1', '2', '小明', '1', '3', '38', '417', '上海市普陀区金沙江路', '', '18655564452', '', 'vip@ecshop.com', '', '', '', '7', '运费到付', '2', '银行汇款/转帐', '等待所有商品备齐后再发', '', '', '', '', '', '', '299.00', '0.00', '0.00', '0.00', '0.00', '0.00', '299.00', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1441733719', '1441833359', '1441833367', '1441833387', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0', '0', '0', '0', '0');
INSERT INTO `ecs_order_info` VALUES ('45', '2015090922397', '2', '5', '1', '2', '小明', '1', '3', '38', '417', '上海市普陀区金沙江路', '', '18655564452', '', 'vip@ecshop.com', '', '', '', '7', '运费到付', '2', '银行汇款/转帐', '等待所有商品备齐后再发', '', '', '', '', '', '', '99.00', '0.00', '0.00', '0.00', '0.00', '0.00', '99.00', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1441733732', '1441822340', '1441823939', '1441823955', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0', '0', '0', '0', '0');
INSERT INTO `ecs_order_info` VALUES ('46', '2015092582989', '0', '0', '0', '0', '12', '1', '3', '36', '399', '12', '', '', '121212121212', '', '', '', '', '3', '城际快递', '6', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '387.00', '10.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '397.00', '0', '', '1443136050', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '办公用品', '0.00', '0', '0', '0.00', '0', '1', '0', '0', '0');
INSERT INTO `ecs_order_info` VALUES ('47', '2015121305338', '1', '0', '0', '0', '刘先生', '1', '2', '52', '502', '海兴大厦', '', '010-25851234', '13986765412', 'ecshop@ecshop.com', '', '', '', '10', '中通速递', '6', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '128.00', '10.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '138.00', '0', '本站', '1450021993', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `ecs_pack`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_pack`;
CREATE TABLE `ecs_pack` (
  `pack_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `pack_name` varchar(120) NOT NULL DEFAULT '',
  `pack_img` varchar(255) NOT NULL DEFAULT '',
  `pack_fee` decimal(6,2) unsigned NOT NULL DEFAULT '0.00',
  `free_money` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pack_desc` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`pack_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_pack
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_package_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_package_goods`;
CREATE TABLE `ecs_package_goods` (
  `package_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '1',
  `admin_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`package_id`,`goods_id`,`admin_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_package_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_payment`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_payment`;
CREATE TABLE `ecs_payment` (
  `pay_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `pay_code` varchar(20) NOT NULL DEFAULT '',
  `pay_name` varchar(120) NOT NULL DEFAULT '',
  `pay_fee` varchar(10) NOT NULL DEFAULT '0',
  `pay_desc` text NOT NULL,
  `pay_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `pay_config` text NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_cod` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_online` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pay_id`),
  UNIQUE KEY `pay_code` (`pay_code`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_payment
-- ----------------------------
INSERT INTO `ecs_payment` VALUES ('1', 'balance', '余额支付', '0', '使用帐户余额支付。只有会员才能使用，通过设置信用额度，可以透支。', '0', 'a:0:{}', '1', '0', '1');
INSERT INTO `ecs_payment` VALUES ('2', 'bank', '银行汇款/转帐', '0', '银行名称\n收款人信息：全称 ××× ；帐号或地址 ××× ；开户行 ×××。\n注意事项：办理电汇时，请在电汇单“汇款用途”一栏处注明您的订单号。', '0', 'a:0:{}', '1', '0', '0');
INSERT INTO `ecs_payment` VALUES ('3', 'cod', '货到付款', '0', '开通城市：×××\n货到付款区域：×××', '0', 'a:0:{}', '1', '1', '0');
INSERT INTO `ecs_payment` VALUES ('4', 'chinabank', '网银在线', '1%', '网银在线（www.chinabank.com.cn）与中国工商银行、招商银行、中国建设银行、农业银行、民生银行等数十家金融机构达成协议。全面支持全国19家银行的信用卡及借记卡实现网上支付。<br/><a href=\"http://cloud.ecshop.com/payment_apply.php?mod=chinabank\" target=\"_blank\">立即在线申请</a>', '0', 'a:2:{i:0;a:3:{s:4:\"name\";s:17:\"chinabank_account\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}i:1;a:3:{s:4:\"name\";s:13:\"chinabank_key\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}}', '1', '0', '1');
INSERT INTO `ecs_payment` VALUES ('5', 'kuaiqian', '快钱人民币网关', '0', '快钱是国内领先的独立第三方支付企业，旨在为各类企业及个人提供安全、便捷和保密的支付清算与账务服务，其推出的支付产品包括但不限于人民币支付，外卡支付，神州行卡支付，联通充值卡支付，VPOS支付等众多支付产品, 支持互联网、手机、电话和POS等多种终端, 以满足各类企业和个人的不同支付需求。截至2009年6月30日，快钱已拥有4100万注册用户和逾31万商业合作伙伴，并荣获中国信息安全产品测评认证中心颁发的“支付清算系统安全技术保障级一级”认证证书和国际PCI安全认证。<br/><a href=\"send.php\" target=\"_blank\"><font color=\"red\">点此链接在线签约快钱</font></a>', '0', 'a:2:{i:0;a:3:{s:4:\"name\";s:10:\"kq_account\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}i:1;a:3:{s:4:\"name\";s:6:\"kq_key\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}}', '1', '0', '1');
INSERT INTO `ecs_payment` VALUES ('6', 'alipay', '支付宝', '0', '支付宝网站(www.alipay.com) 是国内先进的网上支付平台。<br/>支付宝收款接口：在线即可开通，<font color=\"red\"><b>零预付，免年费</b></font>，单笔阶梯费率，无流量限制。<br/><a href=\"http://cloud.ecshop.com/payment_apply.php?mod=alipay\" target=\"_blank\"><font color=\"red\">立即在线申请</font></a>', '0', 'a:4:{i:0;a:3:{s:4:\"name\";s:14:\"alipay_account\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}i:1;a:3:{s:4:\"name\";s:10:\"alipay_key\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}i:2;a:3:{s:4:\"name\";s:14:\"alipay_partner\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}i:3;a:3:{s:4:\"name\";s:17:\"alipay_pay_method\";s:4:\"type\";s:6:\"select\";s:5:\"value\";s:1:\"0\";}}', '1', '0', '1');

-- ----------------------------
-- Table structure for `ecs_pay_log`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_pay_log`;
CREATE TABLE `ecs_pay_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `order_amount` decimal(10,2) unsigned NOT NULL,
  `order_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_paid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_pay_log
-- ----------------------------
INSERT INTO `ecs_pay_log` VALUES ('1', '1', '0.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('2', '2', '503.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('3', '3', '8097.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('4', '4', '4998.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('5', '5', '0.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('6', '6', '35.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('7', '7', '2198.10', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('8', '8', '638.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('9', '9', '2015.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('10', '10', '0.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('11', '11', '3810.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('12', '12', '253.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('13', '13', '975.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('14', '14', '0.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('15', '15', '17054.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('16', '16', '0.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('17', '17', '0.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('18', '18', '0.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('19', '20', '1401.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('20', '21', '327.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('21', '22', '124.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('22', '1', '2214.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('23', '2', '0.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('24', '3', '0.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('25', '4', '0.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('26', '5', '88249.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('27', '6', '26488.70', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('28', '7', '963.10', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('29', '8', '2209.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('30', '1', '451.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('31', '2', '2014.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('32', '3', '144.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('33', '4', '331.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('34', '5', '2463.64', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('35', '6', '139.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('36', '7', '94.95', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('37', '8', '139.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('38', '9', '109.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('39', '10', '109.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('40', '11', '132.50', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('41', '12', '132.50', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('42', '13', '52.50', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('43', '14', '129.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('44', '15', '132.50', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('45', '16', '1302.50', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('46', '17', '112.50', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('47', '18', '132.50', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('48', '19', '1309.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('49', '20', '1302.50', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('50', '21', '52.50', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('51', '22', '132.50', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('52', '23', '102.50', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('53', '24', '133.84', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('54', '25', '54.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('55', '26', '49.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('56', '27', '89.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('57', '28', '79.80', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('58', '29', '129.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('59', '30', '139.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('60', '31', '109.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('61', '32', '82.50', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('62', '33', '129.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('63', '34', '129.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('64', '35', '89.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('65', '36', '1299.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('66', '37', '89.90', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('67', '38', '79.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('68', '39', '1470.50', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('69', '40', '265.37', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('70', '41', '246420.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('71', '42', '342.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('72', '43', '2127.27', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('73', '44', '299.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('74', '45', '99.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('75', '46', '397.00', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('76', '47', '138.00', '0', '0');

-- ----------------------------
-- Table structure for `ecs_plugins`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_plugins`;
CREATE TABLE `ecs_plugins` (
  `code` varchar(30) NOT NULL DEFAULT '',
  `version` varchar(10) NOT NULL DEFAULT '',
  `library` varchar(255) NOT NULL DEFAULT '',
  `assign` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `install_date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_plugins
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_products`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_products`;
CREATE TABLE `ecs_products` (
  `product_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_attr` varchar(50) DEFAULT NULL,
  `product_sn` varchar(60) DEFAULT NULL,
  `product_number` smallint(5) unsigned DEFAULT '0',
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_products
-- ----------------------------
INSERT INTO `ecs_products` VALUES ('1', '32', '163', '', '100');
INSERT INTO `ecs_products` VALUES ('21', '39', '49|50', 'ECS000039g_p21', '10000');
INSERT INTO `ecs_products` VALUES ('22', '39', '48|51', 'ECS000039g_p22', '10000');
INSERT INTO `ecs_products` VALUES ('23', '39', '48|52', 'ECS000039g_p23', '10000');
INSERT INTO `ecs_products` VALUES ('24', '39', '49|51', 'ECS000039g_p24', '10000');
INSERT INTO `ecs_products` VALUES ('25', '39', '49|52', 'ECS000039g_p25', '10000');
INSERT INTO `ecs_products` VALUES ('26', '39', '48|50', 'ECS000039g_p26', '10000');

-- ----------------------------
-- Table structure for `ecs_region`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_region`;
CREATE TABLE `ecs_region` (
  `region_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `region_name` varchar(120) NOT NULL DEFAULT '',
  `region_type` tinyint(1) NOT NULL DEFAULT '2',
  `agency_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`region_id`),
  KEY `parent_id` (`parent_id`),
  KEY `region_type` (`region_type`),
  KEY `agency_id` (`agency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3409 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_region
-- ----------------------------
INSERT INTO `ecs_region` VALUES ('1', '0', '中国', '0', '0');
INSERT INTO `ecs_region` VALUES ('2', '1', '北京', '1', '0');
INSERT INTO `ecs_region` VALUES ('3', '1', '安徽', '1', '0');
INSERT INTO `ecs_region` VALUES ('4', '1', '福建', '1', '0');
INSERT INTO `ecs_region` VALUES ('5', '1', '甘肃', '1', '0');
INSERT INTO `ecs_region` VALUES ('6', '1', '广东', '1', '0');
INSERT INTO `ecs_region` VALUES ('7', '1', '广西', '1', '0');
INSERT INTO `ecs_region` VALUES ('8', '1', '贵州', '1', '0');
INSERT INTO `ecs_region` VALUES ('9', '1', '海南', '1', '0');
INSERT INTO `ecs_region` VALUES ('10', '1', '河北', '1', '0');
INSERT INTO `ecs_region` VALUES ('11', '1', '河南', '1', '0');
INSERT INTO `ecs_region` VALUES ('12', '1', '黑龙江', '1', '0');
INSERT INTO `ecs_region` VALUES ('13', '1', '湖北', '1', '0');
INSERT INTO `ecs_region` VALUES ('14', '1', '湖南', '1', '0');
INSERT INTO `ecs_region` VALUES ('15', '1', '吉林', '1', '0');
INSERT INTO `ecs_region` VALUES ('16', '1', '江苏', '1', '0');
INSERT INTO `ecs_region` VALUES ('17', '1', '江西', '1', '0');
INSERT INTO `ecs_region` VALUES ('18', '1', '辽宁', '1', '0');
INSERT INTO `ecs_region` VALUES ('19', '1', '内蒙古', '1', '0');
INSERT INTO `ecs_region` VALUES ('20', '1', '宁夏', '1', '0');
INSERT INTO `ecs_region` VALUES ('21', '1', '青海', '1', '0');
INSERT INTO `ecs_region` VALUES ('22', '1', '山东', '1', '0');
INSERT INTO `ecs_region` VALUES ('23', '1', '山西', '1', '0');
INSERT INTO `ecs_region` VALUES ('24', '1', '陕西', '1', '0');
INSERT INTO `ecs_region` VALUES ('25', '1', '上海', '1', '0');
INSERT INTO `ecs_region` VALUES ('26', '1', '四川', '1', '0');
INSERT INTO `ecs_region` VALUES ('27', '1', '天津', '1', '0');
INSERT INTO `ecs_region` VALUES ('28', '1', '西藏', '1', '0');
INSERT INTO `ecs_region` VALUES ('29', '1', '新疆', '1', '0');
INSERT INTO `ecs_region` VALUES ('30', '1', '云南', '1', '0');
INSERT INTO `ecs_region` VALUES ('31', '1', '浙江', '1', '0');
INSERT INTO `ecs_region` VALUES ('32', '1', '重庆', '1', '0');
INSERT INTO `ecs_region` VALUES ('33', '1', '香港', '1', '0');
INSERT INTO `ecs_region` VALUES ('34', '1', '澳门', '1', '0');
INSERT INTO `ecs_region` VALUES ('35', '1', '台湾', '1', '0');
INSERT INTO `ecs_region` VALUES ('36', '3', '安庆', '2', '0');
INSERT INTO `ecs_region` VALUES ('37', '3', '蚌埠', '2', '0');
INSERT INTO `ecs_region` VALUES ('38', '3', '巢湖', '2', '0');
INSERT INTO `ecs_region` VALUES ('39', '3', '池州', '2', '0');
INSERT INTO `ecs_region` VALUES ('40', '3', '滁州', '2', '0');
INSERT INTO `ecs_region` VALUES ('41', '3', '阜阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('42', '3', '淮北', '2', '0');
INSERT INTO `ecs_region` VALUES ('43', '3', '淮南', '2', '0');
INSERT INTO `ecs_region` VALUES ('44', '3', '黄山', '2', '0');
INSERT INTO `ecs_region` VALUES ('45', '3', '六安', '2', '0');
INSERT INTO `ecs_region` VALUES ('46', '3', '马鞍山', '2', '0');
INSERT INTO `ecs_region` VALUES ('47', '3', '宿州', '2', '0');
INSERT INTO `ecs_region` VALUES ('48', '3', '铜陵', '2', '0');
INSERT INTO `ecs_region` VALUES ('49', '3', '芜湖', '2', '0');
INSERT INTO `ecs_region` VALUES ('50', '3', '宣城', '2', '0');
INSERT INTO `ecs_region` VALUES ('51', '3', '亳州', '2', '0');
INSERT INTO `ecs_region` VALUES ('52', '2', '北京', '2', '0');
INSERT INTO `ecs_region` VALUES ('53', '4', '福州', '2', '0');
INSERT INTO `ecs_region` VALUES ('54', '4', '龙岩', '2', '0');
INSERT INTO `ecs_region` VALUES ('55', '4', '南平', '2', '0');
INSERT INTO `ecs_region` VALUES ('56', '4', '宁德', '2', '0');
INSERT INTO `ecs_region` VALUES ('57', '4', '莆田', '2', '0');
INSERT INTO `ecs_region` VALUES ('58', '4', '泉州', '2', '0');
INSERT INTO `ecs_region` VALUES ('59', '4', '三明', '2', '0');
INSERT INTO `ecs_region` VALUES ('60', '4', '厦门', '2', '0');
INSERT INTO `ecs_region` VALUES ('61', '4', '漳州', '2', '0');
INSERT INTO `ecs_region` VALUES ('62', '5', '兰州', '2', '0');
INSERT INTO `ecs_region` VALUES ('63', '5', '白银', '2', '0');
INSERT INTO `ecs_region` VALUES ('64', '5', '定西', '2', '0');
INSERT INTO `ecs_region` VALUES ('65', '5', '甘南', '2', '0');
INSERT INTO `ecs_region` VALUES ('66', '5', '嘉峪关', '2', '0');
INSERT INTO `ecs_region` VALUES ('67', '5', '金昌', '2', '0');
INSERT INTO `ecs_region` VALUES ('68', '5', '酒泉', '2', '0');
INSERT INTO `ecs_region` VALUES ('69', '5', '临夏', '2', '0');
INSERT INTO `ecs_region` VALUES ('70', '5', '陇南', '2', '0');
INSERT INTO `ecs_region` VALUES ('71', '5', '平凉', '2', '0');
INSERT INTO `ecs_region` VALUES ('72', '5', '庆阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('73', '5', '天水', '2', '0');
INSERT INTO `ecs_region` VALUES ('74', '5', '武威', '2', '0');
INSERT INTO `ecs_region` VALUES ('75', '5', '张掖', '2', '0');
INSERT INTO `ecs_region` VALUES ('76', '6', '广州', '2', '0');
INSERT INTO `ecs_region` VALUES ('77', '6', '深圳', '2', '0');
INSERT INTO `ecs_region` VALUES ('78', '6', '潮州', '2', '0');
INSERT INTO `ecs_region` VALUES ('79', '6', '东莞', '2', '0');
INSERT INTO `ecs_region` VALUES ('80', '6', '佛山', '2', '0');
INSERT INTO `ecs_region` VALUES ('81', '6', '河源', '2', '0');
INSERT INTO `ecs_region` VALUES ('82', '6', '惠州', '2', '0');
INSERT INTO `ecs_region` VALUES ('83', '6', '江门', '2', '0');
INSERT INTO `ecs_region` VALUES ('84', '6', '揭阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('85', '6', '茂名', '2', '0');
INSERT INTO `ecs_region` VALUES ('86', '6', '梅州', '2', '0');
INSERT INTO `ecs_region` VALUES ('87', '6', '清远', '2', '0');
INSERT INTO `ecs_region` VALUES ('88', '6', '汕头', '2', '0');
INSERT INTO `ecs_region` VALUES ('89', '6', '汕尾', '2', '0');
INSERT INTO `ecs_region` VALUES ('90', '6', '韶关', '2', '0');
INSERT INTO `ecs_region` VALUES ('91', '6', '阳江', '2', '0');
INSERT INTO `ecs_region` VALUES ('92', '6', '云浮', '2', '0');
INSERT INTO `ecs_region` VALUES ('93', '6', '湛江', '2', '0');
INSERT INTO `ecs_region` VALUES ('94', '6', '肇庆', '2', '0');
INSERT INTO `ecs_region` VALUES ('95', '6', '中山', '2', '0');
INSERT INTO `ecs_region` VALUES ('96', '6', '珠海', '2', '0');
INSERT INTO `ecs_region` VALUES ('97', '7', '南宁', '2', '0');
INSERT INTO `ecs_region` VALUES ('98', '7', '桂林', '2', '0');
INSERT INTO `ecs_region` VALUES ('99', '7', '百色', '2', '0');
INSERT INTO `ecs_region` VALUES ('100', '7', '北海', '2', '0');
INSERT INTO `ecs_region` VALUES ('101', '7', '崇左', '2', '0');
INSERT INTO `ecs_region` VALUES ('102', '7', '防城港', '2', '0');
INSERT INTO `ecs_region` VALUES ('103', '7', '贵港', '2', '0');
INSERT INTO `ecs_region` VALUES ('104', '7', '河池', '2', '0');
INSERT INTO `ecs_region` VALUES ('105', '7', '贺州', '2', '0');
INSERT INTO `ecs_region` VALUES ('106', '7', '来宾', '2', '0');
INSERT INTO `ecs_region` VALUES ('107', '7', '柳州', '2', '0');
INSERT INTO `ecs_region` VALUES ('108', '7', '钦州', '2', '0');
INSERT INTO `ecs_region` VALUES ('109', '7', '梧州', '2', '0');
INSERT INTO `ecs_region` VALUES ('110', '7', '玉林', '2', '0');
INSERT INTO `ecs_region` VALUES ('111', '8', '贵阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('112', '8', '安顺', '2', '0');
INSERT INTO `ecs_region` VALUES ('113', '8', '毕节', '2', '0');
INSERT INTO `ecs_region` VALUES ('114', '8', '六盘水', '2', '0');
INSERT INTO `ecs_region` VALUES ('115', '8', '黔东南', '2', '0');
INSERT INTO `ecs_region` VALUES ('116', '8', '黔南', '2', '0');
INSERT INTO `ecs_region` VALUES ('117', '8', '黔西南', '2', '0');
INSERT INTO `ecs_region` VALUES ('118', '8', '铜仁', '2', '0');
INSERT INTO `ecs_region` VALUES ('119', '8', '遵义', '2', '0');
INSERT INTO `ecs_region` VALUES ('120', '9', '海口', '2', '0');
INSERT INTO `ecs_region` VALUES ('121', '9', '三亚', '2', '0');
INSERT INTO `ecs_region` VALUES ('122', '9', '白沙', '2', '0');
INSERT INTO `ecs_region` VALUES ('123', '9', '保亭', '2', '0');
INSERT INTO `ecs_region` VALUES ('124', '9', '昌江', '2', '0');
INSERT INTO `ecs_region` VALUES ('125', '9', '澄迈县', '2', '0');
INSERT INTO `ecs_region` VALUES ('126', '9', '定安县', '2', '0');
INSERT INTO `ecs_region` VALUES ('127', '9', '东方', '2', '0');
INSERT INTO `ecs_region` VALUES ('128', '9', '乐东', '2', '0');
INSERT INTO `ecs_region` VALUES ('129', '9', '临高县', '2', '0');
INSERT INTO `ecs_region` VALUES ('130', '9', '陵水', '2', '0');
INSERT INTO `ecs_region` VALUES ('131', '9', '琼海', '2', '0');
INSERT INTO `ecs_region` VALUES ('132', '9', '琼中', '2', '0');
INSERT INTO `ecs_region` VALUES ('133', '9', '屯昌县', '2', '0');
INSERT INTO `ecs_region` VALUES ('134', '9', '万宁', '2', '0');
INSERT INTO `ecs_region` VALUES ('135', '9', '文昌', '2', '0');
INSERT INTO `ecs_region` VALUES ('136', '9', '五指山', '2', '0');
INSERT INTO `ecs_region` VALUES ('137', '9', '儋州', '2', '0');
INSERT INTO `ecs_region` VALUES ('138', '10', '石家庄', '2', '0');
INSERT INTO `ecs_region` VALUES ('139', '10', '保定', '2', '0');
INSERT INTO `ecs_region` VALUES ('140', '10', '沧州', '2', '0');
INSERT INTO `ecs_region` VALUES ('141', '10', '承德', '2', '0');
INSERT INTO `ecs_region` VALUES ('142', '10', '邯郸', '2', '0');
INSERT INTO `ecs_region` VALUES ('143', '10', '衡水', '2', '0');
INSERT INTO `ecs_region` VALUES ('144', '10', '廊坊', '2', '0');
INSERT INTO `ecs_region` VALUES ('145', '10', '秦皇岛', '2', '0');
INSERT INTO `ecs_region` VALUES ('146', '10', '唐山', '2', '0');
INSERT INTO `ecs_region` VALUES ('147', '10', '邢台', '2', '0');
INSERT INTO `ecs_region` VALUES ('148', '10', '张家口', '2', '0');
INSERT INTO `ecs_region` VALUES ('149', '11', '郑州', '2', '0');
INSERT INTO `ecs_region` VALUES ('150', '11', '洛阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('151', '11', '开封', '2', '0');
INSERT INTO `ecs_region` VALUES ('152', '11', '安阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('153', '11', '鹤壁', '2', '0');
INSERT INTO `ecs_region` VALUES ('154', '11', '济源', '2', '0');
INSERT INTO `ecs_region` VALUES ('155', '11', '焦作', '2', '0');
INSERT INTO `ecs_region` VALUES ('156', '11', '南阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('157', '11', '平顶山', '2', '0');
INSERT INTO `ecs_region` VALUES ('158', '11', '三门峡', '2', '0');
INSERT INTO `ecs_region` VALUES ('159', '11', '商丘', '2', '0');
INSERT INTO `ecs_region` VALUES ('160', '11', '新乡', '2', '0');
INSERT INTO `ecs_region` VALUES ('161', '11', '信阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('162', '11', '许昌', '2', '0');
INSERT INTO `ecs_region` VALUES ('163', '11', '周口', '2', '0');
INSERT INTO `ecs_region` VALUES ('164', '11', '驻马店', '2', '0');
INSERT INTO `ecs_region` VALUES ('165', '11', '漯河', '2', '0');
INSERT INTO `ecs_region` VALUES ('166', '11', '濮阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('167', '12', '哈尔滨', '2', '0');
INSERT INTO `ecs_region` VALUES ('168', '12', '大庆', '2', '0');
INSERT INTO `ecs_region` VALUES ('169', '12', '大兴安岭', '2', '0');
INSERT INTO `ecs_region` VALUES ('170', '12', '鹤岗', '2', '0');
INSERT INTO `ecs_region` VALUES ('171', '12', '黑河', '2', '0');
INSERT INTO `ecs_region` VALUES ('172', '12', '鸡西', '2', '0');
INSERT INTO `ecs_region` VALUES ('173', '12', '佳木斯', '2', '0');
INSERT INTO `ecs_region` VALUES ('174', '12', '牡丹江', '2', '0');
INSERT INTO `ecs_region` VALUES ('175', '12', '七台河', '2', '0');
INSERT INTO `ecs_region` VALUES ('176', '12', '齐齐哈尔', '2', '0');
INSERT INTO `ecs_region` VALUES ('177', '12', '双鸭山', '2', '0');
INSERT INTO `ecs_region` VALUES ('178', '12', '绥化', '2', '0');
INSERT INTO `ecs_region` VALUES ('179', '12', '伊春', '2', '0');
INSERT INTO `ecs_region` VALUES ('180', '13', '武汉', '2', '0');
INSERT INTO `ecs_region` VALUES ('181', '13', '仙桃', '2', '0');
INSERT INTO `ecs_region` VALUES ('182', '13', '鄂州', '2', '0');
INSERT INTO `ecs_region` VALUES ('183', '13', '黄冈', '2', '0');
INSERT INTO `ecs_region` VALUES ('184', '13', '黄石', '2', '0');
INSERT INTO `ecs_region` VALUES ('185', '13', '荆门', '2', '0');
INSERT INTO `ecs_region` VALUES ('186', '13', '荆州', '2', '0');
INSERT INTO `ecs_region` VALUES ('187', '13', '潜江', '2', '0');
INSERT INTO `ecs_region` VALUES ('188', '13', '神农架林区', '2', '0');
INSERT INTO `ecs_region` VALUES ('189', '13', '十堰', '2', '0');
INSERT INTO `ecs_region` VALUES ('190', '13', '随州', '2', '0');
INSERT INTO `ecs_region` VALUES ('191', '13', '天门', '2', '0');
INSERT INTO `ecs_region` VALUES ('192', '13', '咸宁', '2', '0');
INSERT INTO `ecs_region` VALUES ('193', '13', '襄樊', '2', '0');
INSERT INTO `ecs_region` VALUES ('194', '13', '孝感', '2', '0');
INSERT INTO `ecs_region` VALUES ('195', '13', '宜昌', '2', '0');
INSERT INTO `ecs_region` VALUES ('196', '13', '恩施', '2', '0');
INSERT INTO `ecs_region` VALUES ('197', '14', '长沙', '2', '0');
INSERT INTO `ecs_region` VALUES ('198', '14', '张家界', '2', '0');
INSERT INTO `ecs_region` VALUES ('199', '14', '常德', '2', '0');
INSERT INTO `ecs_region` VALUES ('200', '14', '郴州', '2', '0');
INSERT INTO `ecs_region` VALUES ('201', '14', '衡阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('202', '14', '怀化', '2', '0');
INSERT INTO `ecs_region` VALUES ('203', '14', '娄底', '2', '0');
INSERT INTO `ecs_region` VALUES ('204', '14', '邵阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('205', '14', '湘潭', '2', '0');
INSERT INTO `ecs_region` VALUES ('206', '14', '湘西', '2', '0');
INSERT INTO `ecs_region` VALUES ('207', '14', '益阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('208', '14', '永州', '2', '0');
INSERT INTO `ecs_region` VALUES ('209', '14', '岳阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('210', '14', '株洲', '2', '0');
INSERT INTO `ecs_region` VALUES ('211', '15', '长春', '2', '0');
INSERT INTO `ecs_region` VALUES ('212', '15', '吉林', '2', '0');
INSERT INTO `ecs_region` VALUES ('213', '15', '白城', '2', '0');
INSERT INTO `ecs_region` VALUES ('214', '15', '白山', '2', '0');
INSERT INTO `ecs_region` VALUES ('215', '15', '辽源', '2', '0');
INSERT INTO `ecs_region` VALUES ('216', '15', '四平', '2', '0');
INSERT INTO `ecs_region` VALUES ('217', '15', '松原', '2', '0');
INSERT INTO `ecs_region` VALUES ('218', '15', '通化', '2', '0');
INSERT INTO `ecs_region` VALUES ('219', '15', '延边', '2', '0');
INSERT INTO `ecs_region` VALUES ('220', '16', '南京', '2', '0');
INSERT INTO `ecs_region` VALUES ('221', '16', '苏州', '2', '0');
INSERT INTO `ecs_region` VALUES ('222', '16', '无锡', '2', '0');
INSERT INTO `ecs_region` VALUES ('223', '16', '常州', '2', '0');
INSERT INTO `ecs_region` VALUES ('224', '16', '淮安', '2', '0');
INSERT INTO `ecs_region` VALUES ('225', '16', '连云港', '2', '0');
INSERT INTO `ecs_region` VALUES ('226', '16', '南通', '2', '0');
INSERT INTO `ecs_region` VALUES ('227', '16', '宿迁', '2', '0');
INSERT INTO `ecs_region` VALUES ('228', '16', '泰州', '2', '0');
INSERT INTO `ecs_region` VALUES ('229', '16', '徐州', '2', '0');
INSERT INTO `ecs_region` VALUES ('230', '16', '盐城', '2', '0');
INSERT INTO `ecs_region` VALUES ('231', '16', '扬州', '2', '0');
INSERT INTO `ecs_region` VALUES ('232', '16', '镇江', '2', '0');
INSERT INTO `ecs_region` VALUES ('233', '17', '南昌', '2', '0');
INSERT INTO `ecs_region` VALUES ('234', '17', '抚州', '2', '0');
INSERT INTO `ecs_region` VALUES ('235', '17', '赣州', '2', '0');
INSERT INTO `ecs_region` VALUES ('236', '17', '吉安', '2', '0');
INSERT INTO `ecs_region` VALUES ('237', '17', '景德镇', '2', '0');
INSERT INTO `ecs_region` VALUES ('238', '17', '九江', '2', '0');
INSERT INTO `ecs_region` VALUES ('239', '17', '萍乡', '2', '0');
INSERT INTO `ecs_region` VALUES ('240', '17', '上饶', '2', '0');
INSERT INTO `ecs_region` VALUES ('241', '17', '新余', '2', '0');
INSERT INTO `ecs_region` VALUES ('242', '17', '宜春', '2', '0');
INSERT INTO `ecs_region` VALUES ('243', '17', '鹰潭', '2', '0');
INSERT INTO `ecs_region` VALUES ('244', '18', '沈阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('245', '18', '大连', '2', '0');
INSERT INTO `ecs_region` VALUES ('246', '18', '鞍山', '2', '0');
INSERT INTO `ecs_region` VALUES ('247', '18', '本溪', '2', '0');
INSERT INTO `ecs_region` VALUES ('248', '18', '朝阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('249', '18', '丹东', '2', '0');
INSERT INTO `ecs_region` VALUES ('250', '18', '抚顺', '2', '0');
INSERT INTO `ecs_region` VALUES ('251', '18', '阜新', '2', '0');
INSERT INTO `ecs_region` VALUES ('252', '18', '葫芦岛', '2', '0');
INSERT INTO `ecs_region` VALUES ('253', '18', '锦州', '2', '0');
INSERT INTO `ecs_region` VALUES ('254', '18', '辽阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('255', '18', '盘锦', '2', '0');
INSERT INTO `ecs_region` VALUES ('256', '18', '铁岭', '2', '0');
INSERT INTO `ecs_region` VALUES ('257', '18', '营口', '2', '0');
INSERT INTO `ecs_region` VALUES ('258', '19', '呼和浩特', '2', '0');
INSERT INTO `ecs_region` VALUES ('259', '19', '阿拉善盟', '2', '0');
INSERT INTO `ecs_region` VALUES ('260', '19', '巴彦淖尔盟', '2', '0');
INSERT INTO `ecs_region` VALUES ('261', '19', '包头', '2', '0');
INSERT INTO `ecs_region` VALUES ('262', '19', '赤峰', '2', '0');
INSERT INTO `ecs_region` VALUES ('263', '19', '鄂尔多斯', '2', '0');
INSERT INTO `ecs_region` VALUES ('264', '19', '呼伦贝尔', '2', '0');
INSERT INTO `ecs_region` VALUES ('265', '19', '通辽', '2', '0');
INSERT INTO `ecs_region` VALUES ('266', '19', '乌海', '2', '0');
INSERT INTO `ecs_region` VALUES ('267', '19', '乌兰察布市', '2', '0');
INSERT INTO `ecs_region` VALUES ('268', '19', '锡林郭勒盟', '2', '0');
INSERT INTO `ecs_region` VALUES ('269', '19', '兴安盟', '2', '0');
INSERT INTO `ecs_region` VALUES ('270', '20', '银川', '2', '0');
INSERT INTO `ecs_region` VALUES ('271', '20', '固原', '2', '0');
INSERT INTO `ecs_region` VALUES ('272', '20', '石嘴山', '2', '0');
INSERT INTO `ecs_region` VALUES ('273', '20', '吴忠', '2', '0');
INSERT INTO `ecs_region` VALUES ('274', '20', '中卫', '2', '0');
INSERT INTO `ecs_region` VALUES ('275', '21', '西宁', '2', '0');
INSERT INTO `ecs_region` VALUES ('276', '21', '果洛', '2', '0');
INSERT INTO `ecs_region` VALUES ('277', '21', '海北', '2', '0');
INSERT INTO `ecs_region` VALUES ('278', '21', '海东', '2', '0');
INSERT INTO `ecs_region` VALUES ('279', '21', '海南', '2', '0');
INSERT INTO `ecs_region` VALUES ('280', '21', '海西', '2', '0');
INSERT INTO `ecs_region` VALUES ('281', '21', '黄南', '2', '0');
INSERT INTO `ecs_region` VALUES ('282', '21', '玉树', '2', '0');
INSERT INTO `ecs_region` VALUES ('283', '22', '济南', '2', '0');
INSERT INTO `ecs_region` VALUES ('284', '22', '青岛', '2', '0');
INSERT INTO `ecs_region` VALUES ('285', '22', '滨州', '2', '0');
INSERT INTO `ecs_region` VALUES ('286', '22', '德州', '2', '0');
INSERT INTO `ecs_region` VALUES ('287', '22', '东营', '2', '0');
INSERT INTO `ecs_region` VALUES ('288', '22', '菏泽', '2', '0');
INSERT INTO `ecs_region` VALUES ('289', '22', '济宁', '2', '0');
INSERT INTO `ecs_region` VALUES ('290', '22', '莱芜', '2', '0');
INSERT INTO `ecs_region` VALUES ('291', '22', '聊城', '2', '0');
INSERT INTO `ecs_region` VALUES ('292', '22', '临沂', '2', '0');
INSERT INTO `ecs_region` VALUES ('293', '22', '日照', '2', '0');
INSERT INTO `ecs_region` VALUES ('294', '22', '泰安', '2', '0');
INSERT INTO `ecs_region` VALUES ('295', '22', '威海', '2', '0');
INSERT INTO `ecs_region` VALUES ('296', '22', '潍坊', '2', '0');
INSERT INTO `ecs_region` VALUES ('297', '22', '烟台', '2', '0');
INSERT INTO `ecs_region` VALUES ('298', '22', '枣庄', '2', '0');
INSERT INTO `ecs_region` VALUES ('299', '22', '淄博', '2', '0');
INSERT INTO `ecs_region` VALUES ('300', '23', '太原', '2', '0');
INSERT INTO `ecs_region` VALUES ('301', '23', '长治', '2', '0');
INSERT INTO `ecs_region` VALUES ('302', '23', '大同', '2', '0');
INSERT INTO `ecs_region` VALUES ('303', '23', '晋城', '2', '0');
INSERT INTO `ecs_region` VALUES ('304', '23', '晋中', '2', '0');
INSERT INTO `ecs_region` VALUES ('305', '23', '临汾', '2', '0');
INSERT INTO `ecs_region` VALUES ('306', '23', '吕梁', '2', '0');
INSERT INTO `ecs_region` VALUES ('307', '23', '朔州', '2', '0');
INSERT INTO `ecs_region` VALUES ('308', '23', '忻州', '2', '0');
INSERT INTO `ecs_region` VALUES ('309', '23', '阳泉', '2', '0');
INSERT INTO `ecs_region` VALUES ('310', '23', '运城', '2', '0');
INSERT INTO `ecs_region` VALUES ('311', '24', '西安', '2', '0');
INSERT INTO `ecs_region` VALUES ('312', '24', '安康', '2', '0');
INSERT INTO `ecs_region` VALUES ('313', '24', '宝鸡', '2', '0');
INSERT INTO `ecs_region` VALUES ('314', '24', '汉中', '2', '0');
INSERT INTO `ecs_region` VALUES ('315', '24', '商洛', '2', '0');
INSERT INTO `ecs_region` VALUES ('316', '24', '铜川', '2', '0');
INSERT INTO `ecs_region` VALUES ('317', '24', '渭南', '2', '0');
INSERT INTO `ecs_region` VALUES ('318', '24', '咸阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('319', '24', '延安', '2', '0');
INSERT INTO `ecs_region` VALUES ('320', '24', '榆林', '2', '0');
INSERT INTO `ecs_region` VALUES ('321', '25', '上海', '2', '0');
INSERT INTO `ecs_region` VALUES ('322', '26', '成都', '2', '0');
INSERT INTO `ecs_region` VALUES ('323', '26', '绵阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('324', '26', '阿坝', '2', '0');
INSERT INTO `ecs_region` VALUES ('325', '26', '巴中', '2', '0');
INSERT INTO `ecs_region` VALUES ('326', '26', '达州', '2', '0');
INSERT INTO `ecs_region` VALUES ('327', '26', '德阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('328', '26', '甘孜', '2', '0');
INSERT INTO `ecs_region` VALUES ('329', '26', '广安', '2', '0');
INSERT INTO `ecs_region` VALUES ('330', '26', '广元', '2', '0');
INSERT INTO `ecs_region` VALUES ('331', '26', '乐山', '2', '0');
INSERT INTO `ecs_region` VALUES ('332', '26', '凉山', '2', '0');
INSERT INTO `ecs_region` VALUES ('333', '26', '眉山', '2', '0');
INSERT INTO `ecs_region` VALUES ('334', '26', '南充', '2', '0');
INSERT INTO `ecs_region` VALUES ('335', '26', '内江', '2', '0');
INSERT INTO `ecs_region` VALUES ('336', '26', '攀枝花', '2', '0');
INSERT INTO `ecs_region` VALUES ('337', '26', '遂宁', '2', '0');
INSERT INTO `ecs_region` VALUES ('338', '26', '雅安', '2', '0');
INSERT INTO `ecs_region` VALUES ('339', '26', '宜宾', '2', '0');
INSERT INTO `ecs_region` VALUES ('340', '26', '资阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('341', '26', '自贡', '2', '0');
INSERT INTO `ecs_region` VALUES ('342', '26', '泸州', '2', '0');
INSERT INTO `ecs_region` VALUES ('343', '27', '天津', '2', '0');
INSERT INTO `ecs_region` VALUES ('344', '28', '拉萨', '2', '0');
INSERT INTO `ecs_region` VALUES ('345', '28', '阿里', '2', '0');
INSERT INTO `ecs_region` VALUES ('346', '28', '昌都', '2', '0');
INSERT INTO `ecs_region` VALUES ('347', '28', '林芝', '2', '0');
INSERT INTO `ecs_region` VALUES ('348', '28', '那曲', '2', '0');
INSERT INTO `ecs_region` VALUES ('349', '28', '日喀则', '2', '0');
INSERT INTO `ecs_region` VALUES ('350', '28', '山南', '2', '0');
INSERT INTO `ecs_region` VALUES ('351', '29', '乌鲁木齐', '2', '0');
INSERT INTO `ecs_region` VALUES ('352', '29', '阿克苏', '2', '0');
INSERT INTO `ecs_region` VALUES ('353', '29', '阿拉尔', '2', '0');
INSERT INTO `ecs_region` VALUES ('354', '29', '巴音郭楞', '2', '0');
INSERT INTO `ecs_region` VALUES ('355', '29', '博尔塔拉', '2', '0');
INSERT INTO `ecs_region` VALUES ('356', '29', '昌吉', '2', '0');
INSERT INTO `ecs_region` VALUES ('357', '29', '哈密', '2', '0');
INSERT INTO `ecs_region` VALUES ('358', '29', '和田', '2', '0');
INSERT INTO `ecs_region` VALUES ('359', '29', '喀什', '2', '0');
INSERT INTO `ecs_region` VALUES ('360', '29', '克拉玛依', '2', '0');
INSERT INTO `ecs_region` VALUES ('361', '29', '克孜勒苏', '2', '0');
INSERT INTO `ecs_region` VALUES ('362', '29', '石河子', '2', '0');
INSERT INTO `ecs_region` VALUES ('363', '29', '图木舒克', '2', '0');
INSERT INTO `ecs_region` VALUES ('364', '29', '吐鲁番', '2', '0');
INSERT INTO `ecs_region` VALUES ('365', '29', '五家渠', '2', '0');
INSERT INTO `ecs_region` VALUES ('366', '29', '伊犁', '2', '0');
INSERT INTO `ecs_region` VALUES ('367', '30', '昆明', '2', '0');
INSERT INTO `ecs_region` VALUES ('368', '30', '怒江', '2', '0');
INSERT INTO `ecs_region` VALUES ('369', '30', '普洱', '2', '0');
INSERT INTO `ecs_region` VALUES ('370', '30', '丽江', '2', '0');
INSERT INTO `ecs_region` VALUES ('371', '30', '保山', '2', '0');
INSERT INTO `ecs_region` VALUES ('372', '30', '楚雄', '2', '0');
INSERT INTO `ecs_region` VALUES ('373', '30', '大理', '2', '0');
INSERT INTO `ecs_region` VALUES ('374', '30', '德宏', '2', '0');
INSERT INTO `ecs_region` VALUES ('375', '30', '迪庆', '2', '0');
INSERT INTO `ecs_region` VALUES ('376', '30', '红河', '2', '0');
INSERT INTO `ecs_region` VALUES ('377', '30', '临沧', '2', '0');
INSERT INTO `ecs_region` VALUES ('378', '30', '曲靖', '2', '0');
INSERT INTO `ecs_region` VALUES ('379', '30', '文山', '2', '0');
INSERT INTO `ecs_region` VALUES ('380', '30', '西双版纳', '2', '0');
INSERT INTO `ecs_region` VALUES ('381', '30', '玉溪', '2', '0');
INSERT INTO `ecs_region` VALUES ('382', '30', '昭通', '2', '0');
INSERT INTO `ecs_region` VALUES ('383', '31', '杭州', '2', '0');
INSERT INTO `ecs_region` VALUES ('384', '31', '湖州', '2', '0');
INSERT INTO `ecs_region` VALUES ('385', '31', '嘉兴', '2', '0');
INSERT INTO `ecs_region` VALUES ('386', '31', '金华', '2', '0');
INSERT INTO `ecs_region` VALUES ('387', '31', '丽水', '2', '0');
INSERT INTO `ecs_region` VALUES ('388', '31', '宁波', '2', '0');
INSERT INTO `ecs_region` VALUES ('389', '31', '绍兴', '2', '0');
INSERT INTO `ecs_region` VALUES ('390', '31', '台州', '2', '0');
INSERT INTO `ecs_region` VALUES ('391', '31', '温州', '2', '0');
INSERT INTO `ecs_region` VALUES ('392', '31', '舟山', '2', '0');
INSERT INTO `ecs_region` VALUES ('393', '31', '衢州', '2', '0');
INSERT INTO `ecs_region` VALUES ('394', '32', '重庆', '2', '0');
INSERT INTO `ecs_region` VALUES ('395', '33', '香港', '2', '0');
INSERT INTO `ecs_region` VALUES ('396', '34', '澳门', '2', '0');
INSERT INTO `ecs_region` VALUES ('397', '35', '台湾', '2', '0');
INSERT INTO `ecs_region` VALUES ('398', '36', '迎江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('399', '36', '大观区', '3', '0');
INSERT INTO `ecs_region` VALUES ('400', '36', '宜秀区', '3', '0');
INSERT INTO `ecs_region` VALUES ('401', '36', '桐城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('402', '36', '怀宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('403', '36', '枞阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('404', '36', '潜山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('405', '36', '太湖县', '3', '0');
INSERT INTO `ecs_region` VALUES ('406', '36', '宿松县', '3', '0');
INSERT INTO `ecs_region` VALUES ('407', '36', '望江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('408', '36', '岳西县', '3', '0');
INSERT INTO `ecs_region` VALUES ('409', '37', '中市区', '3', '0');
INSERT INTO `ecs_region` VALUES ('410', '37', '东市区', '3', '0');
INSERT INTO `ecs_region` VALUES ('411', '37', '西市区', '3', '0');
INSERT INTO `ecs_region` VALUES ('412', '37', '郊区', '3', '0');
INSERT INTO `ecs_region` VALUES ('413', '37', '怀远县', '3', '0');
INSERT INTO `ecs_region` VALUES ('414', '37', '五河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('415', '37', '固镇县', '3', '0');
INSERT INTO `ecs_region` VALUES ('416', '38', '居巢区', '3', '0');
INSERT INTO `ecs_region` VALUES ('417', '38', '庐江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('418', '38', '无为县', '3', '0');
INSERT INTO `ecs_region` VALUES ('419', '38', '含山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('420', '38', '和县', '3', '0');
INSERT INTO `ecs_region` VALUES ('421', '39', '贵池区', '3', '0');
INSERT INTO `ecs_region` VALUES ('422', '39', '东至县', '3', '0');
INSERT INTO `ecs_region` VALUES ('423', '39', '石台县', '3', '0');
INSERT INTO `ecs_region` VALUES ('424', '39', '青阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('425', '40', '琅琊区', '3', '0');
INSERT INTO `ecs_region` VALUES ('426', '40', '南谯区', '3', '0');
INSERT INTO `ecs_region` VALUES ('427', '40', '天长市', '3', '0');
INSERT INTO `ecs_region` VALUES ('428', '40', '明光市', '3', '0');
INSERT INTO `ecs_region` VALUES ('429', '40', '来安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('430', '40', '全椒县', '3', '0');
INSERT INTO `ecs_region` VALUES ('431', '40', '定远县', '3', '0');
INSERT INTO `ecs_region` VALUES ('432', '40', '凤阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('433', '41', '蚌山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('434', '41', '龙子湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('435', '41', '禹会区', '3', '0');
INSERT INTO `ecs_region` VALUES ('436', '41', '淮上区', '3', '0');
INSERT INTO `ecs_region` VALUES ('437', '41', '颍州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('438', '41', '颍东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('439', '41', '颍泉区', '3', '0');
INSERT INTO `ecs_region` VALUES ('440', '41', '界首市', '3', '0');
INSERT INTO `ecs_region` VALUES ('441', '41', '临泉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('442', '41', '太和县', '3', '0');
INSERT INTO `ecs_region` VALUES ('443', '41', '阜南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('444', '41', '颖上县', '3', '0');
INSERT INTO `ecs_region` VALUES ('445', '42', '相山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('446', '42', '杜集区', '3', '0');
INSERT INTO `ecs_region` VALUES ('447', '42', '烈山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('448', '42', '濉溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('449', '43', '田家庵区', '3', '0');
INSERT INTO `ecs_region` VALUES ('450', '43', '大通区', '3', '0');
INSERT INTO `ecs_region` VALUES ('451', '43', '谢家集区', '3', '0');
INSERT INTO `ecs_region` VALUES ('452', '43', '八公山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('453', '43', '潘集区', '3', '0');
INSERT INTO `ecs_region` VALUES ('454', '43', '凤台县', '3', '0');
INSERT INTO `ecs_region` VALUES ('455', '44', '屯溪区', '3', '0');
INSERT INTO `ecs_region` VALUES ('456', '44', '黄山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('457', '44', '徽州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('458', '44', '歙县', '3', '0');
INSERT INTO `ecs_region` VALUES ('459', '44', '休宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('460', '44', '黟县', '3', '0');
INSERT INTO `ecs_region` VALUES ('461', '44', '祁门县', '3', '0');
INSERT INTO `ecs_region` VALUES ('462', '45', '金安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('463', '45', '裕安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('464', '45', '寿县', '3', '0');
INSERT INTO `ecs_region` VALUES ('465', '45', '霍邱县', '3', '0');
INSERT INTO `ecs_region` VALUES ('466', '45', '舒城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('467', '45', '金寨县', '3', '0');
INSERT INTO `ecs_region` VALUES ('468', '45', '霍山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('469', '46', '雨山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('470', '46', '花山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('471', '46', '金家庄区', '3', '0');
INSERT INTO `ecs_region` VALUES ('472', '46', '当涂县', '3', '0');
INSERT INTO `ecs_region` VALUES ('473', '47', '埇桥区', '3', '0');
INSERT INTO `ecs_region` VALUES ('474', '47', '砀山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('475', '47', '萧县', '3', '0');
INSERT INTO `ecs_region` VALUES ('476', '47', '灵璧县', '3', '0');
INSERT INTO `ecs_region` VALUES ('477', '47', '泗县', '3', '0');
INSERT INTO `ecs_region` VALUES ('478', '48', '铜官山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('479', '48', '狮子山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('480', '48', '郊区', '3', '0');
INSERT INTO `ecs_region` VALUES ('481', '48', '铜陵县', '3', '0');
INSERT INTO `ecs_region` VALUES ('482', '49', '镜湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('483', '49', '弋江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('484', '49', '鸠江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('485', '49', '三山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('486', '49', '芜湖县', '3', '0');
INSERT INTO `ecs_region` VALUES ('487', '49', '繁昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('488', '49', '南陵县', '3', '0');
INSERT INTO `ecs_region` VALUES ('489', '50', '宣州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('490', '50', '宁国市', '3', '0');
INSERT INTO `ecs_region` VALUES ('491', '50', '郎溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('492', '50', '广德县', '3', '0');
INSERT INTO `ecs_region` VALUES ('493', '50', '泾县', '3', '0');
INSERT INTO `ecs_region` VALUES ('494', '50', '绩溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('495', '50', '旌德县', '3', '0');
INSERT INTO `ecs_region` VALUES ('496', '51', '涡阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('497', '51', '蒙城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('498', '51', '利辛县', '3', '0');
INSERT INTO `ecs_region` VALUES ('499', '51', '谯城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('500', '52', '东城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('501', '52', '西城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('502', '52', '海淀区', '3', '0');
INSERT INTO `ecs_region` VALUES ('503', '52', '朝阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('504', '52', '崇文区', '3', '0');
INSERT INTO `ecs_region` VALUES ('505', '52', '宣武区', '3', '0');
INSERT INTO `ecs_region` VALUES ('506', '52', '丰台区', '3', '0');
INSERT INTO `ecs_region` VALUES ('507', '52', '石景山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('508', '52', '房山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('509', '52', '门头沟区', '3', '0');
INSERT INTO `ecs_region` VALUES ('510', '52', '通州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('511', '52', '顺义区', '3', '0');
INSERT INTO `ecs_region` VALUES ('512', '52', '昌平区', '3', '0');
INSERT INTO `ecs_region` VALUES ('513', '52', '怀柔区', '3', '0');
INSERT INTO `ecs_region` VALUES ('514', '52', '平谷区', '3', '0');
INSERT INTO `ecs_region` VALUES ('515', '52', '大兴区', '3', '0');
INSERT INTO `ecs_region` VALUES ('516', '52', '密云县', '3', '0');
INSERT INTO `ecs_region` VALUES ('517', '52', '延庆县', '3', '0');
INSERT INTO `ecs_region` VALUES ('518', '53', '鼓楼区', '3', '0');
INSERT INTO `ecs_region` VALUES ('519', '53', '台江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('520', '53', '仓山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('521', '53', '马尾区', '3', '0');
INSERT INTO `ecs_region` VALUES ('522', '53', '晋安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('523', '53', '福清市', '3', '0');
INSERT INTO `ecs_region` VALUES ('524', '53', '长乐市', '3', '0');
INSERT INTO `ecs_region` VALUES ('525', '53', '闽侯县', '3', '0');
INSERT INTO `ecs_region` VALUES ('526', '53', '连江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('527', '53', '罗源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('528', '53', '闽清县', '3', '0');
INSERT INTO `ecs_region` VALUES ('529', '53', '永泰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('530', '53', '平潭县', '3', '0');
INSERT INTO `ecs_region` VALUES ('531', '54', '新罗区', '3', '0');
INSERT INTO `ecs_region` VALUES ('532', '54', '漳平市', '3', '0');
INSERT INTO `ecs_region` VALUES ('533', '54', '长汀县', '3', '0');
INSERT INTO `ecs_region` VALUES ('534', '54', '永定县', '3', '0');
INSERT INTO `ecs_region` VALUES ('535', '54', '上杭县', '3', '0');
INSERT INTO `ecs_region` VALUES ('536', '54', '武平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('537', '54', '连城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('538', '55', '延平区', '3', '0');
INSERT INTO `ecs_region` VALUES ('539', '55', '邵武市', '3', '0');
INSERT INTO `ecs_region` VALUES ('540', '55', '武夷山市', '3', '0');
INSERT INTO `ecs_region` VALUES ('541', '55', '建瓯市', '3', '0');
INSERT INTO `ecs_region` VALUES ('542', '55', '建阳市', '3', '0');
INSERT INTO `ecs_region` VALUES ('543', '55', '顺昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('544', '55', '浦城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('545', '55', '光泽县', '3', '0');
INSERT INTO `ecs_region` VALUES ('546', '55', '松溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('547', '55', '政和县', '3', '0');
INSERT INTO `ecs_region` VALUES ('548', '56', '蕉城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('549', '56', '福安市', '3', '0');
INSERT INTO `ecs_region` VALUES ('550', '56', '福鼎市', '3', '0');
INSERT INTO `ecs_region` VALUES ('551', '56', '霞浦县', '3', '0');
INSERT INTO `ecs_region` VALUES ('552', '56', '古田县', '3', '0');
INSERT INTO `ecs_region` VALUES ('553', '56', '屏南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('554', '56', '寿宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('555', '56', '周宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('556', '56', '柘荣县', '3', '0');
INSERT INTO `ecs_region` VALUES ('557', '57', '城厢区', '3', '0');
INSERT INTO `ecs_region` VALUES ('558', '57', '涵江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('559', '57', '荔城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('560', '57', '秀屿区', '3', '0');
INSERT INTO `ecs_region` VALUES ('561', '57', '仙游县', '3', '0');
INSERT INTO `ecs_region` VALUES ('562', '58', '鲤城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('563', '58', '丰泽区', '3', '0');
INSERT INTO `ecs_region` VALUES ('564', '58', '洛江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('565', '58', '清濛开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('566', '58', '泉港区', '3', '0');
INSERT INTO `ecs_region` VALUES ('567', '58', '石狮市', '3', '0');
INSERT INTO `ecs_region` VALUES ('568', '58', '晋江市', '3', '0');
INSERT INTO `ecs_region` VALUES ('569', '58', '南安市', '3', '0');
INSERT INTO `ecs_region` VALUES ('570', '58', '惠安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('571', '58', '安溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('572', '58', '永春县', '3', '0');
INSERT INTO `ecs_region` VALUES ('573', '58', '德化县', '3', '0');
INSERT INTO `ecs_region` VALUES ('574', '58', '金门县', '3', '0');
INSERT INTO `ecs_region` VALUES ('575', '59', '梅列区', '3', '0');
INSERT INTO `ecs_region` VALUES ('576', '59', '三元区', '3', '0');
INSERT INTO `ecs_region` VALUES ('577', '59', '永安市', '3', '0');
INSERT INTO `ecs_region` VALUES ('578', '59', '明溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('579', '59', '清流县', '3', '0');
INSERT INTO `ecs_region` VALUES ('580', '59', '宁化县', '3', '0');
INSERT INTO `ecs_region` VALUES ('581', '59', '大田县', '3', '0');
INSERT INTO `ecs_region` VALUES ('582', '59', '尤溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('583', '59', '沙县', '3', '0');
INSERT INTO `ecs_region` VALUES ('584', '59', '将乐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('585', '59', '泰宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('586', '59', '建宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('587', '60', '思明区', '3', '0');
INSERT INTO `ecs_region` VALUES ('588', '60', '海沧区', '3', '0');
INSERT INTO `ecs_region` VALUES ('589', '60', '湖里区', '3', '0');
INSERT INTO `ecs_region` VALUES ('590', '60', '集美区', '3', '0');
INSERT INTO `ecs_region` VALUES ('591', '60', '同安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('592', '60', '翔安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('593', '61', '芗城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('594', '61', '龙文区', '3', '0');
INSERT INTO `ecs_region` VALUES ('595', '61', '龙海市', '3', '0');
INSERT INTO `ecs_region` VALUES ('596', '61', '云霄县', '3', '0');
INSERT INTO `ecs_region` VALUES ('597', '61', '漳浦县', '3', '0');
INSERT INTO `ecs_region` VALUES ('598', '61', '诏安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('599', '61', '长泰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('600', '61', '东山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('601', '61', '南靖县', '3', '0');
INSERT INTO `ecs_region` VALUES ('602', '61', '平和县', '3', '0');
INSERT INTO `ecs_region` VALUES ('603', '61', '华安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('604', '62', '皋兰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('605', '62', '城关区', '3', '0');
INSERT INTO `ecs_region` VALUES ('606', '62', '七里河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('607', '62', '西固区', '3', '0');
INSERT INTO `ecs_region` VALUES ('608', '62', '安宁区', '3', '0');
INSERT INTO `ecs_region` VALUES ('609', '62', '红古区', '3', '0');
INSERT INTO `ecs_region` VALUES ('610', '62', '永登县', '3', '0');
INSERT INTO `ecs_region` VALUES ('611', '62', '榆中县', '3', '0');
INSERT INTO `ecs_region` VALUES ('612', '63', '白银区', '3', '0');
INSERT INTO `ecs_region` VALUES ('613', '63', '平川区', '3', '0');
INSERT INTO `ecs_region` VALUES ('614', '63', '会宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('615', '63', '景泰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('616', '63', '靖远县', '3', '0');
INSERT INTO `ecs_region` VALUES ('617', '64', '临洮县', '3', '0');
INSERT INTO `ecs_region` VALUES ('618', '64', '陇西县', '3', '0');
INSERT INTO `ecs_region` VALUES ('619', '64', '通渭县', '3', '0');
INSERT INTO `ecs_region` VALUES ('620', '64', '渭源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('621', '64', '漳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('622', '64', '岷县', '3', '0');
INSERT INTO `ecs_region` VALUES ('623', '64', '安定区', '3', '0');
INSERT INTO `ecs_region` VALUES ('624', '64', '安定区', '3', '0');
INSERT INTO `ecs_region` VALUES ('625', '65', '合作市', '3', '0');
INSERT INTO `ecs_region` VALUES ('626', '65', '临潭县', '3', '0');
INSERT INTO `ecs_region` VALUES ('627', '65', '卓尼县', '3', '0');
INSERT INTO `ecs_region` VALUES ('628', '65', '舟曲县', '3', '0');
INSERT INTO `ecs_region` VALUES ('629', '65', '迭部县', '3', '0');
INSERT INTO `ecs_region` VALUES ('630', '65', '玛曲县', '3', '0');
INSERT INTO `ecs_region` VALUES ('631', '65', '碌曲县', '3', '0');
INSERT INTO `ecs_region` VALUES ('632', '65', '夏河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('633', '66', '嘉峪关市', '3', '0');
INSERT INTO `ecs_region` VALUES ('634', '67', '金川区', '3', '0');
INSERT INTO `ecs_region` VALUES ('635', '67', '永昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('636', '68', '肃州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('637', '68', '玉门市', '3', '0');
INSERT INTO `ecs_region` VALUES ('638', '68', '敦煌市', '3', '0');
INSERT INTO `ecs_region` VALUES ('639', '68', '金塔县', '3', '0');
INSERT INTO `ecs_region` VALUES ('640', '68', '瓜州县', '3', '0');
INSERT INTO `ecs_region` VALUES ('641', '68', '肃北', '3', '0');
INSERT INTO `ecs_region` VALUES ('642', '68', '阿克塞', '3', '0');
INSERT INTO `ecs_region` VALUES ('643', '69', '临夏市', '3', '0');
INSERT INTO `ecs_region` VALUES ('644', '69', '临夏县', '3', '0');
INSERT INTO `ecs_region` VALUES ('645', '69', '康乐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('646', '69', '永靖县', '3', '0');
INSERT INTO `ecs_region` VALUES ('647', '69', '广河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('648', '69', '和政县', '3', '0');
INSERT INTO `ecs_region` VALUES ('649', '69', '东乡族自治县', '3', '0');
INSERT INTO `ecs_region` VALUES ('650', '69', '积石山', '3', '0');
INSERT INTO `ecs_region` VALUES ('651', '70', '成县', '3', '0');
INSERT INTO `ecs_region` VALUES ('652', '70', '徽县', '3', '0');
INSERT INTO `ecs_region` VALUES ('653', '70', '康县', '3', '0');
INSERT INTO `ecs_region` VALUES ('654', '70', '礼县', '3', '0');
INSERT INTO `ecs_region` VALUES ('655', '70', '两当县', '3', '0');
INSERT INTO `ecs_region` VALUES ('656', '70', '文县', '3', '0');
INSERT INTO `ecs_region` VALUES ('657', '70', '西和县', '3', '0');
INSERT INTO `ecs_region` VALUES ('658', '70', '宕昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('659', '70', '武都区', '3', '0');
INSERT INTO `ecs_region` VALUES ('660', '71', '崇信县', '3', '0');
INSERT INTO `ecs_region` VALUES ('661', '71', '华亭县', '3', '0');
INSERT INTO `ecs_region` VALUES ('662', '71', '静宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('663', '71', '灵台县', '3', '0');
INSERT INTO `ecs_region` VALUES ('664', '71', '崆峒区', '3', '0');
INSERT INTO `ecs_region` VALUES ('665', '71', '庄浪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('666', '71', '泾川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('667', '72', '合水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('668', '72', '华池县', '3', '0');
INSERT INTO `ecs_region` VALUES ('669', '72', '环县', '3', '0');
INSERT INTO `ecs_region` VALUES ('670', '72', '宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('671', '72', '庆城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('672', '72', '西峰区', '3', '0');
INSERT INTO `ecs_region` VALUES ('673', '72', '镇原县', '3', '0');
INSERT INTO `ecs_region` VALUES ('674', '72', '正宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('675', '73', '甘谷县', '3', '0');
INSERT INTO `ecs_region` VALUES ('676', '73', '秦安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('677', '73', '清水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('678', '73', '秦州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('679', '73', '麦积区', '3', '0');
INSERT INTO `ecs_region` VALUES ('680', '73', '武山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('681', '73', '张家川', '3', '0');
INSERT INTO `ecs_region` VALUES ('682', '74', '古浪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('683', '74', '民勤县', '3', '0');
INSERT INTO `ecs_region` VALUES ('684', '74', '天祝', '3', '0');
INSERT INTO `ecs_region` VALUES ('685', '74', '凉州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('686', '75', '高台县', '3', '0');
INSERT INTO `ecs_region` VALUES ('687', '75', '临泽县', '3', '0');
INSERT INTO `ecs_region` VALUES ('688', '75', '民乐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('689', '75', '山丹县', '3', '0');
INSERT INTO `ecs_region` VALUES ('690', '75', '肃南', '3', '0');
INSERT INTO `ecs_region` VALUES ('691', '75', '甘州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('692', '76', '从化市', '3', '0');
INSERT INTO `ecs_region` VALUES ('693', '76', '天河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('694', '76', '东山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('695', '76', '白云区', '3', '0');
INSERT INTO `ecs_region` VALUES ('696', '76', '海珠区', '3', '0');
INSERT INTO `ecs_region` VALUES ('697', '76', '荔湾区', '3', '0');
INSERT INTO `ecs_region` VALUES ('698', '76', '越秀区', '3', '0');
INSERT INTO `ecs_region` VALUES ('699', '76', '黄埔区', '3', '0');
INSERT INTO `ecs_region` VALUES ('700', '76', '番禺区', '3', '0');
INSERT INTO `ecs_region` VALUES ('701', '76', '花都区', '3', '0');
INSERT INTO `ecs_region` VALUES ('702', '76', '增城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('703', '76', '从化区', '3', '0');
INSERT INTO `ecs_region` VALUES ('704', '76', '市郊', '3', '0');
INSERT INTO `ecs_region` VALUES ('705', '77', '福田区', '3', '0');
INSERT INTO `ecs_region` VALUES ('706', '77', '罗湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('707', '77', '南山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('708', '77', '宝安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('709', '77', '龙岗区', '3', '0');
INSERT INTO `ecs_region` VALUES ('710', '77', '盐田区', '3', '0');
INSERT INTO `ecs_region` VALUES ('711', '78', '湘桥区', '3', '0');
INSERT INTO `ecs_region` VALUES ('712', '78', '潮安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('713', '78', '饶平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('714', '79', '南城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('715', '79', '东城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('716', '79', '万江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('717', '79', '莞城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('718', '79', '石龙镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('719', '79', '虎门镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('720', '79', '麻涌镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('721', '79', '道滘镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('722', '79', '石碣镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('723', '79', '沙田镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('724', '79', '望牛墩镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('725', '79', '洪梅镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('726', '79', '茶山镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('727', '79', '寮步镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('728', '79', '大岭山镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('729', '79', '大朗镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('730', '79', '黄江镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('731', '79', '樟木头', '3', '0');
INSERT INTO `ecs_region` VALUES ('732', '79', '凤岗镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('733', '79', '塘厦镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('734', '79', '谢岗镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('735', '79', '厚街镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('736', '79', '清溪镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('737', '79', '常平镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('738', '79', '桥头镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('739', '79', '横沥镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('740', '79', '东坑镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('741', '79', '企石镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('742', '79', '石排镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('743', '79', '长安镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('744', '79', '中堂镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('745', '79', '高埗镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('746', '80', '禅城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('747', '80', '南海区', '3', '0');
INSERT INTO `ecs_region` VALUES ('748', '80', '顺德区', '3', '0');
INSERT INTO `ecs_region` VALUES ('749', '80', '三水区', '3', '0');
INSERT INTO `ecs_region` VALUES ('750', '80', '高明区', '3', '0');
INSERT INTO `ecs_region` VALUES ('751', '81', '东源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('752', '81', '和平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('753', '81', '源城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('754', '81', '连平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('755', '81', '龙川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('756', '81', '紫金县', '3', '0');
INSERT INTO `ecs_region` VALUES ('757', '82', '惠阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('758', '82', '惠城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('759', '82', '大亚湾', '3', '0');
INSERT INTO `ecs_region` VALUES ('760', '82', '博罗县', '3', '0');
INSERT INTO `ecs_region` VALUES ('761', '82', '惠东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('762', '82', '龙门县', '3', '0');
INSERT INTO `ecs_region` VALUES ('763', '83', '江海区', '3', '0');
INSERT INTO `ecs_region` VALUES ('764', '83', '蓬江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('765', '83', '新会区', '3', '0');
INSERT INTO `ecs_region` VALUES ('766', '83', '台山市', '3', '0');
INSERT INTO `ecs_region` VALUES ('767', '83', '开平市', '3', '0');
INSERT INTO `ecs_region` VALUES ('768', '83', '鹤山市', '3', '0');
INSERT INTO `ecs_region` VALUES ('769', '83', '恩平市', '3', '0');
INSERT INTO `ecs_region` VALUES ('770', '84', '榕城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('771', '84', '普宁市', '3', '0');
INSERT INTO `ecs_region` VALUES ('772', '84', '揭东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('773', '84', '揭西县', '3', '0');
INSERT INTO `ecs_region` VALUES ('774', '84', '惠来县', '3', '0');
INSERT INTO `ecs_region` VALUES ('775', '85', '茂南区', '3', '0');
INSERT INTO `ecs_region` VALUES ('776', '85', '茂港区', '3', '0');
INSERT INTO `ecs_region` VALUES ('777', '85', '高州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('778', '85', '化州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('779', '85', '信宜市', '3', '0');
INSERT INTO `ecs_region` VALUES ('780', '85', '电白县', '3', '0');
INSERT INTO `ecs_region` VALUES ('781', '86', '梅县', '3', '0');
INSERT INTO `ecs_region` VALUES ('782', '86', '梅江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('783', '86', '兴宁市', '3', '0');
INSERT INTO `ecs_region` VALUES ('784', '86', '大埔县', '3', '0');
INSERT INTO `ecs_region` VALUES ('785', '86', '丰顺县', '3', '0');
INSERT INTO `ecs_region` VALUES ('786', '86', '五华县', '3', '0');
INSERT INTO `ecs_region` VALUES ('787', '86', '平远县', '3', '0');
INSERT INTO `ecs_region` VALUES ('788', '86', '蕉岭县', '3', '0');
INSERT INTO `ecs_region` VALUES ('789', '87', '清城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('790', '87', '英德市', '3', '0');
INSERT INTO `ecs_region` VALUES ('791', '87', '连州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('792', '87', '佛冈县', '3', '0');
INSERT INTO `ecs_region` VALUES ('793', '87', '阳山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('794', '87', '清新县', '3', '0');
INSERT INTO `ecs_region` VALUES ('795', '87', '连山', '3', '0');
INSERT INTO `ecs_region` VALUES ('796', '87', '连南', '3', '0');
INSERT INTO `ecs_region` VALUES ('797', '88', '南澳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('798', '88', '潮阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('799', '88', '澄海区', '3', '0');
INSERT INTO `ecs_region` VALUES ('800', '88', '龙湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('801', '88', '金平区', '3', '0');
INSERT INTO `ecs_region` VALUES ('802', '88', '濠江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('803', '88', '潮南区', '3', '0');
INSERT INTO `ecs_region` VALUES ('804', '89', '城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('805', '89', '陆丰市', '3', '0');
INSERT INTO `ecs_region` VALUES ('806', '89', '海丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('807', '89', '陆河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('808', '90', '曲江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('809', '90', '浈江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('810', '90', '武江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('811', '90', '曲江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('812', '90', '乐昌市', '3', '0');
INSERT INTO `ecs_region` VALUES ('813', '90', '南雄市', '3', '0');
INSERT INTO `ecs_region` VALUES ('814', '90', '始兴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('815', '90', '仁化县', '3', '0');
INSERT INTO `ecs_region` VALUES ('816', '90', '翁源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('817', '90', '新丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('818', '90', '乳源', '3', '0');
INSERT INTO `ecs_region` VALUES ('819', '91', '江城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('820', '91', '阳春市', '3', '0');
INSERT INTO `ecs_region` VALUES ('821', '91', '阳西县', '3', '0');
INSERT INTO `ecs_region` VALUES ('822', '91', '阳东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('823', '92', '云城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('824', '92', '罗定市', '3', '0');
INSERT INTO `ecs_region` VALUES ('825', '92', '新兴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('826', '92', '郁南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('827', '92', '云安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('828', '93', '赤坎区', '3', '0');
INSERT INTO `ecs_region` VALUES ('829', '93', '霞山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('830', '93', '坡头区', '3', '0');
INSERT INTO `ecs_region` VALUES ('831', '93', '麻章区', '3', '0');
INSERT INTO `ecs_region` VALUES ('832', '93', '廉江市', '3', '0');
INSERT INTO `ecs_region` VALUES ('833', '93', '雷州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('834', '93', '吴川市', '3', '0');
INSERT INTO `ecs_region` VALUES ('835', '93', '遂溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('836', '93', '徐闻县', '3', '0');
INSERT INTO `ecs_region` VALUES ('837', '94', '肇庆市', '3', '0');
INSERT INTO `ecs_region` VALUES ('838', '94', '高要市', '3', '0');
INSERT INTO `ecs_region` VALUES ('839', '94', '四会市', '3', '0');
INSERT INTO `ecs_region` VALUES ('840', '94', '广宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('841', '94', '怀集县', '3', '0');
INSERT INTO `ecs_region` VALUES ('842', '94', '封开县', '3', '0');
INSERT INTO `ecs_region` VALUES ('843', '94', '德庆县', '3', '0');
INSERT INTO `ecs_region` VALUES ('844', '95', '石岐街道', '3', '0');
INSERT INTO `ecs_region` VALUES ('845', '95', '东区街道', '3', '0');
INSERT INTO `ecs_region` VALUES ('846', '95', '西区街道', '3', '0');
INSERT INTO `ecs_region` VALUES ('847', '95', '环城街道', '3', '0');
INSERT INTO `ecs_region` VALUES ('848', '95', '中山港街道', '3', '0');
INSERT INTO `ecs_region` VALUES ('849', '95', '五桂山街道', '3', '0');
INSERT INTO `ecs_region` VALUES ('850', '96', '香洲区', '3', '0');
INSERT INTO `ecs_region` VALUES ('851', '96', '斗门区', '3', '0');
INSERT INTO `ecs_region` VALUES ('852', '96', '金湾区', '3', '0');
INSERT INTO `ecs_region` VALUES ('853', '97', '邕宁区', '3', '0');
INSERT INTO `ecs_region` VALUES ('854', '97', '青秀区', '3', '0');
INSERT INTO `ecs_region` VALUES ('855', '97', '兴宁区', '3', '0');
INSERT INTO `ecs_region` VALUES ('856', '97', '良庆区', '3', '0');
INSERT INTO `ecs_region` VALUES ('857', '97', '西乡塘区', '3', '0');
INSERT INTO `ecs_region` VALUES ('858', '97', '江南区', '3', '0');
INSERT INTO `ecs_region` VALUES ('859', '97', '武鸣县', '3', '0');
INSERT INTO `ecs_region` VALUES ('860', '97', '隆安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('861', '97', '马山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('862', '97', '上林县', '3', '0');
INSERT INTO `ecs_region` VALUES ('863', '97', '宾阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('864', '97', '横县', '3', '0');
INSERT INTO `ecs_region` VALUES ('865', '98', '秀峰区', '3', '0');
INSERT INTO `ecs_region` VALUES ('866', '98', '叠彩区', '3', '0');
INSERT INTO `ecs_region` VALUES ('867', '98', '象山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('868', '98', '七星区', '3', '0');
INSERT INTO `ecs_region` VALUES ('869', '98', '雁山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('870', '98', '阳朔县', '3', '0');
INSERT INTO `ecs_region` VALUES ('871', '98', '临桂县', '3', '0');
INSERT INTO `ecs_region` VALUES ('872', '98', '灵川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('873', '98', '全州县', '3', '0');
INSERT INTO `ecs_region` VALUES ('874', '98', '平乐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('875', '98', '兴安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('876', '98', '灌阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('877', '98', '荔浦县', '3', '0');
INSERT INTO `ecs_region` VALUES ('878', '98', '资源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('879', '98', '永福县', '3', '0');
INSERT INTO `ecs_region` VALUES ('880', '98', '龙胜', '3', '0');
INSERT INTO `ecs_region` VALUES ('881', '98', '恭城', '3', '0');
INSERT INTO `ecs_region` VALUES ('882', '99', '右江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('883', '99', '凌云县', '3', '0');
INSERT INTO `ecs_region` VALUES ('884', '99', '平果县', '3', '0');
INSERT INTO `ecs_region` VALUES ('885', '99', '西林县', '3', '0');
INSERT INTO `ecs_region` VALUES ('886', '99', '乐业县', '3', '0');
INSERT INTO `ecs_region` VALUES ('887', '99', '德保县', '3', '0');
INSERT INTO `ecs_region` VALUES ('888', '99', '田林县', '3', '0');
INSERT INTO `ecs_region` VALUES ('889', '99', '田阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('890', '99', '靖西县', '3', '0');
INSERT INTO `ecs_region` VALUES ('891', '99', '田东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('892', '99', '那坡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('893', '99', '隆林', '3', '0');
INSERT INTO `ecs_region` VALUES ('894', '100', '海城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('895', '100', '银海区', '3', '0');
INSERT INTO `ecs_region` VALUES ('896', '100', '铁山港区', '3', '0');
INSERT INTO `ecs_region` VALUES ('897', '100', '合浦县', '3', '0');
INSERT INTO `ecs_region` VALUES ('898', '101', '江州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('899', '101', '凭祥市', '3', '0');
INSERT INTO `ecs_region` VALUES ('900', '101', '宁明县', '3', '0');
INSERT INTO `ecs_region` VALUES ('901', '101', '扶绥县', '3', '0');
INSERT INTO `ecs_region` VALUES ('902', '101', '龙州县', '3', '0');
INSERT INTO `ecs_region` VALUES ('903', '101', '大新县', '3', '0');
INSERT INTO `ecs_region` VALUES ('904', '101', '天等县', '3', '0');
INSERT INTO `ecs_region` VALUES ('905', '102', '港口区', '3', '0');
INSERT INTO `ecs_region` VALUES ('906', '102', '防城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('907', '102', '东兴市', '3', '0');
INSERT INTO `ecs_region` VALUES ('908', '102', '上思县', '3', '0');
INSERT INTO `ecs_region` VALUES ('909', '103', '港北区', '3', '0');
INSERT INTO `ecs_region` VALUES ('910', '103', '港南区', '3', '0');
INSERT INTO `ecs_region` VALUES ('911', '103', '覃塘区', '3', '0');
INSERT INTO `ecs_region` VALUES ('912', '103', '桂平市', '3', '0');
INSERT INTO `ecs_region` VALUES ('913', '103', '平南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('914', '104', '金城江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('915', '104', '宜州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('916', '104', '天峨县', '3', '0');
INSERT INTO `ecs_region` VALUES ('917', '104', '凤山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('918', '104', '南丹县', '3', '0');
INSERT INTO `ecs_region` VALUES ('919', '104', '东兰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('920', '104', '都安', '3', '0');
INSERT INTO `ecs_region` VALUES ('921', '104', '罗城', '3', '0');
INSERT INTO `ecs_region` VALUES ('922', '104', '巴马', '3', '0');
INSERT INTO `ecs_region` VALUES ('923', '104', '环江', '3', '0');
INSERT INTO `ecs_region` VALUES ('924', '104', '大化', '3', '0');
INSERT INTO `ecs_region` VALUES ('925', '105', '八步区', '3', '0');
INSERT INTO `ecs_region` VALUES ('926', '105', '钟山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('927', '105', '昭平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('928', '105', '富川', '3', '0');
INSERT INTO `ecs_region` VALUES ('929', '106', '兴宾区', '3', '0');
INSERT INTO `ecs_region` VALUES ('930', '106', '合山市', '3', '0');
INSERT INTO `ecs_region` VALUES ('931', '106', '象州县', '3', '0');
INSERT INTO `ecs_region` VALUES ('932', '106', '武宣县', '3', '0');
INSERT INTO `ecs_region` VALUES ('933', '106', '忻城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('934', '106', '金秀', '3', '0');
INSERT INTO `ecs_region` VALUES ('935', '107', '城中区', '3', '0');
INSERT INTO `ecs_region` VALUES ('936', '107', '鱼峰区', '3', '0');
INSERT INTO `ecs_region` VALUES ('937', '107', '柳北区', '3', '0');
INSERT INTO `ecs_region` VALUES ('938', '107', '柳南区', '3', '0');
INSERT INTO `ecs_region` VALUES ('939', '107', '柳江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('940', '107', '柳城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('941', '107', '鹿寨县', '3', '0');
INSERT INTO `ecs_region` VALUES ('942', '107', '融安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('943', '107', '融水', '3', '0');
INSERT INTO `ecs_region` VALUES ('944', '107', '三江', '3', '0');
INSERT INTO `ecs_region` VALUES ('945', '108', '钦南区', '3', '0');
INSERT INTO `ecs_region` VALUES ('946', '108', '钦北区', '3', '0');
INSERT INTO `ecs_region` VALUES ('947', '108', '灵山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('948', '108', '浦北县', '3', '0');
INSERT INTO `ecs_region` VALUES ('949', '109', '万秀区', '3', '0');
INSERT INTO `ecs_region` VALUES ('950', '109', '蝶山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('951', '109', '长洲区', '3', '0');
INSERT INTO `ecs_region` VALUES ('952', '109', '岑溪市', '3', '0');
INSERT INTO `ecs_region` VALUES ('953', '109', '苍梧县', '3', '0');
INSERT INTO `ecs_region` VALUES ('954', '109', '藤县', '3', '0');
INSERT INTO `ecs_region` VALUES ('955', '109', '蒙山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('956', '110', '玉州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('957', '110', '北流市', '3', '0');
INSERT INTO `ecs_region` VALUES ('958', '110', '容县', '3', '0');
INSERT INTO `ecs_region` VALUES ('959', '110', '陆川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('960', '110', '博白县', '3', '0');
INSERT INTO `ecs_region` VALUES ('961', '110', '兴业县', '3', '0');
INSERT INTO `ecs_region` VALUES ('962', '111', '南明区', '3', '0');
INSERT INTO `ecs_region` VALUES ('963', '111', '云岩区', '3', '0');
INSERT INTO `ecs_region` VALUES ('964', '111', '花溪区', '3', '0');
INSERT INTO `ecs_region` VALUES ('965', '111', '乌当区', '3', '0');
INSERT INTO `ecs_region` VALUES ('966', '111', '白云区', '3', '0');
INSERT INTO `ecs_region` VALUES ('967', '111', '小河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('968', '111', '金阳新区', '3', '0');
INSERT INTO `ecs_region` VALUES ('969', '111', '新天园区', '3', '0');
INSERT INTO `ecs_region` VALUES ('970', '111', '清镇市', '3', '0');
INSERT INTO `ecs_region` VALUES ('971', '111', '开阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('972', '111', '修文县', '3', '0');
INSERT INTO `ecs_region` VALUES ('973', '111', '息烽县', '3', '0');
INSERT INTO `ecs_region` VALUES ('974', '112', '西秀区', '3', '0');
INSERT INTO `ecs_region` VALUES ('975', '112', '关岭', '3', '0');
INSERT INTO `ecs_region` VALUES ('976', '112', '镇宁', '3', '0');
INSERT INTO `ecs_region` VALUES ('977', '112', '紫云', '3', '0');
INSERT INTO `ecs_region` VALUES ('978', '112', '平坝县', '3', '0');
INSERT INTO `ecs_region` VALUES ('979', '112', '普定县', '3', '0');
INSERT INTO `ecs_region` VALUES ('980', '113', '毕节市', '3', '0');
INSERT INTO `ecs_region` VALUES ('981', '113', '大方县', '3', '0');
INSERT INTO `ecs_region` VALUES ('982', '113', '黔西县', '3', '0');
INSERT INTO `ecs_region` VALUES ('983', '113', '金沙县', '3', '0');
INSERT INTO `ecs_region` VALUES ('984', '113', '织金县', '3', '0');
INSERT INTO `ecs_region` VALUES ('985', '113', '纳雍县', '3', '0');
INSERT INTO `ecs_region` VALUES ('986', '113', '赫章县', '3', '0');
INSERT INTO `ecs_region` VALUES ('987', '113', '威宁', '3', '0');
INSERT INTO `ecs_region` VALUES ('988', '114', '钟山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('989', '114', '六枝特区', '3', '0');
INSERT INTO `ecs_region` VALUES ('990', '114', '水城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('991', '114', '盘县', '3', '0');
INSERT INTO `ecs_region` VALUES ('992', '115', '凯里市', '3', '0');
INSERT INTO `ecs_region` VALUES ('993', '115', '黄平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('994', '115', '施秉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('995', '115', '三穗县', '3', '0');
INSERT INTO `ecs_region` VALUES ('996', '115', '镇远县', '3', '0');
INSERT INTO `ecs_region` VALUES ('997', '115', '岑巩县', '3', '0');
INSERT INTO `ecs_region` VALUES ('998', '115', '天柱县', '3', '0');
INSERT INTO `ecs_region` VALUES ('999', '115', '锦屏县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1000', '115', '剑河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1001', '115', '台江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1002', '115', '黎平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1003', '115', '榕江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1004', '115', '从江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1005', '115', '雷山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1006', '115', '麻江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1007', '115', '丹寨县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1008', '116', '都匀市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1009', '116', '福泉市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1010', '116', '荔波县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1011', '116', '贵定县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1012', '116', '瓮安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1013', '116', '独山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1014', '116', '平塘县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1015', '116', '罗甸县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1016', '116', '长顺县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1017', '116', '龙里县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1018', '116', '惠水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1019', '116', '三都', '3', '0');
INSERT INTO `ecs_region` VALUES ('1020', '117', '兴义市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1021', '117', '兴仁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1022', '117', '普安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1023', '117', '晴隆县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1024', '117', '贞丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1025', '117', '望谟县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1026', '117', '册亨县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1027', '117', '安龙县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1028', '118', '铜仁市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1029', '118', '江口县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1030', '118', '石阡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1031', '118', '思南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1032', '118', '德江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1033', '118', '玉屏', '3', '0');
INSERT INTO `ecs_region` VALUES ('1034', '118', '印江', '3', '0');
INSERT INTO `ecs_region` VALUES ('1035', '118', '沿河', '3', '0');
INSERT INTO `ecs_region` VALUES ('1036', '118', '松桃', '3', '0');
INSERT INTO `ecs_region` VALUES ('1037', '118', '万山特区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1038', '119', '红花岗区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1039', '119', '务川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1040', '119', '道真县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1041', '119', '汇川区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1042', '119', '赤水市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1043', '119', '仁怀市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1044', '119', '遵义县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1045', '119', '桐梓县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1046', '119', '绥阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1047', '119', '正安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1048', '119', '凤冈县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1049', '119', '湄潭县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1050', '119', '余庆县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1051', '119', '习水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1052', '119', '道真', '3', '0');
INSERT INTO `ecs_region` VALUES ('1053', '119', '务川', '3', '0');
INSERT INTO `ecs_region` VALUES ('1054', '120', '秀英区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1055', '120', '龙华区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1056', '120', '琼山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1057', '120', '美兰区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1058', '137', '市区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1059', '137', '洋浦开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1060', '137', '那大镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1061', '137', '王五镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1062', '137', '雅星镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1063', '137', '大成镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1064', '137', '中和镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1065', '137', '峨蔓镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1066', '137', '南丰镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1067', '137', '白马井镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1068', '137', '兰洋镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1069', '137', '和庆镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1070', '137', '海头镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1071', '137', '排浦镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1072', '137', '东成镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1073', '137', '光村镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1074', '137', '木棠镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1075', '137', '新州镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1076', '137', '三都镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1077', '137', '其他', '3', '0');
INSERT INTO `ecs_region` VALUES ('1078', '138', '长安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1079', '138', '桥东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1080', '138', '桥西区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1081', '138', '新华区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1082', '138', '裕华区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1083', '138', '井陉矿区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1084', '138', '高新区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1085', '138', '辛集市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1086', '138', '藁城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1087', '138', '晋州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1088', '138', '新乐市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1089', '138', '鹿泉市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1090', '138', '井陉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1091', '138', '正定县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1092', '138', '栾城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1093', '138', '行唐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1094', '138', '灵寿县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1095', '138', '高邑县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1096', '138', '深泽县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1097', '138', '赞皇县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1098', '138', '无极县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1099', '138', '平山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1100', '138', '元氏县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1101', '138', '赵县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1102', '139', '新市区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1103', '139', '南市区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1104', '139', '北市区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1105', '139', '涿州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1106', '139', '定州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1107', '139', '安国市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1108', '139', '高碑店市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1109', '139', '满城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1110', '139', '清苑县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1111', '139', '涞水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1112', '139', '阜平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1113', '139', '徐水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1114', '139', '定兴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1115', '139', '唐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1116', '139', '高阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1117', '139', '容城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1118', '139', '涞源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1119', '139', '望都县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1120', '139', '安新县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1121', '139', '易县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1122', '139', '曲阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1123', '139', '蠡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1124', '139', '顺平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1125', '139', '博野县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1126', '139', '雄县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1127', '140', '运河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1128', '140', '新华区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1129', '140', '泊头市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1130', '140', '任丘市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1131', '140', '黄骅市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1132', '140', '河间市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1133', '140', '沧县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1134', '140', '青县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1135', '140', '东光县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1136', '140', '海兴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1137', '140', '盐山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1138', '140', '肃宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1139', '140', '南皮县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1140', '140', '吴桥县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1141', '140', '献县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1142', '140', '孟村', '3', '0');
INSERT INTO `ecs_region` VALUES ('1143', '141', '双桥区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1144', '141', '双滦区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1145', '141', '鹰手营子矿区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1146', '141', '承德县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1147', '141', '兴隆县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1148', '141', '平泉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1149', '141', '滦平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1150', '141', '隆化县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1151', '141', '丰宁', '3', '0');
INSERT INTO `ecs_region` VALUES ('1152', '141', '宽城', '3', '0');
INSERT INTO `ecs_region` VALUES ('1153', '141', '围场', '3', '0');
INSERT INTO `ecs_region` VALUES ('1154', '142', '从台区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1155', '142', '复兴区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1156', '142', '邯山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1157', '142', '峰峰矿区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1158', '142', '武安市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1159', '142', '邯郸县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1160', '142', '临漳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1161', '142', '成安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1162', '142', '大名县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1163', '142', '涉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1164', '142', '磁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1165', '142', '肥乡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1166', '142', '永年县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1167', '142', '邱县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1168', '142', '鸡泽县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1169', '142', '广平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1170', '142', '馆陶县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1171', '142', '魏县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1172', '142', '曲周县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1173', '143', '桃城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1174', '143', '冀州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1175', '143', '深州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1176', '143', '枣强县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1177', '143', '武邑县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1178', '143', '武强县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1179', '143', '饶阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1180', '143', '安平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1181', '143', '故城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1182', '143', '景县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1183', '143', '阜城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1184', '144', '安次区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1185', '144', '广阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1186', '144', '霸州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1187', '144', '三河市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1188', '144', '固安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1189', '144', '永清县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1190', '144', '香河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1191', '144', '大城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1192', '144', '文安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1193', '144', '大厂', '3', '0');
INSERT INTO `ecs_region` VALUES ('1194', '145', '海港区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1195', '145', '山海关区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1196', '145', '北戴河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1197', '145', '昌黎县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1198', '145', '抚宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1199', '145', '卢龙县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1200', '145', '青龙', '3', '0');
INSERT INTO `ecs_region` VALUES ('1201', '146', '路北区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1202', '146', '路南区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1203', '146', '古冶区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1204', '146', '开平区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1205', '146', '丰南区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1206', '146', '丰润区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1207', '146', '遵化市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1208', '146', '迁安市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1209', '146', '滦县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1210', '146', '滦南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1211', '146', '乐亭县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1212', '146', '迁西县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1213', '146', '玉田县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1214', '146', '唐海县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1215', '147', '桥东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1216', '147', '桥西区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1217', '147', '南宫市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1218', '147', '沙河市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1219', '147', '邢台县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1220', '147', '临城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1221', '147', '内丘县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1222', '147', '柏乡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1223', '147', '隆尧县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1224', '147', '任县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1225', '147', '南和县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1226', '147', '宁晋县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1227', '147', '巨鹿县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1228', '147', '新河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1229', '147', '广宗县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1230', '147', '平乡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1231', '147', '威县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1232', '147', '清河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1233', '147', '临西县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1234', '148', '桥西区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1235', '148', '桥东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1236', '148', '宣化区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1237', '148', '下花园区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1238', '148', '宣化县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1239', '148', '张北县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1240', '148', '康保县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1241', '148', '沽源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1242', '148', '尚义县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1243', '148', '蔚县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1244', '148', '阳原县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1245', '148', '怀安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1246', '148', '万全县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1247', '148', '怀来县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1248', '148', '涿鹿县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1249', '148', '赤城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1250', '148', '崇礼县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1251', '149', '金水区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1252', '149', '邙山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1253', '149', '二七区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1254', '149', '管城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1255', '149', '中原区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1256', '149', '上街区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1257', '149', '惠济区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1258', '149', '郑东新区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1259', '149', '经济技术开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1260', '149', '高新开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1261', '149', '出口加工区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1262', '149', '巩义市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1263', '149', '荥阳市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1264', '149', '新密市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1265', '149', '新郑市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1266', '149', '登封市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1267', '149', '中牟县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1268', '150', '西工区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1269', '150', '老城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1270', '150', '涧西区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1271', '150', '瀍河回族区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1272', '150', '洛龙区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1273', '150', '吉利区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1274', '150', '偃师市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1275', '150', '孟津县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1276', '150', '新安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1277', '150', '栾川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1278', '150', '嵩县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1279', '150', '汝阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1280', '150', '宜阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1281', '150', '洛宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1282', '150', '伊川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1283', '151', '鼓楼区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1284', '151', '龙亭区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1285', '151', '顺河回族区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1286', '151', '金明区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1287', '151', '禹王台区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1288', '151', '杞县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1289', '151', '通许县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1290', '151', '尉氏县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1291', '151', '开封县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1292', '151', '兰考县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1293', '152', '北关区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1294', '152', '文峰区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1295', '152', '殷都区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1296', '152', '龙安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1297', '152', '林州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1298', '152', '安阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1299', '152', '汤阴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1300', '152', '滑县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1301', '152', '内黄县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1302', '153', '淇滨区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1303', '153', '山城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1304', '153', '鹤山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1305', '153', '浚县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1306', '153', '淇县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1307', '154', '济源市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1308', '155', '解放区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1309', '155', '中站区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1310', '155', '马村区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1311', '155', '山阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1312', '155', '沁阳市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1313', '155', '孟州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1314', '155', '修武县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1315', '155', '博爱县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1316', '155', '武陟县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1317', '155', '温县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1318', '156', '卧龙区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1319', '156', '宛城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1320', '156', '邓州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1321', '156', '南召县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1322', '156', '方城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1323', '156', '西峡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1324', '156', '镇平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1325', '156', '内乡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1326', '156', '淅川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1327', '156', '社旗县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1328', '156', '唐河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1329', '156', '新野县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1330', '156', '桐柏县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1331', '157', '新华区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1332', '157', '卫东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1333', '157', '湛河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1334', '157', '石龙区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1335', '157', '舞钢市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1336', '157', '汝州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1337', '157', '宝丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1338', '157', '叶县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1339', '157', '鲁山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1340', '157', '郏县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1341', '158', '湖滨区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1342', '158', '义马市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1343', '158', '灵宝市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1344', '158', '渑池县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1345', '158', '陕县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1346', '158', '卢氏县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1347', '159', '梁园区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1348', '159', '睢阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1349', '159', '永城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1350', '159', '民权县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1351', '159', '睢县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1352', '159', '宁陵县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1353', '159', '虞城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1354', '159', '柘城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1355', '159', '夏邑县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1356', '160', '卫滨区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1357', '160', '红旗区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1358', '160', '凤泉区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1359', '160', '牧野区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1360', '160', '卫辉市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1361', '160', '辉县市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1362', '160', '新乡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1363', '160', '获嘉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1364', '160', '原阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1365', '160', '延津县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1366', '160', '封丘县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1367', '160', '长垣县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1368', '161', '浉河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1369', '161', '平桥区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1370', '161', '罗山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1371', '161', '光山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1372', '161', '新县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1373', '161', '商城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1374', '161', '固始县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1375', '161', '潢川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1376', '161', '淮滨县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1377', '161', '息县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1378', '162', '魏都区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1379', '162', '禹州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1380', '162', '长葛市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1381', '162', '许昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1382', '162', '鄢陵县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1383', '162', '襄城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1384', '163', '川汇区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1385', '163', '项城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1386', '163', '扶沟县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1387', '163', '西华县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1388', '163', '商水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1389', '163', '沈丘县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1390', '163', '郸城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1391', '163', '淮阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1392', '163', '太康县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1393', '163', '鹿邑县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1394', '164', '驿城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1395', '164', '西平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1396', '164', '上蔡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1397', '164', '平舆县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1398', '164', '正阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1399', '164', '确山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1400', '164', '泌阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1401', '164', '汝南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1402', '164', '遂平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1403', '164', '新蔡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1404', '165', '郾城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1405', '165', '源汇区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1406', '165', '召陵区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1407', '165', '舞阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1408', '165', '临颍县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1409', '166', '华龙区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1410', '166', '清丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1411', '166', '南乐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1412', '166', '范县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1413', '166', '台前县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1414', '166', '濮阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1415', '167', '道里区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1416', '167', '南岗区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1417', '167', '动力区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1418', '167', '平房区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1419', '167', '香坊区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1420', '167', '太平区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1421', '167', '道外区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1422', '167', '阿城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1423', '167', '呼兰区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1424', '167', '松北区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1425', '167', '尚志市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1426', '167', '双城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1427', '167', '五常市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1428', '167', '方正县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1429', '167', '宾县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1430', '167', '依兰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1431', '167', '巴彦县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1432', '167', '通河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1433', '167', '木兰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1434', '167', '延寿县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1435', '168', '萨尔图区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1436', '168', '红岗区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1437', '168', '龙凤区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1438', '168', '让胡路区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1439', '168', '大同区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1440', '168', '肇州县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1441', '168', '肇源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1442', '168', '林甸县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1443', '168', '杜尔伯特', '3', '0');
INSERT INTO `ecs_region` VALUES ('1444', '169', '呼玛县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1445', '169', '漠河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1446', '169', '塔河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1447', '170', '兴山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1448', '170', '工农区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1449', '170', '南山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1450', '170', '兴安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1451', '170', '向阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1452', '170', '东山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1453', '170', '萝北县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1454', '170', '绥滨县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1455', '171', '爱辉区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1456', '171', '五大连池市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1457', '171', '北安市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1458', '171', '嫩江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1459', '171', '逊克县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1460', '171', '孙吴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1461', '172', '鸡冠区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1462', '172', '恒山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1463', '172', '城子河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1464', '172', '滴道区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1465', '172', '梨树区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1466', '172', '虎林市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1467', '172', '密山市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1468', '172', '鸡东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1469', '173', '前进区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1470', '173', '郊区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1471', '173', '向阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1472', '173', '东风区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1473', '173', '同江市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1474', '173', '富锦市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1475', '173', '桦南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1476', '173', '桦川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1477', '173', '汤原县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1478', '173', '抚远县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1479', '174', '爱民区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1480', '174', '东安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1481', '174', '阳明区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1482', '174', '西安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1483', '174', '绥芬河市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1484', '174', '海林市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1485', '174', '宁安市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1486', '174', '穆棱市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1487', '174', '东宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1488', '174', '林口县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1489', '175', '桃山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1490', '175', '新兴区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1491', '175', '茄子河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1492', '175', '勃利县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1493', '176', '龙沙区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1494', '176', '昂昂溪区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1495', '176', '铁峰区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1496', '176', '建华区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1497', '176', '富拉尔基区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1498', '176', '碾子山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1499', '176', '梅里斯达斡尔区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1500', '176', '讷河市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1501', '176', '龙江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1502', '176', '依安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1503', '176', '泰来县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1504', '176', '甘南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1505', '176', '富裕县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1506', '176', '克山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1507', '176', '克东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1508', '176', '拜泉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1509', '177', '尖山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1510', '177', '岭东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1511', '177', '四方台区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1512', '177', '宝山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1513', '177', '集贤县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1514', '177', '友谊县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1515', '177', '宝清县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1516', '177', '饶河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1517', '178', '北林区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1518', '178', '安达市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1519', '178', '肇东市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1520', '178', '海伦市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1521', '178', '望奎县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1522', '178', '兰西县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1523', '178', '青冈县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1524', '178', '庆安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1525', '178', '明水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1526', '178', '绥棱县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1527', '179', '伊春区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1528', '179', '带岭区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1529', '179', '南岔区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1530', '179', '金山屯区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1531', '179', '西林区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1532', '179', '美溪区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1533', '179', '乌马河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1534', '179', '翠峦区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1535', '179', '友好区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1536', '179', '上甘岭区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1537', '179', '五营区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1538', '179', '红星区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1539', '179', '新青区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1540', '179', '汤旺河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1541', '179', '乌伊岭区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1542', '179', '铁力市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1543', '179', '嘉荫县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1544', '180', '江岸区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1545', '180', '武昌区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1546', '180', '江汉区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1547', '180', '硚口区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1548', '180', '汉阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1549', '180', '青山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1550', '180', '洪山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1551', '180', '东西湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1552', '180', '汉南区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1553', '180', '蔡甸区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1554', '180', '江夏区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1555', '180', '黄陂区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1556', '180', '新洲区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1557', '180', '经济开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1558', '181', '仙桃市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1559', '182', '鄂城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1560', '182', '华容区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1561', '182', '梁子湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1562', '183', '黄州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1563', '183', '麻城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1564', '183', '武穴市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1565', '183', '团风县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1566', '183', '红安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1567', '183', '罗田县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1568', '183', '英山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1569', '183', '浠水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1570', '183', '蕲春县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1571', '183', '黄梅县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1572', '184', '黄石港区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1573', '184', '西塞山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1574', '184', '下陆区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1575', '184', '铁山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1576', '184', '大冶市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1577', '184', '阳新县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1578', '185', '东宝区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1579', '185', '掇刀区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1580', '185', '钟祥市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1581', '185', '京山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1582', '185', '沙洋县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1583', '186', '沙市区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1584', '186', '荆州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1585', '186', '石首市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1586', '186', '洪湖市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1587', '186', '松滋市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1588', '186', '公安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1589', '186', '监利县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1590', '186', '江陵县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1591', '187', '潜江市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1592', '188', '神农架林区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1593', '189', '张湾区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1594', '189', '茅箭区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1595', '189', '丹江口市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1596', '189', '郧县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1597', '189', '郧西县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1598', '189', '竹山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1599', '189', '竹溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1600', '189', '房县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1601', '190', '曾都区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1602', '190', '广水市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1603', '191', '天门市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1604', '192', '咸安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1605', '192', '赤壁市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1606', '192', '嘉鱼县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1607', '192', '通城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1608', '192', '崇阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1609', '192', '通山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1610', '193', '襄城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1611', '193', '樊城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1612', '193', '襄阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1613', '193', '老河口市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1614', '193', '枣阳市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1615', '193', '宜城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1616', '193', '南漳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1617', '193', '谷城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1618', '193', '保康县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1619', '194', '孝南区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1620', '194', '应城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1621', '194', '安陆市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1622', '194', '汉川市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1623', '194', '孝昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1624', '194', '大悟县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1625', '194', '云梦县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1626', '195', '长阳', '3', '0');
INSERT INTO `ecs_region` VALUES ('1627', '195', '五峰', '3', '0');
INSERT INTO `ecs_region` VALUES ('1628', '195', '西陵区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1629', '195', '伍家岗区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1630', '195', '点军区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1631', '195', '猇亭区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1632', '195', '夷陵区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1633', '195', '宜都市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1634', '195', '当阳市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1635', '195', '枝江市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1636', '195', '远安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1637', '195', '兴山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1638', '195', '秭归县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1639', '196', '恩施市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1640', '196', '利川市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1641', '196', '建始县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1642', '196', '巴东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1643', '196', '宣恩县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1644', '196', '咸丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1645', '196', '来凤县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1646', '196', '鹤峰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1647', '197', '岳麓区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1648', '197', '芙蓉区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1649', '197', '天心区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1650', '197', '开福区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1651', '197', '雨花区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1652', '197', '开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1653', '197', '浏阳市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1654', '197', '长沙县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1655', '197', '望城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1656', '197', '宁乡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1657', '198', '永定区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1658', '198', '武陵源区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1659', '198', '慈利县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1660', '198', '桑植县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1661', '199', '武陵区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1662', '199', '鼎城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1663', '199', '津市市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1664', '199', '安乡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1665', '199', '汉寿县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1666', '199', '澧县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1667', '199', '临澧县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1668', '199', '桃源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1669', '199', '石门县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1670', '200', '北湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1671', '200', '苏仙区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1672', '200', '资兴市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1673', '200', '桂阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1674', '200', '宜章县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1675', '200', '永兴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1676', '200', '嘉禾县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1677', '200', '临武县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1678', '200', '汝城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1679', '200', '桂东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1680', '200', '安仁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1681', '201', '雁峰区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1682', '201', '珠晖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1683', '201', '石鼓区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1684', '201', '蒸湘区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1685', '201', '南岳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1686', '201', '耒阳市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1687', '201', '常宁市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1688', '201', '衡阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1689', '201', '衡南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1690', '201', '衡山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1691', '201', '衡东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1692', '201', '祁东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1693', '202', '鹤城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1694', '202', '靖州', '3', '0');
INSERT INTO `ecs_region` VALUES ('1695', '202', '麻阳', '3', '0');
INSERT INTO `ecs_region` VALUES ('1696', '202', '通道', '3', '0');
INSERT INTO `ecs_region` VALUES ('1697', '202', '新晃', '3', '0');
INSERT INTO `ecs_region` VALUES ('1698', '202', '芷江', '3', '0');
INSERT INTO `ecs_region` VALUES ('1699', '202', '沅陵县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1700', '202', '辰溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1701', '202', '溆浦县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1702', '202', '中方县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1703', '202', '会同县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1704', '202', '洪江市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1705', '203', '娄星区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1706', '203', '冷水江市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1707', '203', '涟源市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1708', '203', '双峰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1709', '203', '新化县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1710', '204', '城步', '3', '0');
INSERT INTO `ecs_region` VALUES ('1711', '204', '双清区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1712', '204', '大祥区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1713', '204', '北塔区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1714', '204', '武冈市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1715', '204', '邵东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1716', '204', '新邵县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1717', '204', '邵阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1718', '204', '隆回县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1719', '204', '洞口县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1720', '204', '绥宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1721', '204', '新宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1722', '205', '岳塘区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1723', '205', '雨湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1724', '205', '湘乡市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1725', '205', '韶山市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1726', '205', '湘潭县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1727', '206', '吉首市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1728', '206', '泸溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1729', '206', '凤凰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1730', '206', '花垣县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1731', '206', '保靖县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1732', '206', '古丈县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1733', '206', '永顺县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1734', '206', '龙山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1735', '207', '赫山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1736', '207', '资阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1737', '207', '沅江市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1738', '207', '南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1739', '207', '桃江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1740', '207', '安化县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1741', '208', '江华', '3', '0');
INSERT INTO `ecs_region` VALUES ('1742', '208', '冷水滩区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1743', '208', '零陵区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1744', '208', '祁阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1745', '208', '东安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1746', '208', '双牌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1747', '208', '道县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1748', '208', '江永县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1749', '208', '宁远县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1750', '208', '蓝山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1751', '208', '新田县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1752', '209', '岳阳楼区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1753', '209', '君山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1754', '209', '云溪区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1755', '209', '汨罗市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1756', '209', '临湘市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1757', '209', '岳阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1758', '209', '华容县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1759', '209', '湘阴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1760', '209', '平江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1761', '210', '天元区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1762', '210', '荷塘区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1763', '210', '芦淞区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1764', '210', '石峰区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1765', '210', '醴陵市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1766', '210', '株洲县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1767', '210', '攸县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1768', '210', '茶陵县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1769', '210', '炎陵县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1770', '211', '朝阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1771', '211', '宽城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1772', '211', '二道区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1773', '211', '南关区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1774', '211', '绿园区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1775', '211', '双阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1776', '211', '净月潭开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1777', '211', '高新技术开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1778', '211', '经济技术开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1779', '211', '汽车产业开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1780', '211', '德惠市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1781', '211', '九台市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1782', '211', '榆树市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1783', '211', '农安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1784', '212', '船营区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1785', '212', '昌邑区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1786', '212', '龙潭区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1787', '212', '丰满区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1788', '212', '蛟河市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1789', '212', '桦甸市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1790', '212', '舒兰市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1791', '212', '磐石市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1792', '212', '永吉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1793', '213', '洮北区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1794', '213', '洮南市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1795', '213', '大安市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1796', '213', '镇赉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1797', '213', '通榆县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1798', '214', '江源区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1799', '214', '八道江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1800', '214', '长白', '3', '0');
INSERT INTO `ecs_region` VALUES ('1801', '214', '临江市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1802', '214', '抚松县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1803', '214', '靖宇县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1804', '215', '龙山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1805', '215', '西安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1806', '215', '东丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1807', '215', '东辽县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1808', '216', '铁西区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1809', '216', '铁东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1810', '216', '伊通', '3', '0');
INSERT INTO `ecs_region` VALUES ('1811', '216', '公主岭市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1812', '216', '双辽市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1813', '216', '梨树县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1814', '217', '前郭尔罗斯', '3', '0');
INSERT INTO `ecs_region` VALUES ('1815', '217', '宁江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1816', '217', '长岭县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1817', '217', '乾安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1818', '217', '扶余县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1819', '218', '东昌区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1820', '218', '二道江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1821', '218', '梅河口市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1822', '218', '集安市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1823', '218', '通化县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1824', '218', '辉南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1825', '218', '柳河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1826', '219', '延吉市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1827', '219', '图们市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1828', '219', '敦化市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1829', '219', '珲春市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1830', '219', '龙井市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1831', '219', '和龙市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1832', '219', '安图县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1833', '219', '汪清县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1834', '220', '玄武区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1835', '220', '鼓楼区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1836', '220', '白下区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1837', '220', '建邺区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1838', '220', '秦淮区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1839', '220', '雨花台区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1840', '220', '下关区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1841', '220', '栖霞区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1842', '220', '浦口区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1843', '220', '江宁区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1844', '220', '六合区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1845', '220', '溧水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1846', '220', '高淳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1847', '221', '沧浪区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1848', '221', '金阊区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1849', '221', '平江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1850', '221', '虎丘区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1851', '221', '吴中区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1852', '221', '相城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1853', '221', '园区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1854', '221', '新区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1855', '221', '常熟市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1856', '221', '张家港市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1857', '221', '玉山镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1858', '221', '巴城镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1859', '221', '周市镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1860', '221', '陆家镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1861', '221', '花桥镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1862', '221', '淀山湖镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1863', '221', '张浦镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1864', '221', '周庄镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1865', '221', '千灯镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1866', '221', '锦溪镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1867', '221', '开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1868', '221', '吴江市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1869', '221', '太仓市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1870', '222', '崇安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1871', '222', '北塘区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1872', '222', '南长区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1873', '222', '锡山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1874', '222', '惠山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1875', '222', '滨湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1876', '222', '新区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1877', '222', '江阴市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1878', '222', '宜兴市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1879', '223', '天宁区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1880', '223', '钟楼区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1881', '223', '戚墅堰区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1882', '223', '郊区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1883', '223', '新北区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1884', '223', '武进区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1885', '223', '溧阳市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1886', '223', '金坛市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1887', '224', '清河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1888', '224', '清浦区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1889', '224', '楚州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1890', '224', '淮阴区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1891', '224', '涟水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1892', '224', '洪泽县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1893', '224', '盱眙县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1894', '224', '金湖县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1895', '225', '新浦区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1896', '225', '连云区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1897', '225', '海州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1898', '225', '赣榆县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1899', '225', '东海县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1900', '225', '灌云县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1901', '225', '灌南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1902', '226', '崇川区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1903', '226', '港闸区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1904', '226', '经济开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1905', '226', '启东市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1906', '226', '如皋市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1907', '226', '通州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1908', '226', '海门市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1909', '226', '海安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1910', '226', '如东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1911', '227', '宿城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1912', '227', '宿豫区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1913', '227', '宿豫县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1914', '227', '沭阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1915', '227', '泗阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1916', '227', '泗洪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1917', '228', '海陵区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1918', '228', '高港区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1919', '228', '兴化市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1920', '228', '靖江市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1921', '228', '泰兴市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1922', '228', '姜堰市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1923', '229', '云龙区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1924', '229', '鼓楼区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1925', '229', '九里区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1926', '229', '贾汪区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1927', '229', '泉山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1928', '229', '新沂市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1929', '229', '邳州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1930', '229', '丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1931', '229', '沛县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1932', '229', '铜山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1933', '229', '睢宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1934', '230', '城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1935', '230', '亭湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1936', '230', '盐都区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1937', '230', '盐都县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1938', '230', '东台市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1939', '230', '大丰市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1940', '230', '响水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1941', '230', '滨海县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1942', '230', '阜宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1943', '230', '射阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1944', '230', '建湖县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1945', '231', '广陵区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1946', '231', '维扬区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1947', '231', '邗江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1948', '231', '仪征市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1949', '231', '高邮市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1950', '231', '江都市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1951', '231', '宝应县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1952', '232', '京口区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1953', '232', '润州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1954', '232', '丹徒区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1955', '232', '丹阳市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1956', '232', '扬中市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1957', '232', '句容市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1958', '233', '东湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1959', '233', '西湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1960', '233', '青云谱区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1961', '233', '湾里区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1962', '233', '青山湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1963', '233', '红谷滩新区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1964', '233', '昌北区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1965', '233', '高新区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1966', '233', '南昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1967', '233', '新建县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1968', '233', '安义县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1969', '233', '进贤县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1970', '234', '临川区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1971', '234', '南城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1972', '234', '黎川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1973', '234', '南丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1974', '234', '崇仁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1975', '234', '乐安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1976', '234', '宜黄县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1977', '234', '金溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1978', '234', '资溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1979', '234', '东乡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1980', '234', '广昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1981', '235', '章贡区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1982', '235', '于都县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1983', '235', '瑞金市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1984', '235', '南康市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1985', '235', '赣县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1986', '235', '信丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1987', '235', '大余县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1988', '235', '上犹县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1989', '235', '崇义县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1990', '235', '安远县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1991', '235', '龙南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1992', '235', '定南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1993', '235', '全南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1994', '235', '宁都县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1995', '235', '兴国县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1996', '235', '会昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1997', '235', '寻乌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1998', '235', '石城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1999', '236', '安福县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2000', '236', '吉州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2001', '236', '青原区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2002', '236', '井冈山市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2003', '236', '吉安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2004', '236', '吉水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2005', '236', '峡江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2006', '236', '新干县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2007', '236', '永丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2008', '236', '泰和县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2009', '236', '遂川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2010', '236', '万安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2011', '236', '永新县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2012', '237', '珠山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2013', '237', '昌江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2014', '237', '乐平市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2015', '237', '浮梁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2016', '238', '浔阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2017', '238', '庐山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2018', '238', '瑞昌市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2019', '238', '九江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2020', '238', '武宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2021', '238', '修水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2022', '238', '永修县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2023', '238', '德安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2024', '238', '星子县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2025', '238', '都昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2026', '238', '湖口县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2027', '238', '彭泽县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2028', '239', '安源区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2029', '239', '湘东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2030', '239', '莲花县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2031', '239', '芦溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2032', '239', '上栗县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2033', '240', '信州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2034', '240', '德兴市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2035', '240', '上饶县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2036', '240', '广丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2037', '240', '玉山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2038', '240', '铅山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2039', '240', '横峰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2040', '240', '弋阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2041', '240', '余干县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2042', '240', '波阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2043', '240', '万年县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2044', '240', '婺源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2045', '241', '渝水区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2046', '241', '分宜县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2047', '242', '袁州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2048', '242', '丰城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2049', '242', '樟树市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2050', '242', '高安市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2051', '242', '奉新县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2052', '242', '万载县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2053', '242', '上高县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2054', '242', '宜丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2055', '242', '靖安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2056', '242', '铜鼓县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2057', '243', '月湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2058', '243', '贵溪市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2059', '243', '余江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2060', '244', '沈河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2061', '244', '皇姑区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2062', '244', '和平区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2063', '244', '大东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2064', '244', '铁西区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2065', '244', '苏家屯区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2066', '244', '东陵区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2067', '244', '沈北新区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2068', '244', '于洪区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2069', '244', '浑南新区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2070', '244', '新民市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2071', '244', '辽中县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2072', '244', '康平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2073', '244', '法库县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2074', '245', '西岗区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2075', '245', '中山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2076', '245', '沙河口区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2077', '245', '甘井子区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2078', '245', '旅顺口区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2079', '245', '金州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2080', '245', '开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2081', '245', '瓦房店市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2082', '245', '普兰店市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2083', '245', '庄河市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2084', '245', '长海县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2085', '246', '铁东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2086', '246', '铁西区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2087', '246', '立山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2088', '246', '千山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2089', '246', '岫岩', '3', '0');
INSERT INTO `ecs_region` VALUES ('2090', '246', '海城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2091', '246', '台安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2092', '247', '本溪', '3', '0');
INSERT INTO `ecs_region` VALUES ('2093', '247', '平山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2094', '247', '明山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2095', '247', '溪湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2096', '247', '南芬区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2097', '247', '桓仁', '3', '0');
INSERT INTO `ecs_region` VALUES ('2098', '248', '双塔区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2099', '248', '龙城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2100', '248', '喀喇沁左翼蒙古族自治县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2101', '248', '北票市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2102', '248', '凌源市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2103', '248', '朝阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2104', '248', '建平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2105', '249', '振兴区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2106', '249', '元宝区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2107', '249', '振安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2108', '249', '宽甸', '3', '0');
INSERT INTO `ecs_region` VALUES ('2109', '249', '东港市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2110', '249', '凤城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2111', '250', '顺城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2112', '250', '新抚区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2113', '250', '东洲区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2114', '250', '望花区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2115', '250', '清原', '3', '0');
INSERT INTO `ecs_region` VALUES ('2116', '250', '新宾', '3', '0');
INSERT INTO `ecs_region` VALUES ('2117', '250', '抚顺县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2118', '251', '阜新', '3', '0');
INSERT INTO `ecs_region` VALUES ('2119', '251', '海州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2120', '251', '新邱区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2121', '251', '太平区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2122', '251', '清河门区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2123', '251', '细河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2124', '251', '彰武县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2125', '252', '龙港区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2126', '252', '南票区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2127', '252', '连山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2128', '252', '兴城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2129', '252', '绥中县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2130', '252', '建昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2131', '253', '太和区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2132', '253', '古塔区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2133', '253', '凌河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2134', '253', '凌海市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2135', '253', '北镇市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2136', '253', '黑山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2137', '253', '义县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2138', '254', '白塔区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2139', '254', '文圣区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2140', '254', '宏伟区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2141', '254', '太子河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2142', '254', '弓长岭区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2143', '254', '灯塔市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2144', '254', '辽阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2145', '255', '双台子区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2146', '255', '兴隆台区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2147', '255', '大洼县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2148', '255', '盘山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2149', '256', '银州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2150', '256', '清河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2151', '256', '调兵山市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2152', '256', '开原市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2153', '256', '铁岭县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2154', '256', '西丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2155', '256', '昌图县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2156', '257', '站前区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2157', '257', '西市区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2158', '257', '鲅鱼圈区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2159', '257', '老边区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2160', '257', '盖州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2161', '257', '大石桥市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2162', '258', '回民区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2163', '258', '玉泉区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2164', '258', '新城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2165', '258', '赛罕区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2166', '258', '清水河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2167', '258', '土默特左旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2168', '258', '托克托县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2169', '258', '和林格尔县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2170', '258', '武川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2171', '259', '阿拉善左旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2172', '259', '阿拉善右旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2173', '259', '额济纳旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2174', '260', '临河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2175', '260', '五原县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2176', '260', '磴口县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2177', '260', '乌拉特前旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2178', '260', '乌拉特中旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2179', '260', '乌拉特后旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2180', '260', '杭锦后旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2181', '261', '昆都仑区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2182', '261', '青山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2183', '261', '东河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2184', '261', '九原区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2185', '261', '石拐区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2186', '261', '白云矿区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2187', '261', '土默特右旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2188', '261', '固阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2189', '261', '达尔罕茂明安联合旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2190', '262', '红山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2191', '262', '元宝山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2192', '262', '松山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2193', '262', '阿鲁科尔沁旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2194', '262', '巴林左旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2195', '262', '巴林右旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2196', '262', '林西县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2197', '262', '克什克腾旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2198', '262', '翁牛特旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2199', '262', '喀喇沁旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2200', '262', '宁城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2201', '262', '敖汉旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2202', '263', '东胜区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2203', '263', '达拉特旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2204', '263', '准格尔旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2205', '263', '鄂托克前旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2206', '263', '鄂托克旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2207', '263', '杭锦旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2208', '263', '乌审旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2209', '263', '伊金霍洛旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2210', '264', '海拉尔区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2211', '264', '莫力达瓦', '3', '0');
INSERT INTO `ecs_region` VALUES ('2212', '264', '满洲里市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2213', '264', '牙克石市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2214', '264', '扎兰屯市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2215', '264', '额尔古纳市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2216', '264', '根河市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2217', '264', '阿荣旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2218', '264', '鄂伦春自治旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2219', '264', '鄂温克族自治旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2220', '264', '陈巴尔虎旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2221', '264', '新巴尔虎左旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2222', '264', '新巴尔虎右旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2223', '265', '科尔沁区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2224', '265', '霍林郭勒市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2225', '265', '科尔沁左翼中旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2226', '265', '科尔沁左翼后旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2227', '265', '开鲁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2228', '265', '库伦旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2229', '265', '奈曼旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2230', '265', '扎鲁特旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2231', '266', '海勃湾区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2232', '266', '乌达区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2233', '266', '海南区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2234', '267', '化德县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2235', '267', '集宁区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2236', '267', '丰镇市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2237', '267', '卓资县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2238', '267', '商都县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2239', '267', '兴和县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2240', '267', '凉城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2241', '267', '察哈尔右翼前旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2242', '267', '察哈尔右翼中旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2243', '267', '察哈尔右翼后旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2244', '267', '四子王旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2245', '268', '二连浩特市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2246', '268', '锡林浩特市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2247', '268', '阿巴嘎旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2248', '268', '苏尼特左旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2249', '268', '苏尼特右旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2250', '268', '东乌珠穆沁旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2251', '268', '西乌珠穆沁旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2252', '268', '太仆寺旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2253', '268', '镶黄旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2254', '268', '正镶白旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2255', '268', '正蓝旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2256', '268', '多伦县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2257', '269', '乌兰浩特市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2258', '269', '阿尔山市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2259', '269', '科尔沁右翼前旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2260', '269', '科尔沁右翼中旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2261', '269', '扎赉特旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2262', '269', '突泉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2263', '270', '西夏区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2264', '270', '金凤区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2265', '270', '兴庆区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2266', '270', '灵武市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2267', '270', '永宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2268', '270', '贺兰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2269', '271', '原州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2270', '271', '海原县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2271', '271', '西吉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2272', '271', '隆德县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2273', '271', '泾源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2274', '271', '彭阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2275', '272', '惠农县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2276', '272', '大武口区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2277', '272', '惠农区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2278', '272', '陶乐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2279', '272', '平罗县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2280', '273', '利通区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2281', '273', '中卫县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2282', '273', '青铜峡市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2283', '273', '中宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2284', '273', '盐池县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2285', '273', '同心县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2286', '274', '沙坡头区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2287', '274', '海原县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2288', '274', '中宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2289', '275', '城中区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2290', '275', '城东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2291', '275', '城西区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2292', '275', '城北区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2293', '275', '湟中县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2294', '275', '湟源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2295', '275', '大通', '3', '0');
INSERT INTO `ecs_region` VALUES ('2296', '276', '玛沁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2297', '276', '班玛县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2298', '276', '甘德县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2299', '276', '达日县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2300', '276', '久治县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2301', '276', '玛多县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2302', '277', '海晏县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2303', '277', '祁连县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2304', '277', '刚察县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2305', '277', '门源', '3', '0');
INSERT INTO `ecs_region` VALUES ('2306', '278', '平安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2307', '278', '乐都县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2308', '278', '民和', '3', '0');
INSERT INTO `ecs_region` VALUES ('2309', '278', '互助', '3', '0');
INSERT INTO `ecs_region` VALUES ('2310', '278', '化隆', '3', '0');
INSERT INTO `ecs_region` VALUES ('2311', '278', '循化', '3', '0');
INSERT INTO `ecs_region` VALUES ('2312', '279', '共和县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2313', '279', '同德县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2314', '279', '贵德县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2315', '279', '兴海县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2316', '279', '贵南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2317', '280', '德令哈市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2318', '280', '格尔木市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2319', '280', '乌兰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2320', '280', '都兰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2321', '280', '天峻县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2322', '281', '同仁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2323', '281', '尖扎县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2324', '281', '泽库县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2325', '281', '河南蒙古族自治县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2326', '282', '玉树县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2327', '282', '杂多县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2328', '282', '称多县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2329', '282', '治多县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2330', '282', '囊谦县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2331', '282', '曲麻莱县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2332', '283', '市中区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2333', '283', '历下区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2334', '283', '天桥区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2335', '283', '槐荫区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2336', '283', '历城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2337', '283', '长清区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2338', '283', '章丘市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2339', '283', '平阴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2340', '283', '济阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2341', '283', '商河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2342', '284', '市南区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2343', '284', '市北区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2344', '284', '城阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2345', '284', '四方区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2346', '284', '李沧区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2347', '284', '黄岛区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2348', '284', '崂山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2349', '284', '胶州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2350', '284', '即墨市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2351', '284', '平度市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2352', '284', '胶南市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2353', '284', '莱西市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2354', '285', '滨城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2355', '285', '惠民县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2356', '285', '阳信县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2357', '285', '无棣县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2358', '285', '沾化县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2359', '285', '博兴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2360', '285', '邹平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2361', '286', '德城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2362', '286', '陵县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2363', '286', '乐陵市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2364', '286', '禹城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2365', '286', '宁津县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2366', '286', '庆云县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2367', '286', '临邑县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2368', '286', '齐河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2369', '286', '平原县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2370', '286', '夏津县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2371', '286', '武城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2372', '287', '东营区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2373', '287', '河口区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2374', '287', '垦利县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2375', '287', '利津县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2376', '287', '广饶县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2377', '288', '牡丹区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2378', '288', '曹县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2379', '288', '单县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2380', '288', '成武县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2381', '288', '巨野县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2382', '288', '郓城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2383', '288', '鄄城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2384', '288', '定陶县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2385', '288', '东明县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2386', '289', '市中区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2387', '289', '任城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2388', '289', '曲阜市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2389', '289', '兖州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2390', '289', '邹城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2391', '289', '微山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2392', '289', '鱼台县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2393', '289', '金乡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2394', '289', '嘉祥县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2395', '289', '汶上县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2396', '289', '泗水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2397', '289', '梁山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2398', '290', '莱城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2399', '290', '钢城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2400', '291', '东昌府区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2401', '291', '临清市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2402', '291', '阳谷县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2403', '291', '莘县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2404', '291', '茌平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2405', '291', '东阿县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2406', '291', '冠县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2407', '291', '高唐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2408', '292', '兰山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2409', '292', '罗庄区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2410', '292', '河东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2411', '292', '沂南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2412', '292', '郯城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2413', '292', '沂水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2414', '292', '苍山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2415', '292', '费县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2416', '292', '平邑县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2417', '292', '莒南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2418', '292', '蒙阴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2419', '292', '临沭县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2420', '293', '东港区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2421', '293', '岚山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2422', '293', '五莲县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2423', '293', '莒县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2424', '294', '泰山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2425', '294', '岱岳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2426', '294', '新泰市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2427', '294', '肥城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2428', '294', '宁阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2429', '294', '东平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2430', '295', '荣成市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2431', '295', '乳山市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2432', '295', '环翠区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2433', '295', '文登市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2434', '296', '潍城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2435', '296', '寒亭区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2436', '296', '坊子区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2437', '296', '奎文区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2438', '296', '青州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2439', '296', '诸城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2440', '296', '寿光市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2441', '296', '安丘市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2442', '296', '高密市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2443', '296', '昌邑市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2444', '296', '临朐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2445', '296', '昌乐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2446', '297', '芝罘区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2447', '297', '福山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2448', '297', '牟平区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2449', '297', '莱山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2450', '297', '开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2451', '297', '龙口市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2452', '297', '莱阳市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2453', '297', '莱州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2454', '297', '蓬莱市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2455', '297', '招远市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2456', '297', '栖霞市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2457', '297', '海阳市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2458', '297', '长岛县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2459', '298', '市中区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2460', '298', '山亭区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2461', '298', '峄城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2462', '298', '台儿庄区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2463', '298', '薛城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2464', '298', '滕州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2465', '299', '张店区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2466', '299', '临淄区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2467', '299', '淄川区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2468', '299', '博山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2469', '299', '周村区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2470', '299', '桓台县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2471', '299', '高青县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2472', '299', '沂源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2473', '300', '杏花岭区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2474', '300', '小店区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2475', '300', '迎泽区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2476', '300', '尖草坪区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2477', '300', '万柏林区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2478', '300', '晋源区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2479', '300', '高新开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2480', '300', '民营经济开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2481', '300', '经济技术开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2482', '300', '清徐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2483', '300', '阳曲县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2484', '300', '娄烦县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2485', '300', '古交市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2486', '301', '城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2487', '301', '郊区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2488', '301', '沁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2489', '301', '潞城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2490', '301', '长治县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2491', '301', '襄垣县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2492', '301', '屯留县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2493', '301', '平顺县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2494', '301', '黎城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2495', '301', '壶关县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2496', '301', '长子县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2497', '301', '武乡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2498', '301', '沁源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2499', '302', '城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2500', '302', '矿区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2501', '302', '南郊区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2502', '302', '新荣区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2503', '302', '阳高县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2504', '302', '天镇县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2505', '302', '广灵县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2506', '302', '灵丘县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2507', '302', '浑源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2508', '302', '左云县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2509', '302', '大同县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2510', '303', '城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2511', '303', '高平市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2512', '303', '沁水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2513', '303', '阳城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2514', '303', '陵川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2515', '303', '泽州县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2516', '304', '榆次区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2517', '304', '介休市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2518', '304', '榆社县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2519', '304', '左权县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2520', '304', '和顺县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2521', '304', '昔阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2522', '304', '寿阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2523', '304', '太谷县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2524', '304', '祁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2525', '304', '平遥县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2526', '304', '灵石县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2527', '305', '尧都区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2528', '305', '侯马市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2529', '305', '霍州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2530', '305', '曲沃县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2531', '305', '翼城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2532', '305', '襄汾县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2533', '305', '洪洞县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2534', '305', '吉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2535', '305', '安泽县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2536', '305', '浮山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2537', '305', '古县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2538', '305', '乡宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2539', '305', '大宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2540', '305', '隰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2541', '305', '永和县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2542', '305', '蒲县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2543', '305', '汾西县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2544', '306', '离石市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2545', '306', '离石区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2546', '306', '孝义市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2547', '306', '汾阳市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2548', '306', '文水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2549', '306', '交城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2550', '306', '兴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2551', '306', '临县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2552', '306', '柳林县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2553', '306', '石楼县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2554', '306', '岚县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2555', '306', '方山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2556', '306', '中阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2557', '306', '交口县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2558', '307', '朔城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2559', '307', '平鲁区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2560', '307', '山阴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2561', '307', '应县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2562', '307', '右玉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2563', '307', '怀仁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2564', '308', '忻府区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2565', '308', '原平市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2566', '308', '定襄县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2567', '308', '五台县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2568', '308', '代县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2569', '308', '繁峙县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2570', '308', '宁武县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2571', '308', '静乐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2572', '308', '神池县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2573', '308', '五寨县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2574', '308', '岢岚县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2575', '308', '河曲县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2576', '308', '保德县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2577', '308', '偏关县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2578', '309', '城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2579', '309', '矿区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2580', '309', '郊区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2581', '309', '平定县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2582', '309', '盂县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2583', '310', '盐湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2584', '310', '永济市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2585', '310', '河津市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2586', '310', '临猗县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2587', '310', '万荣县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2588', '310', '闻喜县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2589', '310', '稷山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2590', '310', '新绛县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2591', '310', '绛县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2592', '310', '垣曲县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2593', '310', '夏县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2594', '310', '平陆县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2595', '310', '芮城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2596', '311', '莲湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2597', '311', '新城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2598', '311', '碑林区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2599', '311', '雁塔区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2600', '311', '灞桥区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2601', '311', '未央区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2602', '311', '阎良区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2603', '311', '临潼区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2604', '311', '长安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2605', '311', '蓝田县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2606', '311', '周至县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2607', '311', '户县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2608', '311', '高陵县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2609', '312', '汉滨区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2610', '312', '汉阴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2611', '312', '石泉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2612', '312', '宁陕县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2613', '312', '紫阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2614', '312', '岚皋县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2615', '312', '平利县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2616', '312', '镇坪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2617', '312', '旬阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2618', '312', '白河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2619', '313', '陈仓区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2620', '313', '渭滨区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2621', '313', '金台区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2622', '313', '凤翔县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2623', '313', '岐山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2624', '313', '扶风县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2625', '313', '眉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2626', '313', '陇县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2627', '313', '千阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2628', '313', '麟游县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2629', '313', '凤县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2630', '313', '太白县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2631', '314', '汉台区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2632', '314', '南郑县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2633', '314', '城固县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2634', '314', '洋县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2635', '314', '西乡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2636', '314', '勉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2637', '314', '宁强县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2638', '314', '略阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2639', '314', '镇巴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2640', '314', '留坝县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2641', '314', '佛坪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2642', '315', '商州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2643', '315', '洛南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2644', '315', '丹凤县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2645', '315', '商南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2646', '315', '山阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2647', '315', '镇安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2648', '315', '柞水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2649', '316', '耀州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2650', '316', '王益区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2651', '316', '印台区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2652', '316', '宜君县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2653', '317', '临渭区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2654', '317', '韩城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2655', '317', '华阴市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2656', '317', '华县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2657', '317', '潼关县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2658', '317', '大荔县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2659', '317', '合阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2660', '317', '澄城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2661', '317', '蒲城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2662', '317', '白水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2663', '317', '富平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2664', '318', '秦都区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2665', '318', '渭城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2666', '318', '杨陵区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2667', '318', '兴平市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2668', '318', '三原县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2669', '318', '泾阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2670', '318', '乾县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2671', '318', '礼泉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2672', '318', '永寿县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2673', '318', '彬县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2674', '318', '长武县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2675', '318', '旬邑县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2676', '318', '淳化县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2677', '318', '武功县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2678', '319', '吴起县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2679', '319', '宝塔区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2680', '319', '延长县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2681', '319', '延川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2682', '319', '子长县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2683', '319', '安塞县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2684', '319', '志丹县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2685', '319', '甘泉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2686', '319', '富县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2687', '319', '洛川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2688', '319', '宜川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2689', '319', '黄龙县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2690', '319', '黄陵县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2691', '320', '榆阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2692', '320', '神木县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2693', '320', '府谷县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2694', '320', '横山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2695', '320', '靖边县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2696', '320', '定边县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2697', '320', '绥德县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2698', '320', '米脂县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2699', '320', '佳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2700', '320', '吴堡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2701', '320', '清涧县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2702', '320', '子洲县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2703', '321', '长宁区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2704', '321', '闸北区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2705', '321', '闵行区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2706', '321', '徐汇区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2707', '321', '浦东新区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2708', '321', '杨浦区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2709', '321', '普陀区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2710', '321', '静安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2711', '321', '卢湾区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2712', '321', '虹口区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2713', '321', '黄浦区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2714', '321', '南汇区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2715', '321', '松江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2716', '321', '嘉定区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2717', '321', '宝山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2718', '321', '青浦区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2719', '321', '金山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2720', '321', '奉贤区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2721', '321', '崇明县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2722', '322', '青羊区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2723', '322', '锦江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2724', '322', '金牛区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2725', '322', '武侯区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2726', '322', '成华区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2727', '322', '龙泉驿区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2728', '322', '青白江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2729', '322', '新都区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2730', '322', '温江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2731', '322', '高新区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2732', '322', '高新西区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2733', '322', '都江堰市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2734', '322', '彭州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2735', '322', '邛崃市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2736', '322', '崇州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2737', '322', '金堂县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2738', '322', '双流县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2739', '322', '郫县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2740', '322', '大邑县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2741', '322', '蒲江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2742', '322', '新津县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2743', '322', '都江堰市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2744', '322', '彭州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2745', '322', '邛崃市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2746', '322', '崇州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2747', '322', '金堂县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2748', '322', '双流县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2749', '322', '郫县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2750', '322', '大邑县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2751', '322', '蒲江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2752', '322', '新津县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2753', '323', '涪城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2754', '323', '游仙区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2755', '323', '江油市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2756', '323', '盐亭县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2757', '323', '三台县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2758', '323', '平武县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2759', '323', '安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2760', '323', '梓潼县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2761', '323', '北川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2762', '324', '马尔康县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2763', '324', '汶川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2764', '324', '理县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2765', '324', '茂县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2766', '324', '松潘县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2767', '324', '九寨沟县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2768', '324', '金川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2769', '324', '小金县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2770', '324', '黑水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2771', '324', '壤塘县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2772', '324', '阿坝县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2773', '324', '若尔盖县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2774', '324', '红原县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2775', '325', '巴州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2776', '325', '通江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2777', '325', '南江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2778', '325', '平昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2779', '326', '通川区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2780', '326', '万源市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2781', '326', '达县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2782', '326', '宣汉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2783', '326', '开江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2784', '326', '大竹县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2785', '326', '渠县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2786', '327', '旌阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2787', '327', '广汉市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2788', '327', '什邡市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2789', '327', '绵竹市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2790', '327', '罗江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2791', '327', '中江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2792', '328', '康定县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2793', '328', '丹巴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2794', '328', '泸定县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2795', '328', '炉霍县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2796', '328', '九龙县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2797', '328', '甘孜县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2798', '328', '雅江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2799', '328', '新龙县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2800', '328', '道孚县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2801', '328', '白玉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2802', '328', '理塘县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2803', '328', '德格县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2804', '328', '乡城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2805', '328', '石渠县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2806', '328', '稻城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2807', '328', '色达县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2808', '328', '巴塘县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2809', '328', '得荣县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2810', '329', '广安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2811', '329', '华蓥市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2812', '329', '岳池县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2813', '329', '武胜县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2814', '329', '邻水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2815', '330', '利州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2816', '330', '元坝区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2817', '330', '朝天区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2818', '330', '旺苍县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2819', '330', '青川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2820', '330', '剑阁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2821', '330', '苍溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2822', '331', '峨眉山市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2823', '331', '乐山市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2824', '331', '犍为县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2825', '331', '井研县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2826', '331', '夹江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2827', '331', '沐川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2828', '331', '峨边', '3', '0');
INSERT INTO `ecs_region` VALUES ('2829', '331', '马边', '3', '0');
INSERT INTO `ecs_region` VALUES ('2830', '332', '西昌市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2831', '332', '盐源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2832', '332', '德昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2833', '332', '会理县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2834', '332', '会东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2835', '332', '宁南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2836', '332', '普格县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2837', '332', '布拖县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2838', '332', '金阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2839', '332', '昭觉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2840', '332', '喜德县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2841', '332', '冕宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2842', '332', '越西县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2843', '332', '甘洛县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2844', '332', '美姑县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2845', '332', '雷波县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2846', '332', '木里', '3', '0');
INSERT INTO `ecs_region` VALUES ('2847', '333', '东坡区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2848', '333', '仁寿县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2849', '333', '彭山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2850', '333', '洪雅县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2851', '333', '丹棱县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2852', '333', '青神县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2853', '334', '阆中市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2854', '334', '南部县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2855', '334', '营山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2856', '334', '蓬安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2857', '334', '仪陇县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2858', '334', '顺庆区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2859', '334', '高坪区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2860', '334', '嘉陵区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2861', '334', '西充县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2862', '335', '市中区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2863', '335', '东兴区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2864', '335', '威远县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2865', '335', '资中县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2866', '335', '隆昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2867', '336', '东  区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2868', '336', '西  区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2869', '336', '仁和区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2870', '336', '米易县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2871', '336', '盐边县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2872', '337', '船山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2873', '337', '安居区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2874', '337', '蓬溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2875', '337', '射洪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2876', '337', '大英县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2877', '338', '雨城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2878', '338', '名山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2879', '338', '荥经县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2880', '338', '汉源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2881', '338', '石棉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2882', '338', '天全县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2883', '338', '芦山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2884', '338', '宝兴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2885', '339', '翠屏区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2886', '339', '宜宾县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2887', '339', '南溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2888', '339', '江安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2889', '339', '长宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2890', '339', '高县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2891', '339', '珙县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2892', '339', '筠连县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2893', '339', '兴文县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2894', '339', '屏山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2895', '340', '雁江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2896', '340', '简阳市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2897', '340', '安岳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2898', '340', '乐至县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2899', '341', '大安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2900', '341', '自流井区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2901', '341', '贡井区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2902', '341', '沿滩区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2903', '341', '荣县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2904', '341', '富顺县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2905', '342', '江阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2906', '342', '纳溪区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2907', '342', '龙马潭区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2908', '342', '泸县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2909', '342', '合江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2910', '342', '叙永县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2911', '342', '古蔺县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2912', '343', '和平区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2913', '343', '河西区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2914', '343', '南开区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2915', '343', '河北区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2916', '343', '河东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2917', '343', '红桥区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2918', '343', '东丽区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2919', '343', '津南区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2920', '343', '西青区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2921', '343', '北辰区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2922', '343', '塘沽区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2923', '343', '汉沽区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2924', '343', '大港区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2925', '343', '武清区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2926', '343', '宝坻区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2927', '343', '经济开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2928', '343', '宁河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2929', '343', '静海县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2930', '343', '蓟县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2931', '344', '城关区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2932', '344', '林周县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2933', '344', '当雄县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2934', '344', '尼木县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2935', '344', '曲水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2936', '344', '堆龙德庆县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2937', '344', '达孜县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2938', '344', '墨竹工卡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2939', '345', '噶尔县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2940', '345', '普兰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2941', '345', '札达县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2942', '345', '日土县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2943', '345', '革吉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2944', '345', '改则县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2945', '345', '措勤县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2946', '346', '昌都县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2947', '346', '江达县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2948', '346', '贡觉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2949', '346', '类乌齐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2950', '346', '丁青县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2951', '346', '察雅县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2952', '346', '八宿县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2953', '346', '左贡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2954', '346', '芒康县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2955', '346', '洛隆县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2956', '346', '边坝县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2957', '347', '林芝县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2958', '347', '工布江达县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2959', '347', '米林县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2960', '347', '墨脱县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2961', '347', '波密县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2962', '347', '察隅县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2963', '347', '朗县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2964', '348', '那曲县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2965', '348', '嘉黎县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2966', '348', '比如县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2967', '348', '聂荣县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2968', '348', '安多县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2969', '348', '申扎县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2970', '348', '索县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2971', '348', '班戈县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2972', '348', '巴青县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2973', '348', '尼玛县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2974', '349', '日喀则市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2975', '349', '南木林县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2976', '349', '江孜县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2977', '349', '定日县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2978', '349', '萨迦县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2979', '349', '拉孜县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2980', '349', '昂仁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2981', '349', '谢通门县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2982', '349', '白朗县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2983', '349', '仁布县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2984', '349', '康马县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2985', '349', '定结县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2986', '349', '仲巴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2987', '349', '亚东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2988', '349', '吉隆县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2989', '349', '聂拉木县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2990', '349', '萨嘎县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2991', '349', '岗巴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2992', '350', '乃东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2993', '350', '扎囊县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2994', '350', '贡嘎县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2995', '350', '桑日县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2996', '350', '琼结县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2997', '350', '曲松县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2998', '350', '措美县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2999', '350', '洛扎县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3000', '350', '加查县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3001', '350', '隆子县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3002', '350', '错那县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3003', '350', '浪卡子县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3004', '351', '天山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3005', '351', '沙依巴克区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3006', '351', '新市区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3007', '351', '水磨沟区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3008', '351', '头屯河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3009', '351', '达坂城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3010', '351', '米东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3011', '351', '乌鲁木齐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3012', '352', '阿克苏市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3013', '352', '温宿县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3014', '352', '库车县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3015', '352', '沙雅县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3016', '352', '新和县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3017', '352', '拜城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3018', '352', '乌什县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3019', '352', '阿瓦提县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3020', '352', '柯坪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3021', '353', '阿拉尔市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3022', '354', '库尔勒市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3023', '354', '轮台县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3024', '354', '尉犁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3025', '354', '若羌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3026', '354', '且末县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3027', '354', '焉耆', '3', '0');
INSERT INTO `ecs_region` VALUES ('3028', '354', '和静县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3029', '354', '和硕县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3030', '354', '博湖县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3031', '355', '博乐市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3032', '355', '精河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3033', '355', '温泉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3034', '356', '呼图壁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3035', '356', '米泉市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3036', '356', '昌吉市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3037', '356', '阜康市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3038', '356', '玛纳斯县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3039', '356', '奇台县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3040', '356', '吉木萨尔县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3041', '356', '木垒', '3', '0');
INSERT INTO `ecs_region` VALUES ('3042', '357', '哈密市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3043', '357', '伊吾县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3044', '357', '巴里坤', '3', '0');
INSERT INTO `ecs_region` VALUES ('3045', '358', '和田市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3046', '358', '和田县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3047', '358', '墨玉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3048', '358', '皮山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3049', '358', '洛浦县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3050', '358', '策勒县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3051', '358', '于田县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3052', '358', '民丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3053', '359', '喀什市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3054', '359', '疏附县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3055', '359', '疏勒县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3056', '359', '英吉沙县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3057', '359', '泽普县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3058', '359', '莎车县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3059', '359', '叶城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3060', '359', '麦盖提县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3061', '359', '岳普湖县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3062', '359', '伽师县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3063', '359', '巴楚县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3064', '359', '塔什库尔干', '3', '0');
INSERT INTO `ecs_region` VALUES ('3065', '360', '克拉玛依市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3066', '361', '阿图什市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3067', '361', '阿克陶县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3068', '361', '阿合奇县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3069', '361', '乌恰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3070', '362', '石河子市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3071', '363', '图木舒克市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3072', '364', '吐鲁番市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3073', '364', '鄯善县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3074', '364', '托克逊县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3075', '365', '五家渠市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3076', '366', '阿勒泰市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3077', '366', '布克赛尔', '3', '0');
INSERT INTO `ecs_region` VALUES ('3078', '366', '伊宁市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3079', '366', '布尔津县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3080', '366', '奎屯市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3081', '366', '乌苏市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3082', '366', '额敏县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3083', '366', '富蕴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3084', '366', '伊宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3085', '366', '福海县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3086', '366', '霍城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3087', '366', '沙湾县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3088', '366', '巩留县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3089', '366', '哈巴河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3090', '366', '托里县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3091', '366', '青河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3092', '366', '新源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3093', '366', '裕民县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3094', '366', '和布克赛尔', '3', '0');
INSERT INTO `ecs_region` VALUES ('3095', '366', '吉木乃县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3096', '366', '昭苏县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3097', '366', '特克斯县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3098', '366', '尼勒克县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3099', '366', '察布查尔', '3', '0');
INSERT INTO `ecs_region` VALUES ('3100', '367', '盘龙区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3101', '367', '五华区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3102', '367', '官渡区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3103', '367', '西山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3104', '367', '东川区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3105', '367', '安宁市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3106', '367', '呈贡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3107', '367', '晋宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3108', '367', '富民县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3109', '367', '宜良县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3110', '367', '嵩明县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3111', '367', '石林县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3112', '367', '禄劝', '3', '0');
INSERT INTO `ecs_region` VALUES ('3113', '367', '寻甸', '3', '0');
INSERT INTO `ecs_region` VALUES ('3114', '368', '兰坪', '3', '0');
INSERT INTO `ecs_region` VALUES ('3115', '368', '泸水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3116', '368', '福贡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3117', '368', '贡山', '3', '0');
INSERT INTO `ecs_region` VALUES ('3118', '369', '宁洱', '3', '0');
INSERT INTO `ecs_region` VALUES ('3119', '369', '思茅区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3120', '369', '墨江', '3', '0');
INSERT INTO `ecs_region` VALUES ('3121', '369', '景东', '3', '0');
INSERT INTO `ecs_region` VALUES ('3122', '369', '景谷', '3', '0');
INSERT INTO `ecs_region` VALUES ('3123', '369', '镇沅', '3', '0');
INSERT INTO `ecs_region` VALUES ('3124', '369', '江城', '3', '0');
INSERT INTO `ecs_region` VALUES ('3125', '369', '孟连', '3', '0');
INSERT INTO `ecs_region` VALUES ('3126', '369', '澜沧', '3', '0');
INSERT INTO `ecs_region` VALUES ('3127', '369', '西盟', '3', '0');
INSERT INTO `ecs_region` VALUES ('3128', '370', '古城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3129', '370', '宁蒗', '3', '0');
INSERT INTO `ecs_region` VALUES ('3130', '370', '玉龙', '3', '0');
INSERT INTO `ecs_region` VALUES ('3131', '370', '永胜县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3132', '370', '华坪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3133', '371', '隆阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3134', '371', '施甸县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3135', '371', '腾冲县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3136', '371', '龙陵县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3137', '371', '昌宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3138', '372', '楚雄市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3139', '372', '双柏县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3140', '372', '牟定县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3141', '372', '南华县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3142', '372', '姚安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3143', '372', '大姚县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3144', '372', '永仁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3145', '372', '元谋县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3146', '372', '武定县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3147', '372', '禄丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3148', '373', '大理市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3149', '373', '祥云县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3150', '373', '宾川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3151', '373', '弥渡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3152', '373', '永平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3153', '373', '云龙县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3154', '373', '洱源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3155', '373', '剑川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3156', '373', '鹤庆县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3157', '373', '漾濞', '3', '0');
INSERT INTO `ecs_region` VALUES ('3158', '373', '南涧', '3', '0');
INSERT INTO `ecs_region` VALUES ('3159', '373', '巍山', '3', '0');
INSERT INTO `ecs_region` VALUES ('3160', '374', '潞西市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3161', '374', '瑞丽市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3162', '374', '梁河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3163', '374', '盈江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3164', '374', '陇川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3165', '375', '香格里拉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3166', '375', '德钦县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3167', '375', '维西', '3', '0');
INSERT INTO `ecs_region` VALUES ('3168', '376', '泸西县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3169', '376', '蒙自县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3170', '376', '个旧市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3171', '376', '开远市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3172', '376', '绿春县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3173', '376', '建水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3174', '376', '石屏县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3175', '376', '弥勒县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3176', '376', '元阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3177', '376', '红河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3178', '376', '金平', '3', '0');
INSERT INTO `ecs_region` VALUES ('3179', '376', '河口', '3', '0');
INSERT INTO `ecs_region` VALUES ('3180', '376', '屏边', '3', '0');
INSERT INTO `ecs_region` VALUES ('3181', '377', '临翔区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3182', '377', '凤庆县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3183', '377', '云县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3184', '377', '永德县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3185', '377', '镇康县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3186', '377', '双江', '3', '0');
INSERT INTO `ecs_region` VALUES ('3187', '377', '耿马', '3', '0');
INSERT INTO `ecs_region` VALUES ('3188', '377', '沧源', '3', '0');
INSERT INTO `ecs_region` VALUES ('3189', '378', '麒麟区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3190', '378', '宣威市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3191', '378', '马龙县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3192', '378', '陆良县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3193', '378', '师宗县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3194', '378', '罗平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3195', '378', '富源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3196', '378', '会泽县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3197', '378', '沾益县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3198', '379', '文山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3199', '379', '砚山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3200', '379', '西畴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3201', '379', '麻栗坡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3202', '379', '马关县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3203', '379', '丘北县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3204', '379', '广南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3205', '379', '富宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3206', '380', '景洪市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3207', '380', '勐海县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3208', '380', '勐腊县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3209', '381', '红塔区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3210', '381', '江川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3211', '381', '澄江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3212', '381', '通海县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3213', '381', '华宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3214', '381', '易门县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3215', '381', '峨山', '3', '0');
INSERT INTO `ecs_region` VALUES ('3216', '381', '新平', '3', '0');
INSERT INTO `ecs_region` VALUES ('3217', '381', '元江', '3', '0');
INSERT INTO `ecs_region` VALUES ('3218', '382', '昭阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3219', '382', '鲁甸县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3220', '382', '巧家县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3221', '382', '盐津县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3222', '382', '大关县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3223', '382', '永善县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3224', '382', '绥江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3225', '382', '镇雄县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3226', '382', '彝良县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3227', '382', '威信县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3228', '382', '水富县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3229', '383', '西湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3230', '383', '上城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3231', '383', '下城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3232', '383', '拱墅区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3233', '383', '滨江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3234', '383', '江干区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3235', '383', '萧山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3236', '383', '余杭区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3237', '383', '市郊', '3', '0');
INSERT INTO `ecs_region` VALUES ('3238', '383', '建德市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3239', '383', '富阳市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3240', '383', '临安市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3241', '383', '桐庐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3242', '383', '淳安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3243', '384', '吴兴区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3244', '384', '南浔区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3245', '384', '德清县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3246', '384', '长兴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3247', '384', '安吉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3248', '385', '南湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3249', '385', '秀洲区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3250', '385', '海宁市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3251', '385', '嘉善县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3252', '385', '平湖市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3253', '385', '桐乡市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3254', '385', '海盐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3255', '386', '婺城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3256', '386', '金东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3257', '386', '兰溪市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3258', '386', '市区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3259', '386', '佛堂镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('3260', '386', '上溪镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('3261', '386', '义亭镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('3262', '386', '大陈镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('3263', '386', '苏溪镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('3264', '386', '赤岸镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('3265', '386', '东阳市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3266', '386', '永康市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3267', '386', '武义县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3268', '386', '浦江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3269', '386', '磐安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3270', '387', '莲都区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3271', '387', '龙泉市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3272', '387', '青田县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3273', '387', '缙云县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3274', '387', '遂昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3275', '387', '松阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3276', '387', '云和县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3277', '387', '庆元县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3278', '387', '景宁', '3', '0');
INSERT INTO `ecs_region` VALUES ('3279', '388', '海曙区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3280', '388', '江东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3281', '388', '江北区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3282', '388', '镇海区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3283', '388', '北仑区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3284', '388', '鄞州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3285', '388', '余姚市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3286', '388', '慈溪市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3287', '388', '奉化市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3288', '388', '象山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3289', '388', '宁海县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3290', '389', '越城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3291', '389', '上虞市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3292', '389', '嵊州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3293', '389', '绍兴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3294', '389', '新昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3295', '389', '诸暨市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3296', '390', '椒江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3297', '390', '黄岩区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3298', '390', '路桥区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3299', '390', '温岭市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3300', '390', '临海市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3301', '390', '玉环县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3302', '390', '三门县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3303', '390', '天台县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3304', '390', '仙居县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3305', '391', '鹿城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3306', '391', '龙湾区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3307', '391', '瓯海区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3308', '391', '瑞安市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3309', '391', '乐清市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3310', '391', '洞头县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3311', '391', '永嘉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3312', '391', '平阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3313', '391', '苍南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3314', '391', '文成县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3315', '391', '泰顺县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3316', '392', '定海区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3317', '392', '普陀区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3318', '392', '岱山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3319', '392', '嵊泗县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3320', '393', '衢州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3321', '393', '江山市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3322', '393', '常山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3323', '393', '开化县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3324', '393', '龙游县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3325', '394', '合川区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3326', '394', '江津区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3327', '394', '南川区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3328', '394', '永川区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3329', '394', '南岸区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3330', '394', '渝北区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3331', '394', '万盛区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3332', '394', '大渡口区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3333', '394', '万州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3334', '394', '北碚区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3335', '394', '沙坪坝区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3336', '394', '巴南区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3337', '394', '涪陵区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3338', '394', '江北区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3339', '394', '九龙坡区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3340', '394', '渝中区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3341', '394', '黔江开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3342', '394', '长寿区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3343', '394', '双桥区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3344', '394', '綦江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3345', '394', '潼南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3346', '394', '铜梁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3347', '394', '大足县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3348', '394', '荣昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3349', '394', '璧山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3350', '394', '垫江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3351', '394', '武隆县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3352', '394', '丰都县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3353', '394', '城口县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3354', '394', '梁平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3355', '394', '开县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3356', '394', '巫溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3357', '394', '巫山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3358', '394', '奉节县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3359', '394', '云阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3360', '394', '忠县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3361', '394', '石柱', '3', '0');
INSERT INTO `ecs_region` VALUES ('3362', '394', '彭水', '3', '0');
INSERT INTO `ecs_region` VALUES ('3363', '394', '酉阳', '3', '0');
INSERT INTO `ecs_region` VALUES ('3364', '394', '秀山', '3', '0');
INSERT INTO `ecs_region` VALUES ('3365', '395', '沙田区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3366', '395', '东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3367', '395', '观塘区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3368', '395', '黄大仙区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3369', '395', '九龙城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3370', '395', '屯门区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3371', '395', '葵青区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3372', '395', '元朗区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3373', '395', '深水埗区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3374', '395', '西贡区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3375', '395', '大埔区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3376', '395', '湾仔区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3377', '395', '油尖旺区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3378', '395', '北区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3379', '395', '南区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3380', '395', '荃湾区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3381', '395', '中西区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3382', '395', '离岛区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3383', '396', '澳门', '3', '0');
INSERT INTO `ecs_region` VALUES ('3384', '397', '台北', '3', '0');
INSERT INTO `ecs_region` VALUES ('3385', '397', '高雄', '3', '0');
INSERT INTO `ecs_region` VALUES ('3386', '397', '基隆', '3', '0');
INSERT INTO `ecs_region` VALUES ('3387', '397', '台中', '3', '0');
INSERT INTO `ecs_region` VALUES ('3388', '397', '台南', '3', '0');
INSERT INTO `ecs_region` VALUES ('3389', '397', '新竹', '3', '0');
INSERT INTO `ecs_region` VALUES ('3390', '397', '嘉义', '3', '0');
INSERT INTO `ecs_region` VALUES ('3391', '397', '宜兰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3392', '397', '桃园县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3393', '397', '苗栗县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3394', '397', '彰化县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3395', '397', '南投县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3396', '397', '云林县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3397', '397', '屏东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3398', '397', '台东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3399', '397', '花莲县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3400', '397', '澎湖县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3401', '3', '合肥', '2', '0');
INSERT INTO `ecs_region` VALUES ('3402', '3401', '庐阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3403', '3401', '瑶海区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3404', '3401', '蜀山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3405', '3401', '包河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3406', '3401', '长丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3407', '3401', '肥东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3408', '3401', '肥西县', '3', '0');

-- ----------------------------
-- Table structure for `ecs_reg_extend_info`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_reg_extend_info`;
CREATE TABLE `ecs_reg_extend_info` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL,
  `reg_field_id` int(10) unsigned NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_reg_extend_info
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_reg_fields`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_reg_fields`;
CREATE TABLE `ecs_reg_fields` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `reg_field_name` varchar(60) NOT NULL,
  `dis_order` tinyint(3) unsigned NOT NULL DEFAULT '100',
  `display` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_need` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_reg_fields
-- ----------------------------
INSERT INTO `ecs_reg_fields` VALUES ('1', 'MSN', '0', '0', '1', '1');
INSERT INTO `ecs_reg_fields` VALUES ('2', 'QQ', '0', '0', '1', '1');
INSERT INTO `ecs_reg_fields` VALUES ('3', '办公电话', '0', '0', '1', '1');
INSERT INTO `ecs_reg_fields` VALUES ('4', '家庭电话', '0', '0', '1', '1');
INSERT INTO `ecs_reg_fields` VALUES ('5', '手机', '0', '0', '1', '1');
INSERT INTO `ecs_reg_fields` VALUES ('6', '密码找回问题', '0', '0', '1', '1');

-- ----------------------------
-- Table structure for `ecs_role`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_role`;
CREATE TABLE `ecs_role` (
  `role_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `role_name` varchar(60) NOT NULL DEFAULT '',
  `action_list` text NOT NULL,
  `role_describe` text,
  PRIMARY KEY (`role_id`),
  KEY `user_name` (`role_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_role
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_searchengine`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_searchengine`;
CREATE TABLE `ecs_searchengine` (
  `date` date NOT NULL DEFAULT '0000-00-00',
  `searchengine` varchar(20) NOT NULL DEFAULT '',
  `count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`date`,`searchengine`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_searchengine
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_sessions`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_sessions`;
CREATE TABLE `ecs_sessions` (
  `sesskey` char(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `expiry` int(10) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `adminid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '',
  `user_name` varchar(60) NOT NULL,
  `user_rank` tinyint(3) NOT NULL,
  `discount` decimal(3,2) NOT NULL,
  `email` varchar(60) NOT NULL,
  `data` char(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`sesskey`),
  KEY `expiry` (`expiry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_sessions
-- ----------------------------
INSERT INTO `ecs_sessions` VALUES ('5b2cdf2df6552b130a5079958e806109', '1450571874', '0', '0', '113.56.144.20', '0', '0', '1.00', '0', 'a:3:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;}');
INSERT INTO `ecs_sessions` VALUES ('8c65827b3d94c762b436f8f1cf02bc67', '1450571843', '0', '0', '101.226.33.217', '0', '0', '1.00', '0', 'a:3:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;}');
INSERT INTO `ecs_sessions` VALUES ('328213aa839ba57b3bfef1738c567f58', '1450572339', '0', '0', '101.226.89.122', '0', '0', '0.00', '0', 'a:0:{}');
INSERT INTO `ecs_sessions` VALUES ('4d78f821b18e55c408d433794ec19970', '1450572363', '0', '0', '180.153.206.35', '0', '0', '0.00', '0', 'a:0:{}');
INSERT INTO `ecs_sessions` VALUES ('97f235570b845ef829499fa8865e1d3b', '1450572363', '0', '0', '180.153.163.190', '0', '0', '0.00', '0', 'a:0:{}');
INSERT INTO `ecs_sessions` VALUES ('9e90c08b169682efa8bfbaf35f4141d8', '1450572363', '0', '0', '101.226.33.200', '0', '0', '0.00', '0', 'a:0:{}');
INSERT INTO `ecs_sessions` VALUES ('35eb936f6cde0e218a415ad165480485', '1450572544', '0', '0', '180.153.206.17', '0', '0', '0.00', '0', 'a:1:{s:10:\"last_check\";i:1450572544;}');
INSERT INTO `ecs_sessions` VALUES ('384ee26ef600dd476b02f419e85631c7', '1450572797', '0', '0', '113.56.144.20', '0', '0', '0.00', '0', 'a:0:{}');
INSERT INTO `ecs_sessions` VALUES ('ae2db0b9f64f6d187e7f8984520f455a', '1450572338', '0', '0', '101.226.51.229', '0', '0', '0.00', '0', 'a:0:{}');
INSERT INTO `ecs_sessions` VALUES ('936cbcf9ced641ec57112d64c17da41e', '1450572339', '0', '0', '101.226.33.227', '0', '0', '0.00', '0', 'a:1:{s:10:\"last_check\";i:1450572339;}');
INSERT INTO `ecs_sessions` VALUES ('c6aeb538e6a01ac6b932dc97fa5fbba0', '1450572339', '0', '0', '180.153.205.253', '0', '0', '0.00', '0', 'a:0:{}');
INSERT INTO `ecs_sessions` VALUES ('18a1d4f7ce702e2ce854a2a6896970d9', '1450572026', '0', '0', '180.153.201.217', '0', '0', '0.00', '0', 'a:0:{}');
INSERT INTO `ecs_sessions` VALUES ('b5f0cb2d9f8fa6ed65f351a7839d2a35', '1450572027', '0', '0', '101.226.65.106', '0', '0', '0.00', '0', 'a:0:{}');
INSERT INTO `ecs_sessions` VALUES ('91b6fdddd1ec0299beda5c2cb1108ae0', '1450572208', '0', '0', '180.153.206.18', '0', '0', '0.00', '0', 'a:1:{s:10:\"last_check\";i:1450572208;}');
INSERT INTO `ecs_sessions` VALUES ('b5c23bcc9cf0f5271eef06048359a9b8', '1450572322', '0', '0', '101.226.65.105', '0', '0', '0.00', '0', 'a:0:{}');
INSERT INTO `ecs_sessions` VALUES ('8a8471bcabda80310a9b64de800f4a52', '1450572322', '0', '0', '101.226.66.187', '0', '0', '0.00', '0', 'a:0:{}');
INSERT INTO `ecs_sessions` VALUES ('38886a8a7d9a6886e206443ec124ab0f', '1450572724', '0', '1', '113.56.144.20', '0', '0', '0.00', '0', 'a:4:{s:10:\"admin_name\";s:5:\"admin\";s:11:\"action_list\";s:3:\"all\";s:10:\"last_check\";i:1450572724;s:12:\"suppliers_id\";s:1:\"0\";}');
INSERT INTO `ecs_sessions` VALUES ('36e05c1c2e59916cbb18d626ed917418', '1450571919', '0', '0', '180.153.206.19', '0', '0', '0.00', '0', 'a:0:{}');
INSERT INTO `ecs_sessions` VALUES ('7e50d62e3460394da72f790ef217a766', '1450571931', '0', '0', '61.151.218.118', '0', '0', '0.00', '0', 'a:0:{}');
INSERT INTO `ecs_sessions` VALUES ('02bc126e161c605cffcdb86ba3339c6d', '1450571931', '0', '0', '180.153.214.190', '0', '0', '0.00', '0', 'a:0:{}');
INSERT INTO `ecs_sessions` VALUES ('a1273f95595d4ef2c709c69d9d944c59', '1450572020', '0', '0', '180.153.163.208', '0', '0', '0.00', '0', 'a:0:{}');
INSERT INTO `ecs_sessions` VALUES ('d4c0271701038f0d82d6533cb351e6cd', '1450571914', '0', '0', '101.226.33.219', '0', '0', '0.00', '0', 'a:1:{s:10:\"last_check\";i:1450571914;}');
INSERT INTO `ecs_sessions` VALUES ('ec87e3d5157821c92292f541c7dc916f', '1450571914', '0', '0', '180.153.214.200', '0', '0', '0.00', '0', 'a:0:{}');
INSERT INTO `ecs_sessions` VALUES ('90d84c98b92d4524dc5e61cc5c1aafbc', '1450571914', '0', '0', '180.153.206.24', '0', '0', '0.00', '0', 'a:0:{}');
INSERT INTO `ecs_sessions` VALUES ('fa07910dc812f1482dd16648660fb10e', '1450572321', '0', '1', '113.56.144.20', '0', '0', '0.00', '0', 'a:4:{s:10:\"admin_name\";s:5:\"admin\";s:11:\"action_list\";s:3:\"all\";s:10:\"last_check\";i:1450572208;s:12:\"suppliers_id\";s:1:\"0\";}');

-- ----------------------------
-- Table structure for `ecs_sessions_data`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_sessions_data`;
CREATE TABLE `ecs_sessions_data` (
  `sesskey` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `expiry` int(10) unsigned NOT NULL DEFAULT '0',
  `data` longtext NOT NULL,
  PRIMARY KEY (`sesskey`),
  KEY `expiry` (`expiry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_sessions_data
-- ----------------------------
INSERT INTO `ecs_sessions_data` VALUES ('ac551e23e28fd31cfe2a9d9355c1c66b', '4294967295', 'a:8:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"YzFjMWJlMWFmYw==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:1:{s:14:\"extension_code\";s:0:\"\";}s:13:\"captcha_login\";s:16:\"ZGEyZTA0NzcyNw==\";s:15:\"direct_shopping\";i:1;}');
INSERT INTO `ecs_sessions_data` VALUES ('3d06abf4cc1c12f48e5891ea0e2f1c1e', '4294967295', 'a:9:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"N2UwOWM5NzExMg==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:10;s:6:\"pay_id\";i:6;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}s:9:\"last_time\";s:1:\"0\";s:7:\"last_ip\";s:0:\"\";s:14:\"flow_consignee\";a:14:{s:10:\"address_id\";s:1:\"1\";s:9:\"consignee\";s:9:\"刘先生\";s:7:\"country\";s:1:\"1\";s:8:\"province\";s:1:\"2\";s:4:\"city\";s:2:\"52\";s:8:\"district\";s:3:\"502\";s:5:\"email\";s:17:\"ecshop@ecshop.com\";s:7:\"address\";s:12:\"海兴大厦\";s:7:\"zipcode\";s:0:\"\";s:3:\"tel\";s:12:\"010-25851234\";s:6:\"mobile\";s:11:\"13986765412\";s:13:\"sign_building\";s:0:\"\";s:9:\"best_time\";s:0:\"\";s:7:\"user_id\";s:1:\"1\";}}');
INSERT INTO `ecs_sessions_data` VALUES ('41c5f015c7904867d226a31592c52558', '4294967295', 'a:8:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"last_time\";s:10:\"1450023809\";s:7:\"last_ip\";s:9:\"127.0.0.1\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:9:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:10;s:6:\"pay_id\";i:10;s:7:\"pack_id\";i:10;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;s:8:\"bonus_id\";i:0;}s:14:\"flow_consignee\";a:15:{s:10:\"address_id\";s:1:\"1\";s:12:\"address_name\";s:0:\"\";s:7:\"user_id\";s:1:\"1\";s:9:\"consignee\";s:9:\"刘先生\";s:5:\"email\";s:17:\"ecshop@ecshop.com\";s:7:\"country\";s:1:\"1\";s:8:\"province\";s:1:\"2\";s:4:\"city\";s:2:\"52\";s:8:\"district\";s:3:\"502\";s:7:\"address\";s:12:\"海兴大厦\";s:7:\"zipcode\";s:0:\"\";s:3:\"tel\";s:12:\"010-25851234\";s:6:\"mobile\";s:11:\"13986765412\";s:13:\"sign_building\";s:0:\"\";s:9:\"best_time\";s:0:\"\";}}');

-- ----------------------------
-- Table structure for `ecs_shipping`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_shipping`;
CREATE TABLE `ecs_shipping` (
  `shipping_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `shipping_code` varchar(20) NOT NULL DEFAULT '',
  `shipping_name` varchar(120) NOT NULL DEFAULT '',
  `shipping_desc` varchar(255) NOT NULL DEFAULT '',
  `insure` varchar(10) NOT NULL DEFAULT '0',
  `support_cod` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_print` text NOT NULL,
  `print_bg` varchar(255) DEFAULT NULL,
  `config_lable` text,
  `print_model` tinyint(1) DEFAULT '0',
  `shipping_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`shipping_id`),
  KEY `shipping_code` (`shipping_code`,`enabled`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_shipping
-- ----------------------------
INSERT INTO `ecs_shipping` VALUES ('1', 'post_express', '邮政快递包裹', '邮政快递包裹的描述内容。', '2%', '0', '1', '', '', '', '0', '0');
INSERT INTO `ecs_shipping` VALUES ('2', 'yto', '圆通速递', '上海圆通物流（速递）有限公司经过多年的网络快速发展，在中国速递行业中一直处于领先地位。为了能更好的发展国际快件市场，加快与国际市场的接轨，强化圆通的整体实力，圆通已在东南亚、欧美、中东、北美洲、非洲等许多城市运作国际快件业务', '0', '1', '1', '', '', '', '0', '0');
INSERT INTO `ecs_shipping` VALUES ('3', 'city_express', '城际快递', '配送的运费是固定的', '0', '1', '1', '', '/images/receipt/20141028hbvggu.png', '', '0', '0');
INSERT INTO `ecs_shipping` VALUES ('4', 'flat', '市内快递', '固定运费的配送方式内容', '0', '1', '1', '', '', '', '0', '0');
INSERT INTO `ecs_shipping` VALUES ('5', 'sto_express', '申通快递', '江、浙、沪地区首重为15元/KG，其他地区18元/KG， 续重均为5-6元/KG， 云南地区为8元', '0', '0', '1', '', '', '', '0', '0');
INSERT INTO `ecs_shipping` VALUES ('6', 'post_mail', '邮局平邮', '邮局平邮的描述内容。', '0', '0', '1', '', '', '', '0', '0');
INSERT INTO `ecs_shipping` VALUES ('7', 'fpd', '运费到付', '所购商品到达即付运费', '0', '0', '1', '', '', '', '0', '0');
INSERT INTO `ecs_shipping` VALUES ('8', 'cac', '上门取货', '买家自己到商家指定地点取货', '0', '1', '1', '', '/images/receipt/20141028vqkgeo.png', '', '2', '0');
INSERT INTO `ecs_shipping` VALUES ('9', 'sf_express', '顺丰速运', '江、浙、沪地区首重15元/KG，续重2元/KG，其余城市首重20元/KG', '0', '0', '1', '', '/images/receipt/dly_sf_express.jpg', 't_shop_name,网店-名称,150,29,112,137,b_shop_name||,||t_shop_address,网店-地址,268,55,105,168,b_shop_address||,||t_shop_tel,网店-联系电话,55,25,177,224,b_shop_tel||,||t_customer_name,收件人-姓名,78,23,299,265,b_customer_name||,||t_customer_address,收件人-详细地址,271,94,104,293,b_customer_address||,||', '2', '0');
INSERT INTO `ecs_shipping` VALUES ('10', 'zto', '中通速递', '中通快递的相关说明。保价费按照申报价值的2％交纳，但是，保价费不低于100元，保价金额不得高于10000元，保价金额超过10000元的，超过的部分无效', '1%', '0', '1', '', '/images/receipt/dly_zto.jpg', 't_shop_province,网店-省份,116,30,296.55,117.2,b_shop_province||,||t_customer_province,收件人-省份,114,32,649.95,114.3,b_customer_province||,||t_shop_address,网店-地址,260,57,151.75,152.05,b_shop_address||,||t_shop_name,网店-名称,259,28,152.65,212.4,b_shop_name||,||t_shop_tel,网店-联系电话,131,37,138.65,246.5,b_shop_tel||,||t_customer_post,收件人-邮编,104,39,659.2,242.2,b_customer_post||,||t_customer_tel,收件人-电话,158,22,461.9,241.9,b_customer_tel||,||t_customer_mobel,收件人-手机,159,21,463.25,265.4,b_customer_mobel||,||t_customer_name,收件人-姓名,109,32,498.9,115.8,b_customer_name||,||t_customer_address,收件人-详细地址,264,58,499.6,150.1,b_customer_address||,||t_months,月-当日日期,35,23,135.85,392.8,b_months||,||t_day,日-当日日期,24,23,180.1,392.8,b_day||,||', '2', '0');

-- ----------------------------
-- Table structure for `ecs_shipping_area`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_shipping_area`;
CREATE TABLE `ecs_shipping_area` (
  `shipping_area_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `shipping_area_name` varchar(150) NOT NULL DEFAULT '',
  `shipping_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `configure` text NOT NULL,
  PRIMARY KEY (`shipping_area_id`),
  KEY `shipping_id` (`shipping_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_shipping_area
-- ----------------------------
INSERT INTO `ecs_shipping_area` VALUES ('1', '申通', '5', 'a:5:{i:0;a:2:{s:4:\"name\";s:8:\"item_fee\";s:5:\"value\";s:2:\"15\";}i:1;a:2:{s:4:\"name\";s:8:\"base_fee\";s:5:\"value\";s:2:\"15\";}i:2;a:2:{s:4:\"name\";s:8:\"step_fee\";s:5:\"value\";s:1:\"5\";}i:3;a:2:{s:4:\"name\";s:10:\"free_money\";s:5:\"value\";s:1:\"0\";}i:4;a:2:{s:4:\"name\";s:16:\"fee_compute_mode\";s:5:\"value\";s:9:\"by_weight\";}}');
INSERT INTO `ecs_shipping_area` VALUES ('2', '1', '3', 'a:4:{i:0;a:2:{s:4:\"name\";s:8:\"base_fee\";s:5:\"value\";s:2:\"10\";}i:1;a:2:{s:4:\"name\";s:10:\"free_money\";s:5:\"value\";s:6:\"100000\";}i:2;a:2:{s:4:\"name\";s:16:\"fee_compute_mode\";s:5:\"value\";N;}i:3;a:2:{s:4:\"name\";s:7:\"pay_fee\";s:5:\"value\";s:1:\"5\";}}');
INSERT INTO `ecs_shipping_area` VALUES ('3', '邮局', '6', 'a:7:{i:0;a:2:{s:4:\"name\";s:8:\"item_fee\";s:5:\"value\";s:1:\"4\";}i:1;a:2:{s:4:\"name\";s:8:\"base_fee\";s:5:\"value\";s:3:\"3.5\";}i:2;a:2:{s:4:\"name\";s:8:\"step_fee\";s:5:\"value\";s:3:\"2.5\";}i:3;a:2:{s:4:\"name\";s:9:\"step_fee1\";s:5:\"value\";N;}i:4;a:2:{s:4:\"name\";s:8:\"pack_fee\";s:5:\"value\";s:1:\"0\";}i:5;a:2:{s:4:\"name\";s:10:\"free_money\";s:5:\"value\";s:5:\"50000\";}i:6;a:2:{s:4:\"name\";s:16:\"fee_compute_mode\";s:5:\"value\";s:9:\"by_weight\";}}');
INSERT INTO `ecs_shipping_area` VALUES ('4', '运费到付', '7', 'a:2:{i:0;a:2:{s:4:\"name\";s:10:\"free_money\";s:5:\"value\";s:5:\"50000\";}i:1;a:2:{s:4:\"name\";s:16:\"fee_compute_mode\";s:5:\"value\";N;}}');
INSERT INTO `ecs_shipping_area` VALUES ('5', '中国', '10', 'a:5:{i:0;a:2:{s:4:\"name\";s:8:\"item_fee\";s:5:\"value\";s:2:\"15\";}i:1;a:2:{s:4:\"name\";s:8:\"base_fee\";s:5:\"value\";s:2:\"10\";}i:2;a:2:{s:4:\"name\";s:8:\"step_fee\";s:5:\"value\";s:1:\"5\";}i:3;a:2:{s:4:\"name\";s:10:\"free_money\";s:5:\"value\";s:0:\"\";}i:4;a:2:{s:4:\"name\";s:16:\"fee_compute_mode\";s:5:\"value\";s:9:\"by_weight\";}}');

-- ----------------------------
-- Table structure for `ecs_shop_config`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_shop_config`;
CREATE TABLE `ecs_shop_config` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `code` varchar(30) NOT NULL DEFAULT '',
  `type` varchar(10) NOT NULL DEFAULT '',
  `store_range` varchar(255) NOT NULL DEFAULT '',
  `store_dir` varchar(255) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=913 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_shop_config
-- ----------------------------
INSERT INTO `ecs_shop_config` VALUES ('1', '0', 'shop_info', 'group', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('2', '0', 'basic', 'group', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('3', '0', 'display', 'group', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('4', '0', 'shopping_flow', 'group', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('5', '0', 'smtp', 'group', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('6', '0', 'hidden', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('7', '0', 'goods', 'group', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('8', '0', 'sms', 'group', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('9', '0', 'wap', 'group', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('101', '1', 'shop_name', 'text', '', '', '小米官网-好站长资源网www.haoid.cn', '1');
INSERT INTO `ecs_shop_config` VALUES ('102', '1', 'shop_title', 'text', '', '', '小米官网小米手机、红米手机、小米电视官方正品专卖网站', '1');
INSERT INTO `ecs_shop_config` VALUES ('103', '1', 'shop_desc', 'text', '', '', '小米官方网站包含小米手机系列小米NOTE、小米4，红米手机系列红米Note、红米2/2A还有小米电视40/49/55英寸、手环、移动电源、运动相机,小米智能家居系列路由器、空气净化器、体重秤、插线板等小米商城均有售。', '1');
INSERT INTO `ecs_shop_config` VALUES ('104', '1', 'shop_keywords', 'text', '', '', '小米,小米手机,小米官网,红米手机,小米商城,小米电视', '1');
INSERT INTO `ecs_shop_config` VALUES ('105', '1', 'shop_country', 'manual', '', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('106', '1', 'shop_province', 'manual', '', '', '2', '1');
INSERT INTO `ecs_shop_config` VALUES ('107', '1', 'shop_city', 'manual', '', '', '52', '1');
INSERT INTO `ecs_shop_config` VALUES ('108', '1', 'shop_address', 'text', '', '', '重庆市杨家坪', '1');
INSERT INTO `ecs_shop_config` VALUES ('109', '1', 'qq', 'text', '', '', '111111111,22222222,33333333', '1');
INSERT INTO `ecs_shop_config` VALUES ('110', '1', 'ww', 'text', '', '', '44444444,55555555,6666666', '1');
INSERT INTO `ecs_shop_config` VALUES ('111', '1', 'skype', 'text', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('112', '1', 'ym', 'text', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('113', '1', 'msn', 'text', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('114', '1', 'service_email', 'text', '', '', '123123123@qq.com', '1');
INSERT INTO `ecs_shop_config` VALUES ('115', '1', 'service_phone', 'text', '', '', '400-023-3005', '1');
INSERT INTO `ecs_shop_config` VALUES ('116', '1', 'shop_closed', 'select', '0,1', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('117', '1', 'close_comment', 'textarea', '', '', '用户中心公告！', '1');
INSERT INTO `ecs_shop_config` VALUES ('118', '1', 'shop_logo', 'file', '', '../themes/{$template}/images/', '../themes/xiaomi/images/logo.gif', '1');
INSERT INTO `ecs_shop_config` VALUES ('119', '1', 'licensed', 'select', '0,1', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('120', '1', 'user_notice', 'textarea', '', '', '用户中心公告！', '1');
INSERT INTO `ecs_shop_config` VALUES ('121', '1', 'shop_notice', 'textarea', '', '', '欢迎光临好站长源码社区,我们的宗旨：诚信经营、服务客户！\r\n<MARQUEE onmouseover=this.stop() onmouseout=this.start() \r\nscrollAmount=3><U><FONT color=red>\r\n<P>咨询电话010-10124444  010-21252454 8465544</P></FONT></U></MARQUEE>', '1');
INSERT INTO `ecs_shop_config` VALUES ('122', '1', 'shop_reg_closed', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('201', '2', 'lang', 'manual', '', '', 'zh_cn', '1');
INSERT INTO `ecs_shop_config` VALUES ('202', '2', 'icp_number', 'text', '', '', '©<a href=\'#\'>mi.com</a> 京ICP证110507号 京ICP备10046444号 京公网安备1101080212535号 <a href=\'#\'>京网文[2014]0059-0009号</a>', '1');
INSERT INTO `ecs_shop_config` VALUES ('203', '2', 'icp_file', 'file', '', '../cert/', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('204', '2', 'watermark', 'file', '', '../images/', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('205', '2', 'watermark_place', 'select', '0,1,2,3,4,5', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('206', '2', 'watermark_alpha', 'text', '', '', '65', '1');
INSERT INTO `ecs_shop_config` VALUES ('207', '2', 'use_storage', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('208', '2', 'market_price_rate', 'text', '', '', '1.2', '1');
INSERT INTO `ecs_shop_config` VALUES ('209', '2', 'rewrite', 'select', '0,1,2', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('210', '2', 'integral_name', 'text', '', '', '积分', '1');
INSERT INTO `ecs_shop_config` VALUES ('211', '2', 'integral_scale', 'text', '', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('212', '2', 'integral_percent', 'text', '', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('213', '2', 'sn_prefix', 'text', '', '', 'ECS', '1');
INSERT INTO `ecs_shop_config` VALUES ('214', '2', 'comment_check', 'select', '0,1', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('215', '2', 'no_picture', 'file', '', '../images/', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('218', '2', 'stats_code', 'textarea', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('219', '2', 'cache_time', 'text', '', '', '3600', '1');
INSERT INTO `ecs_shop_config` VALUES ('220', '2', 'register_points', 'text', '', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('221', '2', 'enable_gzip', 'select', '0,1', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('222', '2', 'top10_time', 'select', '0,1,2,3,4', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('223', '2', 'timezone', 'options', '-12,-11,-10,-9,-8,-7,-6,-5,-4,-3.5,-3,-2,-1,0,1,2,3,3.5,4,4.5,5,5.5,5.75,6,6.5,7,8,9,9.5,10,11,12', '', '8', '1');
INSERT INTO `ecs_shop_config` VALUES ('224', '2', 'upload_size_limit', 'options', '-1,0,64,128,256,512,1024,2048,4096', '', '64', '1');
INSERT INTO `ecs_shop_config` VALUES ('226', '2', 'cron_method', 'select', '0,1', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('227', '2', 'comment_factor', 'select', '0,1,2,3', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('228', '2', 'enable_order_check', 'select', '0,1', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('229', '2', 'default_storage', 'text', '', '', '10000', '1');
INSERT INTO `ecs_shop_config` VALUES ('230', '2', 'bgcolor', 'text', '', '', '#FFFFFF', '1');
INSERT INTO `ecs_shop_config` VALUES ('231', '2', 'visit_stats', 'select', 'on,off', '', 'off', '1');
INSERT INTO `ecs_shop_config` VALUES ('232', '2', 'send_mail_on', 'select', 'on,off', '', 'off', '1');
INSERT INTO `ecs_shop_config` VALUES ('233', '2', 'auto_generate_gallery', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('234', '2', 'retain_original_img', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('235', '2', 'member_email_validate', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('236', '2', 'message_board', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('239', '2', 'certificate_id', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('240', '2', 'token', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('241', '2', 'certi', 'hidden', '', '', 'http://localhost/api/api.php', '1');
INSERT INTO `ecs_shop_config` VALUES ('242', '2', 'send_verify_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('243', '2', 'ent_id', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('244', '2', 'ent_ac', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('245', '2', 'ent_sign', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('246', '2', 'ent_email', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('301', '3', 'date_format', 'hidden', '', '', 'Y-m-d', '1');
INSERT INTO `ecs_shop_config` VALUES ('302', '3', 'time_format', 'text', '', '', 'Y-m-d H:i:s', '1');
INSERT INTO `ecs_shop_config` VALUES ('303', '3', 'currency_format', 'text', '', '', '%s<em>元</em>', '1');
INSERT INTO `ecs_shop_config` VALUES ('304', '3', 'thumb_width', 'text', '', '', '220', '1');
INSERT INTO `ecs_shop_config` VALUES ('305', '3', 'thumb_height', 'text', '', '', '220', '1');
INSERT INTO `ecs_shop_config` VALUES ('306', '3', 'image_width', 'text', '', '', '350', '1');
INSERT INTO `ecs_shop_config` VALUES ('307', '3', 'image_height', 'text', '', '', '350', '1');
INSERT INTO `ecs_shop_config` VALUES ('312', '3', 'top_number', 'text', '', '', '5', '1');
INSERT INTO `ecs_shop_config` VALUES ('313', '3', 'history_number', 'text', '', '', '5', '1');
INSERT INTO `ecs_shop_config` VALUES ('314', '3', 'comments_number', 'text', '', '', '10', '1');
INSERT INTO `ecs_shop_config` VALUES ('315', '3', 'bought_goods', 'text', '', '', '3', '1');
INSERT INTO `ecs_shop_config` VALUES ('316', '3', 'article_number', 'text', '', '', '4', '1');
INSERT INTO `ecs_shop_config` VALUES ('317', '3', 'goods_name_length', 'text', '', '', '30', '1');
INSERT INTO `ecs_shop_config` VALUES ('318', '3', 'price_format', 'select', '0,1,2,3,4,5', '', '5', '1');
INSERT INTO `ecs_shop_config` VALUES ('319', '3', 'page_size', 'text', '', '', '16', '1');
INSERT INTO `ecs_shop_config` VALUES ('320', '3', 'sort_order_type', 'select', '0,1,2', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('321', '3', 'sort_order_method', 'select', '0,1', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('322', '3', 'show_order_type', 'select', '0,1,2', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('323', '3', 'attr_related_number', 'text', '', '', '5', '1');
INSERT INTO `ecs_shop_config` VALUES ('324', '3', 'goods_gallery_number', 'text', '', '', '5', '1');
INSERT INTO `ecs_shop_config` VALUES ('325', '3', 'article_title_length', 'text', '', '', '16', '1');
INSERT INTO `ecs_shop_config` VALUES ('326', '3', 'name_of_region_1', 'text', '', '', '国家', '1');
INSERT INTO `ecs_shop_config` VALUES ('327', '3', 'name_of_region_2', 'text', '', '', '省', '1');
INSERT INTO `ecs_shop_config` VALUES ('328', '3', 'name_of_region_3', 'text', '', '', '市', '1');
INSERT INTO `ecs_shop_config` VALUES ('329', '3', 'name_of_region_4', 'text', '', '', '区', '1');
INSERT INTO `ecs_shop_config` VALUES ('330', '3', 'search_keywords', 'text', '', '', '小米手环,耳机,插线板', '0');
INSERT INTO `ecs_shop_config` VALUES ('332', '3', 'related_goods_number', 'text', '', '', '4', '1');
INSERT INTO `ecs_shop_config` VALUES ('333', '3', 'help_open', 'select', '0,1', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('334', '3', 'article_page_size', 'text', '', '', '10', '1');
INSERT INTO `ecs_shop_config` VALUES ('335', '3', 'page_style', 'select', '0,1', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('336', '3', 'recommend_order', 'select', '0,1', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('337', '3', 'index_ad', 'hidden', '', '', 'sys', '1');
INSERT INTO `ecs_shop_config` VALUES ('401', '4', 'can_invoice', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('402', '4', 'use_integral', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('403', '4', 'use_bonus', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('404', '4', 'use_surplus', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('405', '4', 'use_how_oos', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('406', '4', 'send_confirm_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('407', '4', 'send_ship_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('408', '4', 'send_cancel_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('409', '4', 'send_invalid_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('410', '4', 'order_pay_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('411', '4', 'order_unpay_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('412', '4', 'order_ship_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('413', '4', 'order_receive_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('414', '4', 'order_unship_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('415', '4', 'order_return_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('416', '4', 'order_invalid_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('417', '4', 'order_cancel_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('418', '4', 'invoice_content', 'textarea', '', '', '办公用品\r\n食品\r\n礼品\r\n服装', '1');
INSERT INTO `ecs_shop_config` VALUES ('419', '4', 'anonymous_buy', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('420', '4', 'min_goods_amount', 'text', '', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('421', '4', 'one_step_buy', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('422', '4', 'invoice_type', 'manual', '', '', 'a:2:{s:4:\"type\";a:3:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";}s:4:\"rate\";a:3:{i:0;d:1;i:1;d:1.5;i:2;d:0;}}', '1');
INSERT INTO `ecs_shop_config` VALUES ('423', '4', 'stock_dec_time', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('424', '4', 'cart_confirm', 'options', '1,2,3,4', '', '4', '0');
INSERT INTO `ecs_shop_config` VALUES ('425', '4', 'send_service_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('426', '4', 'show_goods_in_cart', 'select', '1,2,3', '', '3', '1');
INSERT INTO `ecs_shop_config` VALUES ('427', '4', 'show_attr_in_cart', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('501', '5', 'smtp_host', 'text', '', '', 'smtp.163.com', '1');
INSERT INTO `ecs_shop_config` VALUES ('502', '5', 'smtp_port', 'text', '', '', '25', '1');
INSERT INTO `ecs_shop_config` VALUES ('503', '5', 'smtp_user', 'text', '', '', 'ecmoban1@163.com', '1');
INSERT INTO `ecs_shop_config` VALUES ('504', '5', 'smtp_pass', 'password', '', '', 'admin123', '1');
INSERT INTO `ecs_shop_config` VALUES ('505', '5', 'smtp_mail', 'text', '', '', 'ecmoban1@163.com', '1');
INSERT INTO `ecs_shop_config` VALUES ('506', '5', 'mail_charset', 'select', 'UTF8,GB2312,BIG5', '', 'GB2312', '1');
INSERT INTO `ecs_shop_config` VALUES ('507', '5', 'mail_service', 'select', '0,1', '', '1', '0');
INSERT INTO `ecs_shop_config` VALUES ('508', '5', 'smtp_ssl', 'select', '0,1', '', '0', '0');
INSERT INTO `ecs_shop_config` VALUES ('601', '6', 'integrate_code', 'hidden', '', '', 'ecshop', '1');
INSERT INTO `ecs_shop_config` VALUES ('602', '6', 'integrate_config', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('603', '6', 'hash_code', 'hidden', '', '', '499d1f1cbd0e575c3b6f1cfcca61f9c3', '1');
INSERT INTO `ecs_shop_config` VALUES ('604', '6', 'template', 'hidden', '', '', 'xiaomi', '1');
INSERT INTO `ecs_shop_config` VALUES ('605', '6', 'install_date', 'hidden', '', '', '1398244332', '1');
INSERT INTO `ecs_shop_config` VALUES ('606', '6', 'ecs_version', 'hidden', '', '', 'v2.7.3', '1');
INSERT INTO `ecs_shop_config` VALUES ('607', '6', 'sms_user_name', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('608', '6', 'sms_password', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('609', '6', 'sms_auth_str', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('610', '6', 'sms_domain', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('611', '6', 'sms_count', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('612', '6', 'sms_total_money', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('613', '6', 'sms_balance', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('614', '6', 'sms_last_request', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('616', '6', 'affiliate', 'hidden', '', '', 'a:3:{s:6:\"config\";a:7:{s:6:\"expire\";d:24;s:11:\"expire_unit\";s:4:\"hour\";s:11:\"separate_by\";i:0;s:15:\"level_point_all\";s:2:\"5%\";s:15:\"level_money_all\";s:2:\"1%\";s:18:\"level_register_all\";i:2;s:17:\"level_register_up\";i:60;}s:4:\"item\";a:4:{i:0;a:2:{s:11:\"level_point\";s:3:\"60%\";s:11:\"level_money\";s:3:\"60%\";}i:1;a:2:{s:11:\"level_point\";s:3:\"30%\";s:11:\"level_money\";s:3:\"30%\";}i:2;a:2:{s:11:\"level_point\";s:2:\"7%\";s:11:\"level_money\";s:2:\"7%\";}i:3;a:2:{s:11:\"level_point\";s:2:\"3%\";s:11:\"level_money\";s:2:\"3%\";}}s:2:\"on\";i:1;}', '1');
INSERT INTO `ecs_shop_config` VALUES ('617', '6', 'captcha', 'hidden', '', '', '39', '1');
INSERT INTO `ecs_shop_config` VALUES ('618', '6', 'captcha_width', 'hidden', '', '', '100', '1');
INSERT INTO `ecs_shop_config` VALUES ('619', '6', 'captcha_height', 'hidden', '', '', '20', '1');
INSERT INTO `ecs_shop_config` VALUES ('620', '6', 'sitemap', 'hidden', '', '', 'a:6:{s:19:\"homepage_changefreq\";s:6:\"hourly\";s:17:\"homepage_priority\";s:3:\"0.9\";s:19:\"category_changefreq\";s:6:\"hourly\";s:17:\"category_priority\";s:3:\"0.8\";s:18:\"content_changefreq\";s:6:\"weekly\";s:16:\"content_priority\";s:3:\"0.7\";}', '0');
INSERT INTO `ecs_shop_config` VALUES ('621', '6', 'points_rule', 'hidden', '', '', '', '0');
INSERT INTO `ecs_shop_config` VALUES ('622', '6', 'flash_theme', 'hidden', '', '', 'default', '1');
INSERT INTO `ecs_shop_config` VALUES ('623', '6', 'stylename', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('701', '7', 'show_goodssn', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('702', '7', 'show_brand', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('703', '7', 'show_goodsweight', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('704', '7', 'show_goodsnumber', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('705', '7', 'show_addtime', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('706', '7', 'goodsattr_style', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('707', '7', 'show_marketprice', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('801', '8', 'sms_shop_mobile', 'text', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('802', '8', 'sms_order_placed', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('803', '8', 'sms_order_payed', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('804', '8', 'sms_order_shipped', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('901', '9', 'wap_config', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('902', '9', 'wap_logo', 'file', '', '../images/', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('903', '2', 'message_check', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('910', '8', 'sms_ecmoban_user', 'text', '', '', '', '0');
INSERT INTO `ecs_shop_config` VALUES ('911', '8', 'sms_ecmoban_password', 'password', '', '', '', '0');
INSERT INTO `ecs_shop_config` VALUES ('912', '8', 'sms_signin', 'select', '1,0', '', '0', '1');

-- ----------------------------
-- Table structure for `ecs_snatch_log`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_snatch_log`;
CREATE TABLE `ecs_snatch_log` (
  `log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `snatch_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `bid_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `bid_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`log_id`),
  KEY `snatch_id` (`snatch_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_snatch_log
-- ----------------------------
INSERT INTO `ecs_snatch_log` VALUES ('1', '2', '1', '17.00', '1242142910');
INSERT INTO `ecs_snatch_log` VALUES ('2', '1', '1', '50.00', '1242142935');

-- ----------------------------
-- Table structure for `ecs_stats`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_stats`;
CREATE TABLE `ecs_stats` (
  `access_time` int(10) unsigned NOT NULL DEFAULT '0',
  `ip_address` varchar(15) NOT NULL DEFAULT '',
  `visit_times` smallint(5) unsigned NOT NULL DEFAULT '1',
  `browser` varchar(60) NOT NULL DEFAULT '',
  `system` varchar(20) NOT NULL DEFAULT '',
  `language` varchar(20) NOT NULL DEFAULT '',
  `area` varchar(30) NOT NULL DEFAULT '',
  `referer_domain` varchar(100) NOT NULL DEFAULT '',
  `referer_path` varchar(200) NOT NULL DEFAULT '',
  `access_url` varchar(255) NOT NULL DEFAULT '',
  KEY `access_time` (`access_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_stats
-- ----------------------------
INSERT INTO `ecs_stats` VALUES ('1240294063', '0.0.0.0', '196', 'FireFox 3.0.8', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/shoujitiyan/admin/index.php?act=top', '/shoujitiyan/index.php');
INSERT INTO `ecs_stats` VALUES ('1240298833', '0.0.0.0', '198', 'FireFox 3.0.8', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/shoujitiyan/admin/index.php?act=top', '/shoujitiyan/index.php');
INSERT INTO `ecs_stats` VALUES ('1240380013', '0.0.0.0', '204', 'FireFox 3.0.8', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/', '/shoujitiyan/index.php');
INSERT INTO `ecs_stats` VALUES ('1240463462', '0.0.0.0', '208', 'FireFox 3.0.9', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/shoujitiyan/admin/index.php?act=top', '/shoujitiyan/index.php');
INSERT INTO `ecs_stats` VALUES ('1240800901', '0.0.0.0', '222', 'FireFox 3.0.9', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/shoujitiyan/admin/index.php?act=top', '/shoujitiyan/index.php');
INSERT INTO `ecs_stats` VALUES ('1240803254', '0.0.0.0', '227', 'FireFox 3.0.9', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/shoujitiyan/admin/index.php?act=top', '/shoujitiyan/index.php');
INSERT INTO `ecs_stats` VALUES ('1240904381', '0.0.0.0', '237', 'FireFox 3.0.9', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/shoujitiyan/admin/index.php?act=top', '/shoujitiyan/index.php');
INSERT INTO `ecs_stats` VALUES ('1241419322', '0.0.0.0', '250', 'FireFox 3.0.10', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/shoujitiyan/admin/goods.php?act=list', '/shoujitiyan/goods.php');
INSERT INTO `ecs_stats` VALUES ('1241420999', '0.0.0.0', '252', 'FireFox 3.0.10', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/shoujitiyan/admin/index.php?act=top', '/shoujitiyan/index.php');
INSERT INTO `ecs_stats` VALUES ('1241424831', '0.0.0.0', '253', 'FireFox 3.0.10', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/shoujitiyan/admin/goods.php?act=list', '/shoujitiyan/goods.php');
INSERT INTO `ecs_stats` VALUES ('1241498580', '0.0.0.0', '257', 'FireFox 3.0.10', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/shoujitiyan/admin/index.php?act=top', '/shoujitiyan/index.php');
INSERT INTO `ecs_stats` VALUES ('1241511324', '0.0.0.0', '262', 'FireFox 3.0.10', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/shoujitiyan/admin/goods.php?act=list', '/shoujitiyan/goods.php');
INSERT INTO `ecs_stats` VALUES ('1241514671', '0.0.0.0', '263', 'FireFox 3.0.10', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/shoujitiyan/admin/index.php?act=top', '/shoujitiyan/index.php');
INSERT INTO `ecs_stats` VALUES ('1241517726', '0.0.0.0', '265', 'FireFox 3.0.10', 'Windows XP', 'zh-cn', 'IANA', '', '', '/shoujitiyan/index.php');
INSERT INTO `ecs_stats` VALUES ('1241946350', '127.0.0.1', '39', 'FireFox 2.0.0.20', 'Windows XP', 'zh-cn', 'LAN', 'http://localhost:8080', '/shoujitiyan/admin/index.php?act=top', '/shoujitiyan/index.php');
INSERT INTO `ecs_stats` VALUES ('1241965138', '127.0.0.1', '41', 'FireFox 2.0.0.20', 'Windows XP', 'zh-cn', 'LAN', 'http://localhost:8080', '/', '/shoujitiyan/index.php');
INSERT INTO `ecs_stats` VALUES ('1241966751', '127.0.0.1', '43', 'FireFox 2.0.0.20', 'Windows XP', 'zh-cn', 'LAN', 'http://localhost:8080', '/shoujitiyan/admin/index.php?act=top', '/shoujitiyan/index.php');
INSERT INTO `ecs_stats` VALUES ('1241970153', '127.0.0.1', '45', 'FireFox 2.0.0.20', 'Windows XP', 'zh-cn', 'LAN', 'http://localhost:8080', '/shoujitiyan/admin/goods.php?act=list', '/shoujitiyan/goods.php');
INSERT INTO `ecs_stats` VALUES ('1241970640', '127.0.0.1', '47', 'FireFox 2.0.0.20', 'Windows XP', 'zh-cn', 'LAN', 'http://localhost:8080', '/shoujitiyan/admin/index.php?act=top', '/shoujitiyan/index.php');
INSERT INTO `ecs_stats` VALUES ('1242105962', '0.0.0.0', '310', 'FireFox 3.0.10', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/shoujitiyan/admin/goods.php?act=list', '/shoujitiyan/goods.php');
INSERT INTO `ecs_stats` VALUES ('1242140915', '127.0.0.1', '52', 'FireFox 2.0.0.20', 'Windows XP', 'zh-cn', 'LAN', 'http://localhost:8080', '/shoujitiyan/admin/index.php?act=top', '/shoujitiyan/index.php');
INSERT INTO `ecs_stats` VALUES ('1242141002', '127.0.0.1', '54', 'FireFox 2.0.0.20', 'Windows XP', 'zh-cn', 'LAN', 'http://localhost:8080', '/shoujitiyan/user.php', '/shoujitiyan/user.php');
INSERT INTO `ecs_stats` VALUES ('1242141352', '127.0.0.1', '57', 'FireFox 2.0.0.20', 'Windows XP', 'zh-cn', 'LAN', 'http://localhost:8080', '/shoujitiyan/user.php?act=address_list', '/shoujitiyan/user.php');
INSERT INTO `ecs_stats` VALUES ('1242141605', '127.0.0.1', '59', 'FireFox 2.0.0.20', 'Windows XP', 'zh-cn', 'LAN', 'http://localhost:8080', '/shoujitiyan/user.php', '/shoujitiyan/user.php');
INSERT INTO `ecs_stats` VALUES ('1242576210', '127.0.0.1', '72', 'FireFox 2.0.0.20', 'Windows XP', 'zh-cn', 'LAN', 'http://localhost:8080', '/shoujitiyan/admin/index.php?act=top', '/shoujitiyan/index.php');
INSERT INTO `ecs_stats` VALUES ('1242576982', '127.0.0.1', '74', 'FireFox 2.0.0.20', 'Windows XP', 'zh-cn', 'LAN', 'http://localhost:8080', '/shoujitiyan/admin/article.php?act=list&uselastfilter=1', '/shoujitiyan/article.php');
INSERT INTO `ecs_stats` VALUES ('1242577205', '127.0.0.1', '76', 'FireFox 2.0.0.20', 'Windows XP', 'zh-cn', 'LAN', 'http://localhost:8080', '/shoujitiyan/admin/article.php?act=list', '/shoujitiyan/article.php');
INSERT INTO `ecs_stats` VALUES ('1242579230', '127.0.0.1', '78', 'FireFox 2.0.0.20', 'Windows XP', 'zh-cn', 'LAN', 'http://localhost:8080', '/shoujitiyan/admin/index.php?act=top', '/shoujitiyan/index.php');
INSERT INTO `ecs_stats` VALUES ('1242973907', '0.0.0.0', '375', 'FireFox 3.0.10', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/shoujitiyan/admin/index.php?act=top', '/shoujitiyan/index.php');
INSERT INTO `ecs_stats` VALUES ('1242974337', '0.0.0.0', '377', 'FireFox 3.0.10', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/shoujitiyan/', '/shoujitiyan/search.php');
INSERT INTO `ecs_stats` VALUES ('1242976474', '0.0.0.0', '379', 'FireFox 3.0.10', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/shoujitiyan/admin/index.php?act=top', '/shoujitiyan/index.php');
INSERT INTO `ecs_stats` VALUES ('1244189098', '0.0.0.0', '418', 'FireFox 3.0.10', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/shoujitiyan/admin/index.php?act=top', '/shoujitiyan/index.php');
INSERT INTO `ecs_stats` VALUES ('1244191271', '0.0.0.0', '420', 'FireFox 3.0.10', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/shoujitiyan/index.php', '/shoujitiyan/article.php');
INSERT INTO `ecs_stats` VALUES ('1244191479', '0.0.0.0', '422', 'FireFox 3.0.10', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/shoujitiyan/admin/index.php?act=top', '/shoujitiyan/index.php');
INSERT INTO `ecs_stats` VALUES ('1244193068', '0.0.0.0', '426', 'FireFox 3.0.10', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/shoujitiyan/article.php?id=33', '/shoujitiyan/index.php');
INSERT INTO `ecs_stats` VALUES ('1244772987', '0.0.0.0', '466', 'FireFox 3.0.10', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/shoujitiyan/admin/index.php?act=top', '/shoujitiyan/index.php');
INSERT INTO `ecs_stats` VALUES ('1245042503', '0.0.0.0', '472', 'FireFox 3.0.11', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/shouji/admin/privilege.php?act=login', '/shouji/index.php');
INSERT INTO `ecs_stats` VALUES ('1245042507', '0.0.0.0', '472', 'FireFox 3.0.11', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/shouji/admin/index.php?act=top', '/shouji/index.php');
INSERT INTO `ecs_stats` VALUES ('1245046089', '0.0.0.0', '474', 'FireFox 3.0.11', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/shouji/admin/index.php?act=top', '/shouji/index.php');
INSERT INTO `ecs_stats` VALUES ('1245047906', '0.0.0.0', '476', 'FireFox 3.0.11', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/shouji/goods.php?id=24', '/shouji/user.php');
INSERT INTO `ecs_stats` VALUES ('1245047951', '0.0.0.0', '478', 'FireFox 3.0.11', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/shouji/group_buy.php?act=view&id=8', '/shouji/goods.php');
INSERT INTO `ecs_stats` VALUES ('1245048514', '0.0.0.0', '480', 'FireFox 3.0.11', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/shouji/flow.php?step=checkout', '/shouji/index.php');
INSERT INTO `ecs_stats` VALUES ('1245139613', '0.0.0.0', '488', 'FireFox 3.0.11', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/shouji/admin/index.php?act=top', '/shouji/index.php');
INSERT INTO `ecs_stats` VALUES ('1245140082', '0.0.0.0', '490', 'FireFox 3.0.11', 'Windows XP', 'zh-cn', 'IANA', '', '', '/shouji/article.php');
INSERT INTO `ecs_stats` VALUES ('1245145064', '0.0.0.0', '493', 'FireFox 3.0.11', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/shouji/admin/index.php?act=top', '/shouji/index.php');
INSERT INTO `ecs_stats` VALUES ('1245217308', '0.0.0.0', '498', 'FireFox 3.0.11', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/', '/shouji/index.php');
INSERT INTO `ecs_stats` VALUES ('1245219380', '0.0.0.0', '499', 'FireFox 3.0.11', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/shouji/admin/index.php?act=top', '/shouji/index.php');
INSERT INTO `ecs_stats` VALUES ('1245222219', '0.0.0.0', '500', 'FireFox 3.0.11', 'Windows XP', 'zh-cn', 'IANA', 'http://localhost:8080', '/shouji/admin/goods.php?act=list', '/shouji/goods.php');
INSERT INTO `ecs_stats` VALUES ('1398215605', '127.0.0.1', '4', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/ecshop/admin/index.php?act=top', '/ecshop/index.php');
INSERT INTO `ecs_stats` VALUES ('1398215734', '127.0.0.1', '5', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1398274231', '127.0.0.1', '6', 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1398278802', '127.0.0.1', '7', 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1398280936', '127.0.0.1', '8', 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', 'LAN', 'http://localhost', '/', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1399223044', '127.0.0.1', '17', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1399233552', '127.0.0.1', '19', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/vancl/admin/index.php?act=top', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1399248305', '127.0.0.1', '22', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1399252606', '127.0.0.1', '7', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1399310802', '127.0.0.1', '8', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1399315955', '127.0.0.1', '9', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/admin/index.php?act=top', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1399324531', '127.0.0.1', '24', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1399324805', '127.0.0.1', '10', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1399326359', '127.0.0.1', '26', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1399328526', '127.0.0.1', '27', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1399399741', '127.0.0.1', '36', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1399401750', '127.0.0.1', '13', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1399411023', '127.0.0.1', '14', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1399421928', '127.0.0.1', '16', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1399483057', '127.0.0.1', '39', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1399483078', '127.0.0.1', '17', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1399485888', '127.0.0.1', '40', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1399489863', '127.0.0.1', '41', 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1399490047', '127.0.0.1', '18', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1399495197', '127.0.0.1', '19', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1399499654', '127.0.0.1', '21', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1399499654', '127.0.0.1', '21', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1399503521', '127.0.0.1', '22', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1399570118', '127.0.0.1', '46', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1399570148', '127.0.0.1', '26', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1399571012', '127.0.0.1', '48', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1399573273', '127.0.0.1', '27', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1399579888', '127.0.0.1', '49', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1399583299', '127.0.0.1', '28', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1399591040', '127.0.0.1', '30', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/category.php?id=16&brand=12&price_min=0&price_max=0&filter_attr=0.0.0.0', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1399595157', '127.0.0.1', '31', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/category.php?id=16&brand=12&price_min=0&price_max=0&filter_attr=0.0.0.0', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1399842183', '127.0.0.1', '1', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1399842571', '127.0.0.1', '1', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1399843986', '127.0.0.1', '2', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1399845369', '127.0.0.1', '3', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1399845866', '127.0.0.1', '3', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1399850885', '127.0.0.1', '5', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/category.php?category=9&display=grid&brand=0&price_min=0&price_max=0&filter_attr=0&page=1&sort=shop_price&order=ASC', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1399850962', '127.0.0.1', '7', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/category.php?category=9&display=grid&brand=0&price_min=0&price_max=0&filter_attr=0&page=1&sort=shop_price&order=DESC', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1399915061', '127.0.0.1', '8', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1399918860', '127.0.0.1', '9', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/category.php?id=9', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1399927599', '127.0.0.1', '10', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/category.php?id=9', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1399930905', '127.0.0.1', '11', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/category.php?id=9', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1399937991', '127.0.0.1', '7', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1399942766', '127.0.0.1', '12', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/exchange.php');
INSERT INTO `ecs_stats` VALUES ('1400001189', '127.0.0.1', '9', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1400014779', '127.0.0.1', '13', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/vancl/admin/index.php?act=top', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1400015854', '127.0.0.1', '13', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/admin/index.php?act=top', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1400023218', '127.0.0.1', '14', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/admin/goods.php?act=list', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1400027447', '127.0.0.1', '15', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1400030014', '192.168.1.230', '1', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://192.168.1.208', '/', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1400030021', '192.168.1.208', '1', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://192.168.1.208', '/vancl/admin/goods.php?act=list', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1400031163', '127.0.0.1', '16', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1400090175', '127.0.0.1', '17', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1400090179', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1400090182', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1400090378', '127.0.0.1', '15', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1400091793', '127.0.0.1', '19', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1400092563', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/goods.php?id=6', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1400092944', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/goods.php?id=6#', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1400092985', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/goods.php?id=6#', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1400092987', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/goods.php?id=6#', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1400093525', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/goods.php?id=6#', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1400093731', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/goods.php?id=6#', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1400094857', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1400094862', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1400096419', '127.0.0.1', '16', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1400101744', '127.0.0.1', '20', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1400101750', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1400101753', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1400101755', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1400101756', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=9', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1400102542', '127.0.0.1', '22', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/category.php?id=9', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1400108910', '127.0.0.1', '26', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/category.php?id=9', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1400109497', '127.0.0.1', '18', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1400112986', '127.0.0.1', '28', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/category.php?id=9', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1400113232', '127.0.0.1', '30', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/category.php?id=9', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1400113852', '127.0.0.1', '19', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1400114519', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1400114523', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1400116140', '127.0.0.1', '20', 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', 'LAN', '', '', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1400116743', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/index.php', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1400116882', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/goods.php?id=6', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1400116887', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1400116898', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/search.php?encode=YTozOntzOjg6ImtleXdvcmRzIjtzOjQ1OiLmo4noibLnu4fmoLzlrZDoirHovrnoiJLpgILlpbPlvI/plb/oopbooazooasiO3M6MTA6ImltYWdlRmllbGQiO3M6MDoiIjtzOjE4OiJzZWFyY2hfZW5jb2RlX3RpbWUiO2k6MTQwMDE', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1400174359', '127.0.0.1', '21', 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', 'LAN', 'http://localhost', '/', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1400181380', '127.0.0.1', '22', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/vancl/admin/index.php', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1400448455', '127.0.0.1', '23', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1400448479', '127.0.0.1', '31', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1400449021', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1400449024', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1400457450', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1400457451', '127.0.0.1', '32', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1400457454', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1400462980', '127.0.0.1', '34', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1400462981', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1400519827', '127.0.0.1', '25', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1400527695', '127.0.0.1', '26', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1400532047', '127.0.0.1', '27', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/vancl/', '/vancl/affiche.php');
INSERT INTO `ecs_stats` VALUES ('1400534745', '127.0.0.1', '28', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1400537338', '127.0.0.1', '29', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1400608991', '127.0.0.1', '36', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1400610034', '127.0.0.1', '31', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1400610314', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1400610317', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1400610468', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1400610471', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1400613077', '127.0.0.1', '37', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1400635952', '127.0.0.1', '1', 'FireFox 28.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1400692369', '127.0.0.1', '32', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1400697210', '127.0.0.1', '34', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1400804092', '127.0.0.1', '42', 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1400804640', '127.0.0.1', '43', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/vancl/', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1400807371', '127.0.0.1', '45', 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', 'LAN', '', '', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1401129192', '127.0.0.1', '48', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1401130025', '127.0.0.1', '8', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1401130226', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1401133053', '127.0.0.1', '9', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1401138722', '127.0.0.1', '10', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1401147071', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1401147072', '127.0.0.1', '11', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1401147075', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401147819', '127.0.0.1', '13', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401149438', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401210816', '127.0.0.1', '50', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1401214479', '127.0.0.1', '51', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401217421', '127.0.0.1', '14', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1401217731', '127.0.0.1', '16', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/user.php?act=register', '/vancl/captcha.php');
INSERT INTO `ecs_stats` VALUES ('1401217811', '127.0.0.1', '18', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1401217970', '127.0.0.1', '20', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/user.php?act=register', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1401218011', '127.0.0.1', '22', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1401218247', '127.0.0.1', '24', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1401218852', '127.0.0.1', '52', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/vancl/user.php?act=logout', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1401218976', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/user.php?act=register', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1401219965', '127.0.0.1', '26', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1401219967', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1401219970', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401224216', '127.0.0.1', '53', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/vancl/admin/index.php?act=top', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1401224511', '127.0.0.1', '28', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401228399', '127.0.0.1', '29', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401229043', '127.0.0.1', '31', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401237554', '127.0.0.1', '34', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401238082', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1401238085', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401317064', '127.0.0.1', '5', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1401317239', '127.0.0.1', '7', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401317259', '127.0.0.1', '38', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401321259', '127.0.0.1', '40', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1401321262', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1401321291', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1401321355', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401321574', '127.0.0.1', '42', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1401321595', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/goods.php?id=6', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401321634', '127.0.0.1', '44', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401321636', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/goods.php?id=6', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401321741', '127.0.0.1', '46', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401321743', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/goods.php?id=6', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401321843', '127.0.0.1', '48', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1401321847', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/goods.php?id=6', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401321852', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/goods.php?id=6', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401321855', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/goods.php?id=6#', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401321858', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/goods.php?id=6#', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401321908', '127.0.0.1', '50', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401321932', '127.0.0.1', '52', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401322019', '127.0.0.1', '54', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401322023', '127.0.0.1', '56', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/goods.php?id=6', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401322863', '127.0.0.1', '58', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401324472', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/goods.php?id=6#', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401326424', '127.0.0.1', '59', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401326675', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1401326678', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1401326701', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/pick_out.php', '/vancl/pick_out.php');
INSERT INTO `ecs_stats` VALUES ('1401326703', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/pick_out.php?cat_id=1&attr[3]=%E4%B8%AD%E9%95%BF%E8%A3%99', '/vancl/pick_out.php');
INSERT INTO `ecs_stats` VALUES ('1401382888', '127.0.0.1', '9', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1401383045', '127.0.0.1', '60', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1401383049', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1401383052', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401383055', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1401383070', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/goods.php?id=6', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401383091', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/goods.php?id=6#', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401383094', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/goods.php?id=6#', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401383097', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/goods.php?id=6#', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401383188', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=9', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401383277', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/goods.php?id=6', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401383809', '127.0.0.1', '62', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401384181', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/goods.php?id=6#', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401388810', '127.0.0.1', '63', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1401388812', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1401388815', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401391998', '127.0.0.1', '64', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/goods.php?id=6', '/vancl/captcha.php');
INSERT INTO `ecs_stats` VALUES ('1401398655', '127.0.0.1', '66', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1401398752', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/goods.php?id=6', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401398821', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/goods.php?id=6#', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401398833', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/goods.php?id=6#', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401398851', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/goods.php?id=6#', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401398863', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/goods.php?id=6#', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401398887', '127.0.0.1', '68', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/captcha.php');
INSERT INTO `ecs_stats` VALUES ('1401402753', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/goods.php?id=6#', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401403142', '127.0.0.1', '69', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401403543', '127.0.0.1', '10', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401406008', '127.0.0.1', '11', 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', 'LAN', '', '', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401406529', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/goods.php?id=6', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401407016', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/goods.php?id=6', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1401407020', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/user.php?act=register', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1401407201', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/user.php?act=register', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1401408037', '127.0.0.1', '71', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401408139', '127.0.0.1', '12', 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', 'LAN', '', '', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401408211', '127.0.0.1', '1', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1401409981', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1401410007', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/user.php', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1401410050', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/user.php', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1401410053', '127.0.0.1', '2', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/user.php?act=logout', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1401410062', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1401410066', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1401412215', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/user.php', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1401412215', '127.0.0.1', '3', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/user.php', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1401412217', '127.0.0.1', '4', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/user.php?act=logout', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1401412222', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1401412243', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1401412877', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=10', '/vancl/article.php');
INSERT INTO `ecs_stats` VALUES ('1401816190', '127.0.0.1', '13', 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', 'LAN', 'http://localhost', '/', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1401816879', '127.0.0.1', '14', 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', 'LAN', 'http://localhost', '/vancl/user.php?act=logout', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1401824535', '127.0.0.1', '9', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1401830979', '127.0.0.1', '17', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/vancl/index.php', '/vancl/flow.php');
INSERT INTO `ecs_stats` VALUES ('1401831763', '127.0.0.1', '18', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1401839273', '127.0.0.1', '19', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/vancl/goods.php?id=6', '/vancl/flow.php');
INSERT INTO `ecs_stats` VALUES ('1401841180', '127.0.0.1', '21', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/vancl/goods.php?id=6', '/vancl/flow.php');
INSERT INTO `ecs_stats` VALUES ('1401844218', '127.0.0.1', '23', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/vancl/goods.php?id=6', '/vancl/flow.php');
INSERT INTO `ecs_stats` VALUES ('1401902093', '127.0.0.1', '24', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1401988911', '127.0.0.1', '4', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1401992676', '127.0.0.1', '5', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/vancl/goods.php?id=6', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1402248192', '127.0.0.1', '9', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1402249412', '127.0.0.1', '10', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1402249416', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1402249421', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1402249487', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1402249547', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/user.php', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1402249554', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/index.php', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1402249557', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1402249565', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/flow.php?step=cart', '/vancl/flow.php');
INSERT INTO `ecs_stats` VALUES ('1402252527', '127.0.0.1', '11', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/flow.php?step=login', '/vancl/captcha.php');
INSERT INTO `ecs_stats` VALUES ('1402254965', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/index.php', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1402256301', '127.0.0.1', '13', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/flow.php?step=cart', '/vancl/flow.php');
INSERT INTO `ecs_stats` VALUES ('1402257133', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/index.php', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1402257136', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1402257141', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/flow.php?step=cart', '/vancl/flow.php');
INSERT INTO `ecs_stats` VALUES ('1402265231', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/index.php', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1402265232', '127.0.0.1', '15', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/index.php', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1402265234', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1402265240', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/flow.php?step=cart', '/vancl/flow.php');
INSERT INTO `ecs_stats` VALUES ('1402265271', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/index.php', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1402265293', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/flow.php', '/vancl/article.php');
INSERT INTO `ecs_stats` VALUES ('1402265296', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/flow.php', '/vancl/article.php');
INSERT INTO `ecs_stats` VALUES ('1402265299', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/flow.php', '/vancl/article.php');
INSERT INTO `ecs_stats` VALUES ('1402269736', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/flow.php', '/vancl/flow.php');
INSERT INTO `ecs_stats` VALUES ('1402269736', '127.0.0.1', '16', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/flow.php', '/vancl/flow.php');
INSERT INTO `ecs_stats` VALUES ('1402269741', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/flow.php', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1402269745', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/flow.php?step=cart', '/vancl/flow.php');
INSERT INTO `ecs_stats` VALUES ('1402269857', '127.0.0.1', '13', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/flow.php');
INSERT INTO `ecs_stats` VALUES ('1402270521', '127.0.0.1', '15', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/vancl/goods.php?id=6', '/vancl/flow.php');
INSERT INTO `ecs_stats` VALUES ('1402270765', '127.0.0.1', '18', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1402270768', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1402270774', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1402273545', '127.0.0.1', '16', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/vancl/flow.php?step=cart', '/vancl/flow.php');
INSERT INTO `ecs_stats` VALUES ('1402273969', '127.0.0.1', '19', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/flow.php');
INSERT INTO `ecs_stats` VALUES ('1402276068', '127.0.0.1', '20', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1402276735', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=22', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1402276788', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=22', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1402276798', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/index.php', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1402276813', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/index.php', '/vancl/article.php');
INSERT INTO `ecs_stats` VALUES ('1402334172', '127.0.0.1', '17', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1402334850', '127.0.0.1', '21', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/brand.php');
INSERT INTO `ecs_stats` VALUES ('1402336926', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/brand.php', '/vancl/brand.php');
INSERT INTO `ecs_stats` VALUES ('1402337776', '127.0.0.1', '19', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/activity.php');
INSERT INTO `ecs_stats` VALUES ('1402337816', '127.0.0.1', '21', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/activity.php');
INSERT INTO `ecs_stats` VALUES ('1402337833', '127.0.0.1', '23', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/snatch.php');
INSERT INTO `ecs_stats` VALUES ('1402337864', '127.0.0.1', '25', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/snatch.php');
INSERT INTO `ecs_stats` VALUES ('1402337876', '127.0.0.1', '27', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/auction.php');
INSERT INTO `ecs_stats` VALUES ('1402337945', '127.0.0.1', '29', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/message.php');
INSERT INTO `ecs_stats` VALUES ('1402337993', '127.0.0.1', '31', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/exchange.php');
INSERT INTO `ecs_stats` VALUES ('1402351374', '127.0.0.1', '32', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/vancl/exchange.php', '/vancl/exchange.php');
INSERT INTO `ecs_stats` VALUES ('1402421754', '127.0.0.1', '33', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1402421892', '127.0.0.1', '35', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/snatch.php');
INSERT INTO `ecs_stats` VALUES ('1402421952', '127.0.0.1', '37', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/activity.php');
INSERT INTO `ecs_stats` VALUES ('1402422273', '127.0.0.1', '39', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/activity.php');
INSERT INTO `ecs_stats` VALUES ('1402422369', '127.0.0.1', '41', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/vancl/admin/index.php?act=top', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1402422389', '127.0.0.1', '43', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/snatch.php');
INSERT INTO `ecs_stats` VALUES ('1402422701', '127.0.0.1', '45', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/vancl/snatch.php?id=1', '/vancl/snatch.php');
INSERT INTO `ecs_stats` VALUES ('1402423971', '127.0.0.1', '47', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/exchange.php');
INSERT INTO `ecs_stats` VALUES ('1402433596', '127.0.0.1', '23', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1402434205', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1402435297', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/search.php?encode=YTozOntzOjg6ImtleXdvcmRzIjtzOjE6IjEiO3M6MTA6ImltYWdlRmllbGQiO3M6MDoiIjtzOjE4OiJzZWFyY2hfZW5jb2RlX3RpbWUiO2k6MTQwMjQ2MzAxODt9', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1402435604', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/search.php?encode=YTozOntzOjg6ImtleXdvcmRzIjtzOjE6IjEiO3M6MTA6ImltYWdlRmllbGQiO3M6MDoiIjtzOjE4OiJzZWFyY2hfZW5jb2RlX3RpbWUiO2k6MTQwMjQ2MzAxODt9', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1402435866', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/search.php?encode=YTozOntzOjg6ImtleXdvcmRzIjtzOjE6IjEiO3M6MTA6ImltYWdlRmllbGQiO3M6MDoiIjtzOjE4OiJzZWFyY2hfZW5jb2RlX3RpbWUiO2k6MTQwMjQ2MzAxODt9', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1402436848', '127.0.0.1', '25', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/exchange.php');
INSERT INTO `ecs_stats` VALUES ('1402436931', '127.0.0.1', '27', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/exchange.php');
INSERT INTO `ecs_stats` VALUES ('1402437215', '127.0.0.1', '29', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/exchange.php', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1402437218', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1402438193', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/exchange.php', '/vancl/exchange.php');
INSERT INTO `ecs_stats` VALUES ('1402438196', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/exchange.php', '/vancl/exchange.php');
INSERT INTO `ecs_stats` VALUES ('1402438201', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/exchange.php', '/vancl/exchange.php');
INSERT INTO `ecs_stats` VALUES ('1402438203', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/exchange.php', '/vancl/exchange.php');
INSERT INTO `ecs_stats` VALUES ('1402438279', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/exchange.php', '/vancl/exchange.php');
INSERT INTO `ecs_stats` VALUES ('1402438607', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/index.php', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1402438610', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1402438736', '127.0.0.1', '31', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/exchange.php');
INSERT INTO `ecs_stats` VALUES ('1402438738', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/exchange.php', '/vancl/exchange.php');
INSERT INTO `ecs_stats` VALUES ('1402438819', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/exchange.php', '/vancl/exchange.php');
INSERT INTO `ecs_stats` VALUES ('1402439042', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/exchange.php', '/vancl/exchange.php');
INSERT INTO `ecs_stats` VALUES ('1402439048', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/exchange.php?act=buy', '/vancl/exchange.php');
INSERT INTO `ecs_stats` VALUES ('1402439105', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/exchange.php', '/vancl/exchange.php');
INSERT INTO `ecs_stats` VALUES ('1402439123', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/exchange.php', '/vancl/exchange.php');
INSERT INTO `ecs_stats` VALUES ('1402439148', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/exchange.php', '/vancl/exchange.php');
INSERT INTO `ecs_stats` VALUES ('1402439160', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/exchange.php', '/vancl/exchange.php');
INSERT INTO `ecs_stats` VALUES ('1402439172', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/exchange.php', '/vancl/exchange.php');
INSERT INTO `ecs_stats` VALUES ('1402439757', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/exchange.php', '/vancl/exchange.php');
INSERT INTO `ecs_stats` VALUES ('1402439768', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/exchange.php', '/vancl/exchange.php');
INSERT INTO `ecs_stats` VALUES ('1402439993', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/index.php', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1402441131', '127.0.0.1', '32', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/exchange.php?id=6&act=view', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1402441329', '127.0.0.1', '48', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1402443110', '127.0.0.1', '50', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1402443616', '127.0.0.1', '51', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1402443630', '127.0.0.1', '33', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1402444838', '127.0.0.1', '35', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1402444885', '127.0.0.1', '37', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/user.php', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1402506714', '127.0.0.1', '52', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1402507945', '127.0.0.1', '38', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1402508439', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/user.php', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1402508441', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/user.php?act=collection_list', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1402510990', '127.0.0.1', '39', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1402511037', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/user.php?act=collection_list', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1402511044', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/user.php', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1402511345', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/user.php', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1402511346', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/user.php?act=tag_list', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1402511347', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/user.php?act=message_list', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1402511349', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/user.php?act=affiliate', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1402511350', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/user.php?act=comment_list', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1402511351', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/user.php?act=profile', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1402511352', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/user.php?act=bonus', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1402511353', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/user.php?act=track_packages', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1402511354', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/user.php?act=track_packages', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1402511356', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/user.php?act=address_list', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1402511358', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/user.php?act=collection_list', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1402511359', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/user.php?act=profile', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1402511944', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1402512038', '127.0.0.1', '42', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1402521830', '127.0.0.1', '53', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1402535148', '127.0.0.1', '59', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1402591895', '127.0.0.1', '60', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1402592963', '127.0.0.1', '62', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1402598494', '127.0.0.1', '63', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/vancl/user.php', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1402598951', '127.0.0.1', '64', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/vancl/user.php?act=logout', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1402598984', '127.0.0.1', '66', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/group_buy.php');
INSERT INTO `ecs_stats` VALUES ('1402599564', '127.0.0.1', '68', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/vancl/user.php?act=logout', '/vancl/user.php');
INSERT INTO `ecs_stats` VALUES ('1402938374', '127.0.0.1', '43', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1402938377', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1402938893', '127.0.0.1', '45', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/group_buy.php');
INSERT INTO `ecs_stats` VALUES ('1402940844', '127.0.0.1', '71', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1402942981', '127.0.0.1', '46', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/group_buy.php');
INSERT INTO `ecs_stats` VALUES ('1402943584', '127.0.0.1', '73', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1402945649', '127.0.0.1', '47', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/group_buy.php');
INSERT INTO `ecs_stats` VALUES ('1402965501', '127.0.0.1', '48', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/group_buy.php');
INSERT INTO `ecs_stats` VALUES ('1402967207', '127.0.0.1', '50', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/group_buy.php');
INSERT INTO `ecs_stats` VALUES ('1403029595', '127.0.0.1', '75', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1403030188', '127.0.0.1', '77', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/group_buy.php');
INSERT INTO `ecs_stats` VALUES ('1403032118', '127.0.0.1', '79', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/vancl/group_buy.php');
INSERT INTO `ecs_stats` VALUES ('1403038340', '127.0.0.1', '80', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1403042470', '127.0.0.1', '51', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/group_buy.php');
INSERT INTO `ecs_stats` VALUES ('1403046676', '127.0.0.1', '52', 'FireFox 29.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1403046679', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/', '/vancl/category.php');
INSERT INTO `ecs_stats` VALUES ('1403046682', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/category.php?id=1', '/vancl/goods.php');
INSERT INTO `ecs_stats` VALUES ('1403046774', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/group_buy.php', '/vancl/group_buy.php');
INSERT INTO `ecs_stats` VALUES ('1403047785', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/group_buy.php', '/vancl/group_buy.php');
INSERT INTO `ecs_stats` VALUES ('1403050512', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/group_buy.php', '/vancl/group_buy.php');
INSERT INTO `ecs_stats` VALUES ('1403052775', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/group_buy.php', '/vancl/group_buy.php');
INSERT INTO `ecs_stats` VALUES ('1403053746', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/group_buy.php', '/vancl/group_buy.php');
INSERT INTO `ecs_stats` VALUES ('1403053830', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/group_buy.php', '/vancl/group_buy.php');
INSERT INTO `ecs_stats` VALUES ('1403054652', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/group_buy.php', '/vancl/group_buy.php');
INSERT INTO `ecs_stats` VALUES ('1403054710', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/group_buy.php', '/vancl/group_buy.php');
INSERT INTO `ecs_stats` VALUES ('1403054950', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/group_buy.php', '/vancl/group_buy.php');
INSERT INTO `ecs_stats` VALUES ('1403054964', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://localhost', '/vancl/group_buy.php', '/vancl/group_buy.php');
INSERT INTO `ecs_stats` VALUES ('1403111695', '127.0.0.1', '82', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1403113936', '127.0.0.1', '83', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/vancl/admin/index.php?act=top', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1403114050', '127.0.0.1', '1', 'Internet Explorer 9.0', 'Windows NT', '', 'LAN', '', '', '/vancl/group_buy.php');
INSERT INTO `ecs_stats` VALUES ('1403114927', '127.0.0.1', '85', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/vancl/group_buy.php', '/vancl/index.php');
INSERT INTO `ecs_stats` VALUES ('1441904930', '127.0.0.1', '6', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/testxiaomi/admin/index.php?act=top', '/testxiaomi/index.php');
INSERT INTO `ecs_stats` VALUES ('1446663320', '222.182.199.85', '6', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/mima.php');
INSERT INTO `ecs_stats` VALUES ('1446663475', '222.182.199.85', '1', 'FireFox 40.0', 'Windows NT', 'zh-CN,zh', '', '', '', '/mobile/index.php');
INSERT INTO `ecs_stats` VALUES ('1446663660', '222.182.199.85', '7', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/mobile/index.php');
INSERT INTO `ecs_stats` VALUES ('1446663818', '222.182.199.85', '8', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/mobile/index.php');
INSERT INTO `ecs_stats` VALUES ('1446664231', '222.182.199.85', '9', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/mobile88/index.php');

-- ----------------------------
-- Table structure for `ecs_suppliers`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_suppliers`;
CREATE TABLE `ecs_suppliers` (
  `suppliers_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `suppliers_name` varchar(255) DEFAULT NULL,
  `suppliers_desc` mediumtext,
  `is_check` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`suppliers_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_suppliers
-- ----------------------------
INSERT INTO `ecs_suppliers` VALUES ('1', '北京供货商', '北京供货商', '1');
INSERT INTO `ecs_suppliers` VALUES ('2', '上海供货商', '上海供货商', '1');

-- ----------------------------
-- Table structure for `ecs_tag`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_tag`;
CREATE TABLE `ecs_tag` (
  `tag_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `tag_words` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`tag_id`),
  KEY `user_id` (`user_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_tag
-- ----------------------------
INSERT INTO `ecs_tag` VALUES ('7', '0', '31', '音乐手机');

-- ----------------------------
-- Table structure for `ecs_template`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_template`;
CREATE TABLE `ecs_template` (
  `filename` varchar(30) NOT NULL DEFAULT '',
  `region` varchar(40) NOT NULL DEFAULT '',
  `library` varchar(40) NOT NULL DEFAULT '',
  `sort_order` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `number` tinyint(1) unsigned NOT NULL DEFAULT '5',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `theme` varchar(60) NOT NULL DEFAULT '',
  `remarks` varchar(30) NOT NULL DEFAULT '',
  KEY `filename` (`filename`,`region`),
  KEY `theme` (`theme`),
  KEY `remarks` (`remarks`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_template
-- ----------------------------
INSERT INTO `ecs_template` VALUES ('category', '', '/library/recommend_promotion.lbi', '0', '0', '3', '0', 'xiaomi', '');
INSERT INTO `ecs_template` VALUES ('index', '首页轮播下广告', '/library/ad_position.lbi', '0', '3', '3', '4', 'xiaomi', '');
INSERT INTO `ecs_template` VALUES ('index', '分类下商品区域', '/library/cat_goods.lbi', '4', '118', '8', '1', 'xiaomi', '');
INSERT INTO `ecs_template` VALUES ('index', '分类下商品区域', '/library/cat_goods.lbi', '3', '94', '8', '1', 'xiaomi', '');
INSERT INTO `ecs_template` VALUES ('index', '分类下商品区域', '/library/cat_goods.lbi', '2', '101', '8', '1', 'xiaomi', '');
INSERT INTO `ecs_template` VALUES ('index', '分类下商品区域', '/library/cat_goods.lbi', '1', '80', '8', '1', 'xiaomi', '');
INSERT INTO `ecs_template` VALUES ('index', '', '/library/brands.lbi', '0', '0', '3', '0', 'xiaomi', '');
INSERT INTO `ecs_template` VALUES ('index', '', '/library/auction.lbi', '0', '0', '3', '0', 'xiaomi', '');
INSERT INTO `ecs_template` VALUES ('index', '', '/library/group_buy.lbi', '0', '0', '3', '0', 'xiaomi', '');
INSERT INTO `ecs_template` VALUES ('index', '', '/library/recommend_promotion.lbi', '0', '0', '4', '0', 'xiaomi', '');
INSERT INTO `ecs_template` VALUES ('index', '为您推荐（调用热卖）', '/library/recommend_hot.lbi', '0', '0', '10', '0', 'xiaomi', '');
INSERT INTO `ecs_template` VALUES ('index', '', '/library/recommend_new.lbi', '0', '0', '8', '0', 'xiaomi', '');
INSERT INTO `ecs_template` VALUES ('index', '小米明星单品（调用精品）', '/library/recommend_best.lbi', '0', '0', '10', '0', 'xiaomi', '');
INSERT INTO `ecs_template` VALUES ('category', '', '/library/brands.lbi', '0', '0', '3', '0', 'xiaomi', '');
INSERT INTO `ecs_template` VALUES ('category', '', '/library/recommend_best.lbi', '0', '0', '3', '0', 'xiaomi', '');
INSERT INTO `ecs_template` VALUES ('category', '为您推荐（调用热卖）', '/library/recommend_hot.lbi', '0', '0', '15', '0', 'xiaomi', '');
INSERT INTO `ecs_template` VALUES ('group_buy_list', '团购页顶部广告', '/library/ad_position.lbi', '0', '11', '1', '4', 'xiaomi', '');

-- ----------------------------
-- Table structure for `ecs_topic`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_topic`;
CREATE TABLE `ecs_topic` (
  `topic_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '''''',
  `intro` text NOT NULL,
  `start_time` int(11) NOT NULL DEFAULT '0',
  `end_time` int(10) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `template` varchar(255) NOT NULL DEFAULT '''''',
  `css` text NOT NULL,
  `topic_img` varchar(255) DEFAULT NULL,
  `title_pic` varchar(255) DEFAULT NULL,
  `base_style` char(6) DEFAULT NULL,
  `htmls` mediumtext,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  KEY `topic_id` (`topic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_topic
-- ----------------------------
INSERT INTO `ecs_topic` VALUES ('1', '夏新优惠大酬宾', '<p>夏新产品优惠开始了</p>', '1241078400', '1435564800', 'O:8:\"stdClass\":1:{s:13:\"测试分类1\";a:8:{i:0;s:11:\"夏新N7|17\";i:1;s:70:\"洗颜专科 柔澈泡沫 洁面乳 120g（资生堂授权正品）|69\";i:2;s:92:\"欧莱雅（LOREAL）男士火山岩控油清痘洁面膏 买一赠一装（100ml+50ml）|70\";i:3;s:131:\"妮维雅 男士净油精华亮肤洁面炭泥 150ml+150ml （提亮肤色 控油美白洗面奶 深层洁面 温和去角质）|71\";i:4;s:35:\"DHC蝶翠诗橄榄卸妆油200ml|72\";i:5;s:66:\"欧莱雅（LOREAL）男士 控油炭爽抗黑头洁面膏100ml|73\";i:6;s:61:\"Neutrogena露得清深层净化洗面乳两支套装100g*2|74\";i:7;s:73:\"欧莱雅（LOREAL）男士劲能深层净化洁面膏（100ml+50ml）|75\";}}', '', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for `ecs_touch_activity`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_touch_activity`;
CREATE TABLE `ecs_touch_activity` (
  `act_id` int(10) NOT NULL,
  `act_banner` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_touch_activity
-- ----------------------------
INSERT INTO `ecs_touch_activity` VALUES ('1', 'http://d8.yihaodianimg.com/N00/M08/9A/E0/CgMBmVPPNHqAXRx1AACfU7I8J8857100.jpg');
INSERT INTO `ecs_touch_activity` VALUES ('2', 'http://img13.360buyimg.com/cms/jfs/t184/306/2459217274/143660/f83440cc/53d20980N337e37e1.jpg!q35.jpg');
INSERT INTO `ecs_touch_activity` VALUES ('3', 'http://img10.360buyimg.com/cms/jfs/t157/153/2494576813/117819/654b2854/53d20fe1N246c1e4a.jpg!q35.jpg');
INSERT INTO `ecs_touch_activity` VALUES ('4', 'http://img11.360buyimg.com/cms/jfs/t145/259/2655815990/39930/9c6e8426/53d772c7N26e261e4.jpg!q35.jpg');
INSERT INTO `ecs_touch_activity` VALUES ('5', 'data/attached/banner_image/ea725b8e67518d05c5cd80e5fed8d04f.jpg');

-- ----------------------------
-- Table structure for `ecs_touch_ad`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_touch_ad`;
CREATE TABLE `ecs_touch_ad` (
  `ad_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `position_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `media_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ad_name` varchar(60) NOT NULL DEFAULT '',
  `ad_link` varchar(255) NOT NULL DEFAULT '',
  `ad_code` text NOT NULL,
  `start_time` int(11) NOT NULL DEFAULT '0',
  `end_time` int(11) NOT NULL DEFAULT '0',
  `link_man` varchar(60) NOT NULL DEFAULT '',
  `link_email` varchar(60) NOT NULL DEFAULT '',
  `link_phone` varchar(60) NOT NULL DEFAULT '',
  `click_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `enabled` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`ad_id`),
  KEY `position_id` (`position_id`),
  KEY `enabled` (`enabled`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_touch_ad
-- ----------------------------
INSERT INTO `ecs_touch_ad` VALUES ('1', '1', '0', '1', '', 'http://demo.ecmoban.com/shop/data/afficheimg/1394415487832396515.jpg', '1396339200', '1525161600', '', '', '', '0', '1');
INSERT INTO `ecs_touch_ad` VALUES ('2', '1', '0', '2', '', 'http://demo.ecmoban.com/shop/data/afficheimg/1394415508290057627.jpg', '1396339200', '1525161600', '', '', '', '0', '1');
INSERT INTO `ecs_touch_ad` VALUES ('3', '1', '0', '3', '', 'http://demo.ecmoban.com/shop/data/afficheimg/1394415497283455138.jpg', '1396339200', '1525161600', '', '', '', '0', '1');

-- ----------------------------
-- Table structure for `ecs_touch_adsense`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_touch_adsense`;
CREATE TABLE `ecs_touch_adsense` (
  `from_ad` smallint(5) NOT NULL DEFAULT '0',
  `referer` varchar(255) NOT NULL DEFAULT '',
  `clicks` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `from_ad` (`from_ad`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_touch_adsense
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_touch_ad_position`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_touch_ad_position`;
CREATE TABLE `ecs_touch_ad_position` (
  `position_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `position_name` varchar(60) NOT NULL DEFAULT '',
  `ad_width` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ad_height` smallint(5) unsigned NOT NULL DEFAULT '0',
  `position_desc` varchar(255) NOT NULL DEFAULT '',
  `position_style` text NOT NULL,
  PRIMARY KEY (`position_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_touch_ad_position
-- ----------------------------
INSERT INTO `ecs_touch_ad_position` VALUES ('1', '手机版首页Banner', '360', '168', '', '<ul>\r\n{foreach from=$ads item=ad}\r\n  <li>{$ad}</li>\r\n{/foreach}\r\n</ul>\r\n');

-- ----------------------------
-- Table structure for `ecs_touch_article`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_touch_article`;
CREATE TABLE `ecs_touch_article` (
  `article_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` smallint(5) NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `content` longtext NOT NULL,
  `author` varchar(30) NOT NULL DEFAULT '',
  `author_email` varchar(60) NOT NULL DEFAULT '',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `is_open` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `file_url` varchar(255) NOT NULL DEFAULT '',
  `open_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `link` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`article_id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_touch_article
-- ----------------------------
INSERT INTO `ecs_touch_article` VALUES ('6', '-1', '用户协议', '', '', '', '', '1', '1443764855', '', '0', '', '');

-- ----------------------------
-- Table structure for `ecs_touch_article_cat`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_touch_article_cat`;
CREATE TABLE `ecs_touch_article_cat` (
  `cat_id` smallint(5) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(255) NOT NULL DEFAULT '',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `cat_desc` varchar(255) NOT NULL DEFAULT '',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '50',
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cat_id`),
  KEY `sort_order` (`sort_order`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_touch_article_cat
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_touch_auth`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_touch_auth`;
CREATE TABLE `ecs_touch_auth` (
  `id` tinyint(2) NOT NULL AUTO_INCREMENT,
  `auth_config` varchar(255) NOT NULL,
  `from` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_touch_auth
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_touch_brand`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_touch_brand`;
CREATE TABLE `ecs_touch_brand` (
  `brand_id` int(8) NOT NULL,
  `brand_banner` varchar(255) NOT NULL COMMENT '广告位',
  `brand_content` text NOT NULL COMMENT '详情'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_touch_brand
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_touch_category`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_touch_category`;
CREATE TABLE `ecs_touch_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` int(10) unsigned DEFAULT NULL COMMENT '外键',
  `cat_image` varchar(255) DEFAULT NULL COMMENT '分类ICO图标',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_touch_category
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_touch_feedback`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_touch_feedback`;
CREATE TABLE `ecs_touch_feedback` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `msg_id` mediumint(8) unsigned NOT NULL,
  `msg_read` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_touch_feedback
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_touch_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_touch_goods`;
CREATE TABLE `ecs_touch_goods` (
  `goods_id` int(10) unsigned DEFAULT NULL COMMENT '外键',
  `sales_volume` int(10) unsigned DEFAULT NULL COMMENT '销量统计',
  UNIQUE KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_touch_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_touch_goods_activity`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_touch_goods_activity`;
CREATE TABLE `ecs_touch_goods_activity` (
  `act_id` int(10) DEFAULT NULL,
  `act_banner` varchar(255) DEFAULT NULL,
  `sales_count` int(10) DEFAULT NULL,
  `click_num` int(10) NOT NULL DEFAULT '0',
  `cur_price` decimal(10,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_touch_goods_activity
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_touch_nav`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_touch_nav`;
CREATE TABLE `ecs_touch_nav` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `ctype` varchar(10) DEFAULT NULL,
  `cid` smallint(5) unsigned DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `ifshow` tinyint(1) NOT NULL,
  `vieworder` tinyint(1) NOT NULL,
  `opennew` tinyint(1) NOT NULL,
  `url` varchar(255) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `type` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `ifshow` (`ifshow`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_touch_nav
-- ----------------------------
INSERT INTO `ecs_touch_nav` VALUES ('1', '', '0', '全部分类', '1', '0', '0', 'cat_all.php', 'icon_indexn_01.png', 'middle');
INSERT INTO `ecs_touch_nav` VALUES ('2', null, '0', '帮助中心', '1', '0', '0', 'article_cat.php?id=3', 'icon_indexn_02.png', 'middle');
INSERT INTO `ecs_touch_nav` VALUES ('3', '', '0', '个人中心', '1', '0', '0', 'user.php', 'icon_indexn_03.png', 'middle');
INSERT INTO `ecs_touch_nav` VALUES ('4', null, '0', '分享', '1', '0', '0', 'ectouch.php?act=share', 'icon_indexn_04.png', 'middle');
INSERT INTO `ecs_touch_nav` VALUES ('5', null, '0', '联系我们', '1', '0', '0', 'ectouch.php?act=contact', 'icon_indexn_05.png', 'middle');
INSERT INTO `ecs_touch_nav` VALUES ('6', null, '0', '论坛', '1', '0', '0', 'http://bbs.ecmoban.com', 'icon_indexn_06.png', 'middle');
INSERT INTO `ecs_touch_nav` VALUES ('7', null, '0', '客户端', '1', '0', '0', 'http://www.ecmoban.com/app/ecmoban.apk', 'icon_indexn_07.png', 'middle');
INSERT INTO `ecs_touch_nav` VALUES ('8', null, '0', '电脑版', '1', '0', '0', '../', 'icon_indexn_08.png', 'middle');

-- ----------------------------
-- Table structure for `ecs_touch_payment`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_touch_payment`;
CREATE TABLE `ecs_touch_payment` (
  `pay_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `pay_code` varchar(20) NOT NULL DEFAULT '',
  `pay_name` varchar(120) NOT NULL DEFAULT '',
  `pay_fee` varchar(10) NOT NULL DEFAULT '0',
  `pay_desc` text NOT NULL,
  `pay_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `pay_config` text NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_cod` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_online` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pay_id`),
  UNIQUE KEY `pay_code` (`pay_code`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_touch_payment
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_touch_shipping`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_touch_shipping`;
CREATE TABLE `ecs_touch_shipping` (
  `shipping_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `shipping_code` varchar(20) NOT NULL DEFAULT '',
  `shipping_name` varchar(120) NOT NULL DEFAULT '',
  `shipping_desc` varchar(255) NOT NULL DEFAULT '',
  `insure` varchar(10) NOT NULL DEFAULT '0',
  `support_cod` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_print` text NOT NULL,
  `print_bg` varchar(255) DEFAULT NULL,
  `config_lable` text,
  `print_model` tinyint(1) DEFAULT '0',
  `shipping_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`shipping_id`),
  KEY `shipping_code` (`shipping_code`,`enabled`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_touch_shipping
-- ----------------------------
INSERT INTO `ecs_touch_shipping` VALUES ('1', 'post_express', '邮政快递包裹', '邮政快递包裹的描述内容。', '2%', '0', '1', '', '', '', '0', '0');
INSERT INTO `ecs_touch_shipping` VALUES ('2', 'yto', '圆通速递', '上海圆通物流（速递）有限公司经过多年的网络快速发展，在中国速递行业中一直处于领先地位。为了能更好的发展国际快件市场，加快与国际市场的接轨，强化圆通的整体实力，圆通已在东南亚、欧美、中东、北美洲、非洲等许多城市运作国际快件业务', '0', '1', '1', '', '', '', '0', '0');
INSERT INTO `ecs_touch_shipping` VALUES ('3', 'city_express', '城际快递', '配送的运费是固定的', '0', '1', '1', '', '/images/receipt/20141028hbvggu.png', '', '0', '0');
INSERT INTO `ecs_touch_shipping` VALUES ('4', 'flat', '市内快递', '固定运费的配送方式内容', '0', '1', '1', '', '', '', '0', '0');
INSERT INTO `ecs_touch_shipping` VALUES ('5', 'sto_express', '申通快递', '江、浙、沪地区首重为15元/KG，其他地区18元/KG， 续重均为5-6元/KG， 云南地区为8元', '0', '0', '1', '', '', '', '0', '0');
INSERT INTO `ecs_touch_shipping` VALUES ('6', 'post_mail', '邮局平邮', '邮局平邮的描述内容。', '0', '0', '1', '', '', '', '0', '0');
INSERT INTO `ecs_touch_shipping` VALUES ('7', 'fpd', '运费到付', '所购商品到达即付运费', '0', '0', '1', '', '', '', '0', '0');
INSERT INTO `ecs_touch_shipping` VALUES ('8', 'cac', '上门取货', '买家自己到商家指定地点取货', '0', '1', '1', '', '/images/receipt/20141028vqkgeo.png', '', '2', '0');
INSERT INTO `ecs_touch_shipping` VALUES ('9', 'sf_express', '顺丰速运', '江、浙、沪地区首重15元/KG，续重2元/KG，其余城市首重20元/KG', '0', '0', '1', '', '/images/receipt/dly_sf_express.jpg', 't_shop_name,网店-名称,150,29,112,137,b_shop_name||,||t_shop_address,网店-地址,268,55,105,168,b_shop_address||,||t_shop_tel,网店-联系电话,55,25,177,224,b_shop_tel||,||t_customer_name,收件人-姓名,78,23,299,265,b_customer_name||,||t_customer_address,收件人-详细地址,271,94,104,293,b_customer_address||,||', '2', '0');
INSERT INTO `ecs_touch_shipping` VALUES ('10', 'zto', '中通速递', '中通快递的相关说明。保价费按照申报价值的2％交纳，但是，保价费不低于100元，保价金额不得高于10000元，保价金额超过10000元的，超过的部分无效', '1%', '0', '1', '', '/images/receipt/dly_zto.jpg', 't_shop_province,网店-省份,116,30,296.55,117.2,b_shop_province||,||t_customer_province,收件人-省份,114,32,649.95,114.3,b_customer_province||,||t_shop_address,网店-地址,260,57,151.75,152.05,b_shop_address||,||t_shop_name,网店-名称,259,28,152.65,212.4,b_shop_name||,||t_shop_tel,网店-联系电话,131,37,138.65,246.5,b_shop_tel||,||t_customer_post,收件人-邮编,104,39,659.2,242.2,b_customer_post||,||t_customer_tel,收件人-电话,158,22,461.9,241.9,b_customer_tel||,||t_customer_mobel,收件人-手机,159,21,463.25,265.4,b_customer_mobel||,||t_customer_name,收件人-姓名,109,32,498.9,115.8,b_customer_name||,||t_customer_address,收件人-详细地址,264,58,499.6,150.1,b_customer_address||,||t_months,月-当日日期,35,23,135.85,392.8,b_months||,||t_day,日-当日日期,24,23,180.1,392.8,b_day||,||', '2', '0');

-- ----------------------------
-- Table structure for `ecs_touch_shipping_area`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_touch_shipping_area`;
CREATE TABLE `ecs_touch_shipping_area` (
  `shipping_area_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `shipping_area_name` varchar(150) NOT NULL DEFAULT '',
  `shipping_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `configure` text NOT NULL,
  PRIMARY KEY (`shipping_area_id`),
  KEY `shipping_id` (`shipping_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_touch_shipping_area
-- ----------------------------
INSERT INTO `ecs_touch_shipping_area` VALUES ('1', '申通', '5', 'a:5:{i:0;a:2:{s:4:\"name\";s:8:\"item_fee\";s:5:\"value\";s:2:\"15\";}i:1;a:2:{s:4:\"name\";s:8:\"base_fee\";s:5:\"value\";s:2:\"15\";}i:2;a:2:{s:4:\"name\";s:8:\"step_fee\";s:5:\"value\";s:1:\"5\";}i:3;a:2:{s:4:\"name\";s:10:\"free_money\";s:5:\"value\";s:1:\"0\";}i:4;a:2:{s:4:\"name\";s:16:\"fee_compute_mode\";s:5:\"value\";s:9:\"by_weight\";}}');
INSERT INTO `ecs_touch_shipping_area` VALUES ('2', '1', '3', 'a:4:{i:0;a:2:{s:4:\"name\";s:8:\"base_fee\";s:5:\"value\";s:2:\"10\";}i:1;a:2:{s:4:\"name\";s:10:\"free_money\";s:5:\"value\";s:6:\"100000\";}i:2;a:2:{s:4:\"name\";s:16:\"fee_compute_mode\";s:5:\"value\";N;}i:3;a:2:{s:4:\"name\";s:7:\"pay_fee\";s:5:\"value\";s:1:\"5\";}}');
INSERT INTO `ecs_touch_shipping_area` VALUES ('3', '邮局', '6', 'a:7:{i:0;a:2:{s:4:\"name\";s:8:\"item_fee\";s:5:\"value\";s:1:\"4\";}i:1;a:2:{s:4:\"name\";s:8:\"base_fee\";s:5:\"value\";s:3:\"3.5\";}i:2;a:2:{s:4:\"name\";s:8:\"step_fee\";s:5:\"value\";s:3:\"2.5\";}i:3;a:2:{s:4:\"name\";s:9:\"step_fee1\";s:5:\"value\";N;}i:4;a:2:{s:4:\"name\";s:8:\"pack_fee\";s:5:\"value\";s:1:\"0\";}i:5;a:2:{s:4:\"name\";s:10:\"free_money\";s:5:\"value\";s:5:\"50000\";}i:6;a:2:{s:4:\"name\";s:16:\"fee_compute_mode\";s:5:\"value\";s:9:\"by_weight\";}}');
INSERT INTO `ecs_touch_shipping_area` VALUES ('4', '运费到付', '7', 'a:2:{i:0;a:2:{s:4:\"name\";s:10:\"free_money\";s:5:\"value\";s:5:\"50000\";}i:1;a:2:{s:4:\"name\";s:16:\"fee_compute_mode\";s:5:\"value\";N;}}');
INSERT INTO `ecs_touch_shipping_area` VALUES ('5', '中国', '10', 'a:5:{i:0;a:2:{s:4:\"name\";s:8:\"item_fee\";s:5:\"value\";s:2:\"15\";}i:1;a:2:{s:4:\"name\";s:8:\"base_fee\";s:5:\"value\";s:2:\"10\";}i:2;a:2:{s:4:\"name\";s:8:\"step_fee\";s:5:\"value\";s:1:\"5\";}i:3;a:2:{s:4:\"name\";s:10:\"free_money\";s:5:\"value\";s:0:\"\";}i:4;a:2:{s:4:\"name\";s:16:\"fee_compute_mode\";s:5:\"value\";s:9:\"by_weight\";}}');

-- ----------------------------
-- Table structure for `ecs_touch_shop_config`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_touch_shop_config`;
CREATE TABLE `ecs_touch_shop_config` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `code` varchar(30) NOT NULL DEFAULT '',
  `type` varchar(10) NOT NULL DEFAULT '',
  `store_range` varchar(255) NOT NULL DEFAULT '',
  `store_dir` varchar(255) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=913 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_touch_shop_config
-- ----------------------------
INSERT INTO `ecs_touch_shop_config` VALUES ('1', '0', 'shop_info', 'group', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('2', '0', 'basic', 'group', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('3', '0', 'display', 'group', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('4', '0', 'shopping_flow', 'group', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('5', '0', 'smtp', 'group', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('6', '0', 'hidden', 'hidden', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('7', '0', 'goods', 'group', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('8', '0', 'sms', 'group', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('9', '0', 'wap', 'hidden', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('101', '1', 'shop_name', 'text', '', '', '小米官网-好站长资源网www.haoid.cn', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('102', '1', 'shop_title', 'text', '', '', '小米官网小米手机、红米手机、小米电视官方正品专卖网站', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('103', '1', 'shop_desc', 'text', '', '', '小米官方网站包含小米手机系列小米NOTE、小米4，红米手机系列红米Note、红米2/2A还有小米电视40/49/55英寸、手环、移动电源、运动相机,小米智能家居系列路由器、空气净化器、体重秤、插线板等小米商城均有售。', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('104', '1', 'shop_keywords', 'text', '', '', '小米,小米手机,小米官网,红米手机,小米商城,小米电视', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('105', '1', 'shop_country', 'manual', '', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('106', '1', 'shop_province', 'manual', '', '', '2', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('107', '1', 'shop_city', 'manual', '', '', '52', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('108', '1', 'shop_address', 'text', '', '', '重庆市杨家坪', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('109', '1', 'qq', 'text', '', '', '111111111,22222222,33333333', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('110', '1', 'ww', 'text', '', '', '44444444,55555555,6666666', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('111', '1', 'skype', 'text', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('112', '1', 'ym', 'text', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('113', '1', 'msn', 'text', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('114', '1', 'service_email', 'text', '', '', '123123123@qq.com', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('115', '1', 'service_phone', 'text', '', '', '400-023-3005', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('116', '1', 'shop_closed', 'select', '0,1', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('117', '1', 'close_comment', 'textarea', '', '', '用户中心公告！', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('118', '1', 'shop_logo', 'file', '', '../themes/{$template}/images/', '../themes/xiaomi/images/logo.gif', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('119', '1', 'licensed', 'select', '0,1', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('120', '1', 'user_notice', 'textarea', '', '', '用户中心公告！', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('121', '1', 'shop_notice', 'textarea', '', '', '欢迎光临好站长资源网,我们的宗旨：诚信经营、服务客户！\r\n<MARQUEE onmouseover=this.stop() onmouseout=this.start() \r\nscrollAmount=3><U><FONT color=red>\r\n<P>咨询电话010-10124444  010-21252454 8465544</P></FONT></U></MARQUEE>', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('122', '1', 'shop_reg_closed', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('201', '2', 'lang', 'manual', '', '', 'zh_cn', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('202', '2', 'icp_number', 'text', '', '', '©<a href=\'#\'>mi.com</a> 京ICP证110507号 京ICP备10046444号 京公网安备1101080212535号 <a href=\'#\'>京网文[2014]0059-0009号</a>', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('203', '2', 'icp_file', 'file', '', '../cert/', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('204', '2', 'watermark', 'file', '', '../images/', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('205', '2', 'watermark_place', 'select', '0,1,2,3,4,5', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('206', '2', 'watermark_alpha', 'text', '', '', '65', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('207', '2', 'use_storage', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('208', '2', 'market_price_rate', 'text', '', '', '1.2', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('209', '2', 'rewrite', 'select', '0,1,2', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('210', '2', 'integral_name', 'text', '', '', '积分', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('211', '2', 'integral_scale', 'text', '', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('212', '2', 'integral_percent', 'text', '', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('213', '2', 'sn_prefix', 'text', '', '', 'ECS', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('214', '2', 'comment_check', 'select', '0,1', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('215', '2', 'no_picture', 'file', '', '../images/', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('218', '2', 'stats_code', 'textarea', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('219', '2', 'cache_time', 'text', '', '', '3600', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('220', '2', 'register_points', 'text', '', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('221', '2', 'enable_gzip', 'select', '0,1', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('222', '2', 'top10_time', 'select', '0,1,2,3,4', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('223', '2', 'timezone', 'options', '-12,-11,-10,-9,-8,-7,-6,-5,-4,-3.5,-3,-2,-1,0,1,2,3,3.5,4,4.5,5,5.5,5.75,6,6.5,7,8,9,9.5,10,11,12', '', '8', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('224', '2', 'upload_size_limit', 'options', '-1,0,64,128,256,512,1024,2048,4096', '', '64', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('226', '2', 'cron_method', 'select', '0,1', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('227', '2', 'comment_factor', 'select', '0,1,2,3', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('228', '2', 'enable_order_check', 'select', '0,1', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('229', '2', 'default_storage', 'text', '', '', '10000', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('230', '2', 'bgcolor', 'text', '', '', '#FFFFFF', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('231', '2', 'visit_stats', 'select', 'on,off', '', 'off', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('232', '2', 'send_mail_on', 'select', 'on,off', '', 'off', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('233', '2', 'auto_generate_gallery', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('234', '2', 'retain_original_img', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('235', '2', 'member_email_validate', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('236', '2', 'message_board', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('239', '2', 'certificate_id', 'hidden', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('240', '2', 'token', 'hidden', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('241', '2', 'certi', 'hidden', '', '', 'http://localhost/api/api.php', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('242', '2', 'send_verify_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('243', '2', 'ent_id', 'hidden', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('244', '2', 'ent_ac', 'hidden', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('245', '2', 'ent_sign', 'hidden', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('246', '2', 'ent_email', 'hidden', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('301', '3', 'date_format', 'hidden', '', '', 'Y-m-d', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('302', '3', 'time_format', 'text', '', '', 'Y-m-d H:i:s', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('303', '3', 'currency_format', 'text', '', '', '%s<em>元</em>', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('304', '3', 'thumb_width', 'text', '', '', '220', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('305', '3', 'thumb_height', 'text', '', '', '220', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('306', '3', 'image_width', 'text', '', '', '350', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('307', '3', 'image_height', 'text', '', '', '350', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('312', '3', 'top_number', 'text', '', '', '5', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('313', '3', 'history_number', 'text', '', '', '5', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('314', '3', 'comments_number', 'text', '', '', '10', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('315', '3', 'bought_goods', 'text', '', '', '3', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('316', '3', 'article_number', 'text', '', '', '4', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('317', '3', 'goods_name_length', 'text', '', '', '30', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('318', '3', 'price_format', 'select', '0,1,2,3,4,5', '', '5', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('319', '3', 'page_size', 'text', '', '', '16', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('320', '3', 'sort_order_type', 'select', '0,1,2', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('321', '3', 'sort_order_method', 'select', '0,1', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('322', '3', 'show_order_type', 'select', '0,1,2', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('323', '3', 'attr_related_number', 'text', '', '', '5', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('324', '3', 'goods_gallery_number', 'text', '', '', '5', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('325', '3', 'article_title_length', 'text', '', '', '16', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('326', '3', 'name_of_region_1', 'text', '', '', '国家', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('327', '3', 'name_of_region_2', 'text', '', '', '省', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('328', '3', 'name_of_region_3', 'text', '', '', '市', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('329', '3', 'name_of_region_4', 'text', '', '', '区', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('330', '3', 'search_keywords', 'text', '', '', '小米手环,耳机,插线板', '0');
INSERT INTO `ecs_touch_shop_config` VALUES ('332', '3', 'related_goods_number', 'text', '', '', '4', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('333', '3', 'help_open', 'select', '0,1', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('334', '3', 'article_page_size', 'text', '', '', '10', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('335', '3', 'page_style', 'select', '0,1', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('336', '3', 'recommend_order', 'select', '0,1', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('337', '3', 'index_ad', 'hidden', '', '', 'sys', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('401', '4', 'can_invoice', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('402', '4', 'use_integral', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('403', '4', 'use_bonus', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('404', '4', 'use_surplus', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('405', '4', 'use_how_oos', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('406', '4', 'send_confirm_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('407', '4', 'send_ship_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('408', '4', 'send_cancel_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('409', '4', 'send_invalid_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('410', '4', 'order_pay_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('411', '4', 'order_unpay_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('412', '4', 'order_ship_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('413', '4', 'order_receive_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('414', '4', 'order_unship_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('415', '4', 'order_return_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('416', '4', 'order_invalid_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('417', '4', 'order_cancel_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('418', '4', 'invoice_content', 'textarea', '', '', '办公用品\r\n食品\r\n礼品\r\n服装', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('419', '4', 'anonymous_buy', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('420', '4', 'min_goods_amount', 'text', '', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('421', '4', 'one_step_buy', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('422', '4', 'invoice_type', 'manual', '', '', 'a:2:{s:4:\"type\";a:3:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";}s:4:\"rate\";a:3:{i:0;d:1;i:1;d:1.5;i:2;d:0;}}', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('423', '4', 'stock_dec_time', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('424', '4', 'cart_confirm', 'options', '1,2,3,4', '', '4', '0');
INSERT INTO `ecs_touch_shop_config` VALUES ('425', '4', 'send_service_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('426', '4', 'show_goods_in_cart', 'select', '1,2,3', '', '3', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('427', '4', 'show_attr_in_cart', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('501', '5', 'smtp_host', 'text', '', '', 'smtp.163.com', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('502', '5', 'smtp_port', 'text', '', '', '25', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('503', '5', 'smtp_user', 'text', '', '', 'ecmoban1@163.com', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('504', '5', 'smtp_pass', 'password', '', '', 'admin123', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('505', '5', 'smtp_mail', 'text', '', '', 'ecmoban1@163.com', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('506', '5', 'mail_charset', 'select', 'UTF8,GB2312,BIG5', '', 'GB2312', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('507', '5', 'mail_service', 'select', '0,1', '', '1', '0');
INSERT INTO `ecs_touch_shop_config` VALUES ('508', '5', 'smtp_ssl', 'select', '0,1', '', '0', '0');
INSERT INTO `ecs_touch_shop_config` VALUES ('601', '6', 'integrate_code', 'hidden', '', '', 'ecshop', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('602', '6', 'integrate_config', 'hidden', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('603', '6', 'hash_code', 'hidden', '', '', '499d1f1cbd0e575c3b6f1cfcca61f9c3', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('604', '6', 'template', 'hidden', '', '', 'miqinew', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('605', '6', 'install_date', 'hidden', '', '', '1398244332', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('606', '6', 'ecs_version', 'hidden', '', '', 'v2.7.3', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('607', '6', 'sms_user_name', 'hidden', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('608', '6', 'sms_password', 'hidden', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('609', '6', 'sms_auth_str', 'hidden', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('610', '6', 'sms_domain', 'hidden', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('611', '6', 'sms_count', 'hidden', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('612', '6', 'sms_total_money', 'hidden', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('613', '6', 'sms_balance', 'hidden', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('614', '6', 'sms_last_request', 'hidden', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('616', '6', 'affiliate', 'hidden', '', '', 'a:3:{s:6:\"config\";a:7:{s:6:\"expire\";d:24;s:11:\"expire_unit\";s:4:\"hour\";s:11:\"separate_by\";i:0;s:15:\"level_point_all\";s:2:\"5%\";s:15:\"level_money_all\";s:2:\"1%\";s:18:\"level_register_all\";i:2;s:17:\"level_register_up\";i:60;}s:4:\"item\";a:4:{i:0;a:2:{s:11:\"level_point\";s:3:\"60%\";s:11:\"level_money\";s:3:\"60%\";}i:1;a:2:{s:11:\"level_point\";s:3:\"30%\";s:11:\"level_money\";s:3:\"30%\";}i:2;a:2:{s:11:\"level_point\";s:2:\"7%\";s:11:\"level_money\";s:2:\"7%\";}i:3;a:2:{s:11:\"level_point\";s:2:\"3%\";s:11:\"level_money\";s:2:\"3%\";}}s:2:\"on\";i:1;}', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('617', '6', 'captcha', 'hidden', '', '', '39', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('618', '6', 'captcha_width', 'hidden', '', '', '100', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('619', '6', 'captcha_height', 'hidden', '', '', '20', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('620', '6', 'sitemap', 'hidden', '', '', 'a:6:{s:19:\"homepage_changefreq\";s:6:\"hourly\";s:17:\"homepage_priority\";s:3:\"0.9\";s:19:\"category_changefreq\";s:6:\"hourly\";s:17:\"category_priority\";s:3:\"0.8\";s:18:\"content_changefreq\";s:6:\"weekly\";s:16:\"content_priority\";s:3:\"0.7\";}', '0');
INSERT INTO `ecs_touch_shop_config` VALUES ('621', '6', 'points_rule', 'hidden', '', '', '', '0');
INSERT INTO `ecs_touch_shop_config` VALUES ('622', '6', 'flash_theme', 'hidden', '', '', 'default', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('623', '6', 'stylename', 'hidden', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('701', '7', 'show_goodssn', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('702', '7', 'show_brand', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('703', '7', 'show_goodsweight', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('704', '7', 'show_goodsnumber', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('705', '7', 'show_addtime', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('706', '7', 'goodsattr_style', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('707', '7', 'show_marketprice', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('801', '8', 'sms_shop_mobile', 'text', '', '', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('802', '8', 'sms_order_placed', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('803', '8', 'sms_order_payed', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('804', '8', 'sms_order_shipped', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('901', '9', 'wap_config', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('902', '9', 'wap_logo', 'file', '', '../images/', '', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('903', '2', 'message_check', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_touch_shop_config` VALUES ('910', '8', 'sms_ecmoban_user', 'text', '', '', '', '0');
INSERT INTO `ecs_touch_shop_config` VALUES ('911', '8', 'sms_ecmoban_password', 'password', '', '', '', '0');
INSERT INTO `ecs_touch_shop_config` VALUES ('912', '8', 'sms_signin', 'select', '1,0', '', '0', '1');

-- ----------------------------
-- Table structure for `ecs_touch_template`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_touch_template`;
CREATE TABLE `ecs_touch_template` (
  `filename` varchar(30) NOT NULL DEFAULT '',
  `region` varchar(40) NOT NULL DEFAULT '',
  `library` varchar(40) NOT NULL DEFAULT '',
  `sort_order` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `number` tinyint(1) unsigned NOT NULL DEFAULT '5',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `theme` varchar(60) NOT NULL DEFAULT '',
  `remarks` varchar(30) NOT NULL DEFAULT '',
  KEY `filename` (`filename`,`region`),
  KEY `theme` (`theme`),
  KEY `remarks` (`remarks`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_touch_template
-- ----------------------------
INSERT INTO `ecs_touch_template` VALUES ('index', 'touch首页广告区域', '/library/ad_position.lbi', '0', '1', '4', '4', 'default', '');
INSERT INTO `ecs_touch_template` VALUES ('index', '中部主区域', '/library/recommend_hot.lbi', '2', '0', '10', '0', 'default', '');
INSERT INTO `ecs_touch_template` VALUES ('index', '中部主区域', '/library/recommend_new.lbi', '1', '0', '10', '0', 'default', '');
INSERT INTO `ecs_touch_template` VALUES ('index', '中部主区域', '/library/recommend_best.lbi', '0', '0', '10', '0', 'default', '');

-- ----------------------------
-- Table structure for `ecs_touch_topic`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_touch_topic`;
CREATE TABLE `ecs_touch_topic` (
  `topic_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `intro` text NOT NULL,
  `start_time` int(11) NOT NULL DEFAULT '0',
  `end_time` int(10) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `template` varchar(255) NOT NULL DEFAULT '',
  `css` text NOT NULL,
  `topic_img` varchar(255) DEFAULT NULL,
  `title_pic` varchar(255) DEFAULT NULL,
  `base_style` char(6) DEFAULT NULL,
  `htmls` mediumtext,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  KEY `topic_id` (`topic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_touch_topic
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_touch_user_info`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_touch_user_info`;
CREATE TABLE `ecs_touch_user_info` (
  `user_id` int(10) NOT NULL,
  `aite_id` varchar(200) NOT NULL COMMENT '标识'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_touch_user_info
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_users`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_users`;
CREATE TABLE `ecs_users` (
  `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `aite_id` text NOT NULL,
  `email` varchar(60) NOT NULL DEFAULT '',
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `question` varchar(255) NOT NULL DEFAULT '',
  `answer` varchar(255) NOT NULL DEFAULT '',
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `birthday` date NOT NULL DEFAULT '0000-00-00',
  `user_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `frozen_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pay_points` int(10) unsigned NOT NULL DEFAULT '0',
  `rank_points` int(10) unsigned NOT NULL DEFAULT '0',
  `address_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `reg_time` int(10) unsigned NOT NULL DEFAULT '0',
  `last_login` int(11) unsigned NOT NULL DEFAULT '0',
  `last_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_ip` varchar(15) NOT NULL DEFAULT '',
  `visit_count` smallint(5) unsigned NOT NULL DEFAULT '0',
  `user_rank` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_special` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ec_salt` varchar(10) DEFAULT NULL,
  `salt` varchar(10) NOT NULL DEFAULT '0',
  `parent_id` mediumint(9) NOT NULL DEFAULT '0',
  `flag` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `alias` varchar(60) NOT NULL,
  `msn` varchar(60) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `office_phone` varchar(20) NOT NULL,
  `home_phone` varchar(20) NOT NULL,
  `mobile_phone` varchar(20) NOT NULL,
  `is_validated` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `credit_line` decimal(10,2) unsigned NOT NULL,
  `passwd_question` varchar(50) DEFAULT NULL,
  `passwd_answer` varchar(255) DEFAULT NULL,
  `wxid` char(28) NOT NULL,
  `wxch_bd` char(2) NOT NULL,
  `apply_sale` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name` (`user_name`),
  KEY `email` (`email`),
  KEY `parent_id` (`parent_id`),
  KEY `flag` (`flag`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_users
-- ----------------------------
INSERT INTO `ecs_users` VALUES ('1', '', 'heirui@qq.com', 'heirui', '0ae7b96009d97e620ded6ab3cd26c99b', '', '', '2', '1955-01-01', '0.00', '0.00', '0', '0', '1', '1450021966', '1450023809', '0000-00-00 00:00:00', '127.0.0.1', '37', '0', '0', '906', '0', '0', '0', '', '', '', '', '', '', '0', '0.00', null, null, '', '', '0');
INSERT INTO `ecs_users` VALUES ('2', '', 'heirui@12.com', '好站长源码社区', '2703ddc1fe78739ab2ec1a684e7fd0fd', '', '', '0', '1955-01-01', '0.00', '0.00', '0', '0', '0', '1450401671', '0', '0000-00-00 00:00:00', '', '0', '0', '0', null, '0', '0', '0', '', '', '', '', '', '', '0', '0.00', null, null, '', '', '0');

-- ----------------------------
-- Table structure for `ecs_user_account`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_user_account`;
CREATE TABLE `ecs_user_account` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `admin_user` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `add_time` int(10) NOT NULL DEFAULT '0',
  `paid_time` int(10) NOT NULL DEFAULT '0',
  `admin_note` varchar(255) NOT NULL,
  `user_note` varchar(255) NOT NULL,
  `process_type` tinyint(1) NOT NULL DEFAULT '0',
  `payment` varchar(90) NOT NULL,
  `is_paid` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `is_paid` (`is_paid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_user_account
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_user_address`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_user_address`;
CREATE TABLE `ecs_user_address` (
  `address_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `address_name` varchar(50) NOT NULL DEFAULT '',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `consignee` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `country` smallint(5) NOT NULL DEFAULT '0',
  `province` smallint(5) NOT NULL DEFAULT '0',
  `city` smallint(5) NOT NULL DEFAULT '0',
  `district` smallint(5) NOT NULL DEFAULT '0',
  `address` varchar(120) NOT NULL DEFAULT '',
  `zipcode` varchar(60) NOT NULL DEFAULT '',
  `tel` varchar(60) NOT NULL DEFAULT '',
  `mobile` varchar(60) NOT NULL DEFAULT '',
  `sign_building` varchar(120) NOT NULL DEFAULT '',
  `best_time` varchar(120) NOT NULL DEFAULT '',
  PRIMARY KEY (`address_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_user_address
-- ----------------------------
INSERT INTO `ecs_user_address` VALUES ('1', '', '1', '刘先生', 'ecshop@ecshop.com', '1', '2', '52', '502', '海兴大厦', '', '010-25851234', '13986765412', '', '');
INSERT INTO `ecs_user_address` VALUES ('2', '', '3', '叶先生', 'text@ecshop.com', '1', '2', '52', '510', '通州区旗舰凯旋小区', '', '13588104710', '', '', '');
INSERT INTO `ecs_user_address` VALUES ('3', '', '6', 'q111', 'admin123@qq.com', '1', '4', '55', '540', '22', '', '333', '', '', '');
INSERT INTO `ecs_user_address` VALUES ('4', '', '8', '111', '444@qq.com', '1', '7', '102', '907', '22', '', '333', '', '', '');
INSERT INTO `ecs_user_address` VALUES ('5', '', '6', '11', '222@qq.com', '1', '6', '81', '754', '333', '44', '55', '', '', '');
INSERT INTO `ecs_user_address` VALUES ('6', '', '16', 'dsdad', '497110669@qq.com', '1', '3', '36', '400', 'dsdadsadad', '3213', '13444442222', '13444442222', '', '');
INSERT INTO `ecs_user_address` VALUES ('7', '', '2', '小明', 'vip@ecshop.com', '1', '3', '38', '417', '上海市普陀区金沙江路', '', '18655564452', '', '', '');

-- ----------------------------
-- Table structure for `ecs_user_bonus`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_user_bonus`;
CREATE TABLE `ecs_user_bonus` (
  `bonus_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `bonus_type_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `bonus_sn` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `used_time` int(10) unsigned NOT NULL DEFAULT '0',
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `emailed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bonus_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_user_bonus
-- ----------------------------
INSERT INTO `ecs_user_bonus` VALUES ('34', '5', '0', '6', '0', '0', '0');
INSERT INTO `ecs_user_bonus` VALUES ('35', '5', '0', '16', '0', '0', '0');
INSERT INTO `ecs_user_bonus` VALUES ('36', '5', '0', '16', '0', '0', '0');

-- ----------------------------
-- Table structure for `ecs_user_feed`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_user_feed`;
CREATE TABLE `ecs_user_feed` (
  `feed_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `value_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `feed_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_feed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`feed_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_user_feed
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_user_rank`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_user_rank`;
CREATE TABLE `ecs_user_rank` (
  `rank_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `rank_name` varchar(30) NOT NULL DEFAULT '',
  `min_points` int(10) unsigned NOT NULL DEFAULT '0',
  `max_points` int(10) unsigned NOT NULL DEFAULT '0',
  `discount` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `show_price` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `special_rank` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`rank_id`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_user_rank
-- ----------------------------
INSERT INTO `ecs_user_rank` VALUES ('1', '注册用户', '0', '10000', '100', '1', '0');
INSERT INTO `ecs_user_rank` VALUES ('2', 'vip', '10000', '10000000', '95', '1', '0');
INSERT INTO `ecs_user_rank` VALUES ('3', '代销用户', '0', '0', '90', '0', '1');
INSERT INTO `ecs_user_rank` VALUES ('99', '微信用户', '0', '0', '100', '1', '1');

-- ----------------------------
-- Table structure for `ecs_virtual_card`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_virtual_card`;
CREATE TABLE `ecs_virtual_card` (
  `card_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `card_sn` varchar(60) NOT NULL DEFAULT '',
  `card_password` varchar(60) NOT NULL DEFAULT '',
  `add_date` int(11) NOT NULL DEFAULT '0',
  `end_date` int(11) NOT NULL DEFAULT '0',
  `is_saled` tinyint(1) NOT NULL DEFAULT '0',
  `order_sn` varchar(20) NOT NULL DEFAULT '',
  `crc32` varchar(12) NOT NULL DEFAULT '0',
  PRIMARY KEY (`card_id`),
  KEY `goods_id` (`goods_id`),
  KEY `car_sn` (`card_sn`),
  KEY `is_saled` (`is_saled`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_virtual_card
-- ----------------------------
INSERT INTO `ecs_virtual_card` VALUES ('5', '27', 'RlpbQRI', 'RlpbQRJbQQ', '1241972903', '1273449600', '0', '', '-1958172277');
INSERT INTO `ecs_virtual_card` VALUES ('6', '27', 'RlpbQRJbQg', 'RVpbQBJaQRE', '1241972911', '1273449600', '0', '', '-1958172277');
INSERT INTO `ecs_virtual_card` VALUES ('7', '30', 'RVtbQBJYQBJQE1lU', 'R1pYRxJaQhRTEVhXSEdaWA', '1241973121', '1273449600', '0', '', '-1958172277');
INSERT INTO `ecs_virtual_card` VALUES ('8', '30', 'R1pYRxJYRxNTFV9S', 'TF5cQBVdQA', '1241973127', '1273449600', '0', '', '-1958172277');
INSERT INTO `ecs_virtual_card` VALUES ('9', '30', 'Q15cSxZeRhhWFg', 'TV9fSxdfSxdXGFxTQUI', '1241973134', '1273449600', '0', '', '-1958172277');
INSERT INTO `ecs_virtual_card` VALUES ('10', '30', 'QVxaRhRaRhRSF11d', 'TFBeRRheRRhWFlJdSU1Q', '1241973146', '1273449600', '0', '', '-1958172277');
INSERT INTO `ecs_virtual_card` VALUES ('11', '30', 'R1xaRxNcRw', 'QF1dRRVdRBY', '1241973157', '1273449600', '0', '', '-1958172277');
INSERT INTO `ecs_virtual_card` VALUES ('12', '30', 'RlpbQRNdQBJU', 'R1xaQRRaQRVSEg', '1241973164', '1273449600', '0', '', '-1958172277');
INSERT INTO `ecs_virtual_card` VALUES ('13', '30', 'RltdQBRaQQ', 'Rl1dRRheRRhYF10', '1241973170', '1273449600', '0', '', '-1958172277');
INSERT INTO `ecs_virtual_card` VALUES ('14', '30', 'RltdQBVeRhg', 'RlxaQRZeRhVV', '1241973178', '1273449600', '0', '', '-1958172277');
INSERT INTO `ecs_virtual_card` VALUES ('15', '30', 'QFtbRhRaQRZVEw', 'Rl1aQRRaQRZUElg', '1241973185', '1273449600', '0', '', '-1958172277');

-- ----------------------------
-- Table structure for `ecs_volume_price`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_volume_price`;
CREATE TABLE `ecs_volume_price` (
  `price_type` tinyint(1) unsigned NOT NULL,
  `goods_id` mediumint(8) unsigned NOT NULL,
  `volume_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `volume_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`price_type`,`goods_id`,`volume_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_volume_price
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_vote`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_vote`;
CREATE TABLE `ecs_vote` (
  `vote_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `vote_name` varchar(250) NOT NULL DEFAULT '',
  `start_time` int(11) unsigned NOT NULL DEFAULT '0',
  `end_time` int(11) unsigned NOT NULL DEFAULT '0',
  `can_multi` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `vote_count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`vote_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_vote
-- ----------------------------
INSERT INTO `ecs_vote` VALUES ('1', '您从哪里知道我们的网站', '1213171200', '1495699200', '0', '0');

-- ----------------------------
-- Table structure for `ecs_vote_log`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_vote_log`;
CREATE TABLE `ecs_vote_log` (
  `log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `vote_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ip_address` varchar(15) NOT NULL DEFAULT '',
  `vote_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`log_id`),
  KEY `vote_id` (`vote_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_vote_log
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_vote_option`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_vote_option`;
CREATE TABLE `ecs_vote_option` (
  `option_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `vote_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `option_name` varchar(250) NOT NULL DEFAULT '',
  `option_count` int(8) unsigned NOT NULL DEFAULT '0',
  `option_order` tinyint(3) unsigned NOT NULL DEFAULT '100',
  PRIMARY KEY (`option_id`),
  KEY `vote_id` (`vote_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_vote_option
-- ----------------------------
INSERT INTO `ecs_vote_option` VALUES ('1', '1', '论坛', '0', '100');
INSERT INTO `ecs_vote_option` VALUES ('2', '1', '朋友', '0', '100');
INSERT INTO `ecs_vote_option` VALUES ('3', '1', '友情链接', '0', '100');

-- ----------------------------
-- Table structure for `ecs_wechat`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_wechat`;
CREATE TABLE `ecs_wechat` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '公众号名称',
  `orgid` varchar(255) NOT NULL COMMENT '公众号原始ID',
  `weixin` varchar(255) NOT NULL COMMENT '微信号',
  `token` varchar(255) NOT NULL COMMENT 'Token',
  `appid` varchar(255) NOT NULL COMMENT 'AppID',
  `appsecret` varchar(255) NOT NULL COMMENT 'AppSecret',
  `type` int(1) unsigned NOT NULL DEFAULT '0' COMMENT '公众号类型',
  `oauth_status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否开启微信登录',
  `oauth_name` varchar(100) DEFAULT NULL,
  `oauth_redirecturi` varchar(255) DEFAULT NULL,
  `oauth_count` int(11) unsigned NOT NULL DEFAULT '0',
  `time` int(11) unsigned NOT NULL DEFAULT '0',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` int(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `default_wx` int(1) NOT NULL DEFAULT '0' COMMENT '1为默认使用，0为不默认',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_wechat
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_wechat_custom_message`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_wechat_custom_message`;
CREATE TABLE `ecs_wechat_custom_message` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `msg` varchar(255) DEFAULT NULL COMMENT '信息内容',
  `iswechat` smallint(1) unsigned DEFAULT NULL,
  `send_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '发送时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_wechat_custom_message
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_wechat_extend`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_wechat_extend`;
CREATE TABLE `ecs_wechat_extend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '功能名称',
  `keywords` varchar(20) DEFAULT NULL,
  `command` varchar(255) DEFAULT NULL COMMENT '扩展词',
  `config` text COMMENT '配置信息',
  `type` varchar(20) DEFAULT NULL,
  `enable` int(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否安装，1为已安装，0未安装',
  `author` varchar(100) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `wechat_id` int(10) unsigned NOT NULL COMMENT '公众号id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_wechat_extend
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_wechat_mass_history`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_wechat_mass_history`;
CREATE TABLE `ecs_wechat_mass_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wechat_id` int(11) unsigned NOT NULL,
  `media_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '素材id',
  `type` varchar(10) DEFAULT NULL COMMENT '发送内容类型',
  `status` varchar(20) DEFAULT NULL COMMENT '发送状态，对应微信通通知状态',
  `send_time` int(11) unsigned NOT NULL DEFAULT '0',
  `msg_id` varchar(20) DEFAULT NULL COMMENT '微信端返回的消息ID',
  `totalcount` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'group_id下粉丝数；或者openid_list中的粉丝数',
  `filtercount` int(10) unsigned NOT NULL DEFAULT '0',
  `sentcount` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发送成功的粉丝数',
  `errorcount` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发送失败的粉丝数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_wechat_mass_history
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_wechat_media`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_wechat_media`;
CREATE TABLE `ecs_wechat_media` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `wechat_id` int(10) NOT NULL,
  `title` varchar(255) DEFAULT NULL COMMENT '图文消息标题',
  `command` varchar(20) NOT NULL COMMENT '关键词',
  `author` varchar(20) DEFAULT NULL,
  `is_show` int(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否显示封面，1为显示，0为不显示',
  `digest` varchar(255) DEFAULT NULL COMMENT '图文消息的描述',
  `content` text NOT NULL COMMENT '图文消息页面的内容，支持HTML标签',
  `link` varchar(255) DEFAULT NULL COMMENT '点击图文消息跳转链接',
  `file` varchar(255) DEFAULT NULL COMMENT '图片链接',
  `size` int(7) DEFAULT NULL COMMENT '媒体文件上传后，获取时的唯一标识',
  `file_name` varchar(255) DEFAULT NULL COMMENT '媒体文件上传时间戳',
  `thumb` varchar(255) DEFAULT NULL,
  `add_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  `type` varchar(10) DEFAULT NULL,
  `article_id` varchar(100) DEFAULT NULL,
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_wechat_media
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_wechat_menu`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_wechat_menu`;
CREATE TABLE `ecs_wechat_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wechat_id` int(10) unsigned NOT NULL DEFAULT '0',
  `pid` int(3) unsigned NOT NULL DEFAULT '0' COMMENT '父级ID',
  `name` varchar(255) NOT NULL COMMENT '菜单标题',
  `type` varchar(10) NOT NULL COMMENT '菜单的响应动作类型',
  `key` varchar(255) NOT NULL COMMENT '菜单KEY值，click类型必须',
  `url` varchar(255) NOT NULL COMMENT '网页链接，view类型必须',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_wechat_menu
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_wechat_point`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_wechat_point`;
CREATE TABLE `ecs_wechat_point` (
  `log_id` mediumint(8) unsigned NOT NULL COMMENT '积分增加记录id',
  `openid` varchar(100) DEFAULT NULL,
  `keywords` varchar(100) NOT NULL COMMENT '关键词',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_wechat_point
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_wechat_prize`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_wechat_prize`;
CREATE TABLE `ecs_wechat_prize` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `wechat_id` int(11) unsigned NOT NULL,
  `openid` varchar(100) NOT NULL,
  `prize_name` varchar(100) NOT NULL,
  `issue_status` int(2) NOT NULL DEFAULT '0' COMMENT '发放状态，0未发放，1发放',
  `winner` varchar(255) DEFAULT NULL,
  `dateline` int(11) unsigned NOT NULL DEFAULT '0',
  `prize_type` int(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否中奖，0未中奖，1中奖',
  `activity_type` varchar(20) NOT NULL COMMENT '活动类型',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_wechat_prize
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_wechat_qrcode`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_wechat_qrcode`;
CREATE TABLE `ecs_wechat_qrcode` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` int(1) NOT NULL DEFAULT '0' COMMENT '二维码类型，0临时，1永久',
  `expire_seconds` int(4) DEFAULT NULL COMMENT '二维码有效时间',
  `scene_id` int(10) NOT NULL COMMENT '场景值ID，临时二维码时为32位非0整型，永久二维码时最大值为100000（目前参数只支持1--100000）',
  `username` varchar(60) DEFAULT NULL COMMENT '推荐人',
  `function` varchar(255) NOT NULL COMMENT '功能',
  `ticket` varchar(255) DEFAULT NULL COMMENT '二维码ticket',
  `qrcode_url` varchar(255) DEFAULT NULL COMMENT '二维码路径',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '结束时间',
  `scan_num` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '扫描量',
  `wechat_id` int(10) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `sort` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_wechat_qrcode
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_wechat_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_wechat_reply`;
CREATE TABLE `ecs_wechat_reply` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `wechat_id` int(11) unsigned NOT NULL,
  `type` varchar(10) NOT NULL COMMENT '自动回复类型',
  `content` varchar(255) DEFAULT NULL,
  `media_id` int(10) DEFAULT NULL,
  `rule_name` varchar(180) DEFAULT NULL,
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `reply_type` varchar(10) DEFAULT NULL COMMENT '关键词回复内容的类型',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_wechat_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_wechat_rule_keywords`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_wechat_rule_keywords`;
CREATE TABLE `ecs_wechat_rule_keywords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL COMMENT '规则id',
  `rule_keywords` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_wechat_rule_keywords
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_wechat_user`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_wechat_user`;
CREATE TABLE `ecs_wechat_user` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wechat_id` int(10) unsigned NOT NULL DEFAULT '0',
  `subscribe` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '用户是否订阅该公众号标识',
  `openid` varchar(255) NOT NULL COMMENT '用户的标识',
  `nickname` varchar(255) NOT NULL COMMENT '用户的昵称',
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '用户的性别',
  `city` varchar(255) NOT NULL COMMENT '用户所在城市',
  `country` varchar(255) NOT NULL COMMENT '用户所在国家',
  `province` varchar(255) NOT NULL COMMENT '用户所在省份',
  `language` varchar(50) NOT NULL COMMENT '用户的语言',
  `headimgurl` varchar(255) NOT NULL COMMENT '用户头像',
  `subscribe_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户关注时间',
  `remark` varchar(255) DEFAULT NULL,
  `privilege` varchar(255) DEFAULT NULL,
  `unionid` varchar(255) NOT NULL,
  `group_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户组id',
  `ect_uid` int(11) unsigned NOT NULL COMMENT 'ecshop会员id',
  `bein_kefu` tinyint(1) unsigned NOT NULL COMMENT '是否处在多客服流程',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_wechat_user
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_wechat_user_group`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_wechat_user_group`;
CREATE TABLE `ecs_wechat_user_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wechat_id` int(10) unsigned NOT NULL DEFAULT '0',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分组id',
  `name` varchar(255) NOT NULL COMMENT '分组名字，UTF8编码',
  `count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分组内用户数量',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_wechat_user_group
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_wholesale`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_wholesale`;
CREATE TABLE `ecs_wholesale` (
  `act_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL,
  `goods_name` varchar(255) NOT NULL,
  `rank_ids` varchar(255) NOT NULL,
  `prices` text NOT NULL,
  `enabled` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`act_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_wholesale
-- ----------------------------
INSERT INTO `ecs_wholesale` VALUES ('1', '21', '金立 A30', '1,2', 'a:1:{i:0;a:2:{s:4:\"attr\";a:1:{i:120;s:1:\"0\";}s:7:\"qp_list\";a:2:{i:0;a:2:{s:8:\"quantity\";i:50;s:5:\"price\";d:1700;}i:1;a:2:{s:8:\"quantity\";i:100;s:5:\"price\";d:1680;}}}}', '1');

-- ----------------------------
-- Table structure for `wxch_cfg`
-- ----------------------------
DROP TABLE IF EXISTS `wxch_cfg`;
CREATE TABLE `wxch_cfg` (
  `cfg_id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `cfg_name` varchar(64) NOT NULL DEFAULT '',
  `cfg_value` varchar(100) NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`cfg_id`),
  UNIQUE KEY `cfg_name` (`cfg_name`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wxch_cfg
-- ----------------------------
INSERT INTO `wxch_cfg` VALUES ('1', 'murl', 'mobile/', 'yes');
INSERT INTO `wxch_cfg` VALUES ('2', 'baseurl', 'http://ecshop273utf8.com/shop/', 'yes');
INSERT INTO `wxch_cfg` VALUES ('3', 'imgpath', 'local', 'yes');
INSERT INTO `wxch_cfg` VALUES ('4', 'plustj', 'true', 'yes');
INSERT INTO `wxch_cfg` VALUES ('5', 'userpwd', 'ecmoban', 'yes');
INSERT INTO `wxch_cfg` VALUES ('6', 'cxbd', 'true', 'yes');
INSERT INTO `wxch_cfg` VALUES ('8', 'oauth', 'false', 'yes');
INSERT INTO `wxch_cfg` VALUES ('7', 'bd', 'web', 'yes');
INSERT INTO `wxch_cfg` VALUES ('9', 'goods', 'false', 'yes');
INSERT INTO `wxch_cfg` VALUES ('10', 'article', 'article.php?id=', 'yes');

-- ----------------------------
-- Table structure for `wxch_config`
-- ----------------------------
DROP TABLE IF EXISTS `wxch_config`;
CREATE TABLE `wxch_config` (
  `id` int(1) NOT NULL,
  `token` varchar(100) NOT NULL,
  `appid` char(18) NOT NULL,
  `appsecret` char(32) NOT NULL,
  `access_token` text NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wxch_config
-- ----------------------------
INSERT INTO `wxch_config` VALUES ('1', 'weixin', '', '', '', '0');

-- ----------------------------
-- Table structure for `wxch_coupon`
-- ----------------------------
DROP TABLE IF EXISTS `wxch_coupon`;
CREATE TABLE `wxch_coupon` (
  `id` tinyint(1) NOT NULL AUTO_INCREMENT,
  `type_id` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wxch_coupon
-- ----------------------------
INSERT INTO `wxch_coupon` VALUES ('1', '4');

-- ----------------------------
-- Table structure for `wxch_keywords`
-- ----------------------------
DROP TABLE IF EXISTS `wxch_keywords`;
CREATE TABLE `wxch_keywords` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `contents` text NOT NULL,
  `count` int(10) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wxch_keywords
-- ----------------------------

-- ----------------------------
-- Table structure for `wxch_keywords1`
-- ----------------------------
DROP TABLE IF EXISTS `wxch_keywords1`;
CREATE TABLE `wxch_keywords1` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `contents` text NOT NULL,
  `count` int(10) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `is_start` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wxch_keywords1
-- ----------------------------
INSERT INTO `wxch_keywords1` VALUES ('14', '关注回复图文', '关注回复图文', '4', '', '2', '1', '0');
INSERT INTO `wxch_keywords1` VALUES ('26', '关注回复图文', '关注回复图文', '4', '', '0', '1', '0');
INSERT INTO `wxch_keywords1` VALUES ('27', '关注回复文本', '关注回复文本', '3', '欢迎光临 &nbsp;甜心100.做最专业的技术支持和最完善的售后模式！', '31', '1', '1');

-- ----------------------------
-- Table structure for `wxch_keywords_article`
-- ----------------------------
DROP TABLE IF EXISTS `wxch_keywords_article`;
CREATE TABLE `wxch_keywords_article` (
  `kws_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `article_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`kws_id`,`article_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wxch_keywords_article
-- ----------------------------
INSERT INTO `wxch_keywords_article` VALUES ('95', '25');
INSERT INTO `wxch_keywords_article` VALUES ('95', '26');
INSERT INTO `wxch_keywords_article` VALUES ('95', '27');
INSERT INTO `wxch_keywords_article` VALUES ('95', '28');
INSERT INTO `wxch_keywords_article` VALUES ('95', '29');
INSERT INTO `wxch_keywords_article` VALUES ('95', '30');
INSERT INTO `wxch_keywords_article` VALUES ('95', '31');
INSERT INTO `wxch_keywords_article` VALUES ('96', '23');
INSERT INTO `wxch_keywords_article` VALUES ('96', '24');
INSERT INTO `wxch_keywords_article` VALUES ('96', '25');

-- ----------------------------
-- Table structure for `wxch_lang`
-- ----------------------------
DROP TABLE IF EXISTS `wxch_lang`;
CREATE TABLE `wxch_lang` (
  `lang_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(64) NOT NULL,
  `lang_value` text NOT NULL,
  PRIMARY KEY (`lang_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wxch_lang
-- ----------------------------
INSERT INTO `wxch_lang` VALUES ('1', 'regmsg', '<p>欢迎关注微信公众号</p>');
INSERT INTO `wxch_lang` VALUES ('2', 'help', '功能说明：\r\n输入news显示新品\r\n输入hot显示热销\r\n输入best显示推荐\r\n输入bd进入绑定会员流程\r\n输入ddcx查询最后一个订单\r\n输入kdcx查询最后一个订单中的快递\r\n输入ddlb显示多个订单信息\r\n输入help显示帮助说明');
INSERT INTO `wxch_lang` VALUES ('3', 'coupon', '欢迎关注微信公众号,您已经领取过优惠卷');
INSERT INTO `wxch_lang` VALUES ('4', 'coupon1', '欢迎关注微信公众号,活动期间关注送');
INSERT INTO `wxch_lang` VALUES ('5', 'coupon2', '欢迎关注微信公众号,优惠卷已送完');
INSERT INTO `wxch_lang` VALUES ('6', 'coupon3', '相关功能');
INSERT INTO `wxch_lang` VALUES ('7', 'qdok', '签到成功+');
INSERT INTO `wxch_lang` VALUES ('8', 'qdno', '签到数次已用完');
INSERT INTO `wxch_lang` VALUES ('9', 'qdstop', '已经关闭了签到');
INSERT INTO `wxch_lang` VALUES ('10', 'bd', '快速绑定会员帐号，享受我们提供给你更全面的服务');
INSERT INTO `wxch_lang` VALUES ('11', 'prize_egg', '砸金蛋抽奖规则');
INSERT INTO `wxch_lang` VALUES ('12', 'prize_dzp', '大转盘抽奖活动说明');

-- ----------------------------
-- Table structure for `wxch_menu`
-- ----------------------------
DROP TABLE IF EXISTS `wxch_menu`;
CREATE TABLE `wxch_menu` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `menu_type` varchar(6) NOT NULL,
  `level` int(1) NOT NULL,
  `name` varchar(30) NOT NULL,
  `value` varchar(250) NOT NULL,
  `aid` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wxch_menu
-- ----------------------------
INSERT INTO `wxch_menu` VALUES ('1', 'click', '1', '商品查看', '', '0');
INSERT INTO `wxch_menu` VALUES ('2', 'click', '1', '会员功能', '', '0');
INSERT INTO `wxch_menu` VALUES ('3', 'click', '1', '更多..', '', '0');
INSERT INTO `wxch_menu` VALUES ('4', 'click', '2', '热销产品', 'hot', '1');
INSERT INTO `wxch_menu` VALUES ('5', 'click', '2', '精品推荐', 'best', '1');
INSERT INTO `wxch_menu` VALUES ('6', 'click', '2', '新款推荐', 'news', '1');
INSERT INTO `wxch_menu` VALUES ('7', 'click', '2', '', '', '1');
INSERT INTO `wxch_menu` VALUES ('8', 'click', '2', '', '', '1');
INSERT INTO `wxch_menu` VALUES ('9', 'click', '2', '会员绑定', 'bd', '2');
INSERT INTO `wxch_menu` VALUES ('10', 'click', '2', '重新绑定', 'cxbd', '2');
INSERT INTO `wxch_menu` VALUES ('11', 'click', '2', '订单查询', 'ddcx', '2');
INSERT INTO `wxch_menu` VALUES ('12', 'click', '2', '', '', '2');
INSERT INTO `wxch_menu` VALUES ('13', 'click', '2', '', '', '2');
INSERT INTO `wxch_menu` VALUES ('14', 'click', '2', '帮忙说明', 'help', '3');
INSERT INTO `wxch_menu` VALUES ('15', 'click', '2', '订单快递', 'kdcx', '3');
INSERT INTO `wxch_menu` VALUES ('16', 'click', '2', '菜单回复', 'cdhf', '3');
INSERT INTO `wxch_menu` VALUES ('17', 'view', '2', '首页', 'http://m.ecmoban.com', '3');
INSERT INTO `wxch_menu` VALUES ('18', 'click', '2', '', '', '3');

-- ----------------------------
-- Table structure for `wxch_message`
-- ----------------------------
DROP TABLE IF EXISTS `wxch_message`;
CREATE TABLE `wxch_message` (
  `id` int(9) unsigned NOT NULL AUTO_INCREMENT,
  `wxid` char(28) NOT NULL,
  `w_message` text NOT NULL,
  `message` text NOT NULL,
  `belong` int(9) unsigned NOT NULL,
  `dateline` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wxid` (`wxid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wxch_message
-- ----------------------------

-- ----------------------------
-- Table structure for `wxch_msg`
-- ----------------------------
DROP TABLE IF EXISTS `wxch_msg`;
CREATE TABLE `wxch_msg` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `function` varchar(30) NOT NULL,
  `command` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wxch_msg
-- ----------------------------
INSERT INTO `wxch_msg` VALUES ('1', '新品', 'news', 'xk 新款 News');
INSERT INTO `wxch_msg` VALUES ('2', '精品', 'best', 'Best 精品');
INSERT INTO `wxch_msg` VALUES ('3', '热销', 'hot', 'Hot 热销');
INSERT INTO `wxch_msg` VALUES ('4', '绑定会员', 'bd', 'BD Bd 绑定会员');
INSERT INTO `wxch_msg` VALUES ('5', '重新绑定', 'cxbd', '重新绑定 Cxbd');
INSERT INTO `wxch_msg` VALUES ('6', '订单列表', 'ddlb', '订单列表 Ddlb');
INSERT INTO `wxch_msg` VALUES ('7', '订单查询', 'ddcx', '订单查询 Ddcx');
INSERT INTO `wxch_msg` VALUES ('8', '订单快递', 'kdcx', '订单快递 Kdcx');
INSERT INTO `wxch_msg` VALUES ('9', '帮助说明', 'help', '帮助说明 Help 帮助');
INSERT INTO `wxch_msg` VALUES ('10', '砸金蛋', 'zjd', '砸金蛋 Zjd');
INSERT INTO `wxch_msg` VALUES ('11', '签到', 'qiandao', 'qiandao 签到');
INSERT INTO `wxch_msg` VALUES ('12', '大转盘', 'dzp', '大转盘 Dzp');

-- ----------------------------
-- Table structure for `wxch_oauth`
-- ----------------------------
DROP TABLE IF EXISTS `wxch_oauth`;
CREATE TABLE `wxch_oauth` (
  `oid` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `contents` text NOT NULL,
  `count` int(10) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wxch_oauth
-- ----------------------------
INSERT INTO `wxch_oauth` VALUES ('1', '手机版网站首页', 'http://m.ecmoban.com/', '1', '1');

-- ----------------------------
-- Table structure for `wxch_order`
-- ----------------------------
DROP TABLE IF EXISTS `wxch_order`;
CREATE TABLE `wxch_order` (
  `id` tinyint(1) NOT NULL,
  `order_name` varchar(30) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(150) NOT NULL,
  `content` text NOT NULL,
  `autoload` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wxch_order
-- ----------------------------
INSERT INTO `wxch_order` VALUES ('1', 'order', '发货提醒', 'images/201401/1388925596106500893.jpg', '<p>&nbsp;ffffff</p>', 'yes');
INSERT INTO `wxch_order` VALUES ('2', 'reorder', '订单确认提醒', 'images/201401/1389555522246530163.png', 'fff', 'yes');
INSERT INTO `wxch_order` VALUES ('3', 'pay', '成功支付', '', '已经成功支付', 'yes');

-- ----------------------------
-- Table structure for `wxch_pay`
-- ----------------------------
DROP TABLE IF EXISTS `wxch_pay`;
CREATE TABLE `wxch_pay` (
  `id` int(1) NOT NULL,
  `appid` char(18) NOT NULL,
  `paysignkey` char(128) NOT NULL,
  `partnerkey` char(32) NOT NULL,
  `appsecret` char(32) NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wxch_pay
-- ----------------------------
INSERT INTO `wxch_pay` VALUES ('1', '', '', '', '', '0');

-- ----------------------------
-- Table structure for `wxch_point`
-- ----------------------------
DROP TABLE IF EXISTS `wxch_point`;
CREATE TABLE `wxch_point` (
  `point_id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `point_name` varchar(64) NOT NULL DEFAULT '',
  `point_value` int(3) unsigned NOT NULL,
  `point_num` int(3) NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`point_id`),
  UNIQUE KEY `option_name` (`point_name`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wxch_point
-- ----------------------------
INSERT INTO `wxch_point` VALUES ('1', 'news', '5', '2', 'yes');
INSERT INTO `wxch_point` VALUES ('2', 'best', '15', '1', 'yes');
INSERT INTO `wxch_point` VALUES ('3', 'hot', '5', '1', 'yes');
INSERT INTO `wxch_point` VALUES ('4', 'bd', '30', '1', 'yes');
INSERT INTO `wxch_point` VALUES ('5', 'ddcx', '5', '1', 'yes');
INSERT INTO `wxch_point` VALUES ('6', 'kdcx', '5', '1', 'yes');
INSERT INTO `wxch_point` VALUES ('7', 'zjd', '5', '0', 'no');
INSERT INTO `wxch_point` VALUES ('8', 'qiandao', '10', '1', 'yes');
INSERT INTO `wxch_point` VALUES ('9', 'dzp', '10', '1', 'yes');

-- ----------------------------
-- Table structure for `wxch_point_record`
-- ----------------------------
DROP TABLE IF EXISTS `wxch_point_record`;
CREATE TABLE `wxch_point_record` (
  `pr_id` int(7) NOT NULL AUTO_INCREMENT,
  `wxid` char(28) NOT NULL,
  `point_name` varchar(64) NOT NULL,
  `num` int(5) NOT NULL,
  `lasttime` int(10) NOT NULL,
  `datelinie` int(10) NOT NULL,
  PRIMARY KEY (`pr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wxch_point_record
-- ----------------------------

-- ----------------------------
-- Table structure for `wxch_prize`
-- ----------------------------
DROP TABLE IF EXISTS `wxch_prize`;
CREATE TABLE `wxch_prize` (
  `pid` int(4) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `fun` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `num` int(2) unsigned NOT NULL,
  `count` int(8) NOT NULL,
  `loop` int(3) NOT NULL,
  `starttime` int(10) NOT NULL,
  `endtime` int(10) NOT NULL,
  `dateline` int(10) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wxch_prize
-- ----------------------------
INSERT INTO `wxch_prize` VALUES ('1', '正在测试的', 'egg', '0', '1', '6', '1', '1394899200', '1397491200', '1395648563');

-- ----------------------------
-- Table structure for `wxch_prize_append`
-- ----------------------------
DROP TABLE IF EXISTS `wxch_prize_append`;
CREATE TABLE `wxch_prize_append` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `prize_id` int(4) unsigned NOT NULL,
  `prize_name` varchar(64) NOT NULL,
  `prize_value` int(8) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wxch_prize_append
-- ----------------------------
INSERT INTO `wxch_prize_append` VALUES ('1', '1', '10万汽车1', '1');
INSERT INTO `wxch_prize_append` VALUES ('2', '1', 'Macbook2', '2');
INSERT INTO `wxch_prize_append` VALUES ('3', '1', 'Ipad3', '3');
INSERT INTO `wxch_prize_append` VALUES ('4', '1', '话费100元4', '4');
INSERT INTO `wxch_prize_append` VALUES ('5', '1', '优惠卷5', '5');
INSERT INTO `wxch_prize_append` VALUES ('6', '1', '未中奖6', '10');
INSERT INTO `wxch_prize_append` VALUES ('7', '7', '10万汽车', '1');
INSERT INTO `wxch_prize_append` VALUES ('8', '7', 'Macbook', '3');
INSERT INTO `wxch_prize_append` VALUES ('9', '7', 'Ipad', '5');
INSERT INTO `wxch_prize_append` VALUES ('10', '7', '未中奖', '1000');
INSERT INTO `wxch_prize_append` VALUES ('11', '7', '', '0');
INSERT INTO `wxch_prize_append` VALUES ('12', '7', '', '0');

-- ----------------------------
-- Table structure for `wxch_prize_cnum`
-- ----------------------------
DROP TABLE IF EXISTS `wxch_prize_cnum`;
CREATE TABLE `wxch_prize_cnum` (
  `pcid` int(5) NOT NULL AUTO_INCREMENT,
  `paid` int(5) NOT NULL,
  `pid` int(4) NOT NULL,
  `prize_name` varchar(64) NOT NULL,
  `prize_value` int(8) unsigned NOT NULL,
  `user_count` int(8) unsigned NOT NULL,
  PRIMARY KEY (`pcid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wxch_prize_cnum
-- ----------------------------
INSERT INTO `wxch_prize_cnum` VALUES ('1', '5', '1', '未中奖5', '5', '2');
INSERT INTO `wxch_prize_cnum` VALUES ('2', '10', '7', '未中奖', '1000', '7');

-- ----------------------------
-- Table structure for `wxch_prize_count`
-- ----------------------------
DROP TABLE IF EXISTS `wxch_prize_count`;
CREATE TABLE `wxch_prize_count` (
  `cid` int(7) NOT NULL AUTO_INCREMENT,
  `pid` int(5) NOT NULL,
  `wxid` char(28) NOT NULL,
  `num` int(5) NOT NULL,
  `count` int(5) unsigned NOT NULL,
  `lasttime` int(10) unsigned NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`cid`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wxch_prize_count
-- ----------------------------
INSERT INTO `wxch_prize_count` VALUES ('1', '1', 'oo1v-tir7oHXTL42WpwAlNsLTZlc', '0', '5', '1395980256', '1395475456');

-- ----------------------------
-- Table structure for `wxch_prize_register`
-- ----------------------------
DROP TABLE IF EXISTS `wxch_prize_register`;
CREATE TABLE `wxch_prize_register` (
  `rid` int(8) NOT NULL AUTO_INCREMENT,
  `pid` int(7) unsigned NOT NULL,
  `wxid` char(28) NOT NULL,
  `nickname` varchar(200) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `name` varchar(100) NOT NULL,
  `dateline` int(10) NOT NULL,
  PRIMARY KEY (`rid`),
  KEY `wxid` (`wxid`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wxch_prize_register
-- ----------------------------

-- ----------------------------
-- Table structure for `wxch_prize_users`
-- ----------------------------
DROP TABLE IF EXISTS `wxch_prize_users`;
CREATE TABLE `wxch_prize_users` (
  `id` int(7) unsigned NOT NULL AUTO_INCREMENT,
  `wxid` char(28) NOT NULL DEFAULT '',
  `fun` varchar(10) NOT NULL,
  `nickname` varchar(200) NOT NULL,
  `prize_id` int(5) DEFAULT NULL,
  `prize_name` varchar(64) DEFAULT NULL,
  `prize_sn` varchar(35) NOT NULL,
  `register` tinyint(1) unsigned NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `yn` varchar(3) NOT NULL,
  `dateline` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `prize_id` (`prize_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wxch_prize_users
-- ----------------------------

-- ----------------------------
-- Table structure for `wxch_qr`
-- ----------------------------
DROP TABLE IF EXISTS `wxch_qr`;
CREATE TABLE `wxch_qr` (
  `qid` int(7) NOT NULL AUTO_INCREMENT,
  `type` varchar(2) NOT NULL,
  `expire_seconds` int(4) NOT NULL,
  `action_name` varchar(30) NOT NULL,
  `scene_id` int(7) NOT NULL,
  `ticket` varchar(120) NOT NULL,
  `scene` varchar(200) NOT NULL,
  `qr_path` varchar(200) NOT NULL,
  `subscribe` int(8) unsigned NOT NULL,
  `scan` int(8) unsigned NOT NULL,
  `function` varchar(100) NOT NULL,
  `affiliate` int(8) NOT NULL,
  `endtime` int(10) NOT NULL,
  `dateline` int(10) NOT NULL,
  PRIMARY KEY (`qid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wxch_qr
-- ----------------------------

-- ----------------------------
-- Table structure for `wxch_user`
-- ----------------------------
DROP TABLE IF EXISTS `wxch_user`;
CREATE TABLE `wxch_user` (
  `uid` int(7) NOT NULL AUTO_INCREMENT,
  `subscribe` tinyint(1) unsigned NOT NULL,
  `wxid` char(28) NOT NULL,
  `nickname` varchar(200) NOT NULL,
  `sex` tinyint(1) unsigned NOT NULL,
  `city` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `province` varchar(100) NOT NULL,
  `language` varchar(50) NOT NULL,
  `headimgurl` varchar(200) NOT NULL,
  `subscribe_time` int(10) unsigned NOT NULL,
  `localimgurl` varchar(200) NOT NULL,
  `setp` smallint(2) unsigned NOT NULL,
  `uname` varchar(50) NOT NULL,
  `coupon` varchar(30) NOT NULL,
  `affiliate` int(8) unsigned NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wxch_user
-- ----------------------------

-- ----------------------------
-- Table structure for `wxch_ver`
-- ----------------------------
DROP TABLE IF EXISTS `wxch_ver`;
CREATE TABLE `wxch_ver` (
  `vid` tinyint(1) NOT NULL,
  `type` varchar(5) NOT NULL,
  `ver` varchar(8) NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`vid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wxch_ver
-- ----------------------------
INSERT INTO `wxch_ver` VALUES ('1', 'ent', '20140507', '1399362212');
