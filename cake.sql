/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : localhost:3306
 Source Schema         : cake

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 05/11/2020 08:20:42
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for c_cart
-- ----------------------------
DROP TABLE IF EXISTS `c_cart`;
CREATE TABLE `c_cart`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `user_id` int(0) NULL DEFAULT NULL,
  `goods_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` int(0) NULL DEFAULT NULL,
  `count` int(0) NULL DEFAULT NULL,
  `specifi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `collection` int(0) NULL DEFAULT NULL,
  `img_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goods_id` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of c_cart
-- ----------------------------
INSERT INTO `c_cart` VALUES (6, 8, '水镜红宝石', 198, 5, '2磅', 1, 'http://localhost:8080/cake/images/cakes/Mirror/index.jpg', 2);
INSERT INTO `c_cart` VALUES (18, 7, '榴莲饼', 39, 4, '1盒', 0, 'http://localhost:8080/cake/images/Souvenir/DurianCake/banner/1.png', 68);
INSERT INTO `c_cart` VALUES (21, 7, '全心全意	', 158, 5, '1磅', 0, 'http://localhost:8080/cake/images/cakes/Wholeheartedly/banner/1.jpg', 35);
INSERT INTO `c_cart` VALUES (25, 7, '草莓迷宫', 368, 1, '2磅', 1, 'http://localhost:8080/cake/images/cakes/StrawberryMaze/banner/1.jpg', 24);
INSERT INTO `c_cart` VALUES (27, 7, '雪天鹅', 198, 1, '1.5磅', 1, 'http://localhost:8080/cake/images/cakes/SnowSwan/banner/1.jpg', 5);
INSERT INTO `c_cart` VALUES (28, 7, '帅气满满', 228, 1, '2磅', 1, 'http://localhost:8080/cake/images/cakes/Handsome/banner/1.jpg', 13);
INSERT INTO `c_cart` VALUES (29, 7, '【芒果季】冰语琥珀', 129, 1, '1盒', 1, 'http://localhost:8080/cake/images/AfternoonTea/IceAmber/banner/1.jpg', 49);
INSERT INTO `c_cart` VALUES (30, 7, '汪汪队之天天（戚风款）', 228, 1, '1磅', 0, 'http://localhost:8080/cake/images/cakes/WoofTeam/banner/1.jpg', 28);
INSERT INTO `c_cart` VALUES (31, 7, '依恋', 149, 1, '1盒', 0, 'http://localhost:8080/cake/images/AfternoonTea/Attachment/banner/1.jpg', 54);
INSERT INTO `c_cart` VALUES (32, 7, '提拉米苏', 198, 1, '2磅', 0, 'http://localhost:8080/cake/images/cakes/Tiramisu/banner/1.jpg', 34);

-- ----------------------------
-- Table structure for c_dynamic
-- ----------------------------
DROP TABLE IF EXISTS `c_dynamic`;
CREATE TABLE `c_dynamic`  (
  `id` int(0) NULL DEFAULT NULL,
  `d_title` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `d_content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `d_year` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `d_time` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of c_dynamic
-- ----------------------------
INSERT INTO `c_dynamic` VALUES (1, '幸福西饼荣获第五届深圳餐饮风云榜“最佳连锁外卖餐厅”', '5月26日，由深圳广播电影电视集团、清华大学深圳研究生院、深圳市烹饪协会、深圳市饭店业协会主办，深圳广电优秀餐饮栏目《食客准备》承办的----第五届深圳餐饮风云榜在深圳广电集团大楼正式揭榜。', '2017', '07-25');
INSERT INTO `c_dynamic` VALUES (2, '搭“幸福专列”享受小幸福，幸福西饼接地气的营销不过时', '自7月12日起，幸福西饼“幸福专列”已在深圳地铁7号线正式上线。', '2017', '07-25');
INSERT INTO `c_dynamic` VALUES (3, '幸福西饼助跑2017兰州国际马拉松赛', '幸福西饼助跑2017兰州国际马拉松赛', '2017', '07-29');
INSERT INTO `c_dynamic` VALUES (4, '幸福西饼与粉丝共度年会—2017迈向新里程', '幸福西饼会', '2017', '07-31');
INSERT INTO `c_dynamic` VALUES (5, '感恩广大粉丝支持，幸福西饼送出“双11”重磅福利', '作为国内知名O2O蛋糕品牌之一的幸福西饼，“双11”期间不仅销售成绩喜人，庆祝的方式也是别具一格。', '2017', '11-27');
INSERT INTO `c_dynamic` VALUES (6, '15201——2018年我们不忘初心、砥砺前行、迎接新挑战！', '2018年1月12-14日，幸福西饼2018年年度经营规划会议暨2018头部城市签约仪式在厦门坤城汤岸温泉度假村召开。', '2018', '01-20');
INSERT INTO `c_dynamic` VALUES (7, '助力抗击疫情', '2020年2月4日，幸福商场通过深圳市青少年发展基金会向武汉市慈善会、深圳市慈善会共捐赠100万元人民币用于新型冠状病毒疫情防控工作。各个城市纷纷积极参与防控志愿工作，捐赠物资、善款，履行社会责任。', '2020', '03-05');
INSERT INTO `c_dynamic` VALUES (8, '携手古天乐，探索新未来', '2020年3月，签约古天乐为品牌形象代言人，并推出代言人定制系列蛋糕——幸福先生。', '2020', '03-05');

-- ----------------------------
-- Table structure for c_qual
-- ----------------------------
DROP TABLE IF EXISTS `c_qual`;
CREATE TABLE `c_qual`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `site` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `license` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `legal_person` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of c_qual
-- ----------------------------
INSERT INTO `c_qual` VALUES (1, '幸福商城', '深圳市幸福商城科技股份有限公司', '深圳市盐田区沙头角街道田心社区沙盐路3018号盐田现代产业服务中心（一期）A座13D-3', '袁火洪');
INSERT INTO `c_qual` VALUES (2, '厦门前埔商城', '厦门市思明区刘枝花蛋糕店', '厦门市思明区会展南二路536、538', '刘枝花');
INSERT INTO `c_qual` VALUES (3, '重庆市开州幸福西饼站', '幸福西饼（开州店）', '重庆是开州区镇东街道镇东社区北环路1445号门市', '冉启美');
INSERT INTO `c_qual` VALUES (4, '张家界配送站', '张家界幸福西饼食品有限公司', '湖南省张家界市永定区官黎坪鲤鱼池大庸路中心北巷3号', '黎修华');
INSERT INTO `c_qual` VALUES (5, '眉山配送', '东坡区麦香隆蛋糕店', '四川省眉山市东坡区圣丰农产品批发市场一期B区13栋二楼1号', '方惠国');
INSERT INTO `c_qual` VALUES (6, '南充配送站', '南充市顺庆区明创商行', '南充市顺庆区迎凤路3号3幢（嘉亿纺织厂内）', '范远明');
INSERT INTO `c_qual` VALUES (7, '百色商城', '百色市右江区幸宏福西饼店', '百色市右江区城北一路16号星光大道7#楼第三层第C5号铺', '黄文标');
INSERT INTO `c_qual` VALUES (8, '绵阳配送站', '绵阳高新区富贵蛋糕店', '四川省绵阳市高新区虹阳路9号绵阳市通友塑胶有限公司1栋2楼', '彭子荣');
INSERT INTO `c_qual` VALUES (9, '攀枝花市仁和区建胜蛋糕店', '攀枝花市仁和区建胜蛋糕店', '攀枝花市仁和区迤沙拉大道555号8幢8号', '李昌胜');
INSERT INTO `c_qual` VALUES (10, '重庆市长寿配送站', '长寿区高高在尚糕点坊', '重庆 重庆市 长寿区 长寿古镇E区8栋1-6', '刘小娅');
INSERT INTO `c_qual` VALUES (11, '常德配送站', '常德常德柳叶湖旅游度假区金凤川紫幸福西饼店', '常德柳叶湖旅游度假区七里桥街道戴家岗社区金凤川紫小区3-06栋106号', '陆婧');
INSERT INTO `c_qual` VALUES (12, '石家庄裕华配送中心', '裕华区千层烘焙坊', '河北省 石家庄市 裕华区 石家庄市裕华区仓兴路25号院', '谢海燕');
INSERT INTO `c_qual` VALUES (13, '长安配送站', '长安和畅烘焙坊', '河北省 石家庄市 长安区 跃进路与金山街交叉口北边院内西北角', '谢海燕');
INSERT INTO `c_qual` VALUES (14, '重庆市永川配送站', '幸福西饼（永川店）', '重庆市永川区兴南路298号1号楼2层20号', '殷丽');
INSERT INTO `c_qual` VALUES (15, '桑植配送站', '张家界幸福西饼食品有限公司桑植分公司', '湖南省桑植县醴源镇和平街（梅尼超市斜对面）', '石林');
INSERT INTO `c_qual` VALUES (16, '黄岛配送站', '黄岛区幸福叁陆伍蛋糕店', '山东省 青岛市 黄岛区 昆仑山南路79号天和小区南侧网点', '张永刚');
INSERT INTO `c_qual` VALUES (17, '青岛配送中心', '市北区墨行壹佰烘焙工作室', '山东省 青岛市 市北区 青岛市北区合肥路街道同德路82号夹岭沟小区1号', '耿磊');
INSERT INTO `c_qual` VALUES (18, '西宁站', '西宁城西区奇之缘烘焙坊', '青海省西宁市城西区盐港湖巷13号', '俞顺');
INSERT INTO `c_qual` VALUES (19, '重庆市万州北滨兰亭配送站', '幸福西饼（万州北滨兰亭店）', '重庆市万州区石坪柱5号一层23号', '李统钧');
INSERT INTO `c_qual` VALUES (20, '株洲配送站', '芦淞区星福西饼商行', '湖南省株洲市芦淞区古大桥村寺岭组罗帆私宅', '严虎');
INSERT INTO `c_qual` VALUES (21, '长沙环保路站点', '长沙市雨花区环喜糕点店', '长沙市雨花区环保科技园达荣楼107号', '肖涛');
INSERT INTO `c_qual` VALUES (22, '重庆涪陵配送站', '涪陵区诺心蛋糕店', '重庆市涪陵区荔枝乌江村7组', '傅天马');
INSERT INTO `c_qual` VALUES (23, '渭南站', '渭南市临渭区幸福美美蛋糕店', '陕西省渭南市临渭区杜桥街道办事处铁二十局社区金水路天斗小区6号楼四楼', '陈刚');
INSERT INTO `c_qual` VALUES (24, '万州厦门大道配送站', '幸福西饼（万州厦门大道店）', '重庆市万州区火车站商贸城11号楼C区号第一层1-2号', '李统钧');
INSERT INTO `c_qual` VALUES (25, '醴陵配送站', '醴陵市星福西饼屋', '湖南市株洲市醴陵市阳三石街道泉湖路公路局旁', '张智慧');
INSERT INTO `c_qual` VALUES (26, '长沙世纪城配送站', '长沙市开福区福江糕点店', '湖南省长沙市开福区芙蓉北路街道金泰路199号湘江世纪城瑞江苑市政道路层', '肖涛');
INSERT INTO `c_qual` VALUES (27, '桂林商城', '象山区卡诺尔西饼店', '桂林市象山区东安街铁西新区42号7栋1-3铺', '袁洁金');
INSERT INTO `c_qual` VALUES (28, '重庆江津配送站', '江津区天淳食品加工坊', '重庆市江津区德感工业园区东江路555号（金桥食品产业园C幢负1至层）', '郑双江');
INSERT INTO `c_qual` VALUES (29, '长沙浏阳河配送站', '长沙市芙蓉区深福蛋糕店', '浏阳河配送站：长沙芙蓉区浏阳河路鑫科明珠十一栋4号', '赵铁军');
INSERT INTO `c_qual` VALUES (30, '湘潭配送站', '湘潭市雨湖区利顿唯尔蛋糕店	', '湘潭市雨湖区中山街道民主西路经贸中心综合楼2号门面', '韩广宁');
INSERT INTO `c_qual` VALUES (31, '永州配送站', '永州市冷水滩区多滋味西饼屋', '湖南省永州市冷水滩区凤凰园九巍大道与陶源路交汇处2号楼', '文仓');
INSERT INTO `c_qual` VALUES (32, '长沙城西配送中心', '长沙市望城区喜海蛋糕店', '河西配送站：湖南省长沙市望城区月亮岛街道玫瑰园商业街10-12栋111', '余晨');
INSERT INTO `c_qual` VALUES (33, '益阳配送站', '益阳市赫山区幸福西饼店', '益阳市赫山区龙岭工业园石头铺安置区', '林伟');
INSERT INTO `c_qual` VALUES (34, '西充配送站', '幸福西饼 西充店', '四川省南充市西充县晋城镇天宝路109号附1号', '任斌');
INSERT INTO `c_qual` VALUES (35, '邵阳', '邵阳市大祥区幸福西饼邵阳店', '湖南省邵阳市大祥区城南街道神滩社区13组', '马海涛');
INSERT INTO `c_qual` VALUES (36, '衡阳配送站', '衡阳市幸福小时光商贸发展有限公司', '衡阳市蒸湘区光辉街互助小区46栋一楼', '罗静');
INSERT INTO `c_qual` VALUES (37, '经济开发区幸福西饼店（怀化）', '怀化幸福添添食品有限公司', '湖南省怀化市怀化湖南小商品加工工业园B2栋308房', '丁永琦');
INSERT INTO `c_qual` VALUES (38, '娄底配送站', '娄底市经济技术开发区幸福源西饼加工店	', '娄底市经济技术开发区西坪路创新大厦1楼（华南煤机中小企业服务中心）', '廖飞');
INSERT INTO `c_qual` VALUES (39, '宁乡玉潭配送站', '宁乡鑫喜糕点店', '湖南省宁乡市玉潭街道新城社区新宜路169号', '黄鑫');
INSERT INTO `c_qual` VALUES (40, '郴州配送站', '郴州市北湖区龙女幸福西饼店', '郴州市北湖区下湄桥街道龙女商业街（铜坑湖村6组）', '刘立平');
INSERT INTO `c_qual` VALUES (41, '延安配送站', '宝塔区巩氏烘焙坊', '陕西省延安市宝塔区黄蒿湾鑫鑫家园9号楼a栋二层', '巩涛');
INSERT INTO `c_qual` VALUES (42, '浏阳配送站', '浏阳市集里开国西点店', '浏阳市集里神仙坳社区大塘路189-191号', '刘开国');
INSERT INTO `c_qual` VALUES (43, '榆林配送站', '幸福西饼榆林店', '陕西省榆林市横山区白界镇伟业新天地6号楼2层转角北', '申民涛');
INSERT INTO `c_qual` VALUES (44, '毕节配送站', '七星关区味臻蛋糕店', '贵州省毕节市七星关区三板桥街道草海大道湖南商会B1栋4、5、6号商铺', '韩中芬');
INSERT INTO `c_qual` VALUES (45, '玉林商城', '玉林市玉州区初见西饼经营部', '玉林市玉州区光明路35号', '朱必先');

