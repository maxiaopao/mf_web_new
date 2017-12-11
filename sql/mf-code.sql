/*
Navicat MySQL Data Transfer

Source Server         : 112.124.101.120_3306
Source Server Version : 50620
Source Host           : 112.124.101.120:3306
Source Database       : mf-code

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2017-06-26 17:47:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `cityid` varchar(50) DEFAULT NULL,
  `provinceid` varchar(50) DEFAULT NULL,
  `cityname` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES ('1', '1', '东城区');
INSERT INTO `city` VALUES ('2', '1', '西城区');
INSERT INTO `city` VALUES ('3', '1', '宣武区');
INSERT INTO `city` VALUES ('4', '1', '崇文区');
INSERT INTO `city` VALUES ('5', '1', '朝阳区');
INSERT INTO `city` VALUES ('6', '1', '海淀区');
INSERT INTO `city` VALUES ('7', '1', '丰台区');
INSERT INTO `city` VALUES ('8', '1', '石景山区');
INSERT INTO `city` VALUES ('9', '1', '门头沟区');
INSERT INTO `city` VALUES ('10', '1', '昌平区');
INSERT INTO `city` VALUES ('11', '1', '大兴区');
INSERT INTO `city` VALUES ('12', '1', '怀柔区');
INSERT INTO `city` VALUES ('13', '1', '密云县');
INSERT INTO `city` VALUES ('14', '1', '平谷区');
INSERT INTO `city` VALUES ('15', '1', '顺义区');
INSERT INTO `city` VALUES ('16', '1', '通州区');
INSERT INTO `city` VALUES ('17', '1', '延庆县');
INSERT INTO `city` VALUES ('103', '1', '房山区');
INSERT INTO `city` VALUES ('18', '2', '黄浦区');
INSERT INTO `city` VALUES ('19', '2', '南市区');
INSERT INTO `city` VALUES ('20', '2', '卢湾区');
INSERT INTO `city` VALUES ('21', '2', '徐汇区');
INSERT INTO `city` VALUES ('22', '2', '长宁区');
INSERT INTO `city` VALUES ('23', '2', '静安区');
INSERT INTO `city` VALUES ('24', '2', '普陀区');
INSERT INTO `city` VALUES ('25', '2', '金山区');
INSERT INTO `city` VALUES ('26', '2', '闸北区');
INSERT INTO `city` VALUES ('27', '2', '虹口区');
INSERT INTO `city` VALUES ('28', '2', '杨浦区');
INSERT INTO `city` VALUES ('29', '2', '宝山区');
INSERT INTO `city` VALUES ('30', '2', '闵行区');
INSERT INTO `city` VALUES ('31', '2', '嘉定区');
INSERT INTO `city` VALUES ('32', '2', '松江区');
INSERT INTO `city` VALUES ('33', '2', '浦东新区');
INSERT INTO `city` VALUES ('34', '2', '青浦县');
INSERT INTO `city` VALUES ('35', '2', '奉贤县');
INSERT INTO `city` VALUES ('36', '2', '南汇县');
INSERT INTO `city` VALUES ('37', '2', '崇明县');
INSERT INTO `city` VALUES ('38', '3', '和平区');
INSERT INTO `city` VALUES ('39', '3', '河东区');
INSERT INTO `city` VALUES ('40', '3', '河西区');
INSERT INTO `city` VALUES ('41', '3', '河北区');
INSERT INTO `city` VALUES ('42', '3', '南开区');
INSERT INTO `city` VALUES ('43', '3', '红桥区');
INSERT INTO `city` VALUES ('44', '3', '塘沽区');
INSERT INTO `city` VALUES ('45', '3', '汉沽区');
INSERT INTO `city` VALUES ('105', '3', '大港区');
INSERT INTO `city` VALUES ('106', '3', '东丽区');
INSERT INTO `city` VALUES ('107', '3', '西青区');
INSERT INTO `city` VALUES ('108', '3', '津南区');
INSERT INTO `city` VALUES ('109', '3', '北辰区');
INSERT INTO `city` VALUES ('110', '3', ' 武清区');
INSERT INTO `city` VALUES ('111', '3', '宝坻区');
INSERT INTO `city` VALUES ('112', '3', '蓟 县');
INSERT INTO `city` VALUES ('113', '3', '宁河县');
INSERT INTO `city` VALUES ('114', '3', '静海县');
INSERT INTO `city` VALUES ('46', '4', '永川市');
INSERT INTO `city` VALUES ('47', '4', '黔江区');
INSERT INTO `city` VALUES ('48', '4', '涪陵区');
INSERT INTO `city` VALUES ('49', '4', '万洲区');
INSERT INTO `city` VALUES ('115', '4', '渝中区');
INSERT INTO `city` VALUES ('116', '4', '大渡口区');
INSERT INTO `city` VALUES ('117', '4', '江北区');
INSERT INTO `city` VALUES ('118', '4', '沙坪坝区');
INSERT INTO `city` VALUES ('119', '4', '九龙坡区');
INSERT INTO `city` VALUES ('120', '4', '南岸区');
INSERT INTO `city` VALUES ('121', '4', '北碚区');
INSERT INTO `city` VALUES ('122', '4', ' 万盛区');
INSERT INTO `city` VALUES ('123', '4', '双桥区');
INSERT INTO `city` VALUES ('124', '4', '渝北区');
INSERT INTO `city` VALUES ('125', '4', '巴南区');
INSERT INTO `city` VALUES ('126', '4', '长寿区');
INSERT INTO `city` VALUES ('50', '5', '哈尔滨');
INSERT INTO `city` VALUES ('51', '5', '齐齐哈尔');
INSERT INTO `city` VALUES ('52', '5', '牡丹江');
INSERT INTO `city` VALUES ('127', '5', '鹤岗');
INSERT INTO `city` VALUES ('128', '5', '双鸭山');
INSERT INTO `city` VALUES ('129', '5', '鸡西');
INSERT INTO `city` VALUES ('130', '5', '大庆');
INSERT INTO `city` VALUES ('131', '5', '伊春');
INSERT INTO `city` VALUES ('132', '5', '佳木斯');
INSERT INTO `city` VALUES ('133', '5', '七台河');
INSERT INTO `city` VALUES ('134', '5', '黑河');
INSERT INTO `city` VALUES ('135', '5', '绥化');
INSERT INTO `city` VALUES ('136', '5', '大兴安岭地区');
INSERT INTO `city` VALUES ('53', '6', '长春');
INSERT INTO `city` VALUES ('54', '6', '吉林');
INSERT INTO `city` VALUES ('137', '6', '四平');
INSERT INTO `city` VALUES ('138', '6', '辽源');
INSERT INTO `city` VALUES ('139', '6', '通化');
INSERT INTO `city` VALUES ('140', '6', '白山');
INSERT INTO `city` VALUES ('141', '6', '松原');
INSERT INTO `city` VALUES ('142', '6', '白城');
INSERT INTO `city` VALUES ('143', '6', '延边朝鲜族自治州');
INSERT INTO `city` VALUES ('449', '6', '高新');
INSERT INTO `city` VALUES ('450', '6', '延吉');
INSERT INTO `city` VALUES ('451', '6', '梅河口');
INSERT INTO `city` VALUES ('55', '7', '沈阳');
INSERT INTO `city` VALUES ('56', '7', '大连');
INSERT INTO `city` VALUES ('57', '7', '锦州');
INSERT INTO `city` VALUES ('144', '7', '鞍山');
INSERT INTO `city` VALUES ('145', '7', '抚顺');
INSERT INTO `city` VALUES ('146', '7', '本溪');
INSERT INTO `city` VALUES ('147', '7', '丹东');
INSERT INTO `city` VALUES ('148', '7', '葫芦岛');
INSERT INTO `city` VALUES ('149', '7', '营口');
INSERT INTO `city` VALUES ('150', '7', '盘锦');
INSERT INTO `city` VALUES ('151', '7', '阜新');
INSERT INTO `city` VALUES ('152', '7', '辽阳');
INSERT INTO `city` VALUES ('153', '7', '铁岭');
INSERT INTO `city` VALUES ('154', '7', '朝阳');
INSERT INTO `city` VALUES ('467', '7', '瓦房店');
INSERT INTO `city` VALUES ('58', '8', '呼和浩特');
INSERT INTO `city` VALUES ('59', '8', '包头');
INSERT INTO `city` VALUES ('155', '8', '乌海');
INSERT INTO `city` VALUES ('156', '8', '赤峰');
INSERT INTO `city` VALUES ('157', '8', '通辽');
INSERT INTO `city` VALUES ('158', '8', '鄂尔多斯');
INSERT INTO `city` VALUES ('160', '8', '乌兰察布盟');
INSERT INTO `city` VALUES ('161', '8', '锡林郭勒盟');
INSERT INTO `city` VALUES ('162', '8', '巴彦淖尔盟');
INSERT INTO `city` VALUES ('163', '8', '阿拉善盟');
INSERT INTO `city` VALUES ('164', '8', '兴安盟');
INSERT INTO `city` VALUES ('468', '8', '巴彦淖尔');
INSERT INTO `city` VALUES ('469', '8', '呼伦贝尔');
INSERT INTO `city` VALUES ('470', '8', '集宁');
INSERT INTO `city` VALUES ('471', '8', ' 乌兰浩特');
INSERT INTO `city` VALUES ('472', '8', '锡林浩特');
INSERT INTO `city` VALUES ('60', '9', '银川');
INSERT INTO `city` VALUES ('165', '9', '石嘴山');
INSERT INTO `city` VALUES ('166', '9', '吴忠');
INSERT INTO `city` VALUES ('167', '9', '固原');
INSERT INTO `city` VALUES ('61', '10', '乌鲁木齐');
INSERT INTO `city` VALUES ('168', '10', '克拉玛依');
INSERT INTO `city` VALUES ('169', '10', '吐鲁番地区');
INSERT INTO `city` VALUES ('170', '10', '哈密地区');
INSERT INTO `city` VALUES ('171', '10', '和田地区');
INSERT INTO `city` VALUES ('172', '10', '阿克苏地区');
INSERT INTO `city` VALUES ('173', '10', '喀什地区');
INSERT INTO `city` VALUES ('174', '10', '克孜勒苏柯尔克孜自治州');
INSERT INTO `city` VALUES ('175', '10', '巴音郭楞蒙古自治州');
INSERT INTO `city` VALUES ('176', '10', '昌吉回族自治州');
INSERT INTO `city` VALUES ('177', '10', '博尔塔拉蒙古自治州');
INSERT INTO `city` VALUES ('178', '10', '伊犁哈萨克自治州');
INSERT INTO `city` VALUES ('500', '10', '阿克苏');
INSERT INTO `city` VALUES ('501', '10', '昌吉');
INSERT INTO `city` VALUES ('502', '10', '哈密');
INSERT INTO `city` VALUES ('503', '10', '和田');
INSERT INTO `city` VALUES ('504', '10', '喀什');
INSERT INTO `city` VALUES ('505', '10', '克拉马依');
INSERT INTO `city` VALUES ('506', '10', '库尔勒');
INSERT INTO `city` VALUES ('507', '10', '石河子');
INSERT INTO `city` VALUES ('508', '10', '吐鲁番');
INSERT INTO `city` VALUES ('509', '10', ' 乌市');
INSERT INTO `city` VALUES ('510', '10', '奎屯');
INSERT INTO `city` VALUES ('511', '10', '伊犁');
INSERT INTO `city` VALUES ('512', '10', '伊宁');
INSERT INTO `city` VALUES ('62', '11', '西宁');
INSERT INTO `city` VALUES ('179', '11', '海东地区');
INSERT INTO `city` VALUES ('180', '11', ' 海北藏族自治州');
INSERT INTO `city` VALUES ('181', '11', '黄南藏族自治州');
INSERT INTO `city` VALUES ('182', '11', '海南藏族自治州');
INSERT INTO `city` VALUES ('183', '11', '果洛藏族自治州');
INSERT INTO `city` VALUES ('184', '11', '玉树藏族自治州');
INSERT INTO `city` VALUES ('185', '11', '海西蒙古族藏族自治州');
INSERT INTO `city` VALUES ('473', '11', '格尔木');
INSERT INTO `city` VALUES ('63', '12', '兰州');
INSERT INTO `city` VALUES ('64', '12', '天水');
INSERT INTO `city` VALUES ('186', '12', '金昌');
INSERT INTO `city` VALUES ('187', '12', '白银');
INSERT INTO `city` VALUES ('188', '12', '嘉峪关');
INSERT INTO `city` VALUES ('189', '12', '武 威 ');
INSERT INTO `city` VALUES ('190', '12', '张掖');
INSERT INTO `city` VALUES ('191', '12', '平凉');
INSERT INTO `city` VALUES ('192', '12', '酒泉');
INSERT INTO `city` VALUES ('193', '12', '庆阳');
INSERT INTO `city` VALUES ('194', '12', '定西地区');
INSERT INTO `city` VALUES ('195', '12', '陇南地区');
INSERT INTO `city` VALUES ('196', '12', '甘南藏族自治州');
INSERT INTO `city` VALUES ('197', '12', '临夏回族自治州');
INSERT INTO `city` VALUES ('422', '12', '嘉峪');
INSERT INTO `city` VALUES ('423', '12', '武威');
INSERT INTO `city` VALUES ('65', '13', '西安');
INSERT INTO `city` VALUES ('66', '13', '宝鸡');
INSERT INTO `city` VALUES ('67', '13', '延安');
INSERT INTO `city` VALUES ('198', '13', '铜川');
INSERT INTO `city` VALUES ('199', '13', '咸阳');
INSERT INTO `city` VALUES ('200', '13', '渭南');
INSERT INTO `city` VALUES ('201', '13', '汉中');
INSERT INTO `city` VALUES ('202', '13', '榆林');
INSERT INTO `city` VALUES ('203', '13', '安康');
INSERT INTO `city` VALUES ('204', '13', '商洛');
INSERT INTO `city` VALUES ('496', '13', '韩城');
INSERT INTO `city` VALUES ('68', '14', '石家庄');
INSERT INTO `city` VALUES ('69', '14', '保定');
INSERT INTO `city` VALUES ('205', '14', '唐山');
INSERT INTO `city` VALUES ('206', '14', '秦皇岛');
INSERT INTO `city` VALUES ('207', '14', '邯郸');
INSERT INTO `city` VALUES ('208', '14', '邢台');
INSERT INTO `city` VALUES ('209', '14', '张家口');
INSERT INTO `city` VALUES ('210', '14', '承德');
INSERT INTO `city` VALUES ('211', '14', '沧州');
INSERT INTO `city` VALUES ('212', '14', '廊坊');
INSERT INTO `city` VALUES ('213', '14', '衡水');
INSERT INTO `city` VALUES ('436', '14', '霸州');
INSERT INTO `city` VALUES ('437', '14', '青县');
INSERT INTO `city` VALUES ('438', '14', '任丘');
INSERT INTO `city` VALUES ('439', '14', '涿州');
INSERT INTO `city` VALUES ('70', '15', '郑州');
INSERT INTO `city` VALUES ('71', '15', '洛阳');
INSERT INTO `city` VALUES ('214', '15', '开封');
INSERT INTO `city` VALUES ('215', '15', '平顶山');
INSERT INTO `city` VALUES ('216', '15', '焦作');
INSERT INTO `city` VALUES ('217', '15', '鹤壁');
INSERT INTO `city` VALUES ('218', '15', '新乡');
INSERT INTO `city` VALUES ('219', '15', '安阳');
INSERT INTO `city` VALUES ('220', '15', '濮阳');
INSERT INTO `city` VALUES ('221', '15', '许昌');
INSERT INTO `city` VALUES ('222', '15', '漯河');
INSERT INTO `city` VALUES ('223', '15', '三门峡');
INSERT INTO `city` VALUES ('224', '15', '南阳');
INSERT INTO `city` VALUES ('225', '15', '商丘');
INSERT INTO `city` VALUES ('226', '15', '信阳');
INSERT INTO `city` VALUES ('227', '15', '周口');
INSERT INTO `city` VALUES ('228', '15', '驻马店');
INSERT INTO `city` VALUES ('72', '16', '济南');
INSERT INTO `city` VALUES ('73', '16', '青岛');
INSERT INTO `city` VALUES ('74', '16', '烟台');
INSERT INTO `city` VALUES ('229', '16', '淄博');
INSERT INTO `city` VALUES ('230', '16', '枣庄');
INSERT INTO `city` VALUES ('231', '16', '东营');
INSERT INTO `city` VALUES ('232', '16', '潍坊');
INSERT INTO `city` VALUES ('233', '16', '威海');
INSERT INTO `city` VALUES ('234', '16', '济宁');
INSERT INTO `city` VALUES ('235', '16', '泰安');
INSERT INTO `city` VALUES ('236', '16', '日照');
INSERT INTO `city` VALUES ('237', '16', '莱芜');
INSERT INTO `city` VALUES ('238', '16', '德州');
INSERT INTO `city` VALUES ('239', '16', '临沂');
INSERT INTO `city` VALUES ('240', '16', '聊城');
INSERT INTO `city` VALUES ('241', '16', '滨州');
INSERT INTO `city` VALUES ('242', '16', '菏泽');
INSERT INTO `city` VALUES ('474', '16', '高密');
INSERT INTO `city` VALUES ('475', '16', '荷泽');
INSERT INTO `city` VALUES ('476', '16', '淮坊');
INSERT INTO `city` VALUES ('477', '16', '即墨');
INSERT INTO `city` VALUES ('478', '16', '胶南');
INSERT INTO `city` VALUES ('479', '16', '莱州');
INSERT INTO `city` VALUES ('480', '16', '林沂');
INSERT INTO `city` VALUES ('481', '16', '临忻');
INSERT INTO `city` VALUES ('482', '16', '龙口');
INSERT INTO `city` VALUES ('483', '16', '蓬莱');
INSERT INTO `city` VALUES ('484', '16', '青州');
INSERT INTO `city` VALUES ('485', '16', '乳山');
INSERT INTO `city` VALUES ('486', '16', '寿光');
INSERT INTO `city` VALUES ('487', '16', '滕州');
INSERT INTO `city` VALUES ('488', '16', '文登');
INSERT INTO `city` VALUES ('489', '16', '招远');
INSERT INTO `city` VALUES ('75', '17', '太原');
INSERT INTO `city` VALUES ('76', '17', '大同');
INSERT INTO `city` VALUES ('243', '17', '朔州');
INSERT INTO `city` VALUES ('244', '17', '阳泉');
INSERT INTO `city` VALUES ('245', '17', '长治');
INSERT INTO `city` VALUES ('246', '17', '晋城');
INSERT INTO `city` VALUES ('247', '17', '忻州');
INSERT INTO `city` VALUES ('248', '17', '晋中');
INSERT INTO `city` VALUES ('249', '17', '临汾');
INSERT INTO `city` VALUES ('250', '17', '运城');
INSERT INTO `city` VALUES ('251', '17', '吕梁地区');
INSERT INTO `city` VALUES ('491', '17', '河津');
INSERT INTO `city` VALUES ('492', '17', '侯马');
INSERT INTO `city` VALUES ('494', '17', '孝义');
INSERT INTO `city` VALUES ('495', '17', '榆次');
INSERT INTO `city` VALUES ('77', '18', '武汉');
INSERT INTO `city` VALUES ('252', '18', '黄石');
INSERT INTO `city` VALUES ('253', '18', '襄樊');
INSERT INTO `city` VALUES ('254', '18', '十堰');
INSERT INTO `city` VALUES ('255', '18', '荆州');
INSERT INTO `city` VALUES ('256', '18', '宜昌');
INSERT INTO `city` VALUES ('257', '18', '荆门');
INSERT INTO `city` VALUES ('258', '18', '鄂州');
INSERT INTO `city` VALUES ('259', '18', '孝感');
INSERT INTO `city` VALUES ('260', '18', '黄冈');
INSERT INTO `city` VALUES ('261', '18', '咸宁');
INSERT INTO `city` VALUES ('262', '18', '随州');
INSERT INTO `city` VALUES ('263', '18', '恩施土家族苗族自治州');
INSERT INTO `city` VALUES ('440', '18', '安陆');
INSERT INTO `city` VALUES ('441', '18', '恩施');
INSERT INTO `city` VALUES ('442', '18', '汉口');
INSERT INTO `city` VALUES ('443', '18', '汉阳');
INSERT INTO `city` VALUES ('444', '18', '潜江');
INSERT INTO `city` VALUES ('445', '18', '仙桃');
INSERT INTO `city` VALUES ('446', '18', '株州');
INSERT INTO `city` VALUES ('78', '19', '长沙');
INSERT INTO `city` VALUES ('264', '19', '株洲');
INSERT INTO `city` VALUES ('265', '19', '湘潭');
INSERT INTO `city` VALUES ('266', '19', '衡阳');
INSERT INTO `city` VALUES ('267', '19', '邵阳');
INSERT INTO `city` VALUES ('268', '19', '岳阳');
INSERT INTO `city` VALUES ('269', '19', '常德');
INSERT INTO `city` VALUES ('270', '19', '张家界');
INSERT INTO `city` VALUES ('271', '19', '益阳');
INSERT INTO `city` VALUES ('272', '19', '郴州');
INSERT INTO `city` VALUES ('273', '19', '永州');
INSERT INTO `city` VALUES ('274', '19', '怀化');
INSERT INTO `city` VALUES ('275', '19', '娄底');
INSERT INTO `city` VALUES ('276', '19', '湘西土家族苗族自治州');
INSERT INTO `city` VALUES ('447', '19', '株州');
INSERT INTO `city` VALUES ('448', '19', '邵东');
INSERT INTO `city` VALUES ('79', '20', '合肥');
INSERT INTO `city` VALUES ('80', '20', '芜湖');
INSERT INTO `city` VALUES ('277', '20', '蚌埠');
INSERT INTO `city` VALUES ('278', '20', '淮南');
INSERT INTO `city` VALUES ('279', '20', '马鞍山');
INSERT INTO `city` VALUES ('280', '20', '淮北');
INSERT INTO `city` VALUES ('281', '20', '铜陵');
INSERT INTO `city` VALUES ('282', '20', '安庆');
INSERT INTO `city` VALUES ('283', '20', '黄山');
INSERT INTO `city` VALUES ('284', '20', '滁州');
INSERT INTO `city` VALUES ('285', '20', '阜阳');
INSERT INTO `city` VALUES ('286', '20', '宿州');
INSERT INTO `city` VALUES ('287', '20', '巢湖');
INSERT INTO `city` VALUES ('288', '20', '六安');
INSERT INTO `city` VALUES ('289', '20', '亳州');
INSERT INTO `city` VALUES ('290', '20', '池州');
INSERT INTO `city` VALUES ('291', '20', '宣城');
INSERT INTO `city` VALUES ('412', '20', '蒙城');
INSERT INTO `city` VALUES ('413', '20', '宁国');
INSERT INTO `city` VALUES ('414', '20', '桐城');
INSERT INTO `city` VALUES ('81', '21', '南京');
INSERT INTO `city` VALUES ('292', '21', '徐州');
INSERT INTO `city` VALUES ('293', '21', '连云港');
INSERT INTO `city` VALUES ('294', '21', '淮安');
INSERT INTO `city` VALUES ('295', '21', '宿迁');
INSERT INTO `city` VALUES ('296', '21', '盐城');
INSERT INTO `city` VALUES ('297', '21', '扬州');
INSERT INTO `city` VALUES ('298', '21', '泰州');
INSERT INTO `city` VALUES ('299', '21', '南通');
INSERT INTO `city` VALUES ('300', '21', '镇江');
INSERT INTO `city` VALUES ('301', '21', '常州');
INSERT INTO `city` VALUES ('302', '21', '无锡');
INSERT INTO `city` VALUES ('303', '21', '苏州');
INSERT INTO `city` VALUES ('452', '21', '常熟');
INSERT INTO `city` VALUES ('453', '21', '丹阳');
INSERT INTO `city` VALUES ('454', '21', '海门');
INSERT INTO `city` VALUES ('455', '21', '江都');
INSERT INTO `city` VALUES ('456', '21', '江阴');
INSERT INTO `city` VALUES ('457', '21', '靖江');
INSERT INTO `city` VALUES ('458', '21', '昆山');
INSERT INTO `city` VALUES ('459', '21', '溧阳');
INSERT INTO `city` VALUES ('460', '21', '太仓');
INSERT INTO `city` VALUES ('461', '21', '泰州华');
INSERT INTO `city` VALUES ('462', '21', '吴江');
INSERT INTO `city` VALUES ('463', '21', '吴县');
INSERT INTO `city` VALUES ('464', '21', '宜兴');
INSERT INTO `city` VALUES ('465', '21', '张家港');
INSERT INTO `city` VALUES ('82', '22', '杭州');
INSERT INTO `city` VALUES ('304', '22', '宁波');
INSERT INTO `city` VALUES ('305', '22', '温州');
INSERT INTO `city` VALUES ('306', '22', '嘉兴');
INSERT INTO `city` VALUES ('307', '22', '湖州');
INSERT INTO `city` VALUES ('308', '22', '绍兴');
INSERT INTO `city` VALUES ('309', '22', '金华');
INSERT INTO `city` VALUES ('310', '22', '衢州');
INSERT INTO `city` VALUES ('311', '22', '舟山');
INSERT INTO `city` VALUES ('312', '22', '台州');
INSERT INTO `city` VALUES ('313', '22', '丽水');
INSERT INTO `city` VALUES ('514', '22', '慈溪');
INSERT INTO `city` VALUES ('515', '22', '东阳');
INSERT INTO `city` VALUES ('516', '22', '奉化');
INSERT INTO `city` VALUES ('517', '22', '乐清');
INSERT INTO `city` VALUES ('518', '22', '临安');
INSERT INTO `city` VALUES ('519', '22', '临海');
INSERT INTO `city` VALUES ('520', '22', '平湖');
INSERT INTO `city` VALUES ('521', '22', '瑞安');
INSERT INTO `city` VALUES ('522', '22', '上虞');
INSERT INTO `city` VALUES ('523', '22', '嵊州');
INSERT INTO `city` VALUES ('524', '22', '温岭');
INSERT INTO `city` VALUES ('525', '22', '义乌');
INSERT INTO `city` VALUES ('526', '22', '永康');
INSERT INTO `city` VALUES ('527', '22', '余姚');
INSERT INTO `city` VALUES ('528', '22', '诸暨');
INSERT INTO `city` VALUES ('529', '22', '新昌');
INSERT INTO `city` VALUES ('83', '23', '南昌');
INSERT INTO `city` VALUES ('314', '23', '景德镇');
INSERT INTO `city` VALUES ('315', '23', '萍乡');
INSERT INTO `city` VALUES ('316', '23', '新余');
INSERT INTO `city` VALUES ('317', '23', '九江');
INSERT INTO `city` VALUES ('318', '23', '鹰潭');
INSERT INTO `city` VALUES ('319', '23', '赣州');
INSERT INTO `city` VALUES ('320', '23', '吉安');
INSERT INTO `city` VALUES ('321', '23', '宜春');
INSERT INTO `city` VALUES ('322', '23', '抚州');
INSERT INTO `city` VALUES ('323', '23', '上饶');
INSERT INTO `city` VALUES ('466', '23', '高安');
INSERT INTO `city` VALUES ('84', '24', '广州');
INSERT INTO `city` VALUES ('85', '24', '深圳');
INSERT INTO `city` VALUES ('324', '24', '珠海');
INSERT INTO `city` VALUES ('325', '24', '汕头');
INSERT INTO `city` VALUES ('326', '24', '韶关');
INSERT INTO `city` VALUES ('327', '24', '河源');
INSERT INTO `city` VALUES ('328', '24', '梅州');
INSERT INTO `city` VALUES ('329', '24', '惠州');
INSERT INTO `city` VALUES ('330', '24', '汕尾');
INSERT INTO `city` VALUES ('331', '24', '东莞');
INSERT INTO `city` VALUES ('332', '24', '中山');
INSERT INTO `city` VALUES ('333', '24', '江门');
INSERT INTO `city` VALUES ('334', '24', '佛山');
INSERT INTO `city` VALUES ('335', '24', '阳江');
INSERT INTO `city` VALUES ('336', '24', '湛江');
INSERT INTO `city` VALUES ('337', '24', '茂名');
INSERT INTO `city` VALUES ('338', '24', '肇庆');
INSERT INTO `city` VALUES ('339', '24', '清远');
INSERT INTO `city` VALUES ('340', '24', '潮州');
INSERT INTO `city` VALUES ('341', '24', '揭阳');
INSERT INTO `city` VALUES ('342', '24', '云浮');
INSERT INTO `city` VALUES ('424', '24', '花都');
INSERT INTO `city` VALUES ('425', '24', '开平');
INSERT INTO `city` VALUES ('426', '24', '南海');
INSERT INTO `city` VALUES ('427', '24', '顺德');
INSERT INTO `city` VALUES ('428', '24', '台山');
INSERT INTO `city` VALUES ('429', '24', '增城');
INSERT INTO `city` VALUES ('431', '24', '市梅');
INSERT INTO `city` VALUES ('86', '25', '南宁');
INSERT INTO `city` VALUES ('343', '25', '柳州');
INSERT INTO `city` VALUES ('344', '25', '桂林');
INSERT INTO `city` VALUES ('345', '25', '梧州');
INSERT INTO `city` VALUES ('346', '25', '北海');
INSERT INTO `city` VALUES ('347', '25', '防城港');
INSERT INTO `city` VALUES ('348', '25', '钦州');
INSERT INTO `city` VALUES ('349', '25', '贵港');
INSERT INTO `city` VALUES ('350', '25', '玉林');
INSERT INTO `city` VALUES ('351', '25', '百色');
INSERT INTO `city` VALUES ('352', '25', '贺州');
INSERT INTO `city` VALUES ('353', '25', '河池');
INSERT INTO `city` VALUES ('354', '25', '来宾');
INSERT INTO `city` VALUES ('355', '25', '崇左');
INSERT INTO `city` VALUES ('87', '26', '福州');
INSERT INTO `city` VALUES ('88', '26', '厦门');
INSERT INTO `city` VALUES ('356', '26', '三明');
INSERT INTO `city` VALUES ('357', '26', '莆田');
INSERT INTO `city` VALUES ('358', '26', '泉州');
INSERT INTO `city` VALUES ('359', '26', '漳州');
INSERT INTO `city` VALUES ('360', '26', '南平');
INSERT INTO `city` VALUES ('361', '26', '龙岩');
INSERT INTO `city` VALUES ('362', '26', '宁德');
INSERT INTO `city` VALUES ('415', '26', '福清');
INSERT INTO `city` VALUES ('416', '26', '建瓯');
INSERT INTO `city` VALUES ('417', '26', '晋江');
INSERT INTO `city` VALUES ('418', '26', '南安');
INSERT INTO `city` VALUES ('419', '26', '邵武');
INSERT INTO `city` VALUES ('420', '26', '石狮');
INSERT INTO `city` VALUES ('421', '26', '仙游');
INSERT INTO `city` VALUES ('89', '27', '成都');
INSERT INTO `city` VALUES ('363', '27', '自贡');
INSERT INTO `city` VALUES ('364', '27', '攀枝花');
INSERT INTO `city` VALUES ('365', '27', '泸州');
INSERT INTO `city` VALUES ('366', '27', '德阳');
INSERT INTO `city` VALUES ('367', '27', '绵阳');
INSERT INTO `city` VALUES ('368', '27', '广元');
INSERT INTO `city` VALUES ('369', '27', '遂宁');
INSERT INTO `city` VALUES ('370', '27', '内江');
INSERT INTO `city` VALUES ('371', '27', '乐山');
INSERT INTO `city` VALUES ('372', '27', '南充');
INSERT INTO `city` VALUES ('373', '27', '宜宾');
INSERT INTO `city` VALUES ('374', '27', '广安');
INSERT INTO `city` VALUES ('375', '27', '达州');
INSERT INTO `city` VALUES ('376', '27', '巴中');
INSERT INTO `city` VALUES ('377', '27', '雅安');
INSERT INTO `city` VALUES ('378', '27', '眉山');
INSERT INTO `city` VALUES ('379', '27', '资阳');
INSERT INTO `city` VALUES ('380', '27', '阿坝藏族羌族自治州');
INSERT INTO `city` VALUES ('381', '27', '甘孜藏族自治州');
INSERT INTO `city` VALUES ('382', '27', '凉山彝族自治州');
INSERT INTO `city` VALUES ('497', '27', '广汉');
INSERT INTO `city` VALUES ('498', '27', '锦阳');
INSERT INTO `city` VALUES ('499', '27', '西昌');
INSERT INTO `city` VALUES ('90', '28', '昆明');
INSERT INTO `city` VALUES ('383', '28', '曲靖');
INSERT INTO `city` VALUES ('384', '28', '玉溪');
INSERT INTO `city` VALUES ('385', '28', '保山');
INSERT INTO `city` VALUES ('386', '28', '昭通');
INSERT INTO `city` VALUES ('387', '28', '思茅地区');
INSERT INTO `city` VALUES ('388', '28', '临沧地区');
INSERT INTO `city` VALUES ('389', '28', '丽江');
INSERT INTO `city` VALUES ('390', '28', ' 文山壮族苗族自治州');
INSERT INTO `city` VALUES ('391', '28', '红河哈尼族彝族自治州');
INSERT INTO `city` VALUES ('392', '28', '西双版纳傣族自治州');
INSERT INTO `city` VALUES ('393', '28', '楚雄彝族自治州');
INSERT INTO `city` VALUES ('394', '28', '大理白族自治州');
INSERT INTO `city` VALUES ('395', '28', '德宏傣族景颇族自治州');
INSERT INTO `city` VALUES ('396', '28', '怒江傈傈族自治州');
INSERT INTO `city` VALUES ('397', '28', '迪庆藏族自治州');
INSERT INTO `city` VALUES ('513', '28', '大理');
INSERT INTO `city` VALUES ('91', '29', '贵阳');
INSERT INTO `city` VALUES ('398', '29', '六盘水');
INSERT INTO `city` VALUES ('399', '29', '遵义');
INSERT INTO `city` VALUES ('400', '29', '安顺');
INSERT INTO `city` VALUES ('401', '29', '铜仁地区');
INSERT INTO `city` VALUES ('402', '29', '毕节地区');
INSERT INTO `city` VALUES ('403', '29', '黔西南布依族苗族自治州');
INSERT INTO `city` VALUES ('404', '29', '黔东南苗族侗族自治州');
INSERT INTO `city` VALUES ('405', '29', '黔南布依族苗族自治州');
INSERT INTO `city` VALUES ('432', '29', '都匀');
INSERT INTO `city` VALUES ('433', '29', '贵恙');
INSERT INTO `city` VALUES ('434', '29', '凯里');
INSERT INTO `city` VALUES ('435', '29', '铜仁');
INSERT INTO `city` VALUES ('92', '30', '拉萨');
INSERT INTO `city` VALUES ('406', '30', '那曲地区');
INSERT INTO `city` VALUES ('407', '30', '昌都地区');
INSERT INTO `city` VALUES ('408', '30', '山南地区');
INSERT INTO `city` VALUES ('409', '30', '日喀则地区');
INSERT INTO `city` VALUES ('410', '30', '阿里地区');
INSERT INTO `city` VALUES ('411', '30', '林芝地区');
INSERT INTO `city` VALUES ('93', '31', '海口');
INSERT INTO `city` VALUES ('94', '31', '三亚');
INSERT INTO `city` VALUES ('95', '32', '香港');
INSERT INTO `city` VALUES ('96', '33', '澳门');
INSERT INTO `city` VALUES ('97', '34', '台北');
INSERT INTO `city` VALUES ('98', '34', '高雄');
INSERT INTO `city` VALUES ('99', '34', '台中');
INSERT INTO `city` VALUES ('100', '34', '台南');
INSERT INTO `city` VALUES ('101', '34', '基隆');
INSERT INTO `city` VALUES ('102', '34', '新竹');

-- ----------------------------
-- Table structure for createcode
-- ----------------------------
DROP TABLE IF EXISTS `createcode`;
CREATE TABLE `createcode` (
  `CREATECODEID` varchar(100) NOT NULL,
  `PACKAGENAME` varchar(50) DEFAULT NULL COMMENT '包名',
  `OBJECTNAME` varchar(50) DEFAULT NULL COMMENT '类名',
  `TABLENAME` varchar(50) DEFAULT NULL COMMENT '表名',
  `FIELDLIST` varchar(5000) DEFAULT NULL COMMENT '属性集',
  `CREATETIME` varchar(100) DEFAULT NULL COMMENT '创建时间',
  `TITLE` varchar(255) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`CREATECODEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of createcode
-- ----------------------------

-- ----------------------------
-- Table structure for ht_csr
-- ----------------------------
DROP TABLE IF EXISTS `ht_csr`;
CREATE TABLE `ht_csr` (
  `CSRID` varchar(23) NOT NULL,
  `AGENTID` varchar(20) DEFAULT NULL,
  `CSRNAME` varchar(20) DEFAULT NULL,
  `PASSWD` varchar(20) DEFAULT NULL,
  `ASSIGNFLAG` int(11) DEFAULT NULL,
  `DEPARTID` varchar(23) DEFAULT NULL,
  `POSTION` int(11) DEFAULT NULL COMMENT '职位：1：管理员，2：值班长，3：IB坐席，4：OB坐席',
  `STATUS` int(11) DEFAULT NULL,
  `USER_ID` varchar(23) DEFAULT NULL,
  `ACCOUNT_INFO` varchar(23) DEFAULT NULL,
  `sex` varchar(5) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `provense` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `hospitalname` varchar(40) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `job` varchar(20) DEFAULT NULL COMMENT '职称',
  `groupId` varchar(30) DEFAULT NULL,
  `groupName` varchar(100) DEFAULT NULL,
  `bak1` varchar(20) DEFAULT NULL,
  `bak2` varchar(20) DEFAULT NULL,
  `bak3` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `bak4` varchar(20) DEFAULT NULL,
  `bak5` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`CSRID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ht_csr
-- ----------------------------
INSERT INTO `ht_csr` VALUES ('admin', 'admin', 'admin', '123456', '1', '20140406-888', '1', '1', 'admin', 'admin', '男', '', '上海', '南市区', null, '1123123', '', '20160407145832-07476-GR', '外呼二组', null, null, null, null, null);

-- ----------------------------
-- Table structure for ht_csr_role
-- ----------------------------
DROP TABLE IF EXISTS `ht_csr_role`;
CREATE TABLE `ht_csr_role` (
  `CSRID` varchar(23) DEFAULT NULL,
  `ROLEID` varchar(23) DEFAULT NULL,
  `STARTTIME` date DEFAULT NULL,
  `ENDTIME` date DEFAULT NULL,
  `STATUS` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ht_csr_role
-- ----------------------------
INSERT INTO `ht_csr_role` VALUES ('20160407145752-78753-UR', '20140406175132-94768-JS', null, null, '1');
INSERT INTO `ht_csr_role` VALUES ('20160811140946-82081-UR', '20140406175132-94768-JS', null, null, '1');
INSERT INTO `ht_csr_role` VALUES ('admin', '20140406175132-94768-JS', null, null, '1');

-- ----------------------------
-- Table structure for ht_depart
-- ----------------------------
DROP TABLE IF EXISTS `ht_depart`;
CREATE TABLE `ht_depart` (
  `DEPARTID` varchar(23) NOT NULL,
  `DEPARTNAME` varchar(45) DEFAULT NULL,
  `STATUS` int(11) DEFAULT '1',
  `DEPARTDESC` varchar(20) DEFAULT NULL,
  `BAK1` varchar(20) DEFAULT NULL,
  `BAK2` varchar(20) DEFAULT NULL,
  `BAK3` varchar(20) DEFAULT NULL,
  `BAK4` varchar(20) DEFAULT NULL,
  `BAK5` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`DEPARTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ht_depart
-- ----------------------------
INSERT INTO `ht_depart` VALUES ('20140406-888', '测试部门', '1', '测试部门', null, null, null, null, null);
INSERT INTO `ht_depart` VALUES ('20160407145845-25055-BM', '1231123', '0', '23123', null, null, null, null, null);
INSERT INTO `ht_depart` VALUES ('20160421181110-41567-BM', '123123', '1', '123123', null, null, null, null, null);
INSERT INTO `ht_depart` VALUES ('20160421181114-82613-BM', '3451234', '1', '1234234', null, null, null, null, null);
INSERT INTO `ht_depart` VALUES ('20160421181121-56130-BM', '王文生', '1', '123123', null, null, null, null, null);
INSERT INTO `ht_depart` VALUES ('20160421181144-57000-BM', '问问', '1', '为饿', null, null, null, null, null);
INSERT INTO `ht_depart` VALUES ('20160421181239-49266-BM', '123123323', '0', '123123', null, null, null, null, null);

-- ----------------------------
-- Table structure for ht_group
-- ----------------------------
DROP TABLE IF EXISTS `ht_group`;
CREATE TABLE `ht_group` (
  `groupID` varchar(30) NOT NULL,
  `groupName` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `groupDesc` varchar(20) DEFAULT NULL,
  `bak1` varchar(20) DEFAULT NULL,
  `bak2` varchar(20) DEFAULT NULL,
  `bak3` varchar(20) DEFAULT NULL,
  `bak4` varchar(20) DEFAULT NULL,
  `bak5` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`groupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ht_group
-- ----------------------------
INSERT INTO `ht_group` VALUES ('20160407145832-07476-GR', '123', '1', '12323', null, null, null, null, null);
INSERT INTO `ht_group` VALUES ('20160507143503-00650-GP', 'ttt', '0', 'rrrr', null, null, null, null, null);
INSERT INTO `ht_group` VALUES ('20160507145032-97092-GP', '1231', '1', '123', null, null, null, null, null);
INSERT INTO `ht_group` VALUES ('20160507145206-38702-GP', '43244234', '0', '234234', null, null, null, null, null);

-- ----------------------------
-- Table structure for ht_menu
-- ----------------------------
DROP TABLE IF EXISTS `ht_menu`;
CREATE TABLE `ht_menu` (
  `MENUID` varchar(30) NOT NULL,
  `MENUNAME` varchar(45) DEFAULT NULL,
  `PID` varchar(30) DEFAULT NULL,
  `URL` varchar(255) DEFAULT NULL,
  `IMG` varchar(255) DEFAULT NULL,
  `ORDERID` int(11) DEFAULT NULL,
  `ISMENU` int(11) DEFAULT NULL,
  `MENUTYPE` int(11) DEFAULT NULL,
  `STARTTIME` date DEFAULT NULL,
  `ENDTIME` date DEFAULT NULL,
  `IS_OPEN_BLANK` varchar(2) DEFAULT NULL,
  `IS_DEFAULT_OPEN` varchar(2) DEFAULT NULL,
  `BAK1` varchar(20) DEFAULT NULL,
  `BAK2` varchar(20) DEFAULT NULL,
  `BAK3` varchar(20) DEFAULT NULL,
  `BAK4` varchar(20) DEFAULT NULL,
  `BAK5` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`MENUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ht_menu
-- ----------------------------
INSERT INTO `ht_menu` VALUES ('01-01', '系统管理', '', '', 'ext-icon-bricks', '1', '1', '1', null, null, '0', '0', null, null, null, null, null);
INSERT INTO `ht_menu` VALUES ('01-02', '用户管理', '01-01', '/ht/csr', 'ext-icon-cog_error', '1', '0', '1', null, null, '0', '0', null, null, null, null, null);
INSERT INTO `ht_menu` VALUES ('01-03', '角色管理', '01-01', '/ht/role', 'ext-icon-text_align_justify', '2', '0', '1', null, null, '0', '0', null, null, null, null, null);
INSERT INTO `ht_menu` VALUES ('01-04', '部门管理', '01-01', '/ht/depart', 'ext-icon-key', '3', '0', '1', null, null, '0', '0', null, null, null, null, null);
INSERT INTO `ht_menu` VALUES ('01-05', '小组管理', '01-01', '/ht/group', 'ext-icon-lightning', '4', '0', '1', '0000-00-00', '0000-00-00', '0', '0', '', '', '', '', '');
INSERT INTO `ht_menu` VALUES ('01-06', '菜单管理', '01-01', '/ht/menu', 'ext-icon-comments_add', '5', '0', '1', '0000-00-00', '0000-00-00', '0', '0', '', '', '', '', '');
INSERT INTO `ht_menu` VALUES ('02-01', '系统工具', '', '', 'ext-icon-html_go', '3', '1', '1', '2016-05-07', '2016-05-07', '0', '0', '', '', '', '', '');
INSERT INTO `ht_menu` VALUES ('02-02', '代码生成', '02-01', '/code/code', 'ext-icon-house', '1', '0', '1', '0000-00-00', '0000-00-00', '0', '0', '', '', '', '', '');
INSERT INTO `ht_menu` VALUES ('03-00', '小跑5', '', '', 'ext-icon-emoticon_happy', '2', '1', '1', null, null, null, null, null, null, null, null, null);
INSERT INTO `ht_menu` VALUES ('03-01', '日志', '03-00', '/ht/logsInfo', 'ext-icon-text_align_justify', '1', '0', '1', null, null, null, null, null, null, null, null, null);
INSERT INTO `ht_menu` VALUES ('12', '字体', '03-00', '/font/fontMenu', 'ext-icon-disconnect', '4', '0', '1', '2016-12-02', '2016-12-02', '', '', '', '', '', '', '');
INSERT INTO `ht_menu` VALUES ('20170528011807_3c3a0173b6be4f', '232', '02-01', '', 'ext-icon-computer_go', '23', '1', '1', null, null, null, null, null, null, null, null, null);
INSERT INTO `ht_menu` VALUES ('20170528011844_c126e614fdce45', '34', '20170528011807_3c3a0173b6be4f', '/test/student', 'ext-icon-book_go', '34', '0', '1', null, null, null, null, null, null, null, null, null);
INSERT INTO `ht_menu` VALUES ('20170626150750_cb63c0edfa054e', '12', '20170528011807_3c3a0173b6be4f', '12', 'ext-icon-asterisk_orange', '12', '0', '1', null, null, null, null, null, null, null, null, null);
INSERT INTO `ht_menu` VALUES ('20170626150843_ea82d807aa1142', '333', '20170528011807_3c3a0173b6be4f', '', 'ext-icon-attach', '1', '1', '1', null, null, null, null, null, null, null, null, null);
INSERT INTO `ht_menu` VALUES ('20170626150932_d4124c7003c24d', '12', '20170626150843_ea82d807aa1142', '12', 'ext-icon-bullet_add', '12', '0', '1', null, null, null, null, null, null, null, null, null);
INSERT INTO `ht_menu` VALUES ('20170626151513_36a260bd06044a', '12', '', '', 'ext-icon-brick', '12', '1', '1', null, null, null, null, null, null, null, null, null);
INSERT INTO `ht_menu` VALUES ('20170626151616_251edf8ff5c649', 'rrrr', '', '123213', 'ext-icon-building_edit', '3', '0', '1', null, null, null, null, null, null, null, null, null);
INSERT INTO `ht_menu` VALUES ('231', '字体', '03-00', '/font/fontMenu', 'ext-icon-disconnect', '4', '0', '1', '2016-12-02', '2016-12-02', '', '', '', '', '', '', '');
INSERT INTO `ht_menu` VALUES ('23132', '字体', '03-00', '/font/fontMenu', 'ext-icon-disconnect', '4', '0', '1', '2016-12-02', '2016-12-02', '', '', '', '', '', '', '');
INSERT INTO `ht_menu` VALUES ('23143', '字体', '03-00', '/font/fontMenu', 'ext-icon-disconnect', '4', '0', '1', '2016-12-02', '2016-12-02', '', '', '', '', '', '', '');
INSERT INTO `ht_menu` VALUES ('231435', '字体', '03-00', '/font/fontMenu', 'ext-icon-disconnect', '4', '0', '1', '2016-12-02', '2016-12-02', '', '', '', '', '', '', '');
INSERT INTO `ht_menu` VALUES ('23234', '字体', '03-00', '/font/fontMenu', 'ext-icon-disconnect', '4', '0', '1', '2016-12-02', '2016-12-02', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for ht_role
-- ----------------------------
DROP TABLE IF EXISTS `ht_role`;
CREATE TABLE `ht_role` (
  `ROLEID` varchar(23) NOT NULL,
  `ROLENAME` varchar(45) DEFAULT NULL,
  `ROLETYPE` int(11) DEFAULT NULL,
  `ROLECODE` varchar(20) DEFAULT NULL,
  `STARTTIME` datetime DEFAULT NULL,
  `ENDTIME` datetime DEFAULT NULL,
  `STATUS` int(11) DEFAULT NULL,
  `BAK1` varchar(20) DEFAULT NULL,
  `BAK2` varchar(20) DEFAULT NULL,
  `BAK3` varchar(20) DEFAULT NULL,
  `BAK4` varchar(20) DEFAULT NULL,
  `BAK5` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ht_role
-- ----------------------------
INSERT INTO `ht_role` VALUES ('20140406175132-94768-JS', '超级管理员', null, '超级管理员', null, null, '1', null, null, null, null, null);
INSERT INTO `ht_role` VALUES ('20160811125658-13245-JS', 'test', null, 'test', null, null, '0', null, null, null, null, null);
INSERT INTO `ht_role` VALUES ('20160811141229-74343-JS', '12', null, '123', null, null, '0', null, null, null, null, null);
INSERT INTO `ht_role` VALUES ('20160821123244-43906-JS', '34', null, '12', null, null, '0', null, null, null, null, null);
INSERT INTO `ht_role` VALUES ('20161207214619-94090-JS', '123', null, '123', null, null, '0', null, null, null, null, null);

-- ----------------------------
-- Table structure for ht_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `ht_role_menu`;
CREATE TABLE `ht_role_menu` (
  `ROLEID` varchar(30) NOT NULL,
  `MENUID` varchar(30) DEFAULT NULL,
  `STATUS` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ht_role_menu
-- ----------------------------
INSERT INTO `ht_role_menu` VALUES ('20160811125658-13245-JS', '01-01', '1');
INSERT INTO `ht_role_menu` VALUES ('20160811125658-13245-JS', '01-02', '1');
INSERT INTO `ht_role_menu` VALUES ('20160811125658-13245-JS', '01-03', '1');
INSERT INTO `ht_role_menu` VALUES ('20160811125658-13245-JS', '01-04', '1');
INSERT INTO `ht_role_menu` VALUES ('20160811125658-13245-JS', '01-05', '1');
INSERT INTO `ht_role_menu` VALUES ('20160811125658-13245-JS', '01-06', '1');
INSERT INTO `ht_role_menu` VALUES ('20160811125658-13245-JS', '02-01', '1');
INSERT INTO `ht_role_menu` VALUES ('20160811125658-13245-JS', '02-02', '1');
INSERT INTO `ht_role_menu` VALUES ('20160811125658-13245-JS', '03-01', '1');
INSERT INTO `ht_role_menu` VALUES ('20160811141229-74343-JS', '00-00', '1');
INSERT INTO `ht_role_menu` VALUES ('20160811141229-74343-JS', '01-01', '1');
INSERT INTO `ht_role_menu` VALUES ('20160811141229-74343-JS', '01-02', '1');
INSERT INTO `ht_role_menu` VALUES ('20160811141229-74343-JS', '01-03', '1');
INSERT INTO `ht_role_menu` VALUES ('20160811141229-74343-JS', '01-04', '1');
INSERT INTO `ht_role_menu` VALUES ('20160811141229-74343-JS', '01-05', '1');
INSERT INTO `ht_role_menu` VALUES ('20160811141229-74343-JS', '01-06', '1');
INSERT INTO `ht_role_menu` VALUES ('20160811141229-74343-JS', '02-01', '1');
INSERT INTO `ht_role_menu` VALUES ('20160811141229-74343-JS', '02-02', '1');
INSERT INTO `ht_role_menu` VALUES ('20160811141229-74343-JS', '03-00', '1');
INSERT INTO `ht_role_menu` VALUES ('20160811141229-74343-JS', '03-01', '1');
INSERT INTO `ht_role_menu` VALUES ('20160811141229-74343-JS', '20160811125057_a39396635ff948', '1');
INSERT INTO `ht_role_menu` VALUES ('20161207214619-94090-JS', '', '1');
INSERT INTO `ht_role_menu` VALUES ('20160821123244-43906-JS', '01-01', '1');
INSERT INTO `ht_role_menu` VALUES ('20160821123244-43906-JS', '01-02', '1');
INSERT INTO `ht_role_menu` VALUES ('20160821123244-43906-JS', '01-03', '1');
INSERT INTO `ht_role_menu` VALUES ('20160821123244-43906-JS', '01-04', '1');
INSERT INTO `ht_role_menu` VALUES ('20160821123244-43906-JS', '01-05', '1');
INSERT INTO `ht_role_menu` VALUES ('20160821123244-43906-JS', '01-06', '1');
INSERT INTO `ht_role_menu` VALUES ('20160821123244-43906-JS', '00-00', '1');
INSERT INTO `ht_role_menu` VALUES ('20140406175132-94768-JS', '01-01', '1');
INSERT INTO `ht_role_menu` VALUES ('20140406175132-94768-JS', '01-02', '1');
INSERT INTO `ht_role_menu` VALUES ('20140406175132-94768-JS', '01-03', '1');
INSERT INTO `ht_role_menu` VALUES ('20140406175132-94768-JS', '01-04', '1');
INSERT INTO `ht_role_menu` VALUES ('20140406175132-94768-JS', '01-05', '1');
INSERT INTO `ht_role_menu` VALUES ('20140406175132-94768-JS', '01-06', '1');
INSERT INTO `ht_role_menu` VALUES ('20140406175132-94768-JS', '03-01', '1');
INSERT INTO `ht_role_menu` VALUES ('20140406175132-94768-JS', '23234', '1');
INSERT INTO `ht_role_menu` VALUES ('20140406175132-94768-JS', '02-01', '1');
INSERT INTO `ht_role_menu` VALUES ('20140406175132-94768-JS', '02-02', '1');
INSERT INTO `ht_role_menu` VALUES ('20140406175132-94768-JS', '20170528011807_3c3a0173b6be4f', '1');
INSERT INTO `ht_role_menu` VALUES ('20140406175132-94768-JS', '20170626150843_ea82d807aa1142', '1');
INSERT INTO `ht_role_menu` VALUES ('20140406175132-94768-JS', '20170626150932_d4124c7003c24d', '1');
INSERT INTO `ht_role_menu` VALUES ('20140406175132-94768-JS', '20170626150750_cb63c0edfa054e', '1');
INSERT INTO `ht_role_menu` VALUES ('20140406175132-94768-JS', '20170528011844_c126e614fdce45', '1');
INSERT INTO `ht_role_menu` VALUES ('20140406175132-94768-JS', '20170626151616_251edf8ff5c649', '1');
INSERT INTO `ht_role_menu` VALUES ('20140406175132-94768-JS', '20170626151513_36a260bd06044a', '1');
INSERT INTO `ht_role_menu` VALUES ('20140406175132-94768-JS', '03-00', '1');

-- ----------------------------
-- Table structure for logs_info
-- ----------------------------
DROP TABLE IF EXISTS `logs_info`;
CREATE TABLE `logs_info` (
  `ID` varchar(33) DEFAULT NULL,
  `ACCOUNT` varchar(33) DEFAULT NULL COMMENT '用户',
  `MODULE` varchar(50) DEFAULT NULL COMMENT '模块',
  `METHODS` varchar(200) DEFAULT NULL COMMENT '方法',
  `ACTIONTIME` varchar(33) DEFAULT NULL COMMENT '执行时间',
  `USERIP` varchar(33) DEFAULT NULL COMMENT '用户ip',
  `OPERTIME` datetime DEFAULT NULL COMMENT '创建时间',
  `DESCRIPTION` varchar(2000) DEFAULT NULL COMMENT '结果',
  `METHODNAME` varchar(500) DEFAULT NULL COMMENT '方法名字',
  `MENU_NAME` varchar(200) DEFAULT NULL COMMENT '菜单名称',
  `MENU_URL` varchar(200) DEFAULT NULL COMMENT '菜单URL',
  `LOGS_TYPE` varchar(10) DEFAULT NULL COMMENT '日志类型，1：菜单；2：功能按钮',
  `BAK4` varchar(200) DEFAULT NULL,
  `BAK5` varchar(200) DEFAULT NULL,
  `BAK1` varchar(200) DEFAULT NULL,
  `BAK2` varchar(200) DEFAULT NULL,
  `BAK3` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='日志表';

-- ----------------------------
-- Records of logs_info
-- ----------------------------
INSERT INTO `logs_info` VALUES ('20160507223057-55272-LG', '无法获取登录用户信息！', '登录', 'login', '290', '127.0.0.1', '2016-05-07 22:30:58', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160507223507-51200-LG', '无法获取登录用户信息！', '登录', 'login', '250', '127.0.0.1', '2016-05-07 22:35:07', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160509104528-03875-LG', '无法获取登录用户信息！', '登录', 'login', '390', '127.0.0.1', '2016-05-09 10:45:29', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160509104911-60301-LG', '无法获取登录用户信息！', '登录', 'login', '242', '127.0.0.1', '2016-05-09 10:49:12', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160509105243-60193-LG', '无法获取登录用户信息！', '登录', 'login', '261', '127.0.0.1', '2016-05-09 10:52:43', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160509123534-45081-LG', '无法获取登录用户信息！', '登录', 'login', '320', '127.0.0.1', '2016-05-09 12:35:35', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160509124544-96545-LG', '无法获取登录用户信息！', '登录', 'login', '281', '127.0.0.1', '2016-05-09 12:45:44', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160509125249-84615-LG', '无法获取登录用户信息！', '登录', 'login', '252', '127.0.0.1', '2016-05-09 12:52:50', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160509125632-16354-LG', '无法获取登录用户信息！', '登录', 'login', '303', '127.0.0.1', '2016-05-09 12:56:33', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160509140646-34912-LG', '无法获取登录用户信息！', '登录', 'login', '292', '127.0.0.1', '2016-05-09 14:06:46', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160509141053-06370-LG', '无法获取登录用户信息！', '登录', 'login', '257', '127.0.0.1', '2016-05-09 14:10:53', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160509141258-95814-LG', '无法获取登录用户信息！', '登录', 'login', '276', '127.0.0.1', '2016-05-09 14:12:59', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160509141941-99377-LG', '无法获取登录用户信息！', '登录', 'login', '243', '127.0.0.1', '2016-05-09 14:19:41', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160509142731-42826-LG', '无法获取登录用户信息！', '登录', 'login', '267', '127.0.0.1', '2016-05-09 14:27:32', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160510155811-78086-LG', '无法获取登录用户信息！', '登录', 'login', '250', '127.0.0.1', '2016-05-10 15:58:12', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160510163654-60132-LG', '无法获取登录用户信息！', '登录', 'login', '286', '127.0.0.1', '2016-05-10 16:36:55', '执行成功!', '请求方法:CsrCtrl.login_cors()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160510163731-87007-LG', '无法获取登录用户信息！', '登录', 'login', '86', '192.168.5.117', '2016-05-10 16:37:32', '执行成功!', '请求方法:CsrCtrl.login_cors()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160510163808-46746-LG', '无法获取登录用户信息！', '登录', 'login', '216', '192.168.5.109', '2016-05-10 16:38:09', '执行成功!', '请求方法:CsrCtrl.login_cors()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160510163825-98023-LG', '无法获取登录用户信息！', '登录', 'login', '82', '192.168.5.109', '2016-05-10 16:38:26', '执行成功!', '请求方法:CsrCtrl.login_cors()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160510164451-59702-LG', '无法获取登录用户信息！', '登录', 'login', '169', '127.0.0.1', '2016-05-10 16:44:51', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160510165856-05122-LG', '无法获取登录用户信息！', '登录', 'login', '135', '127.0.0.1', '2016-05-10 16:58:57', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160510174345-28001-LG', '无法获取登录用户信息！', '登录', 'login', '130', '192.168.5.119', '2016-05-10 17:43:46', '执行成功!', '请求方法:CsrCtrl.login_cors()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160510174355-36764-LG', '无法获取登录用户信息！', '登录', 'login', '100', '192.168.5.119', '2016-05-10 17:43:55', '执行成功!', '请求方法:CsrCtrl.login_cors()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160510175227-57660-LG', '无法获取登录用户信息！', '登录', 'login', '114', '192.168.5.119', '2016-05-10 17:52:28', '执行成功!', '请求方法:CsrCtrl.login_cors()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160510175244-69969-LG', '无法获取登录用户信息！', '登录', 'login', '118', '192.168.5.119', '2016-05-10 17:52:45', '执行成功!', '请求方法:CsrCtrl.login_cors()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160510175412-83258-LG', '无法获取登录用户信息！', '登录', 'login', '120', '127.0.0.1', '2016-05-10 17:54:13', '执行成功!', '请求方法:CsrCtrl.login_cors()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160511144036-73993-LG', '无法获取登录用户信息！', '登录', 'login', '343', '127.0.0.1', '2016-05-11 14:40:36', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160511163947-92025-LG', '无法获取登录用户信息！', '登录', 'login', '397', '127.0.0.1', '2016-05-11 16:39:48', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160512190255-43592-LG', '无法获取登录用户信息！', '登录', 'login', '218', '127.0.0.1', '2016-05-12 19:02:56', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160512190730-38692-LG', '无法获取登录用户信息！', '登录', 'login', '261', '127.0.0.1', '2016-05-12 19:07:30', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160513163357-91007-LG', '无法获取登录用户信息！', '登录', 'login', '327', '127.0.0.1', '2016-05-13 16:33:57', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160513163722-81116-LG', '无法获取登录用户信息！', '登录', 'login', '340', '127.0.0.1', '2016-05-13 16:37:22', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160513164306-85924-LG', '无法获取登录用户信息！', '登录', 'login', '537', '127.0.0.1', '2016-05-13 16:43:07', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160514202813-96538-LG', '无法获取登录用户信息！', '登录', 'login', '287', '127.0.0.1', '2016-05-14 20:28:14', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160514203409-34076-LG', '无法获取登录用户信息！', '登录', 'login', '249', '127.0.0.1', '2016-05-14 20:34:09', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160517104118-45999-LG', '无法获取登录用户信息！', '登录', 'login', '362', '127.0.0.1', '2016-05-17 10:41:18', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160517105216-24032-LG', '无法获取登录用户信息！', '登录', 'login', '1279', '127.0.0.1', '2016-05-17 10:52:16', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160517105452-96797-LG', '无法获取登录用户信息！', '登录', 'login', '343', '127.0.0.1', '2016-05-17 10:54:53', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160517105821-84399-LG', '无法获取登录用户信息！', '登录', 'login', '292', '127.0.0.1', '2016-05-17 10:58:21', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160517105924-18052-LG', '无法获取登录用户信息！', '登录', 'login', '323', '127.0.0.1', '2016-05-17 10:59:25', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160524111618-41207-LG', '无法获取登录用户信息！', '登录', 'login', '564', '127.0.0.1', '2016-05-24 11:16:18', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160524111810-41729-LG', '无法获取登录用户信息！', '登录', 'login', '276', '127.0.0.1', '2016-05-24 11:18:11', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160524135403-54155-LG', '无法获取登录用户信息！', '登录', 'login', '534', '127.0.0.1', '2016-05-24 13:54:04', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160524135637-24219-LG', '无法获取登录用户信息！', '登录', 'login', '354', '127.0.0.1', '2016-05-24 13:56:38', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160524143044-91577-LG', '无法获取登录用户信息！', '登录', 'login', '265', '127.0.0.1', '2016-05-24 14:30:44', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160524185148-46184-LG', '无法获取登录用户信息！', '登录', 'login', '269', '127.0.0.1', '2016-05-24 18:51:48', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160714134457-53815-LG', '无法获取登录用户信息！', '登录', 'login', '484', '127.0.0.1', '2016-07-14 13:44:57', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160714134936-58365-LG', '无法获取登录用户信息！', '登录', 'login', '278', '0:0:0:0:0:0:0:1', '2016-07-14 13:49:36', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160714134951-29526-LG', 'admin', '登录', 'login', '132', '0:0:0:0:0:0:0:1', '2016-07-14 13:49:52', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160714135107-41522-LG', '无法获取登录用户信息！', '登录', 'login', '153', '0:0:0:0:0:0:0:1', '2016-07-14 13:51:08', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160714140427-07804-LG', '无法获取登录用户信息！', '登录', 'login', '158', '0:0:0:0:0:0:0:1', '2016-07-14 14:04:28', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160714140609-34838-LG', '无法获取登录用户信息！', '登录', 'login', '132', '0:0:0:0:0:0:0:1', '2016-07-14 14:06:09', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160714140854-57421-LG', '无法获取登录用户信息！', '登录', 'login', '177', '0:0:0:0:0:0:0:1', '2016-07-14 14:08:54', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160714140926-08357-LG', '无法获取登录用户信息！', '登录', 'login', '116', '0:0:0:0:0:0:0:1', '2016-07-14 14:09:26', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160714141002-50724-LG', '无法获取登录用户信息！', '登录', 'login', '116', '0:0:0:0:0:0:0:1', '2016-07-14 14:10:02', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160714141147-22394-LG', '无法获取登录用户信息！', '登录', 'login', '112', '0:0:0:0:0:0:0:1', '2016-07-14 14:11:48', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160714141453-09121-LG', '无法获取登录用户信息！', '登录', 'login', '106', '0:0:0:0:0:0:0:1', '2016-07-14 14:14:54', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160714141714-37186-LG', '无法获取登录用户信息！', '登录', 'login', '197', '0:0:0:0:0:0:0:1', '2016-07-14 14:17:14', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160714142026-14440-LG', '无法获取登录用户信息！', '登录', 'login', '1040', '0:0:0:0:0:0:0:1', '2016-07-14 14:20:27', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160714142123-74333-LG', '无法获取登录用户信息！', '登录', 'login', '111', '0:0:0:0:0:0:0:1', '2016-07-14 14:21:24', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160714142255-82421-LG', '无法获取登录用户信息！', '登录', 'login', '130', '0:0:0:0:0:0:0:1', '2016-07-14 14:22:55', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160714142335-43976-LG', '无法获取登录用户信息！', '登录', 'login', '127', '0:0:0:0:0:0:0:1', '2016-07-14 14:23:36', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160714142805-61781-LG', '无法获取登录用户信息！', '登录', 'login', '139', '0:0:0:0:0:0:0:1', '2016-07-14 14:28:05', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160714143001-29455-LG', '无法获取登录用户信息！', '登录', 'login', '187', '0:0:0:0:0:0:0:1', '2016-07-14 14:30:02', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160714143216-05300-LG', '无法获取登录用户信息！', '登录', 'login', '117', '0:0:0:0:0:0:0:1', '2016-07-14 14:32:17', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160714143341-40400-LG', '无法获取登录用户信息！', '登录', 'login', '105', '0:0:0:0:0:0:0:1', '2016-07-14 14:33:41', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160714145137-58021-LG', '无法获取登录用户信息！', '登录', 'login', '161', '0:0:0:0:0:0:0:1', '2016-07-14 14:51:38', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160714145204-71915-LG', '无法获取登录用户信息！', '登录', 'login', '1335', '0:0:0:0:0:0:0:1', '2016-07-14 14:52:05', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160714145205-33413-LG', '无法获取登录用户信息！', '登录', 'login', '168', '0:0:0:0:0:0:0:1', '2016-07-14 14:52:05', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160714150808-51215-LG', '无法获取登录用户信息！', '登录', 'login', '186', '0:0:0:0:0:0:0:1', '2016-07-14 15:08:08', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160714151025-29443-LG', '无法获取登录用户信息！', '登录', 'login', '167', '0:0:0:0:0:0:0:1', '2016-07-14 15:10:26', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160714151031-97276-LG', '无法获取登录用户信息！', '登录', 'login', '117', '0:0:0:0:0:0:0:1', '2016-07-14 15:10:32', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160719100036-04077-LG', '无法获取登录用户信息！', '登录', 'login', '3631', '127.0.0.1', '2016-07-19 10:00:37', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160811095220-90297-LG', '无法获取登录用户信息！', '登录', 'login', '595', '127.0.0.1', '2016-08-11 09:52:20', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160811095230-74595-LG', '无法获取登录用户信息！', '登录', 'login', '295', '127.0.0.1', '2016-08-11 09:52:30', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160811105454-86118-LG', '无法获取登录用户信息！', '登录', 'login', '287', '127.0.0.1', '2016-08-11 10:54:55', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160811105626-91990-LG', '无法获取登录用户信息！', '登录', 'login', '93', '127.0.0.1', '2016-08-11 10:56:26', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160811105713-22983-LG', '无法获取登录用户信息！', '登录', 'login', '206', '127.0.0.1', '2016-08-11 10:57:14', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160811110014-93518-LG', '无法获取登录用户信息！', '登录', 'login', '115', '127.0.0.1', '2016-08-11 11:00:14', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160811115819-43110-LG', '无法获取登录用户信息！', '登录', 'login', '136', '127.0.0.1', '2016-08-11 11:58:20', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160811121505-78951-LG', '无法获取登录用户信息！', '登录', 'login', '296', '127.0.0.1', '2016-08-11 12:15:06', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160811124206-93747-LG', '无法获取登录用户信息！', '登录', 'login', '298', '127.0.0.1', '2016-08-11 12:42:06', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160811124801-37888-LG', '无法获取登录用户信息！', '登录', 'login', '236', '127.0.0.1', '2016-08-11 12:48:01', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160811132349-69435-LG', '无法获取登录用户信息！', '登录', 'login', '132', '127.0.0.1', '2016-08-11 13:23:50', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160811133848-01479-LG', '无法获取登录用户信息！', '登录', 'login', '187', '127.0.0.1', '2016-08-11 13:38:49', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160811134034-59956-LG', '无法获取登录用户信息！', '登录', 'login', '190', '127.0.0.1', '2016-08-11 13:40:34', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160811141704-10112-LG', '无法获取登录用户信息！', '登录', 'login', '189', '127.0.0.1', '2016-08-11 14:17:05', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160811143724-89028-LG', '无法获取登录用户信息！', '登录', 'login', '221', '127.0.0.1', '2016-08-11 14:37:24', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160811154732-64157-LG', '无法获取登录用户信息！', '登录', 'login', '3276', '127.0.0.1', '2016-08-11 15:47:33', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160811162339-65075-LG', '无法获取登录用户信息！', '登录', 'login', '247', '127.0.0.1', '2016-08-11 16:23:40', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160811164125-70737-LG', '无法获取登录用户信息！', '登录', 'login', '289', '127.0.0.1', '2016-08-11 16:41:25', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160811214832-61599-LG', '无法获取登录用户信息！', '登录', 'login', '478', '127.0.0.1', '2016-08-11 21:48:33', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160811214838-16143-LG', '无法获取登录用户信息！', '登录', 'login', '37', '127.0.0.1', '2016-08-11 21:48:38', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160811215609-04329-LG', '无法获取登录用户信息！', '登录', 'login', '263', '127.0.0.1', '2016-08-11 21:56:09', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160812123154-09086-LG', '无法获取登录用户信息！', '登录', 'login', '1345', '127.0.0.1', '2016-08-12 12:31:55', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160812143153-56607-LG', '无法获取登录用户信息！', '登录', 'login', '12', '127.0.0.1', '2016-08-12 14:31:53', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160818164040-20186-LG', '无法获取登录用户信息！', '登录', 'login', '2307', '127.0.0.1', '2016-08-18 16:40:40', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160818164336-51832-LG', '无法获取登录用户信息！', '登录', 'login', '186', '127.0.0.1', '2016-08-18 16:43:36', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160818165017-50663-LG', '无法获取登录用户信息！', '登录', 'login', '152', '127.0.0.1', '2016-08-18 16:50:18', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160819140210-32315-LG', '无法获取登录用户信息！', '登录', 'login', '792', '127.0.0.1', '2016-08-19 14:02:10', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160819152847-82403-LG', '无法获取登录用户信息！', '登录', 'login', '18', '127.0.0.1', '2016-08-19 15:28:47', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160819162735-83229-LG', '无法获取登录用户信息！', '登录', 'login', '217', '127.0.0.1', '2016-08-19 16:27:35', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160819163720-27964-LG', '无法获取登录用户信息！', '登录', 'login', '783', '127.0.0.1', '2016-08-19 16:37:21', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160819163749-23863-LG', '无法获取登录用户信息！', '登录', 'login', '855', '127.0.0.1', '2016-08-19 16:37:49', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160819164233-21408-LG', '无法获取登录用户信息！', '登录', 'login', '165', '127.0.0.1', '2016-08-19 16:42:33', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160819164242-88632-LG', '无法获取登录用户信息！', '登录', 'login', '126', '127.0.0.1', '2016-08-19 16:42:42', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160819172155-38047-LG', '无法获取登录用户信息！', '登录', 'login', '226', '127.0.0.1', '2016-08-19 17:21:56', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160819175511-82308-LG', '无法获取登录用户信息！', '登录', 'login', '14', '127.0.0.1', '2016-08-19 17:55:12', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160819215509-92874-LG', '无法获取登录用户信息！', '登录', 'login', '489', '127.0.0.1', '2016-08-19 21:55:09', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160819230608-42122-LG', '无法获取登录用户信息！', '登录', 'login', '13', '127.0.0.1', '2016-08-19 23:06:09', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160820200351-21301-LG', '无法获取登录用户信息！', '登录', 'login', '2515', '127.0.0.1', '2016-08-20 20:03:51', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160820210333-08728-LG', '无法获取登录用户信息！', '登录', 'login', '15', '127.0.0.1', '2016-08-20 21:03:33', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160820211726-93261-LG', '无法获取登录用户信息！', '登录', 'login', '275', '127.0.0.1', '2016-08-20 21:17:26', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160820211842-10949-LG', '无法获取登录用户信息！', '登录', 'login', '18', '127.0.0.1', '2016-08-20 21:18:42', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160820215652-61628-LG', '无法获取登录用户信息！', '登录', 'login', '17', '127.0.0.1', '2016-08-20 21:56:53', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160821084510-67498-LG', '无法获取登录用户信息！', '登录', 'login', '2858', '127.0.0.1', '2016-08-21 08:45:10', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160821093716-15898-LG', '无法获取登录用户信息！', '登录', 'login', '9', '127.0.0.1', '2016-08-21 09:37:16', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160821105743-86816-LG', '无法获取登录用户信息！', '登录', 'login', '25', '127.0.0.1', '2016-08-21 10:57:44', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160821113344-70249-LG', '无法获取登录用户信息！', '登录', 'login', '12', '127.0.0.1', '2016-08-21 11:33:45', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160821121155-31879-LG', '无法获取登录用户信息！', '登录', 'login', '13', '127.0.0.1', '2016-08-21 12:11:56', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160821130620-09738-LG', '无法获取登录用户信息！', '登录', 'login', '13', '127.0.0.1', '2016-08-21 13:06:20', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160821184328-05608-LG', '无法获取登录用户信息！', '登录', 'login', '9', '127.0.0.1', '2016-08-21 18:43:28', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160821192843-87049-LG', '无法获取登录用户信息！', '登录', 'login', '9', '127.0.0.1', '2016-08-21 19:28:44', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160821203103-57523-LG', '无法获取登录用户信息！', '登录', 'login', '2443', '127.0.0.1', '2016-08-21 20:31:04', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160821221632-17706-LG', '无法获取登录用户信息！', '登录', 'login', '16', '127.0.0.1', '2016-08-21 22:16:33', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160821230449-29729-LG', '无法获取登录用户信息！', '登录', 'login', '12', '192.168.0.10', '2016-08-21 23:04:49', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160821230545-70276-LG', '无法获取登录用户信息！', '登录', 'login', '18', '192.168.0.11', '2016-08-21 23:05:46', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160821231532-84485-LG', '无法获取登录用户信息！', '登录', 'login', '205', '192.168.0.11', '2016-08-21 23:15:33', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160821234743-39033-LG', '无法获取登录用户信息！', '登录', 'login', '21', '192.168.0.11', '2016-08-21 23:47:44', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160821235908-45597-LG', '无法获取登录用户信息！', '登录', 'login', '9', '192.168.0.10', '2016-08-21 23:59:08', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160822093854-27473-LG', '无法获取登录用户信息！', '登录', 'login', '1460', '127.0.0.1', '2016-08-22 09:38:54', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160822105335-36993-LG', '无法获取登录用户信息！', '登录', 'login', '205', '127.0.0.1', '2016-08-22 10:53:35', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160822111805-50797-LG', '无法获取登录用户信息！', '登录', 'login', '30', '127.0.0.1', '2016-08-22 11:18:05', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160822111938-43673-LG', '无法获取登录用户信息！', '登录', 'login', '18', '192.168.2.19', '2016-08-22 11:19:39', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160822112011-82930-LG', '无法获取登录用户信息！', '登录', 'login', '26', '192.168.2.19', '2016-08-22 11:20:12', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160822112133-43576-LG', '无法获取登录用户信息！', '登录', 'login', '24', '192.168.2.19', '2016-08-22 11:21:33', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160822135616-15048-LG', '无法获取登录用户信息！', '登录', 'login', '234', '127.0.0.1', '2016-08-22 13:56:17', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160822141224-86303-LG', '无法获取登录用户信息！', '登录', 'login', '218', '127.0.0.1', '2016-08-22 14:12:25', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160822142002-80530-LG', '无法获取登录用户信息！', '登录', 'login', '18', '127.0.0.1', '2016-08-22 14:20:02', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160822142526-19272-LG', '无法获取登录用户信息！', '登录', 'login', '13', '127.0.0.1', '2016-08-22 14:25:27', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160822143320-58104-LG', '无法获取登录用户信息！', '登录', 'login', '198', '127.0.0.1', '2016-08-22 14:33:21', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160822145228-36923-LG', '无法获取登录用户信息！', '登录', 'login', '181', '127.0.0.1', '2016-08-22 14:52:29', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160822145948-61123-LG', '无法获取登录用户信息！', '登录', 'login', '136', '127.0.0.1', '2016-08-22 14:59:48', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160822151907-10979-LG', '无法获取登录用户信息！', '登录', 'login', '190', '127.0.0.1', '2016-08-22 15:19:07', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160822160343-29530-LG', '无法获取登录用户信息！', '登录', 'login', '199', '127.0.0.1', '2016-08-22 16:03:43', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160822203151-16249-LG', '无法获取登录用户信息！', '登录', 'login', '3778', '127.0.0.1', '2016-08-22 20:31:52', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160823093455-58597-LG', '无法获取登录用户信息！', '登录', 'login', '270', '127.0.0.1', '2016-08-23 09:34:55', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160823111849-19062-LG', '无法获取登录用户信息！', '登录', 'login', '196', '127.0.0.1', '2016-08-23 11:18:50', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160823112019-26052-LG', '无法获取登录用户信息！', '登录', 'login', '144', '127.0.0.1', '2016-08-23 11:20:20', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160823113628-20935-LG', '无法获取登录用户信息！', '登录', 'login', '194', '127.0.0.1', '2016-08-23 11:36:29', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160823123219-54194-LG', '无法获取登录用户信息！', '登录', 'login', '16', '127.0.0.1', '2016-08-23 12:32:20', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160823134522-14064-LG', '无法获取登录用户信息！', '登录', 'login', '44', '127.0.0.1', '2016-08-23 13:45:22', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160823155927-26349-LG', '无法获取登录用户信息！', '登录', 'login', '236', '127.0.0.1', '2016-08-23 15:59:27', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160823161156-26120-LG', '无法获取登录用户信息！', '登录', 'login', '33', '192.168.2.4', '2016-08-23 16:11:56', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160823164401-39401-LG', '无法获取登录用户信息！', '登录', 'login', '22', '192.168.2.101', '2016-08-23 16:44:01', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160823170756-47641-LG', '无法获取登录用户信息！', '登录', 'login', '192', '127.0.0.1', '2016-08-23 17:07:57', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20160919220255-63679-LG', '无法获取登录用户信息！', '登录', 'login', '1602', '127.0.0.1', '2016-09-19 22:02:55', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20161125144628-58515-LG', '无法获取登录用户信息！', '登录', 'login', '1992', '127.0.0.1', '2016-11-25 14:46:29', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20161128094744-43405-LG', '无法获取登录用户信息！', '登录', 'login', '1013', '127.0.0.1', '2016-11-28 09:47:44', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20161128135326-57299-LG', '无法获取登录用户信息！', '登录', 'login', '869', '0:0:0:0:0:0:0:1', '2016-11-28 13:53:27', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20161128135431-61932-LG', '无法获取登录用户信息！', '登录', 'login', '221', '0:0:0:0:0:0:0:1', '2016-11-28 13:54:32', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20161128163552-89710-LG', '无法获取登录用户信息！', '登录', 'login', '1055', '0:0:0:0:0:0:0:1', '2016-11-28 16:35:52', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20161128170700-38057-LG', '无法获取登录用户信息！', '登录', 'login', '283', '0:0:0:0:0:0:0:1', '2016-11-28 17:07:00', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20161129094632-41270-LG', '无法获取登录用户信息！', '登录', 'login', '423', '0:0:0:0:0:0:0:1', '2016-11-29 09:46:33', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20161129094835-98910-LG', '无法获取登录用户信息！', '登录', 'login', '179', '0:0:0:0:0:0:0:1', '2016-11-29 09:48:36', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20161129095314-47171-LG', '无法获取登录用户信息！', '登录', 'login', '13062', '0:0:0:0:0:0:0:1', '2016-11-29 09:53:14', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20161129095357-98530-LG', '无法获取登录用户信息！', '登录', '<font color=\"red\">执行方法异常:-->login</font>', '0', '0:0:0:0:0:0:0:1', '2016-11-29 09:53:57', '<font color=\"red\">执行方法异常:-->java.lang.RuntimeException: java.lang.ArithmeticException: / by zero</font>', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20161129100757-39467-LG', '无法获取登录用户信息！', '登录', 'login', '23279', '0:0:0:0:0:0:0:1', '2016-11-29 10:07:57', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20161129100920-22132-LG', '无法获取登录用户信息！', '登录', 'login', '5600', '0:0:0:0:0:0:0:1', '2016-11-29 10:09:20', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20161129101344-35204-LG', '无法获取登录用户信息！', '登录', 'login', '89256', '0:0:0:0:0:0:0:1', '2016-11-29 10:13:45', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20161129101402-12790-LG', '无法获取登录用户信息！', '登录', 'login', '3773', '0:0:0:0:0:0:0:1', '2016-11-29 10:14:03', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20161129101932-43989-LG', '无法获取登录用户信息！', '登录', 'login', '171', '0:0:0:0:0:0:0:1', '2016-11-29 10:19:32', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20161130175055-75802-LG', '无法获取登录用户信息！', '登录', 'login', '1907', '0:0:0:0:0:0:0:1', '2016-11-30 17:50:55', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20161201100407-45166-LG', '无法获取登录用户信息！', '登录', 'login', '1827', '0:0:0:0:0:0:0:1', '2016-12-01 10:04:07', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20161201135921-82793-LG', '无法获取登录用户信息！', '登录', 'login', '1170', '0:0:0:0:0:0:0:1', '2016-12-01 13:59:21', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20170113151718-09966-LG', '无法获取登录用户信息！', '登录', 'login', '387', '0:0:0:0:0:0:0:1', '2017-01-13 15:17:19', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20170113151726-59406-LG', '无法获取登录用户信息！', '登录', 'login', '84', '0:0:0:0:0:0:0:1', '2017-01-13 15:17:26', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20170113161612-79219-LG', '无法获取登录用户信息！', '登录', 'login', '367', '0:0:0:0:0:0:0:1', '2017-01-13 16:16:12', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20170113162046-42548-LG', '无法获取登录用户信息！', '登录', 'login', '21479', '0:0:0:0:0:0:0:1', '2017-01-13 16:20:47', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20170113163852-15993-LG', '无法获取登录用户信息！', '登录', 'login', '89', '0:0:0:0:0:0:0:1', '2017-01-13 16:38:52', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20170531193022-86584-LG', '无法获取登录用户信息！', '登录', 'login', '1420', '0:0:0:0:0:0:0:1', '2017-05-31 19:30:23', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20170531201236-38981-LG', '无法获取登录用户信息！', '登录', 'login', '206', '0:0:0:0:0:0:0:1', '2017-05-31 20:12:37', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20170601193610-12933-LG', '无法获取登录用户信息！', '登录', 'login', '350', '0:0:0:0:0:0:0:1', '2017-06-01 19:36:11', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20170603095245-79859-LG', '无法获取登录用户信息！', '登录', 'login', '265', '0:0:0:0:0:0:0:1', '2017-06-03 09:52:46', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20170608142216-13540-LG', '无法获取登录用户信息！', '登录', 'login', '297', '0:0:0:0:0:0:0:1', '2017-06-08 14:22:17', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20170619115403-79872-LG', '无法获取登录用户信息！', '登录', 'login', '389', '0:0:0:0:0:0:0:1', '2017-06-19 11:54:03', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20170621005820-95033-LG', '无法获取登录用户信息！', '登录', 'login', '228', '0:0:0:0:0:0:0:1', '2017-06-21 00:58:21', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20170626124851-91288-LG', '无法获取登录用户信息！', '登录', 'login', '191', '0:0:0:0:0:0:0:1', '2017-06-26 12:48:51', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20170626131644-32839-LG', '无法获取登录用户信息！', '登录', 'login', '162', '0:0:0:0:0:0:0:1', '2017-06-26 13:16:45', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20170626132449-91497-LG', '无法获取登录用户信息！', '登录', 'login', '224', '0:0:0:0:0:0:0:1', '2017-06-26 13:24:50', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20170626141253-44506-LG', '无法获取登录用户信息！', '登录', 'login', '154', '0:0:0:0:0:0:0:1', '2017-06-26 14:12:53', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20170626141327-87227-LG', '无法获取登录用户信息！', '登录', 'login', '188', '0:0:0:0:0:0:0:1', '2017-06-26 14:13:27', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20170626141946-60829-LG', '无法获取登录用户信息！', '登录', 'login', '182', '0:0:0:0:0:0:0:1', '2017-06-26 14:19:47', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20170626142925-56559-LG', '无法获取登录用户信息！', '登录', 'login', '187', '0:0:0:0:0:0:0:1', '2017-06-26 14:29:26', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20170626143917-59333-LG', '无法获取登录用户信息！', '登录', 'login', '184', '0:0:0:0:0:0:0:1', '2017-06-26 14:39:17', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20170626144942-23368-LG', '无法获取登录用户信息！', '登录', 'login', '203', '0:0:0:0:0:0:0:1', '2017-06-26 14:49:42', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20170626145631-70235-LG', '无法获取登录用户信息！', '登录', 'login', '198', '0:0:0:0:0:0:0:1', '2017-06-26 14:56:31', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20170626150601-82705-LG', '无法获取登录用户信息！', '登录', 'login', '182', '0:0:0:0:0:0:0:1', '2017-06-26 15:06:02', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20170626150729-47190-LG', '无法获取登录用户信息！', '登录', 'login', '193', '0:0:0:0:0:0:0:1', '2017-06-26 15:07:30', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);
INSERT INTO `logs_info` VALUES ('20170626151218-81781-LG', '无法获取登录用户信息！', '登录', 'login', '163', '0:0:0:0:0:0:0:1', '2017-06-26 15:12:19', '执行成功!', '请求方法:CsrCtrl.login()', '', '', '2', null, null, null, null, null);

-- ----------------------------
-- Table structure for province
-- ----------------------------
DROP TABLE IF EXISTS `province`;
CREATE TABLE `province` (
  `provinceid` varchar(50) DEFAULT NULL,
  `provincename` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of province
-- ----------------------------
INSERT INTO `province` VALUES ('1', '北京');
INSERT INTO `province` VALUES ('2', '上海');
INSERT INTO `province` VALUES ('3', '天津');
INSERT INTO `province` VALUES ('4', ' 重庆');
INSERT INTO `province` VALUES ('5', ' 黑龙江');
INSERT INTO `province` VALUES ('6', '吉林');
INSERT INTO `province` VALUES ('7', '辽宁');
INSERT INTO `province` VALUES ('8', '内蒙古');
INSERT INTO `province` VALUES ('9', '宁夏');
INSERT INTO `province` VALUES ('10', '新疆');
INSERT INTO `province` VALUES ('11', '青海');
INSERT INTO `province` VALUES ('12', '甘肃');
INSERT INTO `province` VALUES ('13', '陕西');
INSERT INTO `province` VALUES ('14', '河北');
INSERT INTO `province` VALUES ('15', '河南');
INSERT INTO `province` VALUES ('16', '山东');
INSERT INTO `province` VALUES ('17', '山西');
INSERT INTO `province` VALUES ('18', '湖北');
INSERT INTO `province` VALUES ('19', '湖南');
INSERT INTO `province` VALUES ('20', '安徽');
INSERT INTO `province` VALUES ('21', '江苏');
INSERT INTO `province` VALUES ('22', ' 浙江');
INSERT INTO `province` VALUES ('23', '江西');
INSERT INTO `province` VALUES ('24', '广东');
INSERT INTO `province` VALUES ('25', '广西');
INSERT INTO `province` VALUES ('26', '福建');
INSERT INTO `province` VALUES ('27', '四川');
INSERT INTO `province` VALUES ('28', '云南');
INSERT INTO `province` VALUES ('29', '贵州');
INSERT INTO `province` VALUES ('30', '西藏');
INSERT INTO `province` VALUES ('31', '海南');
INSERT INTO `province` VALUES ('32', '香港');
INSERT INTO `province` VALUES ('33', '澳门');
INSERT INTO `province` VALUES ('34', '台湾');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` varchar(44) NOT NULL,
  `name` varchar(33) DEFAULT NULL COMMENT '姓名',
  `phonenum` varchar(11) DEFAULT NULL COMMENT '电话号码',
  `birthday` datetime DEFAULT NULL COMMENT '生日',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('20170530232926_409c1b80e3d747', '12', '12', '2017-05-30 23:29:22');
INSERT INTO `student` VALUES ('20170530232934_f558ce74e94449', '3213', '123123', '2017-05-27 23:29:31');
