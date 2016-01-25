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
DROP TABLE IF EXISTS `ecs_account_log`;//用户账户日志表
CREATE TABLE `ecs_account_log` (
  `log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,//登陆id
  `user_id` mediumint(8) unsigned NOT NULL,//用户id
  `user_money` decimal(10,2) NOT NULL,//用户账户金额
  `frozen_money` decimal(10,2) NOT NULL,//用户冻结的金额
  `rank_points` mediumint(9) NOT NULL,//用户积分
  `pay_points` mediumint(9) NOT NULL,//
  `change_time` int(10) unsigned NOT NULL,//用户更改时间
  `change_desc` varchar(255) NOT NULL,//
  `change_type` tinyint(3) unsigned NOT NULL,//用户更改类型
  PRIMARY KEY (`log_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;



-- ----------------------------
-- Table structure for `ecs_ad`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_ad`;   //商城广告表
CREATE TABLE `ecs_ad` (
  `ad_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,//广告id
  `position_id` smallint(5) unsigned NOT NULL DEFAULT '0',//位置id
  `media_type` tinyint(3) unsigned NOT NULL DEFAULT '0',//广告媒体类型
  `ad_name` varchar(60) NOT NULL DEFAULT '',//广告名
  `ad_link` varchar(255) NOT NULL DEFAULT '',//广告链接
  `ad_code` text NOT NULL,//广告图片
  `start_time` int(11) NOT NULL DEFAULT '0',//开始时间
  `end_time` int(11) NOT NULL DEFAULT '0',//结束时间
  `link_man` varchar(60) NOT NULL DEFAULT '',//广告主相关信息
  `link_email` varchar(60) NOT NULL DEFAULT '',//广告邮箱
  `link_phone` varchar(60) NOT NULL DEFAULT '',//广告联系号码
  `click_count` mediumint(8) unsigned NOT NULL DEFAULT '0',//点击数
  `enabled` tinyint(3) unsigned NOT NULL DEFAULT '1',//是否显示
  PRIMARY KEY (`ad_id`),
  KEY `position_id` (`position_id`),
  KEY `enabled` (`enabled`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for `ecs_admin_action`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_admin_action`;//管理员权限分配表
CREATE TABLE `ecs_admin_action` (
  `action_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,//id
  `parent_id` tinyint(3) unsigned NOT NULL DEFAULT '0',//父id
  `action_code` varchar(20) NOT NULL DEFAULT '',//管理名称
  `relevance` varchar(20) NOT NULL DEFAULT '',//？？？
  PRIMARY KEY (`action_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=136 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for `ecs_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_admin_log`;//管理员日志表
CREATE TABLE `ecs_admin_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,//日志id
  `log_time` int(10) unsigned NOT NULL DEFAULT '0',//登陆时间
  `user_id` tinyint(3) unsigned NOT NULL DEFAULT '0',//管理员ID
  `log_info` varchar(255) NOT NULL DEFAULT '',//日志内容
  `ip_address` varchar(15) NOT NULL DEFAULT '',//IP地址
  PRIMARY KEY (`log_id`),
  KEY `log_time` (`log_time`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3728 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for `ecs_admin_message`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_admin_message`;//管理员留言表
CREATE TABLE `ecs_admin_message` (
  `message_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,//留言ID
  `sender_id` tinyint(3) unsigned NOT NULL DEFAULT '0',//发送者ID
  `receiver_id` tinyint(3) unsigned NOT NULL DEFAULT '0',//接收者ID
  `sent_time` int(11) unsigned NOT NULL DEFAULT '0',//发送时间
  `read_time` int(11) unsigned NOT NULL DEFAULT '0',//阅读时间
  `readed` tinyint(1) unsigned NOT NULL DEFAULT '0',//是否已读
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',//是否删除
  `title` varchar(150) NOT NULL DEFAULT '',//标题
  `message` text NOT NULL,//消息内容
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

DROP TABLE IF EXISTS `ecs_admin_user`;//管理员表，记录所有的管理员账户信息
CREATE TABLE `ecs_admin_user` (
  `user_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,//管理员ID 
  `user_name` varchar(60) NOT NULL DEFAULT '',//用户姓名
  `email` varchar(60) NOT NULL DEFAULT '',//电子邮箱
  `password` varchar(32) NOT NULL DEFAULT '',//密码 
  `ec_salt` varchar(10) DEFAULT NULL,//？？？？
  `add_time` int(11) NOT NULL DEFAULT '0',//加入时间
  `last_login` int(11) NOT NULL DEFAULT '0',//最后登录时间
  `last_ip` varchar(15) NOT NULL DEFAULT '',//最后登录IP地址
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



//广告统计表
DROP TABLE IF EXISTS `ecs_adsense`;
CREATE TABLE `ecs_adsense` (
  `from_ad` smallint(5) NOT NULL DEFAULT '0',//来源广告
  `referer` varchar(255) NOT NULL DEFAULT '',//来源位置
  `clicks` int(10) unsigned NOT NULL DEFAULT '0',//点击数
  KEY `from_ad` (`from_ad`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



-- ----------------------------
-- Table structure for `ecs_ad_custom`
-- ----------------------------
//广告合作商
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
DROP TABLE IF EXISTS `ecs_ad_position`;//广告投放位置
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
-- Table structure for `ecs_affiliate_log`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_affiliate_log`;//分支日志记录表（？？）
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
DROP TABLE IF EXISTS `ecs_agency`;//机构表（？？）
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
DROP TABLE IF EXISTS `ecs_area_region`;//配送区域关联表
CREATE TABLE `ecs_area_region` (
  `shipping_area_id` smallint(5) unsigned NOT NULL DEFAULT '0',//运送区域
  `region_id` smallint(5) unsigned NOT NULL DEFAULT '0',//区域ID
  PRIMARY KEY (`shipping_area_id`,`region_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for `ecs_article`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_article`;//文章表，适用于任何文本性内容
CREATE TABLE `ecs_article` (
  `article_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,//文章ID
  `cat_id` smallint(5) NOT NULL DEFAULT '0',//分类ID
  `title` varchar(150) NOT NULL DEFAULT '',//文章标题
  `content` longtext NOT NULL,//文章内容
  `author` varchar(30) NOT NULL DEFAULT '',//作者
  `author_email` varchar(60) NOT NULL DEFAULT '',//作者email
  `keywords` varchar(255) NOT NULL DEFAULT '',//关键词
  `article_type` tinyint(1) unsigned NOT NULL DEFAULT '2',//文章类型
  `is_open` tinyint(1) unsigned NOT NULL DEFAULT '1',//是否显示
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',//添加时间
  `file_url` varchar(255) NOT NULL DEFAULT '',//附件地址
  `open_type` tinyint(1) unsigned NOT NULL DEFAULT '0',//打开类型
  `link` varchar(255) NOT NULL DEFAULT '',//链接
  `description` varchar(255) DEFAULT NULL,//描述
  PRIMARY KEY (`article_id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;



-- ----------------------------
-- Table structure for `ecs_article_cat`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_article_cat`;//文章分类
CREATE TABLE `ecs_article_cat` (
  `cat_id` smallint(5) NOT NULL AUTO_INCREMENT,//分类ID
  `cat_name` varchar(255) NOT NULL DEFAULT '',//分类名称
  `cat_type` tinyint(1) unsigned NOT NULL DEFAULT '1',//类型
  `keywords` varchar(255) NOT NULL DEFAULT '',//关键词
  `cat_desc` varchar(255) NOT NULL DEFAULT '',//描述
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '50',//排序
  `show_in_nav` tinyint(1) unsigned NOT NULL DEFAULT '0',//是否显示在导航栏
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',//？？？
  PRIMARY KEY (`cat_id`),
  KEY `cat_type` (`cat_type`),
  KEY `sort_order` (`sort_order`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;



-- ----------------------------
-- Table structure for `ecs_attribute`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_attribute`;//商品属性表
CREATE TABLE `ecs_attribute` (
  `attr_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` smallint(5) unsigned NOT NULL DEFAULT '0',//分类ID
  `attr_name` varchar(60) NOT NULL DEFAULT '',//属性名称
  `attr_input_type` tinyint(1) unsigned NOT NULL DEFAULT '1',//选择样式
  `attr_type` tinyint(1) unsigned NOT NULL DEFAULT '1',//类型
  `attr_values` text NOT NULL,//属性值
  `attr_index` tinyint(1) unsigned NOT NULL DEFAULT '0',//检索类型
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '0',//排序
  `is_linked` tinyint(1) unsigned NOT NULL DEFAULT '0',//是否关联
  `attr_group` tinyint(1) unsigned NOT NULL DEFAULT '0',//属性组
  `is_show_img` tinyint(1) unsigned NOT NULL DEFAULT '0',//是否显示图片
  PRIMARY KEY (`attr_id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for `ecs_auction_log`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_auction_log`;//商品拍卖日志
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
-- Table structure for `ecs_auto_manage`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_auto_manage`;//自动消息表（？？？）
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
DROP TABLE IF EXISTS `ecs_back_goods`;//退回商品表
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
DROP TABLE IF EXISTS `ecs_back_order`;//退回订单表
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
-- Table structure for `ecs_bonus_type`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_bonus_type`;//红包表
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
-- Table structure for `ecs_booking_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_booking_goods`;//缺货登记表
CREATE TABLE `ecs_booking_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,//
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',//登记用户ID
  `email` varchar(60) NOT NULL DEFAULT '',//用户邮箱
  `link_man` varchar(60) NOT NULL DEFAULT '',//？？？
  `tel` varchar(60) NOT NULL DEFAULT '',//用户电话
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',//商品ID
  `goods_desc` varchar(255) NOT NULL DEFAULT '',//商品描述
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '0',//商品数量
  `booking_time` int(10) unsigned NOT NULL DEFAULT '0',//登记时间
  `is_dispose` tinyint(1) unsigned NOT NULL DEFAULT '0',//是否已处理
  `dispose_user` varchar(30) NOT NULL DEFAULT '',//处理该缺货的管理员
  `dispose_time` int(10) unsigned NOT NULL DEFAULT '0',//处理时间
  `dispose_note` varchar(255) NOT NULL DEFAULT '',//处理备注
  PRIMARY KEY (`rec_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `ecs_brand`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_brand`;//品牌表
CREATE TABLE `ecs_brand` (
  `brand_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,//品牌ID
  `brand_name` varchar(60) NOT NULL DEFAULT '',//品牌名称
  `brand_logo` varchar(80) NOT NULL DEFAULT '',//品牌LOGO
  `brand_desc` text NOT NULL,//品牌描述
  `site_url` varchar(255) NOT NULL DEFAULT '',//品牌官网链接
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '50',//排序
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1',//是否显示
  `brand_banner` varchar(80) DEFAULT '',//品牌横幅
  PRIMARY KEY (`brand_id`),
  KEY `is_show` (`is_show`)
) ENGINE=MyISAM AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for `ecs_card`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_card`;//祝福贺卡表
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
-- Table structure for `ecs_cart`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_cart`;//购物车表
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
DROP TABLE IF EXISTS `ecs_cart_combo`;//购物车套餐表
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
DROP TABLE IF EXISTS `ecs_category`;//商品分类表
CREATE TABLE `ecs_category` (
  `cat_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,//分类ID
  `cat_name` varchar(90) NOT NULL DEFAULT '',//分类名称
  `keywords` varchar(255) NOT NULL DEFAULT '',//关键词
  `cat_desc` varchar(255) NOT NULL DEFAULT '',//分类描述
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',//父类ID
  `sort_order` tinyint(1) unsigned NOT NULL DEFAULT '50',//排序
  `template_file` varchar(50) NOT NULL DEFAULT '',//模板文件
  `measure_unit` varchar(15) NOT NULL DEFAULT '',//数量单位
  `show_in_nav` tinyint(1) NOT NULL DEFAULT '0',//是否在导航栏显示
  `style` varchar(150) NOT NULL,//风格
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1',//是否显示
  `grade` tinyint(4) NOT NULL DEFAULT '0',//评分
  `filter_attr` varchar(255) NOT NULL DEFAULT '0',//
  `is_top_style` tinyint(1) unsigned NOT NULL DEFAULT '0',//是否是父风格
  `is_on_top` tinyint(1) unsigned NOT NULL DEFAULT '0',//是否有子类
  `thumb` varchar(255) NOT NULL DEFAULT '',//缩略图
  `cat_ico` varchar(255) NOT NULL,//分类图标
  PRIMARY KEY (`cat_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=133 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for `ecs_cat_recommend`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_cat_recommend`;//分类和评论关联数据表
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
DROP TABLE IF EXISTS `ecs_collect_goods`;//收藏商品表
CREATE TABLE `ecs_collect_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,//
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',//用户ID
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',//商品ID
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',//添加时间
  `is_attention` tinyint(1) NOT NULL DEFAULT '0',//是否关注
  PRIMARY KEY (`rec_id`),
  KEY `user_id` (`user_id`),
  KEY `goods_id` (`goods_id`),
  KEY `is_attention` (`is_attention`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;



-- ----------------------------
-- Table structure for `ecs_comment`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_comment`;//商品评论表
CREATE TABLE `ecs_comment` (
  `comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `comment_type` tinyint(3) unsigned NOT NULL DEFAULT '0',//评论类型
  `id_value` mediumint(8) unsigned NOT NULL DEFAULT '0',//类型ID
  `email` varchar(60) NOT NULL DEFAULT '',//邮箱
  `user_name` varchar(60) NOT NULL DEFAULT '',//用户名
  `content` text NOT NULL,//评论内容
  `comment_rank` tinyint(1) unsigned NOT NULL DEFAULT '0',//评论等级
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',//添加时间
  `ip_address` varchar(15) NOT NULL DEFAULT '',//Ip 地址
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',//状态
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',//父类ID
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',//用户ID
  PRIMARY KEY (`comment_id`),
  KEY `parent_id` (`parent_id`),
  KEY `id_value` (`id_value`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for `ecs_crons`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_crons`;//？？？？？ 
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
DROP TABLE IF EXISTS `ecs_delivery_goods`;//派送商品表
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
-- Table structure for `ecs_delivery_order`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_delivery_order`;//派送订单表
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
-- Table structure for `ecs_drp_bank`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_drp_bank`;//分销商银行卡表
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
DROP TABLE IF EXISTS `ecs_drp_config`;//分销商配置
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
-- Table structure for `ecs_drp_log`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_drp_log`;//分销商日志表
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
DROP TABLE IF EXISTS `ecs_drp_profit`;//分销商利润等级表
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
DROP TABLE IF EXISTS `ecs_drp_shop`;//分销商店铺表
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
DROP TABLE IF EXISTS `ecs_email_list`;//邮箱表
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
DROP TABLE IF EXISTS `ecs_email_sendlist`;//邮件发送表
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
DROP TABLE IF EXISTS `ecs_error_log`;//错误日志表
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
DROP TABLE IF EXISTS `ecs_exchange_goods`;//交易商品表
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


-- ----------------------------
-- Table structure for `ecs_favourable_activity`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_favourable_activity`;//优惠活动表
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
DROP TABLE IF EXISTS `ecs_feedback`;//反馈表
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
-- Table structure for `ecs_friend_link`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_friend_link`;//友情链接表
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
DROP TABLE IF EXISTS `ecs_goods`;//商品表
CREATE TABLE `ecs_goods` (
  `goods_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,//商品ID
  `cat_id` smallint(5) unsigned NOT NULL DEFAULT '0',//分类ID
  `goods_sn` varchar(60) NOT NULL DEFAULT '',//？？？？
  `goods_name` varchar(120) NOT NULL DEFAULT '',//商品名称
  `goods_name_style` varchar(60) NOT NULL DEFAULT '+',//商品名风格？？？
  `click_count` int(10) unsigned NOT NULL DEFAULT '0',//点击量
  `sales_count` int(10) unsigned NOT NULL DEFAULT '0',//销售量
  `brand_id` smallint(5) unsigned NOT NULL DEFAULT '0',//品牌ID 
  `provider_name` varchar(100) NOT NULL DEFAULT '',//供货商名称
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '0',//库存
  `goods_weight` decimal(10,3) unsigned NOT NULL DEFAULT '0.000',//商品重量
  `market_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',//商品市场价格
  `shop_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',//商品本店价格
  `promote_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',//促销价
  `promote_start_date` int(11) unsigned NOT NULL DEFAULT '0',//促销起始日期
  `promote_end_date` int(11) unsigned NOT NULL DEFAULT '0',//促销结束日期
  `warn_number` tinyint(3) unsigned NOT NULL DEFAULT '1',//警告数量
  `keywords` varchar(255) NOT NULL DEFAULT '',//关键词
  `goods_brief` varchar(255) NOT NULL DEFAULT '',//商品简介
  `goods_desc` text NOT NULL,//商品描述
  `goods_thumb` varchar(255) NOT NULL DEFAULT '',缩略图
  `goods_img` varchar(255) NOT NULL DEFAULT '',//商品图片
  `original_img` varchar(255) NOT NULL DEFAULT '',//原始图片
  `is_real` tinyint(3) unsigned NOT NULL DEFAULT '1',//是否为真实商品
  `extension_code` varchar(30) NOT NULL DEFAULT '',//扩展代码
  `is_on_sale` tinyint(1) unsigned NOT NULL DEFAULT '1',//是否上架销售
  `is_alone_sale` tinyint(1) unsigned NOT NULL DEFAULT '1',//是否单独销售
  `is_shipping` tinyint(1) unsigned NOT NULL DEFAULT '0',//是否包邮
  `integral` int(10) unsigned NOT NULL DEFAULT '0',//商品积分
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',//添加时间
  `sort_order` smallint(4) unsigned NOT NULL DEFAULT '100',//排序
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',//是否删除
  `is_best` tinyint(1) unsigned NOT NULL DEFAULT '0',//是否精品
  `is_new` tinyint(1) unsigned NOT NULL DEFAULT '0',//是否新上架
  `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0',//是否热销
  `is_promote` tinyint(1) unsigned NOT NULL DEFAULT '0',//是否促销
  `bonus_type_id` tinyint(3) unsigned NOT NULL DEFAULT '0',//红包类型
  `last_update` int(10) unsigned NOT NULL DEFAULT '0',//最后更新日期
  `goods_type` smallint(5) unsigned NOT NULL DEFAULT '0',//商品类型
  `seller_note` varchar(255) NOT NULL DEFAULT '',//商品备注
  `give_integral` int(11) NOT NULL DEFAULT '-1',//是否送积分
  `rank_integral` int(11) NOT NULL DEFAULT '-1',//评论积分
  `suppliers_id` smallint(5) unsigned DEFAULT NULL,//供应商ID
  `is_check` tinyint(1) unsigned DEFAULT NULL,//是否审核过
  `sales_volume` int(10) unsigned NOT NULL DEFAULT '0',//销售量
  `comments_number` int(10) unsigned NOT NULL DEFAULT '0',//评论数量
  `packing_list` text NOT NULL,//包裹列表
  `customer_service` text NOT NULL,//顾客服务
  `touch_sale` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',//
  `touch_fencheng` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',//
  `bb_chicun` char(28) NOT NULL,
  `mobile_desc` char(28) NOT NULL,//移动端描述
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
-- Table structure for `ecs_goods_activity`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_goods_activity`;//商品活动
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
-- ----------------------------
-- Table structure for `ecs_goods_article`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_goods_article`;//商品文章，商品和文章表的关联
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
DROP TABLE IF EXISTS `ecs_goods_attr`;//商品表与商品属性表的关联
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
-- Table structure for `ecs_goods_cat`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_goods_cat`;//商品表和分类表的关联
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
DROP TABLE IF EXISTS `ecs_goods_gallery`;//商品图片展示画廊
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
-- Table structure for `ecs_goods_type`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_goods_type`;//商品表和类型表关联
CREATE TABLE `ecs_goods_type` (
  `cat_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(60) NOT NULL DEFAULT '',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `attr_group` varchar(255) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for `ecs_group_goods`//商品分组表
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
-- Table structure for `ecs_keywords`//关键字表
-- ----------------------------
DROP TABLE IF EXISTS `ecs_keywords`;
CREATE TABLE `ecs_keywords` (
  `date` date NOT NULL DEFAULT '0000-00-00',//日期
  `searchengine` varchar(20) NOT NULL DEFAULT '',//搜索引擎
  `keyword` varchar(90) NOT NULL DEFAULT '',//关键字 
  `count` mediumint(8) unsigned NOT NULL DEFAULT '0',//计数
  PRIMARY KEY (`date`,`searchengine`,`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



-- ----------------------------
-- Table structure for `ecs_link_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_link_goods`;//链接表和商品表的关联
CREATE TABLE `ecs_link_goods` (
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',//商品ID
  `link_goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',//
  `is_double` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `admin_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`goods_id`,`link_goods_id`,`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for `ecs_mail_templates`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_mail_templates`;//邮件模板表
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
-- Table structure for `ecs_member_price`//会员价格表
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
DROP TABLE IF EXISTS `ecs_nav`;//导航栏表
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
-- ----------------------------
-- Table structure for `ecs_order_action`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_order_action`;//用户下单表
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
-- Table structure for `ecs_order_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_order_goods`;//用户订单表
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
-- Table structure for `ecs_order_info`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_order_info`;//订单信息表
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
-- Table structure for `ecs_pack`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_pack`;//包裹表
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
DROP TABLE IF EXISTS `ecs_package_goods`;//包裹表和商品表关联
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
DROP TABLE IF EXISTS `ecs_payment`;//付款表
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
-- Table structure for `ecs_pay_log`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_pay_log`;//支付日志表
CREATE TABLE `ecs_pay_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `order_amount` decimal(10,2) unsigned NOT NULL,
  `order_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_paid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for `ecs_plugins`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_plugins`;//插件表
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
DROP TABLE IF EXISTS `ecs_products`;//产品表
CREATE TABLE `ecs_products` (
  `product_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_attr` varchar(50) DEFAULT NULL,
  `product_sn` varchar(60) DEFAULT NULL,
  `product_number` smallint(5) unsigned DEFAULT '0',
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for `ecs_region`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_region`;//地区表
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
-- Table structure for `ecs_reg_extend_info`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_reg_extend_info`;//注册扩展信息
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
DROP TABLE IF EXISTS `ecs_reg_fields`;注册保护表（？？？？）
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
DROP TABLE IF EXISTS `ecs_role`;//角色表
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
DROP TABLE IF EXISTS `ecs_searchengine`;//搜索引擎表
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
DROP TABLE IF EXISTS `ecs_sessions`;//用户会话表
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
-- Table structure for `ecs_sessions_data`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_sessions_data`;//会话数据表
CREATE TABLE `ecs_sessions_data` (
  `sesskey` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `expiry` int(10) unsigned NOT NULL DEFAULT '0',
  `data` longtext NOT NULL,
  PRIMARY KEY (`sesskey`),
  KEY `expiry` (`expiry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `ecs_shipping`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_shipping`;//配送表
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
-- Table structure for `ecs_shipping_area`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_shipping_area`;//配送区域表
CREATE TABLE `ecs_shipping_area` (
  `shipping_area_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `shipping_area_name` varchar(150) NOT NULL DEFAULT '',
  `shipping_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `configure` text NOT NULL,
  PRIMARY KEY (`shipping_area_id`),
  KEY `shipping_id` (`shipping_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for `ecs_shop_config`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_shop_config`;//商城配置信息表
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
-- Table structure for `ecs_snatch_log`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_snatch_log`;//秒杀日志表
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
DROP TABLE IF EXISTS `ecs_stats`;//客户端状态信息表
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
-- Table structure for `ecs_suppliers`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_suppliers`;//供货商表
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
DROP TABLE IF EXISTS `ecs_tag`;//标签表（？？？）
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
DROP TABLE IF EXISTS `ecs_template`;//模板表（？？？）
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
-- Table structure for `ecs_topic`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_topic`;//话题表
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
-- Table structure for `ecs_touch_activity`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_touch_activity`;//移动端活动表
CREATE TABLE `ecs_touch_activity` (
  `act_id` int(10) NOT NULL,
  `act_banner` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_touch_activity

-- ----------------------------
-- Table structure for `ecs_touch_ad`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_touch_ad`;//移动端广告表
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
-- Table structure for `ecs_touch_adsense`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_touch_adsense`;//
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