-- ----------------------------
-- Table structure for c_small_type
-- ----------------------------
DROP TABLE IF EXISTS `c_small_type`;
CREATE TABLE `c_small_type`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `b_id` int(0) NULL DEFAULT NULL,
  `s_type_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_id`(`b_id`) USING BTREE,
  CONSTRAINT `c_small_type_ibfk_1` FOREIGN KEY (`b_id`) REFERENCES `c_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of c_small_type
-- ----------------------------
INSERT INTO `c_small_type` VALUES (1, 1, '鲜果蛋糕', 'http://localhost:8080/cake/images/type/6.png');
INSERT INTO `c_small_type` VALUES (2, 1, '芝士慕斯蛋糕', 'http://localhost:8080/cake/images/type/3.png');
INSERT INTO `c_small_type` VALUES (3, 1, '混合型蛋糕', 'http://localhost:8080/cake/images/type/8.png');
INSERT INTO `c_small_type` VALUES (4, 1, '多层蛋糕', 'http://localhost:8080/cake/images/type/7.png');
INSERT INTO `c_small_type` VALUES (5, 1, '栗子巧克力蛋糕', 'http://localhost:8080/cake/images/type/4.png');
INSERT INTO `c_small_type` VALUES (6, 1, '节日蛋糕', 'http://localhost:8080/cake/images/type/5.png');
INSERT INTO `c_small_type` VALUES (7, 2, '下午茶系列', 'http://localhost:8080/cake/images/type/1.png');
INSERT INTO `c_small_type` VALUES (8, 3, '全国包邮', 'http://localhost:8080/cake/images/type/9.png');

-- ----------------------------
-- Table structure for c_type
-- ----------------------------
DROP TABLE IF EXISTS `c_type`;
CREATE TABLE `c_type`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of c_type
-- ----------------------------
INSERT INTO `c_type` VALUES (1, '蛋糕');
INSERT INTO `c_type` VALUES (2, '下午茶');
INSERT INTO `c_type` VALUES (3, '手信');

-- ----------------------------
-- Table structure for c_user
-- ----------------------------
DROP TABLE IF EXISTS `c_user`;
CREATE TABLE `c_user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `provinal` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `addr` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of c_user
-- ----------------------------
INSERT INTO `c_user` VALUES (7, '奶炮炮.king', '123456', '290064525@qq.com', '上海', '上海市', '凯里');
INSERT INTO `c_user` VALUES (8, 'admin', '123456', '2361142124@qq.com', '贵州省', '黔东南', '贵州省黔东南州');
INSERT INTO `c_user` VALUES (9, '460649487', 'ai123456789', '460649487@qq.com', NULL, NULL, NULL);
INSERT INTO `c_user` VALUES (10, 'admin1', '123456', '4751142124@qq.com', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city`  (
  `cid` int(0) NOT NULL,
  `city` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pid` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`city`) USING BTREE,
  INDEX `pid`(`pid`) USING BTREE,
  CONSTRAINT `city_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `provincial` (`pid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES (10, '七台河市', 10);
