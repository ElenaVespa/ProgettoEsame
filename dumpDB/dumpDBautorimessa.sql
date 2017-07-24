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
-- Table structure for table `clienti`
--

DROP TABLE IF EXISTS `clienti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clienti` (
  `email` varchar(50) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `cognome` varchar(30) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clienti`
--

LOCK TABLES `clienti` WRITE;
/*!40000 ALTER TABLE `clienti` DISABLE KEYS */;
INSERT INTO `clienti` VALUES ('bubu@hotmail.it','bubu','mori','3462883947'),('dada@shda.it','dad','dada','22222222'),('dads@djasdj.it','diego','dari','2929348840'),('ejjee@ejej','ele','ekek','382929'),('elena@hotmail.it','elena','vespa','0113089974'),('laura@gmail.com','laura','rossi','3336583510'),('mv@hotmail.it','marco','vespa','3358978023'),('nena1@hotmail.it','elena','vespa','3458839018'),('rosi@gmail.it','rosi','mari','3472993748'),('sprio@hotmail.com','gianluca','spriano','3451787293'),('veri@gmail.it','gaia','verani','3462991746');
/*!40000 ALTER TABLE `clienti` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `ordini`
--

DROP TABLE IF EXISTS `ordini`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ordini` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `veicolo` varchar(15) NOT NULL,
  `da_gg` varchar(10) NOT NULL,
  `da_ora` varchar(10) NOT NULL,
  `a_gg` varchar(10) NOT NULL,
  `a_ora` varchar(10) NOT NULL,
  `lavaggio` varchar(5) NOT NULL,
  `note` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `email_idx` (`email`),
  CONSTRAINT `email` FOREIGN KEY (`email`) REFERENCES `clienti` (`email`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordini`
--

LOCK TABLES `ordini` WRITE;
/*!40000 ALTER TABLE `ordini` DISABLE KEYS */;
INSERT INTO `ordini` VALUES (1,'elena@hotmail.it','autogrande','12/09/2017','12.30','15/09/2017','16.30','si','Prova'),(2,'laura@gmail.com','moto','3/10/17','6.00','3/11/17','12.00','no','prova 2'),(3,'sprio@hotmail.com','furgone','17/02/18','8.00','17/05/18','20.00','no','prova 3'),(4,'mv@hotmail.it','moto','12/2/18','12.00','5/7/18','13.00','si','prova 4'),(5,'veri@gmail.it','autogrande','9/8/17','11.00','11/8/17','23.00','no','prova 5'),(10,'ejjee@ejej','moto','22222222','22222','2222','222','si','dsadsa'),(11,'nena1@hotmail.it','autopiccola','9/8/17','15.00','9/8/17','18.00','no','prova finale');
/*!40000 ALTER TABLE `ordini` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-24 14:12:28
