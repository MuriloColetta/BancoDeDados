CREATE DATABASE  IF NOT EXISTS `oficina_consulta` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `oficina_consulta`;
-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: oficina_consulta
-- ------------------------------------------------------
-- Server version	8.0.44

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
-- Table structure for table `realiza`
--

DROP TABLE IF EXISTS `realiza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `realiza` (
  `id_realiza` int NOT NULL AUTO_INCREMENT,
  `id_mecanico` int DEFAULT NULL,
  `id_os` int DEFAULT NULL,
  `id_servico` int DEFAULT NULL,
  `id_peca` int DEFAULT NULL,
  `id_veiculo` int DEFAULT NULL,
  `quantidade_peca_usada` int DEFAULT '1',
  PRIMARY KEY (`id_realiza`),
  KEY `id_mecanico` (`id_mecanico`),
  KEY `id_os` (`id_os`),
  KEY `id_servico` (`id_servico`),
  KEY `id_peca` (`id_peca`),
  KEY `id_veiculo` (`id_veiculo`),
  CONSTRAINT `realiza_ibfk_1` FOREIGN KEY (`id_mecanico`) REFERENCES `mecanico` (`id_mecanico`),
  CONSTRAINT `realiza_ibfk_2` FOREIGN KEY (`id_os`) REFERENCES `os` (`id_os`),
  CONSTRAINT `realiza_ibfk_3` FOREIGN KEY (`id_servico`) REFERENCES `servico` (`id_servico`),
  CONSTRAINT `realiza_ibfk_4` FOREIGN KEY (`id_peca`) REFERENCES `peca` (`id_peca`),
  CONSTRAINT `realiza_ibfk_5` FOREIGN KEY (`id_veiculo`) REFERENCES `veiculo` (`id_veiculo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `realiza`
--

LOCK TABLES `realiza` WRITE;
/*!40000 ALTER TABLE `realiza` DISABLE KEYS */;
INSERT  IGNORE INTO `realiza` VALUES (1,1,1,1,1,1,1),(2,2,2,2,2,2,2),(3,3,3,3,3,3,1),(4,4,4,4,4,4,2),(5,5,5,5,5,5,1),(6,3,1,2,2,1,1),(7,1,2,3,3,2,1),(8,2,3,1,1,3,2),(9,4,5,4,4,5,1),(10,5,4,5,5,4,2);
/*!40000 ALTER TABLE `realiza` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-01 14:05:05
