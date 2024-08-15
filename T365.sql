/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t365`;
CREATE DATABASE IF NOT EXISTS `t365` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t365`;

DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='收货地址';

DELETE FROM `address`;
INSERT INTO `address` (`id`, `yonghu_id`, `address_name`, `address_phone`, `address_dizhi`, `isdefault_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, 3, '收货人1', '17703786901', '地址1', 1, '2023-04-17 01:47:56', '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(2, 2, '收货人2', '17703786902', '地址2', 1, '2023-04-17 01:47:56', '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(3, 2, '收货人3', '17703786903', '地址3', 1, '2023-04-17 01:47:56', '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(4, 3, '收货人4', '17703786904', '地址4', 1, '2023-04-17 01:47:56', '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(5, 3, '收货人5', '17703786905', '地址5', 1, '2023-04-17 01:47:56', '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(6, 2, '收货人6', '17703786906', '地址6', 1, '2023-04-17 01:47:56', '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(7, 3, '收货人7', '17703786907', '地址7', 1, '2023-04-17 01:47:56', '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(8, 3, '收货人8', '17703786908', '地址8', 1, '2023-04-17 01:47:56', '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(9, 2, '收货人9', '17703786909', '地址9', 1, '2023-04-17 01:47:56', '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(10, 1, '收货人10', '17703786910', '地址10', 1, '2023-04-17 01:47:56', '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(11, 2, '收货人11', '17703786911', '地址11', 1, '2023-04-17 01:47:56', '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(12, 3, '收货人12', '17703786912', '地址12', 1, '2023-04-17 01:47:56', '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(13, 1, '收货人13', '17703786913', '地址13', 1, '2023-04-17 01:47:56', '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(14, 1, '收货人14', '17703786914', '地址14', 1, '2023-04-17 01:47:56', '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(15, 4, '张三', '17777772222', 'ZD复制', 2, '2023-04-17 02:39:02', '2023-04-17 02:39:02', '2023-04-17 02:39:02');

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int DEFAULT NULL COMMENT '所属用户',
  `yaopin_id` int DEFAULT NULL COMMENT '药品',
  `buy_number` int DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COMMENT='购物车';

DELETE FROM `cart`;

DROP TABLE IF EXISTS `chat`;
CREATE TABLE IF NOT EXISTS `chat` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int DEFAULT NULL COMMENT '提问用户',
  `chat_issue` varchar(200) DEFAULT NULL COMMENT '问题',
  `issue_time` timestamp NULL DEFAULT NULL COMMENT '问题时间 Search111',
  `chat_reply` varchar(200) DEFAULT NULL COMMENT '回复',
  `reply_time` timestamp NULL DEFAULT NULL COMMENT '回复时间 Search111',
  `zhuangtai_types` int DEFAULT NULL COMMENT '状态',
  `chat_types` int DEFAULT NULL COMMENT '数据类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='客服聊天';

DELETE FROM `chat`;
INSERT INTO `chat` (`id`, `yonghu_id`, `chat_issue`, `issue_time`, `chat_reply`, `reply_time`, `zhuangtai_types`, `chat_types`, `insert_time`) VALUES
	(1, 4, '药品1111怎么没收到', '2023-04-17 02:37:39', NULL, NULL, 2, 1, '2023-04-17 02:37:39'),
	(2, 4, NULL, NULL, '更汗的是是', '2023-04-17 02:37:52', NULL, 2, '2023-04-17 02:37:53'),
	(3, 4, NULL, NULL, '发给甲方', '2023-04-17 02:37:55', NULL, 2, '2023-04-17 02:37:55');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1和大概是广东省个', 'upload/config1.jpg'),
	(2, '轮播图2', 'upload/config2.jpg'),
	(3, '轮播图3', 'upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2023-04-17 01:47:32'),
	(2, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2023-04-17 01:47:32'),
	(3, 'jinyong_types', '账户状态', 1, '启用', NULL, NULL, '2023-04-17 01:47:32'),
	(4, 'jinyong_types', '账户状态', 2, '禁用', NULL, NULL, '2023-04-17 01:47:32'),
	(5, 'shangxia_types', '上下架', 1, '上架', NULL, NULL, '2023-04-17 01:47:32'),
	(6, 'shangxia_types', '上下架', 2, '下架', NULL, NULL, '2023-04-17 01:47:32'),
	(7, 'chufangyao_types', '处方药', 1, '是', NULL, NULL, '2023-04-17 01:47:32'),
	(8, 'chufangyao_types', '处方药', 2, '否', NULL, NULL, '2023-04-17 01:47:32'),
	(9, 'yaopin_types', '药品类型', 1, '药品类型1', NULL, NULL, '2023-04-17 01:47:32'),
	(10, 'yaopin_types', '药品类型', 2, '药品类型2', NULL, NULL, '2023-04-17 01:47:32'),
	(11, 'yaopin_erji_types', '二级类型', 1, '二级类型11', 1, NULL, '2023-04-17 01:47:32'),
	(12, 'yaopin_erji_types', '二级类型', 2, '二级类型12', 1, NULL, '2023-04-17 01:47:32'),
	(13, 'yaopin_erji_types', '二级类型', 3, '二级类型21', 2, NULL, '2023-04-17 01:47:32'),
	(14, 'yaopin_erji_types', '二级类型', 4, '二级类型22', 2, NULL, '2023-04-17 01:47:32'),
	(15, 'yaopin_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2023-04-17 01:47:32'),
	(16, 'yaopin_collection_types', '收藏表类型', 2, '赞', NULL, NULL, '2023-04-17 01:47:32'),
	(17, 'yaopin_collection_types', '收藏表类型', 3, '踩', NULL, NULL, '2023-04-17 01:47:32'),
	(18, 'yaopin_order_yesno_types', '购买状态', 1, '待审核', NULL, NULL, '2023-04-17 01:47:32'),
	(19, 'yaopin_order_yesno_types', '购买状态', 2, '同意', NULL, NULL, '2023-04-17 01:47:32'),
	(20, 'yaopin_order_yesno_types', '购买状态', 3, '拒绝', NULL, NULL, '2023-04-17 01:47:32'),
	(21, 'yaopin_order_types', '订单类型', 101, '已支付', NULL, NULL, '2023-04-17 01:47:32'),
	(22, 'yaopin_order_types', '订单类型', 102, '已退款', NULL, NULL, '2023-04-17 01:47:32'),
	(23, 'yaopin_order_types', '订单类型', 103, '已发货', NULL, NULL, '2023-04-17 01:47:32'),
	(24, 'yaopin_order_types', '订单类型', 104, '已收货', NULL, NULL, '2023-04-17 01:47:32'),
	(25, 'yaopin_order_types', '订单类型', 105, '已评价', NULL, NULL, '2023-04-17 01:47:32'),
	(26, 'yaopin_order_payment_types', '订单支付类型', 1, '余额', NULL, NULL, '2023-04-17 01:47:32'),
	(27, 'isdefault_types', '是否默认地址', 1, '否', NULL, NULL, '2023-04-17 01:47:32'),
	(28, 'isdefault_types', '是否默认地址', 2, '是', NULL, NULL, '2023-04-17 01:47:32'),
	(29, 'chat_types', '数据类型', 1, '问题', NULL, NULL, '2023-04-17 01:47:32'),
	(30, 'chat_types', '数据类型', 2, '回复', NULL, NULL, '2023-04-17 01:47:32'),
	(31, 'zhuangtai_types', '状态', 1, '未回复', NULL, NULL, '2023-04-17 01:47:32'),
	(32, 'zhuangtai_types', '状态', 2, '已回复', NULL, NULL, '2023-04-17 01:47:32'),
	(33, 'gonggao_types', '公告类型', 1, '公告类型1', NULL, NULL, '2023-04-17 01:47:32'),
	(34, 'gonggao_types', '公告类型', 2, '公告类型2', NULL, NULL, '2023-04-17 01:47:32'),
	(35, 'yaopinruku_types', '药品入库类型', 1, '药品入库类型1', NULL, NULL, '2023-04-17 01:47:32'),
	(36, 'yaopinruku_types', '药品入库类型', 2, '药品入库类型2', NULL, NULL, '2023-04-17 01:47:32'),
	(37, 'yaopinruku_types', '药品入库类型', 3, '药品入库类型3', NULL, NULL, '2023-04-17 01:47:32'),
	(38, 'yaopinruku_types', '药品入库类型', 4, '药品入库类型4', NULL, NULL, '2023-04-17 01:47:32'),
	(39, 'yaopinruku_types', '药品入库类型', 5, '药品入库类型5', NULL, '', '2023-04-17 02:44:29');

DROP TABLE IF EXISTS `gonggao`;
CREATE TABLE IF NOT EXISTS `gonggao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='公告';

DELETE FROM `gonggao`;
INSERT INTO `gonggao` (`id`, `gonggao_name`, `gonggao_photo`, `gonggao_types`, `insert_time`, `gonggao_content`, `create_time`) VALUES
	(1, '公告名称1', 'upload/gonggao1.jpg', 1, '2023-04-17 01:47:56', '公告详情1', '2023-04-17 01:47:56'),
	(2, '公告名称2', 'upload/gonggao2.jpg', 2, '2023-04-17 01:47:56', '公告详情2', '2023-04-17 01:47:56'),
	(3, '公告名称3', 'upload/gonggao3.jpg', 1, '2023-04-17 01:47:56', '公告详情3', '2023-04-17 01:47:56'),
	(4, '公告名称4', 'upload/gonggao4.jpg', 2, '2023-04-17 01:47:56', '公告详情4', '2023-04-17 01:47:56'),
	(5, '公告名称5', 'upload/gonggao5.jpg', 2, '2023-04-17 01:47:56', '公告详情5', '2023-04-17 01:47:56'),
	(6, '公告名称6', 'upload/gonggao6.jpg', 1, '2023-04-17 01:47:56', '公告详情6', '2023-04-17 01:47:56'),
	(7, '公告名称7', 'upload/gonggao7.jpg', 2, '2023-04-17 01:47:56', '公告详情7', '2023-04-17 01:47:56'),
	(8, '公告名称8', 'upload/gonggao8.jpg', 2, '2023-04-17 01:47:56', '公告详情8', '2023-04-17 01:47:56'),
	(9, '公告名称9', 'upload/gonggao9.jpg', 2, '2023-04-17 01:47:56', '公告详情9', '2023-04-17 01:47:56'),
	(10, '公告名称10', 'upload/gonggao10.jpg', 1, '2023-04-17 01:47:56', '公告详情10', '2023-04-17 01:47:56'),
	(11, '公告名称11', 'upload/gonggao11.jpg', 1, '2023-04-17 01:47:56', '公告详情11', '2023-04-17 01:47:56'),
	(12, '公告名称12', 'upload/gonggao12.jpg', 1, '2023-04-17 01:47:56', '公告详情12', '2023-04-17 01:47:56'),
	(13, '公告名称13', 'upload/gonggao13.jpg', 2, '2023-04-17 01:47:56', '公告详情13', '2023-04-17 01:47:56'),
	(14, '公告名称14', 'upload/gonggao14.jpg', 2, '2023-04-17 01:47:56', '公告详情14', '2023-04-17 01:47:56');

DROP TABLE IF EXISTS `liuyan`;
CREATE TABLE IF NOT EXISTS `liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `liuyan_name` varchar(200) DEFAULT NULL COMMENT '留言标题  Search111 ',
  `liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='留言板';

DELETE FROM `liuyan`;
INSERT INTO `liuyan` (`id`, `yonghu_id`, `liuyan_name`, `liuyan_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 3, '留言标题1', '留言内容1', '2023-04-17 01:47:56', '回复信息1', '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(2, 1, '留言标题2', '留言内容2', '2023-04-17 01:47:56', '回复信息2', '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(3, 1, '留言标题3', '留言内容3', '2023-04-17 01:47:56', '回复信息3', '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(4, 2, '留言标题4', '留言内容4', '2023-04-17 01:47:56', '回复信息4', '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(5, 1, '留言标题5', '留言内容5', '2023-04-17 01:47:56', '回复信息5', '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(6, 1, '留言标题6', '留言内容6', '2023-04-17 01:47:56', '回复信息6', '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(7, 1, '留言标题7', '留言内容7', '2023-04-17 01:47:56', '回复信息7', '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(8, 3, '留言标题8', '留言内容8', '2023-04-17 01:47:56', '回复信息8', '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(9, 2, '留言标题9', '留言内容9', '2023-04-17 01:47:56', '回复信息9', '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(10, 2, '留言标题10', '留言内容10', '2023-04-17 01:47:56', '回复信息10', '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(11, 2, '留言标题11', '留言内容11', '2023-04-17 01:47:56', '回复信息11', '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(12, 2, '留言标题12', '留言内容12', '2023-04-17 01:47:56', '回复信息12', '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(13, 1, '留言标题13', '留言内容13', '2023-04-17 01:47:56', '回复信息13', '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(14, 3, '留言标题14', '留言内容14', '2023-04-17 01:47:56', '回复信息14', '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(15, 4, '标题  啥', '和的誓师大会', '2023-04-17 02:38:26', '华东师范喝点水发货哈哈哈', '2023-04-17 02:44:38', '2023-04-17 02:38:26'),
	(16, 1, '666', '66666', '2024-08-12 06:15:17', NULL, NULL, '2024-08-12 06:15:17');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '员工id',
  `username` varchar(100) NOT NULL COMMENT '员工名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'a1', 'yonghu', '用户', 'w8le9mldiu9dw332ljp54vurjnmbi1qh', '2023-04-17 01:59:30', '2024-08-12 07:15:01'),
	(2, 1, 'admin', 'users', '管理员', 'cwqjd9c8zavzgeprhwx6si9j9bvf9l66', '2023-04-17 02:21:45', '2024-08-12 07:13:35'),
	(3, 1, 'a1', 'yuangong', '员工', '1bni1lw675f9pu18oseib1ld4jcf2ai4', '2023-04-17 02:29:27', '2024-08-12 07:14:47'),
	(4, 4, 'a5', 'yonghu', '用户', '3bwksj4nbcig6tr7wtmfzrc12ld0lkt4', '2023-04-17 02:37:08', '2023-04-17 03:38:08');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '员工名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2023-04-17 01:47:32');

DROP TABLE IF EXISTS `yaopin`;
CREATE TABLE IF NOT EXISTS `yaopin` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yaopin_name` varchar(200) DEFAULT NULL COMMENT '药品名称  Search111 ',
  `yaopin_uuid_number` varchar(200) DEFAULT NULL COMMENT '药品编号',
  `yaopin_photo` varchar(200) DEFAULT NULL COMMENT '药品照片',
  `chufangyao_types` int DEFAULT NULL COMMENT '处方药 Search111',
  `yaopin_types` int DEFAULT NULL COMMENT '药品类型 Search111',
  `yaopin_erji_types` int DEFAULT NULL COMMENT '二级类型 Search111',
  `yaopin_kucun_number` int DEFAULT NULL COMMENT '药品库存',
  `zan_number` int DEFAULT NULL COMMENT '赞',
  `cai_number` int DEFAULT NULL COMMENT '踩',
  `yaopin_old_money` decimal(10,2) DEFAULT NULL COMMENT '药品原价 ',
  `yaopin_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `yaopin_clicknum` int DEFAULT NULL COMMENT '药品热度',
  `yaopin_gongxiao_content` longtext COMMENT '药品功效',
  `yaopin_jinji_content` longtext COMMENT '药品禁忌',
  `yaopin_content` longtext COMMENT '药品说明',
  `shangxia_types` int DEFAULT NULL COMMENT '是否上架 ',
  `yaopin_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='药品';

DELETE FROM `yaopin`;
INSERT INTO `yaopin` (`id`, `yaopin_name`, `yaopin_uuid_number`, `yaopin_photo`, `chufangyao_types`, `yaopin_types`, `yaopin_erji_types`, `yaopin_kucun_number`, `zan_number`, `cai_number`, `yaopin_old_money`, `yaopin_new_money`, `yaopin_clicknum`, `yaopin_gongxiao_content`, `yaopin_jinji_content`, `yaopin_content`, `shangxia_types`, `yaopin_delete`, `insert_time`, `create_time`) VALUES
	(1, '药品名称1', '1681696076507', 'upload/yaopin1.jpg', 2, 1, 1, 101, 450, 204, 712.88, 380.64, 162, '药品功效1', '药品禁忌1', '药品说明1', 1, 1, '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(2, '药品名称2', '1681696076516', 'upload/yaopin2.jpg', 2, 1, 1, 102, 131, 389, 786.90, 270.03, 11, '药品功效2', '药品禁忌2', '药品说明2', 1, 1, '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(3, '药品名称3', '1681696076482', 'upload/yaopin3.jpg', 1, 1, 1, 98, 101, 234, 919.18, 165.24, 414, '药品功效3', '药品禁忌3', '药品说明3', 1, 1, '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(4, '药品名称4', '1681696076561', 'upload/yaopin4.jpg', 1, 1, 2, 104, 307, 409, 917.24, 149.49, 441, '药品功效4', '药品禁忌4', '药品说明4', 1, 1, '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(5, '药品名称5', '1681696076471', 'upload/yaopin5.jpg', 1, 1, 2, 103, 437, 167, 824.87, 151.64, 440, '药品功效5', '药品禁忌5', '药品说明5', 1, 1, '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(6, '药品名称6', '1681696076508', 'upload/yaopin6.jpg', 2, 1, 2, 104, 470, 88, 765.21, 149.38, 230, '药品功效6', '药品禁忌6', '药品说明6', 1, 1, '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(7, '药品名称7', '1681696076509', 'upload/yaopin7.jpg', 1, 1, 2, 105, 222, 134, 856.68, 58.53, 442, '药品功效7', '药品禁忌7', '药品说明7', 1, 1, '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(8, '药品名称8', '1681696076506', 'upload/yaopin8.jpg', 1, 1, 2, 108, 373, 481, 521.50, 42.48, 9, '药品功效8', '药品禁忌8', '药品说明8', 1, 1, '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(9, '药品名称9', '1681696076525', 'upload/yaopin9.jpg', 2, 2, 3, 109, 315, 420, 795.06, 414.09, 119, '药品功效9', '药品禁忌9', '药品说明9', 1, 1, '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(10, '药品名称10', '1681696076536', 'upload/yaopin10.jpg', 1, 2, 3, 1010, 258, 23, 727.98, 306.12, 15, '药品功效10', '药品禁忌10', '药品说明10', 1, 1, '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(11, '药品名称11', '1681696076509', 'upload/yaopin11.jpg', 2, 2, 3, 1011, 41, 143, 882.67, 85.64, 351, '药品功效11', '药品禁忌11', '药品说明11', 1, 1, '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(12, '药品名称12', '1681696076537', 'upload/yaopin12.jpg', 2, 2, 3, 1010, 444, 400, 711.07, 126.91, 445, '药品功效12', '药品禁忌12', '药品说明12', 1, 1, '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(13, '药品名称13', '1681696076535', 'upload/yaopin13.jpg', 2, 2, 3, 1013, 447, 381, 777.04, 496.12, 110, '药品功效13', '药品禁忌13', '药品说明13', 1, 1, '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(14, '药品名称14', '1681696076497', 'upload/yaopin14.jpg', 2, 2, 4, 1013, 44, 501, 800.11, 249.41, 230, '药品功效14', '药品禁忌14', '药品说明14', 1, 1, '2023-04-17 01:47:56', '2023-04-17 01:47:56');

DROP TABLE IF EXISTS `yaopinruku`;
CREATE TABLE IF NOT EXISTS `yaopinruku` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yaopin_id` int DEFAULT NULL COMMENT '药品',
  `yuangong_id` int DEFAULT NULL COMMENT '员工',
  `yaopinruku_uuid_number` varchar(200) DEFAULT NULL COMMENT '药品入库编号',
  `yaopinruku_name` varchar(200) DEFAULT NULL COMMENT '入库标题  Search111 ',
  `yaopinruku_types` int DEFAULT NULL COMMENT '药品入库类型 Search111',
  `yaopinruku_file` varchar(200) DEFAULT NULL COMMENT '附件',
  `yaopinruku_number` int DEFAULT NULL COMMENT '入库数量',
  `yaopinruku_time` timestamp NULL DEFAULT NULL COMMENT '入库时间',
  `yaopinruku_content` longtext COMMENT '入库缘由 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '上传时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='药品入库';

DELETE FROM `yaopinruku`;
INSERT INTO `yaopinruku` (`id`, `yaopin_id`, `yuangong_id`, `yaopinruku_uuid_number`, `yaopinruku_name`, `yaopinruku_types`, `yaopinruku_file`, `yaopinruku_number`, `yaopinruku_time`, `yaopinruku_content`, `insert_time`, `create_time`) VALUES
	(1, 1, 2, '1681696076529', '入库标题1', 1, 'upload/file.rar', 256, '2023-04-17 01:47:56', '入库缘由1', '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(2, 2, 1, '1681696076520', '入库标题2', 1, 'upload/file.rar', 453, '2023-04-17 01:47:56', '入库缘由2', '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(3, 3, 3, '1681696076571', '入库标题3', 3, 'upload/file.rar', 224, '2023-04-17 01:47:56', '入库缘由3', '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(4, 4, 3, '1681696076556', '入库标题4', 1, 'upload/file.rar', 299, '2023-04-17 01:47:56', '入库缘由4', '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(5, 5, 2, '1681696076518', '入库标题5', 1, 'upload/file.rar', 425, '2023-04-17 01:47:56', '入库缘由5', '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(6, 6, 2, '1681696076526', '入库标题6', 1, 'upload/file.rar', 226, '2023-04-17 01:47:56', '入库缘由6', '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(7, 7, 2, '1681696076483', '入库标题7', 4, 'upload/file.rar', 356, '2023-04-17 01:47:56', '入库缘由7', '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(8, 8, 1, '1681696076567', '入库标题8', 4, 'upload/file.rar', 404, '2023-04-17 01:47:56', '入库缘由8', '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(9, 9, 1, '1681696076528', '入库标题9', 3, 'upload/file.rar', 139, '2023-04-17 01:47:56', '入库缘由9', '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(10, 10, 2, '1681696076523', '入库标题10', 1, 'upload/file.rar', 75, '2023-04-17 01:47:56', '入库缘由10', '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(11, 11, 2, '1681696076495', '入库标题11', 2, 'upload/file.rar', 249, '2023-04-17 01:47:56', '入库缘由11', '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(12, 12, 3, '1681696076548', '入库标题12', 4, 'upload/file.rar', 470, '2023-04-17 01:47:56', '入库缘由12', '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(13, 13, 3, '1681696076505', '入库标题13', 4, 'upload/file.rar', 245, '2023-04-17 01:47:56', '入库缘由13', '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(14, 14, 1, '1681696076533', '入库标题14', 4, 'upload/file.rar', 393, '2023-04-17 01:47:56', '入库缘由14', '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(15, 14, 1, '1681699427664', '标题1111', 3, '/upload/1681699437657.doc', 2, '2023-04-17 02:44:00', '<p>还得收拾</p>', '2023-04-17 02:44:07', '2023-04-17 02:44:07');

DROP TABLE IF EXISTS `yaopin_collection`;
CREATE TABLE IF NOT EXISTS `yaopin_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yaopin_id` int DEFAULT NULL COMMENT '药品',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `yaopin_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COMMENT='药品收藏';

DELETE FROM `yaopin_collection`;
INSERT INTO `yaopin_collection` (`id`, `yaopin_id`, `yonghu_id`, `yaopin_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 1, 1, '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(2, 2, 2, 1, '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(3, 3, 1, 1, '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(4, 4, 3, 1, '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(5, 5, 3, 1, '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(6, 6, 1, 1, '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(7, 7, 3, 1, '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(8, 8, 3, 1, '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(9, 9, 1, 1, '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(10, 10, 3, 1, '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(11, 11, 2, 1, '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(12, 12, 3, 1, '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(13, 13, 3, 1, '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(14, 14, 3, 1, '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(15, 5, 1, 2, '2023-04-17 02:20:56', '2023-04-17 02:20:56'),
	(16, 7, 4, 1, '2023-04-17 02:41:02', '2023-04-17 02:41:02'),
	(17, 14, 1, 1, '2024-08-12 06:15:25', '2024-08-12 06:15:25');

DROP TABLE IF EXISTS `yaopin_commentback`;
CREATE TABLE IF NOT EXISTS `yaopin_commentback` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yaopin_id` int DEFAULT NULL COMMENT '药品',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `yaopin_commentback_text` longtext COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='药品评价';

DELETE FROM `yaopin_commentback`;
INSERT INTO `yaopin_commentback` (`id`, `yaopin_id`, `yonghu_id`, `yaopin_commentback_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 3, '评价内容1', '2023-04-17 01:47:56', '回复信息1', '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(2, 2, 3, '评价内容2', '2023-04-17 01:47:56', '回复信息2', '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(3, 3, 1, '评价内容3', '2023-04-17 01:47:56', '回复信息3', '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(4, 4, 2, '评价内容4', '2023-04-17 01:47:56', '回复信息4', '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(5, 5, 2, '评价内容5', '2023-04-17 01:47:56', '回复信息5', '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(6, 6, 1, '评价内容6', '2023-04-17 01:47:56', '回复信息6', '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(7, 7, 3, '评价内容7', '2023-04-17 01:47:56', '回复信息7', '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(8, 8, 1, '评价内容8', '2023-04-17 01:47:56', '回复信息8', '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(9, 9, 2, '评价内容9', '2023-04-17 01:47:56', '回复信息9', '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(10, 10, 2, '评价内容10', '2023-04-17 01:47:56', '回复信息10', '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(11, 11, 3, '评价内容11', '2023-04-17 01:47:56', '回复信息11', '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(12, 12, 2, '评价内容12', '2023-04-17 01:47:56', '回复信息12', '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(13, 13, 1, '评价内容13', '2023-04-17 01:47:56', '回复信息13', '2023-04-17 01:47:56', '2023-04-17 01:47:56'),
	(14, 14, 2, '评价内容14', '2023-04-17 01:47:56', '回复信息14', '2023-04-17 01:47:56', '2023-04-17 01:47:56');

DROP TABLE IF EXISTS `yaopin_order`;
CREATE TABLE IF NOT EXISTS `yaopin_order` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yaopin_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单编号 Search111 ',
  `address_id` int DEFAULT NULL COMMENT '收货地址 ',
  `yaopin_id` int DEFAULT NULL COMMENT '药品',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `buy_number` int DEFAULT NULL COMMENT '购买数量',
  `yaopin_order_file` varchar(200) DEFAULT NULL COMMENT '医生证明',
  `yaopin_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `yaopin_order_courier_name` varchar(200) DEFAULT NULL COMMENT '快递公司',
  `yaopin_order_courier_number` varchar(200) DEFAULT NULL COMMENT '快递单号',
  `yaopin_order_types` int DEFAULT NULL COMMENT '订单类型 Search111 ',
  `yaopin_order_yesno_types` int DEFAULT NULL COMMENT '审核状态 Search111',
  `yaopin_order_yesno_text` longtext COMMENT '审核意见',
  `yaopin_order_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `yaopin_order_payment_types` int DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '购买时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COMMENT='药品订单';

DELETE FROM `yaopin_order`;
INSERT INTO `yaopin_order` (`id`, `yaopin_order_uuid_number`, `address_id`, `yaopin_id`, `yonghu_id`, `buy_number`, `yaopin_order_file`, `yaopin_order_true_price`, `yaopin_order_courier_name`, `yaopin_order_courier_number`, `yaopin_order_types`, `yaopin_order_yesno_types`, `yaopin_order_yesno_text`, `yaopin_order_shenhe_time`, `yaopin_order_payment_types`, `insert_time`, `create_time`) VALUES
	(1, '1681698043118', 13, 6, 1, 1, '', 149.38, NULL, NULL, 101, NULL, NULL, NULL, 1, '2023-04-17 02:20:43', '2023-04-17 02:20:43'),
	(2, '1681698087060', 13, 3, 1, 1, 'upload/1681698085965.doc', 165.24, NULL, NULL, 101, 1, NULL, NULL, 1, '2023-04-17 02:21:27', '2023-04-17 02:21:27'),
	(3, '1681698101044', 13, 6, 1, 1, 'upload/1681698099463.doc', 149.38, '顺丰', '3541531', 103, NULL, NULL, NULL, 1, '2023-04-17 02:21:41', '2023-04-17 02:21:41'),
	(4, '1681698101044', 13, 3, 1, 2, 'upload/1681698099463.doc', 330.48, NULL, NULL, 101, 1, NULL, NULL, 1, '2023-04-17 02:21:41', '2023-04-17 02:21:41'),
	(5, '1681698101044', 13, 5, 1, 2, 'upload/1681698099463.doc', 303.28, '顺丰', '25341515', 101, 2, '当的观点是个审核人:员工姓名1;审核人编号:1681696076525', '2023-04-17 02:30:43', 1, '2023-04-17 02:21:41', '2023-04-17 02:21:41'),
	(6, '1681698101044', 13, 12, 1, 2, 'upload/1681698099463.doc', 253.82, NULL, NULL, 101, NULL, NULL, NULL, 1, '2023-04-17 02:21:41', '2023-04-17 02:21:41'),
	(7, '1681699200502', 15, 14, 4, 1, '', 249.41, NULL, NULL, 101, NULL, NULL, NULL, 1, '2023-04-17 02:40:01', '2023-04-17 02:40:01'),
	(8, '1681699214783', 15, 3, 4, 1, 'upload/1681699213727.doc', 165.24, NULL, NULL, 101, 1, NULL, NULL, 1, '2023-04-17 02:40:15', '2023-04-17 02:40:15'),
	(9, '1681699254829', 15, 3, 4, 1, 'upload/1681699253851.doc', 165.24, NULL, NULL, 101, 3, '个和都是高大上', '2023-04-17 02:44:58', 1, '2023-04-17 02:40:55', '2023-04-17 02:40:55'),
	(10, '1681699254829', 15, 14, 4, 1, 'upload/1681699253851.doc', 249.41, '圆通', '152415341', 103, NULL, NULL, NULL, 1, '2023-04-17 02:40:55', '2023-04-17 02:40:55'),
	(11, '1681699254829', 15, 7, 4, 2, 'upload/1681699253851.doc', 117.06, '顺丰', '5315310521', 101, 2, '合适的更合适低功耗审核人:员工姓名1;审核人编号:1681696076525', '2023-04-17 02:42:01', 1, '2023-04-17 02:40:55', '2023-04-17 02:40:55'),
	(12, '1723443340073', 13, 14, 1, 1, '', 249.41, NULL, NULL, 101, NULL, NULL, NULL, 1, '2024-08-12 06:15:40', '2024-08-12 06:15:40');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_uuid_number` varchar(200) DEFAULT NULL COMMENT '用户编号 Search111 ',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `jinyong_types` int DEFAULT NULL COMMENT '账户状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_uuid_number`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `yonghu_email`, `new_money`, `jinyong_types`, `create_time`) VALUES
	(1, '用户1', '123456', '1681696076541', '用户姓名1', '17703786901', '410224199010102001', 'upload/yonghu1.jpg', 1, '1@qq.com', 98751.96, 1, '2023-04-17 01:47:56'),
	(2, '用户2', '123456', '1681696076570', '用户姓名2', '17703786902', '410224199010102002', 'upload/yonghu2.jpg', 2, '2@qq.com', 189.75, 1, '2023-04-17 01:47:56'),
	(3, '用户3', '123456', '1681696076509', '用户姓名3', '17703786903', '410224199010102003', 'upload/yonghu3.jpg', 2, '3@qq.com', 728.35, 1, '2023-04-17 01:47:56'),
	(4, '用户4', '123456', '1681699024256', '张5', '17788889999', '444222111122223333', 'upload/1681699046521.jpg', 2, '5@qq.com', 99052.64, 1, '2023-04-17 02:37:04');

DROP TABLE IF EXISTS `yuangong`;
CREATE TABLE IF NOT EXISTS `yuangong` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yuangong_uuid_number` varchar(200) DEFAULT NULL COMMENT '员工编号 Search111 ',
  `yuangong_name` varchar(200) DEFAULT NULL COMMENT '员工姓名 Search111 ',
  `yuangong_phone` varchar(200) DEFAULT NULL COMMENT '员工手机号',
  `yuangong_id_number` varchar(200) DEFAULT NULL COMMENT '员工身份证号',
  `yuangong_photo` varchar(200) DEFAULT NULL COMMENT '员工照片',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `yuangong_email` varchar(200) DEFAULT NULL COMMENT '员工邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='员工';

DELETE FROM `yuangong`;
INSERT INTO `yuangong` (`id`, `username`, `password`, `yuangong_uuid_number`, `yuangong_name`, `yuangong_phone`, `yuangong_id_number`, `yuangong_photo`, `sex_types`, `yuangong_email`, `create_time`) VALUES
	(1, '员工1', '123456', '1681696076525', '员工姓名1', '17703786901', '410224199010102001', 'upload/yuangong1.jpg', 2, '1@qq.com', '2023-04-17 01:47:56'),
	(2, '员工2', '123456', '1681696076571', '员工姓名2', '17703786902', '410224199010102002', 'upload/yuangong2.jpg', 1, '2@qq.com', '2023-04-17 01:47:56'),
	(3, '员工3', '123456', '1681696076503', '员工姓名3', '17703786903', '410224199010102003', 'upload/yuangong3.jpg', 1, '3@qq.com', '2023-04-17 01:47:56');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