INSERT INTO `city` VALUES (7, '万宁市', 24);
INSERT INTO `city` VALUES (2, '三亚市', 24);
INSERT INTO `city` VALUES (4, '三明市', 14);
INSERT INTO `city` VALUES (12, '三门峡市', 17);
INSERT INTO `city` VALUES (1, '上海市', 3);
INSERT INTO `city` VALUES (11, '上饶市', 15);
INSERT INTO `city` VALUES (8, '东方市', 24);
INSERT INTO `city` VALUES (17, '东莞市', 20);
INSERT INTO `city` VALUES (5, '东营市', 16);
INSERT INTO `city` VALUES (5, '中卫市', 30);
INSERT INTO `city` VALUES (18, '中山市', 20);
INSERT INTO `city` VALUES (13, '临夏回族自治州', 21);
INSERT INTO `city` VALUES (10, '临汾市', 6);
INSERT INTO `city` VALUES (13, '临沂市', 16);
INSERT INTO `city` VALUES (8, '临沧市', 25);
INSERT INTO `city` VALUES (12, '临高县', 24);
INSERT INTO `city` VALUES (6, '丹东市', 8);
INSERT INTO `city` VALUES (11, '丽水市', 12);
INSERT INTO `city` VALUES (6, '丽江市', 25);
INSERT INTO `city` VALUES (9, '乌兰察布市', 32);
INSERT INTO `city` VALUES (3, '乌海市', 32);
INSERT INTO `city` VALUES (21, '乌苏市', 31);
INSERT INTO `city` VALUES (1, '乌鲁木齐市', 31);
INSERT INTO `city` VALUES (15, '乐东黎族自治县', 24);
INSERT INTO `city` VALUES (10, '乐山市', 22);
INSERT INTO `city` VALUES (4, '九江市', 15);
INSERT INTO `city` VALUES (16, '云林县', 7);
INSERT INTO `city` VALUES (21, '云浮市', 20);
INSERT INTO `city` VALUES (6, '五家渠市', 31);
INSERT INTO `city` VALUES (3, '五指山市', 24);
INSERT INTO `city` VALUES (15, '亳州市', 13);
INSERT INTO `city` VALUES (13, '仙桃市', 18);
INSERT INTO `city` VALUES (7, '伊 春 市', 10);
INSERT INTO `city` VALUES (18, '伊宁市', 31);
INSERT INTO `city` VALUES (6, '佛山市', 20);
INSERT INTO `city` VALUES (9, '佳木斯市', 10);
INSERT INTO `city` VALUES (17, '保亭黎族苗族自治县', 24);
INSERT INTO `city` VALUES (6, '保定市', 5);
INSERT INTO `city` VALUES (4, '保山市', 25);
INSERT INTO `city` VALUES (15, '信阳市', 17);
INSERT INTO `city` VALUES (5, '儋州市', 24);
INSERT INTO `city` VALUES (2, '克拉玛依市', 31);
INSERT INTO `city` VALUES (14, '六安市', 13);
INSERT INTO `city` VALUES (2, '六盘水市', 23);
INSERT INTO `city` VALUES (1, '兰州市', 21);
INSERT INTO `city` VALUES (11, '兴安盟', 32);
INSERT INTO `city` VALUES (9, '内江市', 22);
INSERT INTO `city` VALUES (21, '凉山彝族自治州', 22);
INSERT INTO `city` VALUES (2, '包头市', 32);
INSERT INTO `city` VALUES (1, '北京市', 1);
INSERT INTO `city` VALUES (5, '北海市', 28);
INSERT INTO `city` VALUES (3, '十堰市', 18);
INSERT INTO `city` VALUES (1, '南京市', 11);
INSERT INTO `city` VALUES (11, '南充市', 22);
INSERT INTO `city` VALUES (1, '南宁市', 28);
INSERT INTO `city` VALUES (7, '南平市', 14);
INSERT INTO `city` VALUES (15, '南投县', 7);
INSERT INTO `city` VALUES (1, '南昌市', 15);
INSERT INTO `city` VALUES (6, '南通市', 11);
INSERT INTO `city` VALUES (13, '南阳市', 17);
INSERT INTO `city` VALUES (17, '博乐市', 31);
INSERT INTO `city` VALUES (2, '厦门市', 14);
INSERT INTO `city` VALUES (4, '双鸭山市', 10);
INSERT INTO `city` VALUES (22, '台东县', 7);
INSERT INTO `city` VALUES (13, '台中县', 7);
INSERT INTO `city` VALUES (4, '台中市', 7);
INSERT INTO `city` VALUES (8, '台北县', 7);
INSERT INTO `city` VALUES (1, '台北市', 7);
INSERT INTO `city` VALUES (18, '台南县', 7);
INSERT INTO `city` VALUES (5, '台南市', 7);
INSERT INTO `city` VALUES (10, '台州市', 12);
INSERT INTO `city` VALUES (1, '合肥市', 13);
INSERT INTO `city` VALUES (8, '吉安市', 15);
INSERT INTO `city` VALUES (2, '吉林市', 9);
INSERT INTO `city` VALUES (7, '吐鲁番市', 31);
INSERT INTO `city` VALUES (11, '吕梁市', 6);
INSERT INTO `city` VALUES (3, '吴忠市', 30);
INSERT INTO `city` VALUES (16, '周口市', 17);
INSERT INTO `city` VALUES (7, '呼伦贝尔市', 32);
INSERT INTO `city` VALUES (1, '呼和浩特市', 32);
INSERT INTO `city` VALUES (11, '和田市', 31);
INSERT INTO `city` VALUES (11, '咸宁市', 18);
INSERT INTO `city` VALUES (4, '咸阳市', 27);
INSERT INTO `city` VALUES (10, '哈密市', 31);
INSERT INTO `city` VALUES (1, '哈尔滨市', 10);
INSERT INTO `city` VALUES (2, '唐山市', 5);
INSERT INTO `city` VALUES (14, '商丘市', 17);
INSERT INTO `city` VALUES (10, '商洛市', 27);
INSERT INTO `city` VALUES (9, '喀什市', 31);
INSERT INTO `city` VALUES (17, '嘉义县', 7);
INSERT INTO `city` VALUES (7, '嘉义市', 7);
INSERT INTO `city` VALUES (4, '嘉兴市', 12);
INSERT INTO `city` VALUES (5, '嘉峪关市', 21);
INSERT INTO `city` VALUES (3, '四平市', 9);
INSERT INTO `city` VALUES (4, '固原市', 30);
INSERT INTO `city` VALUES (5, '图木舒克市', 31);
INSERT INTO `city` VALUES (3, '基隆市', 7);
INSERT INTO `city` VALUES (20, '塔城市', 31);
INSERT INTO `city` VALUES (6, '大 庆 市', 10);
INSERT INTO `city` VALUES (13, '大兴安岭地区', 10);
INSERT INTO `city` VALUES (2, '大同市', 6);
INSERT INTO `city` VALUES (13, '大理白族自治州', 25);
INSERT INTO `city` VALUES (2, '大连市', 8);
INSERT INTO `city` VALUES (4, '天水市', 21);
INSERT INTO `city` VALUES (1, '天津市', 2);
INSERT INTO `city` VALUES (14, '天门市', 18);
INSERT INTO `city` VALUES (1, '太原市', 6);
INSERT INTO `city` VALUES (19, '奎屯市', 31);
INSERT INTO `city` VALUES (10, '威海市', 16);
INSERT INTO `city` VALUES (13, '娄底市', 19);
INSERT INTO `city` VALUES (9, '孝感市', 18);
INSERT INTO `city` VALUES (9, '宁德市', 14);
INSERT INTO `city` VALUES (2, '宁波市', 12);
INSERT INTO `city` VALUES (8, '安庆市', 13);
INSERT INTO `city` VALUES (9, '安康市', 27);
INSERT INTO `city` VALUES (5, '安阳市', 17);
INSERT INTO `city` VALUES (4, '安顺市', 23);
INSERT INTO `city` VALUES (10, '定安县', 24);
INSERT INTO `city` VALUES (11, '定西市', 21);
INSERT INTO `city` VALUES (9, '宜兰县', 7);
INSERT INTO `city` VALUES (13, '宜宾市', 22);
INSERT INTO `city` VALUES (5, '宜昌市', 18);
INSERT INTO `city` VALUES (9, '宜春市', 15);
INSERT INTO `city` VALUES (3, '宝鸡市', 27);
INSERT INTO `city` VALUES (17, '宣城市', 13);
INSERT INTO `city` VALUES (12, '宿州市', 13);
INSERT INTO `city` VALUES (13, '宿迁市', 11);
INSERT INTO `city` VALUES (20, '屏东县', 7);
INSERT INTO `city` VALUES (11, '屯昌县', 24);
INSERT INTO `city` VALUES (4, '山南地区', 29);
INSERT INTO `city` VALUES (6, '岳阳市', 19);
INSERT INTO `city` VALUES (14, '崇左市', 28);
INSERT INTO `city` VALUES (13, '巢湖市', 13);
INSERT INTO `city` VALUES (17, '巴中市', 22);
INSERT INTO `city` VALUES (8, '巴彦淖尔市', 32);
INSERT INTO `city` VALUES (4, '常州市', 11);
INSERT INTO `city` VALUES (7, '常德市', 19);
INSERT INTO `city` VALUES (8, '平凉市', 21);
INSERT INTO `city` VALUES (4, '平顶山市', 17);
INSERT INTO `city` VALUES (7, '广元市', 22);
INSERT INTO `city` VALUES (14, '广安市', 22);
INSERT INTO `city` VALUES (1, '广州市', 20);
INSERT INTO `city` VALUES (10, '庆阳市', 21);
INSERT INTO `city` VALUES (13, '库尔勒市', 31);
INSERT INTO `city` VALUES (10, '廊坊市', 5);
INSERT INTO `city` VALUES (6, '延安市', 27);
INSERT INTO `city` VALUES (9, '延边朝鲜族自治州', 9);
INSERT INTO `city` VALUES (2, '开封市', 17);
INSERT INTO `city` VALUES (7, '张家口市', 5);
INSERT INTO `city` VALUES (8, '张家界市', 19);
INSERT INTO `city` VALUES (7, '张掖市', 21);
INSERT INTO `city` VALUES (14, '彰化县', 7);
INSERT INTO `city` VALUES (3, '徐州市', 11);
INSERT INTO `city` VALUES (14, '德宏傣族景颇族自治州', 25);
INSERT INTO `city` VALUES (14, '德州市', 16);
INSERT INTO `city` VALUES (5, '德阳市', 22);
INSERT INTO `city` VALUES (9, '忻州市', 6);
INSERT INTO `city` VALUES (12, '怀化市', 19);
INSERT INTO `city` VALUES (15, '怒江傈傈族自治州', 25);
INSERT INTO `city` VALUES (7, '思茅市', 25);
INSERT INTO `city` VALUES (17, '恩施土家族苗族自治州', 18);
INSERT INTO `city` VALUES (11, '惠州市', 20);
INSERT INTO `city` VALUES (1, '成都市', 22);
INSERT INTO `city` VALUES (10, '扬州市', 11);
INSERT INTO `city` VALUES (8, '承德市', 5);
INSERT INTO `city` VALUES (10, '抚州市', 15);
INSERT INTO `city` VALUES (4, '抚顺市', 8);
INSERT INTO `city` VALUES (1, '拉萨市', 29);
INSERT INTO `city` VALUES (20, '揭阳市', 20);
INSERT INTO `city` VALUES (3, '攀枝花市', 22);
INSERT INTO `city` VALUES (9, '文山壮族苗族自治州', 25);
INSERT INTO `city` VALUES (6, '文昌市', 24);
INSERT INTO `city` VALUES (7, '新乡市', 17);
INSERT INTO `city` VALUES (5, '新余市', 15);
INSERT INTO `city` VALUES (11, '新竹县', 7);
INSERT INTO `city` VALUES (6, '新竹市', 7);
INSERT INTO `city` VALUES (2, '无锡市', 11);
INSERT INTO `city` VALUES (5, '日喀则地区', 29);
INSERT INTO `city` VALUES (11, '日照市', 16);
INSERT INTO `city` VALUES (1, '昆明市', 25);
INSERT INTO `city` VALUES (14, '昌吉市　', 31);
INSERT INTO `city` VALUES (14, '昌江黎族自治县', 24);
INSERT INTO `city` VALUES (3, '昌都地区', 29);
INSERT INTO `city` VALUES (5, '昭通市', 25);
INSERT INTO `city` VALUES (7, '晋中市', 6);
INSERT INTO `city` VALUES (5, '晋城市', 6);
INSERT INTO `city` VALUES (2, '景德镇市', 15);
INSERT INTO `city` VALUES (2, '曲靖市', 25);
INSERT INTO `city` VALUES (6, '朔州市', 6);
INSERT INTO `city` VALUES (13, '朝阳市', 8);
INSERT INTO `city` VALUES (5, '本溪市', 8);
INSERT INTO `city` VALUES (13, '来宾市', 28);
INSERT INTO `city` VALUES (1, '杭州市', 12);
INSERT INTO `city` VALUES (7, '松原市', 9);
INSERT INTO `city` VALUES (7, '林芝地区', 29);
INSERT INTO `city` VALUES (6, '果洛藏族自治州', 26);
INSERT INTO `city` VALUES (4, '枣庄市', 16);
INSERT INTO `city` VALUES (2, '柳州市', 28);
INSERT INTO `city` VALUES (2, '株洲市', 19);
INSERT INTO `city` VALUES (3, '桂林市', 28);
INSERT INTO `city` VALUES (10, '桃园县', 7);
INSERT INTO `city` VALUES (12, '梅州市', 20);
INSERT INTO `city` VALUES (4, '梧州市', 28);
INSERT INTO `city` VALUES (12, '楚雄彝族自治州', 25);
INSERT INTO `city` VALUES (8, '榆林市', 27);
INSERT INTO `city` VALUES (6, '武威市', 21);
INSERT INTO `city` VALUES (1, '武汉市', 18);
INSERT INTO `city` VALUES (6, '毕节地区', 23);
INSERT INTO `city` VALUES (11, '永州市', 19);
INSERT INTO `city` VALUES (7, '汉中市', 27);
INSERT INTO `city` VALUES (4, '汕头市', 20);
INSERT INTO `city` VALUES (13, '汕尾市', 20);
INSERT INTO `city` VALUES (7, '江门市', 20);
INSERT INTO `city` VALUES (16, '池州市', 13);
INSERT INTO `city` VALUES (1, '沈阳市', 8);
INSERT INTO `city` VALUES (9, '沧州市', 5);
INSERT INTO `city` VALUES (12, '河池市', 28);
INSERT INTO `city` VALUES (14, '河源市', 20);
INSERT INTO `city` VALUES (5, '泉州市', 14);
INSERT INTO `city` VALUES (9, '泰安市', 16);
INSERT INTO `city` VALUES (12, '泰州市', 11);
INSERT INTO `city` VALUES (4, '泸州市', 22);
INSERT INTO `city` VALUES (3, '洛阳市', 17);
INSERT INTO `city` VALUES (1, '济南市', 16);
INSERT INTO `city` VALUES (8, '济宁市', 16);
INSERT INTO `city` VALUES (18, '济源市', 17);
INSERT INTO `city` VALUES (2, '海东地区', 26);
INSERT INTO `city` VALUES (3, '海北藏族自治州', 26);
INSERT INTO `city` VALUES (5, '海南藏族自治州', 26);
INSERT INTO `city` VALUES (1, '海口市', 24);
INSERT INTO `city` VALUES (8, '海西蒙古族藏族自治州', 26);
INSERT INTO `city` VALUES (3, '淄博市', 16);
INSERT INTO `city` VALUES (6, '淮北市', 13);
INSERT INTO `city` VALUES (4, '淮南市', 13);
INSERT INTO `city` VALUES (8, '淮安市', 11);
INSERT INTO `city` VALUES (2, '深圳市', 20);
INSERT INTO `city` VALUES (16, '清远市', 20);
INSERT INTO `city` VALUES (3, '温州市', 12);
INSERT INTO `city` VALUES (5, '渭南市', 27);
INSERT INTO `city` VALUES (5, '湖州市', 12);
INSERT INTO `city` VALUES (3, '湘潭市', 19);
INSERT INTO `city` VALUES (14, '湘西土家族苗族自治州', 19);
INSERT INTO `city` VALUES (8, '湛江市', 20);
INSERT INTO `city` VALUES (10, '滁州市', 13);
INSERT INTO `city` VALUES (16, '滨州市', 16);
INSERT INTO `city` VALUES (11, '漯河市', 17);
INSERT INTO `city` VALUES (6, '漳州市', 14);
INSERT INTO `city` VALUES (7, '潍坊市', 16);
INSERT INTO `city` VALUES (15, '潜江市', 18);
INSERT INTO `city` VALUES (19, '潮州市', 20);
INSERT INTO `city` VALUES (9, '澄迈县', 24);
INSERT INTO `city` VALUES (21, '澎湖县', 7);
INSERT INTO `city` VALUES (1, '澳门特别行政区', 33);
INSERT INTO `city` VALUES (9, '濮阳市', 17);
INSERT INTO `city` VALUES (6, '烟台市', 16);
INSERT INTO `city` VALUES (8, '焦作市', 17);
INSERT INTO `city` VALUES (8, '牡丹江市', 10);
INSERT INTO `city` VALUES (9, '玉林市', 28);
INSERT INTO `city` VALUES (7, '玉树藏族自治州', 26);
INSERT INTO `city` VALUES (3, '玉溪市', 25);
INSERT INTO `city` VALUES (3, '珠海市', 20);
INSERT INTO `city` VALUES (18, '琼中黎族苗族自治县', 24);
INSERT INTO `city` VALUES (4, '琼海市', 24);
INSERT INTO `city` VALUES (14, '甘南藏族自治州', 21);
INSERT INTO `city` VALUES (20, '甘孜藏族自治州', 22);
INSERT INTO `city` VALUES (8, '白城市', 9);
INSERT INTO `city` VALUES (6, '白山市', 9);
INSERT INTO `city` VALUES (13, '白沙黎族自治县', 24);
INSERT INTO `city` VALUES (3, '白银市', 21);
INSERT INTO `city` VALUES (10, '百色市', 28);
INSERT INTO `city` VALUES (9, '益阳市', 19);
INSERT INTO `city` VALUES (9, '盐城市', 11);
INSERT INTO `city` VALUES (11, '盘锦市', 8);
INSERT INTO `city` VALUES (12, '眉山市', 22);
INSERT INTO `city` VALUES (2, '石嘴山市', 30);
INSERT INTO `city` VALUES (1, '石家庄市', 5);
INSERT INTO `city` VALUES (3, '石河子市　', 31);
INSERT INTO `city` VALUES (16, '神农架林区', 18);
INSERT INTO `city` VALUES (1, '福州市', 14);
INSERT INTO `city` VALUES (3, '秦皇岛市', 5);
INSERT INTO `city` VALUES (16, '米泉市', 31);
INSERT INTO `city` VALUES (10, '红河哈尼族彝族自治州', 25);
INSERT INTO `city` VALUES (6, '绍兴市', 12);
INSERT INTO `city` VALUES (12, '绥 化 市', 10);
INSERT INTO `city` VALUES (6, '绵阳市', 22);
INSERT INTO `city` VALUES (15, '聊城市', 16);
INSERT INTO `city` VALUES (10, '肇庆市', 20);
INSERT INTO `city` VALUES (2, '自贡市', 22);
INSERT INTO `city` VALUES (9, '舟山市', 12);
INSERT INTO `city` VALUES (2, '芜湖市', 13);
INSERT INTO `city` VALUES (23, '花莲县', 7);
INSERT INTO `city` VALUES (5, '苏州市', 11);
INSERT INTO `city` VALUES (12, '苗栗县', 7);
INSERT INTO `city` VALUES (9, '茂名市', 20);
INSERT INTO `city` VALUES (4, '荆州市', 18);
INSERT INTO `city` VALUES (8, '荆门市', 18);
INSERT INTO `city` VALUES (3, '莆田市', 14);
INSERT INTO `city` VALUES (12, '莱芜市', 16);
INSERT INTO `city` VALUES (17, '菏泽市', 16);
INSERT INTO `city` VALUES (3, '萍乡市', 15);
INSERT INTO `city` VALUES (8, '营口市', 8);
INSERT INTO `city` VALUES (14, '葫芦岛市', 8);
INSERT INTO `city` VALUES (3, '蚌埠市', 13);
INSERT INTO `city` VALUES (11, '衡水市', 5);
INSERT INTO `city` VALUES (4, '衡阳市', 19);
INSERT INTO `city` VALUES (8, '衢州市', 12);
INSERT INTO `city` VALUES (6, '襄樊市', 18);
INSERT INTO `city` VALUES (11, '西双版纳傣族自治州', 25);
INSERT INTO `city` VALUES (1, '西宁市', 26);
INSERT INTO `city` VALUES (1, '西安市', 27);
INSERT INTO `city` VALUES (10, '许昌市', 17);
INSERT INTO `city` VALUES (8, '贵港市', 28);
INSERT INTO `city` VALUES (1, '贵阳市', 23);
INSERT INTO `city` VALUES (11, '贺州市', 28);
INSERT INTO `city` VALUES (18, '资阳市', 22);
INSERT INTO `city` VALUES (7, '赣州市', 15);
INSERT INTO `city` VALUES (4, '赤峰市', 32);
INSERT INTO `city` VALUES (4, '辽源市', 9);
INSERT INTO `city` VALUES (10, '辽阳市', 8);
INSERT INTO `city` VALUES (15, '达州市', 22);
INSERT INTO `city` VALUES (8, '运城市', 6);
INSERT INTO `city` VALUES (7, '连云港市', 11);
INSERT INTO `city` VALUES (16, '迪庆藏族自治州', 25);
INSERT INTO `city` VALUES (5, '通化市', 9);
INSERT INTO `city` VALUES (5, '通辽市', 32);
INSERT INTO `city` VALUES (8, '遂宁市', 22);
INSERT INTO `city` VALUES (3, '遵义市', 23);
INSERT INTO `city` VALUES (5, '邢台市', 5);
INSERT INTO `city` VALUES (2, '那曲地区', 29);
INSERT INTO `city` VALUES (4, '邯郸市', 5);
INSERT INTO `city` VALUES (5, '邵阳市', 19);
INSERT INTO `city` VALUES (1, '郑州市', 17);
INSERT INTO `city` VALUES (10, '郴州市', 19);
INSERT INTO `city` VALUES (6, '鄂尔多斯市', 32);
INSERT INTO `city` VALUES (7, '鄂州市', 18);
INSERT INTO `city` VALUES (9, '酒泉市', 21);
INSERT INTO `city` VALUES (1, '重庆市', 4);
INSERT INTO `city` VALUES (7, '金华市', 12);
INSERT INTO `city` VALUES (2, '金昌市', 21);
INSERT INTO `city` VALUES (7, '钦州市', 28);
INSERT INTO `city` VALUES (12, '铁岭市', 8);
INSERT INTO `city` VALUES (5, '铜仁地区', 23);
INSERT INTO `city` VALUES (2, '铜川市', 27);
INSERT INTO `city` VALUES (7, '铜陵市', 13);
INSERT INTO `city` VALUES (1, '银川市', 30);
INSERT INTO `city` VALUES (10, '锡林郭勒盟', 32);
INSERT INTO `city` VALUES (7, '锦州市', 8);
INSERT INTO `city` VALUES (11, '镇江市', 11);
INSERT INTO `city` VALUES (1, '长春市', 9);
INSERT INTO `city` VALUES (1, '长沙市', 19);
INSERT INTO `city` VALUES (4, '长治市', 6);
INSERT INTO `city` VALUES (15, '阜康市', 31);
INSERT INTO `city` VALUES (9, '阜新市', 8);
INSERT INTO `city` VALUES (11, '阜阳市', 13);
INSERT INTO `city` VALUES (6, '防城港市', 28);
INSERT INTO `city` VALUES (15, '阳江市', 20);
INSERT INTO `city` VALUES (3, '阳泉市', 6);
INSERT INTO `city` VALUES (8, '阿克苏市', 31);
INSERT INTO `city` VALUES (22, '阿勒泰市', 31);
INSERT INTO `city` VALUES (12, '阿图什市', 31);
INSERT INTO `city` VALUES (19, '阿坝藏族羌族自治州', 22);
INSERT INTO `city` VALUES (12, '阿拉善盟', 32);
INSERT INTO `city` VALUES (4, '阿拉尔市', 31);
INSERT INTO `city` VALUES (6, '阿里地区', 29);
INSERT INTO `city` VALUES (12, '陇南市', 21);
INSERT INTO `city` VALUES (16, '陵水黎族自治县', 24);
INSERT INTO `city` VALUES (12, '随州市', 18);
INSERT INTO `city` VALUES (16, '雅安市', 22);
INSERT INTO `city` VALUES (2, '青岛市', 16);
INSERT INTO `city` VALUES (3, '鞍山市', 8);
INSERT INTO `city` VALUES (5, '韶关市', 20);
INSERT INTO `city` VALUES (1, '香港特别行政区', 34);
INSERT INTO `city` VALUES (5, '马鞍山市', 13);
INSERT INTO `city` VALUES (17, '驻马店市', 17);
INSERT INTO `city` VALUES (19, '高雄县', 7);
INSERT INTO `city` VALUES (2, '高雄市', 7);
INSERT INTO `city` VALUES (5, '鸡 西 市', 10);
INSERT INTO `city` VALUES (3, '鹤 岗 市', 10);
INSERT INTO `city` VALUES (6, '鹤壁市', 17);
INSERT INTO `city` VALUES (6, '鹰潭市', 15);
INSERT INTO `city` VALUES (10, '黄冈市', 18);
INSERT INTO `city` VALUES (4, '黄南藏族自治州', 26);
INSERT INTO `city` VALUES (9, '黄山市', 13);
INSERT INTO `city` VALUES (2, '黄石市', 18);
INSERT INTO `city` VALUES (11, '黑 河 市', 10);
INSERT INTO `city` VALUES (8, '黔东南苗族侗族自治州', 23);
INSERT INTO `city` VALUES (9, '黔南布依族苗族自治州', 23);
INSERT INTO `city` VALUES (7, '黔西南布依族苗族自治州', 23);
INSERT INTO `city` VALUES (2, '齐齐哈尔市', 10);
INSERT INTO `city` VALUES (8, '龙岩市', 14);

