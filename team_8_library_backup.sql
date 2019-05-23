CREATE DATABASE  IF NOT EXISTS `endangered_species_final_2.0` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `endangered_species_final_2.0`;
-- MySQL dump 10.13  Distrib 8.0.12, for macos10.13 (x86_64)
--
-- Host: localhost    Database: endangered_species_final_2.0
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `all_endangered_herbivores`
--

DROP TABLE IF EXISTS `all_endangered_herbivores`;
/*!50001 DROP VIEW IF EXISTS `all_endangered_herbivores`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `all_endangered_herbivores` AS SELECT 
 1 AS `common_name`,
 1 AS `diet_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(45) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Birds'),(2,'Reptiles'),(3,'Amphibians'),(4,'Fishes'),(5,'Mammals');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diets`
--

DROP TABLE IF EXISTS `diets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `diets` (
  `diet_id` int(11) NOT NULL AUTO_INCREMENT,
  `diet_name` varchar(45) NOT NULL,
  PRIMARY KEY (`diet_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diets`
--

LOCK TABLES `diets` WRITE;
/*!40000 ALTER TABLE `diets` DISABLE KEYS */;
INSERT INTO `diets` VALUES (1,'Carnivore'),(2,'Herbivore'),(3,'Omnivore');
/*!40000 ALTER TABLE `diets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endangered_species`
--

DROP TABLE IF EXISTS `endangered_species`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `endangered_species` (
  `species_id` int(11) NOT NULL AUTO_INCREMENT,
  `common_name` varchar(45) NOT NULL,
  `scientific_name` varchar(45) NOT NULL,
  `category_id` int(11) NOT NULL,
  `diet_id` int(11) NOT NULL,
  `region_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `date_listed` datetime NOT NULL,
  PRIMARY KEY (`species_id`),
  KEY `fk_endangerd_species_categories1_idx` (`category_id`),
  KEY `fk_endangerd_species_diets1_idx` (`diet_id`),
  KEY `fk_endangerd_species_regions1_idx` (`region_id`),
  KEY `fk_endangerd_species_status2_idx` (`status_id`),
  CONSTRAINT `fk_endangerd_species_categories1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`),
  CONSTRAINT `fk_endangerd_species_diets1` FOREIGN KEY (`diet_id`) REFERENCES `diets` (`diet_id`),
  CONSTRAINT `fk_endangerd_species_regions1` FOREIGN KEY (`region_id`) REFERENCES `regions` (`region_id`),
  CONSTRAINT `fk_endangerd_species_status2` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endangered_species`
--

LOCK TABLES `endangered_species` WRITE;
/*!40000 ALTER TABLE `endangered_species` DISABLE KEYS */;
INSERT INTO `endangered_species` VALUES (1,'Morro Bay Kangaroo Rat','Dipodomys Heermanni Morroensis',5,3,8,1,'1970-10-13 00:00:00'),(2,'Ocelot','Leopardus pardalis',5,1,2,1,'1972-03-28 00:00:00'),(3,'Olympia Pocket Gopher','Thomomys Mazama Pugetensis',5,2,1,2,'2014-05-09 00:00:00'),(4,'Northern Spotted Owl','Strix occidentalis caurina',1,1,1,2,'1990-06-26 00:00:00'),(5,'California Condor','Gymnogyps californianus',1,1,1,1,'1967-03-11 00:00:00'),(6,'Kirtland\'s Warbler','Setophaga kirtlandii',1,2,3,1,'1967-03-11 00:00:00'),(7,'Wood Stork','Mycteria americana',1,1,4,2,'1984-02-28 00:00:00'),(8,'Friendly Ground-Dove','Gallicolumba stairi',1,2,1,2,'2016-10-24 00:00:00'),(9,'Thick-billed parrot','Rhynchopsitta pachyrhyncha',1,3,2,2,'1970-06-02 00:00:00'),(10,'Steller\'s Eider','Polysticta stelleri',1,1,7,1,'1997-06-11 00:00:00'),(11,'Piping Plover','Charadrius melodus',1,2,5,2,'1993-03-05 00:00:00'),(12,'California red-legged frog ','Rana draytonii',3,1,8,2,'1996-05-23 00:00:00'),(13,'Chiricahua leopard frog ','Rana chiricahuensis',3,1,2,2,'2002-06-13 00:00:00'),(14,'Ozark Hellbender ','Cryptobranchus alleganiensis bishopi',3,1,3,1,'2011-11-07 00:00:00'),(15,'Desert slender salamander ','Batrachoseps aridus',3,1,8,2,'1973-06-04 00:00:00'),(16,'Arroyo toad','Anaxyrus californicus',3,1,8,2,'1994-12-16 00:00:00'),(17,'Santa Cruz long-toed salamander ','Ambystoma macrodactylum croceum',3,1,8,1,'1967-03-11 00:00:00'),(18,'Austin blind Salamander ','Eurycea waterlooensis',3,1,2,1,'2013-09-19 00:00:00'),(19,'Black Warrior Waterdog','Necturus alabamensis',3,1,4,1,'2018-02-02 00:00:00'),(20,'Green Sea Turtle','Chelonia mydas',2,2,1,2,'2016-05-05 00:00:00'),(21,'American crocodile','Crocodylus acutus',2,1,4,2,'1975-10-28 00:00:00'),(22,'Giant garter snake','Thamnophis gigas',2,1,8,2,'1993-10-20 00:00:00'),(23,'Eastern indigo snake','Drymarchon corais couperi',2,1,2,2,'1978-03-03 00:00:00'),(24,'Sonoyta mud turtle','Kinosternon sonoriense longifemorale',2,3,2,1,'2017-10-20 00:00:00'),(25,'Yellow-billed Cuckoo','Coccyzus americanus',1,1,8,2,'2014-11-03 00:00:00'),(26,'Desert tortoise','Gopherus agassizii',2,2,8,2,'1980-08-20 00:00:00'),(27,'Mississippi sandhill crane','Grus canadensis pulla',1,1,4,1,'1973-06-04 00:00:00'),(28,'Yellow-blotched map turtle','Graptemys flavimaculata',2,1,2,2,'1991-01-14 00:00:00'),(29,'Olive ridley sea turtle','Lepidochelys olivacea',2,1,4,2,'1978-07-28 00:00:00'),(30,'Blunt-nosed leopard lizard','Gambelia silus',2,1,8,1,'1967-03-11 00:00:00'),(31,'Louisiana pine snake','Pituophis ruthveni',2,1,4,2,'2018-05-07 00:00:00'),(32,'Wyoming Toad ','Bufo hemiophrys baxteri',3,1,6,1,'1984-01-17 00:00:00'),(33,'Sonora tiger Salamander','Ambystoma tigrinum stebbinsi',3,1,2,1,'1997-01-06 00:00:00'),(34,'Wood Bison','Bison bison athabascae',5,2,7,2,'1970-06-02 00:00:00'),(35,'Tipton kangaroo rat','Dipodomys nitratoides nitratoides',5,2,8,1,'1988-07-08 00:00:00'),(36,'Carolina northern flying squirrel','Glaucomys sabrinus coloratus',5,2,4,1,'1985-07-01 00:00:00'),(37,'Gray wolf','Canis lupus',5,1,6,1,'1978-03-09 00:00:00'),(38,'Red wolf','Canis rufus',5,1,4,1,'1967-03-11 00:00:00'),(39,'Peninsular bighorn sheep','Ovis canadensis nelsoni',5,2,8,1,'1998-03-18 00:00:00'),(40,'Florida panther','Puma concolor coryi',5,1,4,1,'1967-03-11 00:00:00'),(41,'Atlantic salmon','Salmo salar',4,1,5,1,'2009-06-19 00:00:00'),(42,'Eulachon','Thaleichthys pacificus',4,1,2,2,'2011-04-13 00:00:00'),(43,'Santa Ana sucker','Catostomus santaanae',4,3,8,2,'2000-04-12 00:00:00'),(44,'Sockeye salmon','Oncorhynchus nerka',4,1,1,2,'1999-03-25 00:00:00'),(45,'Bocaccio','Sebastes paucispinis',4,1,4,1,'2011-04-13 00:00:00'),(46,'Yelloweye rockfish','Sebastes ruberrimus',4,1,4,2,'2011-04-13 00:00:00'),(47,'Steelhead','Oncorhynchus mykiss',4,1,8,2,'1998-06-17 00:00:00'),(48,'White sturgeon','Acipenser transmontanus',4,1,1,2,'1994-09-06 00:00:00'),(49,'Arkansas River shiner','Notropis girardi',4,1,2,2,'1998-11-23 00:00:00'),(50,'Atlantic sturgeon','Acipenser oxyrinchus oxyrinchus',4,1,5,2,'2012-02-06 00:00:00');
/*!40000 ALTER TABLE `endangered_species` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `mammal_diets`
--

DROP TABLE IF EXISTS `mammal_diets`;
/*!50001 DROP VIEW IF EXISTS `mammal_diets`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `mammal_diets` AS SELECT 
 1 AS `common_name`,
 1 AS `diet_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `regions`
--

DROP TABLE IF EXISTS `regions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `regions` (
  `region_id` int(11) NOT NULL AUTO_INCREMENT,
  `region_name` varchar(45) NOT NULL,
  PRIMARY KEY (`region_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regions`
--

LOCK TABLES `regions` WRITE;
/*!40000 ALTER TABLE `regions` DISABLE KEYS */;
INSERT INTO `regions` VALUES (1,'Pacific'),(2,'Southwest'),(3,'Midwest'),(4,'Southeast'),(5,'Northeast'),(6,'Rocky Moutains'),(7,'Alaska'),(8,'California/Nevada');
/*!40000 ALTER TABLE `regions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `reptile_per_region`
--

DROP TABLE IF EXISTS `reptile_per_region`;
/*!50001 DROP VIEW IF EXISTS `reptile_per_region`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `reptile_per_region` AS SELECT 
 1 AS `region_name`,
 1 AS `rep_count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `species_count_per_state`
--

DROP TABLE IF EXISTS `species_count_per_state`;
/*!50001 DROP VIEW IF EXISTS `species_count_per_state`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `species_count_per_state` AS SELECT 
 1 AS `state_name`,
 1 AS `species_count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `species_in_pacific_region`
--

DROP TABLE IF EXISTS `species_in_pacific_region`;
/*!50001 DROP VIEW IF EXISTS `species_in_pacific_region`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `species_in_pacific_region` AS SELECT 
 1 AS `species_id`,
 1 AS `common_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `species_locations`
--

DROP TABLE IF EXISTS `species_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `species_locations` (
  `species_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  KEY `fk_species_locations_endangerd_species1_idx` (`species_id`),
  KEY `fk_species_locations_state1_idx` (`state_id`),
  CONSTRAINT `fk_species_locations_endangerd_species1` FOREIGN KEY (`species_id`) REFERENCES `endangered_species` (`species_id`),
  CONSTRAINT `fk_species_locations_state1` FOREIGN KEY (`state_id`) REFERENCES `state` (`state_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `species_locations`
--

LOCK TABLES `species_locations` WRITE;
/*!40000 ALTER TABLE `species_locations` DISABLE KEYS */;
INSERT INTO `species_locations` VALUES (1,5),(2,3),(2,43),(3,47),(4,5),(4,37),(4,47),(5,3),(5,5),(5,28),(5,37),(5,44),(6,9),(6,22),(6,35),(6,40),(6,49),(7,2),(7,9),(7,10),(7,24),(7,33),(7,40),(8,4),(9,3),(9,31),(10,2),(11,1),(11,3),(11,6),(11,7),(11,8),(11,9),(11,10),(11,15),(11,16),(11,18),(11,19),(11,20),(11,21),(11,23),(11,33),(11,34),(11,28),(11,29),(11,30),(11,31),(11,32),(11,36),(11,39),(11,40),(11,41),(11,43),(11,46),(11,50),(12,5),(13,3),(13,31),(14,4),(14,25),(15,5),(16,5),(17,5),(18,43),(19,1),(20,11),(20,9),(20,33),(20,40),(20,43),(20,46),(21,9),(22,5),(23,1),(23,9),(23,10),(24,3),(25,3),(25,5),(25,6),(25,12),(25,26),(25,31),(25,28),(25,37),(25,43),(25,44),(25,47),(25,50),(26,3),(26,5),(26,28),(26,44),(27,1),(27,24),(28,24),(29,5),(29,11),(29,37),(30,5),(31,18),(31,43),(32,50),(33,3),(34,2),(35,5),(36,33),(36,42),(36,46),(37,5),(37,34),(37,22),(37,37),(37,47),(37,49),(38,9),(39,5),(40,5),(41,7),(41,8),(41,19),(41,20),(41,21),(41,29),(41,30),(41,32),(41,38),(41,39),(41,45),(41,46),(41,48),(42,3),(42,31),(42,36),(42,43),(43,5),(43,28),(44,12),(44,37),(44,47),(45,1),(45,4),(45,9),(45,10),(45,17),(45,18),(45,24),(45,33),(45,40),(45,42),(46,1),(46,4),(46,9),(46,10),(46,17),(46,18),(46,24),(46,33),(46,40),(46,42),(47,5),(47,28),(48,12),(48,37),(48,47),(49,3),(49,31),(49,36),(49,43),(50,7),(50,8),(50,19),(50,20),(50,21),(50,29),(50,30),(50,32),(50,38),(50,39),(50,45),(50,46),(50,48);
/*!40000 ALTER TABLE `species_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `state` (
  `state_id` int(11) NOT NULL AUTO_INCREMENT,
  `state_name` varchar(45) NOT NULL,
  PRIMARY KEY (`state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state`
--

LOCK TABLES `state` WRITE;
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
INSERT INTO `state` VALUES (1,'Alabama'),(2,'Alaska'),(3,'Arizona'),(4,'Arkansas'),(5,'California'),(6,'Colorado'),(7,'Connecticut'),(8,'Delaware'),(9,'Florida'),(10,'Georgia'),(11,'Hawaii'),(12,'Idaho'),(13,'Illinois'),(14,'Indiana'),(15,'Iowa'),(16,'Kansas'),(17,'Kentucky'),(18,'Louisiana'),(19,'Maine'),(20,'Maryland'),(21,'Massachusetts'),(22,'Michigan'),(23,'Minnesota'),(24,'Mississippi'),(25,'Missouri'),(26,'Montana'),(27,'Nebraska'),(28,'Nevada'),(29,'New Hampshire'),(30,'New Jersey'),(31,'New Mexico'),(32,'New York'),(33,'North Carolina'),(34,'North Dakota'),(35,'Ohio'),(36,'Oklahoma'),(37,'Oregon'),(38,'Pennsylvania'),(39,'Rhode Island'),(40,'South Carolina'),(41,'South Dakota'),(42,'Tennessee'),(43,'Texas'),(44,'Utah'),(45,'Vermont'),(46,'Virginia'),(47,'Washington State'),(48,'West Virginia'),(49,'Wisconsin'),(50,'Wyoming');
/*!40000 ALTER TABLE `state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `status` (
  `status_id` int(11) NOT NULL AUTO_INCREMENT,
  `status_name` varchar(45) NOT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'Endangered'),(2,'Threatened');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `threatened_califronian_species`
--

DROP TABLE IF EXISTS `threatened_califronian_species`;
/*!50001 DROP VIEW IF EXISTS `threatened_califronian_species`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `threatened_califronian_species` AS SELECT 
 1 AS `common_name`,
 1 AS `state_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `all_endangered_herbivores`
--

/*!50001 DROP VIEW IF EXISTS `all_endangered_herbivores`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `all_endangered_herbivores` AS select `endangered_species`.`common_name` AS `common_name`,`diets`.`diet_name` AS `diet_name` from (`endangered_species` join `diets` on((`endangered_species`.`diet_id` = `diets`.`diet_id`))) where ((`diets`.`diet_name` = 'herbivore') and (`endangered_species`.`status_id` = 1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `mammal_diets`
--

/*!50001 DROP VIEW IF EXISTS `mammal_diets`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `mammal_diets` AS select `endangered_species`.`common_name` AS `common_name`,`diets`.`diet_name` AS `diet_name` from (`endangered_species` join `diets` on((`endangered_species`.`diet_id` = `diets`.`diet_id`))) where (`endangered_species`.`category_id` = 5) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `reptile_per_region`
--

/*!50001 DROP VIEW IF EXISTS `reptile_per_region`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `reptile_per_region` AS select `regions`.`region_name` AS `region_name`,count(`endangered_species`.`category_id`) AS `rep_count` from (`regions` left join `endangered_species` on((`regions`.`region_id` = `endangered_species`.`region_id`))) where (`endangered_species`.`category_id` = 2) group by `regions`.`region_name` order by count(`endangered_species`.`category_id`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `species_count_per_state`
--

/*!50001 DROP VIEW IF EXISTS `species_count_per_state`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `species_count_per_state` AS select `state`.`state_name` AS `state_name`,count(`endangered_species`.`species_id`) AS `species_count` from ((`endangered_species` join `species_locations` on((`endangered_species`.`species_id` = `species_locations`.`species_id`))) join `state` on((`species_locations`.`state_id` = `state`.`state_id`))) group by `state`.`state_name` order by count(`endangered_species`.`species_id`) desc,`state`.`state_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `species_in_pacific_region`
--

/*!50001 DROP VIEW IF EXISTS `species_in_pacific_region`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `species_in_pacific_region` AS select `endangered_species`.`species_id` AS `species_id`,`endangered_species`.`common_name` AS `common_name` from `endangered_species` where `endangered_species`.`region_id` in (select `regions`.`region_id` from `regions` where (`regions`.`region_id` = 1)) order by `endangered_species`.`common_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `threatened_califronian_species`
--

/*!50001 DROP VIEW IF EXISTS `threatened_califronian_species`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `threatened_califronian_species` AS select `endangered_species`.`common_name` AS `common_name`,`state`.`state_name` AS `state_name` from ((`endangered_species` join `species_locations` on((`endangered_species`.`species_id` = `species_locations`.`species_id`))) join `state` on((`species_locations`.`state_id` = `state`.`state_id`))) where ((`state`.`state_name` = 'California') and (`endangered_species`.`status_id` = 2)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-10 17:14:02
