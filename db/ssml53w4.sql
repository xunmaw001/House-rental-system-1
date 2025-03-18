-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssml53w4
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611968393691 DEFAULT CHARSET=utf8 COMMENT='客服中心';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (71,'2021-01-30 00:45:32',1,1,'提问1','回复1',1),(72,'2021-01-30 00:45:32',2,2,'提问2','回复2',2),(73,'2021-01-30 00:45:32',3,3,'提问3','回复3',3),(74,'2021-01-30 00:45:32',4,4,'提问4','回复4',4),(75,'2021-01-30 00:45:32',5,5,'提问5','回复5',5),(76,'2021-01-30 00:45:32',6,6,'提问6','回复6',6),(1611968125670,'2021-01-30 00:55:25',1611967999221,NULL,'这里可以咨询',NULL,0),(1611968129620,'2021-01-30 00:55:29',1611967999221,NULL,'可以约看房',NULL,0),(1611968393690,'2021-01-30 00:59:53',1611967999221,1,NULL,'这里回复用户信息',NULL);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssml53w4/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssml53w4/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssml53w4/upload/picture3.jpg'),(6,'homepage',NULL),(7,'picture4','http://localhost:8080/ssml53w4/upload/1611968369095.png');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dingdanxinxi`
--

DROP TABLE IF EXISTS `dingdanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dingdanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `fangwumingcheng` varchar(200) DEFAULT NULL COMMENT '房屋名称',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `weizhi` varchar(200) DEFAULT NULL COMMENT '位置',
  `chaoxiang` varchar(200) DEFAULT NULL COMMENT '朝向',
  `louceng` varchar(200) DEFAULT NULL COMMENT '楼层',
  `louhao` varchar(200) DEFAULT NULL COMMENT '楼号',
  `zujin` int(11) NOT NULL COMMENT '租金',
  `yajin` int(11) NOT NULL COMMENT '押金',
  `zongjiage` varchar(200) DEFAULT NULL COMMENT '总价格',
  `zufangriqi` date DEFAULT NULL COMMENT '租房日期',
  `zufangshizhang` varchar(200) NOT NULL COMMENT '租房时长',
  `xinxibeizhu` varchar(200) DEFAULT NULL COMMENT '信息备注',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1611968100048 DEFAULT CHARSET=utf8 COMMENT='订单信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dingdanxinxi`
--

