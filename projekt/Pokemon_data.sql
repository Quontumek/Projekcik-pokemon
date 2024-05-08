-- MySQL dump 10.16  Distrib 10.1.48-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	10.1.48-MariaDB-0+deb9u2

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
-- Table structure for table `Attack_cat`
--

DROP TABLE IF EXISTS `Attack_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Attack_cat` (
  `ID` tinyint(4) DEFAULT NULL,
  `Category` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Attack_cat`
--

LOCK TABLES `Attack_cat` WRITE;
/*!40000 ALTER TABLE `Attack_cat` DISABLE KEYS */;
INSERT INTO `Attack_cat` VALUES (1,'Physical'),(2,'Status'),(3,'Special');
/*!40000 ALTER TABLE `Attack_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Attacks`
--

DROP TABLE IF EXISTS `Attacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Attacks` (
  `Attack_name` varchar(14) DEFAULT NULL,
  `Type` tinyint(4) DEFAULT NULL,
  `Category` tinyint(4) DEFAULT NULL,
  `Power` smallint(6) DEFAULT NULL,
  `Accuracy` varchar(3) DEFAULT NULL,
  `PP` tinyint(4) DEFAULT NULL,
  `Effect` varchar(86) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Attacks`
--

LOCK TABLES `Attacks` WRITE;
/*!40000 ALTER TABLE `Attacks` DISABLE KEYS */;
INSERT INTO `Attacks` VALUES ('Absorb',5,3,20,'100',25,'User heals half the damage dealt on opponent'),('Acid',8,3,40,'100',30,'May lower opponent\'s SDEF'),('Acid Armor',8,2,0,'0',20,'Sharply raises user\'s DEF'),('Agility',11,2,0,'0',30,'Sharply raises user\'s SPD'),('Amnesia',11,2,0,'0',20,'Sharply raises user\'s SDEF'),('Aurora Beam',6,3,65,'100',20,'May lower opponent\'s ATK'),('Barrage',1,1,15,'85',20,'Hits 2-5 times in one turn'),('Barrier',11,2,0,'0',20,'Sharply raises user\'s DEF'),('Bide',1,1,0,'0',10,'User takes damage for two turns then attacks for double the damage received'),('Bind',1,1,15,'85',20,'Traps opponent, damaging them for 4-5 turns'),('Bite',16,1,60,'100',25,'May cause flinching'),('Blizzard',6,3,110,'70',5,'May freeze opponent'),('Body Slam',1,1,85,'100',15,'May paralyze opponent'),('Bone Club',9,1,65,'85',20,'May cause flinching'),('Bonemerang',9,1,50,'90',10,'Hits twice'),('Bubble',3,3,40,'100',30,'May lower opponent\'s SPD'),('Bubble Beam',3,3,65,'100',20,'May lower opponent\'s SPD'),('Clamp',3,1,35,'85',15,'Traps opponent, damaging them for 4-5 turns'),('Comet Punch',1,1,18,'85',15,'Hits 2-5 times'),('Confuse Ray',14,2,0,'100',10,'Confuses opponent'),('Confusion',11,3,50,'100',25,'May confuse opponent'),('Constrict',1,1,10,'100',35,'May lower opponent\'s SPD by one stage'),('Conversion',1,2,0,'0',30,'Changes user\'s type to that of its first move'),('Counter',7,1,0,'100',20,'When hit by a Physical Attack, user strikes back with double power'),('Crabhammer',3,1,100,'90',10,'High critical hit ratio'),('Cut',1,1,50,'95',30,''),('Defence Curl',1,2,0,'0',40,'Raises user\'s DEF'),('Dig',9,1,80,'100',10,'Digs undergroudn on first turn, attacks on second'),('Disable',1,2,0,'100',20,'Opponent can\'t use it\'s last attack for a few turns'),('Dizzy Punch',1,1,70,'100',10,'May confuse opponent'),('Double Kick',7,1,30,'100',30,'Hits twice'),('Double Slap',1,1,15,'85',10,'Hits 2-5 times'),('Double Team',1,2,0,'0',15,'Raises user\'s Evasiveness'),('Double-Edge',1,1,120,'100',15,'User recieves recoil damage'),('Dragon Rage',15,3,0,'100',10,'Always inflicts 40 damage'),('Dream Eater',11,3,100,'100',15,'User heals for half damage dealt on a sleeping opponent'),('Drill Peck',10,1,80,'100',20,''),('Earthquake',9,1,100,'100',10,'Power is double if opponent is underground after using Dig'),('Egg Bomg',1,1,100,'75',10,''),('Ember',2,3,40,'100',25,'May burn opponent'),('Explosion',1,1,250,'100',5,'User faints'),('Fire Blast',2,3,110,'85',5,'May burn opponent'),('Fire Punch',2,1,75,'100',15,'May burn opponent'),('Fire Spin',2,3,35,'85',15,'Traps opponent, damaging them for 4-5 turns'),('Fissure',9,1,0,'30',5,'KO if hits'),('Flamethrower',2,3,90,'100',15,'May burn opponent'),('Flash',1,2,0,'100',20,'Lowers opponent\'s Accuracy'),('Fly',10,1,90,'95',15,'Flies up on first turn, attacks on second'),('Focus Energy',1,2,0,'0',30,'Increases crit raiot'),('Fury Attack',1,1,15,'85',20,'Hits 2-5 times'),('Fury Swipes',1,1,18,'80',15,'Hits 2-5 times'),('Glare',1,2,0,'100',30,'Paralyzes opponent'),('Growl',1,2,0,'100',40,'Lower\'s opponent\'s ATK'),('Guillotine',1,1,0,'30',5,'KO if hits'),('Gust',10,3,40,'100',35,'Hits opponent with Fly, Bounce or Sky Drop with double power'),('Harden',1,2,0,'0',30,'Raises user\'s DEF'),('Haze',6,2,0,'0',30,'Resets all stat changes'),('Headbutt',1,1,70,'100',15,'May cause flinching'),('High Jump Kick',7,1,130,'90',10,'If it misses, the user loses half their HP'),('Horn Attack',1,1,65,'100',25,''),('Horn Drill',1,1,0,'30',5,'KO if hits'),('Hydro Pump',3,3,110,'80',5,''),('Hyper Beam',1,3,150,'90',5,'User must recharge next turn'),('Hyper Fang',1,1,80,'90',15,'May cause flinching'),('Hypnosis',11,2,0,'60',20,'Puts opponent to sleep'),('Ice Beam',6,3,90,'100',10,'May freeze opponent'),('Ice Punch',6,1,75,'100',15,'May freeze opponent'),('Jump Kick',7,1,100,'95',10,'If it misses, the user loses half their HP'),('Karate Chop',7,1,50,'100',25,'High crit ratio'),('Kinesis',11,2,0,'80',15,'Lowers opponent\'s accuracy'),('Leech Life',12,1,80,'100',10,'User heals for half the damage dealt'),('Leech Seed',5,2,0,'90',10,'Drains HP from opponent every turn'),('Leer',1,2,0,'100',30,'Lowers opponent\'s DEF'),('Lick',14,1,30,'100',30,'May paralyze opponent'),('Light Screen',11,2,0,'0',30,'Halves damage from special attacks for 5 turns'),('Lovely Kiss',1,2,0,'75',10,'Puts opponent to sleep'),('Low Kick',7,1,0,'100',20,'The heavier the opponent, the stronger the attack'),('Meditate',11,2,0,'0',40,'Raises user\'s ATK'),('Mega Drain',5,3,40,'100',15,'User heals for half damage dealt'),('Mega Kick',1,1,120,'75',5,''),('Mega Punch',1,1,80,'85',20,''),('Metronome',1,2,0,'0',10,'User performs any move in game randomly'),('Mimic',1,2,0,'0',10,'Copies the opponent\'s last move'),('Minimize',1,2,0,'0',10,'Sharply raises user\'s Evasiveness'),('Mirror Move',10,2,0,'0',20,'User performs the opponent\'s last move'),('Mist',6,2,0,'0',30,'User\'s stats cannot be changed for a period of time'),('Night Shade',14,3,0,'100',15,'Inflicts damage equal to user\'s level'),('Pay Day',1,1,40,'100',20,'Money is earned after the battle'),('Peck',10,1,35,'100',35,''),('Petal Dance',5,3,120,'100',10,'User attacks for 2-3 turns and then becomes confused'),('Pin Missile',12,1,25,'95',20,'Hits 2-5 times in one turn'),('Poison Gas',8,2,0,'90',40,'Poisons opponent'),('Poison Powder',8,2,0,'75',35,'Poisons opponent'),('Poison Sting',8,1,15,'100',35,'May poison opponent'),('Pound',1,1,40,'100',35,''),('Psybeam',11,3,65,'100',20,'May confuse opponent'),('Psychic',11,3,90,'100',10,'May lower opponent\'s SDEF'),('Psywave',11,3,0,'100',15,'Inflicts damage 50-150% of user\'s level'),('Quick Attack',1,1,40,'100',30,'User attacks first'),('Rage',1,1,20,'100',20,'Raises user\'s ATK when hit');
/*!40000 ALTER TABLE `Attacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pokemon`
--

DROP TABLE IF EXISTS `Pokemon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pokemon` (
  `ID` smallint(6) DEFAULT NULL,
  `Pokemon_name` varchar(11) DEFAULT NULL,
  `Primary_type` varchar(2) DEFAULT NULL,
  `Secondary_type` varchar(2) DEFAULT NULL,
  `Avg_height` varchar(3) DEFAULT NULL,
  `Avg_weight` varchar(6) DEFAULT NULL,
  `Possible_gender` varchar(1) DEFAULT NULL,
  `Generation` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pokemon`
--

LOCK TABLES `Pokemon` WRITE;
/*!40000 ALTER TABLE `Pokemon` DISABLE KEYS */;
INSERT INTO `Pokemon` VALUES (7,'Squirtle','3','','0.5','19.8','0','1'),(8,'Wartortle','3','','1','49.6','0','1'),(9,'Blastoise','3','','1.6','188.5','0','1'),(10,'Caterpie','12','','0.3','6.4','0','1'),(11,'Metapod','12','','0.7','21.8','0','1'),(12,'Butterfree','12','10','1.1','70.5','0','1'),(13,'Weedle','12','8','0.3','7.1','0','1'),(14,'Kakuna','12','8','0.6','22','0','1'),(15,'Beedrill','12','8','1','65','0','1'),(16,'Pidgey','1','10','0.3','4','0','1'),(17,'Pidgeotto','1','10','1.1','66.1','0','1'),(18,'Pidgeot','1','10','1.5','87.1','0','1'),(19,'Rattata','1','','0.3','7.7','0','1'),(20,'Raticate','1','','0.7','40.8','0','1'),(21,'Spearow','1','10','0.3','4.4','0','1'),(22,'Fearow','1','10','1.2','83.8','0','1'),(23,'Ekans','8','','2','15.2','0','1'),(24,'Arbok','8','','3.5','143.3','0','1'),(25,'Pikachu','4','','0.4','13.2','0','1'),(26,'Raichu','4','','0.8','66.1','0','1'),(27,'Sandshrew','9','','0.6','26.5','0','1'),(28,'Sandslash','9','','1','65','0','1'),(29,'Nidoran♀','8','','0.4','15.4','1','1'),(30,'Nidorina','8','','0.8','44.1','1','1'),(31,'Nidoqueen','8','9','1.3','132.3','1','1'),(32,'Nidoran♂','8','','0.5','19.8','2','1'),(33,'Nidorino','8','','0.9','43','2','1'),(34,'Nidoking','8','9','1.4','136.7','2','1'),(35,'Clefairy','18','','0.6','16.5','0','1'),(36,'Clefable','18','','1.3','88.2','0','1'),(37,'Vulpix','2','','0.6','21.8','0','1'),(38,'Ninetales','2','','1.1','43.9','0','1'),(39,'Jigglypuff','1','18','0.5','12.1','0','1'),(40,'Wigglytuff','1','18','1','26.5','0','1'),(41,'Zubat','8','10','0.8','16.5','0','1'),(42,'Golbat','8','10','1.6','121.3','0','1'),(43,'Oddish','5','8','0.5','11.9','0','1'),(44,'Gloom','5','8','0.8','19','0','1'),(45,'Vileplume','5','8','1.2','41','0','1'),(46,'Paras','12','5','0.3','11.9','0','1'),(47,'Parasect','12','5','1','65','0','1'),(48,'Venonat','12','8','1','66.1','0','1'),(49,'Venomoth','12','8','1.5','27.6','0','1'),(50,'Diglett','9','','0.2','1.8','0','1'),(51,'Dugtrio','9','','0.7','73.4','0','1'),(52,'Meowth','1','','0.4','9.3','0','1'),(53,'Persian','1','','1','70.5','0','1'),(54,'Psyduck','3','','0.8','43.2','0','1'),(55,'Golduck','3','','1.7','168.9','0','1'),(56,'Mankey','7','','0.5','61.7','0','1'),(57,'Primeape','7','','1','70.5','0','1'),(58,'Growlithe','2','','0.7','41.9','0','1'),(59,'Arcanine','2','','1.9','341.7','0','1'),(60,'Poliwag','3','','0.6','27.3','0','1'),(61,'Poliwhirl','3','','1','44.1','0','1'),(62,'Poliwrath','3','','1.3','119','0','1'),(63,'Abra','11','','0.8','43','0','1'),(64,'Kadabra','11','','1.3','124.6','0','1'),(65,'Alakazam','11','','1.5','105.8','0','1'),(66,'Machop','7','','0.7','43','0','1'),(67,'Machoke','7','','1.5','155.4','0','1'),(68,'Machamp','7','','1.6','286.6','0','1'),(69,'Bellsprout','5','8','0.7','8.8','0','1'),(70,'Weepinbell','5','8','1','14.1','0','1'),(71,'Victreebell','5','8','1.7','34.2','0','1'),(72,'Tentacool','3','8','0.8','100.3','0','1'),(73,'Tentacruel','3','8','1.6','121.3','0','1'),(74,'Geodude','13','9','0.4','44.1','0','1'),(75,'Graveler','13','9','1','231.5','0','1'),(76,'Golem','13','9','1.4','661.4','0','1'),(77,'Ponyta','2','','1','66.1','0','1'),(78,'Rapidash','2','','1.7','209.4','0','1'),(79,'Slowpoke','3','11','1.2','79.4','0','1'),(80,'Slowbro','3','11','1.6','173.1','0','1'),(81,'Magnemite','4','17','0.3','13.2','0','1'),(82,'Magneton','4','17','1','132.3','0','1'),(83,'Farfetch\'d','1','10','0.8','33.1','0','1'),(84,'Doduo','1','10','1.4','86.4','0','1'),(85,'Dodrio','1','10','1.8','187.8','0','1'),(86,'Seel','3','','1.1','198.4','0','1'),(87,'Dewgong','3','6','1.7','264.6','0','1'),(88,'Grimer','8','','0.9','66.1','0','1'),(89,'Muk','8','','1.2','66.1','0','1'),(90,'Shellder','3','','0.3','8.8','0','1'),(91,'Cloyster','3','6','1.5','292.1','0','1'),(92,'Gastly','14','8','1.3','0.2','0','1'),(93,'Haunter','14','8','1.6','0.2','0','1'),(94,'Gengar','14','8','1.5','89.3','0','1'),(95,'Onix','13','9','8.8','463','0','1'),(96,'Drowzee','11','','1','71.4','0','1'),(97,'Hypno','11','','1.6','166.7','0','1'),(98,'Krabby','3','','0.4','14.3','0','1'),(99,'Kingler','3','','1.3','132.3','0','1'),(100,'Voltorb','4','','0.5','22.9','0','1'),(101,'Electrode','4','','1.2','146.8','0','1'),(102,'Exeggcute','5','11','0.4','5.5','0','1'),(103,'Exeggutor','5','11','2','264.6','0','1'),(104,'Cubone','9','','0.4','14.3','0','1'),(105,'Marowak','9','','1','99.2','0','1'),(106,'Hitmonlee','7','','1.5','109.8','2','1');
/*!40000 ALTER TABLE `Pokemon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Stats`
--

DROP TABLE IF EXISTS `Stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Stats` (
  `ID` smallint(6) DEFAULT NULL,
  `HP` tinyint(4) DEFAULT NULL,
  `ATK` tinyint(4) DEFAULT NULL,
  `DEF` tinyint(4) DEFAULT NULL,
  `SATK` tinyint(4) DEFAULT NULL,
  `SDEF` tinyint(4) DEFAULT NULL,
  `SPD` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Stats`
--

LOCK TABLES `Stats` WRITE;
/*!40000 ALTER TABLE `Stats` DISABLE KEYS */;
INSERT INTO `Stats` VALUES (1,3,3,3,4,4,3),(2,4,4,4,5,5,4),(3,5,5,5,6,6,5),(4,3,4,3,4,3,4),(5,4,4,4,5,4,5),(6,5,5,5,7,5,6),(7,3,3,4,3,4,3),(8,4,4,5,4,5,4),(9,5,5,6,5,7,5),(10,3,2,3,2,2,3),(11,3,2,4,2,2,2),(12,4,3,3,6,5,5),(13,3,3,2,2,2,3),(14,3,2,3,2,2,3),(15,4,6,3,3,5,5),(16,3,3,3,3,3,4),(17,4,4,4,3,3,5),(18,5,5,5,5,5,6),(19,2,4,3,2,3,4),(20,4,5,4,3,4,5),(21,3,4,2,2,2,5),(22,4,6,4,4,4,6),(23,3,4,3,3,4,4),(24,4,6,5,4,5,5),(25,3,4,3,3,3,6),(26,4,6,4,6,5,6),(27,3,5,5,2,2,3),(28,5,6,7,3,4,4),(29,4,3,4,3,3,3),(30,5,4,4,4,4,4),(31,6,6,6,5,5,5),(32,3,4,3,3,3,3),(33,4,5,4,4,4,4),(34,5,6,5,5,5,5),(35,5,3,3,4,4,3),(36,6,5,5,6,6,4),(37,3,3,3,3,4,4),(38,5,5,5,5,6,6),(39,7,3,2,3,2,2),(40,9,5,3,5,3,3),(41,3,3,3,2,3,4),(42,5,5,5,4,5,6),(43,3,3,4,5,4,3),(44,4,4,5,5,5,3),(45,5,5,5,7,6,3),(46,3,5,4,3,4,2),(47,4,6,5,4,5,2),(48,4,4,3,3,4,3),(49,5,4,4,6,5,6),(50,1,4,2,3,3,6),(51,3,6,3,3,5,8),(52,3,3,3,3,3,6),(53,4,5,4,4,4,7),(54,3,4,3,4,3,4),(55,5,5,5,6,5,5),(56,3,5,3,3,3,5),(57,4,7,4,4,5,6),(58,4,5,3,5,3,4),(59,6,7,5,6,5,6),(60,3,3,3,3,3,6),(61,4,4,4,3,3,6),(62,6,6,6,5,6,5),(63,2,2,1,7,4,6),(64,3,3,2,8,5,7),(65,4,3,3,8,6,7),(66,5,5,3,3,3,3),(67,5,6,5,3,4,3),(68,6,8,5,4,5,4),(69,3,5,3,5,2,3),(70,4,6,3,5,3,4),(71,5,7,4,6,5,5),(72,3,3,3,3,6,5),(73,5,5,4,5,7,6),(74,3,5,6,2,2,2),(75,4,6,7,3,3,3),(76,5,8,8,4,4,3),(77,3,5,4,4,4,6),(78,4,6,5,5,5,7),(79,6,4,4,3,3,1),(80,6,5,7,6,5,2),(81,2,3,5,6,4,3),(82,3,4,6,8,5,5),(83,4,6,4,4,4,4),(84,3,5,3,3,3,5),(85,4,7,5,4,4,7),(86,4,3,4,3,5,3),(87,6,5,5,5,6,5),(88,5,5,3,3,3,2),(89,7,7,5,4,6,3),(90,2,4,6,3,2,3),(91,3,6,11,5,3,5),(92,2,3,2,6,3,5),(93,3,3,3,7,4,6),(94,4,4,4,8,5,7),(95,3,3,10,2,3,5),(96,4,3,3,3,6,3),(97,5,5,5,5,7,4),(98,2,7,6,2,2,3),(99,4,8,7,3,3,5),(100,3,2,3,4,4,6);
/*!40000 ALTER TABLE `Stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Types`
--

DROP TABLE IF EXISTS `Types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Types` (
  `ID` tinyint(4) DEFAULT NULL,
  `Type` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Types`
--

LOCK TABLES `Types` WRITE;
/*!40000 ALTER TABLE `Types` DISABLE KEYS */;
INSERT INTO `Types` VALUES (1,'Normal'),(2,'Fire'),(3,'Water'),(4,'Electric'),(5,'Grass'),(6,'Ice'),(7,'Fighting'),(8,'Poison'),(9,'Ground'),(10,'Flying'),(11,'Psychic'),(12,'Bug'),(13,'Rock'),(14,'Ghost'),(15,'Dragon'),(16,'Dark'),(17,'Steel'),(18,'Fairy');
/*!40000 ALTER TABLE `Types` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-11 11:56:59
