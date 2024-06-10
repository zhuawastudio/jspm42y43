-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspm42y43
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
-- Current Database: `jspm42y43`
--

/*!40000 DROP DATABASE IF EXISTS `jspm42y43`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `jspm42y43` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `jspm42y43`;

--
-- Table structure for table `caigouruku`
--

DROP TABLE IF EXISTS `caigouruku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caigouruku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) NOT NULL COMMENT '订单编号',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) DEFAULT NULL COMMENT '商品类型',
  `gongyingshangming` varchar(200) NOT NULL COMMENT '供应商名',
  `caigoujiage` float DEFAULT NULL COMMENT '采购价格',
  `kucun` int(11) NOT NULL COMMENT '采购数量',
  `zongjiage` float DEFAULT NULL COMMENT '总价格',
  `caigouriqi` date DEFAULT NULL COMMENT '采购日期',
  `caigouneirong` longtext COMMENT '采购内容',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1680667284781 DEFAULT CHARSET=utf8 COMMENT='采购入库';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caigouruku`
--

LOCK TABLES `caigouruku` WRITE;
/*!40000 ALTER TABLE `caigouruku` DISABLE KEYS */;
INSERT INTO `caigouruku` VALUES (61,'2023-04-05 03:47:59','1111111111','商品名称1','商品类型1','供应商名1',1,1,1,'2023-04-05','采购内容1','工号1','姓名1'),(62,'2023-04-05 03:47:59','2222222222','商品名称2','商品类型2','供应商名2',2,2,2,'2023-04-05','采购内容2','工号2','姓名2'),(63,'2023-04-05 03:47:59','3333333333','商品名称3','商品类型3','供应商名3',3,3,3,'2023-04-05','采购内容3','工号3','姓名3'),(64,'2023-04-05 03:47:59','4444444444','商品名称4','商品类型4','供应商名4',4,4,4,'2023-04-05','采购内容4','工号4','姓名4'),(65,'2023-04-05 03:47:59','5555555555','商品名称5','商品类型5','供应商名5',5,5,5,'2023-04-05','采购内容5','工号5','姓名5'),(66,'2023-04-05 03:47:59','6666666666','商品名称6','商品类型6','供应商名6',6,6,6,'2023-04-05','采购内容6','工号6','姓名6'),(67,'2023-04-05 03:47:59','7777777777','商品名称7','商品类型7','供应商名7',7,7,7,'2023-04-05','采购内容7','工号7','姓名7'),(68,'2023-04-05 03:47:59','8888888888','商品名称8','商品类型8','供应商名8',8,8,8,'2023-04-05','采购内容8','工号8','姓名8'),(1680667284780,'2023-04-05 04:01:24','1680667266','xx商品','xx分类','xx公司',10,50,500,'2023-04-05','采购入库50件。。。。','1','姓名1');
/*!40000 ALTER TABLE `caigouruku` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gonggaoxinxi`
--

DROP TABLE IF EXISTS `gonggaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gonggaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  `tupian` longtext COMMENT '图片',
  `gonggaoneirong` longtext COMMENT '公告内容',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gonggaoxinxi`
--

LOCK TABLES `gonggaoxinxi` WRITE;
/*!40000 ALTER TABLE `gonggaoxinxi` DISABLE KEYS */;
INSERT INTO `gonggaoxinxi` VALUES (21,'2023-04-05 03:47:58','关于xx通知','通知','upload/gonggaoxinxi_tupian1.jpg,upload/gonggaoxinxi_tupian2.jpg','<p>公告内容1这里可以发布一些相关公告通知内容的。。。</p>','2023-04-05 11:47:58'),(22,'2023-04-05 03:47:58','标题2','公告','upload/gonggaoxinxi_tupian2.jpg,upload/gonggaoxinxi_tupian3.jpg,upload/gonggaoxinxi_tupian4.jpg','公告内容2','2023-04-05 11:47:58'),(23,'2023-04-05 03:47:58','标题3','公告','upload/gonggaoxinxi_tupian3.jpg,upload/gonggaoxinxi_tupian4.jpg,upload/gonggaoxinxi_tupian5.jpg','公告内容3','2023-04-05 11:47:58'),(24,'2023-04-05 03:47:59','标题4','公告','upload/gonggaoxinxi_tupian4.jpg,upload/gonggaoxinxi_tupian5.jpg,upload/gonggaoxinxi_tupian6.jpg','公告内容4','2023-04-05 11:47:59'),(25,'2023-04-05 03:47:59','标题5','公告','upload/gonggaoxinxi_tupian5.jpg,upload/gonggaoxinxi_tupian6.jpg,upload/gonggaoxinxi_tupian7.jpg','公告内容5','2023-04-05 11:47:59'),(26,'2023-04-05 03:47:59','标题6','公告','upload/gonggaoxinxi_tupian6.jpg,upload/gonggaoxinxi_tupian7.jpg,upload/gonggaoxinxi_tupian8.jpg','公告内容6','2023-04-05 11:47:59'),(27,'2023-04-05 03:47:59','标题7','公告','upload/gonggaoxinxi_tupian7.jpg,upload/gonggaoxinxi_tupian8.jpg,upload/gonggaoxinxi_tupian9.jpg','公告内容7','2023-04-05 11:47:59'),(28,'2023-04-05 03:47:59','标题8','公告','upload/gonggaoxinxi_tupian8.jpg,upload/gonggaoxinxi_tupian9.jpg,upload/gonggaoxinxi_tupian10.jpg','公告内容8','2023-04-05 11:47:59');
/*!40000 ALTER TABLE `gonggaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gongyingshang`
--

DROP TABLE IF EXISTS `gongyingshang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gongyingshang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gongyingshangming` varchar(200) NOT NULL COMMENT '供应商名',
  `lianxiren` varchar(200) NOT NULL COMMENT '联系人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `caigoujiage` float NOT NULL COMMENT '采购价格',
  `gongsidizhi` varchar(200) DEFAULT NULL COMMENT '公司地址',
  `gongyingchanpin` longtext COMMENT '供应产品',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='供应商';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gongyingshang`
--

LOCK TABLES `gongyingshang` WRITE;
/*!40000 ALTER TABLE `gongyingshang` DISABLE KEYS */;
INSERT INTO `gongyingshang` VALUES (31,'2023-04-05 03:47:59','xx公司','王辉','13823888881','773890001@qq.com',10,'xx地址','供应产品1供应各种xx产品'),(32,'2023-04-05 03:47:59','供应商名2','联系人2','13823888882','773890002@qq.com',2,'公司地址2','供应产品2'),(33,'2023-04-05 03:47:59','供应商名3','联系人3','13823888883','773890003@qq.com',3,'公司地址3','供应产品3'),(34,'2023-04-05 03:47:59','供应商名4','联系人4','13823888884','773890004@qq.com',4,'公司地址4','供应产品4'),(35,'2023-04-05 03:47:59','供应商名5','联系人5','13823888885','773890005@qq.com',5,'公司地址5','供应产品5'),(36,'2023-04-05 03:47:59','供应商名6','联系人6','13823888886','773890006@qq.com',6,'公司地址6','供应产品6'),(37,'2023-04-05 03:47:59','供应商名7','联系人7','13823888887','773890007@qq.com',7,'公司地址7','供应产品7'),(38,'2023-04-05 03:47:59','供应商名8','联系人8','13823888888','773890008@qq.com',8,'公司地址8','供应产品8');
/*!40000 ALTER TABLE `gongyingshang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kehu`
--

DROP TABLE IF EXISTS `kehu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kehu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kehumingcheng` varchar(200) NOT NULL COMMENT '客户名称',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `kehudizhi` varchar(200) DEFAULT NULL COMMENT '客户地址',
  `kehudianhua` varchar(200) DEFAULT NULL COMMENT '客户电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='客户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kehu`
--

LOCK TABLES `kehu` WRITE;
/*!40000 ALTER TABLE `kehu` DISABLE KEYS */;
INSERT INTO `kehu` VALUES (41,'2023-04-05 03:47:59','xx客户','李明','xx地址','13823888881','773890001@qq.com'),(42,'2023-04-05 03:47:59','客户名称2','联系人2','客户地址2','13823888882','773890002@qq.com'),(43,'2023-04-05 03:47:59','客户名称3','联系人3','客户地址3','13823888883','773890003@qq.com'),(44,'2023-04-05 03:47:59','客户名称4','联系人4','客户地址4','13823888884','773890004@qq.com'),(45,'2023-04-05 03:47:59','客户名称5','联系人5','客户地址5','13823888885','773890005@qq.com'),(46,'2023-04-05 03:47:59','客户名称6','联系人6','客户地址6','13823888886','773890006@qq.com'),(47,'2023-04-05 03:47:59','客户名称7','联系人7','客户地址7','13823888887','773890007@qq.com'),(48,'2023-04-05 03:47:59','客户名称8','联系人8','客户地址8','13823888888','773890008@qq.com');
/*!40000 ALTER TABLE `kehu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinxinxi`
--

DROP TABLE IF EXISTS `shangpinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) DEFAULT NULL COMMENT '商品类型',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `jiage` float NOT NULL COMMENT '价格',
  `kucun` int(11) NOT NULL COMMENT '库存',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianhao` (`shangpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COMMENT='商品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinxinxi`
--

LOCK TABLES `shangpinxinxi` WRITE;
/*!40000 ALTER TABLE `shangpinxinxi` DISABLE KEYS */;
INSERT INTO `shangpinxinxi` VALUES (51,'2023-04-05 03:47:59','1111111111','xx商品','xx分类','xx品牌',150,180,'商品详情1测试'),(52,'2023-04-05 03:47:59','2222222222','商品名称2','商品类型2','品牌2',2,2,'商品详情2'),(53,'2023-04-05 03:47:59','3333333333','商品名称3','商品类型3','品牌3',3,3,'商品详情3'),(54,'2023-04-05 03:47:59','4444444444','商品名称4','商品类型4','品牌4',4,4,'商品详情4'),(55,'2023-04-05 03:47:59','5555555555','商品名称5','商品类型5','品牌5',5,5,'商品详情5'),(56,'2023-04-05 03:47:59','6666666666','商品名称6','商品类型6','品牌6',6,6,'商品详情6'),(57,'2023-04-05 03:47:59','7777777777','商品名称7','商品类型7','品牌7',7,7,'商品详情7'),(58,'2023-04-05 03:47:59','8888888888','商品名称8','商品类型8','品牌8',8,8,'商品详情8');
/*!40000 ALTER TABLE `shangpinxinxi` ENABLE KEYS */;
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
INSERT INTO `token` VALUES (1,1,'admin','users','管理员','0bwe4v9smyreleqtjb5pun3dxgdqum5l','2023-04-05 03:57:15','2023-04-05 05:01:48'),(2,11,'1','yuangong','员工','7b6j8190dsuk7775bjmmawueaoygdboe','2023-04-05 03:57:49','2023-04-05 05:00:33');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','管理员','2023-04-05 03:47:59');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xiaoshouchuku`
--

