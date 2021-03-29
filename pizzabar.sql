-- MariaDB dump 10.19  Distrib 10.4.18-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: pizzabar
-- ------------------------------------------------------
-- Server version	10.4.18-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `pfutar`
--

DROP TABLE IF EXISTS `pfutar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pfutar` (
  `fazon` int(1) NOT NULL AUTO_INCREMENT,
  `fnev` varchar(12) DEFAULT NULL,
  `jelszo` varchar(32) DEFAULT NULL,
  `ftel` int(6) DEFAULT NULL,
  PRIMARY KEY (`fazon`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pfutar`
--

LOCK TABLES `pfutar` WRITE;
/*!40000 ALTER TABLE `pfutar` DISABLE KEYS */;
INSERT INTO `pfutar` VALUES (1,'Hurrikán','81dc9bdb52d04dc20036dbd8313ed055',123456),(2,'Gyalogkakukk','81dc9bdb52d04dc20036dbd8313ed055',666666),(3,'Gömbvillám','81dc9bdb52d04dc20036dbd8313ed055',888888),(4,'Szélvész','81dc9bdb52d04dc20036dbd8313ed055',258369),(5,'Imperial','81dc9bdb52d04dc20036dbd8313ed055',987654);
/*!40000 ALTER TABLE `pfutar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ppizza`
--

DROP TABLE IF EXISTS `ppizza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ppizza` (
  `pazon` int(1) NOT NULL AUTO_INCREMENT,
  `pnev` varchar(14) DEFAULT NULL,
  `par` int(4) DEFAULT NULL,
  `pimages` varchar(24) DEFAULT NULL,
  `pleiras` varchar(114) DEFAULT NULL,
  PRIMARY KEY (`pazon`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ppizza`
--

LOCK TABLES `ppizza` WRITE;
/*!40000 ALTER TABLE `ppizza` DISABLE KEYS */;
INSERT INTO `ppizza` VALUES (1,'Capricciosa',900,'Pizza_Capricciosa.png','mozzarella sajt, pizzaszósz, sonka, gomba, kukorica'),(2,'Frutti di Mare',1100,'Pizza_Frutti di Mare.png','mozzarella sajt, pizzaszósz, vizes mozzarella sajt, paradicsom nyersen'),(3,'Hawaii',780,'Pizza_Hawaii.png','pizzaparadicsom, mozzarella, kukorica, sonka, ananász'),(4,'Vesuvio',890,'Pizza_Vesuvio.png','mozzarella sajt, pizzaszósz, bacon, sonka, paprikás szalámi, főtt tarja, gyroshús csirkecombból, pepperóni paprika'),(5,'Sorrento',990,'Pizza_Sorrento.png','mozzarella sajt, pizzaszósz, szeletelt olívabogyó, olasz sonka');
/*!40000 ALTER TABLE `ppizza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prendeles`
--

DROP TABLE IF EXISTS `prendeles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prendeles` (
  `razon` int(2) NOT NULL AUTO_INCREMENT,
  `vazon` int(1) DEFAULT NULL,
  `fazon` int(1) DEFAULT NULL,
  `datum` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`razon`),
  KEY `vazon` (`vazon`),
  KEY `fazon` (`fazon`),
  CONSTRAINT `prendeles_ibfk_1` FOREIGN KEY (`vazon`) REFERENCES `pvevo` (`vazon`),
  CONSTRAINT `prendeles_ibfk_2` FOREIGN KEY (`fazon`) REFERENCES `pfutar` (`fazon`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prendeles`
--

LOCK TABLES `prendeles` WRITE;
/*!40000 ALTER TABLE `prendeles` DISABLE KEYS */;
INSERT INTO `prendeles` VALUES (1,4,2,'2020-05-11 19:31:00'),(2,7,2,'2020-05-11 18:04:00'),(3,1,1,'2020-05-11 17:43:00'),(4,5,2,'2020-05-11 19:35:00'),(5,2,3,'2020-05-11 19:11:00'),(6,4,2,'2020-05-11 17:42:00'),(7,6,2,'2020-05-11 17:54:00'),(8,7,4,'2020-05-11 18:21:00'),(9,1,5,'2020-05-11 19:50:00'),(10,3,5,'2020-05-11 17:54:00'),(11,2,1,'2020-05-11 20:22:00'),(12,5,2,'2020-05-11 18:30:00'),(13,6,2,'2020-05-11 19:47:00'),(14,4,3,'2020-05-11 18:20:00'),(15,1,4,'2020-05-11 19:11:00'),(16,2,5,'2020-05-11 19:03:00'),(17,7,2,'2020-05-11 19:21:00'),(18,3,2,'2020-05-11 19:38:00'),(19,4,5,'2020-05-11 18:46:00'),(20,1,1,'2020-05-11 17:59:00'),(21,5,3,'2020-05-11 18:44:00'),(22,1,3,'2021-03-29 18:14:02'),(23,1,1,'2021-03-29 18:20:29'),(24,1,1,'2021-03-29 18:40:14'),(25,1,1,'2021-03-29 18:41:04'),(26,1,1,'2021-03-29 18:41:16'),(27,1,1,'2021-03-29 18:42:20'),(28,1,1,'2021-03-29 18:42:26'),(29,1,1,'2021-03-29 18:44:14'),(30,1,1,'2021-03-29 18:44:29'),(31,1,1,'2021-03-29 18:46:25');
/*!40000 ALTER TABLE `prendeles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ptetel`
--

DROP TABLE IF EXISTS `ptetel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ptetel` (
  `razon` int(2) DEFAULT NULL,
  `pazon` int(1) DEFAULT NULL,
  `db` int(1) DEFAULT NULL,
  KEY `razon` (`razon`),
  KEY `pazon` (`pazon`),
  CONSTRAINT `ptetel_ibfk_1` FOREIGN KEY (`razon`) REFERENCES `prendeles` (`razon`),
  CONSTRAINT `ptetel_ibfk_2` FOREIGN KEY (`pazon`) REFERENCES `ppizza` (`pazon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ptetel`
--

LOCK TABLES `ptetel` WRITE;
/*!40000 ALTER TABLE `ptetel` DISABLE KEYS */;
INSERT INTO `ptetel` VALUES (1,1,2),(1,4,3),(2,2,1),(3,1,2),(4,1,1),(4,4,1),(5,2,4),(6,1,1),(6,4,1),(6,5,1),(7,5,5),(8,4,3),(9,2,1),(10,1,1),(10,4,1),(11,1,1),(12,2,2),(12,4,2),(13,4,1),(13,5,1),(13,2,1),(14,2,2),(15,1,1),(16,2,1),(16,4,1),(16,5,1),(17,1,2),(17,2,3),(18,1,4),(18,5,1),(19,1,1),(19,2,1),(19,4,1),(19,5,1),(20,5,3),(21,2,2),(21,4,1),(22,2,1),(27,1,1),(27,2,1),(28,1,1),(28,2,1),(29,1,1),(29,2,1),(30,1,1),(30,2,1),(31,1,1),(31,2,1);
/*!40000 ALTER TABLE `ptetel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pvevo`
--

DROP TABLE IF EXISTS `pvevo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pvevo` (
  `vazon` int(1) NOT NULL AUTO_INCREMENT,
  `vnev` varchar(6) DEFAULT NULL,
  `jelszo` varchar(32) DEFAULT NULL,
  `vcim` varchar(27) DEFAULT NULL,
  PRIMARY KEY (`vazon`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pvevo`
--

LOCK TABLES `pvevo` WRITE;
/*!40000 ALTER TABLE `pvevo` DISABLE KEYS */;
INSERT INTO `pvevo` VALUES (1,'Hapci','81dc9bdb52d04dc20036dbd8313ed055','Kerek erdő, Nagy tisztás 1.'),(2,'Vidor','81dc9bdb52d04dc20036dbd8313ed055','Kerek erdő, Nagy tisztás 2.'),(3,'Tudor','81dc9bdb52d04dc20036dbd8313ed055','Kerek erdő, Nagy tisztás 3.'),(4,'Kuka','81dc9bdb52d04dc20036dbd8313ed055','Kerek erdő, Nagy tisztás 4.'),(5,'Szende','81dc9bdb52d04dc20036dbd8313ed055','Kerek erdő, Nagy tisztás 5.'),(6,'Szundi','81dc9bdb52d04dc20036dbd8313ed055','Kerek erdő, Nagy tisztás 6.'),(7,'Morgó','81dc9bdb52d04dc20036dbd8313ed055','Kerek erdő, Nagy tisztás 7.');
/*!40000 ALTER TABLE `pvevo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-29 19:11:27
