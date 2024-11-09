-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: task_project
-- ------------------------------------------------------
-- Server version	9.0.1

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
-- Table structure for table `hms_suite.subscription_master`
--

DROP TABLE IF EXISTS `hms_suite.subscription_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hms_suite.subscription_master` (
  `id` int NOT NULL AUTO_INCREMENT,
  `hospital_id` int NOT NULL,
  `hospital_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `issubscription` tinyint(1) DEFAULT '0',
  `hospitaldetails` tinyint(1) DEFAULT '0',
  `subscription_start_date` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `subscription_end_date` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `plan` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hms_suite.subscription_master`
--

LOCK TABLES `hms_suite.subscription_master` WRITE;
/*!40000 ALTER TABLE `hms_suite.subscription_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `hms_suite.subscription_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `loginDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Kunal Gajananrao Khelkar','At Post Salod','admin@gmail.com','9146219186','$2b$10$Zt.Ym0AeJG3JGMCbyrLNiuqG3fhF0K1YCtJmIltF9Z/H67RyaLR1O','2024-11-02 03:59:27',NULL),(3,'dffd','fasdfsdaf','dsdfa@gmail.com','3456789098','$2b$10$2FU9s7cpeHLe3zw/rJLo9Oc6Vh16rPsdZrGZqcU3wqHGvukN3IK9i','2024-11-02 04:13:57',NULL),(4,'test','test','test@gmail.com','9146219186','$2b$10$3UaM/p3snzrRN6LDtC9/H.GsJeIGxci7pY7I3g2ytsGjDsH9wSsxW','2024-11-02 04:41:14',NULL),(5,'Kunal Gajananrao Khelkar','At Post Salod','aadmin@gmail.com','9146219186','Mindlabzsoftware@2024','2024-11-02 04:57:20',NULL),(7,'Kunal Gajananrao Khelkar','At Post Salod','abdmin@gmail.com','9146219186','$2b$10$KChKWSHqgzekTkarPxCpZ.sT78H4utH9X8rXa5CRgZKiJe3Y.DbYq','2024-11-02 05:03:13',NULL),(8,'Kunal Gajananrao Khelkar','At Post Salod','asdmin@gmail.com','9146219186','$2b$10$0H0mX6vmtae8NlzUPkZMVuRi1Pv9uVD65GwDuini0tB0czHqMgepC','2024-11-02 06:23:05',NULL),(11,'Kunal Gajananrao Khelkar','At Post Salod','aqdmin@gmail.com','9146219186','$2b$10$I8bTlVpEL0tVt/Nae6HCSuiGhbmipp0RRV/GSxeaeoEyPeAQdMu0i','2024-11-02 06:26:34',NULL),(12,'test23','test23','test234@gmail.com','7878766567','$2b$10$oP0zX0RegMQ8NOoWDvfZtu6ZwXZoirLjIcc3P837NQfQhp9M/A7z.','2024-11-02 07:33:34',NULL),(13,'test234','test234','test2345@gmail.com','7878766567','$2b$10$B0v9goq9w4mqAk/cHZXlo.efMnAwY176EZhGits4P59HNJKS9yhf6','2024-11-02 07:34:06',NULL),(14,'Kunal Gajananrao Khelkar','At Post Salod','test2@gmail.com','9146219186','$2b$10$b2uEfO3hSQgi5Vl4wwYyJeC9Wjqusipz11HxZZnHhcUVZj/vwKTeW','2024-11-02 07:35:21','11/2/2024, 1:38:47 PM'),(15,'Kunal Gajananrao Khelkar','At Post Salod','test23@gmail.com','9146219186','$2b$10$C8cCmwC93hSd1XfJiTfYPuEz2.Vks8WnL5RSbzm4yTnJy.neYDi76','2024-11-02 07:38:15','11/2/2024, 1:08:15 PM'),(16,'test21','test21','test21@gmail.com','6787899098','$2b$10$KmSQYVW.JI5rvTmbbShHhel2wQ0aWtyLobepn6wNg5F3iGa3Cn5RK','2024-11-02 07:43:08','11/2/2024, 1:24:00 PM'),(17,'Kunal Khelkar','Salod','tesddst2@gmail.com','9146219186','$2b$10$qPatHpwRoE5rEZ5AGHj2a.hE4gf3RgUhFKkronX5et4aHy.ix/KUK','2024-11-02 13:52:35','11/2/2024, 7:22:34 PM'),(18,'Kunal Gajananrao Khelkar','At Post Salod','tssdest2@gmail.com','9146219186','$2b$10$RSpS5qvwEXQKuXYyawcQ2OMLApNRCz9thmA6zfdB6rATxEcMsqG9G','2024-11-02 13:54:58','11/2/2024, 7:24:58 PM'),(19,'Kunal Gajananrao Khelkar','At Post Salod','tesdsadasdt2@gmail.com','9146219186','$2b$10$5eKb34kc2gxI3UGUE1dU3.uSJrPuUY15RT354OkCr7.a/KGDUuu1y','2024-11-02 13:57:19','11/2/2024, 7:27:19 PM'),(20,'Kunal Gajananrao Khelkar','At Post Salod','tesasdaat2@gmail.com','9146219186','$2b$10$iYxAei7rHLwfdeTo6SxejOVYsd.NNfRDHXTT7EYJ8F.bAlTobWETG','2024-11-02 14:01:18','11/2/2024, 7:31:18 PM'),(21,'Kunal Gajananrao Khelkar','At Post Salod','testsdsd2@gmail.com','9146219186','$2b$10$AFjrY.esOhXjqSVysV/sC.VKRTWpz8BwV0YEPCrj90YzGMRM/tKXi','2024-11-02 14:06:34','11/2/2024, 7:36:34 PM'),(22,'Kunal Gajananrao Khelkar','At Post Salod','tesasddt2@gmail.com','9146219186','$2b$10$wry84Lvodbo3waCJu.iwwODgfuYLS3760yTVqtxq65mKlSzWzjiEK','2024-11-02 14:07:36','11/2/2024, 7:37:36 PM'),(23,'Kunal Gajananrao Khelkar','At Post Salod','kunalkhelkar123@gmail.com','9146219186','$2b$10$B9SZcO2ZUjr7CZxryfh5NuO9V.WnNvkeBA3xnAVisq4kaGD6k6sma','2024-11-08 07:44:28','11/8/2024, 1:13:24 PM'),(24,'Kunal1234 Gajananrao Khelkar','At Post Salod','test212@gmail.com','9146219186','$2b$10$IAzoeP6Iyyvt2gdj/hmxAeDULzjZpTikn8Je.ZocEFDqj.9a9sDjq','2024-11-08 08:52:33','11/8/2024, 8:00:26 PM'),(25,'Kunal Gajananrao Khelkar','At Post Salod','test2212@gmail.com','9146219186','$2b$10$rrx07GFcToZb99FRD/mpXeOgJUXOaaDRt/JZe9Bp5id8YbRDRlkQ.','2024-11-08 09:33:58','11/8/2024, 3:03:55 PM');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'task_project'
--

--
-- Dumping routines for database 'task_project'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-09  8:54:35
