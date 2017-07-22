-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: autorimessa
-- ------------------------------------------------------
-- Server version	5.5.8-log

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
-- Table structure for table `listino`
--

DROP TABLE IF EXISTS `listino`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `listino` (
  `id` int(11) NOT NULL,
  `veicolo` varchar(10) NOT NULL,
  `tempo` varchar(20) NOT NULL,
  `prezzo` decimal(5,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listino`
--

LOCK TABLES `listino` WRITE;
/*!40000 ALTER TABLE `listino` DISABLE KEYS */;
INSERT INTO `listino` VALUES (1,'moto','1ora',1.00),(2,'moto','2ore',2.00),(3,'moto','3ore',3.00),(4,'moto','4ore',4.00),(5,'moto','5ore',4.80),(6,'moto','6ore',5.70),(7,'moto','7ore',6.50),(8,'moto','8ore',7.20),(9,'moto','giornaliero',10.00),(10,'moto','settimanale',50.00),(11,'moto','mensile',100.00),(12,'autopiccol','1ora',1.00),(13,'autopiccol','2ore',2.00),(14,'autopiccol','3ore',3.50),(15,'autopiccol','4ore',4.20),(16,'autopiccol','5ore',5.20),(17,'autopiccol','6ore',6.30),(18,'autopiccol','7ore',7.30),(19,'autopiccol','8ore',8.30),(20,'autopiccol','giornaliero',17.00),(21,'autopiccol','settimanale',70.00),(22,'autopiccol','mensile',150.00),(23,'autogrande','1ora',1.50),(24,'autogrande','2ore',2.80),(25,'autogrande','3ore',4.00),(26,'autogrande','4ore',5.80),(27,'autogrande','5ore',6.90),(28,'autogrande','6ore',7.50),(29,'autogrande','7ore',8.80),(30,'autogrande','8ore',9.70),(31,'autogrande','giornaliero',20.00),(32,'autogrande','settimanale',90.00),(33,'autogrande','mensile',170.00),(34,'furgone','1ora',2.00),(35,'furgone','2ore',4.00),(36,'furgone','3ore',5.80),(37,'furgone','4ore',7.50),(38,'furgone','5ore',9.00),(39,'furgone','6ore',11.50),(40,'furgone','7ore',13.50),(41,'furgone','8ore',15.00),(42,'furgone','giornaliero',25.00),(43,'furgone','settimanale',120.00),(44,'furgone','mensile',230.00),(45,'','',0.00),(46,'','',0.00),(47,'','',0.00),(48,'','',0.00),(49,'','',0.00),(50,'','',0.00);
/*!40000 ALTER TABLE `listino` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-22 17:20:37
