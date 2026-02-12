-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: bse_stock_data
-- ------------------------------------------------------
-- Server version	8.0.44

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `announcements`
--

DROP TABLE IF EXISTS `announcements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `announcements` (
  `id` int NOT NULL AUTO_INCREMENT,
  `scrip_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'FIN, GEN, DIV, BON, etc.',
  `subject` text COLLATE utf8mb4_unicode_ci,
  `announcement_date` date DEFAULT NULL,
  `attachment_url` text COLLATE utf8mb4_unicode_ci,
  `news_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_scrip` (`scrip_code`),
  KEY `idx_date` (`announcement_date`),
  KEY `idx_category` (`category`),
  KEY `idx_scrip_date` (`scrip_code`,`announcement_date`),
  CONSTRAINT `announcements_ibfk_1` FOREIGN KEY (`scrip_code`) REFERENCES `stock_info` (`scrip_code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements`
--

LOCK TABLES `announcements` WRITE;
/*!40000 ALTER TABLE `announcements` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `corporate_actions`
--

DROP TABLE IF EXISTS `corporate_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `corporate_actions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `scrip_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Dividend, Bonus, Rights, Split, etc.',
  `ex_date` date DEFAULT NULL COMMENT 'Ex-Dividend/Bonus Date',
  `record_date` date DEFAULT NULL COMMENT 'Record Date',
  `bc_start_date` date DEFAULT NULL COMMENT 'Book Closure Start Date',
  `bc_end_date` date DEFAULT NULL COMMENT 'Book Closure End Date',
  `purpose` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_scrip` (`scrip_code`),
  KEY `idx_ex_date` (`ex_date`),
  KEY `idx_action_type` (`action_type`),
  KEY `idx_scrip_date` (`scrip_code`,`ex_date`),
  CONSTRAINT `corporate_actions_ibfk_1` FOREIGN KEY (`scrip_code`) REFERENCES `stock_info` (`scrip_code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=512 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `corporate_actions`
--

LOCK TABLES `corporate_actions` WRITE;
/*!40000 ALTER TABLE `corporate_actions` DISABLE KEYS */;
INSERT INTO `corporate_actions` VALUES (1,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 3.0000','2026-02-09 11:18:06'),(2,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 3.0000','2026-02-09 11:18:06'),(3,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 3.0000','2026-02-09 11:18:06'),(4,'532540','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 5.0000','2026-02-09 11:18:06'),(5,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 3.0000','2026-02-09 11:18:06'),(6,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 3.0000','2026-02-09 11:18:06'),(7,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 3.0000','2026-02-09 11:18:06'),(8,'532540','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 5.0000','2026-02-09 11:18:06'),(9,'532540','','',NULL,NULL,NULL,NULL,'Bonus issue 1:1','2026-02-09 11:18:06'),(10,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 2.0000','2026-02-09 11:18:06'),(11,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 2.0000','2026-02-09 11:18:06'),(12,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 2.0000','2026-02-09 11:18:06'),(13,'532540','','',NULL,NULL,NULL,NULL,'Special Dividend - Rs. - 10.0000','2026-02-09 11:18:06'),(14,'532540','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 4.0000','2026-02-09 11:18:06'),(15,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 2.0000','2026-02-09 11:18:06'),(16,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 2.0000','2026-02-09 11:18:06'),(17,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 2.0000','2026-02-09 11:18:06'),(18,'532540','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 8.0000','2026-02-09 11:18:06'),(19,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 3.0000','2026-02-09 11:18:06'),(20,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 3.0000','2026-02-09 11:18:06'),(21,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 3.0000','2026-02-09 11:18:06'),(22,'532540','','',NULL,NULL,NULL,NULL,'Special Dividend - Rs. - 8.0000','2026-02-09 11:18:06'),(23,'532540','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 8.0000','2026-02-09 11:18:06'),(24,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 3.0000','2026-02-09 11:18:06'),(25,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 3.0000','2026-02-09 11:18:06'),(26,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 3.0000','2026-02-09 11:18:06'),(27,'532540','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 13.0000','2026-02-09 11:18:06'),(28,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 4.0000','2026-02-09 11:18:06'),(29,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 4.0000','2026-02-09 11:18:06'),(30,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 4.0000','2026-02-09 11:18:06'),(31,'532540','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 20.0000','2026-02-09 11:18:06'),(32,'532540','','',NULL,NULL,NULL,NULL,'Special Dividend - Rs. - 40.0000','2026-02-09 11:18:06'),(33,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 5.0000','2026-02-09 11:18:06'),(34,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 5.0000','2026-02-09 11:18:06'),(35,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 5.0000','2026-02-09 11:18:06'),(36,'532540','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 24.0000','2026-02-09 11:18:06'),(37,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 5.5000','2026-02-09 11:18:06'),(38,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 5.5000','2026-02-09 11:18:06'),(39,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 5.5000','2026-02-09 11:18:06'),(40,'532540','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 27.0000','2026-02-09 11:18:06'),(41,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 6.5000','2026-02-09 11:18:06'),(42,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 6.5000','2026-02-09 11:18:06'),(43,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 6.5000','2026-02-09 11:18:06'),(44,'532540','','',NULL,NULL,NULL,NULL,'Buy Back of Shares ','2026-02-09 11:18:06'),(45,'532540','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 27.5000','2026-02-09 11:18:06'),(46,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 7.0000','2026-02-09 11:18:06'),(47,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 7.0000','2026-02-09 11:18:06'),(48,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 7.0000','2026-02-09 11:18:06'),(49,'532540','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 29.0000','2026-02-09 11:18:06'),(50,'532540','','',NULL,NULL,NULL,NULL,'Bonus issue 1:1','2026-02-09 11:18:06'),(51,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 4.0000','2026-02-09 11:18:06'),(52,'532540','','',NULL,NULL,NULL,NULL,'Buy Back of Shares ','2026-02-09 11:18:06'),(53,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 4.0000','2026-02-09 11:18:06'),(54,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 4.0000','2026-02-09 11:18:06'),(55,'532540','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 18.0000','2026-02-09 11:18:06'),(56,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 5.0000','2026-02-09 11:18:06'),(57,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 5.0000','2026-02-09 11:18:06'),(58,'532540','','',NULL,NULL,NULL,NULL,'Special Dividend - Rs. - 40.0000','2026-02-09 11:18:06'),(59,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 5.0000','2026-02-09 11:18:06'),(60,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 12.0000','2026-02-09 11:18:06'),(61,'532540','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 6.0000','2026-02-09 11:18:06'),(62,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 5.0000','2026-02-09 11:18:06'),(63,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 12.0000','2026-02-09 11:18:06'),(64,'532540','','',NULL,NULL,NULL,NULL,'Buy Back of Shares ','2026-02-09 11:18:06'),(65,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 6.0000','2026-02-09 11:18:06'),(66,'532540','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 15.0000','2026-02-09 11:18:06'),(67,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 7.0000','2026-02-09 11:18:06'),(68,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 7.0000','2026-02-09 11:18:06'),(69,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 7.0000','2026-02-09 11:18:06'),(70,'532540','','',NULL,NULL,NULL,NULL,'Buy Back of Shares ','2026-02-09 11:18:06'),(71,'532540','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 22.0000','2026-02-09 11:18:06'),(72,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 8.0000','2026-02-09 11:18:06'),(73,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 8.0000','2026-02-09 11:18:06'),(74,'532540','','',NULL,NULL,NULL,NULL,'Special Dividend - Rs. - 67.0000','2026-02-09 11:18:06'),(75,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 8.0000','2026-02-09 11:18:06'),(76,'532540','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 24.0000','2026-02-09 11:18:06'),(77,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 9.0000','2026-02-09 11:18:06'),(78,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 9.0000','2026-02-09 11:18:06'),(79,'532540','','',NULL,NULL,NULL,NULL,'Buy Back of Shares ','2026-02-09 11:18:06'),(80,'532540','','',NULL,NULL,NULL,NULL,'Special Dividend - Rs. - 18.0000','2026-02-09 11:18:06'),(81,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 9.0000','2026-02-09 11:18:06'),(82,'532540','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 28.0000','2026-02-09 11:18:06'),(83,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 10.0000','2026-02-09 11:18:06'),(84,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 10.0000','2026-02-09 11:18:06'),(85,'532540','','',NULL,NULL,NULL,NULL,'Special Dividend - Rs. - 66.0000','2026-02-09 11:18:06'),(86,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 10.0000','2026-02-09 11:18:06'),(87,'532540','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 30.0000','2026-02-09 11:18:06'),(88,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 11.0000','2026-02-09 11:18:06'),(89,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 11.0000','2026-02-09 11:18:06'),(90,'532540','','',NULL,NULL,NULL,NULL,'Special Dividend - Rs. - 46.0000','2026-02-09 11:18:06'),(91,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 11.0000','2026-02-09 11:18:06'),(92,'500878','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 0.0000','2026-02-09 11:26:29'),(93,'500878','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 1.0000','2026-02-09 11:26:29'),(94,'500878','','',NULL,NULL,NULL,NULL,'Right Issue of Equity Shares ','2026-02-09 11:26:29'),(95,'500878','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 1.8000','2026-02-09 11:26:29'),(96,'500878','','',NULL,NULL,NULL,NULL,'Scheme of Arrangement ','2026-02-09 11:26:30'),(97,'500878','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 4.0000','2026-02-09 11:26:30'),(98,'500878','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 4.0000','2026-02-09 11:26:30'),(99,'500878','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 2.0000','2026-02-09 11:26:30'),(100,'500878','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 1.0000','2026-02-09 11:26:30'),(101,'500878','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 4.0000','2026-02-09 11:26:30'),(102,'500878','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 10.0000','2026-02-09 11:26:30'),(103,'500878','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 10.0000','2026-02-09 11:26:30'),(104,'500878','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 11.5000','2026-02-09 11:26:30'),(105,'500878','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 11.5000','2026-02-09 11:26:30'),(106,'500878','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 11.5000','2026-02-09 11:26:30'),(107,'500878','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 12.0000','2026-02-09 11:26:30'),(108,'500878','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 12.0000','2026-02-09 11:26:30'),(109,'500878','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 18.0000','2026-02-09 11:26:30'),(110,'500878','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 3.0000','2026-02-09 11:26:30'),(111,'500878','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 12.0000','2026-02-09 11:26:30'),(112,'500878','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 30.0000','2026-02-09 11:26:30'),(113,'500878','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 30.0000','2026-02-09 11:26:30'),(114,'500878','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 0.0000','2026-02-09 11:27:01'),(115,'500878','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 1.0000','2026-02-09 11:27:01'),(116,'500878','','',NULL,NULL,NULL,NULL,'Right Issue of Equity Shares ','2026-02-09 11:27:01'),(117,'500878','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 1.8000','2026-02-09 11:27:01'),(118,'500878','','',NULL,NULL,NULL,NULL,'Scheme of Arrangement ','2026-02-09 11:27:01'),(119,'500878','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 4.0000','2026-02-09 11:27:01'),(120,'500878','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 4.0000','2026-02-09 11:27:01'),(121,'500878','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 2.0000','2026-02-09 11:27:01'),(122,'500878','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 1.0000','2026-02-09 11:27:01'),(123,'500878','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 4.0000','2026-02-09 11:27:01'),(124,'500878','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 10.0000','2026-02-09 11:27:01'),(125,'500878','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 10.0000','2026-02-09 11:27:01'),(126,'500878','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 11.5000','2026-02-09 11:27:01'),(127,'500878','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 11.5000','2026-02-09 11:27:01'),(128,'500878','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 11.5000','2026-02-09 11:27:01'),(129,'500878','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 12.0000','2026-02-09 11:27:01'),(130,'500878','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 12.0000','2026-02-09 11:27:01'),(131,'500878','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 18.0000','2026-02-09 11:27:01'),(132,'500878','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 3.0000','2026-02-09 11:27:01'),(133,'500878','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 12.0000','2026-02-09 11:27:01'),(134,'500878','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 30.0000','2026-02-09 11:27:01'),(135,'500878','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 30.0000','2026-02-09 11:27:01'),(136,'500878','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 0.0000','2026-02-09 11:39:12'),(137,'500878','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 1.0000','2026-02-09 11:39:12'),(138,'500878','','',NULL,NULL,NULL,NULL,'Right Issue of Equity Shares ','2026-02-09 11:39:12'),(139,'500878','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 1.8000','2026-02-09 11:39:12'),(140,'500878','','',NULL,NULL,NULL,NULL,'Scheme of Arrangement ','2026-02-09 11:39:12'),(141,'500878','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 4.0000','2026-02-09 11:39:12'),(142,'500878','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 4.0000','2026-02-09 11:39:12'),(143,'500878','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 2.0000','2026-02-09 11:39:12'),(144,'500878','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 1.0000','2026-02-09 11:39:12'),(145,'500878','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 4.0000','2026-02-09 11:39:12'),(146,'500878','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 10.0000','2026-02-09 11:39:12'),(147,'500878','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 10.0000','2026-02-09 11:39:12'),(148,'500878','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 11.5000','2026-02-09 11:39:12'),(149,'500878','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 11.5000','2026-02-09 11:39:12'),(150,'500878','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 11.5000','2026-02-09 11:39:12'),(151,'500878','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 12.0000','2026-02-09 11:39:12'),(152,'500878','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 12.0000','2026-02-09 11:39:12'),(153,'500878','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 18.0000','2026-02-09 11:39:12'),(154,'500878','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 3.0000','2026-02-09 11:39:12'),(155,'500878','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 12.0000','2026-02-09 11:39:12'),(156,'500878','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 30.0000','2026-02-09 11:39:12'),(157,'500878','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 30.0000','2026-02-09 11:39:12'),(158,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 3.0000','2026-02-09 11:39:32'),(159,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 3.0000','2026-02-09 11:39:32'),(160,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 3.0000','2026-02-09 11:39:32'),(161,'532540','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 5.0000','2026-02-09 11:39:32'),(162,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 3.0000','2026-02-09 11:39:32'),(163,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 3.0000','2026-02-09 11:39:32'),(164,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 3.0000','2026-02-09 11:39:32'),(165,'532540','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 5.0000','2026-02-09 11:39:32'),(166,'532540','','',NULL,NULL,NULL,NULL,'Bonus issue 1:1','2026-02-09 11:39:32'),(167,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 2.0000','2026-02-09 11:39:32'),(168,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 2.0000','2026-02-09 11:39:32'),(169,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 2.0000','2026-02-09 11:39:32'),(170,'532540','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 4.0000','2026-02-09 11:39:32'),(171,'532540','','',NULL,NULL,NULL,NULL,'Special Dividend - Rs. - 10.0000','2026-02-09 11:39:32'),(172,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 2.0000','2026-02-09 11:39:32'),(173,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 2.0000','2026-02-09 11:39:32'),(174,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 2.0000','2026-02-09 11:39:32'),(175,'532540','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 8.0000','2026-02-09 11:39:32'),(176,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 3.0000','2026-02-09 11:39:32'),(177,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 3.0000','2026-02-09 11:39:32'),(178,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 3.0000','2026-02-09 11:39:32'),(179,'532540','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 8.0000','2026-02-09 11:39:32'),(180,'532540','','',NULL,NULL,NULL,NULL,'Special Dividend - Rs. - 8.0000','2026-02-09 11:39:32'),(181,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 3.0000','2026-02-09 11:39:32'),(182,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 3.0000','2026-02-09 11:39:32'),(183,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 3.0000','2026-02-09 11:39:32'),(184,'532540','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 13.0000','2026-02-09 11:39:32'),(185,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 4.0000','2026-02-09 11:39:32'),(186,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 4.0000','2026-02-09 11:39:32'),(187,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 4.0000','2026-02-09 11:39:32'),(188,'532540','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 20.0000','2026-02-09 11:39:32'),(189,'532540','','',NULL,NULL,NULL,NULL,'Special Dividend - Rs. - 40.0000','2026-02-09 11:39:32'),(190,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 5.0000','2026-02-09 11:39:32'),(191,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 5.0000','2026-02-09 11:39:32'),(192,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 5.0000','2026-02-09 11:39:32'),(193,'532540','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 24.0000','2026-02-09 11:39:32'),(194,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 5.5000','2026-02-09 11:39:32'),(195,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 5.5000','2026-02-09 11:39:32'),(196,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 5.5000','2026-02-09 11:39:32'),(197,'532540','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 27.0000','2026-02-09 11:39:32'),(198,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 6.5000','2026-02-09 11:39:32'),(199,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 6.5000','2026-02-09 11:39:32'),(200,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 6.5000','2026-02-09 11:39:32'),(201,'532540','','',NULL,NULL,NULL,NULL,'Buy Back of Shares ','2026-02-09 11:39:32'),(202,'532540','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 27.5000','2026-02-09 11:39:32'),(203,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 7.0000','2026-02-09 11:39:32'),(204,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 7.0000','2026-02-09 11:39:32'),(205,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 7.0000','2026-02-09 11:39:32'),(206,'532540','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 29.0000','2026-02-09 11:39:32'),(207,'532540','','',NULL,NULL,NULL,NULL,'Bonus issue 1:1','2026-02-09 11:39:32'),(208,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 4.0000','2026-02-09 11:39:32'),(209,'532540','','',NULL,NULL,NULL,NULL,'Buy Back of Shares ','2026-02-09 11:39:32'),(210,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 4.0000','2026-02-09 11:39:32'),(211,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 4.0000','2026-02-09 11:39:32'),(212,'532540','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 18.0000','2026-02-09 11:39:32'),(213,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 5.0000','2026-02-09 11:39:32'),(214,'532540','','',NULL,NULL,NULL,NULL,'Special Dividend - Rs. - 40.0000','2026-02-09 11:39:32'),(215,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 5.0000','2026-02-09 11:39:32'),(216,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 5.0000','2026-02-09 11:39:32'),(217,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 12.0000','2026-02-09 11:39:32'),(218,'532540','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 6.0000','2026-02-09 11:39:32'),(219,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 5.0000','2026-02-09 11:39:32'),(220,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 12.0000','2026-02-09 11:39:32'),(221,'532540','','',NULL,NULL,NULL,NULL,'Buy Back of Shares ','2026-02-09 11:39:32'),(222,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 6.0000','2026-02-09 11:39:32'),(223,'532540','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 15.0000','2026-02-09 11:39:32'),(224,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 7.0000','2026-02-09 11:39:32'),(225,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 7.0000','2026-02-09 11:39:32'),(226,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 7.0000','2026-02-09 11:39:32'),(227,'532540','','',NULL,NULL,NULL,NULL,'Buy Back of Shares ','2026-02-09 11:39:32'),(228,'532540','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 22.0000','2026-02-09 11:39:32'),(229,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 8.0000','2026-02-09 11:39:32'),(230,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 8.0000','2026-02-09 11:39:32'),(231,'532540','','',NULL,NULL,NULL,NULL,'Special Dividend - Rs. - 67.0000','2026-02-09 11:39:32'),(232,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 8.0000','2026-02-09 11:39:32'),(233,'532540','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 24.0000','2026-02-09 11:39:32'),(234,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 9.0000','2026-02-09 11:39:32'),(235,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 9.0000','2026-02-09 11:39:32'),(236,'532540','','',NULL,NULL,NULL,NULL,'Buy Back of Shares ','2026-02-09 11:39:32'),(237,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 9.0000','2026-02-09 11:39:32'),(238,'532540','','',NULL,NULL,NULL,NULL,'Special Dividend - Rs. - 18.0000','2026-02-09 11:39:32'),(239,'532540','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 28.0000','2026-02-09 11:39:32'),(240,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 10.0000','2026-02-09 11:39:32'),(241,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 10.0000','2026-02-09 11:39:32'),(242,'532540','','',NULL,NULL,NULL,NULL,'Special Dividend - Rs. - 66.0000','2026-02-09 11:39:32'),(243,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 10.0000','2026-02-09 11:39:32'),(244,'532540','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 30.0000','2026-02-09 11:39:32'),(245,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 11.0000','2026-02-09 11:39:32'),(246,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 11.0000','2026-02-09 11:39:32'),(247,'532540','','',NULL,NULL,NULL,NULL,'Special Dividend - Rs. - 46.0000','2026-02-09 11:39:32'),(248,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 11.0000','2026-02-09 11:39:32'),(249,'500325','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 4.2500','2026-02-09 11:39:34'),(250,'500325','','',NULL,NULL,NULL,NULL,'Scheme of Arrangement ','2026-02-09 11:39:34'),(251,'500325','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 13.0000','2026-02-09 11:39:34'),(252,'500325','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 13.0000','2026-02-09 11:39:34'),(253,'500325','','',NULL,NULL,NULL,NULL,'Bonus issue 1:1','2026-02-09 11:39:34'),(254,'500325','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 7.0000','2026-02-09 11:39:34'),(255,'500325','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 8.0000','2026-02-09 11:39:34'),(256,'500325','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 8.5000','2026-02-09 11:39:34'),(257,'500325','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 9.0000','2026-02-09 11:39:34'),(258,'500325','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 9.5000','2026-02-09 11:39:34'),(259,'500325','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 10.0000','2026-02-09 11:39:34'),(260,'500325','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 10.5000','2026-02-09 11:39:34'),(261,'500325','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 11.0000','2026-02-09 11:39:34'),(262,'500325','','',NULL,NULL,NULL,NULL,'Bonus issue 1:1','2026-02-09 11:39:34'),(263,'500325','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 6.0000','2026-02-09 11:39:34'),(264,'500325','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 6.5000','2026-02-09 11:39:34'),(265,'500325','','',NULL,NULL,NULL,NULL,'Right Issue of Equity Shares ','2026-02-09 11:39:34'),(266,'500325','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 6.5000','2026-02-09 11:39:34'),(267,'500325','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 7.0000','2026-02-09 11:39:34'),(268,'500325','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 8.0000','2026-02-09 11:39:34'),(269,'500325','','',NULL,NULL,NULL,NULL,'Spin Off ','2026-02-09 11:39:34'),(270,'500325','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 9.0000','2026-02-09 11:39:34'),(271,'500325','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 10.0000','2026-02-09 11:39:34'),(272,'500325','','',NULL,NULL,NULL,NULL,'Bonus issue 1:1','2026-02-09 11:39:34'),(273,'500325','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 5.5000','2026-02-09 11:39:34'),(274,'500209','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 2.5000','2026-02-09 11:39:35'),(275,'500209','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 7.5000','2026-02-09 11:39:35'),(276,'500209','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 7.5000','2026-02-09 11:39:35'),(277,'500209','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 6.0000','2026-02-09 11:39:35'),(278,'500209','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 27.2500','2026-02-09 11:39:35'),(279,'500209','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 10.0000','2026-02-09 11:39:35'),(280,'500209','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 13.5000','2026-02-09 11:39:35'),(281,'500209','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 10.0000','2026-02-09 11:39:35'),(282,'500209','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 15.0000','2026-02-09 11:39:35'),(283,'500209','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 10.0000','2026-02-09 11:39:35'),(284,'500209','','',NULL,NULL,NULL,NULL,'Special Dividend - Rs. - 30.0000','2026-02-09 11:39:35'),(285,'500209','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 20.0000','2026-02-09 11:39:35'),(286,'500209','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 15.0000','2026-02-09 11:39:35'),(287,'500209','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 22.0000','2026-02-09 11:39:35'),(288,'500209','','',NULL,NULL,NULL,NULL,'Special Dividend - Rs. - 10.0000','2026-02-09 11:39:35'),(289,'500209','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 15.0000','2026-02-09 11:39:35'),(290,'500209','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 27.0000','2026-02-09 11:39:35'),(291,'500209','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 20.0000','2026-02-09 11:39:35'),(292,'500209','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 43.0000','2026-02-09 11:39:35'),(293,'500209','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 30.0000','2026-02-09 11:39:35'),(294,'500209','','',NULL,NULL,NULL,NULL,'Bonus issue 1:1','2026-02-09 11:39:35'),(295,'500209','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 29.5000','2026-02-09 11:39:35'),(296,'500209','','',NULL,NULL,NULL,NULL,'Bonus issue 1:1','2026-02-09 11:39:35'),(297,'500209','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 10.0000','2026-02-09 11:39:35'),(298,'500209','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 14.2500','2026-02-09 11:39:35'),(299,'500209','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 11.0000','2026-02-09 11:39:35'),(300,'500209','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 14.7500','2026-02-09 11:39:35'),(301,'500209','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 13.0000','2026-02-09 11:39:35'),(302,'500209','','',NULL,NULL,NULL,NULL,'Buy Back of Shares ','2026-02-09 11:39:36'),(303,'500209','','',NULL,NULL,NULL,NULL,'Special Dividend - Rs. - 10.0000','2026-02-09 11:39:36'),(304,'500209','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 20.5000','2026-02-09 11:39:36'),(305,'500209','','',NULL,NULL,NULL,NULL,'Bonus issue 1:1','2026-02-09 11:39:36'),(306,'500209','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 7.0000','2026-02-09 11:39:36'),(307,'500209','','',NULL,NULL,NULL,NULL,'Special Dividend - Rs. - 4.0000','2026-02-09 11:39:36'),(308,'500209','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 10.5000','2026-02-09 11:39:36'),(309,'500209','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 8.0000','2026-02-09 11:39:36'),(310,'500209','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 9.5000','2026-02-09 11:39:36'),(311,'500209','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 12.0000','2026-02-09 11:39:36'),(312,'500209','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 15.0000','2026-02-09 11:39:36'),(313,'500209','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 15.0000','2026-02-09 11:39:36'),(314,'500209','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 16.0000','2026-02-09 11:39:36'),(315,'500209','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 16.5000','2026-02-09 11:39:36'),(316,'500209','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 17.5000','2026-02-09 11:39:36'),(317,'500209','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 18.0000','2026-02-09 11:39:36'),(318,'500209','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 20.0000','2026-02-09 11:39:36'),(319,'500209','','',NULL,NULL,NULL,NULL,'Special Dividend - Rs. - 8.0000','2026-02-09 11:39:36'),(320,'500209','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 21.0000','2026-02-09 11:39:36'),(321,'500209','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 22.0000','2026-02-09 11:39:36'),(322,'500209','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 23.0000','2026-02-09 11:39:36'),(323,'500209','','',NULL,NULL,NULL,NULL,'Buy Back of Shares ','2026-02-09 11:39:36'),(324,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 3.0000','2026-02-10 06:45:40'),(325,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 3.0000','2026-02-10 06:45:40'),(326,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 3.0000','2026-02-10 06:45:40'),(327,'532540','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 5.0000','2026-02-10 06:45:40'),(328,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 3.0000','2026-02-10 06:45:40'),(329,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 3.0000','2026-02-10 06:45:40'),(330,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 3.0000','2026-02-10 06:45:40'),(331,'532540','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 5.0000','2026-02-10 06:45:40'),(332,'532540','','',NULL,NULL,NULL,NULL,'Bonus issue 1:1','2026-02-10 06:45:40'),(333,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 2.0000','2026-02-10 06:45:40'),(334,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 2.0000','2026-02-10 06:45:40'),(335,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 2.0000','2026-02-10 06:45:40'),(336,'532540','','',NULL,NULL,NULL,NULL,'Special Dividend - Rs. - 10.0000','2026-02-10 06:45:40'),(337,'532540','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 4.0000','2026-02-10 06:45:40'),(338,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 2.0000','2026-02-10 06:45:40'),(339,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 2.0000','2026-02-10 06:45:40'),(340,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 2.0000','2026-02-10 06:45:40'),(341,'532540','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 8.0000','2026-02-10 06:45:40'),(342,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 3.0000','2026-02-10 06:45:40'),(343,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 3.0000','2026-02-10 06:45:40'),(344,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 3.0000','2026-02-10 06:45:40'),(345,'532540','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 8.0000','2026-02-10 06:45:40'),(346,'532540','','',NULL,NULL,NULL,NULL,'Special Dividend - Rs. - 8.0000','2026-02-10 06:45:40'),(347,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 3.0000','2026-02-10 06:45:40'),(348,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 3.0000','2026-02-10 06:45:40'),(349,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 3.0000','2026-02-10 06:45:40'),(350,'532540','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 13.0000','2026-02-10 06:45:40'),(351,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 4.0000','2026-02-10 06:45:40'),(352,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 4.0000','2026-02-10 06:45:40'),(353,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 4.0000','2026-02-10 06:45:40'),(354,'532540','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 20.0000','2026-02-10 06:45:40'),(355,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 5.0000','2026-02-10 06:45:40'),(356,'532540','','',NULL,NULL,NULL,NULL,'Special Dividend - Rs. - 40.0000','2026-02-10 06:45:40'),(357,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 5.0000','2026-02-10 06:45:40'),(358,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 5.0000','2026-02-10 06:45:40'),(359,'532540','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 24.0000','2026-02-10 06:45:40'),(360,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 5.5000','2026-02-10 06:45:40'),(361,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 5.5000','2026-02-10 06:45:40'),(362,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 5.5000','2026-02-10 06:45:40'),(363,'532540','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 27.0000','2026-02-10 06:45:40'),(364,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 6.5000','2026-02-10 06:45:40'),(365,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 6.5000','2026-02-10 06:45:40'),(366,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 6.5000','2026-02-10 06:45:40'),(367,'532540','','',NULL,NULL,NULL,NULL,'Buy Back of Shares ','2026-02-10 06:45:40'),(368,'532540','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 27.5000','2026-02-10 06:45:40'),(369,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 7.0000','2026-02-10 06:45:40'),(370,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 7.0000','2026-02-10 06:45:40'),(371,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 7.0000','2026-02-10 06:45:40'),(372,'532540','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 29.0000','2026-02-10 06:45:40'),(373,'532540','','',NULL,NULL,NULL,NULL,'Bonus issue 1:1','2026-02-10 06:45:40'),(374,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 4.0000','2026-02-10 06:45:40'),(375,'532540','','',NULL,NULL,NULL,NULL,'Buy Back of Shares ','2026-02-10 06:45:40'),(376,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 4.0000','2026-02-10 06:45:40'),(377,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 4.0000','2026-02-10 06:45:40'),(378,'532540','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 18.0000','2026-02-10 06:45:40'),(379,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 5.0000','2026-02-10 06:45:40'),(380,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 5.0000','2026-02-10 06:45:40'),(381,'532540','','',NULL,NULL,NULL,NULL,'Special Dividend - Rs. - 40.0000','2026-02-10 06:45:40'),(382,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 5.0000','2026-02-10 06:45:40'),(383,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 12.0000','2026-02-10 06:45:40'),(384,'532540','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 6.0000','2026-02-10 06:45:40'),(385,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 5.0000','2026-02-10 06:45:40'),(386,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 12.0000','2026-02-10 06:45:40'),(387,'532540','','',NULL,NULL,NULL,NULL,'Buy Back of Shares ','2026-02-10 06:45:40'),(388,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 6.0000','2026-02-10 06:45:40'),(389,'532540','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 15.0000','2026-02-10 06:45:40'),(390,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 7.0000','2026-02-10 06:45:40'),(391,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 7.0000','2026-02-10 06:45:40'),(392,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 7.0000','2026-02-10 06:45:40'),(393,'532540','','',NULL,NULL,NULL,NULL,'Buy Back of Shares ','2026-02-10 06:45:40'),(394,'532540','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 22.0000','2026-02-10 06:45:40'),(395,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 8.0000','2026-02-10 06:45:40'),(396,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 8.0000','2026-02-10 06:45:40'),(397,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 8.0000','2026-02-10 06:45:40'),(398,'532540','','',NULL,NULL,NULL,NULL,'Special Dividend - Rs. - 67.0000','2026-02-10 06:45:40'),(399,'532540','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 24.0000','2026-02-10 06:45:40'),(400,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 9.0000','2026-02-10 06:45:40'),(401,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 9.0000','2026-02-10 06:45:40'),(402,'532540','','',NULL,NULL,NULL,NULL,'Buy Back of Shares ','2026-02-10 06:45:40'),(403,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 9.0000','2026-02-10 06:45:40'),(404,'532540','','',NULL,NULL,NULL,NULL,'Special Dividend - Rs. - 18.0000','2026-02-10 06:45:40'),(405,'532540','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 28.0000','2026-02-10 06:45:40'),(406,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 10.0000','2026-02-10 06:45:40'),(407,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 10.0000','2026-02-10 06:45:40'),(408,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 10.0000','2026-02-10 06:45:40'),(409,'532540','','',NULL,NULL,NULL,NULL,'Special Dividend - Rs. - 66.0000','2026-02-10 06:45:40'),(410,'532540','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 30.0000','2026-02-10 06:45:40'),(411,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 11.0000','2026-02-10 06:45:40'),(412,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 11.0000','2026-02-10 06:45:40'),(413,'532540','','',NULL,NULL,NULL,NULL,'Special Dividend - Rs. - 46.0000','2026-02-10 06:45:40'),(414,'532540','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 11.0000','2026-02-10 06:45:40'),(415,'500325','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 4.2500','2026-02-10 06:45:41'),(416,'500325','','',NULL,NULL,NULL,NULL,'Scheme of Arrangement ','2026-02-10 06:45:41'),(417,'500325','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 13.0000','2026-02-10 06:45:41'),(418,'500325','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 13.0000','2026-02-10 06:45:41'),(419,'500325','','',NULL,NULL,NULL,NULL,'Bonus issue 1:1','2026-02-10 06:45:41'),(420,'500325','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 7.0000','2026-02-10 06:45:41'),(421,'500325','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 8.0000','2026-02-10 06:45:41'),(422,'500325','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 8.5000','2026-02-10 06:45:41'),(423,'500325','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 9.0000','2026-02-10 06:45:41'),(424,'500325','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 9.5000','2026-02-10 06:45:41'),(425,'500325','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 10.0000','2026-02-10 06:45:41'),(426,'500325','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 10.5000','2026-02-10 06:45:41'),(427,'500325','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 11.0000','2026-02-10 06:45:41'),(428,'500325','','',NULL,NULL,NULL,NULL,'Bonus issue 1:1','2026-02-10 06:45:41'),(429,'500325','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 6.0000','2026-02-10 06:45:41'),(430,'500325','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 6.5000','2026-02-10 06:45:41'),(431,'500325','','',NULL,NULL,NULL,NULL,'Right Issue of Equity Shares ','2026-02-10 06:45:41'),(432,'500325','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 6.5000','2026-02-10 06:45:41'),(433,'500325','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 7.0000','2026-02-10 06:45:41'),(434,'500325','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 8.0000','2026-02-10 06:45:41'),(435,'500325','','',NULL,NULL,NULL,NULL,'Spin Off ','2026-02-10 06:45:41'),(436,'500325','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 9.0000','2026-02-10 06:45:41'),(437,'500325','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 10.0000','2026-02-10 06:45:41'),(438,'500325','','',NULL,NULL,NULL,NULL,'Bonus issue 1:1','2026-02-10 06:45:41'),(439,'500325','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 5.5000','2026-02-10 06:45:41'),(440,'500209','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 2.5000','2026-02-10 06:45:42'),(441,'500209','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 7.5000','2026-02-10 06:45:42'),(442,'500209','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 7.5000','2026-02-10 06:45:42'),(443,'500209','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 6.0000','2026-02-10 06:45:42'),(444,'500209','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 27.2500','2026-02-10 06:45:42'),(445,'500209','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 10.0000','2026-02-10 06:45:42'),(446,'500209','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 13.5000','2026-02-10 06:45:42'),(447,'500209','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 10.0000','2026-02-10 06:45:42'),(448,'500209','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 15.0000','2026-02-10 06:45:42'),(449,'500209','','',NULL,NULL,NULL,NULL,'Special Dividend - Rs. - 30.0000','2026-02-10 06:45:42'),(450,'500209','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 10.0000','2026-02-10 06:45:42'),(451,'500209','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 20.0000','2026-02-10 06:45:42'),(452,'500209','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 15.0000','2026-02-10 06:45:42'),(453,'500209','','',NULL,NULL,NULL,NULL,'Special Dividend - Rs. - 10.0000','2026-02-10 06:45:42'),(454,'500209','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 22.0000','2026-02-10 06:45:42'),(455,'500209','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 15.0000','2026-02-10 06:45:42'),(456,'500209','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 27.0000','2026-02-10 06:45:42'),(457,'500209','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 20.0000','2026-02-10 06:45:42'),(458,'500209','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 43.0000','2026-02-10 06:45:42'),(459,'500209','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 30.0000','2026-02-10 06:45:42'),(460,'500209','','',NULL,NULL,NULL,NULL,'Bonus issue 1:1','2026-02-10 06:45:42'),(461,'500209','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 29.5000','2026-02-10 06:45:42'),(462,'500209','','',NULL,NULL,NULL,NULL,'Bonus issue 1:1','2026-02-10 06:45:42'),(463,'500209','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 10.0000','2026-02-10 06:45:42'),(464,'500209','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 14.2500','2026-02-10 06:45:42'),(465,'500209','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 11.0000','2026-02-10 06:45:42'),(466,'500209','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 14.7500','2026-02-10 06:45:42'),(467,'500209','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 13.0000','2026-02-10 06:45:42'),(468,'500209','','',NULL,NULL,NULL,NULL,'Buy Back of Shares ','2026-02-10 06:45:42'),(469,'500209','','',NULL,NULL,NULL,NULL,'Special Dividend - Rs. - 10.0000','2026-02-10 06:45:42'),(470,'500209','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 20.5000','2026-02-10 06:45:42'),(471,'500209','','',NULL,NULL,NULL,NULL,'Bonus issue 1:1','2026-02-10 06:45:42'),(472,'500209','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 7.0000','2026-02-10 06:45:42'),(473,'500209','','',NULL,NULL,NULL,NULL,'Special Dividend - Rs. - 4.0000','2026-02-10 06:45:42'),(474,'500209','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 10.5000','2026-02-10 06:45:42'),(475,'500209','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 8.0000','2026-02-10 06:45:42'),(476,'500209','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 9.5000','2026-02-10 06:45:42'),(477,'500209','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 12.0000','2026-02-10 06:45:42'),(478,'500209','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 15.0000','2026-02-10 06:45:42'),(479,'500209','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 15.0000','2026-02-10 06:45:42'),(480,'500209','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 16.0000','2026-02-10 06:45:42'),(481,'500209','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 16.5000','2026-02-10 06:45:42'),(482,'500209','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 17.5000','2026-02-10 06:45:42'),(483,'500209','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 18.0000','2026-02-10 06:45:42'),(484,'500209','','',NULL,NULL,NULL,NULL,'Special Dividend - Rs. - 8.0000','2026-02-10 06:45:42'),(485,'500209','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 20.0000','2026-02-10 06:45:42'),(486,'500209','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 21.0000','2026-02-10 06:45:42'),(487,'500209','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 22.0000','2026-02-10 06:45:43'),(488,'500209','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 23.0000','2026-02-10 06:45:43'),(489,'500209','','',NULL,NULL,NULL,NULL,'Buy Back of Shares ','2026-02-10 06:45:43'),(490,'500878','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 0.0000','2026-02-10 06:46:19'),(491,'500878','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 1.0000','2026-02-10 06:46:19'),(492,'500878','','',NULL,NULL,NULL,NULL,'Right Issue of Equity Shares ','2026-02-10 06:46:19'),(493,'500878','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 1.8000','2026-02-10 06:46:19'),(494,'500878','','',NULL,NULL,NULL,NULL,'Scheme of Arrangement ','2026-02-10 06:46:19'),(495,'500878','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 4.0000','2026-02-10 06:46:19'),(496,'500878','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 4.0000','2026-02-10 06:46:19'),(497,'500878','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 2.0000','2026-02-10 06:46:19'),(498,'500878','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 1.0000','2026-02-10 06:46:19'),(499,'500878','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 4.0000','2026-02-10 06:46:19'),(500,'500878','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 10.0000','2026-02-10 06:46:19'),(501,'500878','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 10.0000','2026-02-10 06:46:20'),(502,'500878','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 11.5000','2026-02-10 06:46:20'),(503,'500878','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 11.5000','2026-02-10 06:46:20'),(504,'500878','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 11.5000','2026-02-10 06:46:20'),(505,'500878','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 12.0000','2026-02-10 06:46:20'),(506,'500878','','',NULL,NULL,NULL,NULL,'Interim Dividend - Rs. - 12.0000','2026-02-10 06:46:20'),(507,'500878','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 18.0000','2026-02-10 06:46:20'),(508,'500878','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 3.0000','2026-02-10 06:46:20'),(509,'500878','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 12.0000','2026-02-10 06:46:20'),(510,'500878','','',NULL,NULL,NULL,NULL,'Dividend - Rs. - 30.0000','2026-02-10 06:46:20'),(511,'500878','','',NULL,NULL,NULL,NULL,'Final Dividend - Rs. - 30.0000','2026-02-10 06:46:20');
/*!40000 ALTER TABLE `corporate_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `financial_results`
--

DROP TABLE IF EXISTS `financial_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `financial_results` (
  `id` int NOT NULL AUTO_INCREMENT,
  `scrip_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quarter` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `financial_year` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `result_date` date DEFAULT NULL,
  `revenue` decimal(20,2) DEFAULT NULL COMMENT 'Total Revenue in Lakhs/Crores',
  `expenses` decimal(20,2) DEFAULT NULL COMMENT 'Total Expenses',
  `operating_profit` decimal(20,2) DEFAULT NULL COMMENT 'EBITDA',
  `other_income` decimal(20,2) DEFAULT NULL,
  `profit_before_tax` decimal(20,2) DEFAULT NULL COMMENT 'PBT',
  `tax` decimal(20,2) DEFAULT NULL COMMENT 'Tax Expense',
  `net_profit` decimal(20,2) DEFAULT NULL COMMENT 'PAT - Profit After Tax',
  `eps` decimal(10,2) DEFAULT NULL COMMENT 'Earnings Per Share',
  `dividend_per_share` decimal(10,2) DEFAULT NULL,
  `reserves` decimal(20,2) DEFAULT NULL COMMENT 'Reserves and Surplus',
  `borrowings` decimal(20,2) DEFAULT NULL COMMENT 'Total Debt',
  `total_assets` decimal(20,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_result` (`scrip_code`,`quarter`,`financial_year`),
  KEY `idx_scrip_date` (`scrip_code`,`result_date`),
  KEY `idx_year_quarter` (`financial_year`,`quarter`),
  CONSTRAINT `financial_results_ibfk_1` FOREIGN KEY (`scrip_code`) REFERENCES `stock_info` (`scrip_code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `financial_results`
--

LOCK TABLES `financial_results` WRITE;
/*!40000 ALTER TABLE `financial_results` DISABLE KEYS */;
/*!40000 ALTER TABLE `financial_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quarterly_financials`
--

DROP TABLE IF EXISTS `quarterly_financials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quarterly_financials` (
  `id` int NOT NULL AUTO_INCREMENT,
  `scrip_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quarter` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Q1, Q2, Q3, Q4',
  `quarter_end_date` date NOT NULL,
  `financial_year` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'FY2024-25',
  `revenue` decimal(15,2) DEFAULT NULL COMMENT 'Revenue in Cr',
  `other_income` decimal(15,2) DEFAULT NULL COMMENT 'Other Income in Cr',
  `total_income` decimal(15,2) DEFAULT NULL COMMENT 'Total Income in Cr',
  `expenditure` decimal(15,2) DEFAULT NULL COMMENT 'Total Expenditure in Cr',
  `interest` decimal(15,2) DEFAULT NULL COMMENT 'Interest Expense in Cr',
  `pbdt` decimal(15,2) DEFAULT NULL COMMENT 'Profit Before Depreciation & Tax in Cr',
  `depreciation` decimal(15,2) DEFAULT NULL COMMENT 'Depreciation in Cr',
  `pbt` decimal(15,2) DEFAULT NULL COMMENT 'Profit Before Tax in Cr',
  `tax` decimal(15,2) DEFAULT NULL COMMENT 'Tax Expense in Cr',
  `net_profit` decimal(15,2) DEFAULT NULL COMMENT 'Net Profit (PAT) in Cr',
  `equity` decimal(15,2) DEFAULT NULL COMMENT 'Equity in Cr',
  `eps` decimal(10,2) DEFAULT NULL COMMENT 'Earnings Per Share',
  `ceps` decimal(10,2) DEFAULT NULL COMMENT 'Cash EPS',
  `opm_percent` decimal(8,2) DEFAULT NULL COMMENT 'Operating Profit Margin %',
  `npm_percent` decimal(8,2) DEFAULT NULL COMMENT 'Net Profit Margin %',
  `scraped_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_quarter` (`scrip_code`,`quarter_end_date`),
  KEY `idx_scrip` (`scrip_code`),
  KEY `idx_date` (`quarter_end_date`),
  KEY `idx_fy` (`financial_year`),
  KEY `idx_company` (`company_name`(100))
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quarterly_financials`
--

LOCK TABLES `quarterly_financials` WRITE;
/*!40000 ALTER TABLE `quarterly_financials` DISABLE KEYS */;
INSERT INTO `quarterly_financials` VALUES (10,'500878','CEAT Limited','Q3','2025-12-31','FY2025-26',55567.00,2049.00,57616.00,-43602.00,-512.00,14014.00,-1102.00,12912.00,-2722.00,10190.00,362.00,28.16,31.19,26.14,18.34,'2026-02-12 07:07:37','2026-02-12 08:44:57'),(11,'500878','CEAT Limited','Q2','2025-09-30','FY2025-26',54531.00,1768.00,56299.00,-39916.00,-203.00,16383.00,-1139.00,15244.00,-3416.00,11828.00,362.00,32.70,35.82,30.42,21.69,'2026-02-12 07:07:37','2026-02-12 08:44:57'),(12,'500878','CEAT Limited','Q1','2025-06-30','FY2025-26',52788.00,2703.00,55491.00,-38202.00,-171.00,17289.00,-1103.00,16186.00,-3634.00,12552.00,362.00,34.69,37.72,33.08,23.78,'2026-02-12 07:07:37','2026-02-12 08:44:57'),(13,'500878','CEAT Limited','Q4','2025-03-31','FY2024-25',54136.00,1922.00,56058.00,-40268.00,-201.00,15790.00,-1118.00,14672.00,-3556.00,11116.00,362.00,30.72,33.80,29.54,20.53,'2026-02-12 07:07:37','2026-02-12 08:44:57'),(14,'500878','CEAT Limited','Q3','2024-12-31','FY2024-25',53883.00,2118.00,56001.00,-39367.00,-211.00,16634.00,-1125.00,15509.00,-3677.00,11832.00,362.00,32.71,35.79,31.26,21.96,'2026-02-12 07:07:37','2026-02-12 08:44:57');
/*!40000 ALTER TABLE `quarterly_financials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_info`
--

DROP TABLE IF EXISTS `stock_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `scrip_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `industry` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symbol` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isin` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `face_value` decimal(10,2) DEFAULT NULL,
  `market_cap` decimal(20,2) DEFAULT NULL,
  `last_price` decimal(10,2) DEFAULT NULL,
  `last_updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `scrip_code` (`scrip_code`),
  KEY `idx_scrip` (`scrip_code`),
  KEY `idx_symbol` (`symbol`),
  KEY `idx_company` (`company_name`(100))
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_info`
--

LOCK TABLES `stock_info` WRITE;
/*!40000 ALTER TABLE `stock_info` DISABLE KEYS */;
INSERT INTO `stock_info` VALUES (1,'532540','',NULL,'TCS','',0.00,0.00,0.00,'2026-02-10 06:45:39'),(2,'500325','',NULL,'RELIANCE','',0.00,0.00,0.00,'2026-02-10 06:45:41'),(3,'500878','',NULL,'500878','',0.00,0.00,0.00,'2026-02-10 06:46:19'),(8,'500209','',NULL,'INFY','',0.00,0.00,0.00,'2026-02-10 06:45:41');
/*!40000 ALTER TABLE `stock_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `v_financial_summary`
--

DROP TABLE IF EXISTS `v_financial_summary`;
/*!50001 DROP VIEW IF EXISTS `v_financial_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_financial_summary` AS SELECT 
 1 AS `scrip_code`,
 1 AS `symbol`,
 1 AS `company_name`,
 1 AS `total_results`,
 1 AS `latest_result_date`,
 1 AS `avg_net_profit`,
 1 AS `avg_eps`,
 1 AS `latest_profit`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_latest_financials`
--

DROP TABLE IF EXISTS `v_latest_financials`;
/*!50001 DROP VIEW IF EXISTS `v_latest_financials`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_latest_financials` AS SELECT 
 1 AS `id`,
 1 AS `scrip_code`,
 1 AS `company_name`,
 1 AS `quarter`,
 1 AS `financial_year`,
 1 AS `result_date`,
 1 AS `revenue`,
 1 AS `expenses`,
 1 AS `operating_profit`,
 1 AS `other_income`,
 1 AS `profit_before_tax`,
 1 AS `tax`,
 1 AS `net_profit`,
 1 AS `eps`,
 1 AS `dividend_per_share`,
 1 AS `reserves`,
 1 AS `borrowings`,
 1 AS `total_assets`,
 1 AS `created_at`,
 1 AS `updated_at`,
 1 AS `symbol`,
 1 AS `market_cap`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_upcoming_actions`
--

DROP TABLE IF EXISTS `v_upcoming_actions`;
/*!50001 DROP VIEW IF EXISTS `v_upcoming_actions`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_upcoming_actions` AS SELECT 
 1 AS `id`,
 1 AS `scrip_code`,
 1 AS `company_name`,
 1 AS `action_type`,
 1 AS `ex_date`,
 1 AS `record_date`,
 1 AS `bc_start_date`,
 1 AS `bc_end_date`,
 1 AS `purpose`,
 1 AS `created_at`,
 1 AS `symbol`,
 1 AS `days_until_ex`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `v_financial_summary`
--

/*!50001 DROP VIEW IF EXISTS `v_financial_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_financial_summary` AS select `s`.`scrip_code` AS `scrip_code`,`s`.`symbol` AS `symbol`,`s`.`company_name` AS `company_name`,count(`f`.`id`) AS `total_results`,max(`f`.`result_date`) AS `latest_result_date`,avg(`f`.`net_profit`) AS `avg_net_profit`,avg(`f`.`eps`) AS `avg_eps`,(select `financial_results`.`net_profit` from `financial_results` where (`financial_results`.`scrip_code` = `s`.`scrip_code`) order by `financial_results`.`result_date` desc limit 1) AS `latest_profit` from (`stock_info` `s` left join `financial_results` `f` on((`s`.`scrip_code` = `f`.`scrip_code`))) group by `s`.`scrip_code`,`s`.`symbol`,`s`.`company_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_latest_financials`
--

/*!50001 DROP VIEW IF EXISTS `v_latest_financials`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_latest_financials` AS select `f`.`id` AS `id`,`f`.`scrip_code` AS `scrip_code`,`f`.`company_name` AS `company_name`,`f`.`quarter` AS `quarter`,`f`.`financial_year` AS `financial_year`,`f`.`result_date` AS `result_date`,`f`.`revenue` AS `revenue`,`f`.`expenses` AS `expenses`,`f`.`operating_profit` AS `operating_profit`,`f`.`other_income` AS `other_income`,`f`.`profit_before_tax` AS `profit_before_tax`,`f`.`tax` AS `tax`,`f`.`net_profit` AS `net_profit`,`f`.`eps` AS `eps`,`f`.`dividend_per_share` AS `dividend_per_share`,`f`.`reserves` AS `reserves`,`f`.`borrowings` AS `borrowings`,`f`.`total_assets` AS `total_assets`,`f`.`created_at` AS `created_at`,`f`.`updated_at` AS `updated_at`,`s`.`symbol` AS `symbol`,`s`.`market_cap` AS `market_cap` from (`financial_results` `f` join `stock_info` `s` on((`f`.`scrip_code` = `s`.`scrip_code`))) where (`f`.`scrip_code`,`f`.`result_date`) in (select `financial_results`.`scrip_code`,max(`financial_results`.`result_date`) from `financial_results` group by `financial_results`.`scrip_code`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_upcoming_actions`
--

/*!50001 DROP VIEW IF EXISTS `v_upcoming_actions`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_upcoming_actions` AS select `ca`.`id` AS `id`,`ca`.`scrip_code` AS `scrip_code`,`ca`.`company_name` AS `company_name`,`ca`.`action_type` AS `action_type`,`ca`.`ex_date` AS `ex_date`,`ca`.`record_date` AS `record_date`,`ca`.`bc_start_date` AS `bc_start_date`,`ca`.`bc_end_date` AS `bc_end_date`,`ca`.`purpose` AS `purpose`,`ca`.`created_at` AS `created_at`,`s`.`symbol` AS `symbol`,(to_days(`ca`.`ex_date`) - to_days(curdate())) AS `days_until_ex` from (`corporate_actions` `ca` join `stock_info` `s` on((`ca`.`scrip_code` = `s`.`scrip_code`))) where (`ca`.`ex_date` >= curdate()) order by `ca`.`ex_date` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-12 14:51:20
