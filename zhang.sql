/*
 Navicat Premium Data Transfer

 Source Server         : 111.230.36.84_3306s
 Source Server Type    : MySQL
 Source Server Version : 50557
 Source Host           : 111.230.36.84:3306
 Source Schema         : zhang

 Target Server Type    : MySQL
 Target Server Version : 50557
 File Encoding         : 65001

 Date: 21/01/2019 09:38:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for dictionarydata
-- ----------------------------
DROP TABLE IF EXISTS `dictionarydata`;
CREATE TABLE `dictionarydata`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dict_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dict_id` int(11) NOT NULL,
  `dict_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dictionarydata
-- ----------------------------
INSERT INTO `dictionarydata` VALUES (2, '酒店房型', 2, '豪华间');
INSERT INTO `dictionarydata` VALUES (3, '酒店房型', 3, '高级间');
INSERT INTO `dictionarydata` VALUES (4, '酒店房型', 4, '行政间');
INSERT INTO `dictionarydata` VALUES (5, '酒店房型', 5, '行政套间');
INSERT INTO `dictionarydata` VALUES (6, '床位', 1, '小床');
INSERT INTO `dictionarydata` VALUES (7, '床位', 2, '中床');
INSERT INTO `dictionarydata` VALUES (8, '床位', 3, '大床');
INSERT INTO `dictionarydata` VALUES (9, '网络', 1, '有网');
INSERT INTO `dictionarydata` VALUES (10, '停车场', 1, '有');
INSERT INTO `dictionarydata` VALUES (13, '停车场', 0, '没');
INSERT INTO `dictionarydata` VALUES (37, '订单状态', 1, '待付款');
INSERT INTO `dictionarydata` VALUES (38, '订单状态', 2, '已付款');
INSERT INTO `dictionarydata` VALUES (39, '订单状态', 3, '退订');
INSERT INTO `dictionarydata` VALUES (40, '酒店房型', 1, '普通间');

-- ----------------------------
-- Table structure for hotleCount
-- ----------------------------
DROP TABLE IF EXISTS `hotleCount`;
CREATE TABLE `hotleCount`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hotleName` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hotleTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of hotleCount
-- ----------------------------
INSERT INTO `hotleCount` VALUES (2, '郴州宾馆', '2018-12-25 10:55:31');
INSERT INTO `hotleCount` VALUES (3, '郴州奥米茄大酒店', '2018-12-25 11:33:09');
INSERT INTO `hotleCount` VALUES (4, '郴州华天大酒店', '2018-12-25 11:33:24');
INSERT INTO `hotleCount` VALUES (5, '郴州温德姆至尊豪庭', '2018-12-25 17:07:51');
INSERT INTO `hotleCount` VALUES (6, '郴州温德姆至尊豪庭', '2018-12-25 17:08:06');
INSERT INTO `hotleCount` VALUES (7, '郴州温德姆至尊豪庭', '2018-12-25 17:08:08');
INSERT INTO `hotleCount` VALUES (8, '郴州温德姆至尊豪庭', '2018-12-31 14:34:07');

-- ----------------------------
-- Table structure for hotlecomment
-- ----------------------------
DROP TABLE IF EXISTS `hotlecomment`;
CREATE TABLE `hotlecomment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `comment` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '酒店评论',
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '评论时间',
  `facilitiesid` int(11) NULL DEFAULT NULL COMMENT '设施id',
  `userid` int(11) NULL DEFAULT NULL COMMENT '用户ID',
  `detailsid` int(11) NULL DEFAULT NULL COMMENT '酒店信息id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of hotlecomment
-- ----------------------------
INSERT INTO `hotlecomment` VALUES (1, '酒店的设施整齐，卫生干净整洁，服务态度很好，又处在市中心，具有超高的性价比，非常喜欢！', '2019-01-08 16:57:25', 1, 1, 1);
INSERT INTO `hotlecomment` VALUES (2, '酒店位置好，周边美食好多，出差好选择', '2019-01-01 16:57:58', 2, 2, 2);
INSERT INTO `hotlecomment` VALUES (3, '位置很好，地铁边上闹中取静，吃喝都很方便', '2019-01-14 16:58:40', 3, 3, 3);

-- ----------------------------
-- Table structure for hotledetails
-- ----------------------------
DROP TABLE IF EXISTS `hotledetails`;
CREATE TABLE `hotledetails`  (
  `rommid` int(11) NOT NULL AUTO_INCREMENT,
  `hotelname` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `destinationid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '引用地理表id',
  `hotlelevel` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hotleaddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '详细地址',
  `hotledescribe` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hotleip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` int(11) NULL DEFAULT NULL COMMENT '价格',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片主要路径',
  `notnetwork` int(11) NULL DEFAULT 0 COMMENT '是否有无限网络',
  `breakfast` int(11) NULL DEFAULT 0 COMMENT '含早',
  `parking` int(11) NULL DEFAULT 0 COMMENT '是否有停车场',
  `swimmingpool` int(255) NULL DEFAULT NULL COMMENT '是否有游泳池',
  `ktv` int(255) NULL DEFAULT NULL COMMENT '是否有KTV',
  PRIMARY KEY (`rommid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 103 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of hotledetails
-- ----------------------------
INSERT INTO `hotledetails` VALUES (1, '郴州宾馆', '11', '五星级/豪华型', '湖南省郴州市北湖区人民东路7号', '好好好好好好好', '2361388', 650, '16ec0c2c-8b09-4274-afca-cc7097894af3323266.jpg', 1, 1, 0, 1, 1);
INSERT INTO `hotledetails` VALUES (2, '郴州雄森国际假日酒店', '11', '二星级/经济型', '湖南省郴州市北湖区五岭广场日月路1号(近五岭大道)', '郴州雄森国际假日酒店位于五岭广场博物馆路，周边有本地特色土菜、鱼粉、杀猪粉、四大特产等郴州闻名小吃，市政府及各大单位步行约5分钟，交通方便，有通往飞天山、高椅岭、苏仙岭、万华岩、东江湖，龙女温泉，莽山森林公园等景区的大巴、的士。', '0735-8888888', 149, '94x64_120d178a-e5b6-4b51-a144-9b82f799ca0e.jpg', 1, 1, 1, 0, 0);
INSERT INTO `hotledetails` VALUES (3, '郴州奥米茄大酒店', '11', '五星级/豪华型', '\r\n湖南省郴州市苏仙区郴江路309号', '郴州奥米茄大酒店位于风景秀丽的爱莲湖畔，紧邻市演艺中心和石榴湾生态公园，距京珠高速和武广高铁分别只有3分钟和10分钟车程。', '0735-2136888', 488, '94x64_745f0d7f-a085-4a1f-8c1b-adc4e6000871.jpg', 1, 1, 0, 0, 1);
INSERT INTO `hotledetails` VALUES (4, '郴州华天大酒店', '11', '三星级/舒适型', '湖南省郴州市北湖区南岭大道958号(市政府对面)', '郴州华天大酒店位于郴州市南岭大道958号，地理位置优越，矗立在郴州新兴的繁华中心地区五岭广场，交通便利，毗邻高新技术产业开发区，到火车站仅需十分钟，到高铁站仅需20分钟，京珠高速、107国道近在咫尺', '0735-2818888', 285, '94x64_2979e9b1-14f5-4854-9548-3ba53c05ead7.jpg', 0, 0, 1, 1, 0);
INSERT INTO `hotledetails` VALUES (5, '北京正义路华纺商务酒店(北京正义路酒店)', '1', '五星级/豪华型', '北京市东城区正义路甲4号', '北京正义路华纺商务酒店(北京正义路酒店)坐落于北京市行政、政治中心正义路上，北京市政府、卫戍司令部隔壁、公安部对面；步行到最高人民法院约2分钟，距闻名中外的天安门广场约600米、距王府井、新世界商业区约1000米', '010-65247311', 357, '94x64_5118f54e-1426-4690-afc3-0c12e70dbbd8.jpg', 1, 1, 0, 0, 1);
INSERT INTO `hotledetails` VALUES (6, '美豪丽致酒店(广州五羊新城店)', '3', '四星级/高档型', '广东省广州市越秀区寺右新马路93号', '美豪丽致酒店（广州五羊新城店）位于五羊新城和珠江新城CBD商圈交汇处，地处越秀区繁华商务地段，毗邻广州国际金融中心、琶洲国际会展中心，是上海美豪酒店集团倾心打造的中高端城市度假酒店。', '020-22916666', 149, '94x64_02503012_0_10_0_41.jpg', 0, 0, 1, 1, 0);
INSERT INTO `hotledetails` VALUES (7, '北京瑞安宾馆', '1', '五星级/豪华型', '北京市东城区正义路7号(公安部东南门)', '北京瑞安宾馆位于北京东城区正义路，近东交民巷，靠近王府井商业区，步行数十分钟即可到达天安门广场和故宫博物院，地理位置优越。北京瑞安宾馆拥有客房多间，装修精美，各类设施完善。餐饮区位于宾馆三层，有以三山五岳命名的12个包间，可提供各种规格的宴请服务；宾馆三层还有580平米的宴会厅及850平米的大宴会厅，便于承接会议，展览、宴会等活动。宴会厅直径8米的圆桌可满足35人同时就餐。', '010-58187788', 285, '94x64_02503080_0_10_0_1.jpg', 1, 1, 0, 1, 0);
INSERT INTO `hotledetails` VALUES (8, '北京东交民巷饭店', '1', '四星级/高档型', '北京市东城区东交民巷甲23号', '北京东交民巷举世闻名，是北京历史文化保护区。元朝，这里叫“江米巷”，是早期京都贸易商埠的雏形。明清，这里成为国家机关的集中地，兵部、吏部、户部、钦天监等国家集权机构都设置在这里。清末，这里成为列强的使馆区和国际金融区，一些近代中外历史建筑完整地保存了下来。如今，这里仍然是国家和北京市党政军机关所在地，最高法院、公安部、团中央、北京市委、北京市府、北京卫戍区等都在这里。此外，闻名中外的北京医院、同仁医院也设在了这里。这里，是北京的核中之核。', '010-65243311', 431, '94x64_201211161231442797.jpg', 1, 1, 0, 1, 1);
INSERT INTO `hotledetails` VALUES (9, '北京首都大酒店 ', '1', '三星级/舒适型', '北京市东城区前门东大街3号', '首都大酒店为无烟酒店，酒店内全区域禁止吸烟。 首都大酒店坐拥历史积淀厚重的东交民巷，毗邻王府井商业区，北望中外闻名的皇家宫苑紫禁城。酒店周边环绕前门、天安门等一批古迹名胜，另有众多政府机关、部委及公司写字楼林立，地理位置优越，交通便利。  首都大酒店隶属于国家机关事务管理局，建设于上个世纪80年代，北京最早的高档饭店之一。酒店曾成功接待过众多国内外元首、政要、社会名流等重要宾客。 酒店装修风格中西交融，', '010-58159988', 315, '94x64_ce411caa-a44b-4788-8f8b-080bb8fd901a.jpg', 0, 0, 1, 1, 1);
INSERT INTO `hotledetails` VALUES (10, '北京华风宾馆', '1', '二星级/经济型', '北京市东城区前门东大街5号', '北京华风宾馆位于东城区正义路上，是闻名海内外的“六国饭店”。这里西靠天安门广场（步行约5分钟）和前门商业区；东临北京火车站；北靠王府井商业大街，临近高等法院。宾馆距同仁医院、北京医院步行约10分钟，周边市井繁华，交通便利，环境幽雅这里客房整洁温馨，房间环境舒适，床上用品均采用高品质的纯棉织品', '010-65247311', 403, '94x64_e765dec0-fd39-4a6d-96a5-04a25b1f5066.jpg', 1, 1, 0, 0, 1);
INSERT INTO `hotledetails` VALUES (11, '郴州竹园宾馆苏仙岭店', '11', '二星级/经济型', '湖南省郴州市苏仙区苏仙北路26号(近市委大院距苏仙岭300米)', '郴州竹园宾馆位于湖南省郴州市苏仙北路，座落于国家AAAA级景区、天下第十八福地——美丽的苏仙岭山脚下，距火车站和京珠高速公路仅5分钟车程，交通便利，环境优雅，整个酒店采用园林式结构设计，分为前后两栋主楼和贵宾楼，店内竹林环绕、鸟语花香、空气清新，是城市中难得的一片净土，闹市中的天然氧吧。酒店拥有各类豪华客房，风格迥异的豪华用餐包厢、大型宴会厅和多功能会议室等功能齐全的配套接待设施，是您举办各类会议、宴会和进行公务接待、商务宴请、休闲度假的理想之选。', '0735-2876199', 414, '100x75_201405191312345532.png', 1, 1, 1, 0, 0);
INSERT INTO `hotledetails` VALUES (12, '广州天河体育中心希尔顿欢朋酒店', '3', '五星级/豪华型', '广东省广州市天河区天河北路5号正升大厦', '广州天河体育中心希尔顿欢朋酒店位于天河区中心地带，地处体育中心中央商务区核心地段，毗邻体育中心、中信广场、中石化大厦、广州东站等。酒店临近海心沙广场、天河购书中心、天河城、太古汇、正佳广场等城市热门旅游、文化、休闲、购物中心，步行即可到达体育学院、东风公园等著名地标。酒店客房使用美国“Hampton Bed ”舒达双专利床垫和生态认证床上用品，打造云端甜梦体验，可移动的办公桌搭配人体工学座椅，提供超越期待的舒适办公环境，精心设计的沙发床既能留住朋友相聚的愉悦时光，又能延伸亲子家庭的睡眠空间。并采用美国护肤领域殿堂级医学品牌Peter Thomas Roth，以其纯天然的成分及馥郁舒缓的沐浴感受，有效舒缓疲惫，打造专属“希尔顿欢朋沐浴体验”。', '020-85959999', 184, '160x120_0fc14a4e-78f3-493a-9fdc-45018eb827c0.jpg', 1, 1, 1, 0, 0);
INSERT INTO `hotledetails` VALUES (13, '兰斯主题酒店(广州新白云国际机场店)', '3', '五星级/豪华型', '广东省广州市白云区人和镇矮岗大路口西5巷1号', '兰斯主题酒店(广州新白云国际机场店)是一家集亲子、情侣主题和商务性质酒店，拥有多间亲子房、情侣房和商务房。酒店距新白云国际机场不到3公里，车程3-5分钟，酒店24小时提供机场免费接送服务。酒店客房均设有24小时热水系统、冷暖空调、43寸液晶电视以及高速Wi-Fi上网。酒店附近有多家特色农庄和超市，吃饭购物方便。广州兰斯主题酒店是广大顾客亲子出游、情侣出行及商务出差中转住宿的绝佳选择。欢迎您光临体验，我们将竭诚为您服务！', '020-31210200', 430, '160x120_7_6cd7b089-43d5-49f8-8ffd-c35804effb2d.png', 0, 0, 0, 1, 1);
INSERT INTO `hotledetails` VALUES (14, '星伦国际公寓(广州合生广场店)', '3', '五星级/豪华型', '广东省广州市海珠区广州大道南与叠景路交汇处合生广场南区B栋1楼', '星伦国际公寓（广州合生广场店）位于广州大道南与叠景路交汇处，处于广州大道南墩和商业走廊的中心。距离琶洲国际会展中心仅8分钟车程，距离广州塔5分钟车程，临近地铁3号线和8号线交汇处——客村站。酒店周边集政治、商贸、文化、购物、休闲等配套资源于一体，坐拥繁华地段。北眺无敌广州珠江新城（小蛮腰、西塔、北塔），南望广州南肺万亩果园（海珠湖、广州湿地公园）；毗邻中大布匹市场、天雄布匹市场、长江中国轻纺城、华南鞋贸汽贸城环绕、客村商业中心。府前路商圈、珠江国际纺织城、琶洲国际会展中心、南天酒店批发市场、海珠湖、湿地公园、体育中心天河城商圈，周边有叠景路商业街，汇聚华润万家超市、宏城超市、各大连锁药店、餐饮、中国移动、中国邮政及', '020-89800166', 505, '160x120_7_a57e8717-cef0-4ff8-a824-0a59469b687d.png', 1, 1, 1, 0, 0);
INSERT INTO `hotledetails` VALUES (15, '广州白云机场铂尔曼大酒店', '3', '三星级/舒适型', '广东省广州市花都区白云机场空港酒店路1号', '广州白云机场铂尔曼大酒店坐落于机场空港酒店路，紧邻地铁3号线机场南站，乘机便捷。与T1航站楼12号门相连，酒店提供穿梭巴士至T2航站楼，客人可于T2航站楼中转巴士区搭乘酒店穿梭巴士前往酒店。 酒店连续四年获得Skytrax奖项的殊荣，拥有五百余间舒适客房，配有单独的行政翼，有中餐厅、自助餐厅及日式餐厅，设有迷你吧（详情请咨询商家）。 酒店配备2个健身中心，1个户外泳池以及280个停车位。3间颇具创意的餐厅和酒吧。会议设施包括1500平方米无柱红棉宴会厅，以及20多间500平方米到50平方米不等的多功能会议室和贵宾厅。 酒店提供免费机场接送机服务，提供停机坪接送机服务（仅限国内航班，详情请咨询商家）。', '020-36068866', 600, '160x120_77b73641-ea09-4f0e-9e20-311d623f2212.jpg', 1, 1, 0, 1, 1);
INSERT INTO `hotledetails` VALUES (16, '深圳滨河时代亚朵S酒店', '4', '五星级/豪华型', '广东省深圳市福田区滨河大道9289号滨河时代大厦B座', '深圳滨河时代亚朵S酒店设计理念是以阅读和人文摄影为主题，高品质的客房产品设施+细致温馨的服务，带给您“自然、静谧、温暖、朴实”的健康生活方式。所有客房均采用普兰特系列优质床品，中央空调，全套高端阿芙精油精华洗浴用品，100M高速光纤，全WIFI覆盖。酒店设有餐厅(相招)、多功能会议室（共语）、洗熨烘干自助洗衣房（出尘）及超大阅读会友书吧（竹居），为您提供一个自在、放松的居停空间。在这里，能够休憩、充电、放松，是您商务出行及旅游的最佳选择。', '0755-33016688', 558, '160x120_86f39e06-f85b-4481-a9d2-9480289e4b8e.jpg', 1, 1, 1, 0, 1);
INSERT INTO `hotledetails` VALUES (17, '美豪丽致酒店(深圳福田会展中心店)', '4', '三星级/舒适型', '广东省深圳市福田区滨河路5022号联合广场B座1层', '深圳滨河时代亚朵S酒店设计理念是以阅读和人文摄影为主题，高品质的客房产品设施+细致温馨的服务，带给您“自然、静谧、温暖、朴实”的健康生活方式。所有客房均采用普兰特系列优质床品，中央空调，全套高端阿芙精油精华洗浴用品，100M高速光纤，全WIFI覆盖。酒店设有餐厅(相招)、多功能会议室（共语）、洗熨烘干自助洗衣房（出尘）及超大阅读会友书吧（竹居），为您提供一个自在、放松的居停空间。在这里，能够休憩、充电、放松，是您商务出行及旅游的最佳选择。', '0755-61389999', 348, '160x120_05459eb1-9404-45b5-9b36-f0746f60543a.jpg', 0, 1, 0, 1, 1);
INSERT INTO `hotledetails` VALUES (18, '深圳坂田希尔顿欢朋酒店', '4', '五星级/豪华型', '广东省深圳市龙岗区坂雪岗大道4001号', '深圳坂田希尔顿欢朋酒店地处深圳市龙岗区坂田街道坂雪岗大道，周围生活配套齐全，外出购物、就餐方便。 希尔顿欢朋是希尔顿全球酒店集团旗下连锁酒店品牌，创立于1984年，目前在美洲与欧洲共开设超过2300家酒店，是全球数量多、发展成功的商务酒店连锁品牌之一。凭借”F.A.C.T.（Friendly、Authentic、Caring、Thonughtful）”--“友善、可靠、关怀、周全”的品牌核心价值观，希尔顿欢朋立志成为每一位客人旅途上的知己、生活中的伙伴。 酒店主楼高15层，拥有百余间宽敞舒适的客房，多功能会议室、乐动健身房以及口味纯正的健康格调餐厅，酒店致力于为亲子家庭及高端商旅精英提供舒适优质的入住体验。 酒店每间客房均配备美国”Hampton Bed”标准Serta双专利床垫和生态认证的床上用品，为您打造云端甜梦体验；美国护肤领域殿堂级品牌”Peter Thomas Roth”其纯天然的成分能有效舒缓您的疲惫', '0755-28895999 ', 625, '160x120_80734b86-17cf-43a4-bb37-9af694f5ad99.jpg', 1, 1, 0, 1, 0);
INSERT INTO `hotledetails` VALUES (19, '深圳南山CitiGO 酒店', '4', '四星级/高档型', '广东省深圳市南山区海天一路软件产业园2栋A座首层21-28层', '深圳南山CitiGO 酒店位于深圳软件产业园，地处科技园内，临近腾讯、芒果、百度、阿里巴巴总部，深圳大学，后海/海岸城，深圳湾口岸，春茧体育馆，蛇口码头近在咫尺，临近地铁2号线科苑地铁站A出口和D出口，步行可达。附近更有多条公交线路和地铁可方便前往世界之窗、欢乐谷、红树林、华侨城等旅游景点 。CitiGO是华住酒店集团旗下轻奢品牌，旨在为同调性的你提供深刻而美好的入住体验。 手机自助Check-in，微信打开房门并控制房内设备。汉斯格雅、杜拉维特、杜邦的卫浴设备，金可儿的床垫，乐视TV，客房坚守高品质标准。 音乐、咖啡、派对、阅读、办公、健康轻食、露天电影，分享的愉悦充斥着公区。CitiGO不仅仅是酒店，更将引领年轻社群的生活方式', '0755-27479188', 666, '160x120_92320e91-d01e-477e-836d-49ff0e0170ce.jpg', 0, 1, 1, 1, 0);
INSERT INTO `hotledetails` VALUES (20, '美豪丽致酒店(深圳东门老街地铁站店)', '4', '五星级/豪华型', '\r\n广东省深圳市罗湖区深南东路3018号祥祺商厦8-15层', '深圳主干道深南大道东，交通便利。酒店位于东门商业街商圈中心，周边购物、美食街、娱乐、休闲、医院等配套齐全。酒店客房配备高品质床上用品、豪华沐浴设备、光纤互联网接入、无线WIFI覆盖、丰富电视节目、国内长途市话等设施和服务。酒店还配有60人会议厅，提供专业的会议解决方案。美豪始终致力于打造城央、商务、雅致的产品，给您典雅、个性的住宿品味，是您商务、会议、旅游的理想选择。', '0755-82239989', 482, '160x120_00101122_0_8_0002_3.jpg', 0, 1, 0, 0, 1);
INSERT INTO `hotledetails` VALUES (21, '上海小南国花园酒店', '2', '五星级/豪华型', '上海市杨浦区佳木斯路777号小南国花园酒店5楼', '上海小南国花园酒店地处杨浦区，步行5分钟即可到达地铁8号线黄兴公园站，坐拥上海浦西市中心不可多得的自然生态环境，为客人提供大隐于市的度假体验。酒店独揽60万平方米的都市绿洲黄兴公园，百余间宽阔客房均采用落地景观大窗，宁静悠然的公园美景和碧波湖景尽收眼底。客房内采用世界品牌Frette芙蕾特与Pacific Coast派赛菲特床上用品、Sealy丝涟床垫以及L\'Occitane欧舒丹沐浴用品，确保客人获得尊贵舒适的入住体验。酒店的钻石宴会厅面积达1200平方米，可同时容纳90桌宴席；此外，480平方米的红宝石宴会厅及4个多功能会议厅可满足多种形式的会议宴会。酒店还拥有在上海市区酒店内的婚礼教堂、5000平方米的非SPA中心和以声光影像科技讲述上海美食历史的非SPA–食光隧道、4家餐厅、酒吧，还有适合孩子玩耍的儿童乐园；是你闹中取静，带着家人度假休闲的理想之所。', '021-25258888', 652, '160x120_20101401_0_8_1018_1.jpg', 1, 0, 1, 1, 0);
INSERT INTO `hotledetails` VALUES (22, '上海Pagoda君亭设计酒店', '2', '五星级/豪华型', '上海市杨浦区政学路77号', '上海同文君亭酒店地处四川北路商业街，紧邻上海北外滩及1933老厂房、多伦路文化一条街及鲁迅公园也近在咫尺，与浦东陆家嘴金融贸易区隔江相望。从酒店到浦东陆家嘴金融贸易区，驾车约10分钟可达，地铁3、4、10号线离酒店几步之遥。酒店传承东方文化脉络，注重设计元素的运用，突显休闲时尚的氛围；仿佛站在历史与摩登的节点上，穿梭在新旧上海的百年剪影里。客房、餐厅、公共区域的环境等关键产品方面均达到高星酒店标准；百兆WIFI全面覆盖。大堂提供多功能移动商务区域，提供良好的移动商务办公环境。客房内特设的PM2.5空调过滤系统、专业消毒设施，专注你的健康，打造都市里的桃源“第三休闲”空间。', '021-60139666', 982, '160x120_30201290_0_8_1023_8.jpg', 1, 0, 0, 1, 1);
INSERT INTO `hotledetails` VALUES (23, '丽昂酒店', '2', '五星级/豪华型', '上海市静安区恒丰路585号', '丽昂酒店(上海新静安店)毗邻人民广场商圈和南京路外滩商圈，距豫园、新天地约12分钟车程，步行可到上海火车站，周边商业繁华，生活设施应有尽有，地段十分优越。这里是由马来西亚设计师专为中国市场量身打造的中高端品牌酒店。每间客房新颖独特，欧洲火车站风格的房间装饰给你不一样的体验。 丽昂酒店(上海新静安店)客房内有50寸液晶电视，提供宽带及无线网络，浴室内配置别具特色的热带雨林花洒。同时，床上用品选用纯白的高密织棉布、柔软的羽绒被和金可儿床垫，只为带给你舒适的睡眠。 丽昂酒店(上海新静安店)还为你提供多样的休闲娱乐设施，如全日餐厅、大堂吧、行政酒廊、公共区域WIFI、贵宾休息室、会议室、健身房、洗衣房等。', '021-62886022', 720, '160x120_40101057_0_8_0018_6.jpg', 0, 0, 0, 0, 0);
INSERT INTO `hotledetails` VALUES (24, '上海同文君亭酒店', '2', '四星级/高档型', '上海市虹口区四川北路1755号', '上海同文君亭酒店地处四川北路商业街，紧邻上海北外滩及1933老厂房、多伦路文化一条街及鲁迅公园也近在咫尺，与浦东陆家嘴金融贸易区隔江相望。从酒店到浦东陆家嘴金融贸易区，驾车约10分钟可达，地铁3、4、10号线离酒店几步之遥。酒店传承东方文化脉络，注重设计元素的运用，突显休闲时尚的氛围；仿佛站在历史与摩登的节点上，穿梭在新旧上海的百年剪影里。客房、餐厅、公共区域的环境等关键产品方面均达到高星酒店标准；百兆WIFI全面覆盖。大堂提供多功能移动商务区域，提供良好的移动商务办公环境。客房内特设的PM2.5空调过滤系统、专业消毒设施，专注你的健康，打造都市里的桃源“第三休闲”空间。', '021-60912666', 576, '160x120_40201926_0_8_1018_3.jpg', 1, 1, 1, 1, 1);
INSERT INTO `hotledetails` VALUES (25, '成都索菲斯锦苑宾馆', '5', '五星级/豪华型', '四川省成都市青羊区人民中路三段22号', '成都索菲斯锦苑宾馆位于成都市青羊区人民中路三段，交通便利，地理优越，不仅坐拥天府成都繁华CBD中心，且毗邻成都市中央休闲旅游区、中国著名的千年佛教圣地-----文殊院。\r\n　　成都索菲斯锦苑宾馆营业面积逾四万平方米，是福建诺亚方舟企业管理公司斥巨资倾情打造的一家集餐饮、住宿、会务、休闲娱乐为一体的高端智能化高星级酒店。宾馆让您拥有豪华的装饰，舒适的房间，臻馔的美食，智能会务系统及精心的管家式服务。\r\n　　走进索菲斯锦苑宾馆是您专享的尊贵特权，这里会以优质的客房、丰富的娱乐休闲设施、热情的服务，诚挚欢迎四方宾朋莅临下榻！', '028-65206666 ', 398, '160x120_50101012_0_8_1029_11.jpg', 1, 1, 1, 0, 0);
INSERT INTO `hotledetails` VALUES (26, '成都瑞城名人酒店', '5', '四星级/高档型', '\r\n四川省成都市青羊区人民中路二段68号(近太平洋百货全兴店)', '成都瑞城名人酒店位于人民中路二段，周边分布着大大小小的旅游景点，交通四通八达，美食云集，且贴心的小红裙管家还精心准备了旅游交通图，带您玩遍成都。\r\n　　酒店匠心定制不同主题的亲子房与家庭房，包含变形金刚、冰雪奇缘、蜘蛛侠、哆啦A梦等不同主题，每间客房都配备了小玩偶、小熊猫漱口杯，温暖一家人的一整个旅途。\r\n　　酒店设有客房管家，会细心地帮您整理散乱的数据线，在受凉的时候为您送来一杯热气腾腾的姜茶，烘干房间里晾晒的衣物；还设有健身房，为您提供一个自在、放松的居停空间。\r\n　　酒店的云端中餐厅位于酒店顶楼，不仅可以满足您不同味蕾和不同种类的需求，更可站在最高处看看川流不息的大街小巷；或者在悠闲的傍晚时分，点一杯咖啡或者清茶，看城市的万家灯火逐渐点亮，体验人生畅意。\r\n　　酒店的海鲜自助餐厅，现代的装修风格，宽敞舒适的用餐环境，配备了儿童乐园，给孩童一个放松自我、大小孩子互相学习玩耍的小天地。', '028-88033333', 499, '160x120_50201316_0_8_0001_2.jpg', 1, 1, 1, 1, 1);
INSERT INTO `hotledetails` VALUES (27, ' 成都宽窄巷子美居酒店', '5', '五星级/豪华型', '四川省成都市青羊区通惠门路3号', '成都宽窄巷子美居酒店坐落于拥有浓厚文化底蕴的成都青羊区宽窄巷子景区入口，临近地铁2号线通惠门站C出口和地铁4号线宽窄巷子站。与酒店临街相望步行约150米便到达以汉唐仿古建筑群为依托全长900米被称为＂爱情路＂的＂琴台故径＂北接文化公园，南连百花潭公园、杜甫草堂以及浣花风景区。\r\n　　酒店步行约10分钟可前往人民公园和天府广场，距离成都市繁华的商业中心春熙路、太古里、IFS国际金融中心约10分钟车程，酒店周边景点有青羊宫、杜甫草堂、武候祠、锦里、文殊院、大慈寺。从酒店出发前往各个美食街、娱乐休闲景点、熊猫基地也十分便利。\r\n　　这是隶属于法国雅高酒店集团旗下的全球连锁品牌酒店，拥有现代时尚温馨舒适的客房，每间客房都提供无线wifi、保险箱、冰箱、平板电视、蓝牙音响等设施设备，更为嘉宾房提供胶囊咖啡机、迷你酒吧台和舒适的阳光舒享区。在忙碌了一天之后，闻着空气中美居专属的香氛，在属于自己的私密空间内，尽享轻松浪漫的法式生活。无论是商务出行还是来成都感受安逸的慢节奏生活方式，美居酒店都将是您的上佳选择。', '028-61507888 ', 688, '160x120_200931017281651677.jpg', 0, 0, 0, 0, 0);
INSERT INTO `hotledetails` VALUES (28, '成都城市名人酒店', '5', '三星级/舒适型', '人民南路1段122~124号', '成都城市名人酒店位于成都市中心的人民南路与陕西街交汇处，地处中央商务区和文化艺术中心，临近成都博物馆、四川美术馆。酒店距天府广场地铁1、2号线出口仅步行距离。\r\n　　酒店总建筑面积6.7万平米，楼高110米,地面27层，地下3层；拥有四百余间典雅别致客房和套房，房内配设齐全。\r\n　　名人食府中餐厅主营精品粤菜并配以特色川菜，为你的商务宴请增色添彩；喝彩臻选西餐厅主营中西式自助餐，纯正的欧亚风情，为你呈上全球佳肴；泰漫时光餐厅主营泰式海鲜火锅，让你感受东南亚独特美食魅力。\r\n　　会议中心超2400平米会议宴会场地，460平米、逾6米高的无柱宴会大厅，周到专业的会议宴会服务团队，全程为你定制个性化筹划方案。元虎健身中心，配备品牌健身器材。', '028-86833333 ', 946, '160x120_a4c0f6e9-d9f6-4970-99de-a56f8f03937b.jpg', 1, 0, 1, 0, 1);
INSERT INTO `hotledetails` VALUES (29, '成都西姆善居酒店', '5', '二星级/经济型', '四川省成都市青羊区陕西街130号(陕西会馆旁)', '成都西姆善居酒店地处青羊区陕西街，是将园林庭院艺术引入酒店文化的又一成功典型。步行即可到达天府广场，毗邻机场大巴二号线、地铁及公交中转站，出行十分便捷。\r\n　　\r\n　　酒店的客房以陕西会馆为依托，环抱整个园林庭院，品四川名茶、享成都地道家乡味川菜，从而“家园身在丛林中，叶正茂，枝正繁”的感觉悠然而生。房间内设备齐全，24小时中央空调、热水，高速无缝覆盖Wifi，免费网络点播电视拥有上千部最新影片配上精美的零食和糖果，让您足不出户尽情享受网络冲浪。\r\n　　\r\n　　一楼咖啡厅早上配有精美的自助早餐，美味可口的地道成都菜让您体验到成都人家里的感觉。休闲商务自助区和阅览区配有多种饮品和水果供宾客免费享用。二楼会议室和多媒体影院厅，宾客无需前往电影院也能欣赏进口外国大片和享受劲爆的视听体验。', '028-62563888', 288, '238x147_3be41164-6072-497e-ac85-e3a9c87fc639.jpg', 1, 1, 0, 1, 1);
INSERT INTO `hotledetails` VALUES (30, '赞成宾馆(杭州国际店)', '6', '五星级/豪华型', '杭州上城区西湖金座1905', '赞成宾馆（杭州国际店）地段优越。客房温馨舒适，干净整洁，是您理想的入住场所。', '0571-87806666 ', 369, '238x147_3c4bfec5-3ff8-45f3-b7b6-cf8a3d6a9115.jpg', 1, 1, 1, 1, 1);
INSERT INTO `hotledetails` VALUES (31, '杭州西湖慢享主题酒店 ', '6', '四星级/高档型', '\r\n浙江省杭州市上城区解放路131号(浙二医院对面,毗邻西湖湖滨,茶叶市场)', '杭州西湖慢享主题酒店(原金座大酒店)位于解放路，近浙二医院；周围餐饮、娱乐等生活配套齐全，出行便利。\r\n　　酒店设计融合了当下主流消费群体所关注的生活美学与情绪体验，取细节处做精特色，于大气间彰显魅力。诗意流淌，缓慢而沉静。让享受慵懒不再是都市人群遥不可及的梦。\r\n　　酒店配置了先进的会议设施，多间会议厅可作为各类商务洽谈、培训研讨、高管聚会和私人社交的上佳选择，先进的会议器材与设施、专业的会议经理可为您提供殷勤周到的会议服务。\r\n　　酒店内桑拿及多种按摩服务为您舒缓身心，同时茶吧、酒吧、咖啡吧、智能展示区、大型地下停车库等综合配套设施一应俱全，为您的商务活动和观光度假提供便利、舒适的居停享受。\r\n　　酒店致力于以一流设施与独特个性化服务的完美结合，为您诠释新的唯您独享的尊贵感受，诚邀您前来下榻。', '0571-87926666 ', 390, '238x147_3f4e405c-cb65-41e5-9794-f7dd2fdf1011.jpg', 1, 1, 0, 1, 1);
INSERT INTO `hotledetails` VALUES (32, '杭州中维香溢大酒店', '6', '五星级/豪华型', '\r\n浙江省杭州市上城区解放路108号', '杭州中维香溢大酒店位于杭州商业繁荣的市中心，西湖至钱江CBD交通枢纽中段，交通出行十分便捷。 酒店为“中维酒店集团”旗下成员酒店，拥有三百余间各式精美客房，可照顾商务往来和休闲度假的每个细节。多种先进科技降噪手段，即使身处闹市也可独享静谧安宁的休憩空间。 4间高级食肆风味多样，高雅地道的中餐厅、日式料理，优雅浓情的咖啡阁、大堂酒廊，“香溢大厨”将技术与艺术用心融合，为嘉宾提供各种精致美味佳肴。 11个安静独立的会议空间，既有可同时容纳400人的大型多功能宴会厅，亦有面积不等的中小型会议室，适宜不同规模的公司会议、商务会展、培训研讨、高管聚会等，也是婚礼、庆典及主题餐会之上选。 集健身、美容美发、棋牌、SPA、足浴等众多项目于一体的酒店康体设施，令宾客尽情释放繁华后的压力，倍添生命活力。 顺情而系，依心而维。杭州中维香溢大酒店以中国传统情感价值为依归，致力于为宾客打造一个住宿之外情有所享的体验之旅。', '571-87218899', 498, '238x147_3f9ad8a7-a40b-460b-85e2-3a311ce61246.jpg', 1, 1, 1, 1, 1);
INSERT INTO `hotledetails` VALUES (33, '杭州马可波罗假日酒店 ', '6', '四星级/高档型', '\r\n浙江省杭州市上城区平海路38号(近浣纱路,距龙翔桥站约395米)', '杭州马可波罗假日酒店位于市中心西湖边的平海路上，距地铁1号线龙翔桥站D出口仅300米左右。2013年所有客房全新装修，全新配备消毒柜、加湿器、智能马桶盖。\r\n　　\r\n　　这是一家欧式经典风格的商务酒店，由马可波罗酒店管理公司经营管理，获“中国饭店金星奖”、浙江省“最佳品质饭店”、杭州市“最佳星级饭店”、“游客满意服务企业”等多项殊荣。\r\n　　\r\n　　酒店采用意大利风格设计，体现了“欧洲风格、绿色生活、高尚品位、自由浪漫”的特色。客房宽敞温馨，配备优质床上用品及高级洗浴用品。\r\n　　\r\n　　酒店另设香都中餐厅、吉雅家精致日料餐厅、地道意大利薄底披萨啤酒吧、地中海咖啡厅、全湖景豪华宴会厅、精品商场、专业理容中心、各类会议室、大型地下停车库等配套设施，让中外宾客享受方便、舒适、安静、周到的优质服务。', '0571-87018888', 409, '238x147_4af44633-2b36-46a7-b8ab-6daab115fc95.jpg', 0, 0, 0, 0, 0);
INSERT INTO `hotledetails` VALUES (34, '杭州马可波罗滨湖酒店', '6', '二星级/经济型', '\r\n浙江省杭州市上城区浣纱路99号', '杭州马可波罗滨湖酒店位于浣纱路和国货路交叉口的国货路上，在国货路23号正对面。近解放路，毗邻美丽的西子湖畔，与杭州解百新世纪购物中心紧密相连，出行方便快捷。\r\n　　杭州马可波罗滨湖酒店是杭州西湖边的一家精致型商务酒店，由马可波罗酒店管理公司经营管理，融合意大利经典与现代风格，设计典雅、精致细腻，体现出浓郁的人文品味和温馨浪漫的气质。\r\n　　酒店拥有各式精美客房，所有区域实现wifi全覆盖。酒店更设空中花园，让您可沐浴“吴山天风”，远眺“三潭印月”，冬赏“断桥残雪”，夏寻“曲院风荷”，为您的杭州之旅留下美妙难忘的回忆。', '0571-87922888', 476, '200e0g0000008882aDB20_R_300_225.jpg', 1, 1, 1, 1, 1);
INSERT INTO `hotledetails` VALUES (35, '凯莱熙酒店(武汉黄鹤楼户部巷店)', '7', '二星级/经济型', '湖北省武汉市武昌区解放路456号', '　凯莱熙酒店(武汉黄鹤楼户部巷店)位于武昌传统的闹市区司门口中心，南临黄鹤楼，西近武昌江滩，户部巷、昙华林等景点近在咫尺，位置优越，周边公交线路 四通八达，\r\n　　这是一家集住宿、餐饮和会议为一体的酒店，是湖北省党政机关会议定点场所之一，酒店拥有各类客房近200间，可容纳300人同时就餐的观景餐厅和各类大小的会议室。\r\n　　酒店12楼180度观景餐厅可以远眺长江第一桥和黄鹤楼的美景。酒店大厅备有武汉各大景点指示图和出游便条，为宾客的出行提供贴心服务。\r\n　　酒店细致体贴的人性化服务理念无处不在，努力为宾客营造温馨体贴的入住感受，是您商务、旅行的理想选择。', '027-50705777', 238, '200p0o000000f7hczB947_R_130_130.jpg', 0, 0, 0, 0, 0);
INSERT INTO `hotledetails` VALUES (36, '纽宾凯N+国际酒店(武汉新华路店)', '7', '二星级/经济型', '湖北省武汉市江汉区新华路151号', '　　纽宾凯N+国际酒店(武汉新华路店)位于武汉金融商业中心——新华路中段，与密集商务办公区域、数家高档购物广场和武汉国际会展中心咫尺之遥，更有风景优美的喷泉公园隔街相望。酒店距步行街仅需5分钟车程，20分钟就即可到达天河国际机场，交通极为便利。\r\n　　\r\n　　纽宾凯N+国际酒店(武汉新华路店)设有各式舒适客房，提供手提电脑、迷你音响、抽烟机、电磁炉、电子闹钟和办公文具等一系列服务设施。同时全程陪同礼宾服务和零分钟入住办理，以及专为商务客人设立的行政楼层和商务中心，为客人带来更多快捷便利。\r\n　　\r\n　　酒店拥有多间不同规模的会议室，可承接各类专业性会议。另有超大宴会厅能同时容纳200-300人，鸡尾酒会、中式围席、西式自助餐均可为您量身打造。酒店内设棋牌室、健身室、按摩室、桑拿浴室等娱乐设施供您选择，设施齐全。\r\n　　\r\n　　纽宾凯N+国际酒店(武汉新华路店)精心营造温馨生活氛围，提供细致入微的服务，力求成为您旅途中的“家外之家”。', '027-59528888', 359, '200c0y000000lx6td9DEF_R_130_130.jpg', 1, 1, 1, 0, 1);
INSERT INTO `hotledetails` VALUES (37, '红璞礼遇酒店公寓(武汉都市店)', '7', '三星级/舒适型', '\r\n湖北省武汉市江汉区发展大道236号(发展大道与马场二路交汇处)', '酒店公寓总营业面积为13000平方米，拥有两百余间复式套房，100多个专属车位；SPA美容让您忘却烦恼，全身轻松。酒店还提供24小时送餐服务、无烟楼层服务、英式管家服务、24小时总机及礼宾服务、干洗及洗衣服务、商务中心服务、秘书服务等，多种特色服务带给您宾至如归的舒适感与自在感。', '027-85501999 ', 450, '200i0o000000f98y3F277_R_300_225.jpg', 0, 0, 0, 0, 0);
INSERT INTO `hotledetails` VALUES (38, '武汉华科大希尔顿欢朋酒店', '7', '四星级/高档型', '\r\n湖北省武汉市洪山区东湖新技术开发区关山街关山二路特9号天龙投资大厦', '武汉华科大希尔顿欢朋酒店位于东湖新技术开发区关山街关山二路，不管是去车程约10分钟的光谷步行街约会好友，还是坐地铁约30分钟去看现代版清明上河图——汉街，亦或者是走路约10分钟去华中科技大学寻找书中的静谧。\r\n　　这是中国第一家3.0版本的希尔顿欢朋酒店，所以对自己有着相当高的要求：“友善、可靠、关怀、周全”是酒店的座右铭，相信可以给你快乐的入住体验。\r\n　　酒店的大堂没有设计的非常富丽堂皇，但会用真诚的微笑去点缀：酒店的配套设施也没有高大上，但绝对小而精。酒店的彼得罗夫洗浴套装可是经过层层考核过关才放到亲的房间的，还有人体工学椅和舒达床垫也都是经过亲自体验过的，体感舒服。', '027-87878566', 586, '280g0w000000klzdoB655_R_300_225.jpg', 1, 1, 1, 1, 1);
INSERT INTO `hotledetails` VALUES (39, '武汉新世界酒店 ', '7', '五星级/豪华型', '湖北省武汉市硚口区解放大道630号', '　武汉新世界酒店位于湖北省府的汉口商业区之黄金地段，拥有327间客房和套房，各项设施和服务一应俱全。酒店设有健身中心和户外游泳池，配备完善的商务设施，餐厅和酒廊奉献中式和国际风味美馔及上等佳酿。\r\n　　酒店周围遍布全球各大企业的区域总部。便利的交通让出行尽享优越，从酒店前往武汉天河国际机场仅需45分钟车程，前往汉口火车站仅需15分钟车程。酒店毗邻武汉国际广场、同济医院、协和医院，信步可达武汉国际会展中心。约500米距离即可达轨道交通1、2号线入口；距离武汉国际博览中心也仅需30分钟车程。武汉新世界酒店是新世界中心综合发展的重要组成部分，新世界中心还包括５Ａ级写字楼、K11美食广场和豪华服务式公寓。', '027-83808888', 668, '200g0k000000bh5vw3931_R_300_225.jpg', 0, 0, 0, 0, 0);
INSERT INTO `hotledetails` VALUES (40, '重庆天慕酒店 ', '8', '五星级/豪华型', '重庆市渝中区民生路235号附一号', '重庆天慕酒店位于渝中区民生路，在解放碑的至高之处，酒店客房位于海航保利国际中心54F-57F天际线上 ，坐拥360度城市景观，独揽长江，嘉陵江两江交汇奇异美景。　\r\n　　酒店由天慕（香港）酒店管理有限公司管理，作为重庆一家天际线上的轻奢酒店，拥有各具特色的客房，房内配设齐全。您不但能逍遥俯视举世闻名的山城夜景，更可以闲情漫步相距咫尺的吊脚群楼洪崖洞，千年古刹罗汉寺，怀旧国泰影院，遥遥十八梯，幽幽通远门……如果有暇体验重庆特色的轻轨，须臾可抵见证大江东去的名胜朝天门，气势恢宏的三峡博物馆等等。 \r\n　　在“手可摘星辰”的酒店57层观景咖啡吧（Talk of the Town），360度迷人江景与城市霓虹，无论您是静心品茗，亦或商务小酌，酒店都将无微不至让您自在如归。', '023-63932881', 488, '200s0j0000009xv8wA072_R_300_225.jpg', 1, 1, 1, 1, 1);
INSERT INTO `hotledetails` VALUES (41, '重庆华宇温德姆至尊豪廷大酒店', '8', '四星级/高档型', '重庆市渝北区泰山大道东段116号', '重庆华宇温德姆至尊豪廷大酒店位于渝北区泰山大道东段116号，邻近渝北龙头寺公园，交通便利。\r\n　　酒店拥有200余间精致舒适的客房及套房，每间客房均配有宽敞独立的卫生间、舒适的客床，客房和酒店公共区域均有免费无线网络覆盖，为宾客提供迅捷的网上冲浪体验。\r\n　　酒店设有3间餐厅，中餐厅、全日制餐厅、118餐厅和一个大堂酒吧能满足宾客对美食的无限期许。面积900平方米的温德姆宴会厅配套先进，另有6间面积不等的多功能厅可容纳30人至200人不等，适合各种规模的商务会议。在蓝带国际2018环球美味“卓越大厨”烹饪大赛中酒店获得“最佳飨食之所”奖项。', '023-86268888', 538, '200a070000002b5ph1B48_R_130_130.jpg', 0, 0, 0, 0, 0);
INSERT INTO `hotledetails` VALUES (42, '重庆来住·千寻空中酒店 ', '8', '三星级/舒适型', '\r\n重庆市渝中区新华路201号联合国际大厦56层', '																重庆来住·千寻空中酒店位于解放碑联合国际，楼下即地铁站，近解放碑、长江索道、洪崖洞，步行可达，距朝天门码头步行约15分钟，南山一棵树车程约15分钟，磁器口车程约30分钟，交通、出游便利。\r\n　　重庆来住·千寻空中酒店属于轻奢型酒店，提供私人管家服务，自带观景台，坐拥渝中半岛、两江交汇等美夜景视野，泡在浴缸里就能享受到重庆百万夜景。房内设有电视、空调、冰箱、智能马桶等电器设施。\r\n　　酒店公区设有电梯、音响、书架、望远镜等娱乐设施，还提供精致早餐，加送晚安牛奶，配套餐饮及送洗衣物服务，配备轻奢级洗浴用品，香薰机等。许你一场触觉、视觉、嗅觉的完美感官体验。\r\n                \r\n                \r\n                \r\n                ', '023-60338199', 688, 'de50420b-f79e-47ef-8082-ee8833a3e62bQQ图片20181226111811.jpg', 1, 1, 1, 1, 1);
INSERT INTO `hotledetails` VALUES (43, '重庆斯维登服务公寓(解放碑协信公馆)', '8', '二星级/经济型', '\r\n重庆市渝中区1号桥华一路协信公馆4号楼(1号桥往华一路200米处)', '重庆斯维登服务公寓(解放碑协信公馆)地处重庆解放碑CBD中心区域，距离洪崖洞风景区约500米，距离解放碑步行街约1公里，向北俯瞰重庆大剧院、江北嘴金融中心，坐拥渝中半岛上佳区位；周边地铁1号线、轻轨2号线、以及20余条公交线路直通江北、南岸、沙坪坝、两江新区。重庆老火锅、霹雳火大排档、醉八仙老酒馆、重庆50强小面等特色餐饮汇聚于此。\r\n　　公寓客房宽敞、装修精致，房型格局丰富多样，厨房、洗衣机等配套设备一应俱全；为您的旅途带来前所未有的居家体验。公寓同时配有收费停车场、室内收费游泳池、健身区域等设施。\r\n　　入住这里，您可在此体验现代的重庆时尚，感受独特的山城文化，享受悠闲舒适的度假生活。', '023-61219666', 278, '200a0f0000007ezaz7FC2_R_130_130.jpg', 1, 1, 1, 1, 1);
INSERT INTO `hotledetails` VALUES (44, '重庆时代长江精品酒店 ', '8', '二星级/经济型', '重庆市渝中区长滨路136号', '重庆时代长江精品酒店是重庆新开的酒店之一，于2016-10-01正式运营。从酒店到重庆江北国际机场24km远，到重庆北站10km远，均很便捷。除此之外，至小什字地铁站只需步行前往。包括长江索道和洪崖洞商业街都在酒店周边，对于入住旅客想在该地区畅游会很方便。\r\n所有极具特色的客房都配备有雨伞、熨衣设备和空调，让您感受到更加贴心细致的入住体验。电热水壶和免费瓶装水可供使用，便捷的客房设施定能让您倍感舒适。倘若您在忙碌的一天后想在自己的客房内放松，提供拖鞋、24小时热水和吹风机的客房浴室是不错的选择。酒店内的中餐厅供应特色菜肴，来满足旅客的需求。大堂吧旨在为旅客和您的朋友提供一处消遣的场所。如果旅客想在自己的房间舒适的用餐，酒店可提供客房服务。如果您觉得在入住饮食方面仅限于此，那不妨去看看附近杨记隆府（川菜）、胖妹面庄(中华巷店)（小吃）和尘香（川菜）络绎不绝的人流吧！杨府招牌鱼、碗杂面和秘酱三文鱼分别是每家为您精心推荐的美食。', '18223358848', 228, '200k0q000000grmggDEC9_R_300_225.jpg', 0, 0, 0, 0, 1);
INSERT INTO `hotledetails` VALUES (45, '长沙中国城戴斯酒店', '9', '二星级/经济型', '湖南省长沙市芙蓉区解放东路233号(解放东路与曙光北路交叉口)', '长沙中国城戴斯酒店位于长沙市中心区，五一广场商圈和火车站商圈交汇处，是市政治、经济、文化、娱乐、商务、交通的核心区域。作为商务部定点“国际官员研修基地”，每年接待大量高级国际官员，酒店艺术房让许多国际国内大腕名家流连忘返。\r\n　　酒店约3公里内涵括：IFS国金中心、五一广场、黄兴路步行街、友谊阿波罗商场等地标性购物圣地；解放西路、长沙老字号火宫殿、酒吧一条街等美食娱乐场所。\r\n　　酒店结合国际奢华酒店设计理念，客房大气经典，每月红外线消毒灭菌。餐饮、会议、娱乐、商务、休闲等项目，均汇集长沙头号品牌，完美演绎现代都市的高端时尚生活。\r\n　　酒店秉承“阳光品质、价值之选”的服务理念，为世界各国宾客带来温馨的服务体验，无论您是商务出差还是休闲度假，这里都是您最理想的居停之所。', '0731-88286666', 499, '3c63d569f471423d86118502320ccade_R_300_225.jpg', 1, 1, 1, 1, 1);
INSERT INTO `hotledetails` VALUES (46, '长沙芙蓉中路中成亚朵酒店', '9', '二星级/经济型', '湖南省长沙市开福区芙蓉中路430号', '长沙芙蓉中路中成亚朵酒店雄踞于市中心商务及金融区黄金地段的芙蓉芙蓉中路一段442号新湖南大厦，酒店客房均在49层到54层。湘江风景，长沙的城市景观尽收眼底。酒店毗邻五一广场商圈、省博物馆、橘子洲、岳麓山。', '0731-88788878', 545, '200c0w000000ku4ke4B77_R_130_130.jpg', 1, 1, 1, 1, 1);
INSERT INTO `hotledetails` VALUES (47, '长沙融程花园酒店', '9', '三星级/舒适型', '湖南省长沙市雨花区湘府中路9号', '长沙融程花园酒店地处长沙CPD和CBD黄金地段，政治、经济、文化中心，为湖南白金高星级花园式酒店。酒店拥有华南地区较大的市政花园广场，草木掩映、绿茵缤纷。湖南省人民政府、各省厅局单位、湘府文化公园、省植物森林公园、省艺术馆、省音乐厅、省科技馆尽在咫尺，交通便利，环境优雅。\r\n　　酒店设施设备配备齐全，拥有四百余间精美客房，空间宽广、舒适，奢华却不失温馨，处处充满了细心关怀。', '0731-88778888 ', 499, '200p0x000000l2wkiEA62_R_130_130.jpg', 0, 0, 0, 0, 0);
INSERT INTO `hotledetails` VALUES (48, '长沙品酒店 ', '9', '四星级/高档型', '\r\n湖南省长沙市开福区营盘路6号潮宗御苑D栋', '长沙品酒店是湖南省首家体验式卖场酒店，酒店主体建筑共30层，拥有具有中式特色且坐拥湘江一线风景的温馨客房，酒店WIFI全面覆盖、免费阅读书屋、中西式茶餐厅，让您尽享湖湘文化。酒店与长沙标志性建筑——万达广场毗邻而建，临近五一商圈，地铁2号线湘江中路站地铁1号线培元桥站近在咫尺，环境优美，交通便利，是商旅客人款待宾朋、休闲栖息的首选之地。做您所想，把余下的交给我们！', '731-88331111 ', 399, '200o0u000000ix53dFAC5_R_130_130.jpg', 0, 0, 0, 0, 0);
INSERT INTO `hotledetails` VALUES (49, '长沙顺天凯宾斯基酒店', '9', '五星级/豪华型', '湖南省长沙市雨花区韶山中路419号', '长沙顺天凯宾斯基酒店位于商业主干道的韶山中路，地处充满活力的雨花亭商圈腹地，毗邻火车站、黄花国际机场等，周边大型超市、购物广场林立，交通发达。\r\n　　长沙顺天凯宾斯基酒店拥有多种房型供您选择，房间宽敞明亮，豪华舒适，并配以先进的设施设备，给您带来尊贵的体验以及高端的享受。\r\n　　酒店另设有1个国际会议中心，其中包括1个2100平方米中空无柱式大宴会厅及8间多功能会议厅和1间豪华贵宾会议室，可同时容纳1200位宾客的会议或庆典活动。\r\n　　酒店还配有风格迥异的三大主题餐厅和酒吧，云集来自世界各地的厨师，为您呈现精彩纷呈的美食体验，让您的舌尖体验遨游世界和尽享身心放松的美妙之旅。您不仅可在元素西餐厅乐享令人垂涎的饕餮自助美食，还可移步至祈顺中餐厅领略独具特色的粤湘佳肴，更可在普拉那现酿啤酒吧与亲朋好友欢聚畅饮新鲜的德国纯正啤酒，还有正宗巴伐利亚美食，绝对让您大快朵颐。', '0731-84633333', 868, '200b0e00000073u089FB4_R_300_225.jpg', 0, 0, 0, 0, 0);
INSERT INTO `hotledetails` VALUES (50, '南京金鹰国际酒店', '10', '四星级/高档型', '江苏省南京市秦淮区汉中路101号金鹰中心B座', '南京金鹰国际酒店坐落于新街口金鹰商城B座，位于地铁1、2号线的交汇点，乘地铁可轻松到达著名的夫子庙、玄武湖、总统府、中山陵，至南京火车站、高铁南站也很是便捷。\r\n　　这里的每间客房均撷取民国风格之菁华，配全景落地窗、48寸LED液晶电视、BOSE音响系统、现磨咖啡机、超大洗漱空间、欧舒丹洗浴用品以及思涟床具等。', '025-86678888', 828, '200d070000002en2811DC_R_300_225.jpg', 1, 1, 1, 1, 1);
INSERT INTO `hotledetails` VALUES (51, '南京玄武饭店', '10', '五星级/豪华型', '江苏省南京市鼓楼区中央路193号', '南京金鹰珠江壹号国际酒店地处南京新街口商圈内，傲居城市中轴中山路与珠江路黄金交汇点，城市CBD中央，省市政府两大政务中心聚集地，紧邻南京大学、东南大学两大著名学府，距总统府、玄武湖等主要景点约5分钟车程；同时酒店与地铁1号线及金鹰国际购物中心（珠江路店）紧密直连，购物中心汇聚众多国际一线名品、G-Mart超市、亲子乐园、特色餐饮等。\r\n　　酒店客房整洁舒适，房内均配有大屏幕液晶电视、卫星电视频道、高速宽带接入、落地观景玻璃窗、一流的卫浴设备与卧具等。管家式服务为你营造家的温馨和办公便捷；入住行政楼层的贵宾更可享受独立秘书台的专业服务和多项尊贵礼遇。', '025-83218888', 580, '200d0z000000miioqCE84_R_130_130.jpg', 1, 1, 0, 0, 0);
INSERT INTO `hotledetails` VALUES (52, '南京金鹰珠江壹号国际酒店', '10', '四星级/高档型', '江苏省南京市玄武区珠江路1号金鹰国际购物中心F1', '南京金鹰珠江壹号国际酒店地处南京新街口商圈内，傲居城市中轴中山路与珠江路黄金交汇点，城市CBD中央，省市政府两大政务中心聚集地，紧邻南京大学、东南大学两大著名学府，距总统府、玄武湖等主要景点约5分钟车程；同时酒店与地铁1号线及金鹰国际购物中心（珠江路店）紧密直连，购物中心汇聚众多国际一线名品、G-Mart超市、亲子乐园、特色餐饮等。\r\n　　酒店客房整洁舒适，房内均配有大屏幕液晶电视、卫星电视频道、高速宽带接入、落地观景玻璃窗、一流的卫浴设备与卧具等。管家式服务为你营造家的温馨和办公便捷；入住行政楼层的贵宾更可享受独立秘书台的专业服务和多项尊贵礼遇。', '025-83218888 ', 580, '200f0x000000l1swq31CF_R_300_225.jpg', 0, 1, 1, 0, 1);
INSERT INTO `hotledetails` VALUES (53, '南京古南都饭店', '10', '三星级/舒适型', '江苏省南京市鼓楼区广州路208号', '南京古南都饭店位于南京市的中心地带——新街口地区，与江苏省五台山体育中心隔街相，是一家豪华商务饭店。饭店附近集中了南京大学、南京师范大学、河海大学等全国著名高等学府及多家金融商贸以及南京市儿童医院，省人民医院、省中医院等医疗机构；周边餐饮、娱乐、休闲及健身场所林立。饭店地理位置优越，人文气氛浓郁；交通便利，闹中取静。 \r\n　　南京古南都饭店共26层，总高度104米，拥有各类装饰雅致、配备完好的高档客房。客房提供个性化贴身式管家服务，为宾客创造温馨的“家外之家”。饭店客房在2003年全新装修，每间房间均设有直接饮用水系统，还特设置了适合居家旅游或长包长住的带独立厨房的豪华公寓房。饭店设有中餐、西餐、日餐各具特色；东方园林风格的屋顶花园空气清新，鸟语花香，为您的商旅之途倍添休闲情趣。', '025-86822907', 487, '2008070000002en2bA1ED_R_300_225.jpg', 1, 0, 1, 0, 1);
INSERT INTO `hotledetails` VALUES (55, '深圳和平酒店(机场店）', '4', '三星级/舒适型', '广东省深圳市宝安区福永镇永和路42号', '																																											公司公司的根本都是\n                \n                \n                \n                \n                \n                \n                \n                \n                \n                \n                \n                \n                \n                \n                ', '123456', 500, '4a1e8d3d-6d46-41d2-a4bb-6c6826f40f1bQQ图片20181226111705.jpg', 1, 0, 1, 0, 0);
INSERT INTO `hotledetails` VALUES (94, '德玛西亚情侣酒店', '2', '五星级/豪华型', '上海新天地商场4楼厕所', '																\r\n            香的一批\r\n                \r\n                \r\n                ', '110', 8888, '1d46124b-f04a-49ce-90f6-53808be96349屏幕截图(3).png', 1, 1, 1, 1, 1);
INSERT INTO `hotledetails` VALUES (96, '今天酒店', '1', '五星级/豪华型', '郴州下水道', '												\n                黑店一枚\n                \n                ', '18745168154', 8888, '0a3f59a6-3f17-44a5-90a5-fc810590e357u=2405961481,2465089007&fm=26&gp=0.jpg', 0, 0, 0, 1, 0);
INSERT INTO `hotledetails` VALUES (102, ' 郴州国际大酒店', '11', '四星级/高档型', '湖南省郴州市北湖区人民西路17号(近汽车总站)', '				\r\n                很好', '18873505588', 199, '15482931-4f84-44be-a454-7af2299e26d5u=3283853477,691497151&fm=26&gp=0.jpg', 1, 0, 1, 1, 0);

-- ----------------------------
-- Table structure for hotlefacilities
-- ----------------------------
DROP TABLE IF EXISTS `hotlefacilities`;
CREATE TABLE `hotlefacilities`  (
  `facilitiesid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `rommid` int(11) NOT NULL COMMENT '酒店表id',
  `bed` int(11) NOT NULL COMMENT '床位',
  `hotlePrice` double NULL DEFAULT NULL COMMENT '房间价格',
  `hoteStock` int(11) NULL DEFAULT NULL COMMENT '库存',
  `hotletype` int(11) NULL DEFAULT NULL COMMENT '酒店房间类型(1标准间,2.双人间,3.商务房,4.总统套房)',
  `rice` int(11) NULL DEFAULT NULL COMMENT '床的米数',
  PRIMARY KEY (`facilitiesid`) USING BTREE,
  INDEX `facilitiesid`(`facilitiesid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 95 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of hotlefacilities
-- ----------------------------
INSERT INTO `hotlefacilities` VALUES (1, 1, 2, 388, 5, 1, 16);
INSERT INTO `hotlefacilities` VALUES (2, 2, 1, 288, 5, 2, 17);
INSERT INTO `hotlefacilities` VALUES (3, 3, 2, 488, 5, 2, 14);
INSERT INTO `hotlefacilities` VALUES (4, 4, 2, 188, 5, 1, 12);
INSERT INTO `hotlefacilities` VALUES (5, 5, 3, 588, 5, 1, 12);
INSERT INTO `hotlefacilities` VALUES (6, 6, 4, 399, 5, 3, 12);
INSERT INTO `hotlefacilities` VALUES (7, 7, 2, 220, 5, 1, 12);
INSERT INTO `hotlefacilities` VALUES (8, 8, 3, 150, 5, 1, 13);
INSERT INTO `hotlefacilities` VALUES (9, 9, 1, 100, 5, 1, 12);
INSERT INTO `hotlefacilities` VALUES (10, 10, 2, 160, 5, 1, 12);
INSERT INTO `hotlefacilities` VALUES (11, 11, 4, 130, 5, 3, 12);
INSERT INTO `hotlefacilities` VALUES (12, 12, 1, 130, 5, 2, 12);
INSERT INTO `hotlefacilities` VALUES (13, 13, 3, 130, 5, 1, 12);
INSERT INTO `hotlefacilities` VALUES (14, 14, 2, 130, 5, 2, 12);
INSERT INTO `hotlefacilities` VALUES (15, 15, 4, 130, 5, 2, 12);
INSERT INTO `hotlefacilities` VALUES (16, 16, 3, 130, 5, 1, 12);
INSERT INTO `hotlefacilities` VALUES (17, 17, 2, 130, 5, 1, 12);
INSERT INTO `hotlefacilities` VALUES (18, 18, 3, 130, 5, 2, 12);
INSERT INTO `hotlefacilities` VALUES (19, 19, 1, 130, 5, 3, 12);
INSERT INTO `hotlefacilities` VALUES (20, 20, 4, 130, 5, 2, 12);
INSERT INTO `hotlefacilities` VALUES (21, 21, 3, 180, 5, 3, 12);
INSERT INTO `hotlefacilities` VALUES (22, 22, 4, 180, 5, 3, 12);
INSERT INTO `hotlefacilities` VALUES (23, 23, 1, 180, 5, 1, 12);
INSERT INTO `hotlefacilities` VALUES (24, 24, 2, 180, 5, 1, 12);
INSERT INTO `hotlefacilities` VALUES (25, 25, 3, 180, 5, 2, 12);
INSERT INTO `hotlefacilities` VALUES (26, 26, 4, 180, 5, 2, 12);
INSERT INTO `hotlefacilities` VALUES (27, 27, 4, 180, 5, 3, 12);
INSERT INTO `hotlefacilities` VALUES (28, 28, 3, 180, 5, 3, 12);
INSERT INTO `hotlefacilities` VALUES (29, 29, 3, 180, 5, 1, 12);
INSERT INTO `hotlefacilities` VALUES (30, 30, 2, 180, 5, 1, 12);
INSERT INTO `hotlefacilities` VALUES (31, 31, 3, 180, 5, 1, 12);
INSERT INTO `hotlefacilities` VALUES (32, 32, 3, 180, 5, 3, 12);
INSERT INTO `hotlefacilities` VALUES (33, 33, 1, 200, 5, 3, 12);
INSERT INTO `hotlefacilities` VALUES (34, 34, 1, 200, 5, 3, 12);
INSERT INTO `hotlefacilities` VALUES (35, 35, 4, 200, 5, 4, 12);
INSERT INTO `hotlefacilities` VALUES (36, 36, 3, 200, 5, 2, 12);
INSERT INTO `hotlefacilities` VALUES (37, 37, 3, 200, 5, 2, 12);
INSERT INTO `hotlefacilities` VALUES (38, 38, 2, 200, 5, 3, 12);
INSERT INTO `hotlefacilities` VALUES (39, 39, 4, 200, 5, 3, 12);
INSERT INTO `hotlefacilities` VALUES (40, 40, 3, 69, 5, 1, 12);
INSERT INTO `hotlefacilities` VALUES (41, 41, 3, 140, 5, 1, 13);
INSERT INTO `hotlefacilities` VALUES (42, 42, 2, 140, 5, 1, 13);
INSERT INTO `hotlefacilities` VALUES (43, 43, 3, 140, 5, 2, 13);
INSERT INTO `hotlefacilities` VALUES (44, 44, 2, 140, 5, 2, 13);
INSERT INTO `hotlefacilities` VALUES (45, 45, 2, 288, 5, 1, 15);
INSERT INTO `hotlefacilities` VALUES (46, 46, 3, 190, 5, 3, 15);
INSERT INTO `hotlefacilities` VALUES (47, 47, 2, 190, 5, 3, 15);
INSERT INTO `hotlefacilities` VALUES (48, 48, 3, 190, 5, 2, 15);
INSERT INTO `hotlefacilities` VALUES (49, 49, 2, 190, 5, 1, 15);
INSERT INTO `hotlefacilities` VALUES (50, 50, 4, 190, 5, 1, 15);
INSERT INTO `hotlefacilities` VALUES (51, 51, 3, 190, 5, 2, 15);
INSERT INTO `hotlefacilities` VALUES (52, 52, 2, 190, 5, 4, 14);
INSERT INTO `hotlefacilities` VALUES (53, 53, 4, 190, 5, 2, 13);
INSERT INTO `hotlefacilities` VALUES (54, 54, 2, 190, 5, 1, 12);
INSERT INTO `hotlefacilities` VALUES (55, 1, 3, 190, 5, 2, 20);
INSERT INTO `hotlefacilities` VALUES (56, 2, 2, 199, 5, 1, 14);
INSERT INTO `hotlefacilities` VALUES (57, 1, 1, 499, 5, 4, 30);
INSERT INTO `hotlefacilities` VALUES (58, 90, 1, 100, 5, 1, 12);
INSERT INTO `hotlefacilities` VALUES (71, 89, 2, 100, 5, 1, 12);
INSERT INTO `hotlefacilities` VALUES (77, 87, 2, 200, 5, 2, 20);
INSERT INTO `hotlefacilities` VALUES (81, 92, 1, 1, 5, 1, 11);
INSERT INTO `hotlefacilities` VALUES (82, 93, 1, 100, 5, 1, 12);
INSERT INTO `hotlefacilities` VALUES (83, 93, 2, 200, 5, 2, 12);
INSERT INTO `hotlefacilities` VALUES (84, 93, 3, 100, 5, 3, 20);
INSERT INTO `hotlefacilities` VALUES (85, 94, 1, 120, 5, 1, 10);
INSERT INTO `hotlefacilities` VALUES (86, 96, 1, 199, 5, 1, 14);
INSERT INTO `hotlefacilities` VALUES (88, 100, 1, 199, 5, 1, 3);
INSERT INTO `hotlefacilities` VALUES (89, 100, 2, 299, 5, 2, 4);
INSERT INTO `hotlefacilities` VALUES (91, 101, 1, 299, 5, 1, 3);
INSERT INTO `hotlefacilities` VALUES (92, 102, 2, 299, 5, 2, 3);
INSERT INTO `hotlefacilities` VALUES (93, 102, 1, 199, 2, 1, 12);

-- ----------------------------
-- Table structure for hotleimage
-- ----------------------------
DROP TABLE IF EXISTS `hotleimage`;
CREATE TABLE `hotleimage`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rommid` int(11) NULL DEFAULT NULL COMMENT '酒店（rommid）',
  `hotleimage` varchar(225) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 136 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of hotleimage
-- ----------------------------
INSERT INTO `hotleimage` VALUES (2, 2, 'sl1.jpg');
INSERT INTO `hotleimage` VALUES (3, 3, 'amj1.jpg');
INSERT INTO `hotleimage` VALUES (4, 4, 'ht1.jpg');
INSERT INTO `hotleimage` VALUES (5, 5, 'hf1.Jpg');
INSERT INTO `hotleimage` VALUES (6, 6, 'mlh1.jpg');
INSERT INTO `hotleimage` VALUES (8, 54, 'jsfh.jpg');
INSERT INTO `hotleimage` VALUES (9, 54, 'jsfh2.jpg');
INSERT INTO `hotleimage` VALUES (10, 53, 'gndfd1.jpg');
INSERT INTO `hotleimage` VALUES (11, 53, 'gndfd2.jpg');
INSERT INTO `hotleimage` VALUES (12, 52, 'jyzjh1.jpg');
INSERT INTO `hotleimage` VALUES (13, 52, 'jyzjh2.jpg');
INSERT INTO `hotleimage` VALUES (14, 51, 'njxw1.jpg');
INSERT INTO `hotleimage` VALUES (15, 51, 'njxw2.jpg');
INSERT INTO `hotleimage` VALUES (16, 45, 'zgcdsjd.jpg');
INSERT INTO `hotleimage` VALUES (17, 45, 'zgcdsjd2.jpg');
INSERT INTO `hotleimage` VALUES (18, 49, 'stkbsj1.jpg');
INSERT INTO `hotleimage` VALUES (19, 49, 'stkbsj2.jpg');
INSERT INTO `hotleimage` VALUES (20, 47, 'rchyjd1.jpg');
INSERT INTO `hotleimage` VALUES (21, 47, 'rchyjd2.jpg');
INSERT INTO `hotleimage` VALUES (22, 48, 'cspjd1.jpg');
INSERT INTO `hotleimage` VALUES (23, 48, 'cspjd2.jpg');
INSERT INTO `hotleimage` VALUES (24, 46, 'frzlzcyd1.jpg');
INSERT INTO `hotleimage` VALUES (25, 46, 'frzlzcyd2.jpg');
INSERT INTO `hotleimage` VALUES (26, 41, 'wdmdjd1.jpg');
INSERT INTO `hotleimage` VALUES (27, 41, 'wdmdjd2.jpg');
INSERT INTO `hotleimage` VALUES (28, 42, 'qxkzjd1.jpg');
INSERT INTO `hotleimage` VALUES (29, 42, 'qxkzjd2.jpg');
INSERT INTO `hotleimage` VALUES (30, 44, 'cjjpjd1.jpg');
INSERT INTO `hotleimage` VALUES (31, 44, 'cjjpjd2.jpg');
INSERT INTO `hotleimage` VALUES (32, 43, 'swdfwgy1.jpg');
INSERT INTO `hotleimage` VALUES (33, 43, 'swdfwgy2.jpg');
INSERT INTO `hotleimage` VALUES (34, 41, 'cqtmjd1.jpg');
INSERT INTO `hotleimage` VALUES (35, 41, 'cqtmjd2.jpg');
INSERT INTO `hotleimage` VALUES (36, 37, 'hglyjdgx1.jpg');
INSERT INTO `hotleimage` VALUES (37, 37, 'hglyjdgx2.jpg');
INSERT INTO `hotleimage` VALUES (38, 35, 'klxjd1.jpg');
INSERT INTO `hotleimage` VALUES (39, 35, 'klxjd2.jpg');
INSERT INTO `hotleimage` VALUES (40, 36, 'nbkn1.jpg');
INSERT INTO `hotleimage` VALUES (41, 36, 'nbkn2.jpg');
INSERT INTO `hotleimage` VALUES (42, 38, 'whhkdxe1.jpg');
INSERT INTO `hotleimage` VALUES (43, 38, 'whhkdxe2.jpg');
INSERT INTO `hotleimage` VALUES (44, 39, 'whxsj1.jpg');
INSERT INTO `hotleimage` VALUES (45, 39, 'whxsj2.jpg');
INSERT INTO `hotleimage` VALUES (46, 34, 'mkbl1.jpg');
INSERT INTO `hotleimage` VALUES (47, 34, 'mkbl1.jpg');
INSERT INTO `hotleimage` VALUES (48, 33, 'mkbljrjd1.jpg');
INSERT INTO `hotleimage` VALUES (49, 33, 'mkbljrjd2.jpg');
INSERT INTO `hotleimage` VALUES (50, 31, 'xhmxztjd1.jpg');
INSERT INTO `hotleimage` VALUES (51, 31, 'xhmxztjd1.jpg');
INSERT INTO `hotleimage` VALUES (52, 30, 'xhmxzt1.jpg');
INSERT INTO `hotleimage` VALUES (53, 30, 'xhmxzt2.jpg');
INSERT INTO `hotleimage` VALUES (54, 32, 'zwxydjd1.jpg');
INSERT INTO `hotleimage` VALUES (55, 32, 'zwxydjd2.jpg');
INSERT INTO `hotleimage` VALUES (56, 17, 'zcbg1.jpg');
INSERT INTO `hotleimage` VALUES (57, 17, 'zcbg1.jpg');
INSERT INTO `hotleimage` VALUES (58, 26, 'cdcsmrjd2.jpg');
INSERT INTO `hotleimage` VALUES (59, 26, 'cdcsmrjd2.jpg');
INSERT INTO `hotleimage` VALUES (60, 27, 'cdkzxzmjjd1.jpg');
INSERT INTO `hotleimage` VALUES (61, 27, 'cdkzxzmjjd1.jpg');
INSERT INTO `hotleimage` VALUES (62, 28, 'cdrcmrjd1.jpg');
INSERT INTO `hotleimage` VALUES (63, 28, 'cdrcmrjd1.jpg');
INSERT INTO `hotleimage` VALUES (64, 25, 'cdsfsjfbg1.jpg');
INSERT INTO `hotleimage` VALUES (65, 25, 'cdsfsjfbg1.jpg');
INSERT INTO `hotleimage` VALUES (66, 29, 'cdxmmjkd1.jpg');
INSERT INTO `hotleimage` VALUES (67, 29, 'cdxmmjkd1.jpg');
INSERT INTO `hotleimage` VALUES (68, 8, 'bjdjmgfs1.Jpg');
INSERT INTO `hotleimage` VALUES (69, 8, 'bjdjmgfs1.Jpg');
INSERT INTO `hotleimage` VALUES (70, 10, 'bjhfbg1.jpg');
INSERT INTO `hotleimage` VALUES (71, 10, 'bjhfbg2.jpg');
INSERT INTO `hotleimage` VALUES (72, 7, 'bjrabg1.jpg');
INSERT INTO `hotleimage` VALUES (73, 7, 'bjrabg2.jpg');
INSERT INTO `hotleimage` VALUES (74, 9, 'bjsddjd1.jpg');
INSERT INTO `hotleimage` VALUES (75, 9, 'bjsddjd2.jpg');
INSERT INTO `hotleimage` VALUES (76, 5, 'bjzylhfswjd1.jpg');
INSERT INTO `hotleimage` VALUES (77, 5, 'bjzylhfswjd2.jpg');
INSERT INTO `hotleimage` VALUES (78, 3, 'amjdjd1.jpg');
INSERT INTO `hotleimage` VALUES (79, 3, 'amjdjd2.jpg');
INSERT INTO `hotleimage` VALUES (80, 1, 'czbg1.jpg');
INSERT INTO `hotleimage` VALUES (81, 1, 'czbg2.jpg');
INSERT INTO `hotleimage` VALUES (82, 11, 'czzybgsxld1.jpg');
INSERT INTO `hotleimage` VALUES (83, 11, 'czzybgsxld1.jpg');
INSERT INTO `hotleimage` VALUES (84, 1, 'czbg3.jpg');
INSERT INTO `hotleimage` VALUES (85, 1, 'czbg4.jpg');
INSERT INTO `hotleimage` VALUES (86, 1, 'czbg5.jpg');
INSERT INTO `hotleimage` VALUES (87, 1, 'czbg6.jpg');
INSERT INTO `hotleimage` VALUES (88, 1, 'czbg7.jpg');
INSERT INTO `hotleimage` VALUES (89, 2, 'xs1.jpg');
INSERT INTO `hotleimage` VALUES (90, 2, 'xs2.jpg');
INSERT INTO `hotleimage` VALUES (91, 2, 'xs3.jpg');
INSERT INTO `hotleimage` VALUES (92, 2, 'xs4.jpg');
INSERT INTO `hotleimage` VALUES (93, 2, 'xs5.jpg');
INSERT INTO `hotleimage` VALUES (94, 2, 'xs6.jpg');
INSERT INTO `hotleimage` VALUES (95, 2, 'xs7.jpg');
INSERT INTO `hotleimage` VALUES (118, 96, '8e513097-6a40-4f01-8bec-905103f5902d屏幕截图(1).png');
INSERT INTO `hotleimage` VALUES (119, 96, 'fd02de6f-62d7-44b3-a977-0ce6352481b5160x120_40101004_0_8_1036_4.jpg');
INSERT INTO `hotleimage` VALUES (120, 96, 'c19aa354-5dfc-4edf-acef-5e6b75e89f4c18b802f0eb835f7e-f90693c95e6a93be-c5ff88da9ec2f2faf772a07b8a56687d.jpg');
INSERT INTO `hotleimage` VALUES (121, 96, '71c36625-c2ab-49d3-883f-1fe1e7e018b9u=2108281870,1043929557&fm=26&gp=0.jpg');
INSERT INTO `hotleimage` VALUES (124, 55, 'a78d87d5-c71b-426e-aafd-4e93eefcabdeu=3075970256,1227648066&fm=26&gp=0.jpg');
INSERT INTO `hotleimage` VALUES (125, 55, '199fe5c2-bde8-4193-aa4c-0ccc0891a0ccu=3233672820,102194985&fm=26&gp=0.gif');
INSERT INTO `hotleimage` VALUES (126, 94, 'ce0aa6d9-f892-4b2a-b811-2bbeabd8da49u=3075970256,1227648066&fm=26&gp=0.jpg');
INSERT INTO `hotleimage` VALUES (127, 96, '248ca7f0-1182-47b5-b7f7-1a131f0707d7_}72SLB{_390]7~GLI$C_9I.jpg');
INSERT INTO `hotleimage` VALUES (128, 96, 'f79eed3f-3fa1-4829-b86f-2542e7d05236u=2405961481,2465089007&fm=26&gp=0.jpg');
INSERT INTO `hotleimage` VALUES (129, 100, '437143f5-6511-46d6-a611-c6ed4242d640dc72c3c04ef01fdf-22176402958c6b80-905bd70751b08a1c0359aa1f57932314.jpg');
INSERT INTO `hotleimage` VALUES (130, 100, 'c48a6f95-a6a6-4230-a88d-9b48f6b195efu=3283853477,691497151&fm=26&gp=0.jpg');
INSERT INTO `hotleimage` VALUES (131, 100, 'bf324e1b-9df7-4dd1-9b1b-73d929e27580u=3075970256,1227648066&fm=26&gp=0.jpg');
INSERT INTO `hotleimage` VALUES (133, 102, '791def3d-1102-4576-9ed9-ffe2c2b90364u=3233672820,102194985&fm=26&gp=0.gif');
INSERT INTO `hotleimage` VALUES (134, 102, '5cf64f55-2d8c-4eff-9be4-7b431f3a5078u=2108281870,1043929557&fm=26&gp=0.jpg');
INSERT INTO `hotleimage` VALUES (135, 102, '9304f95f-6fa5-4fe5-9790-c55c523600fdu=2386471689,1778460201&fm=26&gp=0.jpg');

-- ----------------------------
-- Table structure for hotleposition
-- ----------------------------
DROP TABLE IF EXISTS `hotleposition`;
CREATE TABLE `hotleposition`  (
  `id` int(11) NOT NULL COMMENT '地理位置编号',
  `position` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地理位置',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of hotleposition
-- ----------------------------
INSERT INTO `hotleposition` VALUES (1, '北京');
INSERT INTO `hotleposition` VALUES (2, '上海');
INSERT INTO `hotleposition` VALUES (3, '广州');
INSERT INTO `hotleposition` VALUES (4, '深圳');
INSERT INTO `hotleposition` VALUES (5, '成都');
INSERT INTO `hotleposition` VALUES (6, '杭州');
INSERT INTO `hotleposition` VALUES (7, '武汉');
INSERT INTO `hotleposition` VALUES (8, '重庆');
INSERT INTO `hotleposition` VALUES (9, '长沙');
INSERT INTO `hotleposition` VALUES (10, '南京');
INSERT INTO `hotleposition` VALUES (11, '郴州');
INSERT INTO `hotleposition` VALUES (12, '江西');

-- ----------------------------
-- Table structure for hotlereserve
-- ----------------------------
DROP TABLE IF EXISTS `hotlereserve`;
CREATE TABLE `hotlereserve`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `telephone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `facilitiesid` int(11) NULL DEFAULT NULL COMMENT '外键对应设施表',
  `roomnum` int(11) NULL DEFAULT NULL COMMENT '房间数量',
  `money` double NULL DEFAULT NULL COMMENT '价钱',
  `checkname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '入住人姓名',
  `userid` int(11) NULL DEFAULT NULL COMMENT '对应用户表',
  `checkdate` datetime NULL DEFAULT NULL COMMENT '入住日期',
  `enddate` datetime NULL DEFAULT NULL COMMENT '离开日期',
  `reservestate` int(11) NULL DEFAULT 1 COMMENT '订单状态(1.待付款,2.已付款3.退订)',
  `orderrandom` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rommid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 87 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of hotlereserve
-- ----------------------------
INSERT INTO `hotlereserve` VALUES (34, '216156@163.com', '18873536521', 1, 2, 976, '蒋克文', 33, '2019-01-12 14:31:37', '2019-01-13 12:00:00', 2, '2019011214313788316', 1);
INSERT INTO `hotlereserve` VALUES (81, '16@qq.com', '18873504754', 1, 1, 388, '李先生', 33, '2019-01-17 23:51:01', '2019-01-18 12:00:00', 1, '2019011723510112410', 1);
INSERT INTO `hotlereserve` VALUES (82, 'jkw@163.com', '17735211231', 1, 1, 388, '欧', 286, '2019-01-18 09:28:19', '2019-01-19 09:28:23', 1, '2019011723510112411', 1);
INSERT INTO `hotlereserve` VALUES (83, '163@163.com', '18773526520', 1, 1, 388, '蒋先生', 324, '2019-01-18 09:47:29', '2019-01-19 12:00:00', 2, '2019011809472936340', 1);
INSERT INTO `hotlereserve` VALUES (85, 'laoshiji@qq.com', '18873504754', 92, 2, 8372, '老司机', 326, '2019-01-18 11:28:51', '2019-02-01 12:00:00', 2, '2019011811285160532', 102);
INSERT INTO `hotlereserve` VALUES (86, 'laosji@qq.com', '18873504754', 92, 1, 299, '老司机2', 326, '2019-01-18 11:31:02', '2019-01-19 12:00:00', 2, '2019011811310214057', 102);

-- ----------------------------
-- Table structure for hotleuser
-- ----------------------------
DROP TABLE IF EXISTS `hotleuser`;
CREATE TABLE `hotleuser`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `loginName` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录名',
  `realName` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '请完善登录信息' COMMENT '真实姓名',
  `gender` int(255) NULL DEFAULT NULL COMMENT '性别（0：女  1：男）',
  `birthday` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '生日',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `zipCode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮编',
  `occupation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职业',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 327 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of hotleuser
-- ----------------------------
INSERT INTO `hotleuser` VALUES (33, '1', '蒋克文', 0, '2018-12-14 17:16:53', '2951186293@qq.com', '郴州桂阳', NULL, NULL, 'EFG');
INSERT INTO `hotleuser` VALUES (209, '18773561615', '胡顺林', 1, '2018-12-15 10:23:24', '2689@qq.com', 'asda', NULL, NULL, 'EFG');
INSERT INTO `hotleuser` VALUES (286, '18873505555', '老司机', 0, '2018-12-21 17:13:01', '1@qq.com', '湖南', NULL, NULL, 'EFG');
INSERT INTO `hotleuser` VALUES (287, '18771526526', '蛇皮', 0, '2018-12-24 14:42:48', '2951186293@163.com', '湖南郴州', NULL, NULL, 'EFG');
INSERT INTO `hotleuser` VALUES (288, '18778894511', '黄蛇皮', 1, '2018-12-24 19:55:54', 'shepi163@163.com', '湖南郴州吉尔地方', NULL, NULL, 'EFG');
INSERT INTO `hotleuser` VALUES (325, '18873522428', '呼噜噜', 0, '2019-01-18 11:17:56', '166@qq.com', '湖南郴州', NULL, NULL, 'EFG@AB');
INSERT INTO `hotleuser` VALUES (326, '18873505554', '欧老师', 0, '2019-01-18 11:22:24', '', '', NULL, NULL, '\ZEFG');

SET FOREIGN_KEY_CHECKS = 1;
