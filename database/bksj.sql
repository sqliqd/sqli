/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : jspm22715bksj

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2024-09-26 11:43:19
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `admins`
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT '' COMMENT '帐号',
  `pwd` varchar(50) NOT NULL DEFAULT '' COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='管理员';

-- ----------------------------
-- Records of admins
-- ----------------------------
INSERT INTO `admins` VALUES ('1', 'admin', 'admin');

-- ----------------------------
-- Table structure for `lunbotu`
-- ----------------------------
DROP TABLE IF EXISTS `lunbotu`;
CREATE TABLE `lunbotu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '标题',
  `image` varchar(255) NOT NULL COMMENT '图片',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '连接地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='轮播图';

-- ----------------------------
-- Records of lunbotu
-- ----------------------------
INSERT INTO `lunbotu` VALUES ('1', '1', 'upload/1727275784351.png', '#');
INSERT INTO `lunbotu` VALUES ('2', '2', 'upload/1727275809807.png', '#');
INSERT INTO `lunbotu` VALUES ('3', '3', 'upload/1727275831878.png', '#');

-- ----------------------------
-- Table structure for `pinglun`
-- ----------------------------
DROP TABLE IF EXISTS `pinglun`;
CREATE TABLE `pinglun` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `biao` varchar(50) NOT NULL DEFAULT '' COMMENT '表',
  `biaoid` int(11) NOT NULL DEFAULT '0' COMMENT '表id',
  `biaoti` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `pinglunneirong` text NOT NULL COMMENT '评论内容',
  `pinglunren` varchar(64) NOT NULL DEFAULT '' COMMENT '评论人',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '评论时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COMMENT='评论';

-- ----------------------------
-- Records of pinglun
-- ----------------------------
INSERT INTO `pinglun` VALUES ('1', 'shipinxinxi', '2', '【凡人修仙传】韩立拜过的四位师傅，又有几位真心对韩立好？', '好看爱看', '333', '2024-09-26 11:21:43');
INSERT INTO `pinglun` VALUES ('2', 'shipinxinxi', '7', '荆楚文化教育：针对历史......', '嗯嗯嗯额', '333', '2024-09-26 11:22:16');
INSERT INTO `pinglun` VALUES ('3', 'shipinxinxi', '1', '仙逆： 雨之仙界篇（上）！王林化神首战！仙界秘宝争夺战爆发！', '哇哇哇！！！', '333', '2024-09-26 11:22:27');
INSERT INTO `pinglun` VALUES ('4', 'shipinxinxi', '3', '斗罗大陆:  狂哥回来了!!!!!!!!!!!', '狂哥！！', '333', '2024-09-26 11:22:40');
INSERT INTO `pinglun` VALUES ('5', 'shipinxinxi', '4', '《野兽领主：新世界》公测PV——建造你的动物王国！', '666', '111', '2024-09-26 11:25:51');
INSERT INTO `pinglun` VALUES ('6', 'shipinxinxi', '2', '【凡人修仙传】韩立拜过的四位师傅，又有几位真心对韩立好？', 'asda阿斯顿撒旦', '444', '2024-09-26 11:38:54');
INSERT INTO `pinglun` VALUES ('7', 'shipinxinxi', '7', '荆楚文化教育：针对历史......', '阿斯顿撒', '444', '2024-09-26 11:39:11');
INSERT INTO `pinglun` VALUES ('9', 'shipinxinxi', '10', '大司马的120个鬼畜视频，真是下饭', '666\r\n', '444', '2024-09-26 11:41:13');

-- ----------------------------
-- Table structure for `pinglunhuifu`
-- ----------------------------
DROP TABLE IF EXISTS `pinglunhuifu`;
CREATE TABLE `pinglunhuifu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pinglunid` int(10) unsigned NOT NULL COMMENT '评论id',
  `biao` varchar(50) NOT NULL DEFAULT '' COMMENT '表',
  `biaoid` int(11) NOT NULL DEFAULT '0' COMMENT '表id',
  `biaoti` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `pinglunneirong` text NOT NULL COMMENT '评论内容',
  `pinglunren` varchar(64) NOT NULL DEFAULT '' COMMENT '评论人',
  `huifuneirong` text NOT NULL COMMENT '回复内容',
  `huifuren` varchar(64) NOT NULL DEFAULT '' COMMENT '回复人',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '回复时间',
  PRIMARY KEY (`id`),
  KEY `pinglunhuifu_pinglunid_index` (`pinglunid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='评论回复';

