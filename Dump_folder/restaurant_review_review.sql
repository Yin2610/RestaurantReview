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
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` int NOT NULL,
  `price` int NOT NULL,
  `postedTime` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userId` int NOT NULL,
  `restaurantId` int NOT NULL,
  PRIMARY KEY (`_id`),
  KEY `userId_idx` (`userId`),
  KEY `restaurantId_idx` (`restaurantId`),
  CONSTRAINT `restaurantId` FOREIGN KEY (`restaurantId`) REFERENCES `restaurant` (`_id`) ON DELETE CASCADE,
  CONSTRAINT `userId` FOREIGN KEY (`userId`) REFERENCES `user` (`_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,'Had lunch at Cherry Garden','The food was delicious. The staff were friendly and caring. Definitely would come again for lunch.',5,3,'2022-11-18 12:00:23',1,1),(2,'One of the best for Dim Sum brunch','If in Singapore then one must try this restaurant for a dim sum brunch. Each preparation is exquisite and flavorful. To top it, the desserts are amazing. Extremely satisfying!',4,3,'2022-11-01 10:35:46',2,1),(3,'Good food and excellent service','The honey-marinated baked cod fillet was above average, fish was fresh but sauce not that good. The pan-fried beef cubes were exceptional, tender, juicy and tasty, at SGD32 each for 12 beef cubes. Excellent service from Miss Eve.',5,3,'2022-10-21 12:03:32',3,1),(4,'Great value lunch menu','Had time for a leisurely lunch and chanced upon this cosy cafe. Their offer for a 4-course set lunch at a nifty price of $9.90 drew us in and it was a pleasant surprise.',4,3,'2019-11-20 15:34:54',3,2),(5,'Late lunch @ Molten','Had to ask for an extra menu. Only given 1 even though there were two of us. Food was rather blend and not worth the time. Had Western food that tasted so much better at hawker centres.',2,3,'2020-02-04 17:19:29',4,2),(6,'2 for 1 lunches are back !!!','Stopped by for lunch yesterday. Nice welcome and a great selection on the menu. Nice to see the 2 for 1 lunches back on the menu. I chose fish and chips - too large for me but well cooked and nicely presented. Nice relaxing atmosphere.',4,3,'2020-01-10 14:56:45',3,7),(7,'Another Mcdonald\'s','It serves the usual Mcdonald\'s fare, good place to hang out with friends. Can be quite crowded at times as it is located at a mall and next to a MRT station.',3,5,'2018-07-11 20:47:21',3,5),(8,'Above and beyond','Big respect to supervisor who grabbed her umbrella, walked us to the pick up place and then ordered us a taxi in the pouring rain. Refused a tip and could not have been nicer, an absolute gem.',5,2,'2019-10-27 15:18:16',6,7),(9,'Chicken rice','The chicken was pretty tender, and was doused in light soy sauce which went well with the rice. The rice was disappointing - I liked that the rice grains weren’t clumpy, but it was lacking in fragrance/flavour. Soup was tasty, and I liked that achar was given.',4,2,'2022-05-24 10:31:57',5,6),(10,'Horrible','Ordered takeover today .... food quality is below average , not worth the price.... do not waste your money..',1,5,'2023-01-01 13:29:14',5,3),(11,'Wonderful authentic experience','Cherry Garden was a pleasant surprise to say the least. The food was delicious, well portioned with no lags between courses. All the dishes were tasty and the service from Joy and Elsa was the cherry on top! Thank you for a lovely evening of delicious food.',5,2,'2022-12-27 18:09:18',6,1),(12,'New Years Celebrations','We enjoyed a multigenerational family dinner on New Year’s Eve. We had a great view of river and fireworks display from the table. The food was a good pub style - not flash but highly enjoyable.',5,4,'2019-12-31 22:32:10',4,7),(13,'Amazing Tasting menu with perfect amount of food','My wife and I had a wonderful dinner here with each of us ordering the “Thought” tasting menu. Definitely worth the higher price and we definitely would go back.',5,3,'2022-07-19 14:09:02',5,1),(14,'Buffet lunch at Cherry Garden','Yummy buffet lunch. Good quality food. Served by Phillip and Daisy who were very attentive despite being short-handed. Thank you Chef Soong for dropping by to say hello.',4,4,'2022-8-22 18:54:11',4,1),(15,'I don\'t understand famous about what','Not worth the effort, either these people are tasteless or no taste buds. The chicken rice is the similar as others. Makes no an inch different from those selling at the train station.',1,2,'2021-04-18 11:36:21',4,6);
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
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
