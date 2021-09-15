-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: prueba
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
-- Table structure for table `nota_categoria`
--

DROP TABLE IF EXISTS `nota_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nota_categoria` (
  `IDNota_categoria` int NOT NULL,
  `IDCategoria` int NOT NULL,
  `IDNota` int NOT NULL,
  PRIMARY KEY (`IDNota_categoria`),
  UNIQUE KEY `IDNota_categoria_UNIQUE` (`IDNota_categoria`),
  KEY `IDCategoria_idx` (`IDCategoria`),
  KEY `IDNota_idx` (`IDNota`),
  CONSTRAINT `IDCategoria` FOREIGN KEY (`IDCategoria`) REFERENCES `categorias` (`IDCategoria`),
  CONSTRAINT `IDNota` FOREIGN KEY (`IDNota`) REFERENCES `notas` (`IDNotas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nota_categoria`
--

LOCK TABLES `nota_categoria` WRITE;
/*!40000 ALTER TABLE `nota_categoria` DISABLE KEYS */;
INSERT INTO `nota_categoria` VALUES (1,1,2),(2,2,2),(3,3,4),(4,4,8),(5,7,8),(6,5,8),(7,8,6),(8,9,4),(9,10,10),(10,6,2);
/*!40000 ALTER TABLE `nota_categoria` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-14 22:44:52
