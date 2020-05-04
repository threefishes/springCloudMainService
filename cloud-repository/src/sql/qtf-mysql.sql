/*
MySQL Backup
Source Server Version: 8.2.0
Source Database:qtf
Date: 2020/05/04 07:56:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
--  Table structure for `activity`
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity` (
  `activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_json` longtext NOT NULL,
  `activity_state` int(11) DEFAULT NULL,
  `activity_type` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `activity_accept_prize`
-- ----------------------------
DROP TABLE IF EXISTS `activity_accept_prize`;
CREATE TABLE `activity_accept_prize` (
  `accept_prize_id` int(11) NOT NULL AUTO_INCREMENT,
  `accept_prize_address` varchar(255) DEFAULT NULL,
  `accept_prize_name` varchar(255) DEFAULT NULL,
  `accept_prize_phone` varchar(255) DEFAULT NULL,
  `accept_state` int(11) DEFAULT NULL,
  `activity_id` int(11) DEFAULT NULL,
  `activity_type` int(11) DEFAULT NULL,
  `add_time` datetime DEFAULT NULL,
  `awards_content` varchar(255) DEFAULT NULL,
  `awards_id` int(11) DEFAULT NULL,
  `awards_name` varchar(255) DEFAULT NULL,
  `awards_type` varchar(255) DEFAULT NULL,
  `give_out_state` int(11) DEFAULT NULL,
  `give_out_time` datetime DEFAULT NULL,
  `member_avatar` varchar(255) DEFAULT NULL,
  `member_avatar_url` varchar(255) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  `prize_json` longtext,
  `ship_name` varchar(255) DEFAULT NULL,
  `ship_sn` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `take_points` int(11) DEFAULT NULL,
  PRIMARY KEY (`accept_prize_id`)
) ENGINE=InnoDB AUTO_INCREMENT=549 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `activity_awards`
-- ----------------------------
DROP TABLE IF EXISTS `activity_awards`;
CREATE TABLE `activity_awards` (
  `awards_id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL,
  `awards_content` varchar(255) NOT NULL,
  `awards_count` int(11) DEFAULT NULL,
  `awards_give_count` int(11) DEFAULT NULL,
  `awards_info_id` int(11) NOT NULL,
  `awards_name` varchar(255) NOT NULL,
  `awards_rate` float NOT NULL,
  `awards_state` int(11) DEFAULT NULL,
  `awards_type` varchar(255) NOT NULL,
  PRIMARY KEY (`awards_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `activity_gift`
-- ----------------------------
DROP TABLE IF EXISTS `activity_gift`;
CREATE TABLE `activity_gift` (
  `gift_id` int(11) NOT NULL AUTO_INCREMENT,
  `gift_goods_name` varchar(50) NOT NULL,
  `gift_image_name` varchar(255) NOT NULL,
  `gift_price` decimal(19,2) NOT NULL,
  `gift_state` int(11) DEFAULT NULL,
  PRIMARY KEY (`gift_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `address`
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `area_id` int(11) DEFAULT NULL,
  `area_id_1` int(11) DEFAULT NULL,
  `area_id_2` int(11) DEFAULT NULL,
  `area_id_3` int(11) DEFAULT NULL,
  `area_id_4` int(11) DEFAULT NULL,
  `area_info` varchar(255) DEFAULT NULL,
  `is_default` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `mobphone` varchar(255) DEFAULT NULL,
  `real_name` varchar(20) DEFAULT NULL,
  `telphone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=662 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) DEFAULT NULL,
  `groupId` int(11) DEFAULT NULL,
  `groupName` varchar(255) DEFAULT NULL,
  `isSuper` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`admin_id`),
  UNIQUE KEY `UK_5cca88c6i17ttuegcvdkgehah` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `admin_group`
-- ----------------------------
DROP TABLE IF EXISTS `admin_group`;
CREATE TABLE `admin_group` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `admin_group_permission`
-- ----------------------------
DROP TABLE IF EXISTS `admin_group_permission`;
CREATE TABLE `admin_group_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7821 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `admin_log`;
CREATE TABLE `admin_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) DEFAULT NULL,
  `admin_name` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19966 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `admin_menu`
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu` (
  `id` int(11) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `permission` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `advertorial_art_comment_reply`
-- ----------------------------
DROP TABLE IF EXISTS `advertorial_art_comment_reply`;
CREATE TABLE `advertorial_art_comment_reply` (
  `reply_id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime DEFAULT NULL,
  `article_id` int(11) DEFAULT NULL,
  `article_title` varchar(255) DEFAULT NULL,
  `comment_id` int(11) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  `reply_member_id` int(11) DEFAULT NULL,
  `reply_member_name` varchar(255) DEFAULT NULL,
  `reply_super_content` varchar(255) DEFAULT NULL,
  `reply_super_id` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT '',
  PRIMARY KEY (`reply_id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `advertorial_article`
-- ----------------------------
DROP TABLE IF EXISTS `advertorial_article`;
CREATE TABLE `advertorial_article` (
  `article_id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime DEFAULT NULL,
  `author_avatar` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `author_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `banner_image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `banner_image_width` int(11) DEFAULT NULL COMMENT '封面图宽度',
  `banner_image_height` int(11) DEFAULT NULL COMMENT '封面图高度',
  `category_id` int(11) DEFAULT NULL,
  `comment_num` int(11) DEFAULT NULL,
  `common_id_list` longtext CHARACTER SET utf8,
  `content` longtext,
  `enter_detail_page_view` int(11) DEFAULT NULL,
  `follow_num` int(11) DEFAULT NULL,
  `good_count` int(11) DEFAULT NULL,
  `handle_time` datetime DEFAULT NULL,
  `link_num` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `page_view` int(11) DEFAULT NULL,
  `recommend` int(11) DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `share_num` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `sub_title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `summary` longtext CHARACTER SET utf8,
  `title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL COMMENT '视频地址',
  `video_image` varchar(255) DEFAULT NULL COMMENT '视频图片地址',
  `vod_files_id` varchar(32) DEFAULT '' COMMENT '视频id',
  `flag_type` int(4) DEFAULT NULL COMMENT '话题标签分类1-显2-隐',
  `flag_id` int(11) DEFAULT NULL COMMENT '话题标签ID',
  `flag_name` varchar(256) DEFAULT NULL COMMENT '话题标签',
  `download_num` int(11) DEFAULT '0',
  PRIMARY KEY (`article_id`)
) ENGINE=InnoDB AUTO_INCREMENT=460 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `advertorial_article_comment`
-- ----------------------------
DROP TABLE IF EXISTS `advertorial_article_comment`;
CREATE TABLE `advertorial_article_comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime DEFAULT NULL,
  `article_id` int(11) DEFAULT NULL,
  `article_title` varchar(255) DEFAULT NULL,
  `author_member_id` int(11) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `reply_num` int(11) DEFAULT '0',
  `avatar` varchar(100) DEFAULT '',
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=404 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `advertorial_article_comment_like`
-- ----------------------------
DROP TABLE IF EXISTS `advertorial_article_comment_like`;
CREATE TABLE `advertorial_article_comment_like` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL COMMENT '文章id',
  `comment_id` int(11) NOT NULL COMMENT '评论id',
  `like_member_id` int(11) NOT NULL COMMENT '点赞评论成员id',
  `delete_flag` int(1) NOT NULL COMMENT '逻辑删除标记 0：未点赞 1：已点赞',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `advertorial_article_comment_reply_like`
-- ----------------------------
DROP TABLE IF EXISTS `advertorial_article_comment_reply_like`;
CREATE TABLE `advertorial_article_comment_reply_like` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL COMMENT '文章id',
  `comment_id` int(11) NOT NULL COMMENT '评论id',
  `reply_id` int(11) NOT NULL COMMENT '回复id',
  `like_member_id` int(11) NOT NULL COMMENT '点赞回复成员id',
  `delete_flag` int(1) NOT NULL COMMENT '逻辑删除标记 0：未点赞 1：已点赞',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `advertorial_article_like`
-- ----------------------------
DROP TABLE IF EXISTS `advertorial_article_like`;
CREATE TABLE `advertorial_article_like` (
  `like_id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`like_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1098 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `advertorial_author`
-- ----------------------------
DROP TABLE IF EXISTS `advertorial_author`;
CREATE TABLE `advertorial_author` (
  `member_id` int(11) NOT NULL,
  `article_count` int(11) DEFAULT NULL,
  `author_abstract` varchar(255) DEFAULT NULL,
  `author_avatar` varchar(255) DEFAULT NULL,
  `author_name` varchar(255) DEFAULT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `sub_count` int(11) DEFAULT NULL,
  `is_recommend` int(11) NOT NULL DEFAULT '0' COMMENT '是否推荐 1是 0否',
  `big_v` int(11) NOT NULL DEFAULT '0' COMMENT '是否认证大V 1是 0否',
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `advertorial_author_recommend`
-- ----------------------------
DROP TABLE IF EXISTS `advertorial_author_recommend`;
CREATE TABLE `advertorial_author_recommend` (
  `recommend_id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) DEFAULT NULL COMMENT '会员id',
  `share_num` int(11) DEFAULT NULL COMMENT '心得分享数',
  `comment_num` int(11) DEFAULT NULL COMMENT '心得评论数量',
  `like_num` int(11) DEFAULT NULL COMMENT '心得点赞数',
  `follow_num` int(11) DEFAULT NULL COMMENT '心得收藏次数',
  `page_view` int(11) DEFAULT NULL COMMENT '心得浏览量',
  `enter_detail_page_view` int(11) DEFAULT NULL COMMENT '心得进商详数',
  `material_num` int(11) DEFAULT NULL COMMENT '发布素材数',
  `material_hot_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`recommend_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='种草心得作者推荐';

-- ----------------------------
--  Table structure for `advertorial_categroy`
-- ----------------------------
DROP TABLE IF EXISTS `advertorial_categroy`;
CREATE TABLE `advertorial_categroy` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) NOT NULL,
  `category_sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `advertorial_follow`
-- ----------------------------
DROP TABLE IF EXISTS `advertorial_follow`;
CREATE TABLE `advertorial_follow` (
  `follow_id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`follow_id`)
) ENGINE=InnoDB AUTO_INCREMENT=355 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `advertorial_join`
-- ----------------------------
DROP TABLE IF EXISTS `advertorial_join`;
CREATE TABLE `advertorial_join` (
  `member_id` int(11) NOT NULL,
  `add_time` datetime DEFAULT NULL,
  `author_name` varchar(255) DEFAULT NULL,
  `handle_time` datetime DEFAULT NULL,
  `Id_cart_back_image` varchar(255) DEFAULT NULL,
  `Id_cart_front_image` varchar(255) DEFAULT NULL,
  `Id_cart_hand_image` varchar(255) DEFAULT NULL,
  `id_cart_number` varchar(255) DEFAULT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `real_name` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `advertorial_subscribe`
-- ----------------------------
DROP TABLE IF EXISTS `advertorial_subscribe`;
CREATE TABLE `advertorial_subscribe` (
  `subscribe_id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `author_name` varchar(255) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`subscribe_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1209 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `album`
-- ----------------------------
DROP TABLE IF EXISTS `album`;
CREATE TABLE `album` (
  `album_id` int(11) NOT NULL AUTO_INCREMENT,
  `album_name` varchar(255) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`album_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `album_files`
-- ----------------------------
DROP TABLE IF EXISTS `album_files`;
CREATE TABLE `album_files` (
  `files_id` int(11) NOT NULL AUTO_INCREMENT,
  `album_id` int(11) DEFAULT NULL,
  `files_height` int(11) DEFAULT NULL,
  `files_name` varchar(255) DEFAULT NULL,
  `files_size` bigint(20) DEFAULT NULL,
  `album_type` int(11) DEFAULT NULL,
  `files_width` int(11) DEFAULT NULL,
  `original_name` varchar(255) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `upload_time` datetime DEFAULT NULL,
  PRIMARY KEY (`files_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1570 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `api_captcha_code`
-- ----------------------------
DROP TABLE IF EXISTS `api_captcha_code`;
CREATE TABLE `api_captcha_code` (
  `code_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_type` varchar(255) DEFAULT NULL,
  `code_key` varchar(255) DEFAULT NULL,
  `code_val` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`code_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16155 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `api_custom_special`
-- ----------------------------
DROP TABLE IF EXISTS `api_custom_special`;
CREATE TABLE `api_custom_special` (
  `special_id` int(11) NOT NULL AUTO_INCREMENT,
  `special_desc` varchar(255) DEFAULT NULL,
  `special_data` text,
  `share_title` varchar(200) DEFAULT NULL COMMENT '分享标题',
  `share_desc` varchar(500) DEFAULT NULL COMMENT '分享描述',
  `share_imgurl` varchar(255) DEFAULT NULL COMMENT '分享图标',
  PRIMARY KEY (`special_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `api_member_token`
-- ----------------------------
DROP TABLE IF EXISTS `api_member_token`;
CREATE TABLE `api_member_token` (
  `token_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_type` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`token_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3955 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `api_menu`
-- ----------------------------
DROP TABLE IF EXISTS `api_menu`;
CREATE TABLE `api_menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_ad` varchar(2000) DEFAULT NULL,
  `menu_name` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `api_menu_item`
-- ----------------------------
DROP TABLE IF EXISTS `api_menu_item`;
CREATE TABLE `api_menu_item` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_data` varchar(2000) DEFAULT NULL,
  `item_more` varchar(2000) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `item_type` int(11) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `subitem_data` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `api_seller_token`
-- ----------------------------
DROP TABLE IF EXISTS `api_seller_token`;
CREATE TABLE `api_seller_token` (
  `token_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_type` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `seller_name` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`token_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3161 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `api_special`
-- ----------------------------
DROP TABLE IF EXISTS `api_special`;
CREATE TABLE `api_special` (
  `special_id` int(11) NOT NULL AUTO_INCREMENT,
  `special_desc` varchar(20) DEFAULT NULL,
  `share_title` varchar(200) DEFAULT NULL COMMENT '分享标题',
  `share_desc` varchar(500) DEFAULT NULL COMMENT '分享描述',
  `share_imgurl` varchar(255) DEFAULT NULL COMMENT '分享图标',
  PRIMARY KEY (`special_id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `api_special_item`
-- ----------------------------
DROP TABLE IF EXISTS `api_special_item`;
CREATE TABLE `api_special_item` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `android` int(11) DEFAULT NULL,
  `ios` int(11) DEFAULT NULL,
  `item_data` longtext,
  `item_sort` int(11) DEFAULT NULL,
  `item_type` varchar(255) DEFAULT NULL,
  `special_id` int(11) DEFAULT NULL,
  `wap` int(11) DEFAULT NULL,
  `wechat` int(11) DEFAULT NULL,
  `right_or_circle` int(4) DEFAULT '1' COMMENT '1-直角2-圆角',
  `bg_color` varchar(255) DEFAULT '#FFFFFF' COMMENT '背景色',
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2164 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `api_special_item_log`
-- ----------------------------
DROP TABLE IF EXISTS `api_special_item_log`;
CREATE TABLE `api_special_item_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) DEFAULT NULL,
  `android` int(11) DEFAULT NULL,
  `ios` int(11) DEFAULT NULL,
  `item_data` longtext,
  `item_sort` int(11) DEFAULT NULL,
  `item_type` varchar(255) DEFAULT NULL,
  `special_id` int(11) DEFAULT NULL,
  `wap` int(11) DEFAULT NULL,
  `wechat` int(11) DEFAULT NULL,
  `right_or_circle` int(4) DEFAULT '1' COMMENT '1-直角2-圆角',
  `bg_color` varchar(255) DEFAULT NULL COMMENT '背景色',
  `admin_id` int(11) DEFAULT NULL COMMENT '操作人',
  `update_type` int(11) DEFAULT NULL COMMENT '操作类型：1 insert/ 2 update/ 3 delete',
  `backup_time` timestamp NULL DEFAULT NULL COMMENT '备份时间',
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1447 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `api_theme_item`
-- ----------------------------
DROP TABLE IF EXISTS `api_theme_item`;
CREATE TABLE `api_theme_item` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `android` int(11) DEFAULT NULL,
  `ios` int(11) DEFAULT NULL,
  `item_data` varchar(2000) DEFAULT NULL,
  `item_sort` int(11) DEFAULT NULL,
  `item_type` varchar(255) DEFAULT NULL,
  `theme_id` int(11) DEFAULT NULL,
  `wap` int(11) DEFAULT NULL,
  `wechat` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `app_article`
-- ----------------------------
DROP TABLE IF EXISTS `app_article`;
CREATE TABLE `app_article` (
  `app_article_id` int(11) NOT NULL AUTO_INCREMENT,
  `allow_delete` int(11) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `content` longtext,
  `create_time` datetime DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `title` varchar(30) DEFAULT NULL,
  `surface_plot_url` varchar(255) DEFAULT NULL,
  `publish_status` int(11) DEFAULT NULL,
  `publish_time` datetime DEFAULT NULL,
  `read_count` int(11) DEFAULT NULL,
  `is_timer` int(11) NOT NULL DEFAULT '0' COMMENT '是否定时发布 1 是   0 否',
  `timer` timestamp NULL DEFAULT NULL COMMENT '定时发布时间（精确到时）',
  PRIMARY KEY (`app_article_id`)
) ENGINE=InnoDB AUTO_INCREMENT=226 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `app_article_category`
-- ----------------------------
DROP TABLE IF EXISTS `app_article_category`;
CREATE TABLE `app_article_category` (
  `app_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `position_id` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `title` varchar(20) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`app_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `app_push`
-- ----------------------------
DROP TABLE IF EXISTS `app_push`;
CREATE TABLE `app_push` (
  `push_id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `sub_title` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `is_special` int(11) DEFAULT '0',
  PRIMARY KEY (`push_id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `app_slider`
-- ----------------------------
DROP TABLE IF EXISTS `app_slider`;
CREATE TABLE `app_slider` (
  `app_slider_id` int(11) NOT NULL AUTO_INCREMENT,
  `app_slider_json` longtext,
  `app_slider_key` varchar(255) DEFAULT NULL,
  `app_slider_sort` int(11) DEFAULT NULL,
  `app_slider_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`app_slider_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `app_stat`
-- ----------------------------
DROP TABLE IF EXISTS `app_stat`;
CREATE TABLE `app_stat` (
  `stat_id` int(11) NOT NULL AUTO_INCREMENT,
  `stat_count` int(11) DEFAULT NULL,
  `stat_key` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`stat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `area`
-- ----------------------------
DROP TABLE IF EXISTS `area`;
CREATE TABLE `area` (
  `area_id` int(11) NOT NULL AUTO_INCREMENT,
  `area_code` varchar(255) DEFAULT NULL,
  `area_deep` int(11) DEFAULT NULL,
  `area_name` varchar(30) DEFAULT NULL,
  `area_parent_id` int(11) DEFAULT NULL,
  `area_region` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`area_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45123 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `arrival_notice`
-- ----------------------------
DROP TABLE IF EXISTS `arrival_notice`;
CREATE TABLE `arrival_notice` (
  `arrival_id` int(11) NOT NULL AUTO_INCREMENT,
  `common_id` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`arrival_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `article`
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `article_id` int(11) NOT NULL AUTO_INCREMENT,
  `allow_delete` int(11) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `content` longtext,
  `create_time` datetime DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `title` varchar(30) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`article_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `article_category`
-- ----------------------------
DROP TABLE IF EXISTS `article_category`;
CREATE TABLE `article_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `position_id` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `title` varchar(20) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `article_position`
-- ----------------------------
DROP TABLE IF EXISTS `article_position`;
CREATE TABLE `article_position` (
  `position_id` int(11) NOT NULL AUTO_INCREMENT,
  `allow_add_category` int(11) DEFAULT NULL,
  `position_title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`position_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `artificial_material`
-- ----------------------------
DROP TABLE IF EXISTS `artificial_material`;
CREATE TABLE `artificial_material` (
  `material_id` int(11) NOT NULL AUTO_INCREMENT,
  `common_id` int(11) DEFAULT '0' COMMENT '关联商品id',
  `member_id` int(11) DEFAULT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
  `material_body` longtext COMMENT '素材内容',
  `category_id` int(11) DEFAULT NULL COMMENT '素材分类',
  `release_date` date DEFAULT NULL COMMENT '发布日期',
  `date_quantum` int(11) DEFAULT NULL COMMENT '时间段',
  `create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `is_del` int(2) DEFAULT '1' COMMENT '0:已删除1未删除',
  `date_quantum_desc` varchar(30) DEFAULT NULL COMMENT '时间段描述',
  PRIMARY KEY (`material_id`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `artificial_material_category`
-- ----------------------------
DROP TABLE IF EXISTS `artificial_material_category`;
CREATE TABLE `artificial_material_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) NOT NULL COMMENT '分类名称',
  `category_sort` int(11) DEFAULT NULL COMMENT '排序值',
  `is_del` int(2) DEFAULT NULL COMMENT '0:已删除1未删除',
  `allow_del` int(2) DEFAULT '0' COMMENT '是否允许删除：1否 0是',
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
--  Table structure for `artificial_material_image`
-- ----------------------------
DROP TABLE IF EXISTS `artificial_material_image`;
CREATE TABLE `artificial_material_image` (
  `material_image_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `material_id` int(11) NOT NULL DEFAULT '0' COMMENT '素材ID',
  `url` varchar(500) NOT NULL DEFAULT '' COMMENT '图片地址',
  `width` varchar(500) NOT NULL DEFAULT '' COMMENT '图片宽度',
  `height` varchar(500) NOT NULL DEFAULT '' COMMENT '图片高度',
  PRIMARY KEY (`material_image_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=273 DEFAULT CHARSET=utf8 COMMENT='人工素材图片';

-- ----------------------------
--  Table structure for `attribute`
-- ----------------------------
DROP TABLE IF EXISTS `attribute`;
CREATE TABLE `attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(255) DEFAULT NULL,
  `attribute_sort` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `is_show` int(11) DEFAULT NULL,
  PRIMARY KEY (`attribute_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1069 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `attribute_value`
-- ----------------------------
DROP TABLE IF EXISTS `attribute_value`;
CREATE TABLE `attribute_value` (
  `attribute_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_id` int(11) DEFAULT NULL,
  `attribute_value_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`attribute_value_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5815 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `bargain`
-- ----------------------------
DROP TABLE IF EXISTS `bargain`;
CREATE TABLE `bargain` (
  `bargain_id` int(11) NOT NULL AUTO_INCREMENT,
  `schedule_state` int(11) DEFAULT NULL,
  `bargain_storage` int(11) DEFAULT NULL,
  `bottom_price` decimal(19,2) DEFAULT NULL,
  `common_id` int(11) DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `interval_max` decimal(19,2) DEFAULT NULL,
  `interval_min` decimal(19,2) DEFAULT NULL,
  `join_number` int(11) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  PRIMARY KEY (`bargain_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `bargain_open`
-- ----------------------------
DROP TABLE IF EXISTS `bargain_open`;
CREATE TABLE `bargain_open` (
  `open_id` int(11) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) DEFAULT NULL,
  `bargain_id` int(11) DEFAULT NULL,
  `bargain_times` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  `open_price` decimal(19,2) DEFAULT NULL,
  `payment_state` int(11) DEFAULT NULL,
  PRIMARY KEY (`open_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `bargain_open_log`
-- ----------------------------
DROP TABLE IF EXISTS `bargain_open_log`;
CREATE TABLE `bargain_open_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) DEFAULT NULL,
  `bargainPrice` decimal(19,2) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  `open_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `bill`
-- ----------------------------
DROP TABLE IF EXISTS `bill`;
CREATE TABLE `bill` (
  `bill_id` int(11) NOT NULL AUTO_INCREMENT,
  `bill_amount` decimal(19,2) DEFAULT NULL,
  `bill_sn` int(11) DEFAULT NULL,
  `bill_state` int(11) DEFAULT NULL,
  `book_amount` decimal(19,2) DEFAULT NULL,
  `commission_amount` decimal(19,2) DEFAULT NULL,
  `cote_amount` decimal(19,2) DEFAULT NULL,
  `coupon_amount` decimal(19,2) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `distribution_amount` decimal(19,2) DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `freight_amount` decimal(19,2) DEFAULT NULL,
  `orders_amount` decimal(19,2) DEFAULT NULL,
  `payment_note` varchar(255) DEFAULT NULL,
  `payment_time` datetime DEFAULT NULL,
  `refund_amount` decimal(19,2) DEFAULT NULL,
  `refund_commission_amount` decimal(19,2) DEFAULT NULL,
  `refund_coupon_amount` decimal(19,2) DEFAULT NULL,
  `state_time` datetime DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `store_name` varchar(255) DEFAULT NULL,
  `all_distribution_amount` decimal(19,2) DEFAULT NULL COMMENT '全部 普通商品推广佣金',
  `refund_distribution_amount` decimal(19,2) DEFAULT NULL COMMENT '退还  普通商品推广佣金',
  `store_up_amount` decimal(19,2) DEFAULT NULL COMMENT '全部减退还  礼包商品推广佣金  (店主佣金、达人佣金、服务商佣金)',
  `all_store_up_amount` decimal(19,2) DEFAULT NULL COMMENT '全部  礼包商品推广佣金  (店主佣金、达人佣金、服务商佣金)',
  `refund_store_up_amount` decimal(19,2) DEFAULT NULL COMMENT '退还  礼包商品推广佣金  (店主佣金、达人佣金、服务商佣金)',
  `store_up_orders_amount` decimal(19,2) DEFAULT NULL COMMENT '礼包商品 订单金额',
  `store_up_freight_amount` decimal(19,2) DEFAULT NULL COMMENT '礼包商品 运费金额(仅页面显示时备用，结算时该字段不参与结算，因为订单金额里已经包含运费了)',
  `store_up_commission_amount` decimal(19,2) DEFAULT NULL COMMENT '礼包商品 平台收取佣金金额',
  `store_up_coupon_amount` decimal(19,2) DEFAULT NULL COMMENT '礼包商品 平台承担平台券总金额',
  `store_up_refund_amount` decimal(19,2) DEFAULT NULL COMMENT '礼包商品 退款金额',
  `store_up_refund_commission_amount` decimal(19,2) DEFAULT NULL COMMENT '礼包商品 退还佣金金额',
  `store_up_refund_coupon_amount` decimal(19,2) DEFAULT NULL COMMENT '礼包商品 平台券总金额(全部退款)',
  `store_up_bill_amount` decimal(19,2) DEFAULT NULL COMMENT '礼包商品  平台应(与商家)结算金额',
  PRIMARY KEY (`bill_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3069 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `bind_shop`
-- ----------------------------
DROP TABLE IF EXISTS `bind_shop`;
CREATE TABLE `bind_shop` (
  `admin_id` int(10) NOT NULL COMMENT '管理员用户编号',
  `kdt_id` int(20) NOT NULL COMMENT '有赞店铺id',
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `book`
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `goods_id` int(11) NOT NULL,
  `common_id` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `down_payment` decimal(19,2) DEFAULT NULL,
  `down_percent` int(11) DEFAULT NULL,
  `down_time` datetime DEFAULT NULL,
  `final_payment` decimal(19,2) DEFAULT NULL,
  `goods_name` varchar(255) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `total_payment` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `brand`
-- ----------------------------
DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand` (
  `brand_id` int(11) NOT NULL AUTO_INCREMENT,
  `apply_state` int(11) DEFAULT NULL,
  `brand_english` varchar(30) DEFAULT NULL,
  `brand_image` varchar(255) DEFAULT NULL,
  `brand_initial` varchar(255) DEFAULT NULL,
  `brand_name` varchar(30) NOT NULL,
  `brand_sort` int(11) DEFAULT NULL,
  `is_recommend` int(11) DEFAULT NULL,
  `show_type` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `brand_apply`
-- ----------------------------
DROP TABLE IF EXISTS `brand_apply`;
CREATE TABLE `brand_apply` (
  `brand_id` int(11) NOT NULL,
  `image_1` varchar(255) DEFAULT NULL,
  `image_2` varchar(255) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `register_number` varchar(255) DEFAULT NULL,
  `state_remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `brand_brand_label`
-- ----------------------------
DROP TABLE IF EXISTS `brand_brand_label`;
CREATE TABLE `brand_brand_label` (
  `brand_label_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  PRIMARY KEY (`brand_label_id`,`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `brand_label`
-- ----------------------------
DROP TABLE IF EXISTS `brand_label`;
CREATE TABLE `brand_label` (
  `brand_label_id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_label_name` varchar(12) NOT NULL,
  `brand_label_sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`brand_label_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `bundling`
-- ----------------------------
DROP TABLE IF EXISTS `bundling`;
CREATE TABLE `bundling` (
  `bundling_id` int(11) NOT NULL AUTO_INCREMENT,
  `bundling_explain` varchar(255) DEFAULT NULL,
  `bundling_name` varchar(255) DEFAULT NULL,
  `bundling_title` varchar(255) DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`bundling_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `bundling_goods`
-- ----------------------------
DROP TABLE IF EXISTS `bundling_goods`;
CREATE TABLE `bundling_goods` (
  `goods_id` int(11) NOT NULL,
  `bundlingId` int(11) NOT NULL,
  `common_id` int(11) DEFAULT NULL,
  `goods_price` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`goods_id`,`bundlingId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `cancel_orders_cod_push_log`
-- ----------------------------
DROP TABLE IF EXISTS `cancel_orders_cod_push_log`;
CREATE TABLE `cancel_orders_cod_push_log` (
  `push_orders_id` int(11) NOT NULL COMMENT '推送订单ID',
  `push_state` int(2) NOT NULL COMMENT '推送状态 0失败 1成功',
  `push_orders_sn` varchar(30) CHARACTER SET utf8 NOT NULL COMMENT '推送订单号',
  `push_data` varchar(2000) CHARACTER SET utf8 DEFAULT NULL COMMENT '推送接口的参数信息',
  `push_content` varchar(2000) CHARACTER SET utf8 DEFAULT NULL COMMENT '推送失败接口返回的错误信息',
  `push_create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `push_update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`push_orders_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
--  Table structure for `cancle_refund`
-- ----------------------------
DROP TABLE IF EXISTS `cancle_refund`;
CREATE TABLE `cancle_refund` (
  `cancle_refund_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `refund_id` int(11) DEFAULT NULL,
  `add_time` datetime DEFAULT NULL,
  `admin_message` varchar(255) DEFAULT NULL,
  `admin_time` datetime DEFAULT NULL,
  `bill_time` datetime DEFAULT NULL,
  `buyer_message` varchar(255) DEFAULT NULL,
  `commission_rate` int(11) DEFAULT NULL,
  `common_id` int(11) DEFAULT NULL,
  `coupon_amount` decimal(19,2) DEFAULT NULL,
  `delay_time` datetime DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `goods_image` varchar(255) DEFAULT NULL,
  `goods_name` varchar(255) DEFAULT NULL,
  `goods_num` int(11) DEFAULT NULL,
  `goods_state` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  `order_goods_type` int(11) DEFAULT NULL,
  `order_lock` int(11) DEFAULT NULL,
  `orders_goods_id` int(11) DEFAULT NULL,
  `orders_id` int(11) DEFAULT NULL,
  `orders_sn` bigint(20) DEFAULT NULL,
  `orders_type` int(11) DEFAULT NULL,
  `pic_json` longtext,
  `reason_id` int(11) DEFAULT NULL,
  `reason_info` varchar(255) DEFAULT NULL,
  `receive_message` varchar(255) DEFAULT NULL,
  `receive_time` datetime DEFAULT NULL,
  `refund_amount` decimal(19,2) DEFAULT NULL,
  `refund_sn` bigint(20) DEFAULT NULL,
  `refund_state` int(11) DEFAULT NULL,
  `refund_type` int(11) DEFAULT NULL,
  `return_type` int(11) DEFAULT NULL,
  `seller_message` varchar(255) DEFAULT NULL,
  `seller_state` int(11) DEFAULT NULL,
  `seller_time` datetime DEFAULT NULL,
  `ship_id` int(11) DEFAULT NULL,
  `ship_sn` varchar(255) DEFAULT NULL,
  `ship_time` datetime DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `store_name` varchar(255) DEFAULT NULL,
  `refund_source` int(11) DEFAULT '1',
  `admin_state` int(11) DEFAULT '1',
  `refund_member_cancel` int(11) DEFAULT '0',
  `return_member_auto_cancel` int(11) DEFAULT '0',
  `return_seller_auto_receive` int(11) DEFAULT '0',
  `dw_return_type` int(11) DEFAULT '0',
  `seller_state_reason` int(11) DEFAULT '1' COMMENT '选择的退款原因1-退款退货2-拒收退款',
  PRIMARY KEY (`cancle_refund_id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
--  Table structure for `cart`
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `bundling_id` int(11) DEFAULT NULL,
  `buy_num` int(11) DEFAULT NULL,
  `common_id` int(11) DEFAULT NULL,
  `distribution_orders_id` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1738 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `cart_bundling`
-- ----------------------------
DROP TABLE IF EXISTS `cart_bundling`;
CREATE TABLE `cart_bundling` (
  `cart_bundling_id` int(11) NOT NULL AUTO_INCREMENT,
  `cart_id` int(11) DEFAULT NULL,
  `common_id` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cart_bundling_id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `app_image` varchar(255) DEFAULT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_sort` int(11) DEFAULT NULL,
  `deep` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=442 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `category_brand`
-- ----------------------------
DROP TABLE IF EXISTS `category_brand`;
CREATE TABLE `category_brand` (
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `category_commission`
-- ----------------------------
DROP TABLE IF EXISTS `category_commission`;
CREATE TABLE `category_commission` (
  `commission_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `commission_rate` int(11) DEFAULT NULL,
  `self_commission_rate` int(11) DEFAULT '0',
  PRIMARY KEY (`commission_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=447 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `chain`
-- ----------------------------
DROP TABLE IF EXISTS `chain`;
CREATE TABLE `chain` (
  `chain_id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(100) DEFAULT NULL,
  `all_star_sum` int(11) DEFAULT NULL,
  `area_id1` int(11) DEFAULT NULL,
  `area_id2` int(11) DEFAULT NULL,
  `area_id3` int(11) DEFAULT NULL,
  `area_id4` int(11) DEFAULT NULL,
  `area_info` varchar(100) DEFAULT NULL,
  `chain_name` varchar(30) DEFAULT NULL,
  `chain_opening_time` varchar(255) DEFAULT NULL,
  `chain_phone` varchar(20) DEFAULT NULL,
  `chain_traffic_line` varchar(255) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `class_name` varchar(255) DEFAULT NULL,
  `clerk_name` varchar(255) DEFAULT NULL,
  `evaluate_num` int(11) DEFAULT NULL,
  `five_star_num` int(11) DEFAULT NULL,
  `four_star_num` int(11) DEFAULT NULL,
  `image_name1` varchar(255) DEFAULT NULL,
  `image_name2` varchar(255) DEFAULT NULL,
  `lat` float DEFAULT NULL,
  `lng` float DEFAULT NULL,
  `one_star_num` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `three_star_num` int(11) DEFAULT NULL,
  `two_star_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`chain_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `chain_bill_offline`
-- ----------------------------
DROP TABLE IF EXISTS `chain_bill_offline`;
CREATE TABLE `chain_bill_offline` (
  `bill_id` int(11) NOT NULL AUTO_INCREMENT,
  `bill_amount` decimal(19,2) DEFAULT NULL,
  `bill_sn` int(11) DEFAULT NULL,
  `chain_id` int(11) DEFAULT NULL,
  `chain_name` varchar(255) DEFAULT NULL,
  `clerkId` int(11) NOT NULL,
  `clerkName` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  PRIMARY KEY (`bill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `chain_bill_online`
-- ----------------------------
DROP TABLE IF EXISTS `chain_bill_online`;
CREATE TABLE `chain_bill_online` (
  `bill_id` int(11) NOT NULL AUTO_INCREMENT,
  `bill_amount` decimal(19,2) DEFAULT NULL,
  `bill_note` varchar(255) DEFAULT NULL,
  `bill_sn` int(11) DEFAULT NULL,
  `bill_state` int(11) DEFAULT NULL,
  `chain_id` int(11) DEFAULT NULL,
  `chain_name` varchar(255) DEFAULT NULL,
  `coupon_amount` decimal(19,2) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `orders_amount` decimal(19,2) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  PRIMARY KEY (`bill_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `chain_book`
-- ----------------------------
DROP TABLE IF EXISTS `chain_book`;
CREATE TABLE `chain_book` (
  `chain_book_id` int(11) NOT NULL AUTO_INCREMENT,
  `buy_num` int(11) DEFAULT NULL,
  `chain_goods_id` int(11) DEFAULT NULL,
  `chain_id` int(11) DEFAULT NULL,
  `chain_name` varchar(255) DEFAULT NULL,
  `common_id` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `goods_services` varchar(4000) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`chain_book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `chain_cart`
-- ----------------------------
DROP TABLE IF EXISTS `chain_cart`;
CREATE TABLE `chain_cart` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `buy_num` int(11) DEFAULT NULL,
  `chain_goods_id` int(11) DEFAULT NULL,
  `chain_id` int(11) DEFAULT NULL,
  `common_id` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `chain_class`
-- ----------------------------
DROP TABLE IF EXISTS `chain_class`;
CREATE TABLE `chain_class` (
  `class_id` int(11) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(255) DEFAULT NULL,
  `class_sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `chain_code`
-- ----------------------------
DROP TABLE IF EXISTS `chain_code`;
CREATE TABLE `chain_code` (
  `chain_code_id` int(11) NOT NULL AUTO_INCREMENT,
  `chain_id` int(11) DEFAULT NULL,
  `orders_id` int(11) DEFAULT NULL,
  `take_code` int(11) DEFAULT NULL,
  `use_state` int(11) DEFAULT NULL,
  PRIMARY KEY (`chain_code_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `chain_coupon`
-- ----------------------------
DROP TABLE IF EXISTS `chain_coupon`;
CREATE TABLE `chain_coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chain_id` int(11) NOT NULL,
  `chain_name` varchar(255) NOT NULL,
  `clerk_id` int(11) DEFAULT NULL,
  `clerk_name` varchar(255) DEFAULT NULL,
  `coupon_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `chain_coupon_activity`
-- ----------------------------
DROP TABLE IF EXISTS `chain_coupon_activity`;
CREATE TABLE `chain_coupon_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `area_info` varchar(255) DEFAULT NULL,
  `chain_able_state` int(11) NOT NULL,
  `chain_available_num` int(11) NOT NULL,
  `chain_giveout_num` int(11) NOT NULL,
  `chain_id` int(11) NOT NULL,
  `chain_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `chain_evaluate`
-- ----------------------------
DROP TABLE IF EXISTS `chain_evaluate`;
CREATE TABLE `chain_evaluate` (
  `evaluate_id` int(11) NOT NULL AUTO_INCREMENT,
  `addTime` datetime DEFAULT NULL,
  `chain_avatar` varchar(255) DEFAULT NULL,
  `chain_id` int(11) DEFAULT NULL,
  `chain_name` varchar(255) DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  `member_avatar` varchar(255) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  `orders_id` int(11) DEFAULT NULL,
  `orders_sn` bigint(20) DEFAULT NULL,
  `scores` int(11) DEFAULT NULL,
  PRIMARY KEY (`evaluate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `chain_goods`
-- ----------------------------
DROP TABLE IF EXISTS `chain_goods`;
CREATE TABLE `chain_goods` (
  `chain_goods_id` int(11) NOT NULL AUTO_INCREMENT,
  `chain_id` int(11) DEFAULT NULL,
  `chain_name` varchar(255) DEFAULT NULL,
  `common_id` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `goods_price` decimal(19,2) DEFAULT NULL,
  `goods_sale_num` int(11) DEFAULT NULL,
  `goods_storage` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`chain_goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `chain_member`
-- ----------------------------
DROP TABLE IF EXISTS `chain_member`;
CREATE TABLE `chain_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime NOT NULL,
  `chain_id` int(11) NOT NULL,
  `chain_name` varchar(255) NOT NULL,
  `member_id` int(11) NOT NULL,
  `tagId` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `chain_member_tag`
-- ----------------------------
DROP TABLE IF EXISTS `chain_member_tag`;
CREATE TABLE `chain_member_tag` (
  `tag_id` int(11) NOT NULL AUTO_INCREMENT,
  `chain_id` int(11) NOT NULL,
  `chain_name` varchar(255) NOT NULL,
  `member_count` int(11) DEFAULT NULL,
  `tag_name` varchar(30) NOT NULL,
  `tag_sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `chain_menu`
-- ----------------------------
DROP TABLE IF EXISTS `chain_menu`;
CREATE TABLE `chain_menu` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `permission` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `chain_orders`
-- ----------------------------
DROP TABLE IF EXISTS `chain_orders`;
CREATE TABLE `chain_orders` (
  `orders_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_receive_pay_state` int(11) DEFAULT NULL,
  `cancel_reason` int(11) DEFAULT NULL,
  `cancel_role` varchar(255) DEFAULT NULL,
  `cancel_time` datetime DEFAULT NULL,
  `chain_id` int(11) DEFAULT NULL,
  `chain_name` varchar(255) DEFAULT NULL,
  `chain_payment_name` varchar(255) DEFAULT NULL,
  `clerk_id` int(11) DEFAULT NULL,
  `clerk_name` varchar(255) DEFAULT NULL,
  `coupon_amount` decimal(19,2) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `delete_state` int(11) DEFAULT NULL,
  `evaluation_state` int(11) DEFAULT NULL,
  `evaluation_time` datetime DEFAULT NULL,
  `finish_time` datetime DEFAULT NULL,
  `invoice_code` varchar(255) DEFAULT NULL,
  `invoice_content` varchar(255) DEFAULT NULL,
  `invoice_title` varchar(255) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  `orders_amount` decimal(19,2) DEFAULT NULL,
  `orders_sn` bigint(20) DEFAULT NULL,
  `orders_state` int(11) DEFAULT NULL,
  `orders_type` int(11) DEFAULT NULL,
  `out_orders_sn` varchar(255) DEFAULT NULL,
  `pay_id` int(11) DEFAULT NULL,
  `pay_sn` bigint(20) DEFAULT NULL,
  `payment_client_type` varchar(255) DEFAULT NULL,
  `payment_code` varchar(255) DEFAULT NULL,
  `payment_time` datetime DEFAULT NULL,
  `predeposit_amount` decimal(19,2) DEFAULT NULL,
  `reciver_address` varchar(255) DEFAULT NULL,
  `receiver_message` varchar(255) DEFAULT NULL,
  `receiver_name` varchar(255) DEFAULT NULL,
  `receiver_phone` varchar(255) DEFAULT NULL,
  `send_time` varchar(255) DEFAULT NULL,
  `shop_commitment_amount` decimal(19,2) DEFAULT NULL,
  `take_time` datetime DEFAULT NULL,
  PRIMARY KEY (`orders_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `chain_orders_goods`
-- ----------------------------
DROP TABLE IF EXISTS `chain_orders_goods`;
CREATE TABLE `chain_orders_goods` (
  `orders_goods_id` int(11) NOT NULL AUTO_INCREMENT,
  `buy_num` int(11) DEFAULT NULL,
  `cartgory_id` int(11) DEFAULT NULL,
  `category_id_1` int(11) DEFAULT NULL,
  `category_id_2` int(11) DEFAULT NULL,
  `category_id_3` int(11) DEFAULT NULL,
  `chain_goods_id` int(11) DEFAULT NULL,
  `chain_id` int(11) DEFAULT NULL,
  `clerk_id` int(11) DEFAULT NULL,
  `common_id` int(11) DEFAULT NULL,
  `goods_full_specs` varchar(255) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `goods_image` varchar(255) DEFAULT NULL,
  `goods_name` varchar(255) DEFAULT NULL,
  `goods_price` decimal(19,2) DEFAULT NULL,
  `goods_serial` varchar(255) DEFAULT NULL,
  `goods_services` varchar(4000) DEFAULT NULL,
  `join_big_sale` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `orders_id` int(11) DEFAULT NULL,
  `unit_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`orders_goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `chain_payment`
-- ----------------------------
DROP TABLE IF EXISTS `chain_payment`;
CREATE TABLE `chain_payment` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_name` varchar(255) NOT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `chain_promotion`
-- ----------------------------
DROP TABLE IF EXISTS `chain_promotion`;
CREATE TABLE `chain_promotion` (
  `promotion_id` int(11) NOT NULL AUTO_INCREMENT,
  `chain_id` int(11) DEFAULT NULL,
  `chain_name` varchar(255) DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `promotion_description` varchar(100) DEFAULT NULL,
  `promotion_image` varchar(255) DEFAULT NULL,
  `promotion_name` varchar(12) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  PRIMARY KEY (`promotion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `chain_services`
-- ----------------------------
DROP TABLE IF EXISTS `chain_services`;
CREATE TABLE `chain_services` (
  `services_id` int(11) NOT NULL AUTO_INCREMENT,
  `able_state` int(11) NOT NULL,
  `add_time` datetime NOT NULL,
  `chain_id` int(11) NOT NULL,
  `chain_name` varchar(255) NOT NULL,
  `services_description` varchar(500) DEFAULT NULL,
  `services_name` varchar(100) NOT NULL,
  PRIMARY KEY (`services_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `chain_stat_orders`
-- ----------------------------
DROP TABLE IF EXISTS `chain_stat_orders`;
CREATE TABLE `chain_stat_orders` (
  `orders_id` int(11) NOT NULL,
  `admin_receive_pay_state` int(11) DEFAULT NULL,
  `cancel_reason` int(11) DEFAULT NULL,
  `cancel_role` varchar(255) DEFAULT NULL,
  `cancel_time` datetime DEFAULT NULL,
  `chain_id` int(11) DEFAULT NULL,
  `chain_name` varchar(255) DEFAULT NULL,
  `chain_payment_name` varchar(255) DEFAULT NULL,
  `clerk_id` int(11) DEFAULT NULL,
  `clerk_name` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `create_time_date` varchar(255) DEFAULT NULL,
  `create_time_hour` varchar(255) DEFAULT NULL,
  `delete_state` int(11) DEFAULT NULL,
  `evaluation_state` int(11) DEFAULT NULL,
  `evaluation_time` datetime DEFAULT NULL,
  `finish_time` datetime DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  `orders_amount` decimal(19,2) DEFAULT NULL,
  `orders_from` varchar(255) DEFAULT NULL,
  `orders_from1` varchar(255) DEFAULT NULL,
  `orders_sn` bigint(20) DEFAULT NULL,
  `orders_state` int(11) DEFAULT NULL,
  `orders_type` int(11) DEFAULT NULL,
  `out_orders_sn` varchar(255) DEFAULT NULL,
  `pay_id` int(11) DEFAULT NULL,
  `pay_sn` bigint(20) DEFAULT NULL,
  `payment_client_type` varchar(255) DEFAULT NULL,
  `payment_code` varchar(255) DEFAULT NULL,
  `payment_time` datetime DEFAULT NULL,
  `predeposit_amount` decimal(19,2) DEFAULT NULL,
  `receiver_name` varchar(255) DEFAULT NULL,
  `receiver_phone` varchar(255) DEFAULT NULL,
  `take_time` datetime DEFAULT NULL,
  PRIMARY KEY (`orders_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `chain_stat_orders_goods`
-- ----------------------------
DROP TABLE IF EXISTS `chain_stat_orders_goods`;
CREATE TABLE `chain_stat_orders_goods` (
  `orders_goods_id` int(11) NOT NULL,
  `buy_num` int(11) DEFAULT NULL,
  `cartgory_id` int(11) DEFAULT NULL,
  `category_id_1` int(11) DEFAULT NULL,
  `category_id_2` int(11) DEFAULT NULL,
  `category_id_3` int(11) DEFAULT NULL,
  `chain_goods_id` int(11) DEFAULT NULL,
  `chain_id` int(11) DEFAULT NULL,
  `chain_name` varchar(255) DEFAULT NULL,
  `clerk_id` int(11) DEFAULT NULL,
  `common_id` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `create_time_date` datetime DEFAULT NULL,
  `create_time_hour` int(11) DEFAULT NULL,
  `goods_full_specs` varchar(255) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `goods_image` varchar(255) DEFAULT NULL,
  `goods_name` varchar(255) DEFAULT NULL,
  `goods_price` decimal(19,2) DEFAULT NULL,
  `goods_serial` varchar(255) DEFAULT NULL,
  `goods_services` varchar(4000) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  `orders_id` int(11) DEFAULT NULL,
  `unit_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`orders_goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `chain_stat_orders_update_task`
-- ----------------------------
DROP TABLE IF EXISTS `chain_stat_orders_update_task`;
CREATE TABLE `chain_stat_orders_update_task` (
  `task_id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime NOT NULL,
  `orders_id` int(11) NOT NULL,
  `task_state` int(11) NOT NULL,
  PRIMARY KEY (`task_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `channel`
-- ----------------------------
DROP TABLE IF EXISTS `channel`;
CREATE TABLE `channel` (
  `channel_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `channel_description` varchar(255) DEFAULT NULL,
  `channel_floor_id` varchar(255) DEFAULT NULL,
  `channel_keywords` varchar(255) DEFAULT NULL,
  `channel_name` varchar(255) DEFAULT NULL,
  `channel_show` int(11) DEFAULT NULL,
  `channel_style` varchar(255) DEFAULT NULL,
  `channel_top_id` int(11) DEFAULT NULL,
  `channel_update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`channel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `channel_first_buy_log`
-- ----------------------------
DROP TABLE IF EXISTS `channel_first_buy_log`;
CREATE TABLE `channel_first_buy_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orders_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `sale_channel` int(4) NOT NULL,
  `push_create_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `channel_module`
-- ----------------------------
DROP TABLE IF EXISTS `channel_module`;
CREATE TABLE `channel_module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(255) DEFAULT NULL,
  `module_show` int(11) DEFAULT NULL,
  `module_template_name` varchar(255) DEFAULT NULL,
  `module_type` varchar(255) DEFAULT NULL,
  `module_update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `channel_module_item`
-- ----------------------------
DROP TABLE IF EXISTS `channel_module_item`;
CREATE TABLE `channel_module_item` (
  `module_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_id` int(11) DEFAULT NULL,
  `module_item_json` longtext,
  `module_item_key` varchar(255) DEFAULT NULL,
  `module_item_name` varchar(255) DEFAULT NULL,
  `module_item_sort` int(11) DEFAULT NULL,
  `module_item_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`module_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `check_in`
-- ----------------------------
DROP TABLE IF EXISTS `check_in`;
CREATE TABLE `check_in` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `member_id` int(11) NOT NULL COMMENT '签到人id',
  `super_id` int(11) DEFAULT '0' COMMENT '分享人id',
  `continue_days` int(11) NOT NULL COMMENT '连续签到天数',
  `activity_id` int(11) NOT NULL COMMENT '赠送品币活动id',
  `coupon_price` decimal(9,2) NOT NULL COMMENT '品币金额',
  `share_activity_id` int(11) DEFAULT NULL COMMENT '分享赠送品币活动id',
  `share_coupon_price` decimal(9,2) DEFAULT NULL COMMENT '分享品币金额',
  `create_time` datetime NOT NULL COMMENT '签到时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `clerk`
-- ----------------------------
DROP TABLE IF EXISTS `clerk`;
CREATE TABLE `clerk` (
  `clerk_id` int(11) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) DEFAULT NULL,
  `chain_id` int(11) DEFAULT NULL,
  `clerk_name` varchar(20) DEFAULT NULL,
  `clerk_password` varchar(255) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `is_owner` int(11) DEFAULT NULL,
  PRIMARY KEY (`clerk_id`),
  UNIQUE KEY `UK_dhu75n3ah5ag1cvfis2qmp7bk` (`clerk_name`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `clerk_group`
-- ----------------------------
DROP TABLE IF EXISTS `clerk_group`;
CREATE TABLE `clerk_group` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `chain_id` int(11) DEFAULT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `clerk_group_permission`
-- ----------------------------
DROP TABLE IF EXISTS `clerk_group_permission`;
CREATE TABLE `clerk_group_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tf_dim_date`
-- ----------------------------
DROP TABLE IF EXISTS `tf_dim_date`;
CREATE TABLE `tf_dim_date` (
  `datelist` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tf_dim_hour`
-- ----------------------------
DROP TABLE IF EXISTS `tf_dim_hour`;
CREATE TABLE `tf_dim_hour` (
  `hour_id` int(11) NOT NULL AUTO_INCREMENT,
  `hour_code` int(11) NOT NULL,
  `hour_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`hour_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tf_dxhy_invoice`
-- ----------------------------
DROP TABLE IF EXISTS `tf_dxhy_invoice`;
CREATE TABLE `tf_dxhy_invoice` (
  `serial_number` varchar(255) NOT NULL COMMENT '流水号  也是主键',
  `orders_id` int(11) NOT NULL COMMENT '订单id',
  `orders_sn` bigint(20) NOT NULL COMMENT '订单编号',
  `invoice_json` varchar(4000) NOT NULL COMMENT '开票json信息',
  `invoice_return_json` varchar(1000) NOT NULL COMMENT '开票返回的json信息',
  `invoice_time` datetime NOT NULL COMMENT '最新调用大象慧云开票接口的时间',
  `refund_id` varchar(100) DEFAULT NULL COMMENT '触发冲红的退款退货ids',
  `push_json` varchar(500) DEFAULT NULL COMMENT '大象慧云推送的json',
  `push_response_status` varchar(500) DEFAULT NULL COMMENT '大象慧云推送的json   我们的返回值',
  `invoice_push_time` datetime DEFAULT NULL COMMENT '大象慧云推送时间',
  `invoice_pdf` varchar(100) DEFAULT NULL COMMENT '电子发票地址',
  `is_invoice` int(2) NOT NULL COMMENT '0为初始化或未成功   1为开正票成功    2为冲红成功   ',
  `type` int(2) NOT NULL COMMENT '1为正票蓝票    2为红票   只能有一张is_invoice和type同时为1的票',
  PRIMARY KEY (`serial_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='大象慧云开发票记录';

-- ----------------------------
--  Table structure for `tf_dxhy_invoice_log`
-- ----------------------------
DROP TABLE IF EXISTS `tf_dxhy_invoice_log`;
CREATE TABLE `tf_dxhy_invoice_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 自增',
  `orders_id` int(11) NOT NULL COMMENT '订单id',
  `log_message` varchar(100) NOT NULL COMMENT '异常信息',
  `add_time` datetime NOT NULL COMMENT '操作保存时间',
  `type` int(2) NOT NULL COMMENT '1为开正票蓝票    2为开红票',
  `type_name` varchar(50) NOT NULL COMMENT '调用的方法 就是操作开票或冲红的地方',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=269 DEFAULT CHARSET=utf8 COMMENT='大象慧云开发票异常记录';



-- ----------------------------
--  Table structure for `tf_message_template_weixin`
-- ----------------------------
DROP TABLE IF EXISTS `tf_message_template_weixin`;
CREATE TABLE `tf_message_template_weixin` (
  `message_id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `tpl_code` varchar(255) NOT NULL UNIQUE,
  `tpl_name` varchar(255) DEFAULT NULL,
  `weixin_template_id` varchar(2000) DEFAULT NULL,
  `owner_template_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tf_ods_users_number`
-- ----------------------------
DROP TABLE IF EXISTS `tf_ods_users_number`;
CREATE TABLE `tf_ods_users_number` (
  `datelist` date NOT NULL,
  `new_ios_user` int(11) DEFAULT NULL,
  `new_android_user` int(11) DEFAULT NULL,
  `live_ios_user` int(11) DEFAULT NULL,
  `live_android_user` int(11) DEFAULT NULL,
  `accumulative_ios_user` int(11) DEFAULT NULL,
  `accumulative_android_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`datelist`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tf_tv_goods`
-- ----------------------------
DROP TABLE IF EXISTS `tf_tv_goods`;
CREATE TABLE `tf_tv_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dw_id` int(11) DEFAULT NULL,
  `common_id` int(11) DEFAULT NULL,
  `goods_name` varchar(255) DEFAULT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `jingle` varchar(255) DEFAULT NULL,
  `bd_btime` datetime DEFAULT NULL,
  `bd_etime` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `sale_amt` decimal(19,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tf_tv_goods_temp`
-- ----------------------------
DROP TABLE IF EXISTS `tf_tv_goods_temp`;
CREATE TABLE `tf_tv_goods_temp` (
  `id` decimal(10,0) NOT NULL COMMENT 'ID 唯一(与tf_tv_goods表中的ID一致)',
  `dw_id` decimal(10,0) NOT NULL COMMENT 'DW商品ID',
  `flag` decimal(10,0) NOT NULL COMMENT '商品标识（0-无 1-备播）',
  `bd_btime` datetime DEFAULT NULL COMMENT '播出的开始时间',
  `bd_etime` datetime DEFAULT NULL COMMENT '播出的结束时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tf_web_slider`
-- ----------------------------
DROP TABLE IF EXISTS `tf_web_slider`;
CREATE TABLE `tf_web_slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `web_slider_type` varchar(255) NOT NULL,
  `link_type` varchar(255) NOT NULL,
  `link_value` varchar(255) NOT NULL,
  `online_time` datetime NOT NULL,
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tf_weixin_messagemass_task`
-- ----------------------------
DROP TABLE IF EXISTS `tf_weixin_messagemass_task`;
CREATE TABLE `tf_weixin_messagemass_task` (
  `task_id` int(11) NOT NULL AUTO_INCREMENT,
  `task_name` varchar(255) DEFAULT NULL,
  `member_ids` varchar(255) DEFAULT NULL,
  `content` varchar(2000) DEFAULT NULL,
  `finish_state` int(11) DEFAULT '0',
  `add_time` datetime DEFAULT NULL,
  PRIMARY KEY (`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tf_weixin_notice_log`
-- ----------------------------
DROP TABLE IF EXISTS `tf_weixin_notice_log`;
CREATE TABLE `tf_weixin_notice_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` int(11) DEFAULT '0',
  `event` varchar(100) DEFAULT NULL,
  `event_key` varchar(255) DEFAULT NULL,
  `finish_state` int(11) DEFAULT '0',
  `from_user_name` varchar(500) DEFAULT NULL,
  `msg_id` bigint(20) DEFAULT NULL,
  `msg_type` varchar(100) DEFAULT NULL,
  `other_params` varchar(2000) DEFAULT NULL,
  `to_user_name` varchar(500) DEFAULT NULL,
  `add_time` datetime DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tf_weixin_param_qrcode`
-- ----------------------------
DROP TABLE IF EXISTS `tf_weixin_param_qrcode`;
CREATE TABLE `tf_weixin_param_qrcode` (
  `code_id` int(11) NOT NULL AUTO_INCREMENT,
  `code_param` int(11) DEFAULT '0',
  `code_title` varchar(255) DEFAULT NULL,
  `code_explain` varchar(255) DEFAULT NULL,
  `qrcode_ticket` varchar(500) DEFAULT NULL,
  `qrcode_url` varchar(1000) DEFAULT NULL,
  `add_time` datetime DEFAULT NULL,
  PRIMARY KEY (`code_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `combo_goods`
-- ----------------------------
DROP TABLE IF EXISTS `combo_goods`;
CREATE TABLE `combo_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `combo_class` varchar(255) DEFAULT NULL,
  `combo_common_id` int(11) DEFAULT NULL,
  `common_id` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `complain`
-- ----------------------------
DROP TABLE IF EXISTS `complain`;
CREATE TABLE `complain` (
  `complain_id` int(11) NOT NULL AUTO_INCREMENT,
  `accused_content` varchar(255) DEFAULT NULL,
  `accused_id` int(11) DEFAULT NULL,
  `accused_images` varchar(255) DEFAULT NULL,
  `accused_name` varchar(255) NOT NULL,
  `accused_seller_id` int(11) DEFAULT NULL,
  `accused_time` datetime DEFAULT NULL,
  `accuser_content` varchar(255) NOT NULL,
  `accuser_id` int(11) DEFAULT NULL,
  `accuser_images` varchar(255) DEFAULT NULL,
  `accuser_name` varchar(255) NOT NULL,
  `accuser_time` datetime NOT NULL,
  `admin_check_content` varchar(255) DEFAULT NULL,
  `admin_check_name` varchar(255) DEFAULT NULL,
  `admin_check_time` datetime DEFAULT NULL,
  `admin_confirm_content` varchar(255) DEFAULT NULL,
  `admin_confirm_name` varchar(255) DEFAULT NULL,
  `admin_confirm_time` datetime DEFAULT NULL,
  `common_id` int(11) DEFAULT NULL,
  `complain_state` int(11) DEFAULT NULL,
  `goods_full_specs` varchar(255) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `goods_image` varchar(255) DEFAULT NULL,
  `goods_name` varchar(255) NOT NULL,
  `orders_goods_id` int(11) DEFAULT NULL,
  `orders_id` int(11) DEFAULT NULL,
  `orders_sn` varchar(255) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `subject_title` varchar(255) NOT NULL,
  PRIMARY KEY (`complain_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `complain_subject`
-- ----------------------------
DROP TABLE IF EXISTS `complain_subject`;
CREATE TABLE `complain_subject` (
  `subject_id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`subject_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `complain_talk`
-- ----------------------------
DROP TABLE IF EXISTS `complain_talk`;
CREATE TABLE `complain_talk` (
  `talk_id` int(11) NOT NULL AUTO_INCREMENT,
  `complain_id` int(11) DEFAULT NULL,
  `disable_state` int(11) DEFAULT NULL,
  `talk_content` varchar(255) NOT NULL,
  `talk_name` datetime NOT NULL,
  `talk_type` int(11) DEFAULT NULL,
  `talk_user` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`talk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `conform`
-- ----------------------------
DROP TABLE IF EXISTS `conform`;
CREATE TABLE `conform` (
  `conform_id` int(11) NOT NULL AUTO_INCREMENT,
  `conform_name` varchar(255) DEFAULT NULL,
  `conform_price` decimal(19,2) DEFAULT NULL,
  `conform_state` int(11) DEFAULT NULL,
  `conform_title` varchar(255) DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `is_free_freight` int(11) DEFAULT NULL,
  `is_gift` int(11) DEFAULT NULL,
  `limit_amount` decimal(19,2) DEFAULT NULL,
  `rule_out_area_ids` varchar(255) DEFAULT NULL,
  `rule_out_area_names` varchar(255) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `template_id` int(11) DEFAULT NULL,
  `template_price` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`conform_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `consult`
-- ----------------------------
DROP TABLE IF EXISTS `consult`;
CREATE TABLE `consult` (
  `consult_id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime NOT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `class_id` int(11) NOT NULL,
  `class_name` varchar(255) NOT NULL,
  `common_id` int(11) NOT NULL,
  `consult_content` varchar(200) NOT NULL,
  `consult_reply` varchar(500) DEFAULT NULL,
  `consult_reply_state` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  `read_state` int(11) NOT NULL,
  `reply_time` datetime DEFAULT NULL,
  `store_id` int(11) NOT NULL,
  `store_name` varchar(255) NOT NULL,
  PRIMARY KEY (`consult_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `consult_class`
-- ----------------------------
DROP TABLE IF EXISTS `consult_class`;
CREATE TABLE `consult_class` (
  `class_id` int(11) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(100) DEFAULT NULL,
  `class_sort` int(11) DEFAULT NULL,
  `introduce` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `contract`
-- ----------------------------
DROP TABLE IF EXISTS `contract`;
CREATE TABLE `contract` (
  `ct_id` int(11) NOT NULL AUTO_INCREMENT,
  `ct_auditstate` int(11) DEFAULT NULL,
  `ct_closestate` int(11) DEFAULT NULL,
  `ct_cost` decimal(19,2) DEFAULT NULL,
  `ct_itemid` int(11) DEFAULT NULL,
  `ct_joinstate` int(11) DEFAULT NULL,
  `ct_quitstate` int(11) DEFAULT NULL,
  `ct_storeid` int(11) DEFAULT NULL,
  `ct_storename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ct_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `contract_apply`
-- ----------------------------
DROP TABLE IF EXISTS `contract_apply`;
CREATE TABLE `contract_apply` (
  `cta_id` int(11) NOT NULL AUTO_INCREMENT,
  `cta_addtime` datetime NOT NULL,
  `cta_auditstate` int(11) NOT NULL,
  `cta_cost` decimal(19,2) DEFAULT NULL,
  `cta_costimg` varchar(500) DEFAULT NULL,
  `cta_itemid` int(11) NOT NULL,
  `cta_storeid` int(11) NOT NULL,
  `cta_storename` varchar(500) NOT NULL,
  PRIMARY KEY (`cta_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `contract_costlog`
-- ----------------------------
DROP TABLE IF EXISTS `contract_costlog`;
CREATE TABLE `contract_costlog` (
  `clog_id` int(11) NOT NULL AUTO_INCREMENT,
  `clog_addtime` datetime NOT NULL,
  `clog_adminid` int(11) DEFAULT NULL,
  `clog_adminname` varchar(200) DEFAULT NULL,
  `clog_desc` varchar(2000) NOT NULL,
  `clog_itemid` int(11) NOT NULL,
  `clog_itemname` varchar(100) NOT NULL,
  `clog_price` decimal(19,2) NOT NULL,
  `clog_storeid` int(11) NOT NULL,
  `clog_storename` varchar(500) NOT NULL,
  PRIMARY KEY (`clog_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `contract_item`
-- ----------------------------
DROP TABLE IF EXISTS `contract_item`;
CREATE TABLE `contract_item` (
  `cti_id` int(11) NOT NULL AUTO_INCREMENT,
  `cti_cost` decimal(19,2) DEFAULT NULL,
  `cti_describe` varchar(2000) DEFAULT NULL,
  `cti_descurl` varchar(500) DEFAULT NULL,
  `cti_icon` varchar(500) DEFAULT NULL,
  `cti_name` varchar(100) DEFAULT NULL,
  `cti_sort` int(11) DEFAULT NULL,
  `cti_state` int(11) DEFAULT NULL,
  PRIMARY KEY (`cti_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `contract_log`
-- ----------------------------
DROP TABLE IF EXISTS `contract_log`;
CREATE TABLE `contract_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `log_addtime` datetime NOT NULL,
  `log_itemid` int(11) NOT NULL,
  `log_itemname` varchar(100) NOT NULL,
  `log_msg` varchar(1000) NOT NULL,
  `log_role` varchar(100) NOT NULL,
  `log_storeid` int(11) NOT NULL,
  `log_storename` varchar(500) NOT NULL,
  `log_userid` int(11) NOT NULL,
  `log_username` varchar(200) NOT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `contract_quitapply`
-- ----------------------------
DROP TABLE IF EXISTS `contract_quitapply`;
CREATE TABLE `contract_quitapply` (
  `ctq_id` int(11) NOT NULL AUTO_INCREMENT,
  `ctq_addtime` datetime NOT NULL,
  `ctq_auditstate` int(11) NOT NULL,
  `ctq_itemid` int(11) NOT NULL,
  `ctq_itemname` varchar(200) NOT NULL,
  `ctq_storeid` int(11) NOT NULL,
  `ctq_storename` varchar(500) NOT NULL,
  PRIMARY KEY (`ctq_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `coupon`
-- ----------------------------
DROP TABLE IF EXISTS `coupon`;
CREATE TABLE `coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `active_time` datetime DEFAULT NULL,
  `activity_id` int(11) DEFAULT NULL,
  `activity_name` varchar(100) DEFAULT NULL,
  `activity_type` int(11) NOT NULL,
  `app_usable` int(11) NOT NULL,
  `coupon_code` varchar(255) DEFAULT NULL,
  `coupon_price` decimal(19,2) NOT NULL,
  `coupon_state` int(11) DEFAULT NULL,
  `limit_amount` decimal(19,2) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  `store_commitment_rate` double NOT NULL,
  `use_end_time` datetime NOT NULL,
  `use_goods_range` int(11) NOT NULL,
  `use_goods_range_explain` varchar(50) NOT NULL,
  `use_start_time` datetime NOT NULL,
  `web_usable` int(11) NOT NULL,
  `wechat_usable` int(11) NOT NULL,
  PRIMARY KEY (`coupon_id`),
  UNIQUE KEY `UK_sre2vcap4vs6qucaksomk3c7s` (`coupon_code`)
) ENGINE=InnoDB AUTO_INCREMENT=2426 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `coupon_activity`
-- ----------------------------
DROP TABLE IF EXISTS `coupon_activity`;
CREATE TABLE `coupon_activity` (
  `activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_explain` varchar(200) DEFAULT NULL,
  `activity_name` varchar(20) NOT NULL,
  `activity_start_time` datetime DEFAULT NULL,
  `activity_state` int(11) NOT NULL,
  `activity_type` int(11) NOT NULL,
  `add_time` datetime NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `admin_name` varchar(255) DEFAULT NULL,
  `app_usable` int(11) NOT NULL,
  `coupon_price` decimal(19,2) NOT NULL,
  `expend_points` int(11) DEFAULT NULL,
  `giveout_num` int(11) NOT NULL,
  `have_created` int(11) NOT NULL,
  `limit_amount` decimal(19,2) DEFAULT NULL,
  `limit_member_grade_level` int(11) DEFAULT NULL,
  `limit_member_grade_name` varchar(255) DEFAULT NULL,
  `recommend_state` int(11) DEFAULT NULL,
  `store_commitment_rate` double NOT NULL,
  `total_num` int(11) NOT NULL,
  `update_time` datetime DEFAULT NULL,
  `use_end_time` datetime DEFAULT NULL,
  `use_goods_range` int(11) NOT NULL,
  `use_goods_range_explain` varchar(50) NOT NULL,
  `use_start_time` datetime DEFAULT NULL,
  `used_num` int(11) NOT NULL,
  `valid_days` int(11) DEFAULT NULL,
  `web_usable` int(11) NOT NULL,
  `wechat_usable` int(11) NOT NULL,
  PRIMARY KEY (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=276 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `coupon_gifts`
-- ----------------------------
DROP TABLE IF EXISTS `coupon_gifts`;
CREATE TABLE `coupon_gifts` (
  `gifts_id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id_json` varchar(2000) DEFAULT NULL,
  `add_time` datetime NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `admin_name` varchar(255) DEFAULT NULL,
  `banner_img_app` varchar(255) DEFAULT NULL,
  `banner_img_pc` varchar(255) DEFAULT NULL,
  `gifts_end_time` datetime DEFAULT NULL,
  `gifts_explain` varchar(200) DEFAULT NULL,
  `gifts_name` varchar(20) NOT NULL,
  `gifts_price` decimal(19,2) NOT NULL DEFAULT '0.00',
  `gifts_start_time` datetime DEFAULT NULL,
  `gifts_state` int(11) NOT NULL,
  `gifts_type` int(11) NOT NULL,
  `giveout_num` int(11) NOT NULL DEFAULT '0',
  `theme_color` varchar(255) DEFAULT NULL,
  `total_num` int(11) NOT NULL DEFAULT '0',
  `update_time` datetime DEFAULT NULL,
  `voucher_template_id_json` varchar(2000) DEFAULT NULL,
  `is_send` int(11) DEFAULT '0',
  PRIMARY KEY (`gifts_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `coupon_gifts_receive_log`
-- ----------------------------
DROP TABLE IF EXISTS `coupon_gifts_receive_log`;
CREATE TABLE `coupon_gifts_receive_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `active_time` datetime DEFAULT NULL,
  `gifts_id` int(11) DEFAULT NULL,
  `gifts_name` varchar(100) DEFAULT NULL,
  `gifts_price` decimal(19,2) DEFAULT NULL,
  `log_content` varchar(255) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `coupon_pwd`
-- ----------------------------
DROP TABLE IF EXISTS `coupon_pwd`;
CREATE TABLE `coupon_pwd` (
  `pwd_id` int(11) NOT NULL AUTO_INCREMENT,
  `active_time` datetime DEFAULT NULL,
  `activity_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  `pwd_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pwd_id`),
  UNIQUE KEY `UK_q670jm40y5yjhvl3kitqenmoi` (`pwd_code`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `coupon_unuse_goods`
-- ----------------------------
DROP TABLE IF EXISTS `coupon_unuse_goods`;
CREATE TABLE `coupon_unuse_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `category_id` int(11) DEFAULT NULL COMMENT '商品分类编号',
  `category_id_1` int(11) DEFAULT NULL COMMENT '一级分类',
  `category_id_2` int(11) DEFAULT NULL COMMENT '二级分类',
  `category_id_3` int(11) DEFAULT NULL COMMENT '三级分类',
  `category_name_1` varchar(255) DEFAULT NULL COMMENT '一级分类名称',
  `category_name_2` varchar(255) DEFAULT NULL COMMENT '二级分类名称',
  `category_name_3` varchar(255) DEFAULT NULL COMMENT '三级分类名称',
  `common_id` int(11) DEFAULT NULL COMMENT '商品SPU编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='不参加平台卷商品';

-- ----------------------------
--  Table structure for `coupon_use_goods`
-- ----------------------------
DROP TABLE IF EXISTS `coupon_use_goods`;
CREATE TABLE `coupon_use_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `category_id_1` int(11) DEFAULT NULL,
  `category_id_2` int(11) DEFAULT NULL,
  `category_id_3` int(11) DEFAULT NULL,
  `category_name_1` varchar(255) DEFAULT NULL,
  `category_name_2` varchar(255) DEFAULT NULL,
  `category_name_3` varchar(255) DEFAULT NULL,
  `common_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `custom`
-- ----------------------------
DROP TABLE IF EXISTS `custom`;
CREATE TABLE `custom` (
  `custom_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `custom_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`custom_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `customs_declare_log`
-- ----------------------------
DROP TABLE IF EXISTS `customs_declare_log`;
CREATE TABLE `customs_declare_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `orders_id` int(11) NOT NULL COMMENT '订单ID',
  `pay_sn` bigint(20) NOT NULL COMMENT '支付单号',
  `is_split` int(2) NOT NULL COMMENT '是否拆分支付单（0-否；1-是）',
  `plate_form` varchar(20) DEFAULT NULL COMMENT '报关平台（alipay-支付宝；wxpay-微信）',
  `customs_place` varchar(20) DEFAULT NULL COMMENT '报关海关地址编号',
  `request_body` text COMMENT '请求数据',
  `request_status` int(2) DEFAULT NULL COMMENT '报关请求状态（1-成功；0-失败）',
  `result_status` int(2) DEFAULT NULL COMMENT '报关请求处理状态（1-成功；0-失败）',
  `customs_status` int(2) DEFAULT NULL COMMENT '报关结果（2-失败；1-成功；0-未查询结果）',
  `remark` varchar(500) DEFAULT NULL COMMENT '支付报关处理信息',
  `push_time` datetime DEFAULT NULL COMMENT '推送报关时间',
  `associated_push` int(2) NOT NULL COMMENT '是否关联推送其它海关（0-否； 1-是）',
  `associate_customs_place` varchar(20) DEFAULT NULL COMMENT '关联推送海关地址编号',
  `associate_request_Status` int(2) DEFAULT NULL COMMENT '关联推送报关请求状态（1-成功；0-失败）',
  `associate_result_Status` int(2) DEFAULT NULL COMMENT '关联推送报关请求处理状态（1-成功；0-失败）',
  `associate_customs_status` int(2) DEFAULT NULL COMMENT '关联推送报关结果（2-失败；1-成功；0-未查询结果）',
  `associated_push_remark` varchar(500) DEFAULT NULL COMMENT '关联推送其它海关报关处理信息',
  `associated_push_time` datetime DEFAULT NULL COMMENT '关联推送其它海关报关时间',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `amount` decimal(19,2) DEFAULT NULL COMMENT '报关金额',
  `ver_dept` varchar(10) DEFAULT NULL COMMENT '核验机构标志 1-银联 2-网联 3-其他',
  `pay_transaction_id` varchar(50) DEFAULT NULL COMMENT '交易唯一编号（可在央行认可的机构验证）',
  `customs_trade_no` varchar(50) DEFAULT NULL COMMENT '清关支付单号（三方支付平台向海关推送的支付单号）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
--  Table structure for `customs_pay_info`
-- ----------------------------
DROP TABLE IF EXISTS `customs_pay_info`;
CREATE TABLE `customs_pay_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pay_sn` bigint(20) NOT NULL COMMENT '支付单号',
  `request_body` varchar(5000) COLLATE utf8_german2_ci NOT NULL COMMENT '原始请求支付信息',
  `response_body` varchar(5000) COLLATE utf8_german2_ci DEFAULT 'OK' COMMENT '请求响应信息',
  `return_status` varchar(10) COLLATE utf8_german2_ci DEFAULT 'FAIL' COMMENT '成功SUCCESS 失败FAIL',
  `payment_code` varchar(10) COLLATE utf8_german2_ci NOT NULL COMMENT '支付宝 alipay ,微信 wxpay',
  `pay_time` datetime DEFAULT NULL COMMENT '支付时间',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
--  Table structure for `customs_real_time_data_up`
-- ----------------------------
DROP TABLE IF EXISTS `customs_real_time_data_up`;
CREATE TABLE `customs_real_time_data_up` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `order_no` varchar(50) NOT NULL COMMENT '商家清关订单号',
  `session_id` varchar(100) NOT NULL COMMENT '海关请求会话ID',
  `service_time` varchar(50) NOT NULL COMMENT '海关请求时间',
  `wait_sign` longtext COMMENT '待加签的数据',
  `sign` longtext COMMENT '加签成功后的签名字符串',
  `wait_push` longtext COMMENT '待返回数据 json字符串',
  `up_state` int(5) DEFAULT NULL COMMENT '实时数据上传状态 0-失败； 1-成功; 2-数据异常',
  `create_time` datetime DEFAULT NULL COMMENT '记录创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `daily_ip_count`
-- ----------------------------
DROP TABLE IF EXISTS `daily_ip_count`;
CREATE TABLE `daily_ip_count` (
  `id` int(32) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ip` varchar(255) DEFAULT NULL,
  `visit_type` varchar(20) DEFAULT NULL COMMENT '1短信验证码  2首页商品搜索',
  `count` int(11) DEFAULT '0' COMMENT '当日发送(访问)数量',
  `last_visit_time` datetime DEFAULT NULL COMMENT '最后访问时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `discount`
-- ----------------------------
DROP TABLE IF EXISTS `discount`;
CREATE TABLE `discount` (
  `discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `discount_explain` varchar(30) DEFAULT NULL,
  `discount_name` varchar(25) DEFAULT NULL,
  `discount_rate` double DEFAULT NULL,
  `discount_state` int(11) DEFAULT NULL,
  `discount_title` varchar(10) DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `limit_amount` int(11) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `web_usable` int(11) NOT NULL DEFAULT '0',
  `app_usable` int(11) NOT NULL DEFAULT '0',
  `wechat_usable` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`discount_id`)
) ENGINE=InnoDB AUTO_INCREMENT=224 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `distribution_bill`
-- ----------------------------
DROP TABLE IF EXISTS `distribution_bill`;
CREATE TABLE `distribution_bill` (
  `distribution_bill_id` int(11) NOT NULL AUTO_INCREMENT,
  `distribution_bill_sn` int(11) DEFAULT NULL,
  `distribution_orders_amount` decimal(19,2) DEFAULT NULL,
  `distribution_create_time` datetime DEFAULT NULL,
  `distribution_end_time` datetime DEFAULT NULL,
  `distribution_start_time` datetime DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `distributor_id` int(11) DEFAULT NULL,
  `open_shop_amount` decimal(19,2) DEFAULT NULL COMMENT '礼包商品推广佣金',
  PRIMARY KEY (`distribution_bill_id`)
) ENGINE=InnoDB AUTO_INCREMENT=935 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `distribution_commission_cash`
-- ----------------------------
DROP TABLE IF EXISTS `distribution_commission_cash`;
CREATE TABLE `distribution_commission_cash` (
  `cash_id` int(11) NOT NULL AUTO_INCREMENT,
  `account_type` varchar(255) DEFAULT NULL,
  `add_time` datetime NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `admin_name` varchar(255) DEFAULT NULL,
  `amount` decimal(19,2) NOT NULL,
  `bank_account_name` varchar(255) DEFAULT NULL,
  `bank_account_number` varchar(255) DEFAULT NULL,
  `bind_phone` varchar(255) DEFAULT NULL,
  `cash_sn` varchar(100) NOT NULL,
  `distributor_id` int(11) NOT NULL,
  `id_cart_number` varchar(18) DEFAULT NULL,
  `member_id` int(11) NOT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  `pay_person` varchar(255) DEFAULT NULL,
  `pay_time` datetime DEFAULT NULL,
  `real_name` varchar(255) DEFAULT NULL,
  `refuse_reason` varchar(1000) DEFAULT NULL,
  `state` int(11) NOT NULL,
  PRIMARY KEY (`cash_id`),
  UNIQUE KEY `UK_1mp8vqwaxmgslqxw0tjx7ablv` (`cash_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `distribution_goods`
-- ----------------------------
DROP TABLE IF EXISTS `distribution_goods`;
CREATE TABLE `distribution_goods` (
  `common_id` int(11) NOT NULL,
  `add_time` datetime DEFAULT NULL,
  `commission_rate` int(11) DEFAULT NULL,
  `commission_total` decimal(19,2) DEFAULT NULL,
  `orders_count` bigint(20) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`common_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `distribution_orders`
-- ----------------------------
DROP TABLE IF EXISTS `distribution_orders`;
CREATE TABLE `distribution_orders` (
  `distribution_orders_id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime DEFAULT NULL,
  `commission_rate` int(11) DEFAULT NULL,
  `common_id` int(11) DEFAULT NULL,
  `distribution_orders_type` int(11) DEFAULT NULL,
  `distribution_store_pay` int(11) DEFAULT NULL,
  `distribution_store_pay_time` datetime DEFAULT NULL,
  `distributor_id` int(11) DEFAULT NULL,
  `finish_time` datetime DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `orders_finish_time` datetime DEFAULT NULL,
  `orders_goods_id` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `charge_id` int(11) DEFAULT '0',
  `manager_id` int(11) DEFAULT '0',
  `is_store_up` int(2) DEFAULT '0' COMMENT '是否开店礼包商品推广订单，1-是；0-否',
  `is_award` int(2) DEFAULT '0' COMMENT '是否额外奖励，当月销售额（除去开店礼包商品）是否达到200元，1-是；0-否',
  `distributor_rank` int(11) DEFAULT '0' COMMENT '推广商的等级（1-店主；2-达人；3-服务商）',
  `distributor_commission_amount` decimal(19,2) DEFAULT '0.00' COMMENT '礼包订单店主佣金',
  `charge_commission_amount` decimal(19,2) DEFAULT '0.00' COMMENT '礼包订单达人佣金',
  `manager_commission_amount` decimal(19,2) DEFAULT '0.00' COMMENT '礼包订单服务商佣金',
  PRIMARY KEY (`distribution_orders_id`),
  KEY `orders_goods_id` (`orders_goods_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `distribution_store_site`
-- ----------------------------
DROP TABLE IF EXISTS `distribution_store_site`;
CREATE TABLE `distribution_store_site` (
  `store_id` int(11) NOT NULL,
  `commission_rate` int(11) DEFAULT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `distribution_store_stat`
-- ----------------------------
DROP TABLE IF EXISTS `distribution_store_stat`;
CREATE TABLE `distribution_store_stat` (
  `stat_id` int(11) NOT NULL AUTO_INCREMENT,
  `commission_amount` decimal(19,2) NOT NULL,
  `distribution_num` bigint(20) NOT NULL,
  `stat_date` datetime NOT NULL,
  `stat_hour` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`stat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `distribution_team_bill`
-- ----------------------------
DROP TABLE IF EXISTS `distribution_team_bill`;
CREATE TABLE `distribution_team_bill` (
  `team_bill_id` int(11) NOT NULL AUTO_INCREMENT,
  `team_bill_sn` int(11) DEFAULT NULL,
  `team_orders_amount` decimal(19,2) DEFAULT NULL,
  `team_create_time` datetime DEFAULT NULL,
  `team_end_time` datetime DEFAULT NULL,
  `team_start_time` datetime DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `member_type` int(11) DEFAULT NULL,
  `team_open_shop_amount` decimal(19,2) DEFAULT NULL COMMENT '礼包商品推广佣金',
  PRIMARY KEY (`team_bill_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `distributor`
-- ----------------------------
DROP TABLE IF EXISTS `distributor`;
CREATE TABLE `distributor` (
  `distributor_id` int(11) NOT NULL AUTO_INCREMENT,
  `account_type` varchar(255) DEFAULT NULL,
  `bank_account_name` varchar(255) DEFAULT NULL,
  `bank_account_number` varchar(255) DEFAULT NULL,
  `bind_email` varchar(255) DEFAULT NULL,
  `bind_phone` varchar(255) DEFAULT NULL,
  `commission_available` decimal(19,2) DEFAULT NULL,
  `commission_freeze` decimal(19,2) DEFAULT NULL,
  `default_favorites_id` int(11) DEFAULT NULL,
  `distribution_amount` decimal(19,2) DEFAULT NULL,
  `distribution_orders_count` int(11) DEFAULT NULL,
  `Id_cart_back_image` varchar(255) DEFAULT NULL,
  `Id_cart_front_image` varchar(255) DEFAULT NULL,
  `Id_cart_hand_image` varchar(255) DEFAULT NULL,
  `id_cart_number` varchar(18) DEFAULT NULL,
  `joinin_time` datetime DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL,
  `member_id` int(11) NOT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  `pay_commission` decimal(19,2) DEFAULT NULL,
  `pay_person` varchar(255) DEFAULT NULL,
  `real_name` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `unpay_commission` decimal(19,2) DEFAULT NULL,
  `back_img` varchar(255) DEFAULT NULL,
  `weixin_number` varchar(100) DEFAULT '推广会员微信号',
  PRIMARY KEY (`distributor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=364 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `distributor_commission_log`
-- ----------------------------
DROP TABLE IF EXISTS `distributor_commission_log`;
CREATE TABLE `distributor_commission_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `admin_name` varchar(255) DEFAULT NULL,
  `available_amount` decimal(19,2) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `distributor_id` int(11) NOT NULL,
  `freeze_amount` decimal(19,2) DEFAULT NULL,
  `member_id` int(11) NOT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  `operation_stage` varchar(50) NOT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `distributor_commission_stats`
-- ----------------------------
DROP TABLE IF EXISTS `distributor_commission_stats`;
CREATE TABLE `distributor_commission_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `distributor_id` int(11) NOT NULL COMMENT '推广商id',
  `member_id` int(11) NOT NULL COMMENT '会员id',
  `commission_amount` decimal(19,2) DEFAULT '0.00' COMMENT '累积收益',
  `month_commission_amount` decimal(19,2) DEFAULT '0.00' COMMENT '前一个月收益',
  `half_year_commission_amount` decimal(19,2) DEFAULT '0.00' COMMENT '前半年收益',
  `year_commission_amount` decimal(19,2) DEFAULT '0.00' COMMENT '前一年收益',
  `un_pay_commission_amount` decimal(19,2) DEFAULT '0.00' COMMENT '待收收益',
  `distribution_orders_count` int(11) DEFAULT '0' COMMENT '累积推广订单数量',
  `distribution_orders_sale` decimal(19,2) DEFAULT '0.00' COMMENT '累积销售额（不含开店礼包商品订单）',
  `month_distribution_orders_sale` decimal(19,2) DEFAULT '0.00' COMMENT '当月销售额（不含礼包，月底清零）',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `distributor_favorites`
-- ----------------------------
DROP TABLE IF EXISTS `distributor_favorites`;
CREATE TABLE `distributor_favorites` (
  `distributor_favorites_id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `distributor_favorites_name` varchar(255) NOT NULL,
  `distributor_id` int(11) DEFAULT NULL,
  `is_default` int(11) DEFAULT NULL,
  PRIMARY KEY (`distributor_favorites_id`)
) ENGINE=InnoDB AUTO_INCREMENT=365 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `distributor_goods`
-- ----------------------------
DROP TABLE IF EXISTS `distributor_goods`;
CREATE TABLE `distributor_goods` (
  `distributor_goods_id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime DEFAULT NULL,
  `common_id` int(11) DEFAULT NULL,
  `distribution_count` int(11) DEFAULT NULL,
  `distributor_favorites_id` int(11) DEFAULT NULL,
  `distributor_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `store_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`distributor_goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3074 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `distributor_goods_visitor_log`
-- ----------------------------
DROP TABLE IF EXISTS `distributor_goods_visitor_log`;
CREATE TABLE `distributor_goods_visitor_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `common_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `distributor_goods_id` int(11) DEFAULT NULL,
  `add_time` datetime DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1956 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `distributor_join`
-- ----------------------------
DROP TABLE IF EXISTS `distributor_join`;
CREATE TABLE `distributor_join` (
  `member_id` int(11) NOT NULL,
  `account_type` varchar(255) DEFAULT NULL,
  `bank_account_name` varchar(255) DEFAULT NULL,
  `bank_account_number` varchar(255) DEFAULT NULL,
  `handle_time` datetime DEFAULT NULL,
  `Id_cart_back_image` varchar(255) DEFAULT NULL,
  `Id_cart_front_image` varchar(255) DEFAULT NULL,
  `Id_cart_hand_image` varchar(255) DEFAULT NULL,
  `id_cart_number` varchar(18) DEFAULT NULL,
  `joinin_message` varchar(255) DEFAULT NULL,
  `joinin_time` datetime DEFAULT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  `pay_person` varchar(255) DEFAULT NULL,
  `real_name` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `distributor_stats`
-- ----------------------------
DROP TABLE IF EXISTS `distributor_stats`;
CREATE TABLE `distributor_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `distributor_id` int(11) NOT NULL COMMENT '推广商id',
  `member_id` int(11) NOT NULL COMMENT '会员id',
  `commission_amount` decimal(19,2) DEFAULT '0.00' COMMENT '累积收益',
  `un_pay_commission_amount` decimal(19,2) DEFAULT '0.00' COMMENT '待收收益',
  `distribution_orders_sale` decimal(19,2) DEFAULT '0.00' COMMENT '累积销售额（不含开店礼包商品订单）',
  `month_distribution_orders_sale` decimal(19,2) DEFAULT '0.00' COMMENT '当月销售额（不含礼包，月底清零）',
  `invitation_distributor_count` bigint(20) DEFAULT '0' COMMENT '直邀店主数量',
  `visit_count` bigint(20) DEFAULT '0' COMMENT '今日访问量（分享商品被打开）',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
--  Table structure for `distributor_stats_log`
-- ----------------------------
DROP TABLE IF EXISTS `distributor_stats_log`;
CREATE TABLE `distributor_stats_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `distributor_id` int(11) NOT NULL DEFAULT '0' COMMENT '推广商id',
  `trigger_type` int(6) NOT NULL COMMENT '触发统计类型',
  `trigger_type_state` int(6) NOT NULL COMMENT '触发统计类型的标识，对应不同的类型会有不同的含义',
  `distribution_orders_id` int(11) DEFAULT '0' COMMENT '金额统计 推广的订单id',
  `member_id` int(11) DEFAULT '0' COMMENT '直邀店主统计 会员id',
  `visitor_log_id` int(11) DEFAULT '0' COMMENT '访问记录统计 分销商品表访问记录id',
  `state` int(2) DEFAULT '0' COMMENT '统计标识 0-未统计/统计失败 1-统计成功',
  `msg` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `amount_change` varchar(200) DEFAULT NULL COMMENT '金额变动记录',
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
--  Table structure for `distributor_up_log`
-- ----------------------------
DROP TABLE IF EXISTS `distributor_up_log`;
CREATE TABLE `distributor_up_log` (
  `distributor_up_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `is_super` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `up_member_id` int(11) DEFAULT NULL,
  `up_type` int(11) DEFAULT NULL,
  `add_time` datetime DEFAULT NULL,
  `up_amount` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`distributor_up_log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `dw_express`
-- ----------------------------
DROP TABLE IF EXISTS `dw_express`;
CREATE TABLE `dw_express` (
  `dw_express_id` int(11) NOT NULL AUTO_INCREMENT,
  `ship_sn` varchar(50) NOT NULL,
  `dely_gb` varchar(50) NOT NULL,
  `wb_no` varchar(50) NOT NULL,
  `dw_order_no` varchar(50) NOT NULL,
  `item_code` varchar(255) DEFAULT NULL,
  `sku_code` varchar(255) DEFAULT NULL,
  `code_name` varchar(255) DEFAULT NULL,
  `code_sname` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`dw_express_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `dw_logistics`
-- ----------------------------
DROP TABLE IF EXISTS `dw_logistics`;
CREATE TABLE `dw_logistics` (
  `code_mgroup` varchar(255) NOT NULL,
  `code_name` varchar(255) DEFAULT NULL,
  `code_sname` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `kdn_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`code_mgroup`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `dw_member_update_log`
-- ----------------------------
DROP TABLE IF EXISTS `dw_member_update_log`;
CREATE TABLE `dw_member_update_log` (
  `update_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_create_time` datetime DEFAULT NULL,
  `update_flag` int(11) DEFAULT '2',
  `update_member_id` int(11) DEFAULT '0',
  `superior_member_id` int(11) DEFAULT '0',
  `update_type` int(11) DEFAULT '1',
  PRIMARY KEY (`update_log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `dw_push_log`
-- ----------------------------
DROP TABLE IF EXISTS `dw_push_log`;
CREATE TABLE `dw_push_log` (
  `push_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `push_content` varchar(2000) DEFAULT NULL,
  `push_create_time` datetime DEFAULT NULL,
  `push_flag` int(11) DEFAULT '0',
  `push_type` int(11) DEFAULT '0' COMMENT '1.退款时间推送,2单品退款推送3-订单推送4-换货推送5-取消退货推送6-pop推送7-拒收取消推送8-发货仓查询推送订单9-当前状态查询推送10-推送订单完成时间',
  `push_params` varchar(2000) DEFAULT NULL,
  `orders_sn` varchar(64) DEFAULT NULL COMMENT '订单编号',
  `return_content` varchar(2152) DEFAULT NULL COMMENT '返回内容',
  `return_time` datetime DEFAULT NULL COMMENT '返回时间',
  PRIMARY KEY (`push_log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6376 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `dw_run_book`
-- ----------------------------
DROP TABLE IF EXISTS `dw_run_book`;
CREATE TABLE `dw_run_book` (
  `run_book_id` int(11) NOT NULL AUTO_INCREMENT,
  `orders_sn` bigint(20) DEFAULT '0',
  `run_book_state` int(11) DEFAULT '0',
  `run_book_type` int(11) DEFAULT '0',
  `run_book_params` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`run_book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `eagle_award_log`
-- ----------------------------
DROP TABLE IF EXISTS `eagle_award_log`;
CREATE TABLE `eagle_award_log` (
  `eagle_award_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `is_super` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `sup_member_id` int(11) DEFAULT NULL,
  `do_time` datetime DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `all_amount` decimal(19,2) DEFAULT NULL,
  `award_amount` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`eagle_award_log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `email_code_log`
-- ----------------------------
DROP TABLE IF EXISTS `email_code_log`;
CREATE TABLE `email_code_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime DEFAULT NULL,
  `auth_code` varchar(50) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `log_ip` varchar(50) DEFAULT NULL,
  `send_type` int(11) DEFAULT NULL,
  `used_state` int(11) DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `emcee_info`
-- ----------------------------
DROP TABLE IF EXISTS `emcee_info`;
CREATE TABLE `emcee_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(14) NOT NULL COMMENT '主持人名称',
  `resume` varchar(14) NOT NULL COMMENT '个人简介',
  `photo_url` varchar(256) DEFAULT NULL COMMENT '照片url地址',
  `status` tinyint(4) NOT NULL COMMENT '状态',
  `create_user_id` int(11) NOT NULL COMMENT '创建人ID',
  `create_user_name` varchar(64) DEFAULT NULL COMMENT '创建人名称',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COMMENT='主持人信息表';

-- ----------------------------
--  Table structure for `emcee_user_relation`
-- ----------------------------
DROP TABLE IF EXISTS `emcee_user_relation`;
CREATE TABLE `emcee_user_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `emcee_id` int(11) NOT NULL COMMENT '主持人ID',
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='主持人用户绑定关系表';

-- ----------------------------
--  Table structure for `evaluate_goods`
-- ----------------------------
DROP TABLE IF EXISTS `evaluate_goods`;
CREATE TABLE `evaluate_goods` (
  `evaluate_id` int(11) NOT NULL AUTO_INCREMENT,
  `common_id` int(11) DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  `content_again` varchar(500) DEFAULT NULL,
  `evaluate_num` int(11) DEFAULT NULL,
  `evaluate_time` datetime DEFAULT NULL,
  `evaluate_time_again` datetime DEFAULT NULL,
  `explain_content` varchar(500) DEFAULT NULL,
  `explain_content_again` varchar(500) DEFAULT NULL,
  `goods_full_specs` varchar(255) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `goods_image` varchar(255) DEFAULT NULL,
  `goods_name` varchar(255) DEFAULT NULL,
  `has_image` int(11) DEFAULT NULL,
  `images` varchar(500) DEFAULT NULL,
  `images_again` varchar(500) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  `orders_id` int(11) DEFAULT NULL,
  `orders_sn` bigint(20) DEFAULT NULL,
  `orders_type` int(11) DEFAULT NULL,
  `scores` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `store_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`evaluate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1306 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `evaluate_store`
-- ----------------------------
DROP TABLE IF EXISTS `evaluate_store`;
CREATE TABLE `evaluate_store` (
  `evaluate_id` int(11) NOT NULL AUTO_INCREMENT,
  `delivery_credit` int(11) DEFAULT NULL,
  `description_credit` int(11) DEFAULT NULL,
  `evaluate_time` datetime DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  `orders_id` int(11) DEFAULT NULL,
  `orders_sn` bigint(20) DEFAULT NULL,
  `orders_type` int(11) DEFAULT NULL,
  `service_credit` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `store_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`evaluate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1233 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `exchange_orders`
-- ----------------------------
DROP TABLE IF EXISTS `exchange_orders`;
CREATE TABLE `exchange_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `exchange_sn` varchar(32) NOT NULL COMMENT '换货单号',
  `exchange_user_name` varchar(64) DEFAULT NULL COMMENT '申请换货人',
  `orders_id` int(11) NOT NULL COMMENT '订单ID',
  `orders_sn` varchar(32) NOT NULL COMMENT '订单号',
  `goods_common_id` int(11) NOT NULL COMMENT '货物ID',
  `goods_image` varchar(256) DEFAULT NULL COMMENT '图片名称',
  `goods_name` varchar(256) DEFAULT NULL COMMENT '货物名称',
  `exchange_amount` double(16,2) NOT NULL COMMENT '换货金额',
  `exchange_num` int(11) NOT NULL COMMENT '换货数量',
  `ship_id` int(11) DEFAULT NULL COMMENT '物流公司ID',
  `ship_code` varchar(32) DEFAULT NULL COMMENT '物流公司编码',
  `ship_sn` varchar(64) DEFAULT NULL COMMENT '物流单号',
  `ship_info` varchar(2152) DEFAULT NULL COMMENT '物流信息',
  `ship_time` datetime DEFAULT NULL COMMENT '物流单时间',
  `state` int(4) NOT NULL COMMENT '换货单状态1-换货中2-换货完成',
  `exchange_note` varchar(512) DEFAULT NULL COMMENT '备注信息',
  `exchange_reason` varchar(256) DEFAULT NULL COMMENT '换货原因',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `index_orders_id` (`orders_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COMMENT='换货表';

-- ----------------------------
--  Table structure for `exp_points_log`
-- ----------------------------
DROP TABLE IF EXISTS `exp_points_log`;
CREATE TABLE `exp_points_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `operation_stage` varchar(255) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6223 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `favorites_goods`
-- ----------------------------
DROP TABLE IF EXISTS `favorites_goods`;
CREATE TABLE `favorites_goods` (
  `favorites_id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `common_id` int(11) DEFAULT NULL,
  `fav_goods_price` decimal(19,2) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `set_top` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`favorites_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `favorites_store`
-- ----------------------------
DROP TABLE IF EXISTS `favorites_store`;
CREATE TABLE `favorites_store` (
  `favorites_id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `set_top` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`favorites_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `forbid_area`
-- ----------------------------
DROP TABLE IF EXISTS `forbid_area`;
CREATE TABLE `forbid_area` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `area_id` int(11) NOT NULL COMMENT '区域主键ID',
  `area_code` varchar(11) NOT NULL COMMENT '区域编码',
  `area_name` varchar(256) DEFAULT NULL COMMENT '区域名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COMMENT='禁运区域';

-- ----------------------------
--  Table structure for `format_template`
-- ----------------------------
DROP TABLE IF EXISTS `format_template`;
CREATE TABLE `format_template` (
  `format_id` int(11) NOT NULL AUTO_INCREMENT,
  `format_content` longtext,
  `format_mobile_content` longtext,
  `format_name` varchar(10) DEFAULT NULL,
  `format_site` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`format_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `freight_area`
-- ----------------------------
DROP TABLE IF EXISTS `freight_area`;
CREATE TABLE `freight_area` (
  `freight_area_id` int(11) NOT NULL AUTO_INCREMENT,
  `area_id` longtext,
  `area_name` longtext,
  `freight_id` int(11) DEFAULT NULL,
  `item1` decimal(19,2) DEFAULT NULL,
  `item2` decimal(19,2) DEFAULT NULL,
  `price1` decimal(19,2) DEFAULT NULL,
  `price2` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`freight_area_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `freight_template`
-- ----------------------------
DROP TABLE IF EXISTS `freight_template`;
CREATE TABLE `freight_template` (
  `freight_id` int(11) NOT NULL AUTO_INCREMENT,
  `area_id` varchar(1000) DEFAULT NULL,
  `calc_type` varchar(255) DEFAULT NULL,
  `edit_time` datetime DEFAULT NULL,
  `freight_free` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`freight_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `gift`
-- ----------------------------
DROP TABLE IF EXISTS `gift`;
CREATE TABLE `gift` (
  `gift_id` int(11) NOT NULL AUTO_INCREMENT,
  `common_id` int(11) DEFAULT NULL,
  `gift_num` int(11) DEFAULT NULL,
  `gift_type` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `item_common_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`gift_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `gmall_bank`
-- ----------------------------
DROP TABLE IF EXISTS `gmall_bank`;
CREATE TABLE `gmall_bank` (
  `bank_id` int(11) NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(60) NOT NULL,
  `bank_order` int(10) NOT NULL,
  PRIMARY KEY (`bank_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `goods`
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `goods_id` int(11) NOT NULL AUTO_INCREMENT,
  `app_price0` decimal(19,2) DEFAULT NULL,
  `app_price1` decimal(19,2) DEFAULT NULL,
  `app_price2` decimal(19,2) DEFAULT NULL,
  `app_usable` int(11) DEFAULT NULL,
  `color_id` int(11) DEFAULT NULL,
  `common_id` int(11) DEFAULT NULL,
  `goods_full_specs` varchar(255) DEFAULT NULL,
  `goods_price0` decimal(19,2) DEFAULT NULL,
  `goods_price1` decimal(19,2) DEFAULT NULL,
  `goods_price2` decimal(19,2) DEFAULT NULL,
  `goods_serial` varchar(255) DEFAULT NULL,
  `goods_specs` varchar(255) DEFAULT NULL,
  `goods_storage` int(11) DEFAULT NULL,
  `group_price` decimal(19,2) DEFAULT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `is_gift` int(11) DEFAULT NULL,
  `is_group` int(11) DEFAULT NULL,
  `limit_amount` int(11) DEFAULT NULL,
  `promotion_end_time` datetime DEFAULT NULL,
  `promotion_id` int(11) DEFAULT NULL,
  `promotion_start_time` datetime DEFAULT NULL,
  `promotion_state` int(11) DEFAULT NULL,
  `promotion_title` varchar(10) DEFAULT NULL,
  `promotion_type` int(11) DEFAULT NULL,
  `spec_value_ids` varchar(255) DEFAULT NULL,
  `web_price0` decimal(19,2) DEFAULT NULL,
  `web_price1` decimal(19,2) DEFAULT NULL,
  `web_price2` decimal(19,2) DEFAULT NULL,
  `web_usable` int(11) DEFAULT NULL,
  `wechat_price0` decimal(19,2) DEFAULT NULL,
  `wechat_price1` decimal(19,2) DEFAULT NULL,
  `wechat_price2` decimal(19,2) DEFAULT NULL,
  `wechat_usable` int(11) DEFAULT NULL,
  `online_pay_price` decimal(19,2) DEFAULT '0.00',
  `video_name` varchar(255) DEFAULT NULL,
  `video_cos_files_id` varchar(255) DEFAULT NULL,
  `dw_specsid` int(11) DEFAULT '0',
  `dw_id` int(11) DEFAULT '0',
  `gave_xf` decimal(19,2) DEFAULT '0.00',
  `yg_price` decimal(19,2) DEFAULT '0.00',
  `staff_price` decimal(19,2) DEFAULT '0.00',
  PRIMARY KEY (`goods_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `goods_attribute`
-- ----------------------------
DROP TABLE IF EXISTS `goods_attribute`;
CREATE TABLE `goods_attribute` (
  `common_id` int(11) NOT NULL,
  `attribute_value_id` int(11) NOT NULL,
  PRIMARY KEY (`common_id`,`attribute_value_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `goods_browse`
-- ----------------------------
DROP TABLE IF EXISTS `goods_browse`;
CREATE TABLE `goods_browse` (
  `browse_id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime DEFAULT NULL,
  `common_id` int(11) DEFAULT NULL,
  `goods_categoryid` int(11) DEFAULT NULL,
  `goods_categoryid_1` int(11) DEFAULT NULL,
  `goods_categoryid_2` int(11) DEFAULT NULL,
  `goods_categoryid_3` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`browse_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `goods_common`
-- ----------------------------
DROP TABLE IF EXISTS `goods_common`;
CREATE TABLE `goods_common` (
  `common_id` int(11) NOT NULL AUTO_INCREMENT,
  `app_price0` decimal(19,2) DEFAULT NULL,
  `app_price1` decimal(19,2) DEFAULT NULL,
  `app_price2` decimal(19,2) DEFAULT NULL,
  `app_usable` int(11) DEFAULT NULL,
  `area_id_1` int(11) DEFAULT NULL,
  `area_id_2` int(11) DEFAULT NULL,
  `area_info` varchar(255) DEFAULT NULL,
  `batch_num0` int(11) DEFAULT NULL,
  `batch_num1` int(11) DEFAULT NULL,
  `batch_num2` int(11) DEFAULT NULL,
  `batch_price0` decimal(19,2) DEFAULT NULL,
  `batch_price1` decimal(19,2) DEFAULT NULL,
  `batch_price2` decimal(19,2) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `category_id_1` int(11) DEFAULT NULL,
  `category_id_2` int(11) DEFAULT NULL,
  `category_id_3` int(11) DEFAULT NULL,
  `contract_item_1` int(11) DEFAULT NULL,
  `contract_item_10` int(11) DEFAULT NULL,
  `contract_item_2` int(11) DEFAULT NULL,
  `contract_item_3` int(11) DEFAULT NULL,
  `contract_item_4` int(11) DEFAULT NULL,
  `contract_item_5` int(11) DEFAULT NULL,
  `contract_item_6` int(11) DEFAULT NULL,
  `contract_item_7` int(11) DEFAULT NULL,
  `contract_item_8` int(11) DEFAULT NULL,
  `contract_item_9` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `evaluate_num` int(11) DEFAULT NULL,
  `foreign_tax_rate` decimal(19,2) DEFAULT NULL,
  `freight_template_id` int(11) DEFAULT NULL,
  `freight_volume` decimal(19,2) DEFAULT NULL,
  `freight_weight` decimal(19,2) DEFAULT NULL,
  `goods_click` int(11) DEFAULT NULL,
  `goods_favorite` int(11) DEFAULT NULL,
  `goods_freight` decimal(19,2) DEFAULT NULL,
  `goods_modal` int(11) DEFAULT NULL,
  `goods_name` varchar(50) DEFAULT NULL,
  `goods_rate` int(11) DEFAULT NULL,
  `goods_sale_num` int(11) DEFAULT NULL,
  `goods_spec_names` varchar(255) DEFAULT NULL,
  `goods_spec_value_json` longtext,
  `goods_state` int(11) DEFAULT NULL,
  `goods_verify` int(11) DEFAULT NULL,
  `goods_check_status` int(11) DEFAULT '1' COMMENT '商品认证审核状态1-待审核2-审核通过3-审核拒绝',
  `goods_check_refused` varchar(500) DEFAULT NULL COMMENT '商品资质审核拒绝原因',
  `group_id` int(11) DEFAULT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `is_commend` int(11) DEFAULT NULL,
  `is_distribution` int(11) DEFAULT NULL,
  `is_gift` int(11) DEFAULT NULL,
  `is_points_goods` int(11) DEFAULT NULL,
  `jingle` varchar(140) DEFAULT NULL,
  `join_big_sale` int(11) DEFAULT NULL,
  `promotion_discount_rate` double DEFAULT NULL,
  `promotion_end_time` datetime DEFAULT NULL,
  `promotion_id` int(11) DEFAULT NULL,
  `promotion_start_time` datetime DEFAULT NULL,
  `promotion_state` int(11) DEFAULT NULL,
  `promotion_type` int(11) DEFAULT NULL,
  `search_boost` int(11) DEFAULT NULL,
  `spec_json` longtext,
  `state_remark` varchar(255) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `unit_name` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `verify_remark` varchar(255) DEFAULT NULL,
  `virtual_overdue_refund` int(11) DEFAULT NULL,
  `web_price0` decimal(19,2) DEFAULT NULL,
  `web_price1` decimal(19,2) DEFAULT NULL,
  `web_price2` decimal(19,2) DEFAULT NULL,
  `web_usable` int(11) DEFAULT NULL,
  `wechat_price0` decimal(19,2) DEFAULT NULL,
  `wechat_price1` decimal(19,2) DEFAULT NULL,
  `wechat_price2` decimal(19,2) DEFAULT NULL,
  `wechat_usable` int(11) DEFAULT NULL,
  `buy_limit` int(11) NOT NULL DEFAULT '0',
  `online_pay_price` decimal(19,2) DEFAULT '0.00',
  `video_name` varchar(255) DEFAULT NULL,
  `video_cos_files_id` varchar(255) DEFAULT NULL,
  `dw_id` int(11) DEFAULT '0',
  `dw_invoice` int(11) DEFAULT '0',
  `seven_refund` int(11) DEFAULT '0',
  `staff_price` decimal(19,2) DEFAULT '0.00',
  `is_store_up` int(11) DEFAULT '0',
  `commission_rate` int(11) DEFAULT '0',
  `parent_common_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`common_id`) USING BTREE,
  KEY `uniall` (`store_id`,`goods_state`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=88775 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `goods_common_body`
-- ----------------------------
DROP TABLE IF EXISTS `goods_common_body`;
CREATE TABLE `goods_common_body` (
  `common_id` int(11) NOT NULL,
  `format_bottom` int(11) DEFAULT NULL,
  `format_top` int(11) DEFAULT NULL,
  `goods_body` longtext,
  `mobile_body` longtext,
  PRIMARY KEY (`common_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `goods_custom`
-- ----------------------------
DROP TABLE IF EXISTS `goods_custom`;
CREATE TABLE `goods_custom` (
  `custom_id` int(11) NOT NULL,
  `common_id` int(11) NOT NULL,
  `custom_value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`custom_id`,`common_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `goods_gift_introduction`
-- ----------------------------
DROP TABLE IF EXISTS `goods_gift_introduction`;
CREATE TABLE `goods_gift_introduction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dw_id` int(11) NOT NULL COMMENT '赠品商品的主品货号',
  `dw_promotion_id` bigint(20) NOT NULL COMMENT 'dw促销id',
  `introduction` varchar(500) NOT NULL DEFAULT '' COMMENT '赠品介绍文案',
  `begin_time` datetime DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '赠品信息更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dw_id_dw_promotion_id` (`dw_id`,`dw_promotion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `goods_image`
-- ----------------------------
DROP TABLE IF EXISTS `goods_image`;
CREATE TABLE `goods_image` (
  `image_id` int(11) NOT NULL AUTO_INCREMENT,
  `color_id` int(11) DEFAULT NULL,
  `common_id` int(11) DEFAULT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `image_sort` int(11) DEFAULT NULL,
  `is_default` int(11) DEFAULT NULL,
  `first_default` int(4) NOT NULL DEFAULT '0' COMMENT '首张展示图',
  PRIMARY KEY (`image_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `goods_rate`
-- ----------------------------
DROP TABLE IF EXISTS `goods_rate`;
CREATE TABLE `goods_rate` (
  `goods_id` int(11) NOT NULL,
  `common_id` int(11) DEFAULT NULL,
  `commission_rate` int(11) DEFAULT '0',
  `category_commission_rate` int(11) DEFAULT '0',
  PRIMARY KEY (`goods_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `goods_recommond`
-- ----------------------------
DROP TABLE IF EXISTS `goods_recommond`;
CREATE TABLE `goods_recommond` (
  `recommond_id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime NOT NULL,
  `category_id` int(11) NOT NULL,
  `category_text` varchar(255) NOT NULL,
  `common_id` int(11) NOT NULL,
  `goods_category_id` int(11) DEFAULT NULL,
  `goods_category_id_1` int(11) DEFAULT NULL,
  `goods_category_id_2` int(11) DEFAULT NULL,
  `goods_category_id_3` int(11) DEFAULT NULL,
  `goods_image_name` varchar(255) DEFAULT NULL,
  `goods_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`recommond_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `goods_spec_image`
-- ----------------------------
DROP TABLE IF EXISTS `goods_spec_image`;
CREATE TABLE `goods_spec_image` (
  `spec_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `common_id` int(11) DEFAULT NULL COMMENT '商品SPU主键',
  `image_name` varchar(255) DEFAULT NULL COMMENT '特卖图片路径',
  PRIMARY KEY (`spec_image_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2308 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `goods_video`
-- ----------------------------
DROP TABLE IF EXISTS `goods_video`;
CREATE TABLE `goods_video` (
  `video_id` int(11) NOT NULL AUTO_INCREMENT,
  `common_id` int(11) DEFAULT NULL,
  `video_name` varchar(255) DEFAULT NULL,
  `video_sort` int(11) DEFAULT NULL,
  `video_cos_files_id` varchar(255) DEFAULT NULL,
  `is_default` int(11) DEFAULT NULL,
  PRIMARY KEY (`video_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7815 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `group_log`
-- ----------------------------
DROP TABLE IF EXISTS `group_log`;
CREATE TABLE `group_log` (
  `gl_id` int(11) NOT NULL AUTO_INCREMENT,
  `buy_num` int(11) DEFAULT NULL,
  `buy_time` datetime DEFAULT NULL,
  `go_id` int(11) DEFAULT NULL,
  `member_avatar` varchar(255) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`gl_id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `group_open`
-- ----------------------------
DROP TABLE IF EXISTS `group_open`;
CREATE TABLE `group_open` (
  `go_id` int(11) NOT NULL AUTO_INCREMENT,
  `common_id` int(11) DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `finish_time` datetime DEFAULT NULL,
  `go_state` int(11) DEFAULT NULL,
  `goods_image` varchar(255) DEFAULT NULL,
  `goods_name` varchar(255) DEFAULT NULL,
  `goods_price` decimal(19,2) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `group_price` decimal(19,2) DEFAULT NULL,
  `joined_num` int(11) DEFAULT NULL,
  `require_num` int(11) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `is_push` int(11) DEFAULT '0',
  PRIMARY KEY (`go_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `groups`
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `buy_limit_num` int(11) DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `group_explain` varchar(255) DEFAULT NULL,
  `group_game_rule` varchar(255) DEFAULT NULL,
  `group_joined_num` int(11) DEFAULT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `group_open_virtual` int(11) DEFAULT NULL,
  `group_require_num` int(11) DEFAULT NULL,
  `group_state` int(11) DEFAULT NULL,
  `group_title` varchar(255) DEFAULT NULL,
  `group_virtual_time` datetime DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `hot_search`
-- ----------------------------
DROP TABLE IF EXISTS `hot_search`;
CREATE TABLE `hot_search` (
  `hot_id` int(11) NOT NULL AUTO_INCREMENT,
  `hot_name` varchar(30) DEFAULT NULL,
  `hot_value` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`hot_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `im_link_man`
-- ----------------------------
DROP TABLE IF EXISTS `im_link_man`;
CREATE TABLE `im_link_man` (
  `link_id` int(11) NOT NULL AUTO_INCREMENT,
  `common_id` int(11) DEFAULT NULL,
  `link_man_avatar` varchar(100) DEFAULT NULL,
  `link_man_id` int(11) DEFAULT NULL,
  `link_man_name` varchar(100) DEFAULT NULL,
  `link_man_store_id` int(11) DEFAULT NULL,
  `link_man_store_name` varchar(255) DEFAULT NULL,
  `link_state` int(11) DEFAULT NULL,
  `member_del` int(11) DEFAULT NULL,
  `seller_del` int(11) DEFAULT NULL,
  `user_avatar` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `user_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`link_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `im_message`
-- ----------------------------
DROP TABLE IF EXISTS `im_message`;
CREATE TABLE `im_message` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` bigint(20) DEFAULT NULL,
  `from_user_id` int(11) DEFAULT NULL,
  `from_user_name` varchar(255) DEFAULT NULL,
  `from_user_type` int(11) DEFAULT NULL,
  `message_content` varchar(2000) DEFAULT NULL,
  `message_state` int(11) DEFAULT NULL,
  `message_state_android` int(11) DEFAULT NULL,
  `message_state_ios` int(11) DEFAULT NULL,
  `message_state_wap` int(11) DEFAULT NULL,
  `message_type` int(11) DEFAULT NULL,
  `to_user_id` int(11) DEFAULT NULL,
  `to_user_name` varchar(255) DEFAULT NULL,
  `to_user_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `index_category_nav`
-- ----------------------------
DROP TABLE IF EXISTS `index_category_nav`;
CREATE TABLE `index_category_nav` (
  `category_id` int(11) NOT NULL,
  `category_nav_adv_json` longtext,
  `category_nav_image` longtext,
  `category_nav_update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `index_floor`
-- ----------------------------
DROP TABLE IF EXISTS `index_floor`;
CREATE TABLE `index_floor` (
  `floor_id` int(11) NOT NULL AUTO_INCREMENT,
  `floor_color_name` varchar(255) DEFAULT NULL,
  `floor_name` varchar(255) DEFAULT NULL,
  `floor_nav_image` varchar(255) DEFAULT NULL,
  `floor_nav_text` varchar(255) DEFAULT NULL,
  `floor_show` int(11) DEFAULT NULL,
  `floor_sort` int(11) DEFAULT NULL,
  `floor_template_name` varchar(255) DEFAULT NULL,
  `floor_type` varchar(255) DEFAULT NULL,
  `floor_update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`floor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `index_floor_item`
-- ----------------------------
DROP TABLE IF EXISTS `index_floor_item`;
CREATE TABLE `index_floor_item` (
  `floor_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `floor_id` int(11) DEFAULT NULL,
  `floor_item_json` longtext,
  `floor_item_key` varchar(255) DEFAULT NULL,
  `floor_item_name` varchar(255) DEFAULT NULL,
  `floor_item_sort` int(11) DEFAULT NULL,
  `floor_item_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`floor_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `invoice`
-- ----------------------------
DROP TABLE IF EXISTS `invoice`;
CREATE TABLE `invoice` (
  `invoice_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`invoice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ip_white_list`
-- ----------------------------
DROP TABLE IF EXISTS `ip_white_list`;
CREATE TABLE `ip_white_list` (
  `id` int(32) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ip` varchar(255) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `live_room`
-- ----------------------------
DROP TABLE IF EXISTS `live_room`;
CREATE TABLE `live_room` (
  `room_id` int(32) unsigned NOT NULL AUTO_INCREMENT COMMENT '直播主键',
  `room_title` varchar(256) NOT NULL COMMENT '直播间标题',
  `room_desc` varchar(500) DEFAULT NULL COMMENT '直播间描述/简介',
  `live_image` varchar(255) DEFAULT NULL COMMENT '直播封面图',
  `chatroom_id` varchar(30) DEFAULT NULL COMMENT '聊天室ID',
  `push_url` varchar(256) DEFAULT NULL COMMENT '推流地址',
  `pull_url` varchar(256) DEFAULT NULL COMMENT 'HTTP拉流地址',
  `pull_url2` varchar(255) DEFAULT NULL,
  `pull_rtmp_url` varchar(256) DEFAULT NULL COMMENT 'RTMP拉流地址',
  `video_url` varchar(255) DEFAULT NULL COMMENT '录播视频url',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '直播状态：0-初始化 1-直播中 2-已结束',
  `live_type` tinyint(2) unsigned NOT NULL DEFAULT '1' COMMENT '直播类型：1-超级品牌日 2-小品星推荐',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `start_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '直播开始时间',
  `end_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '直播结束时间',
  `member_id` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `watch_num` int(11) DEFAULT '0' COMMENT '观看数',
  `chatroom_status` int(2) DEFAULT '0' COMMENT '聊天室状态 0:正常 1:解散',
  PRIMARY KEY (`room_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `live_room_goods`
-- ----------------------------
DROP TABLE IF EXISTS `live_room_goods`;
CREATE TABLE `live_room_goods` (
  `id` int(32) unsigned NOT NULL AUTO_INCREMENT COMMENT '直播主键',
  `live_room_id` int(11) DEFAULT NULL,
  `common_id` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `live_room_slider`
-- ----------------------------
DROP TABLE IF EXISTS `live_room_slider`;
CREATE TABLE `live_room_slider` (
  `live_room_slider_id` int(11) NOT NULL AUTO_INCREMENT,
  `image_json` longtext,
  PRIMARY KEY (`live_room_slider_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `material`
-- ----------------------------
DROP TABLE IF EXISTS `material`;
CREATE TABLE `material` (
  `material_id` int(11) NOT NULL AUTO_INCREMENT,
  `common_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `images` varchar(1000) DEFAULT NULL,
  `material_body` longtext,
  `create_time` datetime DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `video_id` varchar(255) DEFAULT NULL,
  `material_type` int(2) DEFAULT NULL COMMENT '0为图片素材 ,1为视频素材',
  `material_share_type` int(2) DEFAULT '0' COMMENT '素材类型(0商家  1用户)',
  `is_hot` int(2) DEFAULT '1' COMMENT '是否热门(0是  1否)',
  `video_image` varchar(255) DEFAULT '' COMMENT '视频针图片',
  `is_visible` int(2) DEFAULT '0' COMMENT '是否可见(0全部可见，1自己可见)',
  `share_num` int(11) NOT NULL DEFAULT '0' COMMENT '发圈数量',
  `video_album_files_id` int(11) NOT NULL DEFAULT '0' COMMENT 'video_album_files表主键',
  `is_del` int(11) NOT NULL DEFAULT '1' COMMENT '是否删除：0是 1否 ',
  `is_audit` int(2) DEFAULT '1' COMMENT '是否审核(0:审核  1:未审核)',
  PRIMARY KEY (`material_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=443 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `material_image`
-- ----------------------------
DROP TABLE IF EXISTS `material_image`;
CREATE TABLE `material_image` (
  `material_image_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `material_id` int(11) NOT NULL DEFAULT '0' COMMENT '素材ID',
  `url` varchar(500) NOT NULL DEFAULT '' COMMENT '图片地址',
  `width` varchar(500) NOT NULL DEFAULT '' COMMENT '图片宽度',
  `height` varchar(500) NOT NULL DEFAULT '' COMMENT '图片高度',
  PRIMARY KEY (`material_image_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=968 DEFAULT CHARSET=utf8 COMMENT='发圈素材图片';

-- ----------------------------
--  Table structure for `material_member_collect`
-- ----------------------------
DROP TABLE IF EXISTS `material_member_collect`;
CREATE TABLE `material_member_collect` (
  `collect_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL COMMENT '会员id',
  `material_id` int(11) NOT NULL COMMENT '素材id',
  `is_collect` int(11) NOT NULL DEFAULT '1' COMMENT '是否关注：1 是  2否',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '首次关注时间',
  PRIMARY KEY (`collect_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='素材-会员收藏关系';

-- ----------------------------
--  Table structure for `material_voucher`
-- ----------------------------
DROP TABLE IF EXISTS `material_voucher`;
CREATE TABLE `material_voucher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `template_id` int(11) NOT NULL DEFAULT '0' COMMENT '模板id',
  `template_title` varchar(50) NOT NULL DEFAULT '' COMMENT '模板标题',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '状态0 已选择  1已删除',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='素材礼包';

-- ----------------------------
--  Table structure for `member`
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `member_id` int(11) NOT NULL AUTO_INCREMENT,
  `address_areaid` int(11) DEFAULT NULL,
  `address_areainfo` varchar(500) DEFAULT NULL,
  `address_cityid` int(11) DEFAULT NULL,
  `address_provinceid` int(11) DEFAULT NULL,
  `allow_buy` int(11) DEFAULT NULL,
  `allow_talk` int(11) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `email_isbind` int(11) DEFAULT NULL,
  `experience_points` int(11) DEFAULT NULL,
  `id_card` varchar(255) DEFAULT NULL,
  `is_distributor` int(11) DEFAULT NULL,
  `last_login_ip` varchar(50) DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL,
  `login_ip` varchar(50) DEFAULT NULL,
  `login_num` int(11) DEFAULT NULL,
  `login_time` datetime DEFAULT NULL,
  `member_name` varchar(20) NOT NULL,
  `member_points` int(11) DEFAULT NULL,
  `member_pwd` varchar(500) NOT NULL,
  `member_sex` int(11) DEFAULT NULL,
  `mobile` varchar(50) NOT NULL,
  `mobile_isbind` int(11) DEFAULT NULL,
  `modify_num` int(11) DEFAULT NULL,
  `pay_pwd` varchar(50) DEFAULT NULL,
  `predeposit_available` decimal(19,2) DEFAULT NULL,
  `predeposit_freeze` decimal(19,2) DEFAULT NULL,
  `qq_openid` varchar(100) DEFAULT NULL,
  `qq_userinfo` varchar(1000) DEFAULT NULL,
  `register_time` datetime NOT NULL,
  `state` int(11) DEFAULT NULL,
  `true_name` varchar(20) DEFAULT NULL,
  `weixin_mp_openid` varchar(100) DEFAULT NULL,
  `weixin_unionid` varchar(100) DEFAULT NULL,
  `weixin_userinfo` varchar(1000) DEFAULT NULL,
  `dw_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_staff` int(11) DEFAULT '0',
  `device_token` varchar(255) DEFAULT NULL,
  `member_type` int(11) DEFAULT '0',
  `superior_id` int(11) DEFAULT '0',
  `charge_id` int(11) DEFAULT '0',
  `manager_id` int(11) DEFAULT '0',
  `invitation_code` varchar(60) DEFAULT NULL,
  `month_amount` decimal(19,2) DEFAULT '0.00',
  `half_year_amount` decimal(19,2) DEFAULT '0.00',
  `year_amount` decimal(19,2) DEFAULT '0.00',
  `all_amount` decimal(19,2) DEFAULT '0.00',
  `team_number` int(11) DEFAULT '0',
  `charge_name` varchar(60) DEFAULT NULL,
  `manager_name` varchar(60) DEFAULT NULL,
  `superior_name` varchar(60) DEFAULT NULL,
  `real_name` varchar(60) DEFAULT NULL COMMENT '工猫认证实名',
  `is_novice` int(11) NOT NULL DEFAULT '0' COMMENT '是否新手(是否下过单)  0:新手 , 1:非新手',
  `is_register_chatroom` int(2) DEFAULT '0' COMMENT '是否注册腾讯云聊天室 0：否 1：是',
  `is_silence_chatroom` int(2) DEFAULT '0' COMMENT '是否禁言聊天室 0：否 1：是',
  `is_silence_count` int(2) DEFAULT '0' COMMENT '禁言聊天室次数',
  PRIMARY KEY (`member_id`),
  UNIQUE KEY `UK_gwo2bqx6j18klv1e8ql503n61` (`member_name`),
  UNIQUE KEY `mobile` (`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `member_custom`
-- ----------------------------
DROP TABLE IF EXISTS `member_custom`;
CREATE TABLE `member_custom` (
  `member_id` int(11) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `member_dislike`
-- ----------------------------
DROP TABLE IF EXISTS `member_dislike`;
CREATE TABLE `member_dislike` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) DEFAULT NULL,
  `dislike_member_id` int(11) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `member_id_dislike_member_id` (`member_id`,`dislike_member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `member_grade`
-- ----------------------------
DROP TABLE IF EXISTS `member_grade`;
CREATE TABLE `member_grade` (
  `grade_id` int(11) NOT NULL AUTO_INCREMENT,
  `exp_points` int(11) DEFAULT NULL,
  `grade_level` int(11) DEFAULT NULL,
  `grade_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`grade_id`),
  UNIQUE KEY `UK_qp7jwq3liio2rm1t7h86c4nrd` (`exp_points`),
  UNIQUE KEY `UK_kib3qbx6s16bca3avur1j7ct4` (`grade_level`),
  UNIQUE KEY `UK_gnwpq1j12176q3re2px3krmwp` (`grade_name`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `member_invoice_email`
-- ----------------------------
DROP TABLE IF EXISTS `member_invoice_email`;
CREATE TABLE `member_invoice_email` (
  `member_id` int(11) NOT NULL COMMENT '用户id',
  `email` varchar(100) NOT NULL COMMENT '发送电子发票的邮箱地址',
  `post_json` varchar(1000) DEFAULT NULL COMMENT '给客户发送电子发票记录',
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户开发票发送的邮箱地址';

-- ----------------------------
--  Table structure for `member_message`
-- ----------------------------
DROP TABLE IF EXISTS `member_message`;
CREATE TABLE `member_message` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime DEFAULT NULL,
  `is_read` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `message_content` varchar(255) DEFAULT NULL,
  `sn` varchar(255) DEFAULT NULL,
  `tpl_class` int(11) DEFAULT NULL,
  `tpl_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `member_message_setting`
-- ----------------------------
DROP TABLE IF EXISTS `member_message_setting`;
CREATE TABLE `member_message_setting` (
  `tpl_code` varchar(255) NOT NULL,
  `member_id` int(11) NOT NULL,
  `is_receive` int(11) DEFAULT NULL,
  PRIMARY KEY (`tpl_code`,`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `member_real`
-- ----------------------------
DROP TABLE IF EXISTS `member_real`;
CREATE TABLE `member_real` (
  `real_id` int(11) NOT NULL AUTO_INCREMENT,
  `real_name` varchar(60) NOT NULL COMMENT '实名',
  `mobile` varchar(30) NOT NULL COMMENT '手机号',
  `identity` varchar(30) NOT NULL COMMENT '身份证号',
  `auth_state` int(2) NOT NULL COMMENT '审核状态',
  `status` varchar(10) NOT NULL COMMENT '合同状态',
  `member_id` int(11) NOT NULL COMMENT '会员编号',
  `bank_name` varchar(60) NOT NULL COMMENT '银行名称',
  `bank_account` varchar(30) NOT NULL COMMENT '银行卡号',
  `old_bank_name` varchar(60) DEFAULT NULL COMMENT '旧银行名称',
  `old_bank_account` varchar(30) DEFAULT NULL COMMENT '旧银行卡号',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `auth_handle_time` datetime DEFAULT NULL COMMENT '审核通过时间',
  `error_code` varchar(30) DEFAULT NULL,
  `error_msg` varchar(100) DEFAULT NULL,
  `work_number` varchar(60) NOT NULL COMMENT '工猫工号',
  PRIMARY KEY (`real_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `member_real_name_auth`
-- ----------------------------
DROP TABLE IF EXISTS `member_real_name_auth`;
CREATE TABLE `member_real_name_auth` (
  `member_id` int(11) NOT NULL,
  `auth_add_time` datetime DEFAULT NULL,
  `auth_handle_time` datetime DEFAULT NULL,
  `auth_message` varchar(255) DEFAULT NULL,
  `auth_real_name` varchar(20) NOT NULL,
  `auth_state` int(11) DEFAULT NULL,
  `id_cart_back_image` varchar(255) NOT NULL,
  `id_cart_front_image` varchar(255) NOT NULL,
  `id_cart_hand_image` varchar(255) NOT NULL,
  `id_cart_number` varchar(18) NOT NULL,
  `member_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `member_signin`
-- ----------------------------
DROP TABLE IF EXISTS `member_signin`;
CREATE TABLE `member_signin` (
  `signin_id` int(11) NOT NULL AUTO_INCREMENT,
  `signin_add_time` datetime NOT NULL,
  `signin_days` int(11) DEFAULT NULL,
  `signin_member_avatar` varchar(255) DEFAULT NULL,
  `signin_member_id` int(11) NOT NULL,
  `signin_member_name` varchar(255) NOT NULL,
  `signin_points` int(11) DEFAULT NULL,
  PRIMARY KEY (`signin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `member_token`
-- ----------------------------
DROP TABLE IF EXISTS `member_token`;
CREATE TABLE `member_token` (
  `token_id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `token` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`token_id`),
  UNIQUE KEY `UK_fotp55ncdib0xjltut6mfk2v4` (`token`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `member_wages`店主工资
-- ----------------------------
DROP TABLE IF EXISTS `member_wages`;
CREATE TABLE `member_wages` (
  `member_wages_id` int(11) NOT NULL AUTO_INCREMENT,
  `is_super` int(11) DEFAULT NULL,
  `wages_bill_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  `member_type` int(11) DEFAULT NULL,
  `do_time` datetime DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `wages_amount` decimal(19,2) DEFAULT NULL,
  `eagle_award_amount` decimal(19,2) DEFAULT NULL,
  `team_amount` decimal(19,2) DEFAULT NULL,
  `distributor_up_amount` decimal(19,2) DEFAULT NULL,
  `open_shop_amount` decimal(19,2) DEFAULT NULL COMMENT '礼包商品推广佣金',
  PRIMARY KEY (`member_wages_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `menu`
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_ad` varchar(2000) DEFAULT NULL,
  `menu_data` varchar(2000) DEFAULT NULL,
  `menu_icon` varchar(255) DEFAULT NULL,
  `menu_name` varchar(255) DEFAULT NULL,
  `menu_nav` varchar(2000) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `menu_item`
-- ----------------------------
DROP TABLE IF EXISTS `menu_item`;
CREATE TABLE `menu_item` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_data` varchar(2000) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `subitem_data` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `message_template_common`
-- ----------------------------
DROP TABLE IF EXISTS `message_template_common`;
CREATE TABLE `message_template_common` (
  `template_common_id` int(11) NOT NULL AUTO_INCREMENT,
  `tpl_code` varchar(255) NOT NULL,
  `email_content` longtext,
  `email_state` int(11) DEFAULT NULL,
  `email_title` varchar(500) DEFAULT NULL,
  `notice_content` longtext,
  `sms_content` varchar(1000) DEFAULT NULL,
  `sms_state` int(11) DEFAULT NULL,
  `tpl_class` int(11) DEFAULT NULL,
  `tpl_name` varchar(255) DEFAULT NULL,
  `tpl_type` int(11) DEFAULT NULL,
  `weixin_data_params` longtext,
  `weixin_mp_template_id` varchar(500) DEFAULT NULL,
  `weixin_mp_template_store_id` varchar(500) DEFAULT NULL,
  `weixin_mp_template_store_title` varchar(500) DEFAULT NULL,
  `weixin_state` int(11) DEFAULT NULL,
  `weixin_template_url` varchar(500) DEFAULT NULL,
  `huawei_tpl_code` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`template_common_id`),
  UNIQUE KEY `UK_m_tpl_message_code` (`tpl_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `message_template_system`
-- ----------------------------
DROP TABLE IF EXISTS `message_template_system`;
CREATE TABLE `message_template_system` (
  `template_system_id` int(11) NOT NULL AUTO_INCREMENT,
  `tpl_code` varchar(255) NOT NULL,
  `send_type` int(11) DEFAULT NULL,
  `tpl_content` varchar(10000) DEFAULT NULL,
  `tpl_name` varchar(255) DEFAULT NULL,
  `tpl_title` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`template_system_id`),
  UNIQUE KEY `UK_m_tpl_message_systemcode` (`tpl_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `mobile_member_custom`
-- ----------------------------
DROP TABLE IF EXISTS `mobile_member_custom`;
CREATE TABLE `mobile_member_custom` (
  `member_id` int(11) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `navigation`
-- ----------------------------
DROP TABLE IF EXISTS `navigation`;
CREATE TABLE `navigation` (
  `nav_id` int(11) NOT NULL AUTO_INCREMENT,
  `openType` int(11) DEFAULT NULL,
  `position_id` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `title` varchar(20) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`nav_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `orders_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_receive_pay_state` int(11) DEFAULT NULL,
  `auto_receive_time` datetime DEFAULT NULL,
  `cancel_reason` int(11) DEFAULT NULL,
  `cancel_role` varchar(255) DEFAULT NULL,
  `cancel_time` datetime DEFAULT NULL,
  `cannot_ship` int(11) DEFAULT NULL,
  `commission_amount` decimal(19,2) DEFAULT NULL,
  `conform_price` decimal(19,2) DEFAULT NULL,
  `coupon_amount` decimal(19,2) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `create_time_date` varchar(255) DEFAULT NULL,
  `create_time_hour` varchar(255) DEFAULT NULL,
  `delay_receive_state` int(11) DEFAULT NULL,
  `delete_state` int(11) DEFAULT NULL,
  `evaluation_append_state` int(11) DEFAULT NULL,
  `evaluation_state` int(11) DEFAULT NULL,
  `evaluation_time` datetime DEFAULT NULL,
  `final_amount` decimal(19,2) DEFAULT NULL,
  `finish_time` datetime DEFAULT NULL,
  `freight_amount` decimal(19,2) DEFAULT NULL,
  `go_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `id_card` varchar(255) DEFAULT NULL,
  `invoice_code` varchar(255) DEFAULT NULL,
  `invoice_content` varchar(255) DEFAULT NULL,
  `invoice_title` varchar(255) DEFAULT NULL,
  `is_free_freight` int(11) DEFAULT NULL,
  `limit_amount` decimal(19,2) DEFAULT NULL,
  `lock_state` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  `orders_amount` decimal(19,2) DEFAULT NULL,
  `orders_from` varchar(255) DEFAULT NULL,
  `orders_from1` varchar(255) DEFAULT NULL,
  `orders_sn` bigint(20) DEFAULT NULL,
  `orders_state` int(11) DEFAULT NULL,
  `orders_type` int(11) DEFAULT NULL,
  `out_orders_sn` varchar(255) DEFAULT NULL,
  `pay_id` int(11) DEFAULT NULL,
  `pay_sn` bigint(20) DEFAULT NULL,
  `payment_client_type` varchar(255) DEFAULT NULL,
  `payment_code` varchar(255) DEFAULT NULL,
  `payment_time` datetime DEFAULT NULL,
  `payment_type_code` varchar(255) DEFAULT NULL,
  `predeposit_amount` decimal(19,2) DEFAULT NULL,
  `reciver_address` varchar(255) DEFAULT NULL,
  `receiver_area_id_1` int(11) DEFAULT NULL,
  `receiver_area_id_2` int(11) DEFAULT NULL,
  `receiver_area_id_3` int(11) DEFAULT NULL,
  `receiver_area_id_4` int(11) DEFAULT NULL,
  `receiver_area_info` varchar(255) DEFAULT NULL,
  `receiver_message` varchar(255) DEFAULT NULL,
  `receiver_name` varchar(255) DEFAULT NULL,
  `receiver_phone` varchar(11) DEFAULT NULL,
  `refund_amount` decimal(19,2) DEFAULT NULL,
  `refund_state` int(11) DEFAULT NULL,
  `send_time` datetime DEFAULT NULL,
  `ship_code` varchar(255) DEFAULT NULL,
  `ship_name` varchar(255) DEFAULT NULL,
  `ship_note` varchar(255) DEFAULT NULL,
  `ship_sn` varchar(255) DEFAULT NULL,
  `ship_time_type` int(11) DEFAULT NULL,
  `shop_commitment_amount` decimal(19,2) DEFAULT NULL,
  `store_discount_amount` decimal(19,2) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `store_name` varchar(255) DEFAULT NULL,
  `tax_amount` decimal(19,2) DEFAULT NULL,
  `template_id` int(11) DEFAULT NULL,
  `voucher_code` varchar(255) DEFAULT NULL,
  `voucher_price` decimal(19,2) DEFAULT NULL,
  `online_pay_discount_amount` decimal(19,2) DEFAULT '0.00',
  `happy_gold_amount` decimal(19,2) DEFAULT '0.00',
  `is_staff_buy` int(11) DEFAULT '0',
  `push_state` int(11) DEFAULT '0',
  `is_paper_invoice` int(11) NOT NULL DEFAULT '0' COMMENT '是否开纸质发票  0:不开纸质发票 , 1:开纸质发票',
  `sale_channel` int(4) DEFAULT '0',
  `channel_first_buy` int(2) DEFAULT '0',
  PRIMARY KEY (`orders_id`),
  UNIQUE KEY `orders_sn` (`orders_sn`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `orders_book`
-- ----------------------------
DROP TABLE IF EXISTS `orders_book`;
CREATE TABLE `orders_book` (
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
  `book_amount` decimal(19,2) DEFAULT NULL,
  `book_cancel_time` datetime DEFAULT NULL,
  `book_phone` varchar(255) DEFAULT NULL,
  `book_step` int(11) DEFAULT NULL,
  `cancel_state` int(11) DEFAULT NULL,
  `deposit_amount` decimal(19,2) DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `notice_state` int(11) DEFAULT NULL,
  `orders_id` int(11) DEFAULT NULL,
  `orders_sn` bigint(20) DEFAULT NULL,
  `out_orders_sn` varchar(255) DEFAULT NULL,
  `pay_id` int(11) DEFAULT NULL,
  `pay_sn` bigint(20) DEFAULT NULL,
  `payment_client_type` varchar(255) DEFAULT NULL,
  `payment_code` varchar(255) DEFAULT NULL,
  `payment_time` datetime DEFAULT NULL,
  `predeposit_amount` decimal(19,2) DEFAULT NULL,
  `real_pay_amount` decimal(19,2) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `happy_gold_amount` decimal(19,2) DEFAULT '0.00',
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `orders_gift`
-- ----------------------------
DROP TABLE IF EXISTS `orders_gift`;
CREATE TABLE `orders_gift` (
  `orders_gift_id` int(11) NOT NULL AUTO_INCREMENT,
  `common_id` int(11) DEFAULT NULL,
  `gift_id` int(11) DEFAULT NULL,
  `gift_num` int(11) DEFAULT NULL,
  `gift_type` int(11) DEFAULT NULL,
  `goods_full_specs` varchar(255) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `goods_name` varchar(255) DEFAULT NULL,
  `goods_serial` varchar(255) DEFAULT NULL,
  `goods_image` varchar(255) DEFAULT NULL,
  `item_common_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `orders_goods_id` int(11) DEFAULT NULL,
  `orders_id` int(11) DEFAULT NULL,
  `unit_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`orders_gift_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `orders_goods`
-- ----------------------------
DROP TABLE IF EXISTS `orders_goods`;
CREATE TABLE `orders_goods` (
  `orders_goods_id` int(11) NOT NULL AUTO_INCREMENT,
  `bargain_open_id` int(11) DEFAULT NULL,
  `base_price` decimal(19,2) DEFAULT NULL,
  `bundling_id` int(11) DEFAULT NULL,
  `buy_num` int(11) DEFAULT NULL,
  `cartgory_id` int(11) DEFAULT NULL,
  `category_id_1` int(11) DEFAULT NULL,
  `category_id_2` int(11) DEFAULT NULL,
  `category_id_3` int(11) DEFAULT NULL,
  `commission_rate` int(11) DEFAULT NULL,
  `common_id` int(11) DEFAULT NULL,
  `complain_id` int(11) DEFAULT NULL,
  `contract` varchar(1000) DEFAULT NULL,
  `distribution_orders_id` int(11) DEFAULT NULL,
  `goods_full_specs` varchar(255) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `goods_image` varchar(255) DEFAULT NULL,
  `goods_name` varchar(255) DEFAULT NULL,
  `goods_pay_amount` decimal(19,2) DEFAULT NULL,
  `goods_price` decimal(19,2) DEFAULT NULL,
  `goods_serial` varchar(255) DEFAULT NULL,
  `goods_type` int(11) DEFAULT NULL,
  `join_big_sale` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `orders_id` int(11) DEFAULT NULL,
  `promotion_title` varchar(10) DEFAULT NULL,
  `refund_price` decimal(19,2) DEFAULT NULL,
  `seckill_goods_id` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `tax_amount` decimal(19,2) DEFAULT NULL,
  `tax_rate` decimal(19,2) DEFAULT NULL,
  `trys_apply_id` int(11) DEFAULT NULL,
  `unit_name` varchar(255) DEFAULT NULL,
  `online_pay_price` decimal(19,2) DEFAULT '0.00',
  `all_online_pay_price` decimal(19,2) DEFAULT '0.00',
  `dw_specsid` int(11) DEFAULT '0',
  `dw_id` int(11) DEFAULT '0',
  `yg_price` decimal(19,2) DEFAULT '0.00',
  `is_tv_goods` int(2) DEFAULT '0' COMMENT '是否直播商品 0:不是 1:是',
  PRIMARY KEY (`orders_goods_id`),
  KEY `index_orders_id` (`orders_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


-- ----------------------------
--  Table structure for `orders_pay`
-- ----------------------------
DROP TABLE IF EXISTS `orders_pay`;
CREATE TABLE `orders_pay` (
  `pay_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` varchar(255) DEFAULT NULL,
  `coupon_return` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `pay_orders_type` int(11) DEFAULT NULL,
  `pay_sn` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`pay_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `orders_push_info`
-- ----------------------------
DROP TABLE IF EXISTS `orders_push_info`;
CREATE TABLE `orders_push_info` (
  `id` int(12) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `orders_id` int(12) NOT NULL COMMENT '订单Id',
  `orders_sn` varchar(32) NOT NULL COMMENT '订单编号',
  `push_content` varchar(1024) NOT NULL COMMENT '推送内容',
  `state` int(4) NOT NULL DEFAULT '1' COMMENT '状态1-成功2-失败',
  `push_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '推送时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='推送dw内容日志表';

-- ----------------------------
--  Table structure for `orders_push_log`
-- ----------------------------
DROP TABLE IF EXISTS `orders_push_log`;
CREATE TABLE `orders_push_log` (
  `push_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `push_flag` int(11) DEFAULT '0',
  `push_order_id` int(11) DEFAULT '0',
  `push_content` varchar(2000) DEFAULT NULL,
  `push_create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`push_log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `orders_seckill`
-- ----------------------------
DROP TABLE IF EXISTS `orders_seckill`;
CREATE TABLE `orders_seckill` (
  `orders_seckill_id` int(11) NOT NULL AUTO_INCREMENT,
  `buy_num` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `seckill_goods_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`orders_seckill_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


-- ----------------------------
--  Table structure for `payment`
-- ----------------------------
DROP TABLE IF EXISTS `payment`;
CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_type` varchar(255) DEFAULT NULL,
  `client_type_text` varchar(255) DEFAULT NULL,
  `payment_code` varchar(255) DEFAULT NULL,
  `payment_info` varchar(255) DEFAULT NULL,
  `payment_name` varchar(255) DEFAULT NULL,
  `payment_state` int(11) DEFAULT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `points_goods`
-- ----------------------------
DROP TABLE IF EXISTS `points_goods`;
CREATE TABLE `points_goods` (
  `points_goods_id` int(11) NOT NULL AUTO_INCREMENT,
  `common_id` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `expend_points` int(11) DEFAULT NULL,
  `goods_click` int(11) DEFAULT NULL,
  `limit_member_grade_level` int(11) DEFAULT NULL,
  `limit_member_grade_name` varchar(255) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`points_goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `points_log`
-- ----------------------------
DROP TABLE IF EXISTS `points_log`;
CREATE TABLE `points_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `admin_name` varchar(255) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `operation_stage` varchar(255) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `points_orders`
-- ----------------------------
DROP TABLE IF EXISTS `points_orders`;
CREATE TABLE `points_orders` (
  `points_orders_id` int(11) NOT NULL AUTO_INCREMENT,
  `buy_num` int(11) DEFAULT NULL,
  `cancel_time` datetime DEFAULT NULL,
  `common_id` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `expend_points` int(11) DEFAULT NULL,
  `finish_time` datetime DEFAULT NULL,
  `goods_full_specs` varchar(255) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `goods_image` varchar(255) DEFAULT NULL,
  `goods_name` varchar(255) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  `points_orders_sn` bigint(20) DEFAULT NULL,
  `points_orders_state` int(11) DEFAULT NULL,
  `receiver_address` varchar(255) DEFAULT NULL,
  `receiver_area_id_1` int(11) DEFAULT NULL,
  `receiver_area_id_2` int(11) DEFAULT NULL,
  `receiver_area_id_3` int(11) DEFAULT NULL,
  `receiver_area_id_4` int(11) DEFAULT NULL,
  `receiver_area_info` varchar(255) DEFAULT NULL,
  `receiver_message` varchar(255) DEFAULT NULL,
  `receiver_name` varchar(255) DEFAULT NULL,
  `receiver_phone` varchar(255) DEFAULT NULL,
  `send_time` datetime DEFAULT NULL,
  `ship_code` varchar(255) DEFAULT NULL,
  `ship_name` varchar(255) DEFAULT NULL,
  `ship_note` varchar(255) DEFAULT NULL,
  `ship_sn` varchar(255) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `store_name` varchar(255) DEFAULT NULL,
  `unit_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`points_orders_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `predeposit_cash`
-- ----------------------------
DROP TABLE IF EXISTS `predeposit_cash`;
CREATE TABLE `predeposit_cash` (
  `cash_id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `admin_name` varchar(255) DEFAULT NULL,
  `amount` decimal(19,2) NOT NULL,
  `cash_sn` varchar(100) NOT NULL,
  `member_id` int(11) NOT NULL,
  `pay_time` datetime DEFAULT NULL,
  `receive_account` varchar(100) NOT NULL,
  `receive_company` varchar(100) NOT NULL,
  `receive_user` varchar(100) NOT NULL,
  `refuse_reason` varchar(1000) DEFAULT NULL,
  `state` int(11) NOT NULL,
  `actual_pay` decimal(19,2) NOT NULL,
  `tax` decimal(19,2) NOT NULL,
  PRIMARY KEY (`cash_id`),
  UNIQUE KEY `UK_prx0stp1nyas7slediaphjdn8` (`cash_sn`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `predeposit_gather`
-- ----------------------------
DROP TABLE IF EXISTS `predeposit_gather`;
CREATE TABLE `predeposit_gather` (
  `gather_id` int(11) NOT NULL AUTO_INCREMENT,
  `gather_sn` varchar(100) NOT NULL,
  `available_amount` decimal(19,2) DEFAULT NULL,
  `balance_amount` decimal(19,2) DEFAULT NULL,
  `operation_stage` varchar(50) NOT NULL,
  `gather_time` datetime DEFAULT NULL,
  `add_time` datetime DEFAULT NULL,
  PRIMARY KEY (`gather_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
--  Table structure for `predeposit_log`
-- ----------------------------
DROP TABLE IF EXISTS `predeposit_log`;
CREATE TABLE `predeposit_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `admin_name` varchar(255) DEFAULT NULL,
  `available_amount` decimal(19,2) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `freeze_amount` decimal(19,2) DEFAULT NULL,
  `balance_amount` decimal(19,2) DEFAULT NULL,
  `member_id` int(11) NOT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  `operation_stage` varchar(50) NOT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `predeposit_recharge`
-- ----------------------------
DROP TABLE IF EXISTS `predeposit_recharge`;
CREATE TABLE `predeposit_recharge` (
  `recharge_id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `admin_name` varchar(255) DEFAULT NULL,
  `amount` decimal(19,2) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `pay_state` int(11) DEFAULT NULL,
  `pay_time` datetime DEFAULT NULL,
  `payment_client_type` varchar(255) DEFAULT NULL,
  `payment_code` varchar(50) DEFAULT NULL,
  `payment_name` varchar(255) DEFAULT NULL,
  `recharge_sn` varchar(100) DEFAULT NULL,
  `trade_sn` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`recharge_id`),
  UNIQUE KEY `UK_lnewhycl4y834oqr03xcpiv3h` (`recharge_sn`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `program_dept_video`
-- ----------------------------
DROP TABLE IF EXISTS `program_dept_video`;
CREATE TABLE `program_dept_video` (
  `video_id` int(11) NOT NULL AUTO_INCREMENT,
  `dw_id` int(11) NOT NULL,
  `video_name` varchar(500) NOT NULL,
  `upload_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`video_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `program_upload_video`
-- ----------------------------
DROP TABLE IF EXISTS `program_upload_video`;
CREATE TABLE `program_upload_video` (
  `video_id` int(11) NOT NULL AUTO_INCREMENT,
  `vod_file_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '腾讯云文件id',
  `dw_id` int(11) NOT NULL DEFAULT '0' COMMENT '货号',
  `video_url` varchar(500) DEFAULT NULL COMMENT '视频url',
  `cover_url` varchar(500) DEFAULT NULL COMMENT '封面url',
  `height` int(11) DEFAULT '0' COMMENT '视频高',
  `width` int(11) DEFAULT '0' COMMENT '视频宽',
  `trans_state` int(11) DEFAULT '0' COMMENT '是否转码  1是 0否',
  `upload_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`video_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `program_user`
-- ----------------------------
DROP TABLE IF EXISTS `program_user`;
CREATE TABLE `program_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `promotion_quota`
-- ----------------------------
DROP TABLE IF EXISTS `promotion_quota`;
CREATE TABLE `promotion_quota` (
  `store_id` int(11) NOT NULL,
  `bargain_end_time` datetime DEFAULT NULL,
  `book_end_time` datetime DEFAULT NULL,
  `bundling_end_time` datetime DEFAULT NULL,
  `combo_end_time` datetime DEFAULT NULL,
  `conform_end_time` datetime DEFAULT NULL,
  `discount_end_time` datetime DEFAULT NULL,
  `gift_end_time` datetime DEFAULT NULL,
  `group_end_time` datetime DEFAULT NULL,
  `points_goods_end_time` datetime DEFAULT NULL,
  `seckill_end_time` datetime DEFAULT NULL,
  `store_name` varchar(255) DEFAULT NULL,
  `theme_end_time` datetime DEFAULT NULL,
  `trys_end_time` datetime DEFAULT NULL,
  `voucher_end_time` datetime DEFAULT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `purchase_buy`
-- ----------------------------
DROP TABLE IF EXISTS `purchase_buy`;
CREATE TABLE `purchase_buy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `contact_type` int(11) DEFAULT NULL,
  `contacts` varchar(255) DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `need_invoice` int(11) DEFAULT NULL,
  `norm` varchar(255) DEFAULT NULL,
  `num` decimal(19,2) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `pic_url` varchar(255) DEFAULT NULL,
  `price` decimal(19,2) DEFAULT NULL,
  `price_memo` varchar(255) DEFAULT NULL,
  `pro_name` varchar(255) DEFAULT NULL,
  `pur_type` varchar(255) DEFAULT NULL,
  `purchase_id` varchar(255) DEFAULT NULL,
  `receive_area` varchar(255) DEFAULT NULL,
  `receive_time` datetime DEFAULT NULL,
  `show_quotedprice` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `supplier_area` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `unit` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `purchase_chat`
-- ----------------------------
DROP TABLE IF EXISTS `purchase_chat`;
CREATE TABLE `purchase_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(500) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `purchase_buy_id` int(11) DEFAULT NULL,
  `purchase_quotedprice_id` int(11) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `purchase_quotedprice`
-- ----------------------------
DROP TABLE IF EXISTS `purchase_quotedprice`;
CREATE TABLE `purchase_quotedprice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `annex` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `contacts` varchar(255) DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `num` decimal(19,2) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `price` decimal(19,2) DEFAULT NULL,
  `price_memo` varchar(255) DEFAULT NULL,
  `purchase_buy_id` int(11) DEFAULT NULL,
  `purchase_buy_title` varchar(255) DEFAULT NULL,
  `reply_time` datetime DEFAULT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `unit` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `push_reorders_fail_log`
-- ----------------------------
DROP TABLE IF EXISTS `push_reorders_fail_log`;
CREATE TABLE `push_reorders_fail_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `orders_id` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `msg` varchar(200) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `real_store`
-- ----------------------------
DROP TABLE IF EXISTS `real_store`;
CREATE TABLE `real_store` (
  `real_store_id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(200) NOT NULL,
  `area_id1` int(11) DEFAULT NULL,
  `area_id2` int(11) DEFAULT NULL,
  `area_info` varchar(100) NOT NULL,
  `lat` float DEFAULT NULL,
  `lng` float DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `real_store_name` varchar(30) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `traffic_line` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`real_store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `recharge_bill`
-- ----------------------------
DROP TABLE IF EXISTS `recharge_bill`;
CREATE TABLE `recharge_bill` (
  `bill_id` int(11) NOT NULL AUTO_INCREMENT,
  `bill_sn` int(11) DEFAULT NULL,
  `bill_state` int(11) DEFAULT NULL,
  `bill_amount` decimal(19,2) DEFAULT NULL,
  `orders_amount` decimal(19,2) DEFAULT NULL,
  `commission_amount` decimal(19,2) DEFAULT NULL,
  `deno_amount` decimal(19,2) DEFAULT NULL,
  `coupon_amount` decimal(19,2) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `payment_note` varchar(255) DEFAULT NULL,
  `payment_time` datetime DEFAULT NULL,
  `state_time` datetime DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `store_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bill_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
--  Table structure for `recharge_log`
-- ----------------------------
DROP TABLE IF EXISTS `recharge_log`;
CREATE TABLE `recharge_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime DEFAULT NULL,
  `orders_sn` bigint(20) DEFAULT NULL,
  `refund_id` int(11) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `amount` decimal(19,2) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `response_code` varchar(32) DEFAULT NULL,
  `response_msg` varchar(255) DEFAULT NULL,
  `status` char(10) DEFAULT NULL,
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
--  Table structure for `recharge_orders` 充值订单
-- ----------------------------
DROP TABLE IF EXISTS `recharge_orders`;
CREATE TABLE `recharge_orders` (
  `orders_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_receive_pay_state` int(11) DEFAULT NULL,
  `cancel_reason` int(11) DEFAULT NULL,
  `cancel_role` varchar(255) DEFAULT NULL,
  `cancel_time` datetime DEFAULT NULL,
  `conform_price` decimal(19,2) DEFAULT NULL,
  `coupon_amount` decimal(19,2) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `create_time_date` varchar(255) DEFAULT NULL,
  `create_time_hour` varchar(255) DEFAULT NULL,
  `delete_state` int(11) DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `evaluation_state` int(11) DEFAULT NULL,
  `evaluation_time` datetime DEFAULT NULL,
  `finish_time` datetime DEFAULT NULL,
  `is_send` int(11) DEFAULT NULL,
  `limit_amount` decimal(19,2) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  `orders_amount` decimal(19,2) DEFAULT NULL,
  `orders_from` varchar(255) DEFAULT NULL,
  `orders_from1` varchar(255) DEFAULT NULL,
  `orders_sn` bigint(20) DEFAULT NULL,
  `orders_state` int(11) DEFAULT NULL,
  `recharge_state` int(2) DEFAULT NULL,
  `out_orders_sn` varchar(255) DEFAULT NULL,
  `pay_id` int(11) DEFAULT NULL,
  `pay_sn` bigint(20) DEFAULT NULL,
  `payment_client_type` varchar(255) DEFAULT NULL,
  `payment_code` varchar(255) DEFAULT NULL,
  `payment_time` datetime DEFAULT NULL,
  `predeposit_amount` decimal(19,2) DEFAULT NULL,
  `receiver_message` varchar(255) DEFAULT NULL,
  `receiver_name` varchar(255) DEFAULT NULL,
  `recharge_phone` varchar(255) DEFAULT NULL,
  `refund_amount` decimal(19,2) DEFAULT NULL,
  `shop_commitment_amount` decimal(19,2) DEFAULT NULL,
  `store_discount_amount` decimal(19,2) DEFAULT NULL,
  `recharge_deno` varchar(32) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `store_name` varchar(255) DEFAULT NULL,
  `recharge_voucher` varchar(64) DEFAULT NULL,
  `template_id` int(11) DEFAULT NULL,
  `use_state` int(11) DEFAULT NULL,
  `voucher_code` varchar(255) DEFAULT NULL,
  `voucher_price` decimal(19,2) DEFAULT NULL,
  `push_state` int(11) DEFAULT '0',
  PRIMARY KEY (`orders_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
--  Table structure for `recharge_orders_goods`
-- ----------------------------
DROP TABLE IF EXISTS `recharge_orders_goods`;
CREATE TABLE `recharge_orders_goods` (
  `orders_goods_id` int(11) NOT NULL AUTO_INCREMENT,
  `base_price` decimal(19,2) DEFAULT NULL,
  `buy_num` int(11) DEFAULT NULL,
  `cartgory_id` int(11) DEFAULT NULL,
  `category_id_1` int(11) DEFAULT NULL,
  `category_id_2` int(11) DEFAULT NULL,
  `category_id_3` int(11) DEFAULT NULL,
  `commission_rate` int(11) DEFAULT NULL,
  `commission_amount` decimal(19,2) DEFAULT NULL,
  `settlement_rate` decimal(19,2) DEFAULT NULL,
  `settlement_amount` decimal(19,2) DEFAULT NULL,
  `common_id` int(11) DEFAULT NULL,
  `contract` varchar(1000) DEFAULT NULL,
  `coupon_amount` decimal(19,2) DEFAULT NULL,
  `goods_full_specs` varchar(255) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `goods_image` varchar(255) DEFAULT NULL,
  `goods_name` varchar(255) DEFAULT NULL,
  `goods_pay_amount` decimal(19,2) DEFAULT NULL,
  `goods_price` decimal(19,2) DEFAULT NULL,
  `join_big_sale` int(11) DEFAULT NULL,
  `recharge_deno` varchar(32) DEFAULT NULL,
  `recharge_voucher` varchar(64) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `orders_id` int(11) DEFAULT NULL,
  `orders_sn` bigint(20) DEFAULT NULL,
  `promotion_title` varchar(255) DEFAULT NULL,
  `refund_applyed` int(11) DEFAULT NULL,
  `send_times` int(11) DEFAULT NULL,
  `shop_commitment_amount` decimal(19,2) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `unit_name` varchar(255) DEFAULT NULL,
  `virtual_overdue_refund` int(11) DEFAULT NULL,
  `online_pay_price` decimal(19,2) DEFAULT '0.00',
  `all_online_pay_price` decimal(19,2) DEFAULT '0.00',
  `dw_specsid` int(11) DEFAULT '0',
  `dw_id` int(11) DEFAULT '0',
  `yg_price` decimal(19,2) DEFAULT '0.00',
  PRIMARY KEY (`orders_goods_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
--  Table structure for `reconciliation_bill`
-- ----------------------------
DROP TABLE IF EXISTS `reconciliation_bill`;
CREATE TABLE `reconciliation_bill` (
  `bill_id` int(11) NOT NULL AUTO_INCREMENT,
  `bill_sn` int(11) DEFAULT NULL,
  `bill_month` varchar(16) DEFAULT NULL,
  `bill_time` datetime DEFAULT NULL,
  `state_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`bill_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
--  Table structure for `reconciliation_mistake` 对帐调整
-- ----------------------------
DROP TABLE IF EXISTS `reconciliation_mistake`;
CREATE TABLE `reconciliation_mistake` (
  `mistake_id` int(11) NOT NULL AUTO_INCREMENT,
  `orders_sn` varchar(64) DEFAULT NULL,
  `out_orders_sn` varchar(64) DEFAULT NULL,
  `pay_sn` varchar(64) DEFAULT NULL,
  `refund_sn` varchar(64) DEFAULT NULL,
  `payment_amount` decimal(19,2) DEFAULT NULL,
  `refund_amount` decimal(19,2) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `payment_time` datetime DEFAULT NULL,
  `refund_time` datetime DEFAULT NULL,
  `orders_state` int(4) DEFAULT '0',
  `out_payment_time` datetime DEFAULT NULL,
  `out_pay_amount` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`mistake_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
--  Table structure for `red_packet_rain`
-- ----------------------------
DROP TABLE IF EXISTS `red_packet_rain`;
CREATE TABLE `red_packet_rain` (
  `rain_id` int(11) NOT NULL AUTO_INCREMENT,
  `show_home` int(11) DEFAULT NULL COMMENT '是否在首页展示 1 是  0否',
  `show_tv` int(11) DEFAULT NULL COMMENT '是否在TV直播页展示 1 是  0否',
  `show_specail` int(11) DEFAULT NULL COMMENT '是否在专题页展示 1 是  0否',
  `rain_name` varchar(200) DEFAULT NULL COMMENT '红包雨活动名称',
  `activity_rate` int(11) DEFAULT NULL COMMENT '本场活动中奖率',
  `start_time` timestamp NULL DEFAULT NULL COMMENT '活动开始时间',
  `end_time` timestamp NULL DEFAULT NULL COMMENT '结束时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '活动创建时间',
  `is_del` int(11) DEFAULT '1' COMMENT '是否删除  0 是  1 否',
  PRIMARY KEY (`rain_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='红包雨活动';

-- ----------------------------
--  Table structure for `red_packet_rain_collocation`
-- ----------------------------
DROP TABLE IF EXISTS `red_packet_rain_collocation`;
CREATE TABLE `red_packet_rain_collocation` (
  `collocation_id` int(11) NOT NULL AUTO_INCREMENT,
  `prize_activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '添加奖品（品币、店铺券、礼品）活动Id',
  `rain_id` int(11) NOT NULL DEFAULT '0',
  `activity_name` varchar(500) DEFAULT NULL,
  `activity_content` varchar(500) DEFAULT NULL,
  `activity_rate` int(11) DEFAULT NULL,
  `image_url` varchar(512) DEFAULT NULL COMMENT '图片地址',
  `price` decimal(19,2) DEFAULT NULL COMMENT '价格',
  `foreign_key` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `num_limit` int(11) DEFAULT NULL,
  `is_del` int(11) DEFAULT '1' COMMENT '是否删除  0 是  1 否',
  PRIMARY KEY (`collocation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=479 DEFAULT CHARSET=utf8mb4 COMMENT='红包雨活动';

-- ----------------------------
--  Table structure for `red_packet_rain_luckily_detail`
-- ----------------------------
DROP TABLE IF EXISTS `red_packet_rain_luckily_detail`;
CREATE TABLE `red_packet_rain_luckily_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rain_id` int(11) NOT NULL DEFAULT '0' COMMENT '红包雨ID',
  `rain_num` varchar(32) NOT NULL DEFAULT '0' COMMENT '红包雨编号（没有编号，用id代替）',
  `rain_name` varchar(256) NOT NULL COMMENT '活动名称',
  `member_id` int(11) NOT NULL COMMENT '用户ID',
  `member_name` varchar(256) NOT NULL COMMENT '用户名称',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品ID',
  `prize_desc` varchar(512) NOT NULL COMMENT '奖品描述信息',
  `prize_type` int(11) NOT NULL DEFAULT '0' COMMENT '奖品类型1-品币2-店铺券3-礼品',
  `price` decimal(19,2) NOT NULL DEFAULT '0.00' COMMENT '价格（礼品数量）',
  `store_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺券的storeID',
  `get_prize` int(4) NOT NULL DEFAULT '0' COMMENT '是否已领取奖品',
  `get_prize_time` datetime DEFAULT NULL COMMENT '奖品领取时间',
  `prize_expire_time` datetime DEFAULT NULL COMMENT '奖品过期时间',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=771 DEFAULT CHARSET=utf8mb4 COMMENT='中奖明细';

-- ----------------------------
--  Table structure for `red_packet_rain_luckily_member`
-- ----------------------------
DROP TABLE IF EXISTS `red_packet_rain_luckily_member`;
CREATE TABLE `red_packet_rain_luckily_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户编码',
  `member_name` varchar(500) NOT NULL COMMENT '用户名称',
  `join_num` int(11) NOT NULL DEFAULT '0' COMMENT '参加次数',
  `rain_num` int(11) NOT NULL DEFAULT '0' COMMENT '中奖红包雨个数',
  `coupon_num` decimal(11,0) NOT NULL DEFAULT '0' COMMENT '获取品币数',
  `voucher_num` decimal(11,0) NOT NULL DEFAULT '0' COMMENT '店铺券个数',
  `gift_num` int(11) NOT NULL DEFAULT '0' COMMENT '实物奖品个数',
  `receive_name` varchar(256) NOT NULL COMMENT '收件人姓名',
  `receive_phone` varchar(11) NOT NULL COMMENT '收件人电话',
  `receive_area` varchar(512) NOT NULL COMMENT '收件人地区信息',
  `receive_address` varchar(512) NOT NULL COMMENT '收件人详细地址',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COMMENT='红包雨活动';

-- ----------------------------
--  Table structure for `refund`
-- ----------------------------
DROP TABLE IF EXISTS `refund`;
CREATE TABLE `refund` (
  `refund_id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime DEFAULT NULL,
  `admin_message` varchar(255) DEFAULT NULL,
  `admin_time` datetime DEFAULT NULL,
  `bill_time` datetime DEFAULT NULL,
  `buyer_message` varchar(255) DEFAULT NULL,
  `commission_rate` int(11) DEFAULT NULL,
  `common_id` int(11) DEFAULT NULL,
  `coupon_amount` decimal(19,2) DEFAULT NULL,
  `delay_time` datetime DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `goods_image` varchar(255) DEFAULT NULL,
  `goods_name` varchar(255) DEFAULT NULL,
  `goods_num` int(11) DEFAULT NULL,
  `goods_state` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  `order_goods_type` int(11) DEFAULT NULL,
  `order_lock` int(11) DEFAULT NULL,
  `orders_goods_id` int(11) DEFAULT NULL,
  `orders_id` int(11) DEFAULT NULL,
  `orders_sn` bigint(20) DEFAULT NULL,
  `orders_type` int(11) DEFAULT NULL,
  `pic_json` longtext,
  `reason_id` int(11) DEFAULT NULL,
  `reason_info` varchar(255) DEFAULT NULL,
  `receive_message` varchar(255) DEFAULT NULL,
  `receive_time` datetime DEFAULT NULL,
  `refund_amount` decimal(19,2) DEFAULT NULL,
  `refund_sn` bigint(20) DEFAULT NULL,
  `refund_state` int(11) DEFAULT NULL,
  `refund_type` int(11) DEFAULT NULL,
  `return_type` int(11) DEFAULT NULL,
  `seller_message` varchar(255) DEFAULT NULL,
  `seller_state` int(11) DEFAULT NULL,
  `seller_time` datetime DEFAULT NULL,
  `ship_id` int(11) DEFAULT NULL,
  `ship_sn` varchar(255) DEFAULT NULL,
  `ship_time` datetime DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `store_name` varchar(255) DEFAULT NULL,
  `refund_source` int(11) DEFAULT '1',
  `admin_state` int(11) DEFAULT '1',
  `refund_member_cancel` int(11) DEFAULT '0',
  `return_member_auto_cancel` int(11) DEFAULT '0',
  `return_seller_auto_receive` int(11) DEFAULT '0',
  `dw_return_type` int(11) DEFAULT '0',
  `should_refund_coupon` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '商家应付品币价格',
  `seller_state_reason` int(11) DEFAULT '1' COMMENT '选择的退款原因1-退款退货2-拒收退款',
  PRIMARY KEY (`refund_id`),
  UNIQUE KEY `refund_order_goods` (`goods_id`,`orders_id`),
  KEY `index_orders_id` (`orders_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2767 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `refund_book`
-- ----------------------------
DROP TABLE IF EXISTS `refund_book`;
CREATE TABLE `refund_book` (
  `refund_book_id` int(11) NOT NULL AUTO_INCREMENT,
  `batch_no` varchar(255) DEFAULT NULL,
  `book_step` varchar(255) DEFAULT NULL,
  `out_orders_sn` varchar(255) DEFAULT NULL,
  `out_refund_id` varchar(255) DEFAULT NULL,
  `pay_amount` decimal(19,2) DEFAULT NULL,
  `pay_sn` bigint(20) DEFAULT NULL,
  `payment_client_type` varchar(255) DEFAULT NULL,
  `payment_code` varchar(255) DEFAULT NULL,
  `payment_time` datetime DEFAULT NULL,
  `refund_amount` decimal(19,2) DEFAULT NULL,
  `refund_id` int(11) DEFAULT NULL,
  `refund_sn` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`refund_book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `refund_detail` 退货单每个只能退一种商品
-- ----------------------------
DROP TABLE IF EXISTS `refund_detail`;
CREATE TABLE `refund_detail` (
  `refund_id` int(11) NOT NULL,
  `add_time` datetime DEFAULT NULL,
  `batch_no` varchar(255) DEFAULT NULL,
  `orders_id` int(11) DEFAULT NULL,
  `pay_amount` decimal(19,2) DEFAULT NULL,
  `pay_time` datetime DEFAULT NULL,
  `pd_amount` decimal(19,2) DEFAULT NULL,
  `rcb_amount` decimal(19,2) DEFAULT NULL,
  `refund_amount` decimal(19,2) DEFAULT NULL,
  `refund_code` varchar(255) DEFAULT NULL,
  `refund_state` int(11) DEFAULT NULL,
  PRIMARY KEY (`refund_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `refund_reason`
-- ----------------------------
DROP TABLE IF EXISTS `refund_reason`;
CREATE TABLE `refund_reason` (
  `reason_id` int(11) NOT NULL AUTO_INCREMENT,
  `reason_info` varchar(100) DEFAULT NULL,
  `reason_sort` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`reason_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `refund_recharge`
-- ----------------------------
DROP TABLE IF EXISTS `refund_recharge`;
CREATE TABLE `refund_recharge` (
  `refund_id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime DEFAULT NULL,
  `admin_content` varchar(255) DEFAULT NULL,
  `admin_time` datetime DEFAULT NULL,
  `batch_no` varchar(255) DEFAULT NULL,
  `buyer_content` varchar(255) DEFAULT NULL,
  `common_id` int(11) DEFAULT NULL,
  `coupon_amount` decimal(19,2) DEFAULT NULL,
  `goods_full_specs` varchar(255) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `goods_image` varchar(255) DEFAULT NULL,
  `goods_name` varchar(255) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  `online_amount` decimal(19,2) DEFAULT NULL,
  `orders_goods_id` int(11) DEFAULT NULL,
  `orders_id` int(11) DEFAULT NULL,
  `orders_sn` bigint(20) DEFAULT NULL,
  `out_orders_sn` varchar(255) DEFAULT NULL,
  `payment_code` varchar(255) DEFAULT NULL,
  `refund_amount` decimal(19,2) DEFAULT NULL,
  `refund_sn` bigint(20) DEFAULT NULL,
  `refund_state` int(11) DEFAULT NULL,
  `refund_time` datetime DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `store_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`refund_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
--  Table structure for `refund_virtual`
-- ----------------------------
DROP TABLE IF EXISTS `refund_virtual`;
CREATE TABLE `refund_virtual` (
  `refund_id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime DEFAULT NULL,
  `admin_content` varchar(255) DEFAULT NULL,
  `admin_time` datetime DEFAULT NULL,
  `batch_no` varchar(255) DEFAULT NULL,
  `buyer_content` varchar(255) DEFAULT NULL,
  `common_id` int(11) DEFAULT NULL,
  `coupon_amount` decimal(19,2) DEFAULT NULL,
  `goods_full_specs` varchar(255) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `goods_image` varchar(255) DEFAULT NULL,
  `goods_name` varchar(255) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  `online_amount` decimal(19,2) DEFAULT NULL,
  `orders_goods_id` int(11) DEFAULT NULL,
  `orders_id` int(11) DEFAULT NULL,
  `orders_sn` bigint(20) DEFAULT NULL,
  `out_orders_sn` varchar(255) DEFAULT NULL,
  `payment_code` varchar(255) DEFAULT NULL,
  `refund_amount` decimal(19,2) DEFAULT NULL,
  `refund_sn` bigint(20) DEFAULT NULL,
  `refund_state` int(11) DEFAULT NULL,
  `refund_time` datetime DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `store_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`refund_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `refund_virtual_code`
-- ----------------------------
DROP TABLE IF EXISTS `refund_virtual_code`;
CREATE TABLE `refund_virtual_code` (
  `refund_code_id` int(11) NOT NULL AUTO_INCREMENT,
  `common_id` int(11) DEFAULT NULL,
  `goods_code` varchar(255) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `goods_image` varchar(255) DEFAULT NULL,
  `goods_name` varchar(255) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  `orders_code_id` int(11) DEFAULT NULL,
  `orders_goods_id` int(11) DEFAULT NULL,
  `orders_id` int(11) DEFAULT NULL,
  `orders_sn` bigint(20) DEFAULT NULL,
  `refund_amount` decimal(19,2) DEFAULT NULL,
  `refund_id` int(11) DEFAULT NULL,
  `refund_sn` bigint(20) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `store_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`refund_code_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `renew`
-- ----------------------------
DROP TABLE IF EXISTS `renew`;
CREATE TABLE `renew` (
  `renew_id` int(11) NOT NULL AUTO_INCREMENT,
  `allow_foreign_goods` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `grade_id` int(11) DEFAULT NULL,
  `grade_name` varchar(255) DEFAULT NULL,
  `pay_amount` decimal(19,2) DEFAULT NULL,
  `pay_cert` varchar(255) DEFAULT NULL,
  `pay_cert_note` varchar(255) DEFAULT NULL,
  `renew_price` decimal(19,2) DEFAULT NULL,
  `renew_state` int(11) DEFAULT NULL,
  `renew_year` int(11) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `store_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`renew_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `search_dict`
-- ----------------------------
DROP TABLE IF EXISTS `search_dict`;
CREATE TABLE `search_dict` (
  `dict_id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime DEFAULT NULL,
  `word` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`dict_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `search_history`
-- ----------------------------
DROP TABLE IF EXISTS `search_history`;
CREATE TABLE `search_history` (
  `history_id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(255) DEFAULT NULL,
  `last_time` datetime DEFAULT NULL,
  `search_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`history_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `seckill_begin_notice`
-- ----------------------------
DROP TABLE IF EXISTS `seckill_begin_notice`;
CREATE TABLE `seckill_begin_notice` (
  `arrival_id` int(11) NOT NULL AUTO_INCREMENT,
  `common_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  PRIMARY KEY (`arrival_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `seckill_goods`
-- ----------------------------
DROP TABLE IF EXISTS `seckill_goods`;
CREATE TABLE `seckill_goods` (
  `seckill_goods_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `common_id` int(11) DEFAULT NULL COMMENT '商品SPU',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  `goods_id` int(11) DEFAULT NULL COMMENT '商品SKU编号',
  `goods_price` decimal(19,2) DEFAULT NULL COMMENT '商品价格',
  `goods_storage` int(11) DEFAULT NULL COMMENT '库存',
  `limit_amount` int(11) DEFAULT NULL COMMENT '限购数量',
  `schedule_id` int(11) DEFAULT NULL COMMENT '秒杀排期编号',
  `schedule_state` int(11) DEFAULT NULL COMMENT '状态',
  `start_time` datetime DEFAULT NULL COMMENT '开始时间',
  PRIMARY KEY (`seckill_goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `seckill_goods_common`
-- ----------------------------
DROP TABLE IF EXISTS `seckill_goods_common`;
CREATE TABLE `seckill_goods_common` (
  `seckill_common_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `common_id` int(11) DEFAULT NULL COMMENT '商品SPU',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  `goods_price` decimal(19,2) DEFAULT NULL COMMENT '商品价格',
  `goods_sale_num` int(11) DEFAULT NULL COMMENT '销售数量',
  `goods_storage` int(11) DEFAULT NULL COMMENT '库存',
  `schedule_id` int(11) DEFAULT NULL COMMENT '秒杀排期编号',
  `schedule_state` int(11) DEFAULT NULL COMMENT '状态文字',
  `start_time` datetime DEFAULT NULL COMMENT '开始时间',
  `verify_remark` varchar(255) DEFAULT NULL COMMENT '审核失败原因',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`seckill_common_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `seckill_schedule`
-- ----------------------------
DROP TABLE IF EXISTS `seckill_schedule`;
CREATE TABLE `seckill_schedule` (
  `schedule_id` int(11) NOT NULL AUTO_INCREMENT,
  `end_time` datetime DEFAULT NULL,
  `schedule_name` varchar(255) DEFAULT NULL,
  `schedule_state` int(11) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  PRIMARY KEY (`schedule_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `seller`
-- ----------------------------
DROP TABLE IF EXISTS `seller`;
CREATE TABLE `seller` (
  `seller_id` int(11) NOT NULL AUTO_INCREMENT,
  `allow_app_login` int(11) DEFAULT NULL,
  `allow_login` int(11) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `is_store_owner` int(11) DEFAULT NULL,
  `join_date` datetime DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL,
  `seller_email` varchar(255) DEFAULT NULL,
  `seller_mobile` varchar(255) DEFAULT NULL,
  `seller_name` varchar(20) DEFAULT NULL,
  `seller_password` varchar(255) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `store_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`seller_id`) USING BTREE,
  UNIQUE KEY `UK_luf6t0kqum9n0hiur3d8nrrse` (`seller_email`) USING BTREE,
  UNIQUE KEY `UK_4m9f6vx1klltccbcqrmo4yc5s` (`seller_name`) USING BTREE,
  KEY `store_id` (`store_id`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `seller_group`
-- ----------------------------
DROP TABLE IF EXISTS `seller_group`;
CREATE TABLE `seller_group` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`group_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `seller_group_menu`
-- ----------------------------
DROP TABLE IF EXISTS `seller_group_menu`;
CREATE TABLE `seller_group_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1486 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `seller_log`
-- ----------------------------
DROP TABLE IF EXISTS `seller_log`;
CREATE TABLE `seller_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime DEFAULT NULL,
  `log_content` varchar(255) DEFAULT NULL,
  `log_ip` varchar(255) DEFAULT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `seller_name` varchar(255) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=34025 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `seller_menu`
-- ----------------------------
DROP TABLE IF EXISTS `seller_menu`;
CREATE TABLE `seller_menu` (
  `id` int(11) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `is_own` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `send_store_email`
-- ----------------------------
DROP TABLE IF EXISTS `send_store_email`;
CREATE TABLE `send_store_email` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `orders_sn` varchar(64) DEFAULT NULL COMMENT '订单号',
  `type` varchar(4) DEFAULT NULL COMMENT '订单类型1-拒收2-退货',
  `email` varchar(256) DEFAULT NULL COMMENT '邮箱地址',
  `ship_sn` varchar(64) DEFAULT NULL COMMENT '运单号',
  `ship_name` varchar(128) DEFAULT NULL COMMENT '物流公司名称',
  `receive_name` varchar(128) DEFAULT NULL COMMENT '收货人姓名',
  `receive_phone` varchar(16) DEFAULT NULL COMMENT '收货人电话',
  `send_content` varchar(512) DEFAULT NULL COMMENT '邮件内容',
  `state` int(4) DEFAULT NULL COMMENT '状态1-成功0-失败',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COMMENT='订单取消拒收/退货信息发送表';

-- ----------------------------
--  Table structure for `sensitives`
-- ----------------------------
DROP TABLE IF EXISTS `sensitives`;
CREATE TABLE `sensitives` (
  `sensitive_id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime DEFAULT NULL,
  `is_use` int(11) DEFAULT NULL,
  `sensitive_word` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sensitive_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `share_goods_log`
-- ----------------------------
DROP TABLE IF EXISTS `share_goods_log`;
CREATE TABLE `share_goods_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `common_id` int(11) DEFAULT NULL,
  `goods_name` varchar(255) DEFAULT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `share_time` datetime DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1709 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `share_short_url`
-- ----------------------------
DROP TABLE IF EXISTS `share_short_url`;
CREATE TABLE `share_short_url` (
  `share_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `foreign_key` bigint(22) DEFAULT NULL,
  `short_url` varchar(50) NOT NULL COMMENT '短链接',
  `long_url` varchar(255) NOT NULL COMMENT '长链接',
  `url_type` int(11) NOT NULL COMMENT '链接分享类型',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最近修改时间',
  PRIMARY KEY (`share_id`),
  UNIQUE KEY `short_url` (`short_url`),
  UNIQUE KEY `foreign_key` (`foreign_key`,`url_type`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='分享短链接';

-- ----------------------------
--  Table structure for `share_short_url_old`
-- ----------------------------
DROP TABLE IF EXISTS `share_short_url_old`;
CREATE TABLE `share_short_url_old` (
  `share_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `common_id` int(11) NOT NULL COMMENT 'spuId',
  `distribution_goods_id` int(11) NOT NULL COMMENT '商品分销id',
  `short_url` varchar(50) NOT NULL COMMENT '短链接',
  `long_url` varchar(255) NOT NULL COMMENT '长链接',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最近修改时间',
  PRIMARY KEY (`share_id`),
  UNIQUE KEY `short_url` (`short_url`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8 COMMENT='分享短链接';

-- ----------------------------
--  Table structure for `share_vip_log`
-- ----------------------------
DROP TABLE IF EXISTS `share_vip_log`;
CREATE TABLE `share_vip_log` (
  `vip_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) DEFAULT '0' COMMENT '用户主键',
  `avatar` varchar(100) DEFAULT NULL COMMENT '头像',
  `nick_name` varchar(100) DEFAULT NULL COMMENT '昵称',
  `gifts_price` decimal(19,2) NOT NULL DEFAULT '0.00' COMMENT '优惠金额',
  `image_url` varchar(100) DEFAULT NULL COMMENT '图片地址',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`vip_log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='分享邀请VIP图片记录';

-- ----------------------------
--  Table structure for `share_white`
-- ----------------------------
DROP TABLE IF EXISTS `share_white`;
CREATE TABLE `share_white` (
  `white_id` int(11) NOT NULL AUTO_INCREMENT,
  `common_id` int(11) DEFAULT NULL,
  `goods_name` varchar(50) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `delete_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `create_id` int(11) DEFAULT NULL,
  `create_name` varchar(255) DEFAULT NULL,
  `delete_id` int(11) DEFAULT NULL,
  `delete_name` varchar(255) DEFAULT NULL,
  `commission_rate` int(11) DEFAULT NULL,
  `is_del` int(2) DEFAULT '0',
  PRIMARY KEY (`white_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ship_company`
-- ----------------------------
DROP TABLE IF EXISTS `ship_company`;
CREATE TABLE `ship_company` (
  `ship_id` int(11) NOT NULL AUTO_INCREMENT,
  `ship_code` varchar(15) DEFAULT NULL,
  `ship_letter` varchar(255) DEFAULT NULL,
  `ship_name` varchar(255) DEFAULT NULL,
  `ship_state` int(11) DEFAULT NULL,
  `ship_type` int(11) DEFAULT NULL,
  `ship_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ship_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `shipno_pushdw_fail_log`
-- ----------------------------
DROP TABLE IF EXISTS `shipno_pushdw_fail_log`;
CREATE TABLE `shipno_pushdw_fail_log` (
  `shipno_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `ship_no` varchar(100) DEFAULT NULL COMMENT '快递运单号',
  `claim_no` varchar(100) DEFAULT NULL COMMENT '申请编号',
  `member_id` int(11) DEFAULT NULL COMMENT '用户id',
  `state` int(11) DEFAULT '0' COMMENT '推送状态：0 失败  1 成功',
  `message` varchar(500) DEFAULT '0',
  `push_type` int(11) DEFAULT '0' COMMENT '推送类型(目前只推DW) 0代表推DW',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录时间0',
  PRIMARY KEY (`shipno_log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `shop_config`
-- ----------------------------
DROP TABLE IF EXISTS `shop_config`;
CREATE TABLE `shop_config` (
  `kdt_id` int(20) NOT NULL COMMENT '有赞店铺id',
  `name` varchar(50) NOT NULL COMMENT '有赞店铺名称',
  `client_id` varchar(50) NOT NULL COMMENT '自用型应用id',
  `client_secret` varchar(50) NOT NULL COMMENT '自用型应用secret',
  `accesstoken` varchar(255) DEFAULT NULL COMMENT '有赞的accesstoken',
  `update_time` datetime(6) DEFAULT NULL COMMENT 'accesstoken上次更新时间',
  `expires_in` int(20) DEFAULT NULL COMMENT 'accesstoken有效时间（毫秒）',
  `kdt_status` int(1) DEFAULT NULL,
  PRIMARY KEY (`kdt_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `show_orders`
-- ----------------------------
DROP TABLE IF EXISTS `show_orders`;
CREATE TABLE `show_orders` (
  `show_orders_id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  `music_auto` int(11) DEFAULT NULL,
  `music_id` int(11) DEFAULT NULL,
  `read_count` int(11) DEFAULT NULL,
  `recommend` int(11) DEFAULT NULL,
  `recommend_join` int(11) DEFAULT NULL,
  `recommend_time` datetime DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `template_id` int(11) DEFAULT NULL,
  `title_image` varchar(255) NOT NULL,
  `title_text` varchar(255) DEFAULT NULL,
  `zan_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`show_orders_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `show_orders_author_reply`
-- ----------------------------
DROP TABLE IF EXISTS `show_orders_author_reply`;
CREATE TABLE `show_orders_author_reply` (
  `author_reply_id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime DEFAULT NULL,
  `comment_id` int(11) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  `show_orders_id` int(11) DEFAULT NULL,
  `show_orders_title` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`author_reply_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `show_orders_comment`
-- ----------------------------
DROP TABLE IF EXISTS `show_orders_comment`;
CREATE TABLE `show_orders_comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime DEFAULT NULL,
  `author_member_id` int(11) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  `show_orders_id` int(11) DEFAULT NULL,
  `show_orders_title` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `show_orders_item`
-- ----------------------------
DROP TABLE IF EXISTS `show_orders_item`;
CREATE TABLE `show_orders_item` (
  `show_orders_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `distributor_goods_id` int(11) DEFAULT NULL,
  `goods_common_id` int(11) DEFAULT NULL,
  `goods_price` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `show_orders_id` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `text` varchar(2000) DEFAULT NULL,
  `text_up` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`show_orders_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `show_orders_music`
-- ----------------------------
DROP TABLE IF EXISTS `show_orders_music`;
CREATE TABLE `show_orders_music` (
  `music_id` int(11) NOT NULL AUTO_INCREMENT,
  `file_url` varchar(255) DEFAULT NULL,
  `show_text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`music_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `show_orders_reward`
-- ----------------------------
DROP TABLE IF EXISTS `show_orders_reward`;
CREATE TABLE `show_orders_reward` (
  `reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `author_fee` decimal(19,2) DEFAULT NULL,
  `author_member_id` int(11) NOT NULL,
  `author_member_name` varchar(255) NOT NULL,
  `client_type` varchar(255) NOT NULL,
  `member_id` int(11) NOT NULL,
  `member_name` varchar(255) NOT NULL,
  `pay_amount` decimal(19,2) NOT NULL,
  `pay_code` varchar(255) NOT NULL,
  `pay_sn` bigint(20) NOT NULL,
  `pay_state` int(11) DEFAULT NULL,
  `pay_time` datetime DEFAULT NULL,
  `reward_commission` int(11) DEFAULT NULL,
  `show_orders_id` int(11) NOT NULL,
  `show_orders_title` varchar(255) DEFAULT NULL,
  `site_fee` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`reward_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `show_orders_template`
-- ----------------------------
DROP TABLE IF EXISTS `show_orders_template`;
CREATE TABLE `show_orders_template` (
  `template_id` int(11) NOT NULL AUTO_INCREMENT,
  `back_ground_image` varchar(255) DEFAULT NULL,
  `font_color` varchar(255) DEFAULT NULL,
  `show_image` varchar(255) DEFAULT NULL,
  `show_text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `show_orders_zan`
-- ----------------------------
DROP TABLE IF EXISTS `show_orders_zan`;
CREATE TABLE `show_orders_zan` (
  `show_orders_read_id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) DEFAULT NULL,
  `show_orders_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`show_orders_read_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `site`
-- ----------------------------
DROP TABLE IF EXISTS `site`;
CREATE TABLE `site` (
  `title` varchar(255) NOT NULL,
  `value` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `sms_code_blacklist`
-- ----------------------------
DROP TABLE IF EXISTS `sms_code_blacklist`;
CREATE TABLE `sms_code_blacklist` (
  `mobile` decimal(11,0) NOT NULL COMMENT '短信黑名单手机号',
  `restrictedreg` decimal(1,0) DEFAULT NULL COMMENT '',
  `restrictedlog` decimal(1,0) DEFAULT NULL COMMENT '',
  `restrictedpwd` decimal(1,0) DEFAULT NULL COMMENT '',
  `restrictedver` decimal(1,0) DEFAULT NULL COMMENT '',
  `restrictedbin` decimal(1,0) DEFAULT NULL COMMENT '',
  `status` decimal(1,0) DEFAULT NULL COMMENT '',
  PRIMARY KEY (`mobile`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `sms_code_log`
-- ----------------------------
DROP TABLE IF EXISTS `sms_code_log`;
CREATE TABLE `sms_code_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime DEFAULT NULL,
  `auth_code` varchar(50) DEFAULT NULL,
  `content` varchar(200) DEFAULT NULL,
  `log_ip` varchar(50) DEFAULT NULL,
  `mobile_phone` varchar(11) DEFAULT NULL,
  `send_type` int(11) DEFAULT NULL,
  `used_state` int(11) DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `spec`
-- ----------------------------
DROP TABLE IF EXISTS `spec`;
CREATE TABLE `spec` (
  `spec_id` int(11) NOT NULL AUTO_INCREMENT,
  `spec_name` varchar(12) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`spec_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `spec_value`
-- ----------------------------
DROP TABLE IF EXISTS `spec_value`;
CREATE TABLE `spec_value` (
  `spec_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `spec_id` int(11) DEFAULT NULL,
  `spec_value_name` varchar(255) NOT NULL,
  PRIMARY KEY (`spec_value_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `special`
-- ----------------------------
DROP TABLE IF EXISTS `special`;
CREATE TABLE `special` (
  `special_id` int(11) NOT NULL AUTO_INCREMENT,
  `background_color` varchar(255) DEFAULT NULL,
  `background_image` varchar(255) DEFAULT NULL,
  `background_repeat` varchar(255) DEFAULT NULL,
  `margin_top` int(11) DEFAULT NULL,
  `special_image` varchar(255) DEFAULT NULL,
  `special_state` int(11) DEFAULT NULL,
  `special_title` varchar(20) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`special_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `special_item`
-- ----------------------------
DROP TABLE IF EXISTS `special_item`;
CREATE TABLE `special_item` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_data` longtext,
  `item_sort` int(11) DEFAULT NULL,
  `item_type` varchar(255) DEFAULT NULL,
  `special_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `start_ad_slider`
-- ----------------------------
DROP TABLE IF EXISTS `start_ad_slider`;
CREATE TABLE `start_ad_slider` (
  `start_ad_slider_id` int(11) NOT NULL AUTO_INCREMENT,
  `image_json` longtext,
  PRIMARY KEY (`start_ad_slider_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `stat_category_general`
-- ----------------------------
DROP TABLE IF EXISTS `stat_category_general`;
CREATE TABLE `stat_category_general` (
  `stat_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `category_id_1` int(11) DEFAULT NULL,
  `category_id_2` int(11) DEFAULT NULL,
  `category_id_3` int(11) DEFAULT NULL,
  `category_name` varchar(255) NOT NULL,
  `deep` int(11) DEFAULT NULL,
  `goods_count` bigint(20) NOT NULL,
  `have_orders_goods_count` bigint(20) NOT NULL,
  `no_orders_goods_count` bigint(20) NOT NULL,
  `orders_amount` decimal(19,2) NOT NULL,
  `orders_num` bigint(20) NOT NULL,
  PRIMARY KEY (`stat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `stat_hours`
-- ----------------------------
DROP TABLE IF EXISTS `stat_hours`;
CREATE TABLE `stat_hours` (
  `stat_id` int(11) NOT NULL AUTO_INCREMENT,
  `new_goods_common_num` bigint(20) DEFAULT NULL,
  `new_member_num` bigint(20) NOT NULL,
  `new_store_num` bigint(20) NOT NULL,
  `orders_amount` decimal(19,2) NOT NULL,
  `orders_num` bigint(20) NOT NULL,
  `predeposit_balance_amount` decimal(19,2) NOT NULL,
  `predeposit_cash_amount` decimal(19,2) NOT NULL,
  `predeposit_consume_amount` decimal(19,2) NOT NULL,
  `predeposit_recharge_amount` decimal(19,2) NOT NULL,
  `predeposit_refund_amount` decimal(19,2) NOT NULL,
  `refund_amount` decimal(19,2) DEFAULT NULL,
  `stat_date` datetime NOT NULL,
  `stat_hour` int(11) NOT NULL,
  PRIMARY KEY (`stat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1110 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `stat_member`
-- ----------------------------
DROP TABLE IF EXISTS `stat_member`;
CREATE TABLE `stat_member` (
  `stat_id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL,
  `member_name` varchar(255) NOT NULL,
  `orders_amount` decimal(19,2) NOT NULL,
  `orders_num` bigint(20) NOT NULL,
  `points_increase` bigint(20) NOT NULL,
  `points_reduce` bigint(20) NOT NULL,
  `predeposit_increase` decimal(19,2) NOT NULL,
  `predeposit_reduce` decimal(19,2) NOT NULL,
  `stat_date` datetime NOT NULL,
  PRIMARY KEY (`stat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2364 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `stat_orders` 批发订单
-- ----------------------------
DROP TABLE IF EXISTS `stat_orders`;
CREATE TABLE `stat_orders` (
  `orders_id` int(11) NOT NULL,
  `admin_receive_pay_state` int(11) DEFAULT NULL,
  `auto_receive_time` datetime DEFAULT NULL,
  `cancel_reason` int(11) DEFAULT NULL,
  `cancel_role` varchar(255) DEFAULT NULL,
  `cancel_time` datetime DEFAULT NULL,
  `commission_amount` decimal(19,2) DEFAULT NULL,
  `conform_price` decimal(19,2) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `create_time_date` varchar(255) DEFAULT NULL,
  `create_time_hour` varchar(255) DEFAULT NULL,
  `delay_receive_state` int(11) DEFAULT NULL,
  `evaluation_append_state` int(11) DEFAULT NULL,
  `evaluation_state` int(11) DEFAULT NULL,
  `evaluation_time` datetime DEFAULT NULL,
  `finish_time` datetime DEFAULT NULL,
  `freight_amount` decimal(19,2) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `is_free_freight` int(11) DEFAULT NULL,
  `limit_amount` decimal(19,2) DEFAULT NULL,
  `lock_state` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  `orders_amount` decimal(19,2) DEFAULT NULL,
  `orders_from` varchar(255) DEFAULT NULL,
  `orders_from1` varchar(255) DEFAULT NULL,
  `orders_sn` bigint(20) DEFAULT NULL,
  `orders_state` int(11) DEFAULT NULL,
  `orders_type` int(11) DEFAULT NULL,
  `out_orders_sn` varchar(255) DEFAULT NULL,
  `pay_id` int(11) DEFAULT NULL,
  `pay_sn` bigint(20) DEFAULT NULL,
  `payment_client_type` varchar(255) DEFAULT NULL,
  `payment_code` varchar(255) DEFAULT NULL,
  `payment_time` datetime DEFAULT NULL,
  `payment_type_code` varchar(255) DEFAULT NULL,
  `predeposit_amount` decimal(19,2) DEFAULT NULL,
  `reciver_address` varchar(255) DEFAULT NULL,
  `receiver_area_id_1` int(11) DEFAULT NULL,
  `receiver_area_id_2` int(11) DEFAULT NULL,
  `receiver_area_id_3` int(11) DEFAULT NULL,
  `receiver_area_id_4` int(11) DEFAULT NULL,
  `receiver_area_info` varchar(255) DEFAULT NULL,
  `receiver_message` varchar(255) DEFAULT NULL,
  `receiver_name` varchar(255) DEFAULT NULL,
  `receiver_phone` varchar(255) DEFAULT NULL,
  `refund_amount` decimal(19,2) DEFAULT NULL,
  `refund_state` int(11) DEFAULT NULL,
  `send_time` datetime DEFAULT NULL,
  `ship_code` varchar(255) DEFAULT NULL,
  `ship_name` varchar(255) DEFAULT NULL,
  `ship_note` varchar(255) DEFAULT NULL,
  `ship_sn` varchar(255) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `store_name` varchar(255) DEFAULT NULL,
  `template_id` int(11) DEFAULT NULL,
  `voucher_code` varchar(255) DEFAULT NULL,
  `voucher_price` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`orders_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `stat_orders_goods`
-- ----------------------------
DROP TABLE IF EXISTS `stat_orders_goods`;
CREATE TABLE `stat_orders_goods` (
  `orders_goods_id` int(11) NOT NULL,
  `base_price` decimal(19,2) DEFAULT NULL,
  `bundling_id` int(11) DEFAULT NULL,
  `buy_num` int(11) DEFAULT NULL,
  `cartgory_id` int(11) DEFAULT NULL,
  `category_id_1` int(11) DEFAULT NULL,
  `category_id_2` int(11) DEFAULT NULL,
  `category_id_3` int(11) DEFAULT NULL,
  `commission_rate` int(11) DEFAULT NULL,
  `common_id` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `create_time_date` datetime DEFAULT NULL,
  `create_time_hour` int(11) DEFAULT NULL,
  `goods_full_specs` varchar(255) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `goods_image` varchar(255) DEFAULT NULL,
  `goods_name` varchar(255) DEFAULT NULL,
  `goods_pay_amount` decimal(19,2) DEFAULT NULL,
  `goods_price` decimal(19,2) DEFAULT NULL,
  `goods_type` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  `orders_id` int(11) DEFAULT NULL,
  `promotion_title` varchar(10) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `store_name` varchar(255) DEFAULT NULL,
  `unit_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`orders_goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `stat_orders_update_task`
-- ----------------------------
DROP TABLE IF EXISTS `stat_orders_update_task`;
CREATE TABLE `stat_orders_update_task` (
  `task_id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime NOT NULL,
  `orders_id` int(11) NOT NULL,
  `task_state` int(11) NOT NULL,
  `task_type` varchar(255) NOT NULL,
  PRIMARY KEY (`task_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `stat_price_range`
-- ----------------------------
DROP TABLE IF EXISTS `stat_price_range`;
CREATE TABLE `stat_price_range` (
  `range_id` int(11) NOT NULL AUTO_INCREMENT,
  `range_price` int(11) NOT NULL,
  `range_type` varchar(255) NOT NULL,
  PRIMARY KEY (`range_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `stat_promotion_hours`
-- ----------------------------
DROP TABLE IF EXISTS `stat_promotion_hours`;
CREATE TABLE `stat_promotion_hours` (
  `stat_id` int(11) NOT NULL AUTO_INCREMENT,
  `orders_amount` decimal(19,2) NOT NULL,
  `orders_goods_num` bigint(20) NOT NULL,
  `orders_num` bigint(20) NOT NULL,
  `promotion_type` int(11) NOT NULL,
  `stat_date` datetime NOT NULL,
  `stat_hour` int(11) NOT NULL,
  PRIMARY KEY (`stat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `stat_setting`
-- ----------------------------
DROP TABLE IF EXISTS `stat_setting`;
CREATE TABLE `stat_setting` (
  `title` varchar(255) NOT NULL,
  `value` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `stat_store_hours`
-- ----------------------------
DROP TABLE IF EXISTS `stat_store_hours`;
CREATE TABLE `stat_store_hours` (
  `stat_id` int(11) NOT NULL AUTO_INCREMENT,
  `orders_amount` decimal(19,2) NOT NULL,
  `orders_goods_num` bigint(20) NOT NULL,
  `orders_num` bigint(20) NOT NULL,
  `stat_date` datetime NOT NULL,
  `stat_hour` int(11) NOT NULL,
  `store_class_id` int(11) DEFAULT NULL,
  `store_class_name` varchar(255) NOT NULL,
  `store_id` int(11) NOT NULL,
  `store_name` varchar(255) NOT NULL,
  PRIMARY KEY (`stat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=815 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `stat_store_price_range`
-- ----------------------------
DROP TABLE IF EXISTS `stat_store_price_range`;
CREATE TABLE `stat_store_price_range` (
  `range_id` int(11) NOT NULL AUTO_INCREMENT,
  `range_price` int(11) NOT NULL,
  `range_type` varchar(255) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`range_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `store`
-- ----------------------------
DROP TABLE IF EXISTS `store`;
CREATE TABLE `store` (
  `store_id` int(11) NOT NULL,
  `allow_foreign_goods` int(11) DEFAULT NULL,
  `bill_cycle` int(11) DEFAULT NULL,
  `bill_cycle_type` int(11) DEFAULT NULL,
  `business_licence_image` varchar(255) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `class_name` varchar(255) DEFAULT NULL,
  `company_area` varchar(255) DEFAULT NULL,
  `company_area_id` int(11) DEFAULT NULL,
  `company_name` varchar(20) DEFAULT NULL,
  `decoration_color` varchar(255) DEFAULT NULL,
  `decoration_id` int(11) DEFAULT NULL,
  `decoration_only` int(11) DEFAULT NULL,
  `decoration_state` int(11) DEFAULT NULL,
  `food_circulation_permit_image` varchar(255) DEFAULT NULL,
  `grade_id` int(11) DEFAULT NULL,
  `grade_name` varchar(255) DEFAULT NULL,
  `is_own_shop` int(11) DEFAULT NULL,
  `is_recommend` int(11) DEFAULT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `seller_name` varchar(20) DEFAULT NULL,
  `ship_company` varchar(500) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `store_address` varchar(255) DEFAULT NULL,
  `store_aftersales` longtext,
  `store_avatar` varchar(255) DEFAULT NULL,
  `store_banner` varchar(255) DEFAULT NULL,
  `store_collect` int(11) DEFAULT NULL,
  `store_commitment` varchar(120) DEFAULT NULL,
  `store_create_time` datetime DEFAULT NULL,
  `store_deliverycredit` double DEFAULT NULL,
  `store_desccredit` double DEFAULT NULL,
  `store_end_time` datetime DEFAULT NULL,
  `store_logo` varchar(255) DEFAULT NULL,
  `store_name` varchar(50) NOT NULL,
  `store_phone` varchar(20) DEFAULT NULL,
  `store_presales` longtext,
  `store_sales` int(11) DEFAULT NULL,
  `store_seo_description` varchar(120) DEFAULT NULL,
  `store_seo_keywords` varchar(50) DEFAULT NULL,
  `store_servicecredit` double DEFAULT NULL,
  `store_theme` varchar(255) DEFAULT NULL,
  `store_workingtime` varchar(255) DEFAULT NULL,
  `store_zy` varchar(50) DEFAULT NULL,
  `qiyu_merchant_id` varchar(255) DEFAULT NULL,
  `qiyu_app_key` varchar(255) DEFAULT NULL,
  `qiyu_account` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`store_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `store_bind_category`
-- ----------------------------
DROP TABLE IF EXISTS `store_bind_category`;
CREATE TABLE `store_bind_category` (
  `bind_id` int(11) NOT NULL AUTO_INCREMENT,
  `bind_state` int(11) DEFAULT NULL,
  `category_id1` int(11) DEFAULT NULL,
  `category_id2` int(11) DEFAULT NULL,
  `category_id3` int(11) DEFAULT NULL,
  `category_name1` varchar(255) DEFAULT NULL,
  `category_name2` varchar(255) DEFAULT NULL,
  `category_name3` varchar(255) DEFAULT NULL,
  `commission_rate` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`bind_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `store_certificate`
-- ----------------------------
DROP TABLE IF EXISTS `store_certificate`;
CREATE TABLE `store_certificate` (
  `seller_id` int(11) NOT NULL,
  `bank_account_name` varchar(255) DEFAULT NULL,
  `bank_account_number` varchar(255) DEFAULT NULL,
  `bank_address` varchar(255) DEFAULT NULL,
  `bank_code` varchar(255) DEFAULT NULL,
  `bank_licence_image` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `business_licence_image` varchar(255) DEFAULT NULL,
  `business_licence_number` varchar(255) DEFAULT NULL,
  `business_sphere` varchar(2000) DEFAULT NULL,
  `company_address` varchar(255) DEFAULT NULL,
  `company_address_detail` varchar(255) DEFAULT NULL,
  `company_address_id` int(11) DEFAULT NULL,
  `company_employee_count` int(11) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `company_phone` varchar(255) DEFAULT NULL,
  `company_registered_capital` int(11) DEFAULT NULL,
  `contacts_email` varchar(255) DEFAULT NULL,
  `contacts_name` varchar(255) DEFAULT NULL,
  `contacts_phone` varchar(255) DEFAULT NULL,
  `legal_name` varchar(255) DEFAULT NULL,
  `legal_code` varchar(255) DEFAULT NULL,
  `legal_image` varchar(255) DEFAULT NULL,
  `seller_name` varchar(255) DEFAULT NULL,
  `settlement_bank_account_name` varchar(255) DEFAULT NULL,
  `settlement_bank_account_number` varchar(255) DEFAULT NULL,
  `settlement_bank_address` varchar(255) DEFAULT NULL,
  `settlement_bank_code` varchar(255) DEFAULT NULL,
  `settlement_bank_name` varchar(255) DEFAULT NULL,
  `tax_registration_certificate` varchar(255) DEFAULT NULL,
  `tax_registration_image` varchar(255) DEFAULT NULL,
  `taxpayer_id` varchar(255) DEFAULT NULL,
  `tmp_modify` longtext,
  PRIMARY KEY (`seller_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `store_certificate_invoice`
-- ----------------------------
DROP TABLE IF EXISTS `store_certificate_invoice`;
CREATE TABLE `store_certificate_invoice` (
  `seller_id` int(11) NOT NULL COMMENT '商家编号',
  `taxpayer_id` varchar(255) NOT NULL COMMENT '纳税人识别号',
  `taxpayer_name` varchar(255) NOT NULL COMMENT '纳税人识名称',
  `company_address_detail` varchar(255) NOT NULL COMMENT '公司详细地址',
  `company_phone` varchar(255) NOT NULL COMMENT '公司电话',
  `bank_name` varchar(255) NOT NULL COMMENT '开户银行名称',
  `bank_account_number` varchar(255) NOT NULL COMMENT '银行账号',
  `company_address_id` int(3) NOT NULL COMMENT '公司地区代码',
  `register_time` datetime DEFAULT NULL COMMENT '最新调用大象慧云注册接口的时间',
  `response` varchar(1000) DEFAULT NULL COMMENT '调用大象慧云注册接口的返回值',
  `is_register` int(1) NOT NULL COMMENT '是否在大象慧云注册(0未注册，1已注册)',
  `push_json` varchar(500) DEFAULT NULL COMMENT '大象慧云推送的json有关注册状态',
  `push_time` datetime DEFAULT NULL COMMENT '大象慧云推送时间',
  `status` int(2) NOT NULL COMMENT '0为初始化    -1不能开票也叫失败(9999)    1可以开票(0000)    0000个9999  两个状态都是大象推送给我的',
  `is_paper_invoice` int(11) NOT NULL DEFAULT '0' COMMENT '是否开纸质发票  0:不开纸质发票 , 1:开纸质发票',
  PRIMARY KEY (`seller_id`) USING BTREE,
  KEY `invoice_seller_id` (`seller_id`),
  CONSTRAINT `invoice_seller_id_foreign` FOREIGN KEY (`seller_id`) REFERENCES `seller` (`seller_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `store_class`
-- ----------------------------
DROP TABLE IF EXISTS `store_class`;
CREATE TABLE `store_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bail` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `store_cost`
-- ----------------------------
DROP TABLE IF EXISTS `store_cost`;
CREATE TABLE `store_cost` (
  `cost_id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime DEFAULT NULL,
  `cost` decimal(19,2) DEFAULT NULL,
  `cost_state` int(11) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `seller_name` varchar(255) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `store_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cost_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `store_customs_info`
-- ----------------------------
DROP TABLE IF EXISTS `store_customs_info`;
CREATE TABLE `store_customs_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `store_id` int(11) NOT NULL COMMENT '店铺ID',
  `store_name` varchar(50) NOT NULL COMMENT '店铺名称',
  `alipay_customs_place` varchar(20) NOT NULL COMMENT '支付宝推送海关地址编号',
  `wechat_customs_place` varchar(20) NOT NULL COMMENT '微信推送海关地址编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `store_grade`
-- ----------------------------
DROP TABLE IF EXISTS `store_grade`;
CREATE TABLE `store_grade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `album_limit` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `goods_limit` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `recommend_limit` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `template_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `store_joinin`
-- ----------------------------
DROP TABLE IF EXISTS `store_joinin`;
CREATE TABLE `store_joinin` (
  `seller_id` int(11) NOT NULL,
  `allow_foreign_goods` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `grade_id` int(11) DEFAULT NULL,
  `joinin_message` varchar(255) DEFAULT NULL,
  `joinin_submit_time` datetime DEFAULT NULL,
  `joinin_year` int(11) DEFAULT NULL,
  `paying_amount` int(11) DEFAULT NULL,
  `paying_certificate` varchar(255) DEFAULT NULL,
  `paying_CertificateExp` varchar(255) DEFAULT NULL,
  `seller_name` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `store_name` varchar(255) DEFAULT NULL,
  `audit_submit_time` datetime DEFAULT NULL COMMENT '审核提交时间',
  `bond_joinin_message` varchar(255) DEFAULT NULL COMMENT '管理员审核信息  保证金',
  PRIMARY KEY (`seller_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `store_label`
-- ----------------------------
DROP TABLE IF EXISTS `store_label`;
CREATE TABLE `store_label` (
  `store_label_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `is_fold` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `store_label_name` varchar(255) DEFAULT NULL,
  `store_label_sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`store_label_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `store_label_goods`
-- ----------------------------
DROP TABLE IF EXISTS `store_label_goods`;
CREATE TABLE `store_label_goods` (
  `store_label_id` int(11) NOT NULL,
  `common_id` int(11) NOT NULL,
  PRIMARY KEY (`store_label_id`,`common_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `store_md`
-- ----------------------------
DROP TABLE IF EXISTS `store_md`;
CREATE TABLE `store_md` (
  `store_id` int(10) NOT NULL COMMENT '店铺id',
  `md` varchar(20) NOT NULL COMMENT 'md姓名',
  PRIMARY KEY (`store_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `store_message`
-- ----------------------------
DROP TABLE IF EXISTS `store_message`;
CREATE TABLE `store_message` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime DEFAULT NULL,
  `is_read` int(11) DEFAULT NULL,
  `message_content` varchar(255) DEFAULT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `sn` varchar(255) DEFAULT NULL,
  `tpl_class` int(11) DEFAULT NULL,
  `tpl_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`message_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `store_message_seller`
-- ----------------------------
DROP TABLE IF EXISTS `store_message_seller`;
CREATE TABLE `store_message_seller` (
  `tpl_code` varchar(255) NOT NULL,
  `sellerId` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`tpl_code`,`sellerId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `store_message_setting`
-- ----------------------------
DROP TABLE IF EXISTS `store_message_setting`;
CREATE TABLE `store_message_setting` (
  `tpl_code` varchar(255) NOT NULL,
  `store_id` int(11) NOT NULL,
  `is_receive` int(11) DEFAULT NULL,
  PRIMARY KEY (`tpl_code`,`store_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `store_mobile`
-- ----------------------------
DROP TABLE IF EXISTS `store_mobile`;
CREATE TABLE `store_mobile` (
  `store_id` int(11) NOT NULL,
  `decoration_only` int(11) DEFAULT NULL,
  `decoration_state` int(11) DEFAULT NULL,
  `store_banner` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`store_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `store_mobile_special`
-- ----------------------------
DROP TABLE IF EXISTS `store_mobile_special`;
CREATE TABLE `store_mobile_special` (
  `special_id` int(11) NOT NULL AUTO_INCREMENT,
  `special_desc` varchar(20) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`special_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `store_mobile_special_item`
-- ----------------------------
DROP TABLE IF EXISTS `store_mobile_special_item`;
CREATE TABLE `store_mobile_special_item` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_data` varchar(2000) DEFAULT NULL,
  `item_sort` int(11) DEFAULT NULL,
  `item_type` varchar(255) DEFAULT NULL,
  `special_id` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `store_navigation`
-- ----------------------------
DROP TABLE IF EXISTS `store_navigation`;
CREATE TABLE `store_navigation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext,
  `is_new_page` int(11) DEFAULT NULL,
  `is_show` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `title` varchar(10) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `store_slide`
-- ----------------------------
DROP TABLE IF EXISTS `store_slide`;
CREATE TABLE `store_slide` (
  `slide_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`slide_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `store_special`
-- ----------------------------
DROP TABLE IF EXISTS `store_special`;
CREATE TABLE `store_special` (
  `special_id` int(11) NOT NULL AUTO_INCREMENT,
  `background_color` varchar(255) DEFAULT NULL,
  `background_image` varchar(255) DEFAULT NULL,
  `background_repeat` varchar(255) DEFAULT NULL,
  `margin_top` int(11) DEFAULT NULL,
  `special_state` int(11) DEFAULT NULL,
  `special_title` varchar(20) DEFAULT NULL,
  `special_type` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`special_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `store_special_item`
-- ----------------------------
DROP TABLE IF EXISTS `store_special_item`;
CREATE TABLE `store_special_item` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_data` longtext,
  `item_sort` int(11) DEFAULT NULL,
  `item_type` varchar(255) DEFAULT NULL,
  `special_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `szzg_special_selling_goods`
-- ----------------------------
DROP TABLE IF EXISTS `szzg_special_selling_goods`;
CREATE TABLE `szzg_special_selling_goods` (
  `goods_id` int(20) NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(200) DEFAULT '' COMMENT '特卖商品名称',
  `goods_url` varchar(500) DEFAULT '' COMMENT 'wap站商品详情页链接',
  `sort` tinyint(4) DEFAULT '0' COMMENT '排序',
  `is_show` smallint(6) DEFAULT '2' COMMENT '是否显示：1 显示 2 不显示',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='特卖商品';

-- ----------------------------
--  Table structure for `szzg_special_selling_image`
-- ----------------------------
DROP TABLE IF EXISTS `szzg_special_selling_image`;
CREATE TABLE `szzg_special_selling_image` (
  `image_id` int(20) NOT NULL AUTO_INCREMENT,
  `goods_id` int(20) DEFAULT NULL COMMENT '特卖商品主键',
  `image_url` varchar(500) DEFAULT NULL COMMENT '图片地址',
  `thumbnail` varchar(500) DEFAULT NULL COMMENT '缩略图',
  `key` varchar(500) DEFAULT NULL COMMENT '阿里云存储对应的key',
  `sort` smallint(6) DEFAULT '0' COMMENT '排序',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8 COMMENT='特卖商品大图 -素材';

-- ----------------------------
--  Table structure for `t_blackuser`
-- ----------------------------
DROP TABLE IF EXISTS `t_blackuser`;
CREATE TABLE `t_blackuser` (
  `userautoid` int(38) NOT NULL COMMENT '用户id',
  `username` varchar(255) DEFAULT NULL COMMENT '姓名',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `homephone` varchar(255) DEFAULT NULL COMMENT '电话',
  `status` int(4) DEFAULT NULL COMMENT '状态1-黑名单',
  PRIMARY KEY (`userautoid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `task`
-- ----------------------------
DROP TABLE IF EXISTS `task`;
CREATE TABLE `task` (
  `task_id` int(11) NOT NULL AUTO_INCREMENT,
  `task_name` varchar(50) NOT NULL,
  `task_state` int(1) DEFAULT NULL COMMENT '任务状态',
  `task_type` tinyint(4) DEFAULT NULL COMMENT '任务类型',
  `seller_id` int(11) NOT NULL,
  `seller_name` varchar(50) NOT NULL COMMENT '商家用户名',
  `store_id` int(11) NOT NULL,
  `store_name` varchar(50) NOT NULL COMMENT '店铺名称',
  `common_id` int(11) NOT NULL,
  `goods_name` varchar(80) NOT NULL COMMENT '商品名称',
  `image_name` varchar(256) DEFAULT NULL COMMENT '图片地址',
  `task_grade` int(1) DEFAULT NULL COMMENT '活动等级',
  `task_desc` varchar(5000) DEFAULT NULL COMMENT '活动描述',
  `publish_time` datetime DEFAULT NULL COMMENT '发布时间',
  `delete_state` tinyint(1) DEFAULT NULL COMMENT '删除状态',
  `total_num` int(11) NOT NULL COMMENT '允许用户领取任务的总数量',
  `audit_num` int(11) NOT NULL COMMENT '审核通过数量',
  `reward_amount` decimal(19,2) DEFAULT NULL,
  `reward_total_amount` decimal(19,2) DEFAULT NULL,
  `service_amount` decimal(19,2) DEFAULT NULL,
  `service_cale` int(5) DEFAULT NULL,
  `task_sn` varchar(50) DEFAULT NULL,
  `pay_amount` decimal(19,2) DEFAULT NULL,
  `payment_time` datetime DEFAULT NULL COMMENT '支付时间',
  `pay_sn` bigint(20) DEFAULT NULL COMMENT '支付单号',
  `pay_state` int(1) DEFAULT NULL,
  `add_time` datetime DEFAULT NULL COMMENT '添加时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `audit_time` datetime DEFAULT NULL COMMENT '审核时间',
  PRIMARY KEY (`task_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
--  Table structure for `task_receive`
-- ----------------------------
DROP TABLE IF EXISTS `task_receive`;
CREATE TABLE `task_receive` (
  `receive_id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL,
  `member_name` varchar(64) NOT NULL COMMENT '用户名',
  `task_id` int(11) NOT NULL,
  `files_id` int(11) NOT NULL,
  `vod_files_id` varchar(50) DEFAULT NULL,
  `receive_state` int(2) DEFAULT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `seller_name` varchar(60) DEFAULT NULL COMMENT '审核用户名字',
  `add_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL COMMENT '发布时间',
  `audit_time` datetime DEFAULT NULL,
  PRIMARY KEY (`receive_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
--  Table structure for `task_receive_log`
-- ----------------------------
DROP TABLE IF EXISTS `task_receive_log`;
CREATE TABLE `task_receive_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL,
  `member_name` varchar(64) NOT NULL COMMENT '用户名',
  `task_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `seller_name` varchar(50) NOT NULL COMMENT '审核用户名字',
  `type` int(2) DEFAULT NULL,
  `receive_amount` decimal(19,2) DEFAULT NULL,
  `add_time` datetime DEFAULT NULL,
  `description` varchar(50) NOT NULL,
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
--  Table structure for `task_template`
-- ----------------------------
DROP TABLE IF EXISTS `task_template`;
CREATE TABLE `task_template` (
  `template_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '模板ID、主键ID、 初级1   中级2   高级3',
  `amount` decimal(19,2) NOT NULL COMMENT '活动金额',
  `template_content_1` varchar(5000) NOT NULL COMMENT '模板1',
  `template_content_2` varchar(5000) NOT NULL COMMENT '模板2',
  `admin_id` int(11) NOT NULL COMMENT '审核用户',
  `add_time` datetime DEFAULT NULL COMMENT '新建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`template_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='任务设置';

-- ----------------------------
--  Table structure for `tax_class_category`
-- ----------------------------
DROP TABLE IF EXISTS `tax_class_category`;
CREATE TABLE `tax_class_category` (
  `category_id` int(11) NOT NULL COMMENT '三级分类id',
  `tax_class_id` int(11) NOT NULL COMMENT '税收分类编码表主键id',
  `tax_class_slv` varchar(10) NOT NULL COMMENT '税率',
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品分类对税收分类表';

-- ----------------------------
--  Table structure for `tax_class_code`
-- ----------------------------
DROP TABLE IF EXISTS `tax_class_code`;
CREATE TABLE `tax_class_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bm` varchar(25) DEFAULT NULL COMMENT '简码',
  `hbbm` varchar(100) DEFAULT NULL COMMENT '税收分类编码',
  `mc` varchar(255) DEFAULT NULL COMMENT '税收名称',
  `sm` varchar(1200) DEFAULT NULL COMMENT '税收说明',
  `slv` varchar(10) DEFAULT NULL COMMENT '税率',
  `zzstsgl` varchar(100) DEFAULT NULL COMMENT '优惠政策说明',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4227 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tax_class_item`
-- ----------------------------
DROP TABLE IF EXISTS `tax_class_item`;
CREATE TABLE `tax_class_item` (
  `common_id` int(11) NOT NULL COMMENT '商品SPU',
  `tax_class_id` int(11) NOT NULL COMMENT '税收分类编码表主键id''',
  `tax_class_slv` varchar(10) NOT NULL COMMENT '税率',
  PRIMARY KEY (`common_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `temp_data_setting`
-- ----------------------------
DROP TABLE IF EXISTS `temp_data_setting`;
CREATE TABLE `temp_data_setting` (
  `title` varchar(255) NOT NULL,
  `value` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tencent_cloud_video`
-- ----------------------------
DROP TABLE IF EXISTS `tencent_cloud_video`;
CREATE TABLE `tencent_cloud_video` (
  `dwid` int(10) NOT NULL,
  `videoid` varchar(50) NOT NULL,
  `upload_tencent_time` datetime(6) NOT NULL,
  PRIMARY KEY (`dwid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `theme`
-- ----------------------------
DROP TABLE IF EXISTS `theme`;
CREATE TABLE `theme` (
  `theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `background_color` varchar(255) DEFAULT NULL,
  `background_image` varchar(255) DEFAULT NULL,
  `background_repeat` varchar(255) DEFAULT NULL,
  `enroll_end_time` datetime DEFAULT NULL,
  `enroll_start_time` datetime DEFAULT NULL,
  `margin_top` int(11) DEFAULT NULL,
  `show_end_time` datetime DEFAULT NULL,
  `show_start_time` datetime DEFAULT NULL,
  `theme_describe` varchar(500) DEFAULT NULL,
  `theme_image` varchar(255) DEFAULT NULL,
  `theme_state` int(11) DEFAULT NULL,
  `theme_title` varchar(20) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`theme_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `theme_goods`
-- ----------------------------
DROP TABLE IF EXISTS `theme_goods`;
CREATE TABLE `theme_goods` (
  `theme_goods_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_name` varchar(255) DEFAULT NULL,
  `add_time` datetime DEFAULT NULL,
  `common_id` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `theme_id` int(11) DEFAULT NULL,
  `theme_verify` int(11) DEFAULT NULL,
  `verify_remark` varchar(255) DEFAULT NULL,
  `verify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`theme_goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `theme_item`
-- ----------------------------
DROP TABLE IF EXISTS `theme_item`;
CREATE TABLE `theme_item` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_data` longtext,
  `item_sort` int(11) DEFAULT NULL,
  `item_type` varchar(255) DEFAULT NULL,
  `theme_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `today_explosions_common` 今日爆款 
-- ----------------------------
DROP TABLE IF EXISTS `today_explosions_common`;
CREATE TABLE `today_explosions_common` (
  `explosions_common_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `schedule_id` int(11) DEFAULT NULL,
  `common_id` int(11) DEFAULT NULL COMMENT '商品SPU',
  `goods_name` varchar(50) DEFAULT NULL COMMENT '商品名称',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `goods_describe` varchar(50) DEFAULT NULL COMMENT '商品描述',
  `goods_image` varchar(255) DEFAULT NULL COMMENT '首页图片',
  `buyer_says` varchar(255) DEFAULT NULL COMMENT '买手说',
  `tag_one` varchar(50) DEFAULT NULL COMMENT '标签描述1',
  `tag_two` varchar(50) DEFAULT NULL COMMENT '标签描述2',
  `tag_three` varchar(50) DEFAULT NULL COMMENT '标签描述3',
  PRIMARY KEY (`explosions_common_id`)
) ENGINE=InnoDB AUTO_INCREMENT=298 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `today_explosions_schedule`
-- ----------------------------
DROP TABLE IF EXISTS `today_explosions_schedule`;
CREATE TABLE `today_explosions_schedule` (
  `schedule_id` int(11) NOT NULL AUTO_INCREMENT,
  `schedule_name` varchar(255) DEFAULT NULL,
  `schedule_name2th` varchar(255) DEFAULT NULL,
  `schedule_state` int(11) DEFAULT NULL,
  `schedule_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`schedule_id`)
) ENGINE=InnoDB AUTO_INCREMENT=285 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `today_explosions_special`
-- ----------------------------
DROP TABLE IF EXISTS `today_explosions_special`;
CREATE TABLE `today_explosions_special` (
  `special_id` int(11) NOT NULL AUTO_INCREMENT,
  `share_title` varchar(200) DEFAULT NULL COMMENT '分享标题',
  `share_desc` varchar(500) DEFAULT NULL COMMENT '分享描述',
  `share_imgurl` varchar(255) DEFAULT NULL COMMENT '分享图标',
  PRIMARY KEY (`special_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `topicality_flag`
-- ----------------------------
DROP TABLE IF EXISTS `topicality_flag`;
CREATE TABLE `topicality_flag` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `flag_sn` varchar(32) NOT NULL DEFAULT '0' COMMENT '标签编码',
  `flag_name` varchar(64) NOT NULL COMMENT '标签名称',
  `flag_image` varchar(128) DEFAULT NULL COMMENT '标签头像',
  `flag_description` varchar(256) DEFAULT NULL COMMENT '标签说明',
  `flag_type` varchar(512) DEFAULT NULL COMMENT '所属分类',
  `flag_source` varchar(32) NOT NULL COMMENT '标签来源APP admin',
  `flag_state` int(4) NOT NULL COMMENT '标签状态1-已创建2-已发布3-已审批',
  `flag_choice` int(4) NOT NULL DEFAULT '0' COMMENT '是否精选0-否1-是',
  `use_num` int(12) NOT NULL COMMENT '使用此时',
  `create_name` varchar(64) NOT NULL COMMENT '创建者',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `push_time` datetime DEFAULT NULL COMMENT '发布时间',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COMMENT='话题标签';

-- ----------------------------
--  Table structure for `trys`
-- ----------------------------
DROP TABLE IF EXISTS `trys`;
CREATE TABLE `trys` (
  `trys_id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `common_id` int(11) DEFAULT NULL,
  `content` longtext,
  `content_type` int(11) DEFAULT NULL,
  `current_num` int(11) DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `goods_full_specs` varchar(255) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `goods_name` varchar(255) DEFAULT NULL,
  `goods_price` decimal(19,2) DEFAULT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `max_num` int(11) DEFAULT NULL,
  `provide_num` int(11) DEFAULT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `store_name` varchar(255) DEFAULT NULL,
  `trys_report_num` int(11) DEFAULT NULL,
  `trys_state` int(11) DEFAULT NULL,
  `trys_type` int(11) DEFAULT NULL,
  `voucher_price` decimal(19,2) DEFAULT NULL,
  `voucher_template_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`trys_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `trys_apply`
-- ----------------------------
DROP TABLE IF EXISTS `trys_apply`;
CREATE TABLE `trys_apply` (
  `apply_id` int(11) NOT NULL AUTO_INCREMENT,
  `age` int(11) DEFAULT NULL,
  `apply_state` int(11) DEFAULT NULL,
  `apply_time` datetime DEFAULT NULL,
  `auto_add_black_state` int(11) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `buy_end_time` datetime DEFAULT NULL,
  `buy_state` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `common_id` int(11) DEFAULT NULL,
  `content` longtext,
  `content_image` longtext,
  `goods_full_specs` varchar(255) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `goods_name` varchar(255) DEFAULT NULL,
  `goods_price` decimal(19,2) DEFAULT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `main_image` varchar(255) DEFAULT NULL,
  `member_email` varchar(255) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `member_mobile` varchar(255) DEFAULT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  `orders_id` int(11) DEFAULT NULL,
  `report_end_time` datetime DEFAULT NULL,
  `report_fail_reason` varchar(255) DEFAULT NULL,
  `report_state` int(11) DEFAULT NULL,
  `report_time` datetime DEFAULT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `send_voucher_state` int(11) DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `star` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `store_name` varchar(255) DEFAULT NULL,
  `suggest` varchar(1000) DEFAULT NULL,
  `trys_id` int(11) DEFAULT NULL,
  `trys_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`apply_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `trys_black`
-- ----------------------------
DROP TABLE IF EXISTS `trys_black`;
CREATE TABLE `trys_black` (
  `member_id` int(11) NOT NULL,
  `add_time` datetime DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `common_id` int(11) DEFAULT NULL,
  `goods_name` varchar(255) DEFAULT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  `reason` int(11) DEFAULT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `store_name` varchar(255) DEFAULT NULL,
  `trys_id` int(11) DEFAULT NULL,
  `trys_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `trys_category`
-- ----------------------------
DROP TABLE IF EXISTS `trys_category`;
CREATE TABLE `trys_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) NOT NULL,
  `category_sort` int(11) DEFAULT NULL,
  `image1` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `turntable`
-- ----------------------------
DROP TABLE IF EXISTS `turntable`;
CREATE TABLE `turntable` (
  `turntable_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL COMMENT '标题',
  `rule` varchar(800) DEFAULT NULL COMMENT '规则',
  `background` varchar(100) DEFAULT NULL COMMENT '背景图',
  `show_winners` int(11) NOT NULL DEFAULT '0' COMMENT '中奖名单 1是 0否',
  `luckily_count` int(11) NOT NULL DEFAULT '0' COMMENT '中奖次数上限',
  `luckily_limit_type` int(11) NOT NULL DEFAULT '0' COMMENT '中奖次数上限 1每天/0全程',
  `join_count` int(11) NOT NULL DEFAULT '0' COMMENT '参与次数上限',
  `join_limit_type` int(11) NOT NULL DEFAULT '0' COMMENT '参与次数上限 1每天/0全程',
  `unaward_title` varchar(20) DEFAULT NULL COMMENT '未中奖提示标题',
  `unaward_content` varchar(800) DEFAULT NULL COMMENT '未中奖提示内容',
  `take_points` int(11) NOT NULL DEFAULT '0' COMMENT '消费积分',
  `state` int(11) NOT NULL DEFAULT '0' COMMENT '是否开启 1是 0 否',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`turntable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='大转盘活动表';

-- ----------------------------
--  Table structure for `turntable_collocation`
-- ----------------------------
DROP TABLE IF EXISTS `turntable_collocation`;
CREATE TABLE `turntable_collocation` (
  `collocation_id` int(11) NOT NULL AUTO_INCREMENT,
  `turntable_id` int(11) NOT NULL DEFAULT '0',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '添加奖品（品币、店铺券、礼品）活动Id',
  `prize_type` int(11) NOT NULL DEFAULT '0' COMMENT '奖品类型：1品币、2店铺券、3礼品',
  `collocation_name` varchar(100) DEFAULT NULL COMMENT '奖项名称',
  `collocation_content` varchar(100) DEFAULT NULL COMMENT '奖项内容',
  `prize_price` double NOT NULL DEFAULT '0' COMMENT '品币和店铺券：优惠金额； 实物 ：价格',
  `image_url` varchar(50) NOT NULL COMMENT '图片地址',
  `num_limit` int(11) NOT NULL COMMENT '奖品数量',
  `luckily_rate` int(11) NOT NULL COMMENT '中奖概率',
  `position` int(11) NOT NULL COMMENT '位置',
  `has_collocation` int(11) NOT NULL DEFAULT '0' COMMENT '是否有奖品 1 有  0 没有',
  `del_status` int(11) NOT NULL DEFAULT '0' COMMENT '是否删除 1是 0否',
  PRIMARY KEY (`collocation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='大转盘奖励配置';

-- ----------------------------
--  Table structure for `turntable_luckly_detail`
-- ----------------------------
DROP TABLE IF EXISTS `turntable_luckly_detail`;
CREATE TABLE `turntable_luckly_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) DEFAULT NULL COMMENT '会员id',
  `member_name` varchar(50) DEFAULT NULL COMMENT '会员名称',
  `avatar` varchar(50) DEFAULT NULL COMMENT '用户头像',
  `turntable_id` int(11) DEFAULT NULL COMMENT '活动id',
  `prize_id` int(11) DEFAULT NULL COMMENT '奖品ID',
  `uuid` varchar(50) DEFAULT NULL,
  `store_id` int(11) DEFAULT '0' COMMENT '店铺id（店铺券类型时需填写）',
  `image_url` varchar(500) DEFAULT NULL COMMENT '奖品图片',
  `prize_expire_time` timestamp NULL DEFAULT NULL COMMENT '店铺券过期时间（店铺券类型时需填写）',
  `collocation_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖项Id',
  `collocation_name` varchar(100) DEFAULT NULL COMMENT '奖项名称',
  `collocation_content` varchar(100) DEFAULT NULL COMMENT '奖项内容',
  `prize_type` int(11) NOT NULL COMMENT '奖品类型1-品币2-店铺券3-礼品',
  `prize_price` double NOT NULL DEFAULT '0' COMMENT '品币和店铺券：优惠金额； 实物 ：价格',
  `take_points` int(11) NOT NULL DEFAULT '0' COMMENT '消耗积分',
  `state` int(11) DEFAULT '0' COMMENT '是否中奖 1 是 0 否',
  `send_prize` int(11) DEFAULT '0' COMMENT '是否已发放奖品 1 是 0 否',
  `send_prize_time` timestamp NULL DEFAULT NULL COMMENT '发放时间',
  `claim` int(11) DEFAULT '0' COMMENT '是否认领 1 是 0 否',
  `claim_prize_time` timestamp NULL DEFAULT NULL COMMENT '认领时间',
  `receive_name` varchar(256) DEFAULT NULL COMMENT '收件人姓名(实物奖品)',
  `receive_phone` varchar(11) DEFAULT NULL COMMENT '收件人电话(实物奖品)',
  `receive_area` varchar(512) DEFAULT NULL COMMENT '收件人地区信息(实物奖品)',
  `receive_address` varchar(512) DEFAULT NULL COMMENT '收件人详细地址(实物奖品)',
  `ship_name` varchar(512) DEFAULT NULL COMMENT '物流公司',
  `ship_sn` varchar(512) DEFAULT NULL COMMENT '物流单号',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `uuid` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='会员参与活动记录';

-- ----------------------------
--  Table structure for `unit`
-- ----------------------------
DROP TABLE IF EXISTS `unit`;
CREATE TABLE `unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


-- ----------------------------
--  Table structure for `video_album`
-- ----------------------------
DROP TABLE IF EXISTS `video_album`;
CREATE TABLE `video_album` (
  `album_id` int(11) NOT NULL AUTO_INCREMENT,
  `album_name` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`album_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `video_album_files`
-- ----------------------------
DROP TABLE IF EXISTS `video_album_files`;
CREATE TABLE `video_album_files` (
  `files_id` int(11) NOT NULL AUTO_INCREMENT,
  `album_id` int(11) DEFAULT NULL,
  `files_height` int(11) DEFAULT NULL,
  `files_name` varchar(255) DEFAULT NULL,
  `original_name` varchar(255) DEFAULT NULL,
  `upload_time` datetime DEFAULT NULL,
  `files_size` int(11) DEFAULT NULL,
  `album_type` int(11) DEFAULT NULL,
  `files_width` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `vod_files_id` varchar(255) DEFAULT NULL,
  `files_type` int(11) DEFAULT '0',
  `download_num` int(11) NOT NULL DEFAULT '0' COMMENT '下载量',
  `attention_num` int(11) NOT NULL DEFAULT '0' COMMENT '视频关注量',
  `cover_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`files_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `vip_notice`
-- ----------------------------
DROP TABLE IF EXISTS `vip_notice`;
CREATE TABLE `vip_notice` (
  `notice_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `content` longtext,
  `create_time` datetime DEFAULT NULL,
  `title` varchar(30) DEFAULT NULL,
  `publish_status` int(11) DEFAULT NULL,
  `publish_time` datetime DEFAULT NULL,
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `virtual_bill`
-- ----------------------------
DROP TABLE IF EXISTS `virtual_bill`;
CREATE TABLE `virtual_bill` (
  `bill_id` int(11) NOT NULL AUTO_INCREMENT,
  `bill_sn` int(11) DEFAULT NULL,
  `bill_state` int(11) DEFAULT NULL,
  `code1_amount` decimal(19,2) DEFAULT NULL,
  `code2_amount` decimal(19,2) DEFAULT NULL,
  `commission1_amount` decimal(19,2) DEFAULT NULL,
  `commission2_amount` decimal(19,2) DEFAULT NULL,
  `coupon_amount` decimal(19,2) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `payment_note` varchar(255) DEFAULT NULL,
  `payment_time` datetime DEFAULT NULL,
  `refund_coupon_amount` decimal(19,2) DEFAULT NULL,
  `state_time` datetime DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `store_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bill_id`)
) ENGINE=InnoDB AUTO_INCREMENT=484 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `virtual_orders`
-- ----------------------------
DROP TABLE IF EXISTS `virtual_orders`;
CREATE TABLE `virtual_orders` (
  `orders_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_receive_pay_state` int(11) DEFAULT NULL,
  `cancel_reason` int(11) DEFAULT NULL,
  `cancel_role` varchar(255) DEFAULT NULL,
  `cancel_time` datetime DEFAULT NULL,
  `conform_price` decimal(19,2) DEFAULT NULL,
  `coupon_amount` decimal(19,2) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `create_time_date` varchar(255) DEFAULT NULL,
  `create_time_hour` varchar(255) DEFAULT NULL,
  `delete_state` int(11) DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `evaluation_state` int(11) DEFAULT NULL,
  `evaluation_time` datetime DEFAULT NULL,
  `finish_time` datetime DEFAULT NULL,
  `is_send` int(11) DEFAULT NULL,
  `limit_amount` decimal(19,2) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  `orders_amount` decimal(19,2) DEFAULT NULL,
  `orders_from` varchar(255) DEFAULT NULL,
  `orders_from1` varchar(255) DEFAULT NULL,
  `orders_sn` bigint(20) DEFAULT NULL,
  `orders_state` int(11) DEFAULT NULL,
  `out_orders_sn` varchar(255) DEFAULT NULL,
  `pay_id` int(11) DEFAULT NULL,
  `pay_sn` bigint(20) DEFAULT NULL,
  `payment_client_type` varchar(255) DEFAULT NULL,
  `payment_code` varchar(255) DEFAULT NULL,
  `payment_time` datetime DEFAULT NULL,
  `predeposit_amount` decimal(19,2) DEFAULT NULL,
  `receiver_message` varchar(255) DEFAULT NULL,
  `receiver_name` varchar(255) DEFAULT NULL,
  `receiver_phone` varchar(255) DEFAULT NULL,
  `refund_amount` decimal(19,2) DEFAULT NULL,
  `shop_commitment_amount` decimal(19,2) DEFAULT NULL,
  `store_discount_amount` decimal(19,2) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `store_name` varchar(255) DEFAULT NULL,
  `template_id` int(11) DEFAULT NULL,
  `use_state` int(11) DEFAULT NULL,
  `voucher_code` varchar(255) DEFAULT NULL,
  `voucher_price` decimal(19,2) DEFAULT NULL,
  `online_pay_discount_amount` decimal(19,2) DEFAULT '0.00',
  `happy_gold_amount` decimal(19,2) DEFAULT '0.00',
  `is_staff_buy` int(11) DEFAULT '0',
  `push_state` int(11) DEFAULT '0',
  PRIMARY KEY (`orders_id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `virtual_orders_goods`
-- ----------------------------
DROP TABLE IF EXISTS `virtual_orders_goods`;
CREATE TABLE `virtual_orders_goods` (
  `orders_goods_id` int(11) NOT NULL AUTO_INCREMENT,
  `base_price` decimal(19,2) DEFAULT NULL,
  `buy_num` int(11) DEFAULT NULL,
  `cartgory_id` int(11) DEFAULT NULL,
  `category_id_1` int(11) DEFAULT NULL,
  `category_id_2` int(11) DEFAULT NULL,
  `category_id_3` int(11) DEFAULT NULL,
  `commission_rate` int(11) DEFAULT NULL,
  `common_id` int(11) DEFAULT NULL,
  `contract` varchar(1000) DEFAULT NULL,
  `coupon_amount` decimal(19,2) DEFAULT NULL,
  `goods_full_specs` varchar(255) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `goods_image` varchar(255) DEFAULT NULL,
  `goods_name` varchar(255) DEFAULT NULL,
  `goods_pay_amount` decimal(19,2) DEFAULT NULL,
  `goods_price` decimal(19,2) DEFAULT NULL,
  `join_big_sale` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `orders_id` int(11) DEFAULT NULL,
  `orders_sn` bigint(20) DEFAULT NULL,
  `promotion_title` varchar(255) DEFAULT NULL,
  `refund_applyed` int(11) DEFAULT NULL,
  `send_times` int(11) DEFAULT NULL,
  `shop_commitment_amount` decimal(19,2) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `unit_name` varchar(255) DEFAULT NULL,
  `virtual_overdue_refund` int(11) DEFAULT NULL,
  `online_pay_price` decimal(19,2) DEFAULT '0.00',
  `all_online_pay_price` decimal(19,2) DEFAULT '0.00',
  `dw_specsid` int(11) DEFAULT '0',
  `dw_id` int(11) DEFAULT '0',
  `yg_price` decimal(19,2) DEFAULT '0.00',
  PRIMARY KEY (`orders_goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `virtual_orders_goods_code`
-- ----------------------------
DROP TABLE IF EXISTS `virtual_orders_goods_code`;
CREATE TABLE `virtual_orders_goods_code` (
  `orders_code_id` int(11) NOT NULL AUTO_INCREMENT,
  `commission_rate` int(11) DEFAULT NULL,
  `common_id` int(11) DEFAULT NULL,
  `coupon_amount` decimal(19,2) DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `goods_code` varchar(255) DEFAULT NULL,
  `goods_full_specs` varchar(255) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `goods_image` varchar(255) DEFAULT NULL,
  `goods_name` varchar(255) DEFAULT NULL,
  `goods_price` decimal(19,2) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  `orders_goods_id` int(11) DEFAULT NULL,
  `orders_id` int(11) DEFAULT NULL,
  `orders_sn` bigint(20) DEFAULT NULL,
  `pay_price` decimal(19,2) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `use_state` int(11) DEFAULT NULL,
  `use_time` datetime DEFAULT NULL,
  `virtual_overdue_refund` int(11) DEFAULT NULL,
  PRIMARY KEY (`orders_code_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `visit_log`
-- ----------------------------
DROP TABLE IF EXISTS `visit_log`;
CREATE TABLE `visit_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) DEFAULT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  `common_id` int(11) DEFAULT NULL,
  `visit_type` varchar(20) DEFAULT NULL,
  `visit_module` varchar(255) DEFAULT NULL,
  `visit_module_name` varchar(255) DEFAULT NULL,
  `visit_url` varchar(255) DEFAULT NULL,
  `visit_page` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `voucher`
-- ----------------------------
DROP TABLE IF EXISTS `voucher`;
CREATE TABLE `voucher` (
  `voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `active_time` datetime DEFAULT NULL,
  `app_usable` int(11) DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `limit_amount` decimal(19,2) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  `orders_id` int(11) DEFAULT NULL,
  `orders_sn` bigint(20) DEFAULT NULL,
  `price` decimal(19,2) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `store_name` varchar(255) DEFAULT NULL,
  `template_id` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `voucher_code` varchar(255) DEFAULT NULL,
  `voucher_describe` varchar(255) DEFAULT NULL,
  `voucher_state` int(11) DEFAULT NULL,
  `voucher_title` varchar(255) DEFAULT NULL,
  `web_usable` int(11) DEFAULT NULL,
  `wechat_usable` int(11) DEFAULT NULL,
  PRIMARY KEY (`voucher_id`),
  UNIQUE KEY `UK_pt2fcgppqfc1tbcvqctm7nuet` (`voucher_code`)
) ENGINE=InnoDB AUTO_INCREMENT=1623 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `voucher_pwd`
-- ----------------------------
DROP TABLE IF EXISTS `voucher_pwd`;
CREATE TABLE `voucher_pwd` (
  `pwd_id` int(11) NOT NULL AUTO_INCREMENT,
  `active_time` datetime DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  `pwd_code` varchar(255) DEFAULT NULL,
  `template_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`pwd_id`),
  UNIQUE KEY `UK_8mbpqqmm4jtg6fgv4o7fjihrq` (`pwd_code`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `voucher_template`
-- ----------------------------
DROP TABLE IF EXISTS `voucher_template`;
CREATE TABLE `voucher_template` (
  `template_id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime NOT NULL,
  `app_usable` int(11) NOT NULL,
  `giveout_num` int(11) NOT NULL,
  `have_created` int(11) NOT NULL,
  `limit_amount` decimal(19,2) DEFAULT NULL,
  `limit_membergradelevel` int(11) DEFAULT NULL,
  `limit_membergradename` varchar(255) DEFAULT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `seller_name` varchar(255) DEFAULT NULL,
  `state_admin_id` int(11) DEFAULT NULL,
  `store_id` int(11) NOT NULL,
  `store_name` varchar(255) NOT NULL,
  `template_describe` varchar(200) DEFAULT NULL,
  `template_price` decimal(19,2) NOT NULL,
  `template_start_time` datetime DEFAULT NULL,
  `template_state` int(11) NOT NULL,
  `template_title` varchar(10) NOT NULL,
  `template_type` int(11) NOT NULL,
  `total_num` int(11) NOT NULL,
  `update_time` datetime DEFAULT NULL,
  `use_end_time` datetime DEFAULT NULL,
  `use_start_time` datetime DEFAULT NULL,
  `used_num` int(11) NOT NULL,
  `valid_days` int(11) DEFAULT NULL,
  `voucher_center_recommend` int(11) DEFAULT NULL,
  `web_usable` int(11) NOT NULL,
  `wechat_usable` int(11) NOT NULL,
  `check_material` int(2) DEFAULT '0' COMMENT '已选素材模板（0 已选择；1 已删除）',
  PRIMARY KEY (`template_id`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8;


-- ----------------------------
--  Table structure for `wages_bill`
-- ----------------------------
DROP TABLE IF EXISTS `wages_bill`;
CREATE TABLE `wages_bill` (
  `wages_bill_id` int(11) NOT NULL AUTO_INCREMENT,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `add_time` datetime DEFAULT NULL,
  PRIMARY KEY (`wages_bill_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `web_slider`
-- ----------------------------
DROP TABLE IF EXISTS `web_slider`;
CREATE TABLE `web_slider` (
  `web_slider_id` int(11) NOT NULL AUTO_INCREMENT,
  `web_slider_json` longtext,
  `web_slider_key` varchar(255) DEFAULT NULL,
  `web_slider_sort` int(11) DEFAULT NULL,
  `web_slider_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`web_slider_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `wechat_qrcard`
-- ----------------------------
DROP TABLE IF EXISTS `wechat_qrcard`;
CREATE TABLE `wechat_qrcard` (
  `member_id` int(11) NOT NULL COMMENT '用户id',
  `qrcard_img` varchar(255) NOT NULL COMMENT '图片地址',
  `img_width` int(5) DEFAULT NULL COMMENT '图片宽度',
  `img_height` int(5) DEFAULT NULL COMMENT '图片高度',
  `is_show` int(4) DEFAULT '1' COMMENT '是否显示二维码',
  `super_is_show` int(4) NOT NULL DEFAULT '1' COMMENT '邀请人是否显示二维码0-否1-是',
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户上传微信二维码图片记录表';

-- ----------------------------
--  Table structure for `weixin_admin`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_admin`;
CREATE TABLE `weixin_admin` (
  `admin_id` int(10) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) DEFAULT NULL,
  `groupid` int(10) DEFAULT NULL,
  `groupname` varchar(255) DEFAULT NULL,
  `issuper` int(10) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `weixin_auto_reply_content`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_auto_reply_content`;
CREATE TABLE `weixin_auto_reply_content` (
  `content_id` int(11) NOT NULL AUTO_INCREMENT,
  `msg_type` varchar(100) NOT NULL,
  `reply_data` longtext NOT NULL,
  `reply_type` varchar(100) NOT NULL,
  `rule_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `weixin_auto_reply_keyword`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_auto_reply_keyword`;
CREATE TABLE `weixin_auto_reply_keyword` (
  `keyword_id` int(11) NOT NULL AUTO_INCREMENT,
  `full_match` int(11) NOT NULL,
  `keyword_name` varchar(30) NOT NULL,
  `rule_id` int(11) NOT NULL,
  PRIMARY KEY (`keyword_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `weixin_auto_reply_rule`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_auto_reply_rule`;
CREATE TABLE `weixin_auto_reply_rule` (
  `rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `all_keyword` varchar(1000) DEFAULT NULL,
  `reply_all` int(11) NOT NULL,
  `reply_count` int(11) NOT NULL,
  `reply_type_count` varchar(1000) DEFAULT NULL,
  `rule_name` varchar(60) NOT NULL,
  PRIMARY KEY (`rule_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `weixin_masssend`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_masssend`;
CREATE TABLE `weixin_masssend` (
  `send_id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime DEFAULT NULL,
  `content` varchar(3000) DEFAULT NULL,
  `delete_state` int(11) DEFAULT NULL,
  `error_count` int(11) DEFAULT NULL,
  `error_info` varchar(2000) DEFAULT NULL,
  `material_data` longtext,
  `media_id` varchar(500) DEFAULT NULL,
  `msg_id` varchar(200) DEFAULT NULL,
  `msg_type` varchar(100) NOT NULL,
  `send_state` int(11) DEFAULT NULL,
  `send_type` varchar(100) NOT NULL,
  `sent_count` int(11) DEFAULT NULL,
  `weixin_tag_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`send_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `weixin_material_image`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_material_image`;
CREATE TABLE `weixin_material_image` (
  `material_id` int(11) NOT NULL AUTO_INCREMENT,
  `image_alias` varchar(100) NOT NULL,
  `image_name` varchar(200) NOT NULL,
  `material_image_url` varchar(500) NOT NULL,
  `media_id` varchar(100) NOT NULL,
  `update_time` datetime NOT NULL,
  `usable_state` int(11) NOT NULL,
  PRIMARY KEY (`material_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `weixin_material_news`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_material_news`;
CREATE TABLE `weixin_material_news` (
  `material_id` int(11) NOT NULL AUTO_INCREMENT,
  `media_id` varchar(100) DEFAULT NULL,
  `search_content` longtext,
  `simple_list` longtext,
  `update_time` datetime NOT NULL,
  `usable_state` int(11) NOT NULL,
  PRIMARY KEY (`material_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `weixin_material_news_item`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_material_news_item`;
CREATE TABLE `weixin_material_news_item` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `Author` varchar(16) DEFAULT NULL,
  `content` longtext,
  `content_source_url` varchar(500) DEFAULT NULL,
  `digest` varchar(120) DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `thumb_media_id` varchar(100) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `weixin_menu`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_menu`;
CREATE TABLE `weixin_menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `click_msg_type` varchar(100) DEFAULT NULL,
  `menu_key` varchar(100) DEFAULT NULL,
  `menu_name` varchar(60) NOT NULL,
  `menu_reply_data` longtext,
  `menu_sort` int(11) NOT NULL,
  `menu_state` int(11) NOT NULL,
  `menu_type` varchar(100) NOT NULL,
  `menu_view_url` varchar(1000) DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `parent_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `weixin_menu_copy`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_menu_copy`;
CREATE TABLE `weixin_menu_copy` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `click_msg_type` varchar(100) DEFAULT NULL,
  `menu_key` varchar(100) DEFAULT NULL,
  `menu_name` varchar(60) NOT NULL,
  `menu_reply_data` longtext,
  `menu_sort` int(11) NOT NULL,
  `menu_state` int(11) NOT NULL,
  `menu_type` varchar(100) NOT NULL,
  `menu_view_url` varchar(1000) DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `parent_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `weixin_mp_tmpl`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_mp_tmpl`;
CREATE TABLE `weixin_mp_tmpl` (
  `tmpl_id` int(11) NOT NULL AUTO_INCREMENT,
  `mp_deputy_industry` varchar(200) DEFAULT NULL,
  `mp_primary_industry` varchar(200) DEFAULT NULL,
  `mp_template_content` longtext,
  `mp_template_example` longtext,
  `mp_template_id` varchar(200) NOT NULL,
  `mp_template_title` varchar(500) NOT NULL,
  PRIMARY KEY (`tmpl_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `weixin_notice_log`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_notice_log`;
CREATE TABLE `weixin_notice_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime DEFAULT NULL,
  `create_time` bigint(20) DEFAULT NULL,
  `event` varchar(100) DEFAULT NULL,
  `event_key` varchar(255) DEFAULT NULL,
  `finish_state` int(11) NOT NULL,
  `from_user_name` varchar(500) DEFAULT NULL,
  `msg_id` bigint(20) DEFAULT NULL,
  `msg_type` varchar(100) DEFAULT NULL,
  `other_params` varchar(2000) DEFAULT NULL,
  `to_user_name` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `weixin_pendsend`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_pendsend`;
CREATE TABLE `weixin_pendsend` (
  `send_id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `delete_state` int(11) DEFAULT NULL,
  `error_info` varchar(255) DEFAULT NULL,
  `msg_id` varchar(255) DEFAULT NULL,
  `msg_type` varchar(255) DEFAULT NULL,
  `send_state` int(11) DEFAULT NULL,
  `send_type` varchar(255) DEFAULT NULL,
  `weixin_tag_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`send_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `weixin_pushstock_log`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_pushstock_log`;
CREATE TABLE `weixin_pushstock_log` (
  `autoid` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `pid` int(10) DEFAULT NULL COMMENT '商品id',
  `unid` varchar(10) DEFAULT NULL COMMENT 'unitid',
  `qty` int(10) DEFAULT NULL COMMENT '库存数',
  `atime` datetime(6) DEFAULT NULL COMMENT '推送时间',
  PRIMARY KEY (`autoid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `weixin_qrcode`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_qrcode`;
CREATE TABLE `weixin_qrcode` (
  `code_id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime DEFAULT NULL,
  `code_explain` varchar(100) NOT NULL,
  `code_title` varchar(30) NOT NULL,
  `expire_seconds` int(11) NOT NULL,
  `handle_params` longtext,
  `handle_type` varchar(500) DEFAULT NULL,
  `qrcode_ticket` varchar(500) DEFAULT NULL,
  `qrcode_url` varchar(1000) DEFAULT NULL,
  `scene_id` int(11) NOT NULL,
  PRIMARY KEY (`code_id`),
  UNIQUE KEY `UK_mkbcbu6kfuc823gjjkwl5l897` (`scene_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `weixin_subscribe_qrcode`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_subscribe_qrcode`;
CREATE TABLE `weixin_subscribe_qrcode` (
  `data_id` int(11) NOT NULL AUTO_INCREMENT,
  `sign` varchar(500) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `weixin_qrcode_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`data_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `weixin_user`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_user`;
CREATE TABLE `weixin_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `head_img_url` varchar(1000) DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL,
  `nick_name` varchar(30) NOT NULL,
  `open_id` varchar(200) NOT NULL,
  `province` varchar(100) DEFAULT NULL,
  `remark` varchar(30) DEFAULT NULL,
  `sex` int(11) NOT NULL,
  `subscribe_time` datetime NOT NULL,
  `union_id` varchar(200) DEFAULT NULL,
  `weixin_tag_id` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `weixin_user_black`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_user_black`;
CREATE TABLE `weixin_user_black` (
  `black_id` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `head_img_url` varchar(1000) DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL,
  `nick_name` varchar(30) NOT NULL,
  `open_id` varchar(200) NOT NULL,
  `province` varchar(100) DEFAULT NULL,
  `remark` varchar(30) DEFAULT NULL,
  `sex` int(11) NOT NULL,
  `subscribe_time` datetime NOT NULL,
  `union_id` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`black_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `weixin_user_tag`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_user_tag`;
CREATE TABLE `weixin_user_tag` (
  `tag_id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(30) NOT NULL,
  `tag_sort` int(11) DEFAULT NULL,
  `user_count` int(11) DEFAULT NULL,
  `weixin_tag_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`tag_id`),
  UNIQUE KEY `UK_1v7jnnny2kv76gd1nhfi0qxdm` (`weixin_tag_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


-- ----------------------------
--  Table structure for `wxadmin_group`
-- ----------------------------
DROP TABLE IF EXISTS `wxadmin_group`;
CREATE TABLE `wxadmin_group` (
  `group_id` int(10) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `wxadmin_group_permission`
-- ----------------------------
DROP TABLE IF EXISTS `wxadmin_group_permission`;
CREATE TABLE `wxadmin_group_permission` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `group_id` int(10) DEFAULT NULL,
  `menu_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `wxadmin_log`
-- ----------------------------
DROP TABLE IF EXISTS `wxadmin_log`;
CREATE TABLE `wxadmin_log` (
  `log_id` int(10) NOT NULL AUTO_INCREMENT,
  `action` varchar(255) DEFAULT NULL,
  `admin_id` int(10) DEFAULT NULL,
  `admin_name` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `wxadmin_menu`
-- ----------------------------
DROP TABLE IF EXISTS `wxadmin_menu`;
CREATE TABLE `wxadmin_menu` (
  `id` int(10) NOT NULL,
  `group_id` int(10) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parent_id` int(10) DEFAULT NULL,
  `permission` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `wxclickreply`
-- ----------------------------
DROP TABLE IF EXISTS `wxclickreply`;
CREATE TABLE `wxclickreply` (
  `cr_id` int(11) NOT NULL AUTO_INCREMENT,
  `cr_title` varchar(255) DEFAULT NULL,
  `cr_note` varchar(255) DEFAULT NULL,
  `cr_content` varchar(2000) DEFAULT NULL,
  `cr_code` varchar(255) DEFAULT NULL,
  `wx_id` int(11) DEFAULT NULL,
  `cr_type` int(11) DEFAULT NULL,
  `cr_add_time` datetime DEFAULT NULL,
  PRIMARY KEY (`cr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

