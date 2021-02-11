-- MySQL dump 10.13  Distrib 8.0.22, for macos10.15 (x86_64)
--
-- Host: localhost    Database: fashionDB
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `fashionevents`
--

DROP TABLE IF EXISTS `fashionevents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fashionevents` (
  `eventId` int NOT NULL AUTO_INCREMENT,
  `eventName` varchar(45) DEFAULT NULL,
  `eventInfo` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`eventId`),
  UNIQUE KEY `eventid_UNIQUE` (`eventId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fashionevents`
--

LOCK TABLES `fashionevents` WRITE;
/*!40000 ALTER TABLE `fashionevents` DISABLE KEYS */;
INSERT INTO `fashionevents` VALUES (2,'Buenos Aires Fashion Week','BAFWeek is a biannual clothing trade show held mainly in La Rural fairgrounds, Buenos Aires.'),(3,'Fashion Malawi Edition','Fashion Malawi Edition or F.A.M.E is the first organization in Malawi that works to market and develop the Malawian fashion Industry through capacity building and professional development training.'),(4,'Hayati Fashion Week','Hayati Fashion Week (HFW) is an annual series of events when modest fashion collections from Nigeria and other African countries are shown to the press and general public. HFW was founded by Fatima Togbe in 2017'),(5,'Lagos Fashion Week','Lagos Fashion Week (LFWNG) is an annual multi-day fashion event founded in 2011 by Omoyemi Akerele.\n\nThe Multi-day fashion week first took place in 2011 and was well received by both Nigerian designers and fashion enthusiasts. The 2012 event was organized by MTN Group and the 2018 event is being sponsored by Heineken,[1] Other sponsors include British Council,[2] and Fetswallet.'),(6,'Port Harcourt International Fashion Week','Port Harcourt International Fashion Week (alternatively known as Native & Vogue) is an annual clothing and fashion event held in the oil capital of Nigeria, Port Harcourt. This event, a part of fashion in Nigeria, first took place in 2013 and continues to be jointly organized by Neo Mantra Ltd and Bruno Creazioni Company. The event lasts three days. Its principal sponsor is the Rivers State government.'),(7,'Bolivia Fashion Week','Bolivia Fashion Week[1] took place for the first time in Bolivia on April 5 to 8, 2016 in the Bolivian city of Cochabamba.[2] Bolivia Fashion Week is an annual event that showcases both emerging designers, brands and cultural fashion innovators. The presence of Agatha Ruiz de la Prada from Spain, and other world designers in the Bolivia Fashion Week 2016 event, highlighted the goal of the fashion week to connect talented local designers with the global fashion industry, as stated by Bolivia Fashion Week\'s founder, Pamela Alarcon, General Producer Pierre Dulanto.'),(8,'Fashion Cares','Fashion Cares was an annual event held in Toronto, Ontario, Canada that seeks to raise awareness of HIV and AIDS, as well as raise funds for the AIDS Committee of Toronto (ACT). Since its inception in 1987, it, with assistance from local and national businesses, has raised over $10 million through banquets, auctions and fashion shows. Fashion Cares ended in 2012.'),(9,'Boston Fashion Week','Boston Fashion Week is a week-long luxury clothing event that takes place annually in Boston, United States. Fashion Week allows for international and local designers to showcase their creations to the general public, buyers, celebrities, and fashion experts. The event was established in the city by Jay Calderin in 1995. It faced a few setbacks in the early years, but is now increasing its popularity and importance, as Boston becomes a more fashion forward city'),(10,'Lagos Fashion Week','Lagos Fashion Week (LFWNG) is an annual multi-day fashion event founded in 2011 by Omoyemi Akerele.\n\nThe Multi-day fashion week first took place in 2011 and was well received by both Nigerian designers and fashion enthusiasts. The 2012 event was organized by MTN Group and the 2018 event is being sponsored by Heineken\n\n'),(11,'Hayati Fashion Week','Hayati Fashion Week (HFW) is an annual series of events when modest fashion collections from Nigeria and other African countries are shown to the press and general public. HFW was founded by Fatima Togbe in 2017.\nThe inaugural event took place in 2017 and was sponsored by the Medicaid Cancer Foundation (MCF).'),(12,'Vancouver Fashion Week','Vancouver Fashion Week (VFW) is a fashion week in Vancouver, British Columbia, Canada that is currently run by Jamal Abdourahman. The event is seven days long each season and held twice a year. Vancouver Fashion Week was established in 2001.\n\nSince 2014, the Nancy Mak Award has been presented at Vancouver Fashion Week.'),(13,'São Paulo Fashion Week','The São Paulo Fashion Week is an clothing trade show held semi-annually in São Paulo. It is notable as \"Latin America\'s pre-eminent fashion event and it is considered the fifth largest fashion week after in the world behind New York, London, Paris and Milan');
/*!40000 ALTER TABLE `fashionevents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userid_UNIQUE` (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'Black','widow','blackwidow@avanger.com','$2a$08$qEnQrMldgJfOZsFHGSgqpueJKXer.HKxkcjKe7krFxzXibK5/1l4O','2021-02-09 11:18:41','2021-02-09 11:18:41'),(3,'nick','fury','nickfury@avenger.com','$2a$08$wyG4hkple4uKKlUuem8Dg.M30hBOQgXUKgPcW7QGSjsYQZ3aPyYTu','2021-02-10 11:53:01','2021-02-10 11:53:01'),(4,'iron','man','ironman@avenger.com','$2a$08$J5262ziM6PtWHLFHnDAqF.UuORRSfyuXXB6qDpcY7sEdnjZwqp4Wu','2021-02-10 12:00:06','2021-02-10 12:00:06'),(5,'spider','man','spiderman@avenger.com','$2a$08$r2gtlcuVJ0wud6n6riCVguPQ5bbagKLLbx419YWsZ08rjBRtJw4qe','2021-02-10 12:02:08','2021-02-10 12:02:08');
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

-- Dump completed on 2021-02-10 22:14:08
