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
-- Table structure for table `notas`
--

DROP TABLE IF EXISTS `notas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notas` (
  `IDNotas` int NOT NULL,
  `IDUsuario` int NOT NULL,
  `Titulo` varchar(45) NOT NULL,
  `Fecha_creacion` datetime NOT NULL,
  `Fecha_ult_modificacion` datetime NOT NULL,
  `Descripcion` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`IDNotas`),
  UNIQUE KEY `IDNotas_UNIQUE` (`IDNotas`),
  KEY `IDUsuario_idx` (`IDUsuario`),
  CONSTRAINT `IDUsuario` FOREIGN KEY (`IDUsuario`) REFERENCES `usuarios` (`IDUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas`
--

LOCK TABLES `notas` WRITE;
/*!40000 ALTER TABLE `notas` DISABLE KEYS */;
INSERT INTO `notas` VALUES (1,3,'Historia innecesaria: La familia puccio','2021-09-14 00:00:00','2021-09-14 00:00:00','asdasdajdkvndfjkvndfb'),(2,3,'Historia innecesaria: el gordo valor','2021-09-14 00:00:00','2021-09-14 00:00:00','asdasdajdkvndfjkvndfb'),(3,2,'Vacaciones','2021-09-14 00:00:00','2021-09-14 00:00:00','MAIAMEEEEEEEEEEEEEEEE'),(4,5,'Campaña electoral 2021','2021-09-14 00:00:00','2021-09-14 00:00:00',''),(5,4,'IT','2021-09-14 00:00:00','2021-09-14 00:00:00','Che carla, entrá que hace frio'),(6,1,'El secreto de la vida eterna','2021-09-14 00:00:00','2021-09-14 00:00:00','Tener plata'),(7,10,'Guion: El hombre que araña','2021-09-14 00:00:00','2021-09-14 00:00:00','Peter parker ..'),(8,8,'La mejor frase del rock nacional','2021-09-14 00:00:00','2021-09-14 00:00:00','ñam fri fru fali fru'),(9,7,'Informacion secreta sobre Cristina','2021-09-14 00:00:00','2021-09-14 00:00:00',''),(10,9,'Programa showmatch','2021-09-14 00:00:00','2021-09-14 00:00:00','lo mismo que todos los años');
/*!40000 ALTER TABLE `notas` ENABLE KEYS */;
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
