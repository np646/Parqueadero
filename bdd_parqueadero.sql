-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: bdd_parqueadero
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `tbl_auto`
--

DROP TABLE IF EXISTS `tbl_auto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_auto` (
  `aut_id` int NOT NULL AUTO_INCREMENT,
  `cli_id` int DEFAULT NULL,
  `aut_placa` varchar(45) DEFAULT NULL,
  `aut_estado` int DEFAULT NULL,
  PRIMARY KEY (`aut_id`),
  KEY `cli_id_idx` (`cli_id`),
  CONSTRAINT `cli_id` FOREIGN KEY (`cli_id`) REFERENCES `tbl_cliente` (`cli_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_auto`
--

LOCK TABLES `tbl_auto` WRITE;
/*!40000 ALTER TABLE `tbl_auto` DISABLE KEYS */;
INSERT INTO `tbl_auto` VALUES (1,1,'IBD123',1),(2,1,'PCJ456',1),(3,1,'ABC123',1),(4,1,'XYZ123',1),(5,1,'',1),(6,1,'',1),(7,1,'abc1234',1);
/*!40000 ALTER TABLE `tbl_auto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cliente`
--

DROP TABLE IF EXISTS `tbl_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_cliente` (
  `cli_id` int NOT NULL AUTO_INCREMENT,
  `cli_nombre` varchar(45) DEFAULT NULL,
  `cli_apellido` varchar(45) DEFAULT NULL,
  `cli_direccion` varchar(45) DEFAULT NULL,
  `cli_estado` int DEFAULT NULL,
  `cli_identificacion` varchar(45) DEFAULT NULL,
  `cli_usuario` varchar(45) DEFAULT NULL,
  `cli_contrasena` varchar(45) DEFAULT NULL,
  `cli_correo` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`cli_id`),
  UNIQUE KEY `cli_identificacion_UNIQUE` (`cli_identificacion`),
  UNIQUE KEY `cli_usuario_UNIQUE` (`cli_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cliente`
--

LOCK TABLES `tbl_cliente` WRITE;
/*!40000 ALTER TABLE `tbl_cliente` DISABLE KEYS */;
INSERT INTO `tbl_cliente` VALUES (1,'Lady','Gaga','EEUU',1,'100200300','ladygaga','1234','ladygaga@gmail.com');
/*!40000 ALTER TABLE `tbl_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_configuracion`
--

DROP TABLE IF EXISTS `tbl_configuracion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_configuracion` (
  `conf_id` int NOT NULL AUTO_INCREMENT,
  `iva_id` int DEFAULT NULL,
  `cos_id` int DEFAULT NULL,
  `dis_id` int DEFAULT NULL,
  `conf_fechaCamibio` date DEFAULT NULL,
  `conf_estado` int DEFAULT NULL,
  PRIMARY KEY (`conf_id`),
  KEY `iva_id_idx` (`iva_id`),
  KEY `cos_id_idx` (`cos_id`),
  KEY `dis_id_idx` (`dis_id`),
  CONSTRAINT `cos_id` FOREIGN KEY (`cos_id`) REFERENCES `tbl_costo` (`cos_id`),
  CONSTRAINT `dis_id` FOREIGN KEY (`dis_id`) REFERENCES `tbl_disponibilidad` (`dis_id`),
  CONSTRAINT `iva_id` FOREIGN KEY (`iva_id`) REFERENCES `tbl_iva` (`iva_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_configuracion`
--

LOCK TABLES `tbl_configuracion` WRITE;
/*!40000 ALTER TABLE `tbl_configuracion` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_configuracion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_costo`
--

DROP TABLE IF EXISTS `tbl_costo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_costo` (
  `cos_id` int NOT NULL AUTO_INCREMENT,
  `cos_valor` double DEFAULT NULL,
  `cos_estado` int DEFAULT NULL,
  `cos_fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`cos_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_costo`
--

LOCK TABLES `tbl_costo` WRITE;
/*!40000 ALTER TABLE `tbl_costo` DISABLE KEYS */;
INSERT INTO `tbl_costo` VALUES (16,0.18,1,'2022-07-20 20:31:51'),(17,0.5,1,'2022-07-24 21:06:47'),(18,1,1,'2022-07-24 21:44:54');
/*!40000 ALTER TABLE `tbl_costo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_detalle`
--

DROP TABLE IF EXISTS `tbl_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_detalle` (
  `det_id` int NOT NULL AUTO_INCREMENT,
  `iva_id` int DEFAULT NULL,
  `cos_id` int DEFAULT NULL,
  `det_cantidad` int DEFAULT NULL,
  `det_subtotal` double DEFAULT NULL,
  `det_total` double DEFAULT NULL,
  `det_estado` int DEFAULT NULL,
  PRIMARY KEY (`det_id`),
  KEY `ivadet_id_idx` (`iva_id`),
  KEY `cosdet_id_idx` (`cos_id`),
  CONSTRAINT `cosdet_id` FOREIGN KEY (`cos_id`) REFERENCES `tbl_costo` (`cos_id`),
  CONSTRAINT `ivadet_id` FOREIGN KEY (`iva_id`) REFERENCES `tbl_iva` (`iva_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_detalle`
--

LOCK TABLES `tbl_detalle` WRITE;
/*!40000 ALTER TABLE `tbl_detalle` DISABLE KEYS */;
INSERT INTO `tbl_detalle` VALUES (1,6,18,1,0.03333333333333333,0.04,1),(2,6,18,1,0.03333333333333333,0.04,1),(3,6,18,1,2.0166666666666666,2.26,1),(4,6,18,1,2.0166666666666666,2.26,1),(5,6,18,1,2.0166666666666666,2.26,1),(6,6,18,1,0.03333333333333333,0.04,1),(7,6,18,1,0.03333333333333333,0.04,1),(8,6,18,1,2.17,2.43,1),(9,6,18,1,2.17,2.43,1),(10,6,18,1,2.17,2.43,1),(11,7,18,1,1.02,1.17,1),(12,7,18,1,1.02,1.17,1),(13,7,18,1,1.02,1.17,1),(14,7,18,1,0,0,1),(15,7,18,1,0,0,1),(16,7,18,1,0,0,1),(17,7,18,1,0,0,1),(18,7,18,1,0,0,1);
/*!40000 ALTER TABLE `tbl_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_disponibilidad`
--

DROP TABLE IF EXISTS `tbl_disponibilidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_disponibilidad` (
  `dis_id` int NOT NULL AUTO_INCREMENT,
  `dis_cantidad` int DEFAULT NULL,
  `dis_estado` int DEFAULT NULL,
  `dis_fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`dis_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_disponibilidad`
--

LOCK TABLES `tbl_disponibilidad` WRITE;
/*!40000 ALTER TABLE `tbl_disponibilidad` DISABLE KEYS */;
INSERT INTO `tbl_disponibilidad` VALUES (2,15,1,'2022-07-20 12:10:36'),(3,20,1,'2022-07-20 12:11:41'),(4,97,1,'2022-07-20 20:31:55');
/*!40000 ALTER TABLE `tbl_disponibilidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_empleado`
--

DROP TABLE IF EXISTS `tbl_empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_empleado` (
  `emp_id` int NOT NULL AUTO_INCREMENT,
  `emp_nombre` varchar(45) DEFAULT NULL,
  `emp_apellido` varchar(45) DEFAULT NULL,
  `emp_estado` int DEFAULT NULL,
  `emp_usuario` varchar(45) DEFAULT NULL,
  `emp_contrasena` varchar(45) DEFAULT NULL,
  `emp_correo` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_empleado`
--

LOCK TABLES `tbl_empleado` WRITE;
/*!40000 ALTER TABLE `tbl_empleado` DISABLE KEYS */;
INSERT INTO `tbl_empleado` VALUES (1,'Nataly','Salazar',1,'npsalazar','7110eda4d09e062aa5e4a390b0a572ac0d2c0220','npsalazar@pucesi.edu.ec');
/*!40000 ALTER TABLE `tbl_empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_encabezado`
--

DROP TABLE IF EXISTS `tbl_encabezado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_encabezado` (
  `enc_id` int NOT NULL AUTO_INCREMENT,
  `aut_id` int DEFAULT NULL,
  `enc_estado` int DEFAULT NULL,
  `cli_id` int DEFAULT NULL,
  `enc_fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`enc_id`),
  KEY `autenc_id_idx` (`aut_id`),
  CONSTRAINT `autenc_id` FOREIGN KEY (`aut_id`) REFERENCES `tbl_auto` (`aut_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_encabezado`
--

LOCK TABLES `tbl_encabezado` WRITE;
/*!40000 ALTER TABLE `tbl_encabezado` DISABLE KEYS */;
INSERT INTO `tbl_encabezado` VALUES (1,1,1,1,'2022-07-26 21:13:28'),(2,1,1,1,'2022-07-26 21:13:36'),(3,2,1,1,'2022-07-26 18:21:44'),(4,2,1,1,'2022-07-26 18:21:52'),(5,2,1,1,'2022-07-26 18:22:20'),(6,1,1,1,'2022-07-26 18:22:39'),(7,1,1,1,'2022-07-26 18:22:42'),(8,3,1,1,'2022-07-26 21:22:26'),(9,3,1,1,'2022-07-26 21:22:29'),(10,3,1,1,'2022-07-26 21:23:01'),(11,4,1,1,'2022-07-26 23:11:42'),(12,4,1,1,'2022-07-26 23:11:46'),(13,4,1,1,'2022-07-26 23:12:04'),(14,7,1,1,'2023-08-04 09:48:31'),(15,7,1,1,'2023-08-04 09:48:35'),(16,7,1,1,'2023-08-04 09:48:40'),(17,7,1,1,'2023-08-04 09:48:46'),(18,7,1,1,'2023-08-04 09:48:59');
/*!40000 ALTER TABLE `tbl_encabezado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_factura`
--

DROP TABLE IF EXISTS `tbl_factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_factura` (
  `fac_id` int NOT NULL AUTO_INCREMENT,
  `enc_id` int DEFAULT NULL,
  `det_id` int DEFAULT NULL,
  `fac_estado` int DEFAULT NULL,
  PRIMARY KEY (`fac_id`),
  KEY `encfac_id` (`enc_id`),
  KEY `detfacid_idx` (`det_id`),
  CONSTRAINT `detfacid` FOREIGN KEY (`det_id`) REFERENCES `tbl_detalle` (`det_id`),
  CONSTRAINT `encfac_id` FOREIGN KEY (`enc_id`) REFERENCES `tbl_encabezado` (`enc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_factura`
--

LOCK TABLES `tbl_factura` WRITE;
/*!40000 ALTER TABLE `tbl_factura` DISABLE KEYS */;
INSERT INTO `tbl_factura` VALUES (1,NULL,NULL,1),(2,2,2,1),(3,3,3,1),(4,4,4,1),(5,5,5,1),(6,6,6,1),(7,7,7,1),(8,8,8,1),(9,9,9,1),(10,10,10,1),(11,11,11,1),(12,12,12,1),(13,13,13,1),(14,14,14,1),(15,15,15,1),(16,16,16,1),(17,17,17,1),(18,18,18,1);
/*!40000 ALTER TABLE `tbl_factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_historial`
--

DROP TABLE IF EXISTS `tbl_historial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_historial` (
  `his_id` int NOT NULL AUTO_INCREMENT,
  `his_placa` varchar(45) DEFAULT NULL,
  `his_fecEntrada` datetime DEFAULT NULL,
  `his_fecSalida` datetime DEFAULT NULL,
  `his_estado` int DEFAULT NULL,
  PRIMARY KEY (`his_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_historial`
--

LOCK TABLES `tbl_historial` WRITE;
/*!40000 ALTER TABLE `tbl_historial` DISABLE KEYS */;
INSERT INTO `tbl_historial` VALUES (1,'PCJ456','2022-07-26 16:20:31','2022-07-26 18:21:40',1),(2,'IBD123','2022-07-26 19:12:35','2022-07-26 21:13:25',1),(3,'ABC123','2022-07-26 19:11:35','2022-07-26 21:22:23',1),(4,'XYZ123','2022-07-26 22:10:22','2022-07-26 23:11:39',1),(5,'abc1234','2023-08-04 09:47:46','2023-08-04 09:48:21',1);
/*!40000 ALTER TABLE `tbl_historial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ingreso`
--

DROP TABLE IF EXISTS `tbl_ingreso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_ingreso` (
  `ing_id` int NOT NULL AUTO_INCREMENT,
  `aut_id` int DEFAULT NULL,
  `ing_fecEntrada` datetime DEFAULT NULL,
  `ing_fecSalida` datetime DEFAULT NULL,
  `ing_estado` int DEFAULT NULL,
  `ing_tiempoTotal` double DEFAULT NULL,
  PRIMARY KEY (`ing_id`),
  KEY `auting_id_idx` (`aut_id`),
  CONSTRAINT `auting_id` FOREIGN KEY (`aut_id`) REFERENCES `tbl_auto` (`aut_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ingreso`
--

LOCK TABLES `tbl_ingreso` WRITE;
/*!40000 ALTER TABLE `tbl_ingreso` DISABLE KEYS */;
INSERT INTO `tbl_ingreso` VALUES (5,5,'2023-08-04 09:47:33',NULL,1,NULL),(6,5,'2023-08-04 09:47:38',NULL,1,NULL);
/*!40000 ALTER TABLE `tbl_ingreso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_iva`
--

DROP TABLE IF EXISTS `tbl_iva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_iva` (
  `iva_id` int NOT NULL AUTO_INCREMENT,
  `iva_valor` double DEFAULT NULL,
  `iva_estado` int DEFAULT NULL,
  `iva_fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`iva_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_iva`
--

LOCK TABLES `tbl_iva` WRITE;
/*!40000 ALTER TABLE `tbl_iva` DISABLE KEYS */;
INSERT INTO `tbl_iva` VALUES (4,0.65,1,'2022-07-20 20:31:43'),(5,0.12,1,'2022-07-24 21:07:01'),(6,12,1,'2022-07-24 21:53:47'),(7,15,1,'2022-07-26 22:10:34');
/*!40000 ALTER TABLE `tbl_iva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_valorventatotal`
--

DROP TABLE IF EXISTS `tbl_valorventatotal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_valorventatotal` (
  `val_id` int NOT NULL AUTO_INCREMENT,
  `val_valor` double DEFAULT NULL,
  `val_estado` int DEFAULT NULL,
  PRIMARY KEY (`val_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_valorventatotal`
--

LOCK TABLES `tbl_valorventatotal` WRITE;
/*!40000 ALTER TABLE `tbl_valorventatotal` DISABLE KEYS */;
INSERT INTO `tbl_valorventatotal` VALUES (1,2.3,1),(2,2.3,1),(3,2.3,1),(4,2.3,1),(5,2.3,1),(6,2.3,1),(7,2.3,1),(8,2.3,1),(9,4.73,1),(10,4.73,1),(11,4.73,1),(12,4.73,1),(13,4.73,1),(14,4.73,1),(15,4.73,1),(16,4.73,1),(17,0,1),(18,0,1);
/*!40000 ALTER TABLE `tbl_valorventatotal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ventas`
--

DROP TABLE IF EXISTS `tbl_ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_ventas` (
  `ven_id` int NOT NULL AUTO_INCREMENT,
  `ven_valor` double DEFAULT NULL,
  `ven_fecha` datetime DEFAULT NULL,
  `ven_estado` int DEFAULT NULL,
  PRIMARY KEY (`ven_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ventas`
--

LOCK TABLES `tbl_ventas` WRITE;
/*!40000 ALTER TABLE `tbl_ventas` DISABLE KEYS */;
INSERT INTO `tbl_ventas` VALUES (1,2.26,'2022-07-26 18:22:20',1),(2,0.04,'2022-07-26 18:22:42',1),(3,2.43,'2022-07-26 21:23:01',1),(4,1.17,'2022-07-26 23:12:05',1),(5,0,'2023-08-04 09:48:59',1);
/*!40000 ALTER TABLE `tbl_ventas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-07  9:00:04
