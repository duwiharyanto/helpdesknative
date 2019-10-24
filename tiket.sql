-- MariaDB dump 10.17  Distrib 10.4.6-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: tiket
-- ------------------------------------------------------
-- Server version	10.1.37-MariaDB

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
-- Table structure for table `pc`
--

DROP TABLE IF EXISTS `pc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pc` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pc_no` varchar(10) NOT NULL,
  `pc_name` varchar(50) NOT NULL,
  `user` varchar(50) NOT NULL,
  `cpu` varchar(30) NOT NULL,
  `ram` varchar(30) NOT NULL,
  `bit` varchar(10) NOT NULL,
  `os` varchar(30) NOT NULL,
  `keyboard` varchar(30) NOT NULL,
  `mouse` varchar(30) NOT NULL,
  `monitor` varchar(30) NOT NULL,
  `software` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL,
  `ket` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pc`
--

LOCK TABLES `pc` WRITE;
/*!40000 ALTER TABLE `pc` DISABLE KEYS */;
/*!40000 ALTER TABLE `pc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiket`
--

DROP TABLE IF EXISTS `tiket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiket` (
  `id_tiket` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `pc_no` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `departemen` varchar(50) NOT NULL,
  `problem` varchar(200) NOT NULL,
  `penanganan` varchar(200) NOT NULL,
  `status` varchar(30) NOT NULL,
  PRIMARY KEY (`id_tiket`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiket`
--

LOCK TABLES `tiket` WRITE;
/*!40000 ALTER TABLE `tiket` DISABLE KEYS */;
INSERT INTO `tiket` VALUES ('06062017 0','2017-06-06','PC21','dada','','Engineering','dadadada','',''),('06062017 05:39:31','2017-06-06','Pkfasf','afgaf','haryanto.duwi@gmail.com','QC','zxbfdbfdbf','wadaw','Close'),('06062017 05:40:06','2017-06-06','sasas','asas','','Accounting','sasasasa','none','open'),('06062017054437','2017-06-06','qwqw','wqwq','','Press','wqwqwqwq','','open'),('06062017054821','2017-06-06','rehbbd','vbxcvbcxn','','Accounting','bz xvcbxvz','','open'),('06062017060739','2017-06-06','sasas','asas','','Printing','sasasa','','open'),('06062017060930','2017-06-06','212121','fsgsgds','','QC','vZVsdgasdga','','open'),('06062017060938','2017-06-06','ewew','ewew','','HRD & GA','ewewewe','','open'),('06062017080400','2017-06-06','21','hakko bio richard','','HRD & GA','wwqwqwqwqwqwqwqwqwqw','','open'),('06062017080700','2017-06-06','32323','Hakko Bio Richard','','HRD & GA','sasasas','','open'),('06062017080906','2017-06-06','2121','2121','','HRD & GA','212121','','open'),('06062017080918','2017-06-06','wwewe','eweewe','','HRD & GA','fdfdfdfd','','open'),('06062017081136','2017-06-06','ere','erer','','HRD & GA','rerer','','open'),('06062017081145','2017-06-06','rere','rere','','Printing','rerere','','open'),('06062017081153','2017-06-06','trtrt','trtrt','','Maintenance','trtrtrtr','','open'),('06062017081228','2017-06-06','sasa','sasa','','HRD & GA','sasa','','open'),('06062017081251','2017-06-06','sasasa','sas','','Maintenance','sasasa','','open'),('06062017081310','2017-06-06','sas','as','','Maintenance','sa','','open'),('06062017081533','2017-06-06','test','test','','Injection','computer ram error','','open'),('06062017081559','2017-06-06','sas','asa','','Accounting','sasa','','open'),('06062017081614','2017-06-06','PC02','Test','','HRD & GA','Test','','open'),('06062017101445','2017-06-06','ewew','wew','','Maintenance','wewewe','','open'),('06062017101732','2017-06-06','sasa','asa','','HRD & GA','sasa','','open'),('07062017062819','2017-06-07','121','1212','','Press','12121','','open'),('07062017062849','2017-06-07','434','34','','Maintenance','3434','','open'),('24102019102301','2019-10-24','03','Duwi','haryanto.duwi@gmail.com','Billing','Printer habis, mohon diisi ulang','Sudah diganti','Close');
/*!40000 ALTER TABLE `tiket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `no_hp` int(14) NOT NULL,
  `level` varchar(10) NOT NULL,
  `gambar` varchar(150) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Tsuch1y4','tsuch1y4','Administrator',2147483647,'Admin','gambar_admin/Tulips.jpg'),(2,'hakko','hakko','Hakko Bio Richard',2147483647,'User','gambar_admin/Chrysanthemum.jpg'),(3,'duwi','duwi','duwi',2147483647,'Admin','gambar_admin/MQ9A7204.jpg');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-24 15:34:40
