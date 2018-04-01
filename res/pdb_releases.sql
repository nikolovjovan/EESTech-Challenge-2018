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
-- Table structure for table `releases`
--

DROP TABLE IF EXISTS `releases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `releases` (
  `ReleaseID` int(11) NOT NULL AUTO_INCREMENT,
  `Format` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Country` varchar(127) DEFAULT NULL,
  `Released` int(11) DEFAULT NULL,
  PRIMARY KEY (`ReleaseID`)
) ENGINE=InnoDB AUTO_INCREMENT=409 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `releases`
--

LOCK TABLES `releases` WRITE;
/*!40000 ALTER TABLE `releases` DISABLE KEYS */;
INSERT INTO `releases` VALUES (1,'CD','Звуци Балкана','Bosnia & Herzegovina',2008),(2,'CD','Ајде Јано Кућу Да Не Дамо','Montenegro',2007),(3,'CD','Свјетска Мода','Bosnia & Herzegovina',2011),(4,'DVD','Завичају Мили Рају Коктел Традиционалних Пјесама','Bosnia & Herzegovina',2007),(5,'CD','17 Mega Hitova Vol. 5','Montenegro',2007),(6,'DVD','Божићни Завичају Мили Рају... (Коктел Традиционалних Пјесама)','Bosnia & Herzegovina',2009),(7,'File','07/08 EP','Montenegro',2016),(8,'File','09/10 EP','Montenegro',2016),(9,'CD','Adio','Montenegro',2015),(10,'CD, DVD','Ajde Kroči / Come On Step Up','Montenegro',2007),(11,'File','Analog Monkey Play Serious Funky','Montenegro',2014),(12,'File','Awakening','Montenegro',2016),(13,'File','Bar Na Kratko','Montenegro',2015),(14,'CD','Best Of','Montenegro',2014),(15,'CD','Bez Najave','Montenegro',2007),(16,'CD','Бунтовник','Bosnia & Herzegovina',2011),(17,'CD','Хитови','Bosnia & Herzegovina',2010),(18,'File','Body And Soul','Montenegro',2016),(19,'Vinyl','Bokeljska ploca','Montenegro',1988),(20,'CD','Гробовласници','Bosnia & Herzegovina',2013),(21,'File','Bolji Grad Ne Postoji','Montenegro',2009),(22,'File','Casual Project EP','Montenegro',2017),(23,'CD','Плаче Дрина','Bosnia & Herzegovina',2007),(24,'File','Chameleon','Montenegro',2015),(25,'File','Continuum','Montenegro',2015),(26,'CD','Ево Мене, Ево Вас','Bosnia & Herzegovina',2014),(27,'CD','Crnogorska Pjesma','Montenegro',2006),(28,'File','Dark Side of the Noon','Montenegro',2009),(29,'CD','Свуда Пођи, Кући Дођи','Bosnia & Herzegovina',2008),(30,'File','Day Of The Law','Montenegro',2009),(31,'CDr','Demo 2007','Montenegro',2007),(32,'Cassette','Demo(nancy)','Montenegro',2008),(33,'CD','Оливера Катарина','Bosnia & Herzegovina',1999),(34,'File','Digest Music Vol. 1','Montenegro',2013),(35,'File','Digest Music Vol. 2','Montenegro',2013),(36,'Cassette','Гаро, Гаро','Bosnia & Herzegovina',1995),(37,'File','Digest Music Vol. 3','Montenegro',2013),(38,'File','Digest Music Vol. 4','Montenegro',2013),(39,'CDr','Сиби́рь','Bosnia & Herzegovina',2009),(40,'CD','Животна Прича','Bosnia & Herzegovina',2010),(41,'File','Digest Music Vol. 5','Montenegro',2013),(42,'CD','Dodir Crne Gore - Touch Of Montenegro','Montenegro',2011),(43,'Cassette','Оливера Катарина','Bosnia & Herzegovina',1999),(44,'CD','Dok Sanjah O Tebi Ana Marija... (Izbor Iz Poezije)','Montenegro',2007),(45,'CDr','Потерянная Горла','Bosnia & Herzegovina',2009),(46,'File','Drvozbor','Montenegro',2013),(47,'DVD','Завичају Мили Рају... (Празнични Коктел Традиционалних Пјесама И Игара)','Bosnia & Herzegovina',2010),(48,'File','Esid','Montenegro',2017),(49,'CD, DVD','Euro Neuro','Montenegro',2012),(50,'CD','Euro Neuro','Montenegro',2012),(51,'Cassette','Evo Zora','Montenegro',2002),(52,'File','Exploration EP','Montenegro',2010),(53,'File','Five Artists Five Sounds 005','Montenegro',2014),(54,'File','Forgotten EP','Montenegro',2017),(55,'CD','Golden Age','Montenegro',2014),(56,'File','Gone Horribly Wrong ','Montenegro',2008),(57,'CD','Gorski Car','Montenegro',2012),(58,'CDr','Инфантилна Наказа','Bosnia & Herzegovina',1998),(59,'CD','Hostis','Montenegro',2016),(60,'CD','Igranka','Montenegro',2013),(61,'CD','Идем Тамо Ђе Ме Воле','Bosnia & Herzegovina',2009),(62,'CD','Igranka','Montenegro',2013),(63,'File','Inside Clouds','Montenegro',2009),(64,'CD','По Старински','Bosnia & Herzegovina',2008),(65,'Cassette','In The Name Of Satan','Montenegro',2009),(66,'CD','Да Се Не Заборави','Bosnia & Herzegovina',2008),(67,'CD','... Iza Oblaka','Montenegro',2007),(68,'CD','Постадосмо Два Народа / Питају Ме Ко Сам...','Bosnia & Herzegovina',2007),(69,'CD','... Iza Oblaka','Montenegro',2007),(70,'CD','1 Na 1','Bosnia & Herzegovina',2006),(71,'CD','2 LP Na 1 CD','Bosnia & Herzegovina',1998),(72,'CD','Iza Tišine','Montenegro',2016),(73,'File','Kapunjera','Montenegro',2009),(74,'DVD','Завичају Мили Рају... 3 (Коктел Традиционалних Пјесама)','Bosnia & Herzegovina',2008),(75,'File','Klasika Za Zvučnik','Montenegro',2015),(76,'File','Kontaminacija','Montenegro',2017),(77,'File','4','Bosnia & Herzegovina',2014),(78,'File','4','Bosnia & Herzegovina',2014),(79,'File','Kontra','Montenegro',2016),(80,'Vinyl','4th Strike EP','Bosnia & Herzegovina',2010),(81,'CD','Krš I Drača','Montenegro',2012),(82,'Vinyl','4th Strike EP','Bosnia & Herzegovina',2010),(83,'File','Landmark','Montenegro',2017),(84,'File','Lemon Juice','Montenegro',2009),(85,'CD','Letu Štuke','Montenegro',2008),(86,'File','6 Pack EP','Bosnia & Herzegovina',2007),(87,'CD','Litar Neba','Montenegro',2007),(88,'CD','07','Bosnia & Herzegovina',2007),(89,'File','Low On Emo','Montenegro',2016),(90,'File','Lucid Dream EP','Montenegro',2009),(91,'File','Maxwell - You And Me And We R U (Deep Worship Mix)','Montenegro',2006),(92,'File','Message from Alien','Montenegro',2009),(93,'CD','Moj Svijet / My Love','Montenegro',2014),(94,'CD','Moj Svijet / My Love...','Montenegro',2014),(95,'CD','08','Bosnia & Herzegovina',2007),(96,'CD','Muzej Revolucije','Montenegro',2009),(97,'File','8 Bitrate','Bosnia & Herzegovina',2008),(98,'Cassette','8. Hrvatski Radijski Festival Dva','Bosnia & Herzegovina',2004),(99,'File','My Name Is Ekahal','Montenegro',2016),(100,'CD','Najveći Hitovi','Montenegro',2008),(101,'CD','13. Soba','Bosnia & Herzegovina',2008),(102,'CD','Najveći Hitovi','Montenegro',2008),(103,'CD','13 Trinaest ','Bosnia & Herzegovina',2002),(104,'CD','Najveći Hitovi','Montenegro',2008),(105,'CD','14 Najboljih','Bosnia & Herzegovina',2005),(106,'CD','18 hitova ','Bosnia & Herzegovina',1995),(107,'CD','Najveći Hitovi','Montenegro',2009),(108,'CD','19','Bosnia & Herzegovina',2008),(109,'Cassette','20','Bosnia & Herzegovina',2012),(110,'File','Natureza Selvagem','Montenegro',2016),(111,'CD','Nemam Ti Kad','Montenegro',2014),(112,'File','Nova Planet 10 Year Anniversary EP','Montenegro',2014),(113,'CD, CD, All Media','Ožiljak / Umjesto Gluposti','Montenegro',2014),(114,'File','Open Silence','Montenegro',2013),(115,'File','Party People','Montenegro',2015),(116,'CD','20','Bosnia & Herzegovina',2012),(117,'CD','Pjesma Mediterana Budva 2008','Montenegro',2008),(118,'CD','Pjesma Mediterana Budva 2009','Montenegro',2009),(119,'CD','20 godina sa Vama','Bosnia & Herzegovina',2016),(120,'DVD','24. Mart Zetra Sarajevo','Bosnia & Herzegovina',2013),(121,'CD','24. Mart Zetra Sarajevo','Bosnia & Herzegovina',2013),(122,'CD','24 Sata','Bosnia & Herzegovina',2000),(123,'CD','Pjevaj Draga Pa Me Razgovaraj','Montenegro',2007),(124,'CD','30 Velikih Hitova No.2','Bosnia & Herzegovina',2008),(125,'DVD','Pola Moga Svijeta','Montenegro',2011),(126,'CD','Pola Moga Svijeta','Montenegro',2007),(127,'File','035 For Fools','Bosnia & Herzegovina',2007),(128,'CD','39 Velikih Hitova ','Bosnia & Herzegovina',2012),(129,'CD, DVD','40 Velikih Hitova','Bosnia & Herzegovina',2008),(130,'CD','Pop Folk Žurka Vol. 2','Montenegro',2002),(131,'CD','Pratim Te','Montenegro',2006),(132,'CD, CD','50 Godina Umjetničkog Rada','Bosnia & Herzegovina',2008),(133,'CD','Previše...','Montenegro',2008),(134,'CD','Pričaj Dodirom','Montenegro',2008),(135,'Cassette','Primitive Sounds','Montenegro',2006),(136,'CD','50 / Nezaboravne Pjesme 1','Bosnia & Herzegovina',2007),(137,'CD','Proteini I Ugljikohidrati','Montenegro',2008),(138,'File','51','Bosnia & Herzegovina',2016),(139,'CD, DVD','55 Velikih Hitova','Bosnia & Herzegovina',2012),(140,'File','Rising EP','Montenegro',2016),(141,'Cassette','SadistiK Saints And The Rotted Shells','Montenegro',2009),(142,'File','Sequenced Sound Structures Vol.1','Montenegro',2009),(143,'CD','Shepherdess (Čobanine Lijepa Đevojko)','Montenegro',2007),(144,'CD','100 Na Sat','Bosnia & Herzegovina',2008),(145,'CD','Sinergija = Synergy','Montenegro',2012),(146,'File','Songs','Montenegro',2011),(147,'Cassette','101 Noć','Bosnia & Herzegovina',2000),(148,'File','Soulmates Vol. 1','Montenegro',2012),(149,'File','Soulmates Vol.15','Montenegro',2014),(150,'CDr','Space','Montenegro',2017),(151,'File','Space','Montenegro',2017),(152,'File','500 Light Years','Bosnia & Herzegovina',2013),(153,'File','Space (Instrumental)','Montenegro',2017),(154,'CD','2004.','Bosnia & Herzegovina',2004),(155,'File','Spinning','Montenegro',2015),(156,'File','Spirals And Sunsets','Montenegro',2016),(157,'DVD','2005','Bosnia & Herzegovina',2005),(158,'File','Spirit Form','Montenegro',2015),(159,'File','Stingadelics - Vol. 2','Montenegro',2015),(160,'File','Stingadelics - Vol. 3','Montenegro',2016),(161,'DVD','2006','Bosnia & Herzegovina',2006),(162,'File','Sting Selection Vol. 1','Montenegro',2016),(163,'File','Sting Selection Vol. 2','Montenegro',2016),(164,'CD','2009','Bosnia & Herzegovina',2009),(165,'CD','2010','Bosnia & Herzegovina',2010),(166,'CD','Tamna strana sreće','Montenegro',2013),(167,'CD','2011','Bosnia & Herzegovina',2011),(168,'CD','2015.','Bosnia & Herzegovina',2015),(169,'CD','2015','Bosnia & Herzegovina',2015),(170,'CD','Tarpoš','Montenegro',2007),(171,'CD','23 / 23','Bosnia & Herzegovina',2006),(172,'File','The Bahanacius','Montenegro',2016),(173,'CDr','10000 Years Of The Living Dead','Bosnia & Herzegovina',2007),(174,'File','Theft Of October','Montenegro',2015),(175,'CDr','AAM','Bosnia & Herzegovina',2000),(176,'File','The Honey Trap','Montenegro',2012),(177,'CD','The Magic Of Balkan','Montenegro',2015),(178,'Cassette','The Old Adam','Montenegro',2009),(179,'File','Abgrund','Bosnia & Herzegovina',2014),(180,'CD','The Real Thing','Montenegro',2016),(181,'File','Abgrund','Bosnia & Herzegovina',2014),(182,'CD','The Unholy Spells Of Night','Montenegro',2009),(183,'CDr','Abnegação Filantrópica','Bosnia & Herzegovina',2017),(184,'File','Toad Trip','Montenegro',2015),(185,'File','Access Restriction','Bosnia & Herzegovina',2009),(186,'File','Activate Tonight ','Bosnia & Herzegovina',2015),(187,'File','Tomorrow EP','Montenegro',2010),(188,'CD','Adelisa','Bosnia & Herzegovina',1996),(189,'File','Unity','Montenegro',2016),(190,'CD','Šušur','Montenegro',2007),(191,'Vinyl','Adriatica','Bosnia & Herzegovina',2011),(192,'CD','Uvertira','Montenegro',2008),(193,'CD','V.I.S. Scena','Montenegro',2008),(194,'Vinyl','Adriatica','Bosnia & Herzegovina',2011),(195,'CD','Vjeruj','Montenegro',2013),(196,'File','Adriatikum Katalog#1','Bosnia & Herzegovina',2016),(197,'File','Adriatikum Katalog#2','Bosnia & Herzegovina',2016),(198,'File','Adriatikum Katalog#3','Bosnia & Herzegovina',2016),(199,'CD','Zauvijek Volim Te ','Montenegro',2008),(200,'DVD','ZG Mirakul Live','Montenegro',2008),(201,'File','Adriatikum Katalog #4','Bosnia & Herzegovina',2017),(202,'CD','Zlatna Kolekcija','Montenegro',2008),(203,'File','Adriatikum Volume 1','Bosnia & Herzegovina',2009),(204,'File','Adriatikum Volume 2','Bosnia & Herzegovina',2016),(205,'CD','Zlatna Kolekcija','Montenegro',2008),(206,'File','Adriatikum Volume 3','Bosnia & Herzegovina',2017),(207,'CDr','Aeroesthetics // There Are Worse Things Than Being Alone','Bosnia & Herzegovina',2015),(208,'File','Afganistan','Bosnia & Herzegovina',2009),(209,'CD','Afganistan','Bosnia & Herzegovina',2006),(210,'File','Aftermath','Bosnia & Herzegovina',2008),(211,'Cassette','Agent Tajne Sile','Bosnia & Herzegovina',1999),(212,'Cassette','Agent Tajne Sile','Bosnia & Herzegovina',1999),(213,'CD','Ahoj','Bosnia & Herzegovina',2002),(214,'File','Ajša','Bosnia & Herzegovina',2013),(215,'CD','Ajde Jano','Bosnia & Herzegovina',2007),(216,'File','Aj Milo Moje','Bosnia & Herzegovina',2012),(217,'CD','ʻAjmo Cure Prositi','Bosnia & Herzegovina',2007),(218,'CD','Ajmo Moja Braćo Zapjevati','Bosnia & Herzegovina',2006),(219,'File','Ako Bog Da','Bosnia & Herzegovina',2012),(220,'Cassette','Ako Bog Da','Bosnia & Herzegovina',2002),(221,'Cassette','Ako Ima Boga','Bosnia & Herzegovina',1997),(222,'CD','Ako Je Suđeno...','Bosnia & Herzegovina',2008),(223,'Cassette','A Krv Mi Vri','Bosnia & Herzegovina',2002),(224,'File','Ale i Bauci / Ogres &amp; Bogies','Bosnia & Herzegovina',2017),(225,'CD','Alexander Dimmi','Bosnia & Herzegovina',2014),(226,'File','Algorithm','Bosnia & Herzegovina',2016),(227,'File','Alien Dance','Bosnia & Herzegovina',2009),(228,'File','All These Years','Bosnia & Herzegovina',2009),(229,'File','Alpha Beta Revire','Bosnia & Herzegovina',2015),(230,'File','Alprazolam','Bosnia & Herzegovina',2010),(231,'File','Alto Di Adriatiko','Bosnia & Herzegovina',2009),(232,'CD','Amajlija','Bosnia & Herzegovina',2015),(233,'CDr','Ambrosia Musica Archive Volume One','Bosnia & Herzegovina',2002),(234,'CD','Ameriko, Ameriko','Bosnia & Herzegovina',2005),(235,'CD','Amnestija','Bosnia & Herzegovina',1997),(236,'File','Amore','Bosnia & Herzegovina',2013),(237,'Cassette','Amour Du Fossoyeur / Morbus Mora','Bosnia & Herzegovina',2011),(238,'CDr','Amour Du Fossoyeur / Morbus Mora','Bosnia & Herzegovina',2011),(239,'CD','Ćana','Bosnia & Herzegovina',2010),(240,'CD','Ćana','Bosnia & Herzegovina',2017),(241,'CD','Anđa','Bosnia & Herzegovina',2008),(242,'Cassette','Ana Bekuta','Bosnia & Herzegovina',1999),(243,'CD','Ana Itana','Bosnia & Herzegovina',2009),(244,'File','Anđeo','Bosnia & Herzegovina',2016),(245,'CD','Anđeo Sa Greškom','Bosnia & Herzegovina',2005),(246,'File','Another Crappy Day','Bosnia & Herzegovina',2017),(247,'File','Another Neurovision Broadcast','Bosnia & Herzegovina',2004),(248,'File','Antinomy','Bosnia & Herzegovina',2008),(249,'CD','Antologija BH Sevdalinke 1','Bosnia & Herzegovina',2005),(250,'CD','Antologija BH Sevdalinke 2','Bosnia & Herzegovina',2005),(251,'CD','Antologija BH Sevdalinke 3','Bosnia & Herzegovina',2005),(252,'CD','Žaoka','Bosnia & Herzegovina',2012),(253,'CD','Ćao Mali','Bosnia & Herzegovina',2006),(254,'File','Apsurdistan','Bosnia & Herzegovina',2013),(255,'CDr','A Razón Instrumental','Bosnia & Herzegovina',2016),(256,'CDr','Ardhanārīśvara','Bosnia & Herzegovina',2015),(257,'File','Are They Coming / Electro Playground','Bosnia & Herzegovina',2007),(258,'File','Are We Alone','Bosnia & Herzegovina',2015),(259,'File','Are We Alone','Bosnia & Herzegovina',2015),(260,'CD','Arija Nebeska','Bosnia & Herzegovina',2006),(261,'CD','Čarobnjaci','Bosnia & Herzegovina',2007),(262,'CD','Čarolija','Bosnia & Herzegovina',2009),(263,'File','Arrabiata','Bosnia & Herzegovina',2011),(264,'File','Arrows In The Plane','Bosnia & Herzegovina',2012),(265,'File','Artificial Origin of Nature','Bosnia & Herzegovina',2017),(266,'CD','A Sada...','Bosnia & Herzegovina',2003),(267,'CD','A Secret Gate','Bosnia & Herzegovina',2004),(268,'Cassette','Asovi I Sevdah','Bosnia & Herzegovina',1997),(269,'CD','Asovi Krajiške Muzike 1','Bosnia & Herzegovina',2009),(270,'File','Assimilator','Bosnia & Herzegovina',2008),(271,'CDr','Astigmatizam Muhinog Brata: Personalni Dosje','Bosnia & Herzegovina',2013),(272,'File','Astralno Putovanje (dio I,II i III)','Bosnia & Herzegovina',2014),(273,'File','A Stranger Is Watching','Bosnia & Herzegovina',2016),(274,'File','Astrid EP','Bosnia & Herzegovina',2015),(275,'CDr','Asyl','Bosnia & Herzegovina',2016),(276,'CD','A Tako Mi Fališ...','Bosnia & Herzegovina',2006),(277,'CDr','Audio Collapse','Bosnia & Herzegovina',2012),(278,'File','Ausgang','Bosnia & Herzegovina',2014),(279,'File','Ausgang','Bosnia & Herzegovina',2014),(280,'CD','Autobus Calypso','Bosnia & Herzegovina',2007),(281,'File','Automatik','Bosnia & Herzegovina',2008),(282,'CD','Avantura','Bosnia & Herzegovina',2007),(283,'File','Awakening EP','Bosnia & Herzegovina',2015),(284,'File','Axiom (Chipi C-Electronics Remix)','Bosnia & Herzegovina',2007),(285,'CD','Azra','Bosnia & Herzegovina',1996),(286,'CD','Ba','Bosnia & Herzegovina',2014),(287,'CD','Backstage','Bosnia & Herzegovina',2003),(288,'File','Bad','Bosnia & Herzegovina',2017),(289,'CD','Baga Music','Bosnia & Herzegovina',2006),(290,'DVD','Baja Mali Knindža I Prijatelji','Bosnia & Herzegovina',2006),(291,'CD','Balkanjeros rokenrol','Bosnia & Herzegovina',2015),(292,'CD','Balkanka','Bosnia & Herzegovina',2006),(293,'CD','Balkansko A Naše','Bosnia & Herzegovina',2008),(294,'File','Baltazar','Bosnia & Herzegovina',2014),(295,'CD','Banija U Srcu','Bosnia & Herzegovina',2017),(296,'Cassette','Baraba / Moje Oči Vide Sve','Bosnia & Herzegovina',1997),(297,'Vinyl','Battlez 01 EP','Bosnia & Herzegovina',2010),(298,'Vinyl','Beba &amp; Za Vašu Dušu','Bosnia & Herzegovina',1992),(299,'CD','Beep','Bosnia & Herzegovina',2008),(300,'File','Below the Grave','Bosnia & Herzegovina',2015),(301,'CD','Bentbaša – Sevdalinka. Bosanska ljubavna pjesma','Bosnia & Herzegovina',2006),(302,'DVD','Beograd 2011','Bosnia & Herzegovina',2016),(303,'File','Beotaster Suprakancelaria','Bosnia & Herzegovina',2004),(304,'CDr','Best 2000','Bosnia & Herzegovina',2000),(305,'Cassette','Bestias','Bosnia & Herzegovina',2013),(306,'CD','Best Of','Bosnia & Herzegovina',2008),(307,'CD','Best Of ','Bosnia & Herzegovina',2013),(308,'CD','Best Of','Bosnia & Herzegovina',2007),(309,'CD','Best Of - Malo Je, Malo Dana','Bosnia & Herzegovina',2006),(310,'CD','Best Of - Malo Je, Malo Dana','Bosnia & Herzegovina',2006),(311,'CD','Best Of No1 Hej, Kafano Neću Više','Bosnia & Herzegovina',2006),(312,'File','Between Two Fires','Bosnia & Herzegovina',2009),(313,'File','Beyond Rock','Bosnia & Herzegovina',2018),(314,'Cassette','Bez Naslova','Bosnia & Herzegovina',1996),(315,'File','Bh Electronix Part 4','Bosnia & Herzegovina',2008),(316,'Cassette','BH EUROSONG 2001','Bosnia & Herzegovina',2001),(317,'CD','BH Eurosong 2003','Bosnia & Herzegovina',2003),(318,'CD','BH Eurosong 2005','Bosnia & Herzegovina',2005),(319,'CD','BH Eurosong CD1','Bosnia & Herzegovina',2011),(320,'CD','BH Folk Zvijezde 1','Bosnia & Herzegovina',2010),(321,'CD','BH Folk Zvijezde 2','Bosnia & Herzegovina',2010),(322,'CDr','BH Izbor Za Pjesmu Eurovizije 2002. / БХ Избор За Пјесму Евровизије 2002.','Bosnia & Herzegovina',2002),(323,'Cassette','BH Izbor Za Pjesmu Eurovizije 2002. / БХ Избор За Пјесму Евровизије 2002.','Bosnia & Herzegovina',2002),(324,'Cassette','BH Pop Rock 1','Bosnia & Herzegovina',1999),(325,'CD','Bh Pop Rock Leksikon - Gori Vatra! Cd 1','Bosnia & Herzegovina',2004),(326,'CD','BH Pop Rock Leksikon - Gori Vatra! Cd 2','Bosnia & Herzegovina',2004),(327,'CD','Bišćanka','Bosnia & Herzegovina',1998),(328,'CD','Biće Svega','Bosnia & Herzegovina',2013),(329,'CD','Bijelo Zlato','Bosnia & Herzegovina',2006),(330,'CD','Biljeske Iz Sestice','Bosnia & Herzegovina',2013),(331,'CD','Bilo Jednom U Hrvatskoj','Bosnia & Herzegovina',2006),(332,'DVD','Bilo Jednom U Hrvatskoj - Stadion Maksimir Anno Domini MMVII','Bosnia & Herzegovina',2007),(333,'CD','Bisernica Najlepših Pesama','Bosnia & Herzegovina',2001),(334,'CD, DVD, All Media','Bistra Voda','Bosnia & Herzegovina',2009),(335,'CD','Bistra Voda','Bosnia & Herzegovina',2009),(336,'CD','Bitanga i Princeza','Bosnia & Herzegovina',1995),(337,'CD','Biću Kriva','Bosnia & Herzegovina',2005),(338,'Cassette','Black Magick','Bosnia & Herzegovina',2012),(339,'File','Black Saturnine Gnosis','Bosnia & Herzegovina',2009),(340,'File','Black Saturnine Gnosis','Bosnia & Herzegovina',2009),(341,'CDr','Black Serpent Dreaming: Rites Of Passage','Bosnia & Herzegovina',2005),(342,'File','Black Summer','Bosnia & Herzegovina',2006),(343,'File','Bleak Sightseeing','Bosnia & Herzegovina',2015),(344,'CD','Bloodless','Bosnia & Herzegovina',2005),(345,'CD','Boemi','Bosnia & Herzegovina',2010),(346,'CD','Boginja','Bosnia & Herzegovina',2009),(347,'Cassette','Bojana','Bosnia & Herzegovina',2001),(348,'CD','Bolest Nije Kraj-Hvala Dobrim Ljudima','Bosnia & Herzegovina',2005),(349,'CD','Bolje Svatovi...','Bosnia & Herzegovina',1998),(350,'CD','Bolje Svatovi...','Bosnia & Herzegovina',1998),(351,'Cassette','Bolje Svatovi...','Bosnia & Herzegovina',1998),(352,'CD','Bolji Nego Ja','Bosnia & Herzegovina',2010),(353,'Cassette','Bomba 10-Ti Album','Bosnia & Herzegovina',2002),(354,'File','Bon Voyage','Bosnia & Herzegovina',2016),(355,'CD','Bora Drljača','Bosnia & Herzegovina',2014),(356,'CD','Bosna Pjeva 92 (Bosanskohercegovačko Muzičko Naslijeđe-Volume II)','Bosnia & Herzegovina',2002),(357,'CD','Bosnia Groove','Bosnia & Herzegovina',2007),(358,'CD','Bosnian Jazz Document','Bosnia & Herzegovina',1999),(359,'CD','Bosnian Music 16 CD (Bosanskohercegovačko Muzičko Naslijeđe - Bosnian Music Heritage)','Bosnia & Herzegovina',2010),(360,'CD','Bosnian Suite','Bosnia & Herzegovina',2002),(361,'Cassette','Bosno Moja, Jabuko','Bosnia & Herzegovina',1992),(362,'File','Bounding EP','Bosnia & Herzegovina',2008),(363,'File','Boys Come On','Bosnia & Herzegovina',2008),(364,'CD','Braća Lekić','Bosnia & Herzegovina',2016),(365,'CD','Braća Lekić','Bosnia & Herzegovina',2013),(366,'CDr','Brain Development Disorder','Bosnia & Herzegovina',2008),(367,'File','Brain Washing EP','Bosnia & Herzegovina',2008),(368,'CDr','Brainwashing Machine','Bosnia & Herzegovina',2007),(369,'CD','Branka Stanarčić - Vida Pavlović','Bosnia & Herzegovina',2012),(370,'File','Break And Enter','Bosnia & Herzegovina',2014),(371,'CDr','Breezing Stars','Bosnia & Herzegovina',2010),(372,'File','Brojevi','Bosnia & Herzegovina',2015),(373,'File','Brojevi','Bosnia & Herzegovina',2015),(374,'CD','Brvnara','Bosnia & Herzegovina',2013),(375,'CD','Bucka','Bosnia & Herzegovina',2016),(376,'File','Budalo','Bosnia & Herzegovina',2017),(377,'CD','Budem Li Se Ženio Ikada...','Bosnia & Herzegovina',2007),(378,'File','Bulgaria EP','Bosnia & Herzegovina',2015),(379,'CD','Burek','Bosnia & Herzegovina',2004),(380,'File','Burning Up','Bosnia & Herzegovina',2014),(381,'Cassette','But Vague','Bosnia & Herzegovina',1992),(382,'CD','Buziki Ljubavi Moja','Bosnia & Herzegovina',2008),(383,'CD','Cacin Kaput','Bosnia & Herzegovina',2006),(384,'CD, DVD','Call Me','Bosnia & Herzegovina',2005),(385,'File','Camotech EP','Bosnia & Herzegovina',2009),(386,'File','Candle Light EP','Bosnia & Herzegovina',2010),(387,'CD','Can I Play With Your Memories?','Bosnia & Herzegovina',2010),(388,'CD','Cao Mala Cao','Bosnia & Herzegovina',1998),(389,'Cassette','Car Ljubavi','Bosnia & Herzegovina',2002),(390,'File','Casino','Bosnia & Herzegovina',2015),(391,'File','Celebrations Of All Nations','Bosnia & Herzegovina',2009),(392,'File','Chardonnay','Bosnia & Herzegovina',2010),(393,'File','Charon`s Lost Soul','Bosnia & Herzegovina',2013),(394,'File','Chemical Elements ','Bosnia & Herzegovina',2016),(395,'File','Chill The Fuck Out, I Got This','Bosnia & Herzegovina',2013),(396,'File','Chloé','Bosnia & Herzegovina',2010),(397,'Cassette','Ciganine Brate','Bosnia & Herzegovina',1999),(398,'Cassette','Ciganska Duša','Bosnia & Herzegovina',1996),(399,'Cassette','Ciganska Duša','Bosnia & Herzegovina',1994),(400,'File','Cijela BiH Jedna Avlija','Bosnia & Herzegovina',2007),(401,'CD','Cijeli Moj Svijet','Bosnia & Herzegovina',2014),(402,'CD','Cirkus','Bosnia & Herzegovina',2004),(403,'CDr','Clockwork Uterus','Bosnia & Herzegovina',2001),(404,'CD','Cmokni Me','Bosnia & Herzegovina',1998),(405,'CDr','Cnz 1.0 [--some--]','Bosnia & Herzegovina',2014),(406,'CD','Dok Čekaš Sabah Sa Šejtanom','Bosnia & Herzegovina',2000),(407,'Cassette','Dole Ispod Jorgana','Bosnia & Herzegovina',2000),(408,'CD','Dole Ispod Jorgana','Bosnia & Herzegovina',2000);
/*!40000 ALTER TABLE `releases` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-01 10:24:15
