CREATE DATABASE  IF NOT EXISTS `db_bienesraices_crud` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_bienesraices_crud`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: db_bienesraices_crud
-- ------------------------------------------------------
-- Server version	9.2.0

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
-- Table structure for table `tb_propiedades`
--

DROP TABLE IF EXISTS `tb_propiedades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_propiedades` (
  `fcod_propiedades` varchar(6) NOT NULL DEFAULT '0',
  `ftitulo` varchar(45) NOT NULL DEFAULT '0',
  `fprecio` decimal(10,2) NOT NULL DEFAULT '0.00',
  `fnombre_imagen` varchar(150) NOT NULL DEFAULT '0',
  `fruta_imagen` varchar(200) NOT NULL DEFAULT '0',
  `fdescripcion` varchar(200) NOT NULL DEFAULT '0',
  `fhabitaciones` int NOT NULL DEFAULT '0',
  `fwc` int NOT NULL,
  `festacionamiento` int NOT NULL DEFAULT '0',
  `fcreacion` varchar(10) NOT NULL DEFAULT '0',
  `tb_vendedores_fcod_vend` varchar(4) NOT NULL,
  `fnom_original_imagen` varchar(150) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fcod_propiedades`),
  KEY `fk_tb_propiedades_tb_vendedores_idx` (`tb_vendedores_fcod_vend`),
  CONSTRAINT `fk_tb_propiedades_tb_vendedores` FOREIGN KEY (`tb_vendedores_fcod_vend`) REFERENCES `tb_vendedores` (`fcod_vend`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_propiedades`
--

LOCK TABLES `tb_propiedades` WRITE;
/*!40000 ALTER TABLE `tb_propiedades` DISABLE KEYS */;
INSERT INTO `tb_propiedades` VALUES ('000001','nueva propiedad en las lomas',1300000.00,'000001.','C:/xampp/htdocs/Desa_Web_TS2025/Cusro_Udemy/bienesRaicesPHP_inicio/new_imagenes/000001.','bella casa en las lomas',3,4,6,'2025-04-04','0001','000001.jpg');
/*!40000 ALTER TABLE `tb_propiedades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_usuario`
--

DROP TABLE IF EXISTS `tb_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_usuario` (
  `fcod_usuario` int NOT NULL DEFAULT '0',
  `fnombre_usuario` varchar(45) NOT NULL DEFAULT '0',
  `femail` varchar(200) NOT NULL DEFAULT '0',
  `fclave` varchar(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fcod_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_usuario`
--

LOCK TABLES `tb_usuario` WRITE;
/*!40000 ALTER TABLE `tb_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_vendedores`
--

DROP TABLE IF EXISTS `tb_vendedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_vendedores` (
  `fcod_vend` varchar(4) NOT NULL DEFAULT '0',
  `fnombre_vend` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `fapellido_vend` varchar(45) NOT NULL DEFAULT '0',
  `ftelefono` varchar(15) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fcod_vend`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_vendedores`
--

LOCK TABLES `tb_vendedores` WRITE;
/*!40000 ALTER TABLE `tb_vendedores` DISABLE KEYS */;
INSERT INTO `tb_vendedores` VALUES ('0001','ricardo','perez','6688779925'),('0002','rosa urania','trujillo victorio','7855436654');
/*!40000 ALTER TABLE `tb_vendedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'db_bienesraices_crud'
--

--
-- Dumping routines for database 'db_bienesraices_crud'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-04 18:26:53
