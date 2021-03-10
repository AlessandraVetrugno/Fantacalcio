-- MariaDB dump 10.17  Distrib 10.4.14-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: fantacalcio
-- ------------------------------------------------------
-- Server version	10.4.14-MariaDB

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
-- Table structure for table `compra`
--

DROP TABLE IF EXISTS `compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compra` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `costo` float DEFAULT NULL,
  `id_giocatore` int(11) DEFAULT NULL,
  `id_lettore` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra`
--

LOCK TABLES `compra` WRITE;
/*!40000 ALTER TABLE `compra` DISABLE KEYS */;
INSERT INTO `compra` VALUES (1,5,1,1),(2,5,2,1),(3,5,3,1),(4,5,4,1),(5,5,5,1),(6,5,6,1),(7,5,7,1),(8,5,8,1),(9,5,9,1),(10,5,10,1),(11,5,11,1),(12,5,12,1),(13,5,13,1),(14,5,14,1),(15,5,15,1),(16,5,16,1),(17,5,17,1),(18,5,18,1),(19,5,19,1),(20,5,20,1),(21,5,6,2),(22,5,7,2),(23,5,8,2),(24,5,9,2),(25,5,10,2),(26,5,11,2),(27,5,12,2),(28,5,13,2),(29,5,14,2),(30,5,15,2),(31,5,16,2),(32,5,17,2),(33,5,18,2),(34,5,19,2),(35,5,20,2),(36,5,21,2),(37,5,22,2),(38,5,23,2),(39,5,24,2),(40,5,25,2);
/*!40000 ALTER TABLE `compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formazione`
--

DROP TABLE IF EXISTS `formazione`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formazione` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` date DEFAULT NULL,
  `id_giocatore` int(11) DEFAULT NULL,
  `id_lettore` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formazione`
--

LOCK TABLES `formazione` WRITE;
/*!40000 ALTER TABLE `formazione` DISABLE KEYS */;
INSERT INTO `formazione` VALUES (1,'2020-12-06',1,1),(2,'2020-12-06',2,1),(3,'2020-12-06',3,1),(4,'2020-12-06',4,1),(5,'2020-12-06',5,1),(6,'2020-12-06',6,1),(7,'2020-12-06',7,1),(8,'2020-12-06',8,1),(9,'2020-12-06',9,1),(10,'2020-12-06',10,1),(11,'2020-12-06',11,1),(12,'2020-12-13',20,1),(13,'2020-12-13',19,1),(14,'2020-12-13',18,1),(15,'2020-12-13',17,1),(16,'2020-12-13',16,1),(17,'2020-12-13',15,1),(18,'2020-12-13',14,1),(19,'2020-12-13',13,1),(20,'2020-12-13',12,1),(21,'2020-12-13',11,1),(22,'2020-12-13',10,1);
/*!40000 ALTER TABLE `formazione` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gioca`
--

DROP TABLE IF EXISTS `gioca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gioca` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero_gol` int(11) DEFAULT NULL,
  `voto` float DEFAULT NULL,
  `id_giocatore` int(11) DEFAULT NULL,
  `id_giornata` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gioca`
--

LOCK TABLES `gioca` WRITE;
/*!40000 ALTER TABLE `gioca` DISABLE KEYS */;
INSERT INTO `gioca` VALUES (1,1,5,1,1),(2,3,7,1,2),(3,0,2,2,1),(4,1,3,2,2);
/*!40000 ALTER TABLE `gioca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `giocatore`
--

DROP TABLE IF EXISTS `giocatore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giocatore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `cognome` varchar(45) DEFAULT NULL,
  `ruolo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `giocatore`
--

LOCK TABLES `giocatore` WRITE;
/*!40000 ALTER TABLE `giocatore` DISABLE KEYS */;
INSERT INTO `giocatore` VALUES (1,'Alessandro','Del Pero','attaccante'),(2,'Christian','Vero','attaccante'),(3,'Mirco','Otte','attaccante'),(4,'Ales','Vet','attaccante'),(5,'Andrè','Teto','attaccante'),(6,'Marco','Aleb','attaccante'),(7,'Pixar','Dif','centrocampista'),(8,'Fede','Sgrava','centrocampista'),(9,'Karan','Singh','centrocampista'),(10,'Yohan','Dessi','centrocampista'),(11,'Ste','Usy','centrocampista'),(12,'Chris','Urici','centrocampista'),(13,'Lau','Vas','difensore'),(14,'Michi','Pote','difensore'),(15,'Jaco','Zucca','difensore'),(16,'Jonel','Malu','difensore'),(17,'Luca','Rosi','difensore'),(18,'Matteo','Shermy','difensore'),(19,'Matti','Ciollu','portiere'),(20,'Peter','Manìu','portiere'),(21,'Bobi','Ciorny','attaccante'),(22,'Simo','Sciüber','attaccante'),(23,'Alby','Espen','attaccante'),(24,'Nezi','Alimeta','attaccante'),(25,'Barabba','Maie','attaccante');
/*!40000 ALTER TABLE `giocatore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `giornata`
--

DROP TABLE IF EXISTS `giornata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giornata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `giornata`
--

LOCK TABLES `giornata` WRITE;
/*!40000 ALTER TABLE `giornata` DISABLE KEYS */;
/*!40000 ALTER TABLE `giornata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lettore`
--

DROP TABLE IF EXISTS `lettore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lettore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome_utente` varchar(45) DEFAULT NULL,
  `data_registrazione` date DEFAULT NULL,
  `portafoglio` float DEFAULT NULL,
  `punteggio` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lettore`
--

LOCK TABLES `lettore` WRITE;
/*!40000 ALTER TABLE `lettore` DISABLE KEYS */;
INSERT INTO `lettore` VALUES (1,'ALES_VET','2020-12-05',100,200),(2,'APPLE_USER','2020-12-04',100,100);
/*!40000 ALTER TABLE `lettore` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-17 21:58:40
