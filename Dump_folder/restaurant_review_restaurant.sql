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
-- Table structure for table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant` (
  `_id` int NOT NULL AUTO_INCREMENT,
  `restaurantName` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restaurantContact` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `region` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `websiteLink` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `openingHours` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menuLink` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `restaurantLogo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant`
--

LOCK TABLES `restaurant` WRITE;
/*!40000 ALTER TABLE `restaurant` DISABLE KEYS */;
INSERT INTO `restaurant` VALUES (1,'Cherry Garden - Mandarin Oriental','Chinese cuisine','* One of the most beautiful restaurants in Singapore, Cherry Garden offers an eclectic menu of Cantonese cuisine, presented with artistic modern flair.\nUsing fresh, seasonal produce, the menu always offers authentic Cantonese dishes.\n A varied wine list features a balanced selection of old and new world wines specially selected to match the menu.','68853500','5 Raffles Ave., Singapore 039797','Central region','https://www.mandarinoriental.com/en/singapore/marina-bay/dine/cherry-garden','Monday - Friday: 12-2:30pm, 6:30-10:30pm, Saturday & Sunday: 11am-3:30pm, 6:30pm-10:30pm','https://www.mosindiningsociety.com/menus/menus/get_menu.php?menu=CG_Ala_Carte_Lunch_Menu_-_2208_220907','images/restaurantImages/cherry-garden-interior.jpg','images/restaurantImages/cherry_garden_food.jpeg','images/restaurantImages/cherry_garden_food1.jpg','images/restaurantImages/singapore-cherry-garden-logo-dark.png'),(2,'Molten Diners','Western cuisine, Halal','* The restaurant is famous for the range of sauces they offer with their meals.\n* Another great thing is that free refill is available for your chosen sauces!\n* Molten - that\'s the state of our sauces - viscous yet free flowing, delicious and rare.\n* We are a creative and different eatery.','68024082','246 Upper Thomson Road, Singapore 574370','Central region','https://moltendiners.com/','Monday - Friday: 11am - 11pm, Saturday & Sunday: 10am - 11pm','https://www.foodbooking.com/ordering/restaurant/menu?company_uid=f2837d78-59db-4ad0-984a-65e0ac08adf2&restaurant_uid=fc59e81e-3c3d-4fc0-a4f2-3d7231e93fdf','images/restaurantImages/molten_diners.jpg','images/restaurantImages/Molten-Diners-Menu.jpg','images/restaurantImages/molten_diners_food.jpg','images/restaurantImages/molten_diners_logo.jpg'),(3,'AWADH | Royal Indian Dining & Lounge','Indian cuisine','* AWADHI cuisine is known for its regal savoury flavours and we are bringing this gourmet cuisine to Singapore.\n* We promise you an exquisite experience packed with delectable flavours and fragrances that will take you on a journey of Royal AWADH.\n* Come by Awadh and indulge in the most authentic Indian food in Singapore.','90096276','#01-33H 176 Orchard Road, Center Point Singapore 238843','Central region','https://www.theawadh.com/','Monday - Sunday: 11:30am - 12am','https://www.theawadh.com/menu/','images/restaurantImages/widen-1680-noupsize;20380-whole-venue-room.jpg','images/restaurantImages/awadh_food.jpg',NULL,'images/restaurantImages/awadh_logo.jpg'),(4,'KFC','Fast food, Western cuisine','* KFC is an American fast food restaurant chain headquartered in Louisville, Kentucky, that specializes in fried chicken.\n* It is the world\'s second-largest restaurant chain after McDonald\'s, with 22,621 locations globally in 150 countries as of December 2019.','62260349','4 Tampines Central 5, #01-47 Tampines Mall, Singapore 529510','East region','https://www.kfc.com.sg/','Monday - Sunday: 8am - 10pm','https://www.kfc.com.sg/Menu','images/restaurantImages/The-Tank-@-KFC_exterior-front.jpg','images/restaurantImages/kfc_fried_chicken.jpg','images/restaurantImages/kfc_set.jpg','images/restaurantImages/1200px-KFC_logo.svg.png'),(5,'McDonald\'s White Sands','Fast food, Western cuisine','* McDonald\'s is best known for its hamburgers, cheeseburgers and french fries, although their menus include other items like chicken, fish, fruit, and salads.\n* Their most well-known licensed item on the menu would be their french fries with the Big Mac close behind.','67773777','1 Pasir Ris Central St 3, #01-28/29 White Sands, Singapore 518457','East region','https://www.mcdonalds.com.sg/','Monday - Sunday: 6am - 1am','https://www.mcdonalds.com.sg/full-menu','images/restaurantImages/mcdonalds_white_sands.jpg','images/restaurantImages/mcdonald-s-white-sands.jpg','images/restaurantImages/mac_burger.jpg','images/restaurantImages/mcdonalds_logo.png'),(6,'Yishun 925 Chicken Rice','Chinese cuisine','* Yishun 925 Chicken Rice has been faithfully dishing out their signature boneless chicken for over 20 years, establishing their place as comfort food for the nearby residents.\n* Not many places are able to steam their chicken to perfection, but here, you’ll find that the meat is tender and fragrant.','69247742','Blk 925 Yishun Central 1, #01-249, Singapore','North region','https://yishun925chickenrice.getz.co/','Monday - Sunday: 9:30am - 8:30pm','https://yishun925chickenrice.getz.co/','images/restaurantImages/yishun_chicken_rice_place.jpg','images/restaurantImages/yishun_chicken_rice_photo.jpg',NULL,'images/restaurantImages/yishun_chicken_rice_logo.jpg'),(7,'Harry\'s','Western cuisine','* Harry’s is a place where the conversations keep flowing and the good vibes get going.\n* Special highlights on the menu include Harry’s very own house brew, Harry’s Premium Lager.\n* As part of the new menu, Harry’s offers an all-new selection of beer cocktails that is full of fun and surprises.','82688090','1 Maritime Square, #01-64 HarbourFront Centre Singapore 099253','South region','https://www.harrys.com.sg/','Sunday - Thursday: 11.30am - 11pm, Friday & Saturday: 11.30am - 12am','https://www.harrys.com.sg/menu','images/restaurantImages/harry-s-restaurant-in.jpg','images/restaurantImages/harrys_food.jpg','images/restaurantImages/harrys_burger.jpg','images/restaurantImages/harrys_logo.png'),(8,'Laifaba','Chinese cuisine','* Laifabar is a noodle house that specialises in traditional wanton noodle, dumplings and roast meats.n* Laifaba’s contemporary take on food Maintains the philosophy to preserve authentic flavours and traditional cooking techniques while exploring the use of premium quality ingredients that are both ethically sourced and sustainable.','91816383','02-02 Bukit Batok Crescent Prestige Centre 71 Singapore 658071','West region','https://laifabar.business.site/','Tuesday - Sunday: 11am - 3pm, 5:30pm - 9pm','https://inline.app/order/-N-MMZpkxKCngrCMxRnZ:inline-live-2/-N-MM_TCGGpHJ3jvyXkC?language=en','images/restaurantImages/laifaba.jpg','images/restaurantImages/D3IGX85fDuhv_laifaba2.jpeg','images/restaurantImages/laifabar1.jpg','images/restaurantImages/laifaba-enterprises.jpg');
/*!40000 ALTER TABLE `restaurant` ENABLE KEYS */;
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