-- ----------------------------
-- Records of pinglunhuifu
-- ----------------------------
INSERT INTO `pinglunhuifu` VALUES ('1', '1', 'shipinxinxi', '2', '【凡人修仙传】韩立拜过的四位师傅，又有几位真心对韩立好？', '好看爱看', '333', '我也是', '111', '2024-09-26 11:23:32');
INSERT INTO `pinglunhuifu` VALUES ('2', '2', 'shipinxinxi', '7', '荆楚文化教育：针对历史......', '嗯嗯嗯额', '333', '阿三大苏打', '111', '2024-09-26 11:24:33');
INSERT INTO `pinglunhuifu` VALUES ('3', '1', 'shipinxinxi', '2', '【凡人修仙传】韩立拜过的四位师傅，又有几位真心对韩立好？', '好看爱看', '333', '啊实打实的', '444', '2024-09-26 11:39:00');

-- ----------------------------
-- Table structure for `shipinleixing`
-- ----------------------------
DROP TABLE IF EXISTS `shipinleixing`;
CREATE TABLE `shipinleixing` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fenleimingcheng` varchar(255) NOT NULL DEFAULT '' COMMENT '分类名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='视频类型';

-- ----------------------------
-- Records of shipinleixing
-- ----------------------------
INSERT INTO `shipinleixing` VALUES ('1', '游戏视频');
INSERT INTO `shipinleixing` VALUES ('2', '动漫视频');
INSERT INTO `shipinleixing` VALUES ('3', '文化教育');
INSERT INTO `shipinleixing` VALUES ('4', '影视视频');
INSERT INTO `shipinleixing` VALUES ('5', '搞笑视频');

-- ----------------------------
-- Table structure for `shipinxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `shipinxinxi`;
CREATE TABLE `shipinxinxi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bianhao` varchar(50) NOT NULL DEFAULT '' COMMENT '编号',
  `biaoti` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `fengmian` varchar(255) NOT NULL COMMENT '封面',
  `fenlei` int(10) unsigned NOT NULL COMMENT '分类',
  `shipin` varchar(255) NOT NULL DEFAULT '' COMMENT '视频',
  `yinpin` varchar(255) NOT NULL DEFAULT '' COMMENT '音频',
  `wenjian` varchar(255) NOT NULL DEFAULT '' COMMENT '文件',
  `dianjiliang` int(11) NOT NULL DEFAULT '0' COMMENT '点击量',
  `jianjie` longtext NOT NULL COMMENT '简介',
  `faburen` varchar(64) NOT NULL DEFAULT '' COMMENT '发布人',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '发布时间',
  PRIMARY KEY (`id`),
  KEY `shipinxinxi_fenlei_index` (`fenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COMMENT='视频信息';

-- ----------------------------
-- Records of shipinxinxi
-- ----------------------------
INSERT INTO `shipinxinxi` VALUES ('1', '09252300274186', '仙逆： 雨之仙界篇（上）！王林化神首战！仙界秘宝争夺战爆发！', 'upload/1727276534854.png', '2', 'upload/1727276705092.mp4', '', 'upload/1727276764555.mp4', '4', '<h1 data-title=\"仙逆： 雨之仙界篇（上）！王林化神首战！仙界秘宝争夺战爆发！\" title=\"仙逆： 雨之仙界篇（上）！王林化神首战！仙界秘宝争夺战爆发！\" class=\"video-title special-text-indent\" data-v-5120f6b9=\"\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; flex-shrink: 0; font-size: 22px; line-height: 34px; overflow: hidden; text-overflow: ellipsis; font-family: -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, sans-serif;\">仙逆： 雨之仙界篇（上）！王林化神首战！仙界秘宝争夺战爆发</h1><p><br/></p>', '111', '2024-09-25 23:06:30');
INSERT INTO `shipinxinxi` VALUES ('2', '09261047357852', '【凡人修仙传】韩立拜过的四位师傅，又有几位真心对韩立好？', 'upload/1727318863152.png', '2', 'upload/1727318962701.mp4', '', 'upload/1727318966801.mp4', '23', '<h1 data-title=\"【凡人修仙传】韩立拜过的四位师傅，又有几位真心对韩立好？\" title=\"【凡人修仙传】韩立拜过的四位师傅，又有几位真心对韩立好？\" class=\"video-title special-text-indent\" data-v-5120f6b9=\"\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: -0.6em; flex-shrink: 0; font-size: 22px; line-height: 34px; overflow: hidden; text-overflow: ellipsis; font-family: -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, sans-serif;\">【凡人修仙传】韩立拜过的四位师傅，又有几位真心对韩立好？</h1><p><br/></p>', '111', '2024-09-26 10:49:40');
INSERT INTO `shipinxinxi` VALUES ('3', '09261052281664', '斗罗大陆:  狂哥回来了!!!!!!!!!!!', 'upload/1727319277282.png', '3', 'upload/1727319266992.mp4', '', 'upload/1727319321223.mp4', '4', '<p>斗罗狂哥回来了斗罗狂哥回来了斗罗狂哥回来了斗罗狂哥回来了</p>', '111', '2024-09-26 10:55:22');
INSERT INTO `shipinxinxi` VALUES ('4', '09261102331302', '《野兽领主：新世界》公测PV——建造你的动物王国！', 'upload/1727319841313.png', '3', 'upload/1727319829848.mp4', '', 'upload/1727319834243.mp4', '6', '<h3 class=\"bili-video-card__info--tit\" title=\"《野兽领主：新世界》公测PV——建造你的动物王国！\" style=\"margin: 0px; padding-top: 0px; padding-right: var(--title-padding-right); padding-bottom: 0px; padding-left: 0px; color: rgb(24, 25, 28); font-size: var(--title-font-size); line-height: var(--title-line-height); height: calc(2 * var(--title-line-height)); align-items: flex-start; justify-content: flex-start; display: -webkit-box; overflow: hidden; -webkit-box-orient: vertical; text-overflow: ellipsis; line-break: anywhere; -webkit-line-clamp: 2; text-indent: -0.5em; font-family: -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, sans-serif; text-wrap: wrap; word-break: break-word !important;\"><a href=\"https://www.bilibili.com/video/BV1Gs42137rz/\" target=\"_blank\" data-mod=\"high_energy\" data-idx=\"content\" data-ext=\"click\" style=\"margin: 0px; padding: 0px; color: var(--text1); transition-duration: 0.2s; transition-timing-function: linear; cursor: pointer;\">《野兽领主：新世界》公测PV——建造你的动物王国！</a></h3><p><br/></p>', '222', '2024-09-26 11:04:08');
INSERT INTO `shipinxinxi` VALUES ('5', '09261105091721', '神超S12：双三五费！黑子说话！来了一个四变五，还能再来一个的？', 'upload/1727319916853.png', '1', 'upload/1727319993763.mp4', '', 'upload/1727319999027.mp4', '5', '<h3 class=\"bili-video-card__info--tit\" title=\"神超S12：双三五费！黑子说话！来了一个四变五，还能再来一个的？\" style=\"margin: 0px; padding-top: 0px; padding-right: var(--title-padding-right); padding-bottom: 0px; padding-left: 0px; color: rgb(24, 25, 28); font-size: var(--title-font-size); line-height: var(--title-line-height); height: calc(2 * var(--title-line-height)); align-items: flex-start; justify-content: flex-start; display: -webkit-box; overflow: hidden; -webkit-box-orient: vertical; text-overflow: ellipsis; line-break: anywhere; -webkit-line-clamp: 2; font-family: -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, sans-serif; text-wrap: wrap; word-break: break-word !important;\"><a href=\"https://www.bilibili.com/video/BV1HhxgeXEQN/\" target=\"_blank\" data-mod=\"channel\" data-idx=\"secondary_floor_video\" data-ext=\"click\" style=\"margin: 0px; padding: 0px; color: var(--brand_blue); transition-duration: 0.2s; transition-timing-function: linear; cursor: pointer;\">神超S12：双三五费！黑子说话！来了一个四变五，还能再来一个的？</a></h3><p><br/></p>', '222', '2024-09-26 11:06:41');
INSERT INTO `shipinxinxi` VALUES ('6', '09261107101247', '【叶音符】26杀千珏打野！一分钟一层印记，23分钟射程一个屏幕大！', 'upload/1727320038334.png', '3', 'upload/1727320123259.mp4', '', 'upload/1727320127474.mp4', '1', '<h3 class=\"bili-video-card__info--tit\" title=\"【叶音符】26杀千珏打野！一分钟一层印记，23分钟射程一个屏幕大！\" style=\"margin: 0px; padding-top: 0px; padding-right: var(--title-padding-right); padding-bottom: 0px; padding-left: 0px; text-indent: -0.6em; color: rgb(24, 25, 28); font-size: var(--title-font-size); line-height: var(--title-line-height); height: calc(2 * var(--title-line-height)); align-items: flex-start; justify-content: flex-start; display: -webkit-box; overflow: hidden; -webkit-box-orient: vertical; text-overflow: ellipsis; line-break: anywhere; -webkit-line-clamp: 2; font-family: -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, sans-serif; text-wrap: wrap; word-break: break-word !important;\"><a href=\"https://www.bilibili.com/video/BV1Fpsae1E1W/\" target=\"_blank\" data-mod=\"channel\" data-idx=\"secondary_floor_video\" data-ext=\"click\" style=\"margin: 0px; padding: 0px; color: var(--text1); transition-duration: 0.2s; transition-timing-function: linear; cursor: pointer;\">【叶音符】26杀千珏打野！一分钟一层印记，23分钟射程一个屏幕大！</a></h3><p><br/></p>', '222', '2024-09-26 11:08:49');
INSERT INTO `shipinxinxi` VALUES ('7', '09261112112134', '荆楚文化教育：针对历史......', 'upload/1727320408792.png', '3', 'upload/1727320354242.mp4', '', 'upload/1727320359741.mp4', '9', '<p>荆楚文化教育荆楚文化教育荆楚文化教育荆楚文化教育荆楚文化教育荆楚文化教育荆楚文化教育荆楚文化教育荆楚文化教育荆楚文化教育荆楚文化教育荆楚文化教育荆楚文化教育荆楚文化教育荆楚文化教育</p>', 'admin', '2024-09-26 11:13:34');
INSERT INTO `shipinxinxi` VALUES ('8', '09261114091762', '第六节 沉浮与静电的存在关系', 'upload/1727320550735.png', '3', 'upload/1727320503178.mp4', '', 'upload/1727320554845.mp4', '1', '<p>第六节 沉浮与静电的存在关系第六节 沉浮与静电的存在关系第六节 沉浮与静电的存在关系第六节 沉浮与静电的存在关系第六节 沉浮与静电的存在关系第六节 沉浮与静电的存在关系第六节 沉浮与静电的存在关系第六节 沉浮与静电的存在关系</p>', 'admin', '2024-09-26 11:15:57');
INSERT INTO `shipinxinxi` VALUES ('9', '09261116371969', '但凡钱小豪当年收敛点，这段经典台词都不会火到现在！', 'upload/1727320720828.png', '4', 'upload/1727320786149.mp4', '', 'upload/1727320792568.mp4', '5', '<h3 class=\"bili-video-card__info--tit\" title=\"但凡钱小豪当年收敛点，这段经典台词都不会火到现在！\" style=\"margin: 0px; padding-top: 0px; padding-right: var(--title-padding-right); padding-bottom: 0px; padding-left: 0px; color: rgb(24, 25, 28); font-size: var(--title-font-size); line-height: var(--title-line-height); height: calc(2 * var(--title-line-height)); align-items: flex-start; justify-content: flex-start; display: -webkit-box; overflow: hidden; -webkit-box-orient: vertical; text-overflow: ellipsis; line-break: anywhere; -webkit-line-clamp: 2; font-family: -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, sans-serif; text-wrap: wrap; word-break: break-word !important;\"><a href=\"https://www.bilibili.com/video/BV1jJHTefEzq/\" target=\"_blank\" data-mod=\"channel\" data-idx=\"secondary_floor_video\" data-ext=\"click\" style=\"margin: 0px; padding: 0px; color: var(--text1); transition-duration: 0.2s; transition-timing-function: linear; cursor: pointer;\">但凡钱小豪当年收敛点，这段经典台词都不会火到现在！</a></h3><p><br/></p>', 'admin', '2024-09-26 11:19:53');
INSERT INTO `shipinxinxi` VALUES ('10', '09261139271054', '大司马的120个鬼畜视频，真是下饭', 'upload/1727322019324.png', '5', 'upload/1727322025724.mp4', '', 'upload/1727322035501.mp4', '3', '<p>大司马的120个鬼畜视频，真是下饭</p>', '444', '2024-09-26 11:40:39');

-- ----------------------------
-- Table structure for `yonghu`
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `yonghuming` varchar(50) NOT NULL DEFAULT '' COMMENT '用户名',
  `mima` varchar(50) NOT NULL DEFAULT '' COMMENT '密码',
  `xingming` varchar(50) NOT NULL DEFAULT '' COMMENT '姓名',
  `xingbie` varchar(10) NOT NULL COMMENT '性别',
  `shouji` varchar(50) NOT NULL DEFAULT '' COMMENT '手机',
  `touxiang` varchar(255) NOT NULL COMMENT '头像',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='用户';

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES ('1', '111', '111', '张三', '男', '15469456789', 'upload/1727276379114.png');
INSERT INTO `yonghu` VALUES ('2', '222', '222', '李四', '女', '15469498745', 'upload/1727276395026.png');
INSERT INTO `yonghu` VALUES ('3', '333', '333', '李静瑜', '女', '15469865904', 'upload/1727320883592.png');
INSERT INTO `yonghu` VALUES ('4', '444', '444', '王冬杰', '男', '15698698654', 'upload/1727321713230.png');
