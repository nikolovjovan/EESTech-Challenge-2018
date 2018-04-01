-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: eestech-challenge-2018.mysql.database.azure.com    Database: pdb
-- ------------------------------------------------------
-- Server version	5.6.26.0

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
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genres` (
  `GenreID` int(11) NOT NULL AUTO_INCREMENT,
  `ReleaseID` int(11) NOT NULL,
  `Name` varchar(127) NOT NULL,
  PRIMARY KEY (`GenreID`),
  KEY `ReleaseID` (`ReleaseID`),
  CONSTRAINT `genres_ibfk_1` FOREIGN KEY (`ReleaseID`) REFERENCES `releases` (`ReleaseID`)
) ENGINE=InnoDB AUTO_INCREMENT=568 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1,1,'Folk, World, &amp; Country'),(2,1,'Folk, World, &amp; Country'),(3,3,'Folk, World, &amp; Country'),(4,2,'Rock'),(5,2,'Folk, World, &amp; Country'),(6,4,'Folk, World, &amp; Country'),(7,5,'Rock'),(8,5,'Pop'),(9,7,'Electronic'),(10,8,'Electronic'),(11,9,'Pop'),(12,9,'Folk, World, &amp; Country'),(13,10,'Pop'),(14,11,'Electronic'),(15,12,'Electronic'),(16,13,'Rock'),(17,14,'Hip Hop'),(18,6,'Folk, World, &amp; Country'),(19,16,'Folk, World, &amp; Country'),(20,15,'Pop'),(21,18,'Electronic'),(22,17,'Folk, World, &amp; Country'),(23,19,'Folk, World, &amp; Country'),(25,21,'Electronic'),(26,20,'Rock'),(27,22,'Electronic'),(28,24,'Electronic'),(29,24,'Rock'),(30,24,'Blues'),(31,23,'Folk, World, &amp; Country'),(32,25,'Electronic'),(33,27,'Folk, World, &amp; Country'),(34,26,'Folk, World, &amp; Country'),(35,28,'Electronic'),(36,30,'Rock'),(37,31,'Rock'),(38,29,'Folk, World, &amp; Country'),(39,32,'Rock'),(40,34,'Jazz'),(41,34,'Funk / Soul'),(42,33,'Folk, World, &amp; Country'),(43,35,'Electronic'),(44,35,'Jazz'),(45,35,'Funk / Soul'),(46,36,'Folk, World, &amp; Country'),(47,37,'Electronic'),(48,37,'Jazz'),(49,37,'Funk / Soul'),(51,39,'Electronic'),(52,38,'Electronic'),(53,38,'Jazz'),(54,38,'Funk / Soul'),(55,41,'Electronic'),(56,41,'Jazz'),(57,40,'Folk, World, &amp; Country'),(58,41,'Funk / Soul'),(60,42,'Latin'),(61,42,'Classical'),(62,43,'Folk, World, &amp; Country'),(63,44,'Non-Music'),(64,45,'Electronic'),(65,46,'Folk, World, &amp; Country'),(66,48,'Electronic'),(67,49,'Pop'),(68,50,'Pop'),(69,51,'Pop'),(70,52,'Electronic'),(71,53,'Electronic'),(72,54,'Electronic'),(73,55,'Electronic'),(74,56,'Electronic'),(75,47,'Folk, World, &amp; Country'),(76,57,'Rock'),(77,57,'Pop'),(78,58,'Rock'),(79,59,'Rock'),(80,58,'Blues'),(81,58,'Pop'),(82,60,'Electronic'),(83,60,'Hip Hop'),(84,62,'Electronic'),(85,62,'Hip Hop'),(86,61,'Folk, World, &amp; Country'),(87,63,'Electronic'),(88,64,'Folk, World, &amp; Country'),(89,65,'Rock'),(90,66,'Folk, World, &amp; Country'),(91,67,'Rock'),(92,67,'Pop'),(93,68,'Folk, World, &amp; Country'),(94,70,'Folk, World, &amp; Country'),(95,69,'Rock'),(96,69,'Pop'),(97,72,'Rock'),(98,71,'Rock'),(99,73,'Hip Hop'),(100,75,'Hip Hop'),(101,74,'Folk, World, &amp; Country'),(102,77,'Electronic'),(103,76,'Electronic'),(104,78,'Electronic'),(105,79,'Electronic'),(106,80,'Electronic'),(107,81,'Hip Hop'),(108,82,'Electronic'),(109,83,'Electronic'),(110,84,'Electronic'),(115,85,'Rock'),(116,86,'Electronic'),(117,87,'Pop'),(118,89,'Electronic'),(119,90,'Electronic'),(120,91,'Electronic'),(121,92,'Electronic'),(122,93,'Pop'),(123,88,'Pop'),(124,94,'Pop'),(125,95,'Folk, World, &amp; Country'),(126,97,'Electronic'),(127,96,'Rock'),(128,96,'Pop'),(129,99,'Electronic'),(130,98,'Electronic'),(131,98,'Rock'),(132,98,'Pop'),(133,98,'Folk, World, &amp; Country'),(135,100,'Folk, World, &amp; Country'),(136,101,'Rock'),(137,102,'Pop'),(138,102,'Folk, World, &amp; Country'),(139,103,'Rock'),(140,103,'Pop'),(141,105,'Rock'),(142,105,'Pop'),(143,105,'Folk, World, &amp; Country'),(144,104,'Folk, World, &amp; Country'),(145,106,'Pop'),(146,108,'Pop'),(147,108,'Folk, World, &amp; Country'),(148,107,'Folk, World, &amp; Country'),(149,110,'Electronic'),(150,111,'Hip Hop'),(151,112,'Electronic'),(152,112,'Funk / Soul'),(153,113,'Pop'),(154,109,'Electronic'),(155,109,'Rock'),(156,114,'Rock'),(157,109,'Pop'),(158,109,'Brass &amp; Military'),(159,109,'Folk, World, &amp; Country'),(160,115,'Electronic'),(161,117,'Pop'),(162,116,'Electronic'),(163,116,'Rock'),(164,116,'Pop'),(165,116,'Brass &amp; Military'),(166,116,'Folk, World, &amp; Country'),(167,119,'Folk, World, &amp; Country'),(168,120,'Pop'),(169,120,'Brass &amp; Military'),(170,121,'Pop'),(171,121,'Brass &amp; Military'),(172,118,'Pop'),(173,122,'Pop'),(174,123,'Folk, World, &amp; Country'),(175,125,'Pop'),(176,124,'Folk, World, &amp; Country'),(179,127,'Electronic'),(182,128,'Folk, World, &amp; Country'),(183,126,'Pop'),(184,130,'Folk, World, &amp; Country'),(185,129,'Folk, World, &amp; Country'),(187,131,'Pop'),(188,133,'Rock'),(189,134,'Pop'),(190,132,'Folk, World, &amp; Country'),(191,135,'Rock'),(192,136,'Folk, World, &amp; Country'),(193,138,'Rock'),(194,137,'Rock'),(195,137,'Folk, World, &amp; Country'),(196,140,'Electronic'),(197,141,'Rock'),(198,142,'Electronic'),(199,139,'Folk, World, &amp; Country'),(201,143,'Jazz'),(202,143,'Folk, World, &amp; Country'),(203,144,'Rock'),(204,144,'Pop'),(205,145,'Latin'),(206,145,'Classical'),(209,146,'Electronic'),(210,147,'Pop'),(211,148,'Electronic'),(212,149,'Electronic'),(213,150,'Pop'),(215,151,'Electronic'),(216,151,'Pop'),(217,152,'Electronic'),(218,153,'Electronic'),(219,153,'Pop'),(220,155,'Electronic'),(221,154,'Pop'),(222,156,'Electronic'),(223,158,'Electronic'),(224,159,'Electronic'),(225,157,'Folk, World, &amp; Country'),(226,160,'Electronic'),(227,162,'Electronic'),(228,161,'Folk, World, &amp; Country'),(229,164,'Folk, World, &amp; Country'),(230,163,'Electronic'),(231,165,'Folk, World, &amp; Country'),(232,167,'Pop'),(233,167,'Folk, World, &amp; Country'),(234,168,'Pop'),(235,168,'Folk, World, &amp; Country'),(236,166,'Electronic'),(237,166,'Hip Hop'),(238,169,'Folk, World, &amp; Country'),(239,170,'Pop'),(240,170,'Folk, World, &amp; Country'),(241,171,'Electronic'),(242,171,'Rock'),(243,172,'Rock'),(244,173,'Electronic'),(245,174,'Rock'),(247,176,'Electronic'),(248,175,'Electronic'),(249,177,'Pop'),(250,177,'Folk, World, &amp; Country'),(253,178,'Rock'),(254,179,'Electronic'),(255,180,'Pop'),(256,181,'Electronic'),(257,182,'Rock'),(258,183,'Electronic'),(259,185,'Electronic'),(260,184,'Electronic'),(261,186,'Electronic'),(262,187,'Electronic'),(263,189,'Electronic'),(264,188,'Folk, World, &amp; Country'),(265,190,'Pop'),(266,190,'Folk, World, &amp; Country'),(267,192,'Pop'),(268,191,'Rock'),(269,193,'Jazz'),(270,193,'Pop'),(271,194,'Rock'),(272,196,'Electronic'),(273,197,'Electronic'),(274,195,'Pop'),(275,199,'Pop'),(276,198,'Electronic'),(277,200,'Rock'),(278,200,'Pop'),(279,201,'Electronic'),(280,203,'Electronic'),(281,202,'Pop'),(282,205,'Rock'),(283,205,'Pop'),(284,205,'Folk, World, &amp; Country'),(285,204,'Electronic'),(286,206,'Electronic'),(287,207,'Electronic'),(288,207,'Pop'),(289,208,'Electronic'),(290,209,'Rock'),(291,210,'Electronic'),(292,211,'Rock'),(293,212,'Rock'),(294,213,'Pop'),(296,214,'Latin'),(297,214,'Pop'),(298,215,'Folk, World, &amp; Country'),(299,216,'Folk, World, &amp; Country'),(301,217,'Folk, World, &amp; Country'),(302,218,'Folk, World, &amp; Country'),(304,219,'Pop'),(305,219,'Folk, World, &amp; Country'),(306,220,'Folk, World, &amp; Country'),(307,221,'Folk, World, &amp; Country'),(308,222,'Pop'),(309,223,'Rock'),(310,223,'Pop'),(311,224,'Rock'),(312,225,'Folk, World, &amp; Country'),(313,226,'Electronic'),(314,227,'Electronic'),(315,228,'Electronic'),(317,229,'Electronic'),(318,230,'Electronic'),(319,231,'Electronic'),(320,232,'Folk, World, &amp; Country'),(321,233,'Electronic'),(322,233,'Rock'),(323,233,'Stage &amp; Screen'),(324,234,'Folk, World, &amp; Country'),(325,235,'Rock'),(326,236,'Folk, World, &amp; Country'),(327,237,'Electronic'),(328,238,'Electronic'),(329,239,'Folk, World, &amp; Country'),(330,240,'Folk, World, &amp; Country'),(331,241,'Folk, World, &amp; Country'),(332,242,'Folk, World, &amp; Country'),(333,243,'Folk, World, &amp; Country'),(334,244,'Electronic'),(335,244,'Reggae'),(336,244,'Pop'),(337,245,'Electronic'),(338,245,'Pop'),(339,246,'Electronic'),(340,247,'Electronic'),(341,248,'Electronic'),(342,249,'Folk, World, &amp; Country'),(343,250,'Folk, World, &amp; Country'),(344,251,'Folk, World, &amp; Country'),(345,252,'Pop'),(346,252,'Folk, World, &amp; Country'),(347,253,'Folk, World, &amp; Country'),(348,254,'Hip Hop'),(349,254,'Rock'),(350,254,'Reggae'),(351,255,'Electronic'),(352,256,'Electronic'),(353,257,'Electronic'),(354,258,'Electronic'),(355,259,'Electronic'),(356,260,'Folk, World, &amp; Country'),(357,261,'Rock'),(358,262,'Folk, World, &amp; Country'),(359,263,'Electronic'),(360,264,'Electronic'),(361,265,'Electronic'),(362,266,'Rock'),(363,266,'Pop'),(364,267,'Jazz'),(365,267,'Folk, World, &amp; Country'),(366,268,'Folk, World, &amp; Country'),(367,269,'Folk, World, &amp; Country'),(368,270,'Electronic'),(369,271,'Electronic'),(370,272,'Rock'),(371,273,'Electronic'),(372,274,'Electronic'),(373,275,'Electronic'),(374,276,'Pop'),(376,277,'Electronic'),(377,278,'Electronic'),(378,279,'Electronic'),(379,280,'Latin'),(380,281,'Electronic'),(381,282,'Electronic'),(382,282,'Pop'),(383,283,'Electronic'),(384,284,'Electronic'),(385,285,'Pop'),(386,285,'Folk, World, &amp; Country'),(387,286,'Rock'),(388,287,'Hip Hop'),(389,287,'Pop'),(390,288,'Electronic'),(391,288,'Hip Hop'),(392,288,'Pop'),(393,289,'Reggae'),(394,290,'Folk, World, &amp; Country'),(396,291,'Rock'),(397,291,'Blues'),(398,291,'Pop'),(399,291,'Folk, World, &amp; Country'),(400,292,'Folk, World, &amp; Country'),(401,293,'Hip Hop'),(402,294,'Rock'),(403,295,'Folk, World, &amp; Country'),(404,296,'Folk, World, &amp; Country'),(405,297,'Electronic'),(406,298,'Folk, World, &amp; Country'),(407,299,'Hip Hop'),(408,300,'Electronic'),(409,301,'Folk, World, &amp; Country'),(410,302,'Pop'),(412,303,'Electronic'),(413,304,'Electronic'),(414,304,'Rock'),(415,305,'Rock'),(416,306,'Folk, World, &amp; Country'),(417,307,'Rock'),(418,308,'Folk, World, &amp; Country'),(420,309,'Folk, World, &amp; Country'),(421,310,'Folk, World, &amp; Country'),(422,311,'Folk, World, &amp; Country'),(423,312,'Electronic'),(424,313,'Rock'),(426,314,'Pop'),(427,315,'Electronic'),(428,316,'Rock'),(429,316,'Latin'),(430,316,'Funk / Soul'),(431,316,'Blues'),(432,316,'Pop'),(433,316,'Folk, World, &amp; Country'),(434,317,'Rock'),(435,317,'Pop'),(436,318,'Rock'),(437,318,'Pop'),(438,319,'Pop'),(439,320,'Folk, World, &amp; Country'),(440,321,'Folk, World, &amp; Country'),(441,322,'Pop'),(442,323,'Rock'),(443,323,'Pop'),(444,324,'Rock'),(445,324,'Pop'),(446,325,'Rock'),(447,325,'Pop'),(448,325,'Folk, World, &amp; Country'),(449,326,'Rock'),(450,326,'Pop'),(451,327,'Folk, World, &amp; Country'),(452,328,'Electronic'),(453,328,'Folk, World, &amp; Country'),(457,329,'Pop'),(458,329,'Folk, World, &amp; Country'),(459,330,'Folk, World, &amp; Country'),(460,331,'Rock'),(461,332,'Rock'),(462,333,'Folk, World, &amp; Country'),(467,334,'Rock'),(468,334,'Pop'),(469,335,'Rock'),(470,335,'Pop'),(471,336,'Rock'),(472,337,'Folk, World, &amp; Country'),(473,338,'Rock'),(474,339,'Electronic'),(475,340,'Electronic'),(476,341,'Electronic'),(477,342,'Electronic'),(478,343,'Electronic'),(480,344,'Rock'),(481,345,'Folk, World, &amp; Country'),(482,346,'Folk, World, &amp; Country'),(483,347,'Folk, World, &amp; Country'),(487,348,'Rock'),(488,348,'Pop'),(489,349,'Electronic'),(490,349,'Folk, World, &amp; Country'),(491,350,'Electronic'),(492,350,'Folk, World, &amp; Country'),(493,351,'Electronic'),(494,351,'Folk, World, &amp; Country'),(495,352,'Rock'),(496,352,'Pop'),(497,353,'Folk, World, &amp; Country'),(498,354,'Electronic'),(499,355,'Folk, World, &amp; Country'),(500,356,'Folk, World, &amp; Country'),(501,357,'Jazz'),(502,358,'Jazz'),(503,359,'Folk, World, &amp; Country'),(504,360,'Jazz'),(505,361,'Pop'),(506,362,'Electronic'),(507,363,'Electronic'),(508,364,'Folk, World, &amp; Country'),(509,365,'Folk, World, &amp; Country'),(510,366,'Electronic'),(511,367,'Electronic'),(512,368,'Electronic'),(513,369,'Folk, World, &amp; Country'),(514,370,'Electronic'),(515,371,'Electronic'),(516,372,'Electronic'),(517,373,'Electronic'),(518,374,'Folk, World, &amp; Country'),(519,375,'Folk, World, &amp; Country'),(520,376,'Pop'),(521,376,'Folk, World, &amp; Country'),(522,377,'Folk, World, &amp; Country'),(525,378,'Electronic'),(526,379,'Pop'),(527,379,'Folk, World, &amp; Country'),(528,380,'Electronic'),(529,381,'Electronic'),(530,382,'Pop'),(531,382,'Folk, World, &amp; Country'),(532,383,'Folk, World, &amp; Country'),(533,384,'Pop'),(534,385,'Electronic'),(535,386,'Electronic'),(536,387,'Electronic'),(537,387,'Rock'),(538,388,'Folk, World, &amp; Country'),(539,389,'Folk, World, &amp; Country'),(540,390,'Electronic'),(541,390,'Reggae'),(542,390,'Pop'),(543,391,'Electronic'),(544,392,'Electronic'),(546,393,'Electronic'),(547,394,'Electronic'),(549,395,'Electronic'),(550,395,'Hip Hop'),(551,395,'Jazz'),(552,396,'Electronic'),(553,397,'Folk, World, &amp; Country'),(554,398,'Folk, World, &amp; Country'),(555,399,'Folk, World, &amp; Country'),(557,400,'Electronic'),(558,401,'Pop'),(559,401,'Folk, World, &amp; Country'),(560,402,'Pop'),(561,403,'Electronic'),(562,403,'Non-Music'),(563,404,'Folk, World, &amp; Country'),(564,405,'Electronic'),(565,406,'Rock'),(566,406,'Pop'),(567,407,'Pop');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-01 10:24:12