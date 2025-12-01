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
-- Table structure for table `mecanico`
--

DROP TABLE IF EXISTS `mecanico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mecanico` (
  `id_mecanico` int NOT NULL AUTO_INCREMENT,
  `nome_mecanico` varchar(255) DEFAULT NULL,
  `cpf_mecanico` varchar(14) DEFAULT NULL,
  `salario` decimal(8,2) DEFAULT NULL,
  `especialidade` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id_mecanico`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mecanico`
--

LOCK TABLES `mecanico` WRITE;
/*!40000 ALTER TABLE `mecanico` DISABLE KEYS */;
INSERT  IGNORE INTO `mecanico` VALUES (1,'Pedro Almeida','111.111.111-11',3500.00,'Injeção Eletrônica'),(2,'Rafael Lima','222.222.222-22',3800.00,'Motor'),(3,'Diego Santos','333.333.333-33',4200.00,'Freios'),(4,'Bruno Costa','444.444.444-44',4000.00,'Suspensão'),(5,'Marcos Ribeiro','555.555.555-55',4500.00,'Elétrica');
/*!40000 ALTER TABLE `mecanico` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-01 14:05:04
