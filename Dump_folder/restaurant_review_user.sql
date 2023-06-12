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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `_id` int NOT NULL AUTO_INCREMENT,
  `userName` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userPhoto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userEmail` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userContact` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userGender` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userBio` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Emily','images/userImages/emily_photo.jpg','emily@gmail.com','84547738','Female','Work at full time foodie','em!1y231'),(2,'Selena','images/userImages/selena.jpg','selena@gmail.com','34980613','Female',NULL,'$3L3naGz'),(3,'Susan Conner','images/userImages/susan.jpg','susan1980@gmail.com','94574402','Female','Food is life.','5u$anC0N34'),(4,'Jeff Johnson','images/userImages/jeff_johnson.jpg','jeffjohnson@gmail.com','53245412','Male',NULL,'J3f2_J0hns0n'),(5,'Kelvin','images/userImages/kelvin.jpg','kelvin@gmail.com','78994301','Male','Professional food critic','K31v!n2110'),(6,'Adriel','images/userImages/adriel.jpg','adriel@gmail.com','55838512','Female','I love fast food.','@D4iel404'),(7,'Charlotte Flair','images/userImages/charlotte_flair.jpg','charlotte@gmail.com','45043984','Female',NULL,'ch@rL0t23'),(8,'Thomas Williams','images/userImages/thomas_williams.jpg','thomas@gmail.com','20041294','Male','Blogger/Chef/Food critic','7h0m@5ll');
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

-- Dump completed on 2023-01-06 19:46:39
