-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: hrm_db
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendance` (
  `attendance_id` int NOT NULL AUTO_INCREMENT,
  `employee_id` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time_in` time DEFAULT NULL,
  `time_out` time DEFAULT NULL,
  PRIMARY KEY (`attendance_id`),
  KEY `idx_attendance_employee` (`employee_id`),
  KEY `idx_attendance_date` (`date`),
  CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
INSERT INTO `attendance` VALUES (1,1,'2023-07-01','08:00:00','17:00:00'),(2,1,'2023-07-02','08:00:00','17:00:00'),(3,1,'2023-07-03','08:00:00','17:00:00'),(4,1,'2023-07-04','08:00:00','17:00:00'),(5,1,'2023-07-05','08:00:00','17:00:00'),(6,1,'2023-07-06','08:00:00','17:00:00'),(7,2,'2023-07-01','08:30:00','17:30:00'),(8,2,'2023-07-02','08:30:00','17:30:00'),(9,2,'2023-07-03','08:30:00','17:30:00'),(10,2,'2023-07-04','08:30:00','17:30:00'),(11,2,'2023-07-05','08:30:00','17:30:00'),(12,2,'2023-07-06','08:30:00','17:30:00'),(13,3,'2023-07-01','09:00:00','18:00:00'),(14,3,'2023-07-02','09:00:00','18:00:00'),(15,3,'2023-07-03','09:00:00','18:00:00'),(16,3,'2023-07-04','09:00:00','18:00:00'),(17,3,'2023-07-05','09:00:00','18:00:00'),(18,3,'2023-07-06','09:00:00','18:00:00'),(19,4,'2023-07-01','08:15:00','17:15:00'),(20,4,'2023-07-02','08:15:00','17:15:00'),(21,4,'2023-07-03','08:15:00','17:15:00'),(22,4,'2023-07-04','08:15:00','17:15:00'),(23,4,'2023-07-05','08:15:00','17:15:00'),(24,4,'2023-07-06','08:15:00','17:15:00'),(25,5,'2023-07-01','08:45:00','17:45:00'),(26,5,'2023-07-02','08:45:00','17:45:00'),(27,5,'2023-07-03','08:45:00','17:45:00'),(28,5,'2023-07-04','08:45:00','17:45:00'),(29,5,'2023-07-05','08:45:00','17:45:00'),(30,5,'2023-07-06','08:45:00','17:45:00'),(31,2,'2023-07-31','22:50:53',NULL),(32,2,'2023-08-01','00:00:09','00:00:45'),(33,3,'2023-08-01','00:02:38','00:02:39');
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-01  0:05:28
