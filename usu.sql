-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: comuniquemonos
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

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
-- Current Database: `comuniquemonos`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `comuniquemonos` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `comuniquemonos`;

--
-- Table structure for table `articulos`
--

DROP TABLE IF EXISTS `articulos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articulos` (
  `nro_articulos` varchar(20) NOT NULL,
  `precio_art` varchar(6) NOT NULL,
  `nom_art` varchar(20) NOT NULL,
  `descripcion` varchar(80) NOT NULL,
  `garantia` varchar(20) NOT NULL,
  `favoritos` varchar(20) NOT NULL,
  `cod_categoria` varchar(3) NOT NULL,
  `imagen_art` varchar(150) NOT NULL,
  PRIMARY KEY (`nro_articulos`,`cod_categoria`),
  KEY `cod_categoria` (`cod_categoria`),
  CONSTRAINT `articulos_ibfk_1` FOREIGN KEY (`cod_categoria`) REFERENCES `categoria` (`cod_categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulos`
--

LOCK TABLES `articulos` WRITE;
/*!40000 ALTER TABLE `articulos` DISABLE KEYS */;
INSERT INTO `articulos` VALUES ('00001','12200','Lápices Mirado','Lápices hexagonales mirado12 unidades Caja de 12 Lápices cuerpo triangular para ','0 meses','0','001','img\\lapizmirado.png'),('00002','25999','LAPICES FABER CASTEL','LAPICES GRADUADOS FABER CASTELL 9000 X 12S\r\nFABER CASTELL\r\n-PLU:616340','0 meses','0','001','https://exitocol.vtexassets.com/arquivos/ids/11330431-800-auto?v=637756158010900000&width=800&height=auto&aspect=true'),('00003','10990','Cuaderno cuadriculad','Cuaderno Cuadriculado 100 hojas Cosido CUADERNOS NORMA\r\nCUADERNOS NORMA\r\n-PLU:98','0 meses','0','002','https://cdn2.totalcode.net/creatodo/product-zoom/es/cuaderno-cosido-mediano-cuadriculado-norma-mandalorian-1-1.webp'),('00004','10990','Cuaderno rayado 100 ','Cuaderno Rayado 100 hojas Cosido CUADERNOS NORMA\r\nCUADERNOS NORMA\r\n-PLU:987748','0 meses','0','002','https://exitocol.vtexassets.com/arquivos/ids/12092149-800-auto?v=637826682068770000&width=800&height=auto&aspect=true'),('00005','6590','Cuaderno Stranger Cu','Cuaderno Stranger Cuadriculado 80 hojas Argollado tapa dura KEEPERMATE\r\nKEEPERMA','0 meses','0','002','https://http2.mlstatic.com/D_NQ_NP_831276-MCO44515164090_012021-O.jpg'),('00006','6590','Cuaderno STREET RACE','Cuaderno STREET RACER Cuadriculado 100 hojas Cosido CUADERNOS NORMA\r\nCUADERNOS N','0 meses','0','002','https://http2.mlstatic.com/D_NQ_NP_726106-MCO43024205068_082020-O.jpg'),('00007','200000','Uniforme mujer ','Uniforme completo para dama 100%poliester\r\n','0 meses','0','003','https://m.media-amazon.com/images/I/51mNdPCnpmL._AC_UX679_.jpg'),('00008','125000','Uniforme diario','Uniforme hombre completo','0 meses','0','004',''),('00009','130000','Uniforme Fisica','Uniforme completo educación física','0 meses','0','005','https://uniformesurias.com/wp-content/uploads/2021/09/unforme-completo-de-educacion-fisica-kinder-mis-alegrias.jpg'),('00010','100000','Chaqueta institucion','Chaqueta institucional - Hombre - Mujer','0 meses','0','006',''),('00011','7490','TIJERAS FABER CASTEL','TIJERA MEJOR AGARRE FABER CASTELL TS852\r\n','0 meses','0','014','https://exitocol.vtexassets.com/arquivos/ids/11336694-800-auto?v=637756336762100000&width=800&height=auto&aspect=true'),('00012','3695','PEGANTE EN BARR ','PEGANTE EN BARR COLBON \r\n','0 meses','0','015','https://doricolor.com/219-home_default/SiPega-pegante-en-barra.jpg'),('00013','35900','Cartuchera Totto Mic','Cartuchera Totto Mickey 90 Años\r\nMaterial\r\nExterior: Poliester=100%, Exterior: P','0 meses','0','011','https://http2.mlstatic.com/D_NQ_NP_885098-MCO44679642800_012021-O.jpg'),('00014','69900','Bolso Manos Libres D','Bolso Manos Libres Delivery\r\nTOTTO\r\n-PLU:123612096\r\nGénero\r\nHombre\r\nPeso\r\n299 gr','0 meses','0','016','https://tottobo.vteximg.com.br/arquivos/ids/221241-1000-1000/MA02RTG001-21200-N01_1.jpg?v=637749728923230000'),('00015','2990','BORRADOR NATA ','BORRADOR NATA PZ20 BL 3 PELIKAN 6140204\r\nPELIKAN\r\n-PLU:951269\r\nReferencia\r\n61402','0 meses','0','012','https://tauro.com.co/wp-content/uploads/2020/07/12884.jpg');
/*!40000 ALTER TABLE `articulos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria` (
  `cod_categoria` varchar(3) NOT NULL,
  `nombre_categoria` varchar(20) NOT NULL,
  PRIMARY KEY (`cod_categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES ('001','Lapices'),('002','Cuadernos'),('003','uniforme mujer'),('004','uniforme hombre '),('005','Uniforme fisica'),('006','chaquetas'),('007','Carpetas'),('008','Bloc'),('009','Cartulinas'),('010','Lapiceros'),('011','cartucheras'),('012','Borradores'),('013','Sacapuntas'),('014','tigeras'),('015','Colbón'),('016','Bolsos');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversacion`
--

DROP TABLE IF EXISTS `conversacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conversacion` (
  `id_conversacion` int(4) NOT NULL,
  `creado` datetime NOT NULL,
  `fecha_finalizacion` datetime NOT NULL,
  PRIMARY KEY (`id_conversacion`),
  CONSTRAINT `conversacion_ibfk_1` FOREIGN KEY (`id_conversacion`) REFERENCES `mensaje` (`id_conversacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversacion`
--

LOCK TABLES `conversacion` WRITE;
/*!40000 ALTER TABLE `conversacion` DISABLE KEYS */;
INSERT INTO `conversacion` VALUES (1,'2022-05-31 23:03:52','2022-05-31 23:03:52'),(2,'2022-05-31 23:09:13','2022-05-31 23:09:13'),(3,'2022-05-31 23:08:58','2022-05-31 23:08:58'),(4,'2022-05-31 23:11:00','2022-05-31 23:11:00'),(5,'2022-05-31 23:11:00','2022-05-31 23:11:00');
/*!40000 ALTER TABLE `conversacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_compra`
--

DROP TABLE IF EXISTS `detalle_compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_compra` (
  `nro_compra` int(10) NOT NULL,
  `nro_articulos` varchar(20) NOT NULL,
  `cantidad` int(5) NOT NULL,
  `precio_historico` varchar(10) NOT NULL,
  PRIMARY KEY (`nro_compra`,`nro_articulos`),
  KEY `nro_articulos` (`nro_articulos`),
  CONSTRAINT `detalle_compra_ibfk_1` FOREIGN KEY (`nro_articulos`) REFERENCES `articulos` (`nro_articulos`),
  CONSTRAINT `detalle_compra_ibfk_2` FOREIGN KEY (`nro_compra`) REFERENCES `encabezado_compra` (`nro_compra`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_compra`
--

LOCK TABLES `detalle_compra` WRITE;
/*!40000 ALTER TABLE `detalle_compra` DISABLE KEYS */;
INSERT INTO `detalle_compra` VALUES (1,'00001',3,''),(2,'00002',2,''),(3,'00010',1,''),(4,'00008',5,''),(5,'00003',4,'');
/*!40000 ALTER TABLE `detalle_compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_ventas`
--

DROP TABLE IF EXISTS `detalle_ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_ventas` (
  `nro_venta` varchar(15) NOT NULL,
  `precio_historico` varchar(10) NOT NULL,
  `nro_art` varchar(20) NOT NULL,
  `cantidad` int(5) NOT NULL,
  PRIMARY KEY (`nro_venta`,`nro_art`),
  KEY `nro_art` (`nro_art`),
  CONSTRAINT `detalle_ventas_ibfk_1` FOREIGN KEY (`nro_art`) REFERENCES `articulos` (`nro_articulos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_ventas`
--

LOCK TABLES `detalle_ventas` WRITE;
/*!40000 ALTER TABLE `detalle_ventas` DISABLE KEYS */;
INSERT INTO `detalle_ventas` VALUES ('000000000000001','','00002',3),('000000000000002','','00009',2),('000000000000003','','00013',1),('000000000000004','','00007',5),('000000000000005','','00012',4);
/*!40000 ALTER TABLE `detalle_ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encabezado_compra`
--

DROP TABLE IF EXISTS `encabezado_compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encabezado_compra` (
  `nro_compra` int(10) NOT NULL,
  `proveedor` varchar(20) NOT NULL,
  `fecha` datetime NOT NULL,
  `direccion` varchar(150) NOT NULL,
  `contacto` varchar(20) NOT NULL,
  `telefono_contacto` varchar(50) NOT NULL,
  `observaciones` text NOT NULL,
  PRIMARY KEY (`nro_compra`,`proveedor`),
  KEY `proveedor` (`proveedor`),
  CONSTRAINT `encabezado_compra_ibfk_1` FOREIGN KEY (`proveedor`) REFERENCES `persona` (`id_persona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encabezado_compra`
--

LOCK TABLES `encabezado_compra` WRITE;
/*!40000 ALTER TABLE `encabezado_compra` DISABLE KEYS */;
INSERT INTO `encabezado_compra` VALUES (1,'10172229','2022-06-01 19:31:43','carrera 27 #47-46','Kevin Stif Ordoñez','3039874213',''),(2,'43928581','2022-06-01 19:31:43','carrera 27 #47-46','Maria azucena Gaviri','32069989502',''),(3,'1000414796','2022-06-01 19:31:43','carrera 27 #47-46','Daniel Pérez','3113397514',''),(4,'1020411375','2022-06-01 19:31:43','carrera 27 #47-46','Emmanuel Vargas','3152168065',''),(5,'1023626976','2022-06-01 19:31:43','carrera 27 #47-46','Juan Rios','3193866151','');
/*!40000 ALTER TABLE `encabezado_compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mensaje`
--

DROP TABLE IF EXISTS `mensaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mensaje` (
  `id_conversacion` int(4) NOT NULL,
  `id_mensaje` int(4) NOT NULL,
  `id_persona` varchar(20) NOT NULL,
  `creado` datetime NOT NULL,
  `texto` varchar(200) NOT NULL,
  PRIMARY KEY (`id_conversacion`,`id_mensaje`,`id_persona`),
  KEY `id_persona` (`id_persona`),
  CONSTRAINT `mensaje_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `persona` (`id_persona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensaje`
--

LOCK TABLES `mensaje` WRITE;
/*!40000 ALTER TABLE `mensaje` DISABLE KEYS */;
INSERT INTO `mensaje` VALUES (1,1,'43975340','2022-05-31 23:03:24','Hola mauro como estas? c:'),(1,2,'1033179315','2022-05-31 23:04:02','Hola vargas que cuentas pues parcero mucho camellito o que??'),(2,1,'10012280987','2022-05-31 23:04:02','Profe que tareas tenemos para mañana??'),(3,5,'10111243852','2022-05-31 23:05:22','Parce no te demores que quiero jugar ya cucho, saque el perro de una \r\n'),(3,5,'1033179315','2022-05-31 23:05:22','Kevin parce queres jugar un ratico fornite y hablar por discord??'),(4,6,'1033179315','2022-05-31 23:09:40','Pana llegue pues y deje de molestara tu hermanito \r\n'),(5,7,'43975340','2022-05-31 23:10:09','Estas clases de jaider son como medio aburriditas');
/*!40000 ALTER TABLE `mensaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagina`
--

DROP TABLE IF EXISTS `pagina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagina` (
  `id_pagina` varchar(4) NOT NULL,
  `nombre_pagina` varchar(50) NOT NULL,
  `url_pagina` varchar(150) NOT NULL,
  PRIMARY KEY (`id_pagina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagina`
--

LOCK TABLES `pagina` WRITE;
/*!40000 ALTER TABLE `pagina` DISABLE KEYS */;
INSERT INTO `pagina` VALUES ('0001','index','file:///C:/xampp/htdocs/Plantilla/Comuniquemonos/Progressus/index.html'),('0002','Nosotros','file:///C:/xampp/htdocs/Plantilla/Comuniquemonos/Progressus/about.html'),('0003','Tienda','file:///C:/xampp/htdocs/Plantilla/Comuniquemonos/Progressus/sidebar-right.html'),('0004','Chat','file:///C:/xampp/htdocs/Plantilla/Comuniquemonos/Progressus/Chat/Chat/index.html'),('0005','Contacto','file:///C:/xampp/htdocs/Plantilla/Comuniquemonos/Progressus/contact.html'),('0006','Registro','file:///C:/xampp/htdocs/Plantilla/Comuniquemonos/Progressus/signup.html'),('0007','Login','file:///C:/xampp/htdocs/Plantilla/Comuniquemonos/Progressus/signin.html');
/*!40000 ALTER TABLE `pagina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persona` (
  `id_persona` varchar(20) NOT NULL,
  `tipo_persona` varchar(2) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `tipo_documento` varchar(20) NOT NULL,
  `direccion` varchar(150) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `edad` int(3) NOT NULL,
  `password` varchar(12) NOT NULL,
  PRIMARY KEY (`id_persona`),
  KEY `tipo_persona` (`tipo_persona`),
  CONSTRAINT `persona_ibfk_1` FOREIGN KEY (`tipo_persona`) REFERENCES `tipo_persona` (`tipo_persona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES ('1000414796','01','Mauricio','Cedula','carrera 33 #41 - 21','31113391574','dmauriciop0@gmail.com',18,'hola'),('10012280987','02','Juan Pablo Quiros ','Cedula','Carrera 32c #51-83','3182521984','JuanpaQ2003@gmail.com',18,'cata'),('10111243852','04','Kevin andes restrepo lara ','Cedula extranjera ','Carrera 89 #500-98b','30587459852','XElferorzcoX@gmail.com',40,'gorillaz'),('10172229','04','Kevin Stfin Ordoñez','Tarjeta de identidad','Carrera 43b #98-02','3039874213','Kkevin02Ord@gmail.com',16,'jklñasd987'),('1020411375','02','Emmanuel Vargas Gaviria','Tarjeta identidad','Calle 47a #6 ab30','3152168065','emmanuel2022@gmail.com',17,'bbe'),('1021805450','01','Sara Sánchez Restrepo','Tarjeta de identidad','calle 48 #17-123','','sara245sanchez3@gmail.com',16,'2336'),('1023524175','04','Diego Alejandro Jaramillo','Tarjeta de identidad','Carrera 74c #33-47','3182307505','diego22.tomi@gmail.com',16,'DJaramiilo21'),('1023626976','02','Juan Diego Rios Tamayo','Tarjeta de identidad','carrera 47 N°57a-32','3193866151','juanx10rios@gmail.com',17,'123456'),('1025645857','01','Samuel Gutierrez Avila','Tarjeta identidad','calle 49 b#5-06','3012975266','avilasamuel01@gmail.com',16,'samuel_25'),('1027957844','04','Jaider Andres Moreno Palacio ','Tarjeta de identidad','Carrera 33 #54 - 3c','3107481955','jaiderandre21@gmail.com',17,'Jai123p'),('1033179315','02','Emanuel Calvo','Tarjeta identidad ','Carrera 10a #44-b164','3015420434','Emmacalvo@gmail.com',16,'fdsa1243'),('1088826577','01','mariana ospina angel','Tarjeta de identidad','cll 56 #21-37','3016843544','',16,'mariana2005'),('1128448412','01','Jonathan Alexander Londoño Ocampo','Cedula de ciudadania','Calle 47 A #6AB-30','3152168065','jonson2006@gmail.com',34,'1128448412'),('43606219','01','CATALINA ARIAS','CC','Sabaneta','30000000','cataarias@hotmail.com',20,'1239488710'),('43928581','01','Maria Azucena Gaviria Ramirez','Cedula de ciudadania','Calle 48A #7AB-30','32069989502','azuce0108.gavi@gmail.com',38,'Azuc12'),('43975340','03','Camila Orozco','Cedula','Carrera 88 #52c - 77','3012587412','Camiorozco@gmail.com',19,'holiiiiiiii');
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona_pagina`
--

DROP TABLE IF EXISTS `persona_pagina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persona_pagina` (
  `id_persona` varchar(20) NOT NULL,
  `id_pagina` varchar(4) NOT NULL,
  `privilegios` varchar(2) NOT NULL,
  PRIMARY KEY (`id_persona`,`id_pagina`),
  KEY `id_pagina` (`id_pagina`),
  CONSTRAINT `persona_pagina_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `persona` (`id_persona`),
  CONSTRAINT `persona_pagina_ibfk_2` FOREIGN KEY (`id_pagina`) REFERENCES `pagina` (`id_pagina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona_pagina`
--

LOCK TABLES `persona_pagina` WRITE;
/*!40000 ALTER TABLE `persona_pagina` DISABLE KEYS */;
INSERT INTO `persona_pagina` VALUES ('1000414796','0001','01');
/*!40000 ALTER TABLE `persona_pagina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_persona`
--

DROP TABLE IF EXISTS `tipo_persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_persona` (
  `tipo_persona` varchar(2) NOT NULL,
  `descripcion` varchar(20) NOT NULL,
  PRIMARY KEY (`tipo_persona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_persona`
--

LOCK TABLES `tipo_persona` WRITE;
/*!40000 ALTER TABLE `tipo_persona` DISABLE KEYS */;
INSERT INTO `tipo_persona` VALUES ('01','Administrador'),('02','Estudiante'),('03','Vendedor'),('04','Profesor');
/*!40000 ALTER TABLE `tipo_persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venta`
--

DROP TABLE IF EXISTS `venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `venta` (
  `id_persona` varchar(20) NOT NULL,
  `fecha` datetime NOT NULL,
  `nro_venta` varchar(15) NOT NULL,
  `contacto` varchar(20) NOT NULL,
  PRIMARY KEY (`id_persona`,`nro_venta`),
  CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `persona` (`id_persona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta`
--

LOCK TABLES `venta` WRITE;
/*!40000 ALTER TABLE `venta` DISABLE KEYS */;
INSERT INTO `venta` VALUES ('10111243852','2022-06-01 19:38:53','000000000000005','Kevin Andres'),('1023626976','2022-06-01 19:38:53','000000000000004','Juan Rios '),('1027957844','2022-06-01 19:38:53','000000000000002','Jaider Moreno'),('1088826577','2022-06-01 19:38:52','000000000000001','Mariana Ospina'),('43975340','2022-06-01 19:38:53','000000000000003','Camila Orozco');
/*!40000 ALTER TABLE `venta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-16 21:04:35