DROP TABLE IF EXISTS `xiaoshouchuku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xiaoshouchuku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) NOT NULL COMMENT '商品类型',
  `jiage` float NOT NULL COMMENT '价格',
  `kucun` int(11) NOT NULL COMMENT '销售数量',
  `zongjiage` float DEFAULT NULL COMMENT '总价格',
  `kehumingcheng` varchar(200) NOT NULL COMMENT '客户名称',
  `xiadanshijian` date DEFAULT NULL COMMENT '下单时间',
  `shouhuodizhi` varchar(200) NOT NULL COMMENT '收货地址',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1680667298280 DEFAULT CHARSET=utf8 COMMENT='销售出库';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xiaoshouchuku`
--

LOCK TABLES `xiaoshouchuku` WRITE;
/*!40000 ALTER TABLE `xiaoshouchuku` DISABLE KEYS */;
INSERT INTO `xiaoshouchuku` VALUES (71,'2023-04-05 03:47:59','1111111111','商品名称1','商品类型1',1,1,1,'客户名称1','2023-04-05','收货地址1','工号1','姓名1'),(72,'2023-04-05 03:47:59','2222222222','商品名称2','商品类型2',2,2,2,'客户名称2','2023-04-05','收货地址2','工号2','姓名2'),(73,'2023-04-05 03:47:59','3333333333','商品名称3','商品类型3',3,3,3,'客户名称3','2023-04-05','收货地址3','工号3','姓名3'),(74,'2023-04-05 03:47:59','4444444444','商品名称4','商品类型4',4,4,4,'客户名称4','2023-04-05','收货地址4','工号4','姓名4'),(75,'2023-04-05 03:47:59','5555555555','商品名称5','商品类型5',5,5,5,'客户名称5','2023-04-05','收货地址5','工号5','姓名5'),(76,'2023-04-05 03:47:59','6666666666','商品名称6','商品类型6',6,6,6,'客户名称6','2023-04-05','收货地址6','工号6','姓名6'),(77,'2023-04-05 03:47:59','7777777777','商品名称7','商品类型7',7,7,7,'客户名称7','2023-04-05','收货地址7','工号7','姓名7'),(78,'2023-04-05 03:47:59','8888888888','商品名称8','商品类型8',8,8,8,'客户名称8','2023-04-05','收货地址8','工号8','姓名8'),(1680667298279,'2023-04-05 04:01:38','1680667286','xx商品','xx分类',150,50,7500,'xx客户','2023-04-05','xx地址','1','姓名1');
/*!40000 ALTER TABLE `xiaoshouchuku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuangong`
--

DROP TABLE IF EXISTS `yuangong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuangong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` longtext COMMENT '头像',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='员工';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuangong`
--

LOCK TABLES `yuangong` WRITE;
/*!40000 ALTER TABLE `yuangong` DISABLE KEYS */;
INSERT INTO `yuangong` VALUES (11,'2023-04-05 03:47:58','1','1','姓名1','男','upload/yuangong_touxiang1.jpg','年龄1','773890001@qq.com','13823888881'),(12,'2023-04-05 03:47:58','工号2','123456','姓名2','男','upload/yuangong_touxiang2.jpg','年龄2','773890002@qq.com','13823888882'),(13,'2023-04-05 03:47:58','工号3','123456','姓名3','男','upload/yuangong_touxiang3.jpg','年龄3','773890003@qq.com','13823888883'),(14,'2023-04-05 03:47:58','工号4','123456','姓名4','男','upload/yuangong_touxiang4.jpg','年龄4','773890004@qq.com','13823888884'),(15,'2023-04-05 03:47:58','工号5','123456','姓名5','男','upload/yuangong_touxiang5.jpg','年龄5','773890005@qq.com','13823888885'),(16,'2023-04-05 03:47:58','工号6','123456','姓名6','男','upload/yuangong_touxiang6.jpg','年龄6','773890006@qq.com','13823888886'),(17,'2023-04-05 03:47:58','工号7','123456','姓名7','男','upload/yuangong_touxiang7.jpg','年龄7','773890007@qq.com','13823888887'),(18,'2023-04-05 03:47:58','工号8','123456','姓名8','男','upload/yuangong_touxiang8.jpg','年龄8','773890008@qq.com','13823888888');
/*!40000 ALTER TABLE `yuangong` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-06  9:50:56
