-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: restaurant_review
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `articlereply`
--

DROP TABLE IF EXISTS `articlereply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articlereply` (
  `_id` int NOT NULL AUTO_INCREMENT,
  `replyMessage` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postedTime` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `articleId` int NOT NULL,
  `memberId` int NOT NULL,
  PRIMARY KEY (`_id`),
  KEY `blogId_idx` (`articleId`),
  KEY `groupMemberId_idx` (`memberId`),
  CONSTRAINT `articleId` FOREIGN KEY (`articleId`) REFERENCES `article` (`_id`),
  CONSTRAINT `articlereply_ibfk_1` FOREIGN KEY (`memberId`) REFERENCES `membership` (`_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articlereply`
--

LOCK TABLES `articlereply` WRITE;
/*!40000 ALTER TABLE `articlereply` DISABLE KEYS */;
INSERT INTO `articlereply` VALUES (1,'Thanks for your recommendations. I\'ll definitely go try them.','2022-11-19 01:02:23',1,5),(2,'Thanks for your detailed article. All the food photos seem appetising and your descriptions of meat texture and taste even make me hungry.','2021-03-29 19:00:04',4,2);
/*!40000 ALTER TABLE `articlereply` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-06 19:46:39
