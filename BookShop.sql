CREATE DATABASE  IF NOT EXISTS `bookshop` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `bookshop`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bookshop
-- ------------------------------------------------------
-- Server version	5.7.40-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `cover` varchar(45) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `intro` varchar(300) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fk_type_id_idx` (`type_id`) USING BTREE,
  CONSTRAINT `fk_type_id` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (15,'Leo Tolstoy, Anna Karenina (Rosamund Bartlett','/picture/15-1.jpg',300,'女性主義專題Ａ-本課程立意以「表演藝術」作為社會實踐與人文批判的教學策略，透過業界專業師資的引進，嘗試建立一套表演藝術教學實作教學系統，引導學生在藝術創作的實踐中， 提升自主學習能力並建立跨域合作方法。',10,1),(25,'Classical mechanics by John R. Taylor','/picture/25-1.jpg',200,'力學- By analyzing classical mechanical systems with vector calculus and linear algebra, the main objective of this course is to prepare the students for more advanced physics courses. ',3,2),(40,'Erwin Kreyszig, “Advanced Engineering Mathema','/picture/40-1.jpg',180,' 工程數學 Ｉ-本課程教學目標主要在於訓練學生解決工程相關問題的數學能力，讓學生能夠從較實務性的工程相關問題和物理問題中，理解它們和數學上的相關性。藉由本課程中學得的數學能力，以解決工程上相關的問題。',10,3),(55,'計算機概論(第四版)(Forouzan 4/e)','/picture/55.jpg',300,'IM1001-* 計算機概論Ｉ本課程的主要目標在對大一同學介紹與資管領域相關與需要認識的電腦科技， 使同學對這些科技能有基本概念， 以做為未來各個相關課程的基礎。因此，本課程將提供廣度的多領域介紹。為達成上述目標，本課程內容包括：(1)介紹電腦的整體架構，以對電腦有整體概念。',7,4),(82,' Handbook of Applied Cryptography by Alfred J','/picture/82.jpg',299,'這門課程旨在用科技與社會的角度去理解資安與隱私的重要性，如何用賽局的角度去理解敵人，如何設計安全穩定的系統。此課程重點為用寬廣的角度去理解世界上各式各樣的資安問題，並不著重深入討論資安相關技術，例如:駭客、CODING、資安管理等。',10,5),(114,' Mesoscale Meteorology in Midlatitudes , Mark','/picture/114.jpg',280,'本課程目的為介紹中尺度天氣現象, 並就各種不同的中尺度天氣系統, 說明它們的生成機制、內部的結構、物理與動力過程、維持機制等。透過專題報告的方式，幫助學生了解實際中尺度天氣個案。',9,6);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `total` float DEFAULT NULL,
  `amount` int(6) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `paytype` tinyint(1) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fk_user_id_idx` (`user_id`) USING BTREE,
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (75,28,1,4,2,'管理員','1333333333','美國','2022-10-07 12:31:07',1),(76,600,2,1,1,'vili','1344444444','美國','2022-12-03 13:31:29',2),(78,72,2,3,1,'林俊霆','電話不給','地址不想給','2022-12-10 13:40:21',41),(79,64,2,2,2,'vili','1344444444','美國','2022-12-10 13:49:45',2);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderitem`
--

DROP TABLE IF EXISTS `orderitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` float DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fk_order_id_idx` (`order_id`) USING BTREE,
  KEY `fk_orderitem_goods_id_idx` (`goods_id`) USING BTREE,
  CONSTRAINT `fk_order_id` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_orderitem_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `books` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderitem`
--

LOCK TABLES `orderitem` WRITE;
/*!40000 ALTER TABLE `orderitem` DISABLE KEYS */;
INSERT INTO `orderitem` VALUES (78,28,1,55,75),(79,300,2,15,76),(81,36,2,55,78),(82,28,1,114,79),(83,36,1,55,79);
/*!40000 ALTER TABLE `orderitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recommend`
--

DROP TABLE IF EXISTS `recommend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recommend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) DEFAULT NULL,
  `books_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fk_goods_id_idx` (`books_id`) USING BTREE,
  CONSTRAINT `fk_goods_id` FOREIGN KEY (`books_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recommend`
--

LOCK TABLES `recommend` WRITE;
/*!40000 ALTER TABLE `recommend` DISABLE KEYS */;
INSERT INTO `recommend` VALUES (9,1,15),(10,1,25),(11,1,40),(12,2,55),(13,1,82),(14,2,114);
/*!40000 ALTER TABLE `recommend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` VALUES (1,'英美語文學系'),(2,'物理學系'),(3,'機械工程學系'),(4,'資訊管理學系'),(5,'資訊工程學系'),(6,'大氣科學學系');
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(85) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `isadmin` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `username_UNIQUE` (`username`) USING BTREE,
  UNIQUE KEY `email_UNIQUE` (`email`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','admin@gmail.com','$2a$10$FdNRmAeG9VTPy7.m7.CXmu5opagl1v876xqHS6n8dTW1/6SK1blra','管理員','1333333333','美國',_binary ''),(2,'vili','vili@gmail.com','$2a$10$6sJrle/zbgNmqehRhtdbq.9KV23ULH8DpjaVadzGhroWlxQxVE9Wq','vili','1344444444','美國',_binary '\0'),(41,'junting','junting@ncu.edu.tw','$2a$10$G1gDeimORybHlXLOqVgnBe/sZdR1/LjR28FNikFdKFT2IjoaWMDJm','','','',_binary '\0');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-30 19:40:30
