CREATE DATABASE  IF NOT EXISTS `library` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `library`;
-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: library
-- ------------------------------------------------------
-- Server version	8.0.13

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `password` int(11) DEFAULT NULL,
  `seq_Q` varchar(45) DEFAULT NULL,
  `answer` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'shiuly','parvin',345,'What is your favorite name?','book');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `book` (
  `book_id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `edition` int(11) DEFAULT NULL,
  `publiher` varchar(45) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  `Pages` int(11) DEFAULT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (68,'Java',2,'uml',500,200),(137,'Mathematics',2,'World',500,300),(422,'math',3,'NU',700,200),(659,'physics',3,'dhaka',700,200),(733,'War',2,'world',1000,300),(843,'Bacis English',5,'japan',2000,200);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issue`
--

DROP TABLE IF EXISTS `issue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `issue` (
  `book_id` int(11) DEFAULT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Edition` int(11) DEFAULT NULL,
  `Publisher` varchar(45) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `pages` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `sname` varchar(45) DEFAULT NULL,
  `fname` varchar(45) DEFAULT NULL,
  `cource` varchar(45) DEFAULT NULL,
  `branch` varchar(45) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `DateofIssue` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue`
--

LOCK TABLES `issue` WRITE;
/*!40000 ALTER TABLE `issue` DISABLE KEYS */;
INSERT INTO `issue` VALUES (422,'math',3,'NU',700,200,905,'Joy','md.Rahman','M.sc','Mirpur',2019,3,'4-2-2019'),(733,'War',2,'world',1000,300,145,'Anik','md.tohidul islam','M.sc','Dhanmodi',2019,5,'2-2-2019'),(659,'physics',3,'dhaka',700,200,472,'Samim','Amin','Math','Dinajpur',2019,1,'2-2-2019');
/*!40000 ALTER TABLE `issue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `return100`
--

DROP TABLE IF EXISTS `return100`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `return100` (
  `student_id` int(11) DEFAULT NULL,
  `sname` varchar(45) DEFAULT NULL,
  `fname` varchar(45) DEFAULT NULL,
  `cource` varchar(45) DEFAULT NULL,
  `branch` varchar(45) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `book_id` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `edition` int(11) DEFAULT NULL,
  `publisher` varchar(45) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `pages` int(11) DEFAULT NULL,
  `dateofIssue` varchar(45) DEFAULT NULL,
  `dateofReturn` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `return100`
--

LOCK TABLES `return100` WRITE;
/*!40000 ALTER TABLE `return100` DISABLE KEYS */;
INSERT INTO `return100` VALUES (905,'Joy','md.Rahman','M.sc','Mirpur',2019,3,'68','Java',2,'uml',500,200,'5','4'),(905,'Joy','md.Rahman','M.sc','Mirpur',2019,3,'68','Java',2,'uml',500,200,'20-2-2019','4-2-2019'),(170,'shiuly','Md.Anisur Rahman','Java','Dhanmodi',2019,3,'137','Mathematics',2,'World',500,300,'Feb 3, 2019','4-2-2019');
/*!40000 ALTER TABLE `return100` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `father_name` varchar(45) DEFAULT NULL,
  `course` varchar(45) DEFAULT NULL,
  `branch` varchar(45) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (145,'Anik','md.tohidul islam','M.sc','Dhanmodi',2019,5),(170,'shiuly','Md.Anisur Rahman','Java','Dhanmodi',2019,3),(472,'Samim','Amin','Math','Dinajpur',2019,1),(733,'jahid','mr.amin','Java','Khulna',2019,1),(905,'Joy','md.Rahman','M.sc','Mirpur',2019,3);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-06  8:12:28
