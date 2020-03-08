-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: solasta_db
-- ------------------------------------------------------
-- Server version	8.0.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `solasta20ci`
--

DROP TABLE IF EXISTS `solasta20ci`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solasta20ci` (
  `ci_id` int(11) NOT NULL AUTO_INCREMENT,
  `solci_id` int(11) NOT NULL,
  `con_name` varchar(30) NOT NULL,
  `con_num` varchar(20) NOT NULL,
  `con_email` varchar(30) NOT NULL,
  PRIMARY KEY (`ci_id`),
  KEY `solci_id` (`solci_id`),
  CONSTRAINT `solasta20ci_ibfk_1` FOREIGN KEY (`solci_id`) REFERENCES `solasta20main` (`sol_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solasta20ci`
--

LOCK TABLES `solasta20ci` WRITE;
/*!40000 ALTER TABLE `solasta20ci` DISABLE KEYS */;
INSERT INTO `solasta20ci` VALUES (4,1,'DIDLA JOEL','7288801574','joel'),(5,2,'PREETISHA MANDAVI','9340054445','preetisha'),(6,2,'DIDLA JOEL','7288801574','joel'),(7,3,'PREETISHA MANDAVI','9340054445','preetisha'),(8,3,'DIDLA JOEL','7288801574','joel'),(9,4,'DIDLA JOEL','7288801574','joel'),(10,4,'PREETISHA MANDAVI','9340054445','preetisha'),(11,5,'PREETISHA MANDAVI','9340054445','preetisha'),(12,5,'DIDLA JOEL','7288801574','joel'),(13,5,'DIDLA JOEL','7288801574','joel'),(14,6,'Vibhor Srivastava','9506859353','vibhor'),(15,6,'Amit Sharma','7049452169','amit sharma'),(16,6,'Ashutosh Hathidara','8320758513','ashutosh sharma'),(17,6,'Nischay Pandey','8008457009','nischay');
/*!40000 ALTER TABLE `solasta20ci` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solasta20main`
--

DROP TABLE IF EXISTS `solasta20main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solasta20main` (
  `sol_id` int(11) NOT NULL,
  `tech_cult` varchar(25) NOT NULL,
  `category` varchar(40) NOT NULL,
  `event` varchar(40) NOT NULL,
  `description` varchar(700) NOT NULL,
  `rules` varchar(700) NOT NULL,
  `prizes` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`sol_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solasta20main`
--

LOCK TABLES `solasta20main` WRITE;
/*!40000 ALTER TABLE `solasta20main` DISABLE KEYS */;
INSERT INTO `solasta20main` VALUES (1,'Cultural','Art','WHAT`S IN YOUR MIND','First, participants will be given 4 A4 size sheets and a topic(any TV series,movies).For example let Avengers be the topic.Then they will have to draw or paint whatever comes to their mind.Since it consists of 4 rounds like this,4 different topics will be given and students will Be judged on the basis of their creativity and representation.','duration 30-40 minutes\r\nIdeas from external sources are not allowed\r\nmaterials required: A4 sheets, art supplies','1,200'),(2,'Cultural','Art','RUN TO GET PAINTED','The hands of each contestant will be tied up and a random coloured sketch pen will be provided on the spot.The participant will have to run to get it painted/scribbled from non participants and take a selfie with them along with their drawing.The person reaching the end point within the deadline with more selfies will win the game.','Only one person should paint at a time.\r\nWithout a picture a drawn figure won’t be considered.\r\nOnly the sketch pen provided should be used to draw.(Volunteer)\r\nThe time limit should be strictly followed\r\nmaterials REQUIRED: Sketch pens, mobile phones with a front camera.','1,000/-'),(3,'Cultural','Art','#IGRAM','Participants should click pictures in front of the photo booth with the #SOLATSA prop and be upload it on Instagram.The post with maximum likes by the end of the third day will be judged the winner.','fake likes won`t be entertained\r\ndo not fail to include hashtag(#SOLASTA) in your post','1,000/-'),(4,'Cultural','Art','Face smearing /tattoomaking','Participants will be provided with poster colors or fabric colors. They have to paint their friend`s/acquaintance`s face with those colors within the given time limit. The one with the best face painting wins. In tattoo making the participant needs to paint tattoos on their friend`s body part (be it palm, shoulder, face, neck)within the given time limit. The one with the best and creative tattoo wins.','Time limit is to be strictly followed.\r\nGet along your body part to get painted.','1,000/-'),(5,'Cultural','Art','Listen to Draw','Firstly participants will be made to hear music with three consecutive chances(only for music)and then they will be provided with A4/chart paper. They have to draw a picture which relates to the music within the specified time limit. Who draws most relatively Is considered as the winner.','duration : 40 min\r\nTime limit is to be strictly followed.\r\nIf the music is skipped participant cannot rewind it. In case if the participant loses All the chances last chance is fixed to continue his next step.\r\nIf the A4 sheet/Chart paper gets damaged extras will not be provided.\r\nmaterials Required: A4 sheet/chart paper, art equipments, mobile with headphones.\r\n','800/-'),(6,'Technical','Coding','Reverse Coding','Put on your thinking caps and train your natural neural networks. For reverse coding will have you recognizing patterns in functions and replicating them. You will be given a set of executable files that accept input and give an output after performing some function on them. Your task is to figure out what function is hidden in the code and replicate it.','it is an online event\r\ntotal duration is 2 hrs\r\nCode directly from hackerrank platform, which supports over 30 languages.\r\nAll submissions are run through a plagiarism detector. Any case of code plagiarism will disqualify both users from the contest.\r\nYou will be given output of the certain algorithm, you have to find it in accordance with the input test case.\r\nJoin the Competition at this link :\r\nhttps://www.hackerrank.com/reverse-coding-1-2','3,000'),(7,'Technical','Coding','Code Battle','Coding competition consisting of 5 question.','it is an online event\r\nCode directly from hackerrank platform, which supports over 30 languages.\r\nAll submissions are run through a plagiarism detector. Any case of code plagiarism will disqualify both users from the contest.\r\nThere will be 5 Algorithmic questions. Participants have to solve them within the given time duration using any one of the programming languages.\r\nJoin the Competition at this link :\r\nhttps://www.hackerrank.com/code-battle-solasta','5,000');
/*!40000 ALTER TABLE `solasta20main` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-08 14:58:55