-- ----------------------------
-- Table structure for good_gallery
-- ----------------------------
DROP TABLE IF EXISTS `good_gallery`;
CREATE TABLE `good_gallery`  (
  `good_id` int(0) NOT NULL,
  `image_url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  INDEX `good_id`(`good_id`) USING BTREE,
  CONSTRAINT `good_gallery_ibfk_1` FOREIGN KEY (`good_id`) REFERENCES `goods` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of good_gallery
-- ----------------------------
INSERT INTO `good_gallery` VALUES (1, 'http://localhost:8080/cake/images/cakes/StrawBerry/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (1, 'http://localhost:8080/cake/images/cakes/StrawBerry/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (1, 'http://localhost:8080/cake/images/cakes/StrawBerry/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (1, 'http://localhost:8080/cake/images/cakes/StrawBerry/banner/4.jpg');
INSERT INTO `good_gallery` VALUES (2, 'http://localhost:8080/cake/images/cakes/Mirror/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (2, 'http://localhost:8080/cake/images/cakes/Mirror/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (2, 'http://localhost:8080/cake/images/cakes/Mirror/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (2, 'http://localhost:8080/cake/images/cakes/Mirror/banner/4.jpg');
INSERT INTO `good_gallery` VALUES (3, 'http://localhost:8080/cake/images/cakes/Warming/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (3, 'http://localhost:8080/cake/images/cakes/Warming/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (3, 'http://localhost:8080/cake/images/cakes/Warming/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (3, 'http://localhost:8080/cake/images/cakes/Warming/banner/4.jpg');
INSERT INTO `good_gallery` VALUES (4, 'http://localhost:8080/cake/images/cakes/DeerThan/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (4, 'http://localhost:8080/cake/images/cakes/DeerThan/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (4, 'http://localhost:8080/cake/images/cakes/DeerThan/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (4, 'http://localhost:8080/cake/images/cakes/DeerThan/banner/4.jpg');
INSERT INTO `good_gallery` VALUES (5, 'http://localhost:8080/cake/images/cakes/SnowSwan/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (5, 'http://localhost:8080/cake/images/cakes/SnowSwan/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (5, 'http://localhost:8080/cake/images/cakes/SnowSwan/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (5, 'http://localhost:8080/cake/images/cakes/SnowSwan/banner/4.jpg');
INSERT INTO `good_gallery` VALUES (6, 'http://localhost:8080/cake/images/cakes/Mr.F/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (6, 'http://localhost:8080/cake/images/cakes/Mr.F/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (6, 'http://localhost:8080/cake/images/cakes/Mr.F/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (6, 'http://localhost:8080/cake/images/cakes/Mr.F/banner/4.jpg');
INSERT INTO `good_gallery` VALUES (7, 'http://localhost:8080/cake/images/cakes/Mr.Z/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (7, 'http://localhost:8080/cake/images/cakes/Mr.Z/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (7, 'http://localhost:8080/cake/images/cakes/Mr.Z/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (7, 'http://localhost:8080/cake/images/cakes/Mr.Z/banner/4.jpg');
INSERT INTO `good_gallery` VALUES (8, 'http://localhost:8080/cake/images/cakes/Mr.H/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (8, 'http://localhost:8080/cake/images/cakes/Mr.H/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (8, 'http://localhost:8080/cake/images/cakes/Mr.H/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (8, 'http://localhost:8080/cake/images/cakes/Mr.H/banner/4.jpg');
INSERT INTO `good_gallery` VALUES (9, 'http://localhost:8080/cake/images/cakes/StrawberryLily/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (9, 'http://localhost:8080/cake/images/cakes/StrawberryLily/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (9, 'http://localhost:8080/cake/images/cakes/StrawberryLily/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (9, 'http://localhost:8080/cake/images/cakes/StrawberryLily/banner/4.jpg');
INSERT INTO `good_gallery` VALUES (10, 'http://localhost:8080/cake/images/cakes/Durian/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (10, 'http://localhost:8080/cake/images/cakes/Durian/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (10, 'http://localhost:8080/cake/images/cakes/Durian/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (10, 'http://localhost:8080/cake/images/cakes/Durian/banner/4.jpg');
INSERT INTO `good_gallery` VALUES (11, 'http://localhost:8080/cake/images/cakes/Fresh/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (11, 'http://localhost:8080/cake/images/cakes/Fresh/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (11, 'http://localhost:8080/cake/images/cakes/Fresh/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (11, 'http://localhost:8080/cake/images/cakes/Fresh/banner/4.jpg');
INSERT INTO `good_gallery` VALUES (12, 'http://localhost:8080/cake/images/cakes/FushouLinmen/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (12, 'http://localhost:8080/cake/images/cakes/FushouLinmen/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (12, 'http://localhost:8080/cake/images/cakes/FushouLinmen/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (12, 'http://localhost:8080/cake/images/cakes/FushouLinmen/banner/4.jpg');
INSERT INTO `good_gallery` VALUES (13, 'http://localhost:8080/cake/images/cakes/Handsome/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (13, 'http://localhost:8080/cake/images/cakes/Handsome/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (13, 'http://localhost:8080/cake/images/cakes/Handsome/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (13, 'http://localhost:8080/cake/images/cakes/Handsome/banner/4.jpg');
INSERT INTO `good_gallery` VALUES (14, 'http://localhost:8080/cake/images/cakes/QifengDurian/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (14, 'http://localhost:8080/cake/images/cakes/QifengDurian/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (14, 'http://localhost:8080/cake/images/cakes/QifengDurian/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (14, 'http://localhost:8080/cake/images/cakes/QifengDurian/banner/4.jpg');
INSERT INTO `good_gallery` VALUES (15, 'http://localhost:8080/cake/images/cakes/ElegantStyle/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (15, 'http://localhost:8080/cake/images/cakes/ElegantStyle/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (15, 'http://localhost:8080/cake/images/cakes/ElegantStyle/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (16, 'http://localhost:8080/cake/images/cakes/Samite/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (16, 'http://localhost:8080/cake/images/cakes/Samite/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (16, 'http://localhost:8080/cake/images/cakes/Samite/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (17, 'http://localhost:8080/cake/images/cakes/SeaSalt/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (17, 'http://localhost:8080/cake/images/cakes/SeaSalt/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (17, 'http://localhost:8080/cake/images/cakes/SeaSalt/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (18, 'http://localhost:8080/cake/images/cakes/ForestFruit/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (18, 'http://localhost:8080/cake/images/cakes/ForestFruit/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (19, 'http://localhost:8080/cake/images/cakes/PeppaPig/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (19, 'http://localhost:8080/cake/images/cakes/PeppaPig/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (19, 'http://localhost:8080/cake/images/cakes/PeppaPig/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (20, 'http://localhost:8080/cake/images/cakes/LittleGeorge/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (20, 'http://localhost:8080/cake/images/cakes/LittleGeorge/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (20, 'http://localhost:8080/cake/images/cakes/LittleGeorge/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (20, 'http://localhost:8080/cake/images/cakes/LittleGeorge/banner/4.jpg');
INSERT INTO `good_gallery` VALUES (21, 'http://localhost:8080/cake/images/cakes/Emotion/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (21, 'http://localhost:8080/cake/images/cakes/Emotion/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (21, 'http://localhost:8080/cake/images/cakes/Emotion/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (21, 'http://localhost:8080/cake/images/cakes/Emotion/banner/4.jpg');
INSERT INTO `good_gallery` VALUES (22, 'http://localhost:8080/cake/images/cakes/MountainLove/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (22, 'http://localhost:8080/cake/images/cakes/MountainLove/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (22, 'http://localhost:8080/cake/images/cakes/MountainLove/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (22, 'http://localhost:8080/cake/images/cakes/MountainLove/banner/4.jpg');
INSERT INTO `good_gallery` VALUES (23, 'http://localhost:8080/cake/images/cakes/FruitBear/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (23, 'http://localhost:8080/cake/images/cakes/FruitBear/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (23, 'http://localhost:8080/cake/images/cakes/FruitBear/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (23, 'http://localhost:8080/cake/images/cakes/FruitBear/banner/4.jpg');
INSERT INTO `good_gallery` VALUES (24, 'http://localhost:8080/cake/images/cakes/StrawberryMaze/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (24, 'http://localhost:8080/cake/images/cakes/StrawberryMaze/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (24, 'http://localhost:8080/cake/images/cakes/StrawberryMaze/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (24, 'http://localhost:8080/cake/images/cakes/StrawberryMaze/banner/4.jpg');
INSERT INTO `good_gallery` VALUES (25, 'http://localhost:8080/cake/images/cakes/LipsSoul/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (25, 'http://localhost:8080/cake/images/cakes/LipsSoul/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (25, 'http://localhost:8080/cake/images/cakes/LipsSoul/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (25, 'http://localhost:8080/cake/images/cakes/LipsSoul/banner/4.jpg');
INSERT INTO `good_gallery` VALUES (26, 'http://localhost:8080/cake/images/cakes/BlackForest/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (26, 'http://localhost:8080/cake/images/cakes/BlackForest/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (26, 'http://localhost:8080/cake/images/cakes/BlackForest/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (26, 'http://localhost:8080/cake/images/cakes/BlackForest/banner/4.jpg');
INSERT INTO `good_gallery` VALUES (27, 'http://localhost:8080/cake/images/cakes/ArchieWoof/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (27, 'http://localhost:8080/cake/images/cakes/ArchieWoof/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (27, 'http://localhost:8080/cake/images/cakes/ArchieWoof/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (28, 'http://localhost:8080/cake/images/cakes/WoofTeam/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (28, 'http://localhost:8080/cake/images/cakes/WoofTeam/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (28, 'http://localhost:8080/cake/images/cakes/WoofTeam/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (29, 'http://localhost:8080/cake/images/cakes/SpongeBob/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (29, 'http://localhost:8080/cake/images/cakes/SpongeBob/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (29, 'http://localhost:8080/cake/images/cakes/SpongeBob/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (29, 'http://localhost:8080/cake/images/cakes/SpongeBob/banner/4.jpg');
INSERT INTO `good_gallery` VALUES (30, 'http://localhost:8080/cake/images/cakes/Adventurer/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (30, 'http://localhost:8080/cake/images/cakes/Adventurer/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (30, 'http://localhost:8080/cake/images/cakes/Adventurer/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (30, 'http://localhost:8080/cake/images/cakes/Adventurer/banner/4.jpg');
INSERT INTO `good_gallery` VALUES (31, 'http://localhost:8080/cake/images/cakes/Three-year/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (31, 'http://localhost:8080/cake/images/cakes/Three-year/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (31, 'http://localhost:8080/cake/images/cakes/Three-year/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (31, 'http://localhost:8080/cake/images/cakes/Three-year/banner/4.jpg');
INSERT INTO `good_gallery` VALUES (32, 'http://localhost:8080/cake/images/cakes/Fragrance/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (32, 'http://localhost:8080/cake/images/cakes/Fragrance/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (32, 'http://localhost:8080/cake/images/cakes/Fragrance/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (32, 'http://localhost:8080/cake/images/cakes/Fragrance/banner/4.jpg');
INSERT INTO `good_gallery` VALUES (33, 'http://localhost:8080/cake/images/cakes/Mango/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (33, 'http://localhost:8080/cake/images/cakes/Mango/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (33, 'http://localhost:8080/cake/images/cakes/Mango/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (33, 'http://localhost:8080/cake/images/cakes/Mango/banner/4.jpg');
INSERT INTO `good_gallery` VALUES (34, 'http://localhost:8080/cake/images/cakes/Tiramisu/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (34, 'http://localhost:8080/cake/images/cakes/Tiramisu/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (34, 'http://localhost:8080/cake/images/cakes/Tiramisu/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (34, 'http://localhost:8080/cake/images/cakes/Tiramisu/banner/4.jpg');
INSERT INTO `good_gallery` VALUES (35, 'http://localhost:8080/cake/images/cakes/Wholeheartedly/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (35, 'http://localhost:8080/cake/images/cakes/Wholeheartedly/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (35, 'http://localhost:8080/cake/images/cakes/Wholeheartedly/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (35, 'http://localhost:8080/cake/images/cakes/Wholeheartedly/banner/4.jpg');
INSERT INTO `good_gallery` VALUES (36, 'http://localhost:8080/cake/images/cakes/Resonance/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (36, 'http://localhost:8080/cake/images/cakes/Resonance/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (36, 'http://localhost:8080/cake/images/cakes/Resonance/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (36, 'http://localhost:8080/cake/images/cakes/Resonance/banner/4.jpg');
INSERT INTO `good_gallery` VALUES (37, 'http://localhost:8080/cake/images/cakes/FreshFruit/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (37, 'http://localhost:8080/cake/images/cakes/FreshFruit/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (37, 'http://localhost:8080/cake/images/cakes/FreshFruit/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (37, 'http://localhost:8080/cake/images/cakes/FreshFruit/banner/4.jpg');
INSERT INTO `good_gallery` VALUES (38, 'http://localhost:8080/cake/images/cakes/AttainEminence/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (38, 'http://localhost:8080/cake/images/cakes/AttainEminence/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (38, 'http://localhost:8080/cake/images/cakes/AttainEminence/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (38, 'http://localhost:8080/cake/images/cakes/AttainEminence/banner/4.jpg');
INSERT INTO `good_gallery` VALUES (39, 'http://localhost:8080/cake/images/cakes/BrilliantProspects/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (39, 'http://localhost:8080/cake/images/cakes/BrilliantProspects/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (39, 'http://localhost:8080/cake/images/cakes/BrilliantProspects/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (39, 'http://localhost:8080/cake/images/cakes/BrilliantProspects/banner/4.jpg');
INSERT INTO `good_gallery` VALUES (40, 'http://localhost:8080/cake/images/cakes/RomanticFruit/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (40, 'http://localhost:8080/cake/images/cakes/RomanticFruit/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (40, 'http://localhost:8080/cake/images/cakes/RomanticFruit/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (40, 'http://localhost:8080/cake/images/cakes/RomanticFruit/banner/4.jpg');
INSERT INTO `good_gallery` VALUES (41, 'http://localhost:8080/cake/images/cakes/Longevity/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (41, 'http://localhost:8080/cake/images/cakes/Longevity/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (41, 'http://localhost:8080/cake/images/cakes/Longevity/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (41, 'http://localhost:8080/cake/images/cakes/Longevity/banner/4.jpg');
INSERT INTO `good_gallery` VALUES (42, 'http://localhost:8080/cake/web/images/cakes/DoubleSpell/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (42, 'http://localhost:8080/cake/web/images/cakes/DoubleSpell/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (42, 'http://localhost:8080/cake/web/images/cakes/DoubleSpell/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (42, 'http://localhost:8080/cake/web/images/cakes/DoubleSpell/banner/4.jpg');
INSERT INTO `good_gallery` VALUES (43, 'http://localhost:8080/cake/images/cakes/DurianIncense/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (43, 'http://localhost:8080/cake/images/cakes/DurianIncense/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (43, 'http://localhost:8080/cake/images/cakes/DurianIncense/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (43, 'http://localhost:8080/cake/images/cakes/DurianIncense/banner/4.jpg');
INSERT INTO `good_gallery` VALUES (44, 'http://localhost:8080/cake/images/cakes/Quartet/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (44, 'http://localhost:8080/cake/images/cakes/Quartet/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (44, 'http://localhost:8080/cake/images/cakes/Quartet/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (44, 'http://localhost:8080/cake/images/cakes/Quartet/banner/4.jpg');
INSERT INTO `good_gallery` VALUES (45, 'http://localhost:8080/cake/images/cakes/FruitCarnival/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (45, 'http://localhost:8080/cake/images/cakes/FruitCarnival/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (45, 'http://localhost:8080/cake/images/cakes/FruitCarnival/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (45, 'http://localhost:8080/cake/images/cakes/FruitCarnival/banner/4.jpg');
INSERT INTO `good_gallery` VALUES (46, 'http://localhost:8080/cake/images/cakes/Forest_Fruit/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (46, 'http://localhost:8080/cake/images/cakes/Forest_Fruit/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (46, 'http://localhost:8080/cake/images/cakes/Forest_Fruit/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (46, 'http://localhost:8080/cake/images/cakes/Forest_Fruit/banner/4.jpg');
INSERT INTO `good_gallery` VALUES (47, 'http://localhost:8080/cake/images/AfternoonTea/RubyBlack/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (47, 'http://localhost:8080/cake/images/AfternoonTea/RubyBlack/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (47, 'http://localhost:8080/cake/images/AfternoonTea/RubyBlack/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (47, 'http://localhost:8080/cake/images/AfternoonTea/RubyBlack/banner/4.jpg');
INSERT INTO `good_gallery` VALUES (48, 'http://localhost:8080/cake/images/AfternoonTea/MangoLayer/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (48, 'http://localhost:8080/cake/images/AfternoonTea/MangoLayer/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (48, 'http://localhost:8080/cake/images/AfternoonTea/MangoLayer/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (48, 'http://localhost:8080/cake/images/AfternoonTea/MangoLayer/banner/4.jpg');
INSERT INTO `good_gallery` VALUES (49, 'http://localhost:8080/cake/images/AfternoonTea/IceAmber/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (49, 'http://localhost:8080/cake/images/AfternoonTea/IceAmber/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (49, 'http://localhost:8080/cake/images/AfternoonTea/IceAmber/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (49, 'http://localhost:8080/cake/images/AfternoonTea/IceAmber/banner/4.jpg');
INSERT INTO `good_gallery` VALUES (50, 'http://localhost:8080/cake/images/AfternoonTea/ClearWindJade/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (50, 'http://localhost:8080/cake/images/AfternoonTea/ClearWindJade/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (50, 'http://localhost:8080/cake/images/AfternoonTea/ClearWindJade/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (50, 'http://localhost:8080/cake/images/AfternoonTea/ClearWindJade/banner/4.jpg');
INSERT INTO `good_gallery` VALUES (51, 'http://localhost:8080/cake/images/AfternoonTea/ThaiAfternoonTea/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (51, 'http://localhost:8080/cake/images/AfternoonTea/ThaiAfternoonTea/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (51, 'http://localhost:8080/cake/images/AfternoonTea/ThaiAfternoonTea/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (51, 'http://localhost:8080/cake/images/AfternoonTea/ThaiAfternoonTea/banner/4.jpg');
INSERT INTO `good_gallery` VALUES (52, 'http://localhost:8080/cake/images/AfternoonTea/Fresh Berry/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (52, 'http://localhost:8080/cake/images/AfternoonTea/Fresh Berry/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (52, 'http://localhost:8080/cake/images/AfternoonTea/Fresh Berry/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (52, 'http://localhost:8080/cake/images/AfternoonTea/Fresh Berry/banner/4.jpg');
INSERT INTO `good_gallery` VALUES (53, 'http://localhost:8080/cake/images/AfternoonTea/Hand - Fried/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (53, 'http://localhost:8080/cake/images/AfternoonTea/Hand - Fried/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (53, 'http://localhost:8080/cake/images/AfternoonTea/Hand - Fried/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (53, 'http://localhost:8080/cake/images/AfternoonTea/Hand - Fried/banner/4.jpg');
INSERT INTO `good_gallery` VALUES (54, 'http://localhost:8080/cake/images/AfternoonTea/Attachment/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (54, 'http://localhost:8080/cake/images/AfternoonTea/Attachment/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (54, 'http://localhost:8080/cake/images/AfternoonTea/Attachment/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (54, 'http://localhost:8080/cake/images/AfternoonTea/Attachment/banner/4.jpg');
INSERT INTO `good_gallery` VALUES (55, 'http://localhost:8080/cake/images/AfternoonTea/FlameBlackberry/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (55, 'http://localhost:8080/cake/images/AfternoonTea/FlameBlackberry/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (55, 'http://localhost:8080/cake/images/AfternoonTea/FlameBlackberry/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (55, 'http://localhost:8080/cake/images/AfternoonTea/FlameBlackberry/banner/4.jpg');
INSERT INTO `good_gallery` VALUES (56, 'http://localhost:8080/cake/images/AfternoonTea/Sweetheart/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (56, 'http://localhost:8080/cake/images/AfternoonTea/Sweetheart/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (56, 'http://localhost:8080/cake/images/AfternoonTea/Sweetheart/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (56, 'http://localhost:8080/cake/images/AfternoonTea/Sweetheart/banner/4.jpg');
INSERT INTO `good_gallery` VALUES (57, 'http://localhost:8080/cake/images/AfternoonTea/HappinessDessert/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (57, 'http://localhost:8080/cake/images/AfternoonTea/HappinessDessert/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (58, 'http://localhost:8080/cake/images/AfternoonTea/Table - Green/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (58, 'http://localhost:8080/cake/images/AfternoonTea/Table - Green/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (58, 'http://localhost:8080/cake/images/AfternoonTea/Table - Green/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (58, 'http://localhost:8080/cake/images/AfternoonTea/Table - Green/banner/4.jpg');
INSERT INTO `good_gallery` VALUES (59, 'http://localhost:8080/cake/images/AfternoonTea/Circular/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (59, 'http://localhost:8080/cake/images/AfternoonTea/Circular/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (59, 'http://localhost:8080/cake/images/AfternoonTea/Circular/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (59, 'http://localhost:8080/cake/images/AfternoonTea/Circular/banner/4.jpg');
INSERT INTO `good_gallery` VALUES (60, 'http://localhost:8080/cake/images/AfternoonTea/Blueberry/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (60, 'http://localhost:8080/cake/images/AfternoonTea/Blueberry/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (60, 'http://localhost:8080/cake/images/AfternoonTea/Blueberry/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (60, 'http://localhost:8080/cake/images/AfternoonTea/Blueberry/banner/4.jpg');
INSERT INTO `good_gallery` VALUES (61, 'http://localhost:8080/cake/images/AfternoonTea/RoundFreshly/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (61, 'http://localhost:8080/cake/images/AfternoonTea/RoundFreshly/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (61, 'http://localhost:8080/cake/images/AfternoonTea/RoundFreshly/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (61, 'http://localhost:8080/cake/images/AfternoonTea/RoundFreshly/banner/4.jpg');
INSERT INTO `good_gallery` VALUES (62, 'http://localhost:8080/cake/images/AfternoonTea/DurianQianceng/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (62, 'http://localhost:8080/cake/images/AfternoonTea/DurianQianceng/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (62, 'http://localhost:8080/cake/images/AfternoonTea/DurianQianceng/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (62, 'http://localhost:8080/cake/images/AfternoonTea/DurianQianceng/banner/4.jpg');
INSERT INTO `good_gallery` VALUES (63, 'http://localhost:8080/cake/images/AfternoonTea/ConvexGlass/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (63, 'http://localhost:8080/cake/images/AfternoonTea/ConvexGlass/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (63, 'http://localhost:8080/cake/images/AfternoonTea/ConvexGlass/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (63, 'http://localhost:8080/cake/images/AfternoonTea/ConvexGlass/banner/4.jpg');
INSERT INTO `good_gallery` VALUES (64, 'http://localhost:8080/cake/images/AfternoonTea/EnglishAfternoonTea/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (64, 'http://localhost:8080/cake/images/AfternoonTea/EnglishAfternoonTea/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (64, 'http://localhost:8080/cake/images/AfternoonTea/EnglishAfternoonTea/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (65, 'http://localhost:8080/cake/images/AfternoonTea/Pomegranate/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (65, 'http://localhost:8080/cake/images/AfternoonTea/Pomegranate/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (65, 'http://localhost:8080/cake/images/AfternoonTea/Pomegranate/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (65, 'http://localhost:8080/cake/images/AfternoonTea/Pomegranate/banner/4.jpg');
INSERT INTO `good_gallery` VALUES (66, 'http://localhost:8080/cake/images/AfternoonTea/MangoNapoleon/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (66, 'http://localhost:8080/cake/images/AfternoonTea/MangoNapoleon/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (66, 'http://localhost:8080/cake/images/AfternoonTea/MangoNapoleon/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (66, 'http://localhost:8080/cake/images/AfternoonTea/MangoNapoleon/banner/4.jpg');
INSERT INTO `good_gallery` VALUES (67, 'http://localhost:8080/cake/images/Souvenir/HappinessTea/banner/1.jpg');
INSERT INTO `good_gallery` VALUES (67, 'http://localhost:8080/cake/images/Souvenir/HappinessTea/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (67, 'http://localhost:8080/cake/images/Souvenir/HappinessTea/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (67, 'http://localhost:8080/cake/images/Souvenir/HappinessTea/banner/4.jpg');
INSERT INTO `good_gallery` VALUES (68, 'http://localhost:8080/cake/images/Souvenir/DurianCake/banner/1.png');
INSERT INTO `good_gallery` VALUES (68, 'http://localhost:8080/cake/images/Souvenir/DurianCake/banner/2.png');
INSERT INTO `good_gallery` VALUES (68, 'http://localhost:8080/cake/images/Souvenir/DurianCake/banner/3.png');
INSERT INTO `good_gallery` VALUES (68, 'http://localhost:8080/cake/images/Souvenir/DurianCake/banner/4.png');
INSERT INTO `good_gallery` VALUES (69, 'http://localhost:8080/cake/images/Souvenir/HappinessGift/banner/1.png');
INSERT INTO `good_gallery` VALUES (69, 'http://localhost:8080/cake/images/Souvenir/HappinessGift/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (69, 'http://localhost:8080/cake/images/Souvenir/HappinessGift/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (70, 'http://localhost:8080/cake/images/Souvenir/AssortedTangGua/banner/1.png');
INSERT INTO `good_gallery` VALUES (70, 'http://localhost:8080/cake/images/Souvenir/AssortedTangGua/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (70, 'http://localhost:8080/cake/images/Souvenir/AssortedTangGua/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (71, 'http://localhost:8080/cake/images/Souvenir/SeafoodPie/banner/1.png');
INSERT INTO `good_gallery` VALUES (71, 'http://localhost:8080/cake/images/Souvenir/SeafoodPie/banner/2.png');
INSERT INTO `good_gallery` VALUES (71, 'http://localhost:8080/cake/images/Souvenir/SeafoodPie/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (71, 'http://localhost:8080/cake/images/Souvenir/SeafoodPie/banner/4.jpg');
INSERT INTO `good_gallery` VALUES (72, 'http://localhost:8080/cake/images/Souvenir/LonganCake/banner/1.png');
INSERT INTO `good_gallery` VALUES (72, 'http://localhost:8080/cake/images/Souvenir/LonganCake/banner/2.jpg');
INSERT INTO `good_gallery` VALUES (72, 'http://localhost:8080/cake/images/Souvenir/LonganCake/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (72, 'http://localhost:8080/cake/images/Souvenir/LonganCake/banner/4.jpg');
INSERT INTO `good_gallery` VALUES (73, 'http://localhost:8080/cake/images/Souvenir/GreenBean/banner/1.png');
INSERT INTO `good_gallery` VALUES (73, 'http://localhost:8080/cake/images/Souvenir/GreenBean/banner/2.png');
INSERT INTO `good_gallery` VALUES (73, 'http://localhost:8080/cake/images/Souvenir/GreenBean/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (73, 'http://localhost:8080/cake/images/Souvenir/GreenBean/banner/4.jpg');
INSERT INTO `good_gallery` VALUES (74, 'http://localhost:8080/cake/images/Souvenir/CrispyTangGua/banner/1.png');
INSERT INTO `good_gallery` VALUES (74, 'http://localhost:8080/cake/images/Souvenir/CrispyTangGua/banner/2.png');
INSERT INTO `good_gallery` VALUES (74, 'http://localhost:8080/cake/images/Souvenir/CrispyTangGua/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (74, 'http://localhost:8080/cake/images/Souvenir/CrispyTangGua/banner/4.jpg');
INSERT INTO `good_gallery` VALUES (75, 'http://localhost:8080/cake/images/Souvenir/JellyMelon/banner/1.png');
INSERT INTO `good_gallery` VALUES (75, 'http://localhost:8080/cake/images/Souvenir/JellyMelon/banner/2.png');
INSERT INTO `good_gallery` VALUES (75, 'http://localhost:8080/cake/images/Souvenir/JellyMelon/banner/3.jpg');
INSERT INTO `good_gallery` VALUES (75, 'http://localhost:8080/cake/images/Souvenir/JellyMelon/banner/4.jpg');

-- ----------------------------
-- Table structure for good_specifications
-- ----------------------------
DROP TABLE IF EXISTS `good_specifications`;
CREATE TABLE `good_specifications`  (
  `good_s_id` int(0) NOT NULL,
  `specification` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `s_price` int(0) NULL DEFAULT NULL,
  INDEX `good_s_id`(`good_s_id`) USING BTREE,
  CONSTRAINT `good_specifications_ibfk_1` FOREIGN KEY (`good_s_id`) REFERENCES `goods` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of good_specifications
-- ----------------------------
INSERT INTO `good_specifications` VALUES (1, '2磅', 188);
INSERT INTO `good_specifications` VALUES (2, '2磅', 198);
INSERT INTO `good_specifications` VALUES (3, '2磅', 198);
INSERT INTO `good_specifications` VALUES (3, '3磅', 258);
INSERT INTO `good_specifications` VALUES (3, '4磅', 308);
INSERT INTO `good_specifications` VALUES (4, '2磅', 208);
INSERT INTO `good_specifications` VALUES (5, '1.5磅', 198);
INSERT INTO `good_specifications` VALUES (6, '2磅', 288);
INSERT INTO `good_specifications` VALUES (7, '2磅', 288);
INSERT INTO `good_specifications` VALUES (8, '2磅', 288);
INSERT INTO `good_specifications` VALUES (9, '2磅', 208);
INSERT INTO `good_specifications` VALUES (10, '2磅', 218);
INSERT INTO `good_specifications` VALUES (11, '2磅', 198);
INSERT INTO `good_specifications` VALUES (12, '2磅', 198);
INSERT INTO `good_specifications` VALUES (12, '3磅', 258);
INSERT INTO `good_specifications` VALUES (12, '4磅', 308);
INSERT INTO `good_specifications` VALUES (13, '2磅', 228);
INSERT INTO `good_specifications` VALUES (14, '2磅', 198);
INSERT INTO `good_specifications` VALUES (14, '3磅', 268);
INSERT INTO `good_specifications` VALUES (14, '4磅', 328);
INSERT INTO `good_specifications` VALUES (15, '12磅', 888);
INSERT INTO `good_specifications` VALUES (16, '12磅', 888);
INSERT INTO `good_specifications` VALUES (17, '1磅', 168);
INSERT INTO `good_specifications` VALUES (17, '2磅', 198);
INSERT INTO `good_specifications` VALUES (17, '3磅', 228);
INSERT INTO `good_specifications` VALUES (17, '4磅', 258);
INSERT INTO `good_specifications` VALUES (18, '6磅', 468);
INSERT INTO `good_specifications` VALUES (19, '2磅', 298);
INSERT INTO `good_specifications` VALUES (19, '6磅', 538);
INSERT INTO `good_specifications` VALUES (20, '2磅', 298);
INSERT INTO `good_specifications` VALUES (21, '2磅', 238);
INSERT INTO `good_specifications` VALUES (22, '5寸', 158);
INSERT INTO `good_specifications` VALUES (23, '3磅', 598);
INSERT INTO `good_specifications` VALUES (24, '2磅', 368);
INSERT INTO `good_specifications` VALUES (25, '2磅', 598);
INSERT INTO `good_specifications` VALUES (26, '2磅', 198);
INSERT INTO `good_specifications` VALUES (26, '3磅', 258);
INSERT INTO `good_specifications` VALUES (26, '4磅', 308);
INSERT INTO `good_specifications` VALUES (27, '1磅', 198);
INSERT INTO `good_specifications` VALUES (27, '2磅', 258);
INSERT INTO `good_specifications` VALUES (27, '6磅', 308);
INSERT INTO `good_specifications` VALUES (28, '1磅', 228);
INSERT INTO `good_specifications` VALUES (28, '2磅', 298);
INSERT INTO `good_specifications` VALUES (28, '6磅', 538);
INSERT INTO `good_specifications` VALUES (29, '2磅', 298);
INSERT INTO `good_specifications` VALUES (30, '2磅', 298);
INSERT INTO `good_specifications` VALUES (31, '15磅', 999);
INSERT INTO `good_specifications` VALUES (32, '1磅', 168);
INSERT INTO `good_specifications` VALUES (32, '2磅', 208);
INSERT INTO `good_specifications` VALUES (32, '3磅', 258);
INSERT INTO `good_specifications` VALUES (32, '4磅', 308);
INSERT INTO `good_specifications` VALUES (33, '2磅', 198);
INSERT INTO `good_specifications` VALUES (33, '3磅', 258);
INSERT INTO `good_specifications` VALUES (33, '4磅', 318);
INSERT INTO `good_specifications` VALUES (34, '2磅', 198);
INSERT INTO `good_specifications` VALUES (34, '3磅', 258);
INSERT INTO `good_specifications` VALUES (34, '4磅', 308);
INSERT INTO `good_specifications` VALUES (35, '1磅', 158);
INSERT INTO `good_specifications` VALUES (35, '2磅', 198);
INSERT INTO `good_specifications` VALUES (35, '3磅', 258);
INSERT INTO `good_specifications` VALUES (35, '4磅', 298);
INSERT INTO `good_specifications` VALUES (35, '6磅', 468);
INSERT INTO `good_specifications` VALUES (36, '2磅', 198);
INSERT INTO `good_specifications` VALUES (36, '3磅', 268);
INSERT INTO `good_specifications` VALUES (37, '2磅', 208);
INSERT INTO `good_specifications` VALUES (37, '3磅', 258);
INSERT INTO `good_specifications` VALUES (37, '4磅', 308);
INSERT INTO `good_specifications` VALUES (38, '15磅', 999);
INSERT INTO `good_specifications` VALUES (39, '30磅', 1599);
INSERT INTO `good_specifications` VALUES (40, '1磅', 168);
INSERT INTO `good_specifications` VALUES (40, '2磅', 208);
INSERT INTO `good_specifications` VALUES (40, '3磅', 258);
INSERT INTO `good_specifications` VALUES (40, '4磅', 308);
INSERT INTO `good_specifications` VALUES (40, '6磅', 468);
INSERT INTO `good_specifications` VALUES (41, '2磅', 218);
INSERT INTO `good_specifications` VALUES (41, '3磅', 278);
INSERT INTO `good_specifications` VALUES (41, '4磅', 328);
INSERT INTO `good_specifications` VALUES (42, '2磅', 198);
INSERT INTO `good_specifications` VALUES (42, '3磅', 258);
INSERT INTO `good_specifications` VALUES (42, '4磅', 318);
INSERT INTO `good_specifications` VALUES (42, '6磅', 468);
INSERT INTO `good_specifications` VALUES (43, '2磅', 198);
INSERT INTO `good_specifications` VALUES (43, '3磅', 258);
INSERT INTO `good_specifications` VALUES (43, '4磅', 308);
INSERT INTO `good_specifications` VALUES (44, '2磅', 208);
INSERT INTO `good_specifications` VALUES (44, '3磅', 268);
INSERT INTO `good_specifications` VALUES (44, '4磅', 318);
INSERT INTO `good_specifications` VALUES (44, '6磅', 468);
INSERT INTO `good_specifications` VALUES (45, '2磅', 218);
INSERT INTO `good_specifications` VALUES (45, '3磅', 278);
INSERT INTO `good_specifications` VALUES (46, '2磅', 198);
INSERT INTO `good_specifications` VALUES (46, '3磅', 258);
INSERT INTO `good_specifications` VALUES (46, '4磅', 298);
INSERT INTO `good_specifications` VALUES (46, '8磅', 468);
INSERT INTO `good_specifications` VALUES (47, '1盒', 129);
INSERT INTO `good_specifications` VALUES (48, '1盒', 129);
INSERT INTO `good_specifications` VALUES (49, '1盒', 129);
INSERT INTO `good_specifications` VALUES (50, '1盒', 129);
INSERT INTO `good_specifications` VALUES (51, '1套', 199);
INSERT INTO `good_specifications` VALUES (52, '1盒', 129);
INSERT INTO `good_specifications` VALUES (53, '1盒', 149);
INSERT INTO `good_specifications` VALUES (54, '1盒', 149);
INSERT INTO `good_specifications` VALUES (55, '1盒', 139);
INSERT INTO `good_specifications` VALUES (56, '1盒', 139);
INSERT INTO `good_specifications` VALUES (57, '1套', 1299);
INSERT INTO `good_specifications` VALUES (58, '1套', 1299);
INSERT INTO `good_specifications` VALUES (59, '1盒', 159);
INSERT INTO `good_specifications` VALUES (60, '1盒', 139);
INSERT INTO `good_specifications` VALUES (61, '1盒', 149);
INSERT INTO `good_specifications` VALUES (62, '1盒', 149);
INSERT INTO `good_specifications` VALUES (63, '1盒', 159);
INSERT INTO `good_specifications` VALUES (64, '1盒', 198);
INSERT INTO `good_specifications` VALUES (65, '1盒', 129);
INSERT INTO `good_specifications` VALUES (66, '1盒', 109);
INSERT INTO `good_specifications` VALUES (67, '200克', 39);
INSERT INTO `good_specifications` VALUES (67, '675克', 99);
INSERT INTO `good_specifications` VALUES (68, '1盒', 39);
INSERT INTO `good_specifications` VALUES (69, '1盒', 188);
INSERT INTO `good_specifications` VALUES (70, '1包', 38);
INSERT INTO `good_specifications` VALUES (70, '2包', 60);
INSERT INTO `good_specifications` VALUES (71, '12枚', 69);
INSERT INTO `good_specifications` VALUES (72, '6枚', 49);
INSERT INTO `good_specifications` VALUES (72, '9枚', 69);
INSERT INTO `good_specifications` VALUES (72, '12枚', 79);
INSERT INTO `good_specifications` VALUES (73, '6枚', 39);
INSERT INTO `good_specifications` VALUES (73, '12枚', 59);
INSERT INTO `good_specifications` VALUES (73, '24枚', 69);
INSERT INTO `good_specifications` VALUES (74, '2包', 68);
INSERT INTO `good_specifications` VALUES (74, '3包', 88);
INSERT INTO `good_specifications` VALUES (74, '4包', 108);
INSERT INTO `good_specifications` VALUES (75, '2包', 68);
INSERT INTO `good_specifications` VALUES (75, '3包', 88);
INSERT INTO `good_specifications` VALUES (75, '4包', 108);

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `good_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `small_type` int(0) NULL DEFAULT NULL,
  `type` int(0) NULL DEFAULT NULL,
  `price` int(0) NULL DEFAULT NULL,
  `introduc` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `index_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `introduc_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `small_type`(`small_type`) USING BTREE,
  INDEX `type`(`type`) USING BTREE,
  CONSTRAINT `goods_ibfk_1` FOREIGN KEY (`small_type`) REFERENCES `c_small_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `goods_ibfk_2` FOREIGN KEY (`type`) REFERENCES `c_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 76 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (1, '莓莓红宝石', 1, 1, 188, '灼灼繁华红宝石，莓莓白雪映成趣莓', 'http://localhost:8080/cake/images/cakes/StrawBerry/index.jpg', 'http://localhost:8080/cake/images/cakes/StrawBerry/details/1.jpg');
INSERT INTO `goods` VALUES (2, '水镜红宝石', 1, 1, 198, '秋日尚飨红宝石，冰封水镜环翠云', 'http://localhost:8080/cake/images/cakes/Mirror/index.jpg', 'http://localhost:8080/cake/images/cakes/Mirror/details/1.jpg');
INSERT INTO `goods` VALUES (3, '【芒果季】暖阳芒芒', 1, 1, 198, '新鲜芒果汁甜如蜜，满满一口阳光味道！', 'http://localhost:8080/cake/images/cakes/Warming/index.jpg', 'http://localhost:8080/cake/images/cakes/Warming/details/1.jpg');
INSERT INTO `goods` VALUES (4, '快乐鹿比', 1, 1, 208, '快乐鹿比 儿童蛋糕', 'http://localhost:8080/cake/images/cakes/DeerThan/index.jpg', 'http://localhost:8080/cake/images/cakes/DeerThan/details/1.jpg');
INSERT INTO `goods` VALUES (5, '雪天鹅', 1, 1, 198, '绵密奶油与榴莲果肉层层交叠，给味蕾来一场“轻雪般”的丝滑触感~', 'http://localhost:8080/cake/images/cakes/SnowSwan/index.jpg', 'http://localhost:8080/cake/images/cakes/SnowSwan/details/1.jpg');
INSERT INTO `goods` VALUES (6, '幸福先生【F先生】', 1, 1, 228, '幸福先生【F先生】', 'http://localhost:8080/cake/images/cakes/Mr.F/index.jpg', 'http://localhost:8080/cake/images/cakes/Mr.F/details/1.jpg');
INSERT INTO `goods` VALUES (7, '幸福先生【Z先生】', 1, 1, 228, '幸福先生【Z先生】', 'http://localhost:8080/cake/images/cakes/Mr.Z/index.jpg', 'http://localhost:8080/cake/images/cakes/Mr.Z/details/1.jpg');
INSERT INTO `goods` VALUES (8, '幸福先生【H先生】', 1, 1, 228, '幸福先生【H先生】', 'http://localhost:8080/cake/images/cakes/Mr.H/index.jpg', 'http://localhost:8080/cake/images/cakes/Mr.H/details/1.jpg');
INSERT INTO `goods` VALUES (9, '草莓可丽多', 1, 1, 208, '软糯千层手工煎制，新鲜草莓酸甜怡人', 'http://localhost:8080/cake/images/cakes/StrawberryLily/index.jpg', 'http://localhost:8080/cake/images/cakes/StrawberryLily/details/1.jpg');
INSERT INTO `goods` VALUES (10, '榴莲可丽多', 1, 1, 218, '千层可丽饼 x 甜美草莓，搭配绵软蛋糕胚，温润细腻，风味绵长！', 'http://localhost:8080/cake/images/cakes/Durian/index.jpg', 'http://localhost:8080/cake/images/cakes/Durian/index.jpg');
INSERT INTO `goods` VALUES (11, '鲜芒可丽多', 1, 1, 198, '手工千层皮&花漾鲜果，细腻Q滑，香醇曼妙！', 'http://localhost:8080/cake/images/cakes/Fresh/index.jpg', 'http://localhost:8080/cake/images/cakes/Fresh/details/1.webp');
INSERT INTO `goods` VALUES (12, '福寿临门', 1, 1, 198, '双星贺寿颂福，拳拳孝心幸福陪伴', 'http://localhost:8080/cake/images/cakes/FushouLinmen/index.jpg', 'http://localhost:8080/cake/images/cakes/FushouLinmen/details/1.jpg');
INSERT INTO `goods` VALUES (13, '帅气满满', 1, 1, 228, '男生款绅士蛋糕-鲜切芒果草莓铺满，清香浓郁', 'http://localhost:8080/cake/images/cakes/Handsome/index.jpg', 'http://localhost:8080/cake/images/cakes/Handsome/details/1.webp');
INSERT INTO `goods` VALUES (14, '榴莲季-戚风榴芒多', 1, 1, 198, '闻香而动的榴莲芒果，訇然大开的快感！', 'http://localhost:8080/cake/images/cakes/QifengDurian/index.jpg', 'http://localhost:8080/cake/images/cakes/QifengDurian/details/1.jpg');
INSERT INTO `goods` VALUES (15, '花团锦簇 12磅---提前5小时预约配送', 1, 1, 888, '欢聚时刻，花果相伴  庆典大蛋糕，庆祝文字可自定义', 'http://localhost:8080/cake/images/cakes/ElegantStyle/index.jpg', 'http://localhost:8080/cake/images/cakes/ElegantStyle/details/1.jpg');
INSERT INTO `goods` VALUES (16, '锦绣繁花 12磅---提前5小时预约配送', 1, 1, 888, '锦绣繁花 12磅---提前5小时预约配送', 'http://localhost:8080/cake/images/cakes/Samite/index.jpg', 'http://localhost:8080/cake/images/cakes/Samite/details/1.jpg');
INSERT INTO `goods` VALUES (17, '海盐脆脆芒芒', 1, 1, 168, '暖黄淋面格外撩人，香软戚风入口蓬松!', 'http://localhost:8080/cake/images/cakes/SeaSalt/index.jpg', 'http://localhost:8080/cake/images/cakes/SeaSalt/details/1.jpg');
INSERT INTO `goods` VALUES (18, '6磅森林果乐', 1, 1, 468, '6磅森林果乐', 'http://localhost:8080/cake/images/cakes/ForestFruit/index.jpg', 'http://localhost:8080/cake/images/cakes/ForestFruit/details/1.jpg');
INSERT INTO `goods` VALUES (19, '小猪佩奇', 1, 1, 298, '小猪佩奇，正版授权儿童蛋糕', 'http://localhost:8080/cake/images/cakes/PeppaPig/index.jpg', 'http://localhost:8080/cake/images/cakes/PeppaPig/details/1.jpg');
INSERT INTO `goods` VALUES (20, '小猪乔治', 1, 1, 298, '小猪乔治，正版授权儿童蛋糕', 'http://localhost:8080/cake/images/cakes/LittleGeorge/index.jpg', 'http://localhost:8080/cake/images/cakes/LittleGeorge/details/1.jpg');
INSERT INTO `goods` VALUES (21, '情意满满', 1, 1, 238, '情意满满', 'http://localhost:8080/cake/images/cakes/Emotion/index.jpg', 'http://localhost:8080/cake/images/cakes/Emotion/details/1.jpg');
INSERT INTO `goods` VALUES (22, '雪山之恋', 1, 1, 158, '雪山之恋', 'http://localhost:8080/cake/images/cakes/MountainLove/index.jpg', 'http://localhost:8080/cake/images/cakes/MountainLove/details/1.jpg');
INSERT INTO `goods` VALUES (23, '果果小熊', 1, 1, 598, '相符小熊陪你，揭开美味谜底', 'http://localhost:8080/cake/images/cakes/FruitBear/index.jpg', 'http://localhost:8080/cake/images/cakes/FruitBear/details/1.jpg');
INSERT INTO `goods` VALUES (24, '草莓迷宫', 1, 1, 368, '草莓迷宫', 'http://localhost:8080/cake/images/cakes/StrawberryMaze/index.jpg', 'http://localhost:8080/cake/images/cakes/StrawberryMaze/details/1.jpg');
INSERT INTO `goods` VALUES (25, '唇唇欲动', 1, 1, 598, '轻启殷红心意，馨享双莓甜蜜', 'http://localhost:8080/cake/images/cakes/LipsSoul/index.jpg', 'http://localhost:8080/cake/images/cakes/LipsSoul/details/1.jpg');
INSERT INTO `goods` VALUES (26, '单恋黑森林', 5, 1, 198, '单恋黑森林', 'http://localhost:8080/cake/images/cakes/BlackForest/index.jpg', 'http://localhost:8080/cake/images/cakes/BlackForest/details/1.jpg');
INSERT INTO `goods` VALUES (27, '汪汪队之阿奇（戚风款）', 3, 1, 198, '汪汪队之阿奇（戚风款）', 'http://localhost:8080/cake/images/cakes/ArchieWoof/index.jpg', 'http://localhost:8080/cake/images/cakes/ArchieWoof/details/1.jpg');
INSERT INTO `goods` VALUES (28, '汪汪队之天天（戚风款）', 3, 1, 228, '汪汪队之天天（戚风款）', 'http://localhost:8080/cake/images/cakes/WoofTeam/index.jpg', 'http://localhost:8080/cake/images/cakes/WoofTeam/details/1.jpg');
INSERT INTO `goods` VALUES (29, '海绵宝宝沙滩', 1, 1, 298, '海绵宝宝沙滩', 'http://localhost:8080/cake/images/cakes/SpongeBob/index.jpg', 'http://localhost:8080/cake/images/cakes/SpongeBob/details/1.jpg');
INSERT INTO `goods` VALUES (30, '爱探险的朵拉', 1, 1, 298, '爱探险的朵拉', 'http://localhost:8080/cake/images/cakes/Adventurer/index.jpg', 'http://localhost:8080/cake/images/cakes/Adventurer/details/1.jpg');
INSERT INTO `goods` VALUES (31, '三层寿比南山', 4, 1, 999, '福如东海，寿比南山', 'http://localhost:8080/cake/images/cakes/Three-year/index.jpg', 'http://localhost:8080/cake/images/cakes/Three-year/details/1.jpg');
INSERT INTO `goods` VALUES (32, '香颂', 1, 1, 168, '草莓慕斯将融未融，爱的味道不言而明', 'http://localhost:8080/cake/images/cakes/Fragrance/index.jpg', 'http://localhost:8080/cake/images/cakes/Fragrance/details/1.jpg');
INSERT INTO `goods` VALUES (33, '芒果茫茫蛋糕', 1, 1, 198, '芒果慕斯加原味蛋糕夹层，表面铺满了金灿灿的新鲜芒果，浓郁的芒果香气', 'http://localhost:8080/cake/images/cakes/Mango/index.jpg', 'http://localhost:8080/cake/images/cakes/Mango/details/1.jpg');
INSERT INTO `goods` VALUES (34, '提拉米苏', 2, 1, 198, '提拉米苏', 'http://localhost:8080/cake/images/cakes/Tiramisu/index.jpg', 'http://localhost:8080/cake/images/cakes/Tiramisu/details/1.jpg');
INSERT INTO `goods` VALUES (35, '全心全意	', 1, 1, 158, '全心全意	', 'http://localhost:8080/cake/images/cakes/Wholeheartedly/index.jpg', 'http://localhost:8080/cake/images/cakes/Wholeheartedly/details/1.jpg');
INSERT INTO `goods` VALUES (36, '两情相悦	', 3, 1, 198, '两情相悦	', 'http://localhost:8080/cake/images/cakes/Resonance/index.jpg', 'http://localhost:8080/cake/images/cakes/Resonance/details/1.jpg');
INSERT INTO `goods` VALUES (37, '盛放鲜果', 1, 1, 208, '盛放鲜果', 'http://localhost:8080/cake/images/cakes/FreshFruit/index.jpg', 'http://localhost:8080/cake/images/cakes/FreshFruit/details/1.jpg');
INSERT INTO `goods` VALUES (38, '步步高升', 4, 1, 999, '前程远大福满门，四季常青步步升。我们一直在努力，因为憧憬成功。', 'http://localhost:8080/cake/images/cakes/AttainEminence/index.jpg', 'http://localhost:8080/cake/images/cakes/AttainEminence/details/1.jpg');
INSERT INTO `goods` VALUES (39, '鹏程万里---提前7小时预约配送', 4, 1, 1599, '大鹏一朝同风起，扶摇直上九万里。', 'http://localhost:8080/cake/images/cakes/BrilliantProspects/index.jpg', 'http://localhost:8080/cake/images/cakes/BrilliantProspects/details/1.jpg');
INSERT INTO `goods` VALUES (40, '浪漫果纷', 1, 1, 168, '在浪漫的季节，邂逅缤纷的鲜果', 'http://localhost:8080/cake/images/cakes/RomanticFruit/index.jpg', 'http://localhost:8080/cake/images/cakes/RomanticFruit/details/1.jpg');
INSERT INTO `goods` VALUES (41, '寿比南山', 4, 1, 218, '寿比南山', 'http://localhost:8080/cake/images/cakes/Longevity/index.jpg', 'http://localhost:8080/cake/images/cakes/Longevity/details/1.jpg');
INSERT INTO `goods` VALUES (42, ' 榴芒双拼', 1, 1, 198, '当你在纠结于榴莲香雪或芒果茫茫时，我们为您推出一款特别的榴芒双拼。', 'http://localhost:8080/cake/images/cakes/DoubleSpell/index.jpg', 'http://localhost:8080/cake/images/cakes/DoubleSpell/details/1.jpg');
INSERT INTO `goods` VALUES (43, '榴莲香雪	', 1, 1, 198, '醇香泰国金枕榴莲', 'http://localhost:8080/cake/images/cakes/DurianIncense/index.jpg', 'http://localhost:8080/cake/images/cakes/DurianIncense/details/1.jpg');
INSERT INTO `goods` VALUES (44, '四重奏蛋糕', 3, 1, 208, '四重奏', 'http://localhost:8080/cake/images/cakes/Quarte	t/index.jpg', 'http://localhost:8080/cake/images/cakes/Quartet/details/1.jpg');
INSERT INTO `goods` VALUES (45, '鲜果嘉年华', 1, 1, 198, '鲜果嘉年华', 'http://localhost:8080/cake/images/cakes/FruitCarnival/index.jpg', 'http://localhost:8080/cake/images/cakes/FruitCarnival/details/1.webp');
INSERT INTO `goods` VALUES (46, '森林果乐', 1, 1, 198, '森林果乐', 'http://localhost:8080/cake/images/cakes/Forest_Fruit/index.jpg', 'http://localhost:8080/cake/images/cakes/Forest_Fruit/details/1.jpg');
INSERT INTO `goods` VALUES (47, '红宝石黑巧巧	', 7, 2, 129, '红宝石黑巧巧	', 'http://localhost:8080/cake/images/AfternoonTea/RubyBlack/index.jpg', 'http://localhost:8080/cake/images/AfternoonTea/RubyBlack/details/1.jpg');
INSERT INTO `goods` VALUES (48, '芒果千层（6英寸）', 7, 2, 129, '大颗果肉沁甜多汁，层层香软入口丝滑', 'http://localhost:8080/cake/images/AfternoonTea/MangoLayer/index.jpg', 'http://localhost:8080/cake/images/AfternoonTea/MangoLayer/details/1.jpg');
INSERT INTO `goods` VALUES (49, '【芒果季】冰语琥珀', 7, 2, 129, '甜润多汁鲜芒与清凉薄荷的结合', 'http://localhost:8080/cake/images/AfternoonTea/IceAmber/index.jpg', 'http://localhost:8080/cake/images/AfternoonTea/IceAmber/details/1.jpg');
INSERT INTO `goods` VALUES (50, '【哈密瓜季】清风玉露', 7, 2, 129, '清风拂玉露，时令蜜瓜甜', 'http://localhost:8080/cake/images/AfternoonTea/ClearWindJade/index.jpg', 'http://localhost:8080/cake/images/AfternoonTea/ClearWindJade/details/1.jpg');
INSERT INTO `goods` VALUES (51, '泰式下午茶', 7, 2, 199, '泰新鲜，泰幸福；慢享清风沉醉的下午茶时光~', 'http://localhost:8080/cake/images/AfternoonTea/ThaiAfternoonTea/index.jpg', 'http://localhost:8080/cake/images/AfternoonTea/ThaiAfternoonTea/details/1.jpg');
INSERT INTO `goods` VALUES (52, '鲜莓拿破仑', 7, 2, 129, '法式起酥层层酥脆	，新鲜草莓清新甜美', 'http://localhost:8080/cake/images/AfternoonTea/Fresh Berry/index.jpg', 'http://localhost:8080/cake/images/AfternoonTea/Fresh Berry/details/1.jpg');
INSERT INTO `goods` VALUES (53, '手工现煎草莓千层', 7, 2, 149, '纤薄柔嫩，入口即化', 'http://localhost:8080/cake/images/AfternoonTea/Hand - Fried/index.jpg', 'http://localhost:8080/cake/images/AfternoonTea/Hand - Fried/details/1.jpg');
INSERT INTO `goods` VALUES (54, '依恋', 7, 2, 149, '蓝莓or芒果果酱的舌尖梦境，一口沉醉 ~', 'http://localhost:8080/cake/images/AfternoonTea/Attachment/index.jpg', 'http://localhost:8080/cake/images/AfternoonTea/Attachment/details/1.webp');
INSERT INTO `goods` VALUES (55, '烈焰莓莓', 7, 2, 139, '初尝是亲吻初雪的微凉，回味是馥郁与清甜的交织', 'http://localhost:8080/cake/images/AfternoonTea/FlameBlackberry/index.jpg', 'http://localhost:8080/cake/images/AfternoonTea/FlameBlackberry/details/1.jpg');
INSERT INTO `goods` VALUES (56, '甜心芒芒', 7, 2, 139, '脚步与味蕾同时抵达中南亚，鲜切果肉层层叠加', 'http://localhost:8080/cake/images/AfternoonTea/Sweetheart/index.jpg', 'http://localhost:8080/cake/images/AfternoonTea/Sweetheart/details/1.jpg');
INSERT INTO `goods` VALUES (57, '幸福甜品台-白色优雅', 7, 2, 1299, '盛宴定制，花样甜品仪式加满，适合29-45人~', 'http://localhost:8080/cake/images/AfternoonTea/HappinessDessert/index.jpg', 'http://localhost:8080/cake/images/AfternoonTea/HappinessDessert/details/1.jpg');
INSERT INTO `goods` VALUES (58, '幸福甜品台-绿色清新', 7, 2, 1299, '盛宴定制，花样甜品仪式加满，适合29-45人~', 'http://localhost:8080/cake/images/AfternoonTea/Table - Green/index.jpg', 'http://localhost:8080/cake/images/AfternoonTea/Table - Green/details/1.jpg');
INSERT INTO `goods` VALUES (59, '圆形现煎榴芒双拼千层', 7, 2, 159, '圆形现煎榴芒双拼千层', 'http://localhost:8080/cake/images/AfternoonTea/Circular/index.jpg', 'http://localhost:8080/cake/images/AfternoonTea/Circular/details/1.jpg');
INSERT INTO `goods` VALUES (60, '可心蓝莓', 7, 2, 139, ' 可心蓝莓', 'http://localhost:8080/cake/images/AfternoonTea/Blueberry/index.jpg', 'http://localhost:8080/cake/images/AfternoonTea/Blueberry/details/1.webp');
INSERT INTO `goods` VALUES (61, '圆形现煎皮芒果千层', 7, 2, 149, '手工自煎皮，美味值得尝~', 'http://localhost:8080/cake//images/AfternoonTea/RoundFreshly/index.jpg', 'http://localhost:8080/cake/images/AfternoonTea/RoundFreshly/details/1.jpg');
INSERT INTO `goods` VALUES (62, '圆形现煎皮榴莲千层', 7, 2, 149, '手工自煎皮，美味值得尝', 'http://localhost:8080/cake/images/AfternoonTea/DurianQianceng/index.jpg', 'http://localhost:8080/cake/images/AfternoonTea/DurianQianceng/details/1.jpg');
INSERT INTO `goods` VALUES (63, '花镜', 7, 2, 159, '六味臻享，轻焙芝士 & 精研慕斯的丝滑', 'http://localhost:8080/cake/images/AfternoonTea/ConvexGlass/index.jpg', 'http://localhost:8080/cake/images/AfternoonTea/ConvexGlass/details/1.jpg');
INSERT INTO `goods` VALUES (64, '英式下午茶', 7, 2, 198, '情迷英格兰风雅，午后把茶言欢。钟敲四下，一切为下午茶停下。省去高额旅费', 'http://localhost:8080/cake/images/AfternoonTea/EnglishAfternoonTea/index.jpg', 'http://localhost:8080/cake/images/AfternoonTea/EnglishAfternoonTea/details/1.jpg');
INSERT INTO `goods` VALUES (65, '雪顶榴心', 7, 2, 129, '温暖的午后，来一份浓郁的榴莲，一杯红茶，有个美好的下午茶时光。', 'http://localhost:8080/cake/images/AfternoonTea/Pomegranate/index.jpg', 'http://localhost:8080/cake/images/AfternoonTea/Pomegranate/details/1.jpg');
INSERT INTO `goods` VALUES (66, '芒果拿破仑', 7, 2, 109, '绵密的奶油与香甜的芒果邂逅，举世无双', 'http://localhost:8080/cake/images/AfternoonTea/MangoNapoleon/index.jpg', 'http://localhost:8080/cake/images/AfternoonTea/MangoNapoleon/details/index.jpg');
INSERT INTO `goods` VALUES (67, '幸福茶油酥', 8, 3, 39, '幸福茶油酥', 'http://localhost:8080/cake/images/Souvenir/HappinessTea/index.jpg', 'http://localhost:8080/cake/images/Souvenir/HappinessTea/details/1.jpg');
INSERT INTO `goods` VALUES (68, '榴莲饼', 8, 3, 39, '专为榴莲控打造的榴莲饼', 'http://localhost:8080/cake/images/Souvenir/DurianCake/index.png', 'http://localhost:8080/cake/images/Souvenir/DurianCake/details/1.jpg');
INSERT INTO `goods` VALUES (69, '幸福大礼盒', 8, 3, 188, '幸福大礼盒', 'http://localhost:8080/cake/images/Souvenir/HappinessGift/index.png', 'http://localhost:8080/cake/images/Souvenir/HappinessGift/details/1.jpg');
INSERT INTO `goods` VALUES (70, '什锦糖瓜', 8, 3, 38, '什锦糖瓜', 'http://localhost:8080/cake/images/Souvenir/AssortedTangGua/index.png', 'http://localhost:8080/cake/images/Souvenir/AssortedTangGua/details/1.jpg');
INSERT INTO `goods` VALUES (71, '海鲜饼', 8, 3, 69, '海鲜饼', 'http://localhost:8080/cake/images/Souvenir/SeafoodPie/index.png', 'http://localhost:8080/cake/images/Souvenir/SeafoodPie/details/1.jpg');
INSERT INTO `goods` VALUES (72, '桂圆酥', 8, 3, 49, '桂圆酥', 'http://localhost:8080/cake/images/Souvenir/LonganCake/index.png', 'http://localhost:8080/cake/images/Souvenir/LonganCake/details/1.jpg');
INSERT INTO `goods` VALUES (73, '绿豆饼', 8, 3, 39, '绿豆饼', 'http://localhost:8080/cake/images/Souvenir/GreenBean/index.png', 'http://localhost:8080/cake/images/Souvenir/GreenBean/details/1.jpg');
INSERT INTO `goods` VALUES (74, '脆糖瓜', 8, 3, 68, '脆糖瓜', 'http://localhost:8080/cake/images/Souvenir/CrispyTangGua/index.png', 'http://localhost:8080/cake/images/Souvenir/CrispyTangGua/details/1.jpg');
INSERT INTO `goods` VALUES (75, '软糖瓜', 8, 3, 68, '软糖瓜', 'http://localhost:8080/cake/images/Souvenir/JellyMelon/index.png', 'http://localhost:8080/cake/images/Souvenir/JellyMelon/details/1.jpg');

-- ----------------------------
-- Table structure for index_banner
-- ----------------------------
DROP TABLE IF EXISTS `index_banner`;
CREATE TABLE `index_banner`  (
  `good_id` int(0) NULL DEFAULT NULL,
  `img_url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  INDEX `good_id`(`good_id`) USING BTREE,
  CONSTRAINT `index_banner_ibfk_1` FOREIGN KEY (`good_id`) REFERENCES `goods` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of index_banner
-- ----------------------------
INSERT INTO `index_banner` VALUES (35, 'http://localhost:8080/cake/images/cakes/Wholeheartedly/index.jpg');
INSERT INTO `index_banner` VALUES (45, 'http://localhost:8080/cake/images/cakes/FruitCarnival/index.jpg');
INSERT INTO `index_banner` VALUES (46, 'http://localhost:8080/cake/images/cakes/Forest_Fruit/index.jpg');
INSERT INTO `index_banner` VALUES (63, 'http://localhost:8080/cake/images/AfternoonTea/Pomegranate/index.jpg');
INSERT INTO `index_banner` VALUES (49, 'http://localhost:8080/cake/images/AfternoonTea/IceAmber/index.jpg');
INSERT INTO `index_banner` VALUES (2, 'http://localhost:8080/cake/images/cakes/Mirror/index.jpg');

-- ----------------------------
-- Table structure for provincial
-- ----------------------------
DROP TABLE IF EXISTS `provincial`;
CREATE TABLE `provincial`  (
  `pid` int(0) NOT NULL,
  `Provincial` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`pid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of provincial
-- ----------------------------
INSERT INTO `provincial` VALUES (1, '北京');
INSERT INTO `provincial` VALUES (2, '天津');
INSERT INTO `provincial` VALUES (3, '上海');
INSERT INTO `provincial` VALUES (4, '重庆');
INSERT INTO `provincial` VALUES (5, '河北省');
INSERT INTO `provincial` VALUES (6, '山西省');
INSERT INTO `provincial` VALUES (7, '台湾省');
INSERT INTO `provincial` VALUES (8, '辽宁省');
INSERT INTO `provincial` VALUES (9, '吉林省');
INSERT INTO `provincial` VALUES (10, '黑龙江省');
INSERT INTO `provincial` VALUES (11, '江苏省');
INSERT INTO `provincial` VALUES (12, '浙江省');
INSERT INTO `provincial` VALUES (13, '安徽省');
INSERT INTO `provincial` VALUES (14, '福建省');
INSERT INTO `provincial` VALUES (15, '江西省');
INSERT INTO `provincial` VALUES (16, '山东省');
INSERT INTO `provincial` VALUES (17, '河南省');
INSERT INTO `provincial` VALUES (18, '湖北省');
INSERT INTO `provincial` VALUES (19, '湖南省');
INSERT INTO `provincial` VALUES (20, '广东省');
INSERT INTO `provincial` VALUES (21, '甘肃省');
INSERT INTO `provincial` VALUES (22, '四川省');
INSERT INTO `provincial` VALUES (23, '贵州省');
INSERT INTO `provincial` VALUES (24, '海南省');
INSERT INTO `provincial` VALUES (25, '云南省');
INSERT INTO `provincial` VALUES (26, '青海省');
INSERT INTO `provincial` VALUES (27, '陕西省');
INSERT INTO `provincial` VALUES (28, '广西壮族自治区');
INSERT INTO `provincial` VALUES (29, '西藏自治区');
INSERT INTO `provincial` VALUES (30, '宁夏回族自治区');
INSERT INTO `provincial` VALUES (31, '新疆维吾尔自治区');
INSERT INTO `provincial` VALUES (32, '内蒙古自治区');
INSERT INTO `provincial` VALUES (33, '澳门特别行政区');
INSERT INTO `provincial` VALUES (34, '香港特别行政区');

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `tokenStr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` int(0) NULL DEFAULT NULL,
  `user_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  INDEX `user_id`(`user_id`) USING BTREE,
  CONSTRAINT `token_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `c_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES ('43adb86e-55a4-4ce5-ab16-f2ec87a8a607', 7, '奶炮炮.king');

SET FOREIGN_KEY_CHECKS = 1;