LOCK TABLES `dingdanxinxi` WRITE;
/*!40000 ALTER TABLE `dingdanxinxi` DISABLE KEYS */;
INSERT INTO `dingdanxinxi` VALUES (1611968100047,'2021-01-30 00:54:59','20211308544644488866','房屋名称1','公寓','http://localhost:8080/ssml53w4/upload/fangwuzulin_tupian1.jpg','A小区','朝南','11','1102',2600,5000,'7600','2021-02-06','一个月','','666','小李','16459878981','658945987865459878','是','收到订单  签订合同','已支付');
/*!40000 ALTER TABLE `dingdanxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussfangwuzulin`
--

DROP TABLE IF EXISTS `discussfangwuzulin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussfangwuzulin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611968079713 DEFAULT CHARSET=utf8 COMMENT='房屋租赁评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussfangwuzulin`
--

LOCK TABLES `discussfangwuzulin` WRITE;
/*!40000 ALTER TABLE `discussfangwuzulin` DISABLE KEYS */;
INSERT INTO `discussfangwuzulin` VALUES (101,'2021-01-30 00:45:32',1,1,'评论内容1','回复内容1'),(102,'2021-01-30 00:45:32',2,2,'评论内容2','回复内容2'),(103,'2021-01-30 00:45:32',3,3,'评论内容3','回复内容3'),(104,'2021-01-30 00:45:32',4,4,'评论内容4','回复内容4'),(105,'2021-01-30 00:45:32',5,5,'评论内容5','回复内容5'),(106,'2021-01-30 00:45:32',6,6,'评论内容6','回复内容6'),(1611968079712,'2021-01-30 00:54:39',21,1611967999221,'登录后可以收藏  评论  在线租房  客服中心约看房等操作','这里回复评论');
/*!40000 ALTER TABLE `discussfangwuzulin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fangwuleixing`
--

DROP TABLE IF EXISTS `fangwuleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fangwuleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `leixing` (`leixing`)
) ENGINE=InnoDB AUTO_INCREMENT=1611968181538 DEFAULT CHARSET=utf8 COMMENT='房屋类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fangwuleixing`
--

LOCK TABLES `fangwuleixing` WRITE;
/*!40000 ALTER TABLE `fangwuleixing` DISABLE KEYS */;
INSERT INTO `fangwuleixing` VALUES (11,'2021-01-30 00:45:31','公寓'),(12,'2021-01-30 00:45:31','单间'),(13,'2021-01-30 00:45:31','两室一厅'),(14,'2021-01-30 00:45:31','三室两厅'),(15,'2021-01-30 00:45:31','四室三厅'),(16,'2021-01-30 00:45:31','独栋'),(1611968181537,'2021-01-30 00:56:20','这里添加房屋分类');
/*!40000 ALTER TABLE `fangwuleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fangwuzulin`
--

DROP TABLE IF EXISTS `fangwuzulin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fangwuzulin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangwumingcheng` varchar(200) NOT NULL COMMENT '房屋名称',
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `chengshi` varchar(200) NOT NULL COMMENT '城市',
  `diqu` varchar(200) NOT NULL COMMENT '地区',
  `weizhi` varchar(200) NOT NULL COMMENT '位置',
  `chaoxiang` varchar(200) DEFAULT NULL COMMENT '朝向',
  `louceng` varchar(200) DEFAULT NULL COMMENT '楼层',
  `louhao` varchar(200) DEFAULT NULL COMMENT '楼号',
  `sheshi` varchar(200) DEFAULT NULL COMMENT '设施',
  `zujin` int(11) NOT NULL COMMENT '租金',
  `yajin` int(11) NOT NULL COMMENT '押金',
  `xiangqing` longtext COMMENT '详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611968241076 DEFAULT CHARSET=utf8 COMMENT='房屋租赁';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fangwuzulin`
--

LOCK TABLES `fangwuzulin` WRITE;
/*!40000 ALTER TABLE `fangwuzulin` DISABLE KEYS */;
INSERT INTO `fangwuzulin` VALUES (21,'2021-01-30 00:45:31','房屋名称1','公寓','http://localhost:8080/ssml53w4/upload/fangwuzulin_tupian1.jpg','上海','浦东','A小区','朝南','11','1102','设施1',2600,5000,'<p>详情1</p>','2021-01-30 09:01:56',7),(22,'2021-01-30 00:45:31','房屋名称2','类型2','http://localhost:8080/ssml53w4/upload/fangwuzulin_tupian2.jpg','城市2','地区2','位置2','朝向2','楼层2','楼号2','设施2',2,2,'详情2','2021-01-30 08:45:31',2),(23,'2021-01-30 00:45:31','房屋名称3','类型3','http://localhost:8080/ssml53w4/upload/fangwuzulin_tupian3.jpg','城市3','地区3','位置3','朝向3','楼层3','楼号3','设施3',3,3,'详情3','2021-01-30 08:45:31',3),(24,'2021-01-30 00:45:31','房屋名称4','类型4','http://localhost:8080/ssml53w4/upload/fangwuzulin_tupian4.jpg','城市4','地区4','位置4','朝向4','楼层4','楼号4','设施4',4,4,'详情4','2021-01-30 08:45:31',4),(25,'2021-01-30 00:45:31','房屋名称5','类型5','http://localhost:8080/ssml53w4/upload/fangwuzulin_tupian5.jpg','城市5','地区5','位置5','朝向5','楼层5','楼号5','设施5',5,5,'详情5','2021-01-30 08:45:31',5),(26,'2021-01-30 00:45:31','房屋名称6','类型6','http://localhost:8080/ssml53w4/upload/fangwuzulin_tupian6.jpg','城市6','地区6','位置6','朝向6','楼层6','楼号6','设施6',6,6,'详情6','2021-01-30 08:45:31',6),(1611968241075,'2021-01-30 00:57:20','这里添加出租的房屋','单间','http://localhost:8080/ssml53w4/upload/1611968211397.jpg','广州','花都','C小区','朝南','8','803','齐全',2600,6000,'<p><img src=\"http://localhost:8080/ssml53w4/upload/1611968239485.jpg\"></p>','2021-01-30 09:00:12',2);
/*!40000 ALTER TABLE `fangwuzulin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hetongxinxi`
--

DROP TABLE IF EXISTS `hetongxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hetongxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `hetongbianhao` varchar(200) DEFAULT NULL COMMENT '合同编号',
  `fangwumingcheng` varchar(200) DEFAULT NULL COMMENT '房屋名称',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `weizhi` varchar(200) DEFAULT NULL COMMENT '位置',
  `louceng` varchar(200) DEFAULT NULL COMMENT '楼层',
  `louhao` varchar(200) DEFAULT NULL COMMENT '楼号',
  `yajin` varchar(200) DEFAULT NULL COMMENT '押金',
  `zujin` varchar(200) DEFAULT NULL COMMENT '租金',
  `zufangriqi` varchar(200) DEFAULT NULL COMMENT '租房日期',
  `zufangshizhang` varchar(200) DEFAULT NULL COMMENT '租房时长',
  `hetongriqi` date DEFAULT NULL COMMENT '合同日期',
  `hetongneirong` longtext COMMENT '合同内容',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `hetongbianhao` (`hetongbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1611968288839 DEFAULT CHARSET=utf8 COMMENT='合同信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hetongxinxi`
--

LOCK TABLES `hetongxinxi` WRITE;
/*!40000 ALTER TABLE `hetongxinxi` DISABLE KEYS */;
INSERT INTO `hetongxinxi` VALUES (1611968288838,'2021-01-30 00:58:08','1611968273486','房屋名称1','公寓','http://localhost:8080/ssml53w4/upload/fangwuzulin_tupian1.jpg','A小区','11','1102','5000','2600','2021-02-06','一个月','2021-03-12','<p>合同这里添加</p>','666','小李','16459878981','658945987865459878');
/*!40000 ALTER TABLE `hetongxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huiyuan`
--

DROP TABLE IF EXISTS `huiyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huiyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1611967999222 DEFAULT CHARSET=utf8 COMMENT='会员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huiyuan`
--

LOCK TABLES `huiyuan` WRITE;
/*!40000 ALTER TABLE `huiyuan` DISABLE KEYS */;
INSERT INTO `huiyuan` VALUES (31,'2021-01-30 00:45:31','会员1','123456','姓名1','男','http://localhost:8080/ssml53w4/upload/huiyuan_touxiang1.jpg','13823888881','773890001@qq.com','440300199101010001'),(32,'2021-01-30 00:45:31','会员2','123456','姓名2','男','http://localhost:8080/ssml53w4/upload/huiyuan_touxiang2.jpg','13823888882','773890002@qq.com','440300199202020002'),(33,'2021-01-30 00:45:31','会员3','123456','姓名3','男','http://localhost:8080/ssml53w4/upload/huiyuan_touxiang3.jpg','13823888883','773890003@qq.com','440300199303030003'),(34,'2021-01-30 00:45:31','会员4','123456','姓名4','男','http://localhost:8080/ssml53w4/upload/huiyuan_touxiang4.jpg','13823888884','773890004@qq.com','440300199404040004'),(35,'2021-01-30 00:45:31','会员5','123456','姓名5','男','http://localhost:8080/ssml53w4/upload/huiyuan_touxiang5.jpg','13823888885','773890005@qq.com','440300199505050005'),(36,'2021-01-30 00:45:31','会员6','123456','姓名6','男','http://localhost:8080/ssml53w4/upload/huiyuan_touxiang6.jpg','13823888886','773890006@qq.com','440300199606060006'),(1611967999221,'2021-01-30 00:53:19','666','666','小李','男','http://localhost:8080/ssml53w4/upload/1611968010953.jpeg','16459878983','1324@123.com','658945987865459878');
/*!40000 ALTER TABLE `huiyuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (91,'2021-01-30 00:45:32','房屋租赁纠纷有哪些表现','随着工业化进程的推进，城市流动人口剧增，流动人口的住房刚性需求激发房屋租赁市场日益活跃。这就要求房屋租赁房市场规范化、法治化，保护租赁双方合法利益，那么房屋租赁纠纷的主要表现是什么，房屋租赁纠纷有哪些表现','http://localhost:8080/ssml53w4/upload/news_picture1.jpg','<p>随着工业化进程的推进，城市流动人口剧增，流动人口的住房刚性需求激发房屋租赁市场日益活跃。这就要求房屋租赁房市场规范化、法治化，保护租赁双方合法利益，那么房屋租赁纠纷的主要表现是什么，房屋租赁纠纷有哪些表现</p>'),(92,'2021-01-30 00:45:32','你家房子能租多少钱？包头房屋租赁指导价格出炉！','随着购房压力的不断增大\n\n很多人选择租房生活\n\n据悉\n\n目前中国房屋租赁人数已超2亿人','http://localhost:8080/ssml53w4/upload/news_picture2.jpg','<p>随着购房压力的不断增大</p><p>很多人选择租房生活</p><p>据悉</p><p>目前中国房屋租赁人数已超2亿人</p>'),(93,'2021-01-30 00:45:32','租房必看！不注意这个，违约用电还多交电费','　租房子可不是件简单的事情，供电企业提醒您，要提前了解该房屋的电费计价方式，否则可能会违约用电，而且还要白白多交电费。这不，前几天湖北襄阳卧龙镇新集村就发生了这样一件事。','http://localhost:8080/ssml53w4/upload/news_picture3.jpg','<p><span style=\"color: rgb(64, 64, 64);\">　租房子可不是件简单的事情，供电企业提醒您，要提前了解该房屋的电费计价方式，否则可能会违约用电，而且还要白白多交电费。这不，前几天湖北襄阳卧龙镇新集村就发生了这样一件事。</span></p>'),(94,'2021-01-30 00:45:32','男子谎称有申办公租房渠道，多名高知白领上当受骗','近日，海淀检察院就杨贺（系化名）诈骗案提起公诉，审查过程中发现，犯罪嫌疑人杨贺以有渠道办理公租房业务为名骗取多名被害人钱款近百万元，犯罪地点涵盖本市海淀、通州、怀柔等多个区域，被害人不乏收入稳定的高知人员，在嫌疑人“合法外衣”的掩盖下上当受骗。','http://localhost:8080/ssml53w4/upload/news_picture4.jpg','<p>近日，海淀检察院就杨贺（系化名）诈骗案提起公诉，审查过程中发现，犯罪嫌疑人杨贺以有渠道办理公租房业务为名骗取多名被害人钱款近百万元，犯罪地点涵盖本市海淀、通州、怀柔等多个区域，被害人不乏收入稳定的高知人员，在嫌疑人“合法外衣”的掩盖下上当受骗。</p>'),(95,'2021-01-30 00:45:32','大学生跟中介租房，花上万元刚住两周就被赶了出来','南宁一大四学生跟中介租房，花上万元刚住两周，就被房东赶了出来……\n\n每年寒假都是即将毕业的大学生进入社会实习的高峰期，一般来说，大部分学生会选择在实习地点附近租房。但租房一事可千万马虎不得，一不小心，就会像大学生小韦一样，交了一个季度上万元的房租，结果没住几天就出了问题。','http://localhost:8080/ssml53w4/upload/news_picture5.jpg','<p class=\"ql-align-justify\">	<strong>南宁一大四学生跟中介租房，花上万元刚住两周，就被房东赶了出来……</strong></p><p class=\"ql-align-justify\">	每年寒假都是即将毕业的大学生进入社会实习的高峰期，一般来说，大部分学生会选择在实习地点附近租房。但租房一事可千万马虎不得，一不小心，就会像大学生小韦一样，交了一个季度上万元的房租，结果没住几天就出了问题。</p><p><br></p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611968086140 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1611968086139,'2021-01-30 00:54:45',1611967999221,21,'fangwuzulin','房屋名称1','http://localhost:8080/ssml53w4/upload/fangwuzulin_tupian1.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','9v2mue5jrgdn69wcqy2le513lg99k5gx','2021-01-30 00:47:39','2021-01-30 02:01:12'),(2,1611967999221,'666','huiyuan','会员','6kth5qp9snox58fnztga9e3cxze91q3s','2021-01-30 00:53:23','2021-01-30 02:02:00');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tuifangpingjia`
--

DROP TABLE IF EXISTS `tuifangpingjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tuifangpingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `hetongbianhao` varchar(200) DEFAULT NULL COMMENT '合同编号',
  `fangwumingcheng` varchar(200) DEFAULT NULL COMMENT '房屋名称',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `weizhi` varchar(200) DEFAULT NULL COMMENT '位置',
  `louceng` varchar(200) DEFAULT NULL COMMENT '楼层',
  `louhao` varchar(200) DEFAULT NULL COMMENT '楼号',
  `yajin` varchar(200) DEFAULT NULL COMMENT '押金',
  `zufangriqi` varchar(200) DEFAULT NULL COMMENT '租房日期',
  `hetongriqi` varchar(200) DEFAULT NULL COMMENT '合同日期',
  `tuifangriqi` date NOT NULL COMMENT '退房日期',
  `fangwupingfen` varchar(200) NOT NULL COMMENT '房屋评分',
  `fangwupingjia` longtext NOT NULL COMMENT '房屋评价',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611968462195 DEFAULT CHARSET=utf8 COMMENT='退房评价';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tuifangpingjia`
--

LOCK TABLES `tuifangpingjia` WRITE;
/*!40000 ALTER TABLE `tuifangpingjia` DISABLE KEYS */;
INSERT INTO `tuifangpingjia` VALUES (1611968462194,'2021-01-30 01:01:01','1611968273486','房屋名称1','公寓','http://localhost:8080/ssml53w4/upload/fangwuzulin_tupian1.jpg','A小区','11','1102','5000','2021-02-06','2021-03-12','2021-03-13','5','<p>退房评价在这里操作</p>','666','小李','16459878983','658945987865459878','是','收到评价','已支付');
/*!40000 ALTER TABLE `tuifangpingjia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-01-30 00:45:32'),(2,'000','000','管理员','2021-01-30 00:59:10');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-10  9:41:33
