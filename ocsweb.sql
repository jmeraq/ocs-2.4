-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: 192.168.1.113    Database: ocsweb
-- ------------------------------------------------------
-- Server version	5.5.5-10.2.12-MariaDB-10.2.12+maria~jessie

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
-- Table structure for table `accesslog`
--

DROP TABLE IF EXISTS `accesslog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accesslog` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HARDWARE_ID` int(11) NOT NULL,
  `USERID` varchar(255) DEFAULT NULL,
  `LOGDATE` datetime DEFAULT NULL,
  `PROCESSES` text DEFAULT NULL,
  PRIMARY KEY (`HARDWARE_ID`,`ID`),
  KEY `USERID` (`USERID`),
  KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accesslog`
--

LOCK TABLES `accesslog` WRITE;
/*!40000 ALTER TABLE `accesslog` DISABLE KEYS */;
/*!40000 ALTER TABLE `accesslog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accountinfo`
--

DROP TABLE IF EXISTS `accountinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accountinfo` (
  `HARDWARE_ID` int(11) NOT NULL,
  `TAG` varchar(255) DEFAULT 'NA',
  PRIMARY KEY (`HARDWARE_ID`),
  KEY `TAG` (`TAG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accountinfo`
--

LOCK TABLES `accountinfo` WRITE;
/*!40000 ALTER TABLE `accountinfo` DISABLE KEYS */;
INSERT INTO `accountinfo` VALUES (3,'NA');
/*!40000 ALTER TABLE `accountinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accountinfo_config`
--

DROP TABLE IF EXISTS `accountinfo_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accountinfo_config` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME_ACCOUNTINFO` varchar(255) DEFAULT NULL,
  `TYPE` int(11) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `ID_TAB` int(11) DEFAULT NULL,
  `COMMENT` varchar(255) DEFAULT NULL,
  `SHOW_ORDER` int(11) NOT NULL,
  `ACCOUNT_TYPE` varchar(255) DEFAULT NULL,
  `DEFAULT_VALUE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accountinfo_config`
--

LOCK TABLES `accountinfo_config` WRITE;
/*!40000 ALTER TABLE `accountinfo_config` DISABLE KEYS */;
INSERT INTO `accountinfo_config` VALUES (1,'TAG',0,'TAG',1,'TAG',1,'COMPUTERS',NULL),(2,'TAG',0,'TAG',1,'TAG',1,'SNMP',NULL);
/*!40000 ALTER TABLE `accountinfo_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batteries`
--

DROP TABLE IF EXISTS `batteries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `batteries` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HARDWARE_ID` int(11) NOT NULL,
  `LOCATION` varchar(255) DEFAULT NULL,
  `MANUFACTURER` varchar(255) DEFAULT NULL,
  `MANUFACTUREDATE` varchar(10) DEFAULT NULL,
  `SERIALNUMBER` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `CHEMISTRY` varchar(20) DEFAULT NULL,
  `DESIGNCAPACITY` varchar(10) DEFAULT NULL,
  `DESIGNVOLTAGE` varchar(20) DEFAULT NULL,
  `SBDSVERSION` varchar(255) DEFAULT NULL,
  `MAXERROR` int(10) DEFAULT NULL,
  `OEMSPECIFIC` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`,`HARDWARE_ID`),
  KEY `NAME` (`NAME`),
  KEY `MANUFACTURER` (`MANUFACTURER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batteries`
--

LOCK TABLES `batteries` WRITE;
/*!40000 ALTER TABLE `batteries` DISABLE KEYS */;
/*!40000 ALTER TABLE `batteries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bios`
--

DROP TABLE IF EXISTS `bios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bios` (
  `HARDWARE_ID` int(11) NOT NULL,
  `SMANUFACTURER` varchar(255) DEFAULT NULL,
  `SMODEL` varchar(255) DEFAULT NULL,
  `SSN` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `BMANUFACTURER` varchar(255) DEFAULT NULL,
  `BVERSION` varchar(255) DEFAULT NULL,
  `BDATE` varchar(255) DEFAULT NULL,
  `ASSETTAG` varchar(255) DEFAULT NULL,
  `MMANUFACTURER` varchar(255) DEFAULT NULL,
  `MMODEL` varchar(255) DEFAULT NULL,
  `MSN` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`HARDWARE_ID`),
  KEY `SSN` (`SSN`),
  KEY `ASSETTAG` (`ASSETTAG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bios`
--

LOCK TABLES `bios` WRITE;
/*!40000 ALTER TABLE `bios` DISABLE KEYS */;
INSERT INTO `bios` VALUES (3,'System manufacturer','System Product Name','System Serial Number','Desktop','American Megatrends Inc.','0607','23/03/2017','Default string',NULL,NULL,NULL);
/*!40000 ALTER TABLE `bios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blacklist_macaddresses`
--

DROP TABLE IF EXISTS `blacklist_macaddresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blacklist_macaddresses` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MACADDRESS` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`MACADDRESS`),
  KEY `ID` (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blacklist_macaddresses`
--

LOCK TABLES `blacklist_macaddresses` WRITE;
/*!40000 ALTER TABLE `blacklist_macaddresses` DISABLE KEYS */;
INSERT INTO `blacklist_macaddresses` VALUES (1,'00:00:00:00:00:00'),(2,'FF:FF:FF:FF:FF:FF'),(3,'44:45:53:54:00:00'),(4,'44:45:53:54:00:01'),(5,'00:01:02:7D:9B:1C'),(6,'00:08:A1:46:06:35'),(7,'00:08:A1:66:E2:1A'),(8,'00:09:DD:10:37:68'),(9,'00:0F:EA:9A:E2:F0'),(10,'00:10:5A:72:71:F3'),(11,'00:11:11:85:08:8B'),(12,'10:11:11:11:11:11'),(13,'44:45:53:54:61:6F'),(14,'');
/*!40000 ALTER TABLE `blacklist_macaddresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blacklist_serials`
--

DROP TABLE IF EXISTS `blacklist_serials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blacklist_serials` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SERIAL` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`SERIAL`),
  KEY `ID` (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blacklist_serials`
--

LOCK TABLES `blacklist_serials` WRITE;
/*!40000 ALTER TABLE `blacklist_serials` DISABLE KEYS */;
INSERT INTO `blacklist_serials` VALUES (1,'N/A'),(2,'(null string)'),(3,'INVALID'),(4,'SYS-1234567890'),(5,'SYS-9876543210'),(6,'SN-12345'),(7,'SN-1234567890'),(8,'1111111111'),(9,'1111111'),(10,'1'),(11,'0123456789'),(12,'12345'),(13,'123456'),(14,'1234567'),(15,'12345678'),(16,'123456789'),(17,'1234567890'),(18,'123456789000'),(19,'12345678901234567'),(20,'0000000000'),(21,'000000000'),(22,'00000000'),(23,'0000000'),(24,'000000'),(25,'NNNNNNN'),(26,'xxxxxxxxxxx'),(27,'EVAL'),(28,'IATPASS'),(29,'none'),(30,'To Be Filled By O.E.M.'),(31,'Tulip Computers'),(32,'Serial Number xxxxxx'),(33,'SN-123456fvgv3i0b8o5n6n7k'),(34,'');
/*!40000 ALTER TABLE `blacklist_serials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blacklist_subnet`
--

DROP TABLE IF EXISTS `blacklist_subnet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blacklist_subnet` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SUBNET` varchar(20) NOT NULL DEFAULT '',
  `MASK` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`SUBNET`,`MASK`),
  KEY `ID` (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blacklist_subnet`
--

LOCK TABLES `blacklist_subnet` WRITE;
/*!40000 ALTER TABLE `blacklist_subnet` DISABLE KEYS */;
/*!40000 ALTER TABLE `blacklist_subnet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `NAME` varchar(50) NOT NULL,
  `IVALUE` int(11) DEFAULT NULL,
  `TVALUE` varchar(255) DEFAULT NULL,
  `COMMENTS` text DEFAULT NULL,
  PRIMARY KEY (`NAME`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES ('FREQUENCY',0,'','Specify the frequency (days) of inventories. (0: inventory at each login. -1: no inventory)'),('PROLOG_FREQ',24,'','Specify the frequency (hours) of prolog, on agents'),('IPDISCOVER',2,'','Max number of computers per gateway retrieving IP on the network'),('INVENTORY_DIFF',1,'','Activate/Deactivate inventory incremental writing'),('IPDISCOVER_LATENCY',100,'','Default latency between two arp requests'),('INVENTORY_TRANSACTION',1,'','Enable/disable db commit at each inventory section'),('REGISTRY',0,'','Activates or not the registry query function'),('IPDISCOVER_MAX_ALIVE',7,'','Max number of days before an Ip Discover computer is replaced'),('DEPLOY',1,'','Activates or not the automatic deployment option'),('UPDATE',0,'','Activates or not the update feature'),('TRACE_DELETED',0,'','Trace deleted/duplicated computers (Activated by GLPI)'),('LOGLEVEL',0,'','ocs engine loglevel'),('AUTO_DUPLICATE_LVL',7,'','Duplicates bitmap'),('DOWNLOAD',0,'','Activate softwares auto deployment feature'),('DOWNLOAD_CYCLE_LATENCY',60,'','Time between two cycles (seconds)'),('DOWNLOAD_PERIOD_LENGTH',10,'','Number of cycles in a period'),('DOWNLOAD_FRAG_LATENCY',10,'','Time between two downloads (seconds)'),('DOWNLOAD_PERIOD_LATENCY',1,'','Time between two periods (seconds)'),('DOWNLOAD_TIMEOUT',30,'','Validity of a package (in days)'),('DOWNLOAD_PACK_DIR',0,'/var/lib/ocsinventory-reports','Directory for download files'),('IPDISCOVER_IPD_DIR',0,'/var/lib/ocsinventory-reports','Directory for Ipdiscover files'),('DOWNLOAD_SERVER_URI',0,'$IP$/local','Server url used for group of server'),('DOWNLOAD_SERVER_DOCROOT',0,'d:\\tele_ocs','Server directory used for group of server'),('LOCK_REUSE_TIME',600,'','Validity of a computer\'s lock'),('INVENTORY_WRITE_DIFF',0,'','Configure engine to make a differential update of inventory sections (row level). Lower DB backend load, higher frontend load'),('INVENTORY_CACHE_ENABLED',1,'','Enable some stuff to improve DB queries, especially for GUI multicriteria searching system'),('DOWNLOAD_GROUPS_TRACE_EVENTS',1,'','Specify if you want to track packages affected to a group on computer\'s level'),('ENABLE_GROUPS',1,'','Enable the computer\'s groups feature'),('GROUPS_CACHE_OFFSET',43200,'','Random number computed in the defined range. Designed to avoid computing many groups in the same process'),('GROUPS_CACHE_REVALIDATE',43200,'','Specify the validity of computer\'s groups (default: compute it once a day - see offset)'),('IPDISCOVER_BETTER_THRESHOLD',1,'','Specify the minimal difference to replace an ipdiscover agent'),('IPDISCOVER_NO_POSTPONE',0,'','Disable the time before a first election (not recommended)'),('IPDISCOVER_USE_GROUPS',1,'','Enable groups for ipdiscover (for example, you might want to prevent some groups'),('GENERATE_OCS_FILES',0,'','Use with ocsinventory-injector, enable the multi entities feature'),('OCS_FILES_FORMAT',0,'OCS','Generate either compressed file or clear XML text'),('OCS_FILES_OVERWRITE',0,'','Specify if you want to keep trace of all inventory between to synchronisation with the higher level server'),('OCS_FILES_PATH',0,'/tmp','Path to ocs files directory (must be writeable)'),('OCS_SERVER_ADDRESS',0,'127.0.0.1','Ocs serveur ip for plugin webservice'),('PROLOG_FILTER_ON',0,'','Enable prolog filter stack'),('INVENTORY_FILTER_ENABLED',0,'','Enable core filter system to modify some things \"on the fly\"'),('INVENTORY_FILTER_FLOOD_IP',0,'','Enable inventory flooding filter. A dedicated ipaddress ia allowed to send a new computer only once in this period'),('INVENTORY_FILTER_FLOOD_IP_CACHE_TIME',300,'','Period definition for INVENTORY_FILTER_FLOOD_IP'),('INVENTORY_FILTER_ON',0,'','Enable inventory filter stack'),('GUI_REPORT_RAM_MAX',512,'','Filter on RAM for console page'),('GUI_REPORT_RAM_MINI',128,'','Filter on RAM for console page'),('GUI_REPORT_NOT_VIEW',3,'','Filter on DAY for console page'),('GUI_REPORT_PROC_MINI',1000,'','Filter on Hard Drive for console page'),('GUI_REPORT_DD_MAX',4000,'','Filter on Hard Drive for console page'),('GUI_REPORT_PROC_MAX',3000,'','Filter on PROCESSOR for console page'),('GUI_REPORT_DD_MINI',500,'','Filter on PROCESSOR for console page'),('GUI_REPORT_AGIN_MACH',30,'','Filter on lastdate for console page'),('TAB_ACCOUNTAG_1',1,'TAG','Default TAB on computers accountinfo'),('TAB_ACCOUNTSNMP_1',1,'TAG','Default TAB on snmp accountinfo'),('SNMP_INVENTORY_DIFF',1,NULL,'Configure engine to update snmp inventory regarding to snmp_laststate table (lower DB backend load)'),('LOG_DIR',0,'/var/lib/ocsinventory-reports','Directory for logs files'),('WARN_UPDATE',1,'1','Warn user if an update is available'),('INVENTORY_ON_STARTUP',1,'1','Launch inventory on agent service statup'),('INVENTORY_CACHE_REVALIDATE',7,'','the engine will clean the inventory cache structures'),('GUI_VERSION',0,'7011','Version of the installed GUI and database'),('SESSION_VALIDITY_TIME',600,'','Validity of a session (prolog=>postinventory)'),('DOWNLOAD_REDISTRIB',1,'','Use redistribution servers'),('LOG_SCRIPT',0,'/var/lib/ocsinventory-reports','Directory for logs scripts files'),('WOL_PORT',0,'7,9','Wol ports'),('PASSWORD_VERSION',1,'PASSWORD_BCRYPT','Password encryption version');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conntrack`
--

DROP TABLE IF EXISTS `conntrack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conntrack` (
  `IP` varchar(255) NOT NULL DEFAULT '',
  `TIMESTAMP` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`IP`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conntrack`
--

LOCK TABLES `conntrack` WRITE;
/*!40000 ALTER TABLE `conntrack` DISABLE KEYS */;
/*!40000 ALTER TABLE `conntrack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `controllers`
--

DROP TABLE IF EXISTS `controllers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `controllers` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HARDWARE_ID` int(11) NOT NULL,
  `MANUFACTURER` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `CAPTION` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `VERSION` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`HARDWARE_ID`,`ID`),
  KEY `ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `controllers`
--

LOCK TABLES `controllers` WRITE;
/*!40000 ALTER TABLE `controllers` DISABLE KEYS */;
INSERT INTO `controllers` VALUES (13,3,'Intel Corporation','Intel(R) 200 Series Chipset Family SATA AHCI Controller','Intel(R) 200 Series Chipset Family SATA AHCI Controller','Intel(R) 200 Series Chipset Family SATA AHCI Controller','','IDE Controller'),(14,3,'Microsoft','Microsoft Storage Spaces Controller','Microsoft Storage Spaces Controller','Microsoft Storage Spaces Controller','','SCSI Controller'),(15,3,'Generic USB xHCI Host Controller','Controlador de host eXtensible Intel(R) USB 3.0 - 1.0 (Microsoft)','Controlador de host eXtensible Intel(R) USB 3.0 - 1.0 (Microsoft)','USB xHCI Compliant Host Controller','','USB Controller'),(16,3,'ASMedia Technology Inc','ASMedia USB3.1 eXtensible Host Controller','ASMedia USB3.1 eXtensible Host Controller','ASMedia USB3.1 eXtensible Host Controller','','USB Controller');
/*!40000 ALTER TABLE `controllers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cpus`
--

DROP TABLE IF EXISTS `cpus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cpus` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HARDWARE_ID` int(11) NOT NULL,
  `MANUFACTURER` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `SERIALNUMBER` varchar(255) DEFAULT NULL,
  `SPEED` varchar(255) DEFAULT NULL,
  `CORES` int(11) DEFAULT NULL,
  `L2CACHESIZE` varchar(255) DEFAULT NULL,
  `CPUARCH` varchar(255) DEFAULT NULL,
  `DATA_WIDTH` int(11) DEFAULT NULL,
  `CURRENT_ADDRESS_WIDTH` int(11) DEFAULT NULL,
  `LOGICAL_CPUS` int(11) DEFAULT NULL,
  `VOLTAGE` varchar(255) DEFAULT NULL,
  `CURRENT_SPEED` varchar(255) DEFAULT NULL,
  `SOCKET` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`,`HARDWARE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cpus`
--

LOCK TABLES `cpus` WRITE;
/*!40000 ALTER TABLE `cpus` DISABLE KEYS */;
INSERT INTO `cpus` VALUES (3,3,'GenuineIntel','Intel(R) Core(TM) i5-7400 CPU @ 3.00GHz','CPU Enabled','3001',4,'1024','x86_64',64,64,4,'','3001','LGA1151');
/*!40000 ALTER TABLE `cpus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deleted_equiv`
--

DROP TABLE IF EXISTS `deleted_equiv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deleted_equiv` (
  `DATE` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `DELETED` varchar(255) NOT NULL,
  `EQUIVALENT` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deleted_equiv`
--

LOCK TABLES `deleted_equiv` WRITE;
/*!40000 ALTER TABLE `deleted_equiv` DISABLE KEYS */;
/*!40000 ALTER TABLE `deleted_equiv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deploy`
--

DROP TABLE IF EXISTS `deploy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deploy` (
  `NAME` varchar(255) NOT NULL,
  `CONTENT` longblob NOT NULL,
  PRIMARY KEY (`NAME`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deploy`
--

LOCK TABLES `deploy` WRITE;
/*!40000 ALTER TABLE `deploy` DISABLE KEYS */;
/*!40000 ALTER TABLE `deploy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devices`
--

DROP TABLE IF EXISTS `devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `devices` (
  `HARDWARE_ID` int(11) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `IVALUE` int(11) DEFAULT NULL,
  `TVALUE` varchar(255) DEFAULT NULL,
  `COMMENTS` text DEFAULT NULL,
  KEY `HARDWARE_ID` (`HARDWARE_ID`),
  KEY `TVALUE` (`TVALUE`),
  KEY `IVALUE` (`IVALUE`),
  KEY `NAME` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devices`
--

LOCK TABLES `devices` WRITE;
/*!40000 ALTER TABLE `devices` DISABLE KEYS */;
/*!40000 ALTER TABLE `devices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devicetype`
--

DROP TABLE IF EXISTS `devicetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `devicetype` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devicetype`
--

LOCK TABLES `devicetype` WRITE;
/*!40000 ALTER TABLE `devicetype` DISABLE KEYS */;
/*!40000 ALTER TABLE `devicetype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dico_ignored`
--

DROP TABLE IF EXISTS `dico_ignored`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dico_ignored` (
  `EXTRACTED` varchar(255) NOT NULL,
  PRIMARY KEY (`EXTRACTED`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dico_ignored`
--

LOCK TABLES `dico_ignored` WRITE;
/*!40000 ALTER TABLE `dico_ignored` DISABLE KEYS */;
/*!40000 ALTER TABLE `dico_ignored` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dico_soft`
--

DROP TABLE IF EXISTS `dico_soft`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dico_soft` (
  `EXTRACTED` varchar(255) NOT NULL,
  `FORMATTED` varchar(255) NOT NULL,
  PRIMARY KEY (`EXTRACTED`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dico_soft`
--

LOCK TABLES `dico_soft` WRITE;
/*!40000 ALTER TABLE `dico_soft` DISABLE KEYS */;
/*!40000 ALTER TABLE `dico_soft` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `download_affect_rules`
--

DROP TABLE IF EXISTS `download_affect_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `download_affect_rules` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RULE` int(11) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `CFIELD` varchar(20) NOT NULL,
  `OP` varchar(20) NOT NULL,
  `COMPTO` varchar(20) NOT NULL,
  `SERV_VALUE` varchar(20) DEFAULT NULL,
  `RULE_NAME` varchar(200) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `download_affect_rules`
--

LOCK TABLES `download_affect_rules` WRITE;
/*!40000 ALTER TABLE `download_affect_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `download_affect_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `download_available`
--

DROP TABLE IF EXISTS `download_available`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `download_available` (
  `FILEID` varchar(255) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `FRAGMENTS` int(11) NOT NULL,
  `SIZE` int(11) NOT NULL,
  `OSNAME` varchar(255) NOT NULL,
  `COMMENT` text DEFAULT NULL,
  `ID_WK` int(11) DEFAULT NULL,
  `DELETED` int(1) DEFAULT 0,
  PRIMARY KEY (`FILEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `download_available`
--

LOCK TABLES `download_available` WRITE;
/*!40000 ALTER TABLE `download_available` DISABLE KEYS */;
/*!40000 ALTER TABLE `download_available` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `download_enable`
--

DROP TABLE IF EXISTS `download_enable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `download_enable` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FILEID` varchar(255) NOT NULL,
  `INFO_LOC` varchar(255) NOT NULL,
  `PACK_LOC` varchar(255) NOT NULL,
  `CERT_PATH` varchar(255) DEFAULT NULL,
  `CERT_FILE` varchar(255) DEFAULT NULL,
  `SERVER_ID` int(11) DEFAULT NULL,
  `GROUP_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FILEID` (`FILEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `download_enable`
--

LOCK TABLES `download_enable` WRITE;
/*!40000 ALTER TABLE `download_enable` DISABLE KEYS */;
/*!40000 ALTER TABLE `download_enable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `download_history`
--

DROP TABLE IF EXISTS `download_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `download_history` (
  `HARDWARE_ID` int(11) NOT NULL,
  `PKG_ID` int(11) NOT NULL DEFAULT 0,
  `PKG_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`HARDWARE_ID`,`PKG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `download_history`
--

LOCK TABLES `download_history` WRITE;
/*!40000 ALTER TABLE `download_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `download_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `download_servers`
--

DROP TABLE IF EXISTS `download_servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `download_servers` (
  `HARDWARE_ID` int(11) NOT NULL,
  `URL` varchar(250) NOT NULL,
  `ADD_PORT` int(11) NOT NULL,
  `ADD_REP` varchar(250) NOT NULL,
  `GROUP_ID` int(11) NOT NULL,
  PRIMARY KEY (`HARDWARE_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `download_servers`
--

LOCK TABLES `download_servers` WRITE;
/*!40000 ALTER TABLE `download_servers` DISABLE KEYS */;
/*!40000 ALTER TABLE `download_servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `downloadwk_conf_values`
--

DROP TABLE IF EXISTS `downloadwk_conf_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `downloadwk_conf_values` (
  `FIELD` int(11) DEFAULT NULL,
  `VALUE` varchar(100) DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DEFAULT_FIELD` int(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `downloadwk_conf_values`
--

LOCK TABLES `downloadwk_conf_values` WRITE;
/*!40000 ALTER TABLE `downloadwk_conf_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `downloadwk_conf_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `downloadwk_fields`
--

DROP TABLE IF EXISTS `downloadwk_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `downloadwk_fields` (
  `TAB` varchar(100) DEFAULT NULL,
  `FIELD` varchar(100) DEFAULT NULL,
  `TYPE` int(11) DEFAULT NULL,
  `LBL` varchar(100) DEFAULT NULL,
  `MUST_COMPLETED` int(11) DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VALUE` varchar(255) DEFAULT NULL,
  `DEFAULT_FIELD` int(1) DEFAULT NULL,
  `RESTRICTED` int(1) DEFAULT NULL,
  `LINK_STATUS` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `downloadwk_fields`
--

LOCK TABLES `downloadwk_fields` WRITE;
/*!40000 ALTER TABLE `downloadwk_fields` DISABLE KEYS */;
INSERT INTO `downloadwk_fields` VALUES ('1','USER',3,'1038',1,1,'loggeduser',1,0,0),('2','NAME_TELEDEPLOY',0,'1037',1,2,'',1,0,0),('2','INFO_PACK',0,'53',1,3,'',1,0,0),('3','PRIORITY',2,'1039',1,4,'',1,0,0),('3','NOTIF_USER',2,'1040',1,5,'',1,0,0),('3','REPORT_USER',2,'1041',1,6,'',1,0,0),('3','REBOOT',2,'1042',1,7,'',1,0,0),('4','VALID_INSTALL',6,'1043',1,8,'',1,0,0),('4','STATUS',2,'1046',0,9,'2',1,1,0),('5','LIST_HISTO',10,'1052',0,10,'select AUTHOR,DATE,ACTION from downloadwk_history where id_dde=%s$$$$OLD_MODIF',1,0,0);
/*!40000 ALTER TABLE `downloadwk_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `downloadwk_history`
--

DROP TABLE IF EXISTS `downloadwk_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `downloadwk_history` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_DDE` int(11) DEFAULT NULL,
  `AUTHOR` varchar(255) DEFAULT NULL,
  `DATE` date DEFAULT NULL,
  `ACTION` longtext DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `downloadwk_history`
--

LOCK TABLES `downloadwk_history` WRITE;
/*!40000 ALTER TABLE `downloadwk_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `downloadwk_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `downloadwk_pack`
--

DROP TABLE IF EXISTS `downloadwk_pack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `downloadwk_pack` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LOGIN_USER` varchar(255) DEFAULT NULL,
  `GROUP_USER` varchar(255) DEFAULT NULL,
  `Q_DATE` int(11) DEFAULT NULL,
  `fields_1` varchar(255) DEFAULT NULL,
  `fields_2` varchar(255) DEFAULT NULL,
  `fields_3` varchar(255) DEFAULT NULL,
  `fields_4` varchar(255) DEFAULT NULL,
  `fields_5` varchar(255) DEFAULT NULL,
  `fields_6` varchar(255) DEFAULT NULL,
  `fields_7` varchar(255) DEFAULT NULL,
  `fields_8` varchar(255) DEFAULT NULL,
  `fields_9` varchar(255) DEFAULT NULL,
  `fields_10` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `downloadwk_pack`
--

LOCK TABLES `downloadwk_pack` WRITE;
/*!40000 ALTER TABLE `downloadwk_pack` DISABLE KEYS */;
/*!40000 ALTER TABLE `downloadwk_pack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `downloadwk_statut_request`
--

DROP TABLE IF EXISTS `downloadwk_statut_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `downloadwk_statut_request` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(20) DEFAULT NULL,
  `LBL` varchar(255) DEFAULT NULL,
  `ACTIF` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `downloadwk_statut_request`
--

LOCK TABLES `downloadwk_statut_request` WRITE;
/*!40000 ALTER TABLE `downloadwk_statut_request` DISABLE KEYS */;
INSERT INTO `downloadwk_statut_request` VALUES (1,'NIV0','DELETE',0),(2,'NIV1','WAITING FOR INCLUSION',0),(3,'NIV2','ACKNOWLEDGEMENT',0),(4,'NIV3','REFUSAL',0),(5,'NIV4','NEED TO CHANGE',0),(6,'NIV5','CREATE PACKAGE',0),(7,'NIV6','LOCAL TEST',0),(8,'NIV7','PERIMETER LIMITED DEPLOYMENT',0),(9,'NIV8','DURING DEPLOYMENT',0);
/*!40000 ALTER TABLE `downloadwk_statut_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `downloadwk_tab_values`
--

DROP TABLE IF EXISTS `downloadwk_tab_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `downloadwk_tab_values` (
  `FIELD` varchar(100) DEFAULT NULL,
  `VALUE` varchar(100) DEFAULT NULL,
  `LBL` varchar(100) DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DEFAULT_FIELD` int(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `downloadwk_tab_values`
--

LOCK TABLES `downloadwk_tab_values` WRITE;
/*!40000 ALTER TABLE `downloadwk_tab_values` DISABLE KEYS */;
INSERT INTO `downloadwk_tab_values` VALUES ('TAB','INFO_DEM','1033',1,1),('TAB','INFO_PAQUET','1034',2,1),('TAB','INFO_CONF','1035',3,1),('TAB','INFO_VALID','1036',4,1),('TAB','INFO_HISTO','1052',5,1);
/*!40000 ALTER TABLE `downloadwk_tab_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drives`
--

DROP TABLE IF EXISTS `drives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `drives` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HARDWARE_ID` int(11) NOT NULL,
  `LETTER` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `FILESYSTEM` varchar(255) DEFAULT NULL,
  `TOTAL` int(11) DEFAULT NULL,
  `FREE` int(11) DEFAULT NULL,
  `NUMFILES` int(11) DEFAULT NULL,
  `VOLUMN` varchar(255) DEFAULT NULL,
  `CREATEDATE` date DEFAULT NULL,
  PRIMARY KEY (`HARDWARE_ID`,`ID`),
  KEY `ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drives`
--

LOCK TABLES `drives` WRITE;
/*!40000 ALTER TABLE `drives` DISABLE KEYS */;
INSERT INTO `drives` VALUES (13,3,'C:','Hard Drive','NTFS',242796,18228,0,'','0000-00-00'),(14,3,'D:','Hard Drive','NTFS',851339,661157,0,'Gamer Respaldo','0000-00-00'),(15,3,'F:','CD-Rom Drive','',0,0,0,'','0000-00-00'),(16,3,'H:','Removable Drive','',0,0,0,'','0000-00-00');
/*!40000 ALTER TABLE `drives` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `engine_mutex`
--

DROP TABLE IF EXISTS `engine_mutex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `engine_mutex` (
  `NAME` varchar(255) NOT NULL DEFAULT '',
  `PID` int(11) DEFAULT NULL,
  `TAG` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`NAME`,`TAG`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `engine_mutex`
--

LOCK TABLES `engine_mutex` WRITE;
/*!40000 ALTER TABLE `engine_mutex` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine_mutex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `engine_persistent`
--

DROP TABLE IF EXISTS `engine_persistent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `engine_persistent` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL DEFAULT '',
  `IVALUE` int(11) DEFAULT NULL,
  `TVALUE` varchar(255) DEFAULT NULL,
  UNIQUE KEY `NAME` (`NAME`),
  KEY `ID` (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `engine_persistent`
--

LOCK TABLES `engine_persistent` WRITE;
/*!40000 ALTER TABLE `engine_persistent` DISABLE KEYS */;
INSERT INTO `engine_persistent` VALUES (1,'SESSION_CLEAN_DATE',1515339441,NULL),(2,'INVENTORY_CACHE_CLEAN_DATE',1515339446,NULL);
/*!40000 ALTER TABLE `engine_persistent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `files` (
  `NAME` varchar(100) NOT NULL,
  `VERSION` varchar(50) NOT NULL,
  `OS` varchar(70) NOT NULL,
  `CONTENT` longblob NOT NULL,
  PRIMARY KEY (`NAME`,`OS`,`VERSION`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `HARDWARE_ID` int(11) NOT NULL DEFAULT 0,
  `REQUEST` longtext DEFAULT NULL,
  `CREATE_TIME` int(11) DEFAULT 0,
  `REVALIDATE_FROM` int(11) DEFAULT 0,
  `XMLDEF` longtext DEFAULT NULL,
  PRIMARY KEY (`HARDWARE_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups_cache`
--

DROP TABLE IF EXISTS `groups_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups_cache` (
  `HARDWARE_ID` int(11) NOT NULL DEFAULT 0,
  `GROUP_ID` int(11) NOT NULL DEFAULT 0,
  `STATIC` int(11) DEFAULT 0,
  PRIMARY KEY (`HARDWARE_ID`,`GROUP_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups_cache`
--

LOCK TABLES `groups_cache` WRITE;
/*!40000 ALTER TABLE `groups_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hardware`
--

DROP TABLE IF EXISTS `hardware`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hardware` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DEVICEID` varchar(255) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `WORKGROUP` varchar(255) DEFAULT NULL,
  `USERDOMAIN` varchar(255) DEFAULT NULL,
  `OSNAME` varchar(255) DEFAULT NULL,
  `OSVERSION` varchar(255) DEFAULT NULL,
  `OSCOMMENTS` varchar(255) DEFAULT NULL,
  `PROCESSORT` varchar(255) DEFAULT NULL,
  `PROCESSORS` int(11) DEFAULT 0,
  `PROCESSORN` smallint(6) DEFAULT NULL,
  `MEMORY` int(11) DEFAULT NULL,
  `SWAP` int(11) DEFAULT NULL,
  `IPADDR` varchar(255) DEFAULT NULL,
  `DNS` varchar(255) DEFAULT NULL,
  `DEFAULTGATEWAY` varchar(255) DEFAULT NULL,
  `ETIME` datetime DEFAULT NULL,
  `LASTDATE` datetime DEFAULT NULL,
  `LASTCOME` datetime DEFAULT NULL,
  `QUALITY` decimal(7,4) DEFAULT NULL,
  `FIDELITY` bigint(20) DEFAULT 1,
  `USERID` varchar(255) DEFAULT NULL,
  `TYPE` int(11) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `WINCOMPANY` varchar(255) DEFAULT NULL,
  `WINOWNER` varchar(255) DEFAULT NULL,
  `WINPRODID` varchar(255) DEFAULT NULL,
  `WINPRODKEY` varchar(255) DEFAULT NULL,
  `USERAGENT` varchar(50) DEFAULT NULL,
  `CHECKSUM` bigint(20) unsigned DEFAULT 262143,
  `SSTATE` int(11) DEFAULT 0,
  `IPSRC` varchar(255) DEFAULT NULL,
  `UUID` varchar(255) DEFAULT NULL,
  `ARCH` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`DEVICEID`,`ID`),
  KEY `NAME` (`NAME`),
  KEY `CHECKSUM` (`CHECKSUM`),
  KEY `USERID` (`USERID`),
  KEY `WORKGROUP` (`WORKGROUP`),
  KEY `OSNAME` (`OSNAME`),
  KEY `MEMORY` (`MEMORY`),
  KEY `DEVICEID` (`DEVICEID`),
  KEY `ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hardware`
--

LOCK TABLES `hardware` WRITE;
/*!40000 ALTER TABLE `hardware` DISABLE KEYS */;
INSERT INTO `hardware` VALUES (3,'JMERAQ-2018-01-07-10-37-21','JMERAQ','PC',NULL,'Microsoft Windows 10 Pro','10.0.16299',NULL,'Intel(R) Core(TM) i5-7400 CPU @ 3.00GHz [4 core(s) x86_64]',3001,1,8192,9669,'192.168.1.111',NULL,NULL,NULL,'2018-01-07 10:42:46','2018-01-07 10:42:46',NULL,1,'User',0,NULL,NULL,'User','00331-10000-00001-AA041','W269N-WFGWX-YVC9B-4J6C9-T83GX','OCS-NG_WINDOWS_AGENT_v2.3.1.1',262143,0,'192.168.1.111','BCDF13E3-B770-7EAE-4287-6045CBA2A4E9','x86 64 bit');
/*!40000 ALTER TABLE `hardware` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hardware_osname_cache`
--

DROP TABLE IF EXISTS `hardware_osname_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hardware_osname_cache` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `OSNAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `OSNAME` (`OSNAME`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hardware_osname_cache`
--

LOCK TABLES `hardware_osname_cache` WRITE;
/*!40000 ALTER TABLE `hardware_osname_cache` DISABLE KEYS */;
INSERT INTO `hardware_osname_cache` VALUES (1,NULL),(2,'Microsoft Windows 10 Pro');
/*!40000 ALTER TABLE `hardware_osname_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inputs`
--

DROP TABLE IF EXISTS `inputs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inputs` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HARDWARE_ID` int(11) NOT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `MANUFACTURER` varchar(255) DEFAULT NULL,
  `CAPTION` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `INTERFACE` varchar(255) DEFAULT NULL,
  `POINTTYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`HARDWARE_ID`,`ID`),
  KEY `ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inputs`
--

LOCK TABLES `inputs` WRITE;
/*!40000 ALTER TABLE `inputs` DISABLE KEYS */;
INSERT INTO `inputs` VALUES (16,3,'Keyboard','','Mejorado (101 ó 102 teclas)','USB Input Device','',''),(17,3,'Keyboard','','Mejorado (101 ó 102 teclas)','HID Keyboard Device','',''),(18,3,'Keyboard','','Mejorado (101 ó 102 teclas)','HID Keyboard Device','',''),(19,3,'Pointing','(Standard system devices)','USB Input Device','USB Input Device','USB',''),(20,3,'Pointing','Microsoft','HID-compliant mouse','HID-compliant mouse','USB','');
/*!40000 ALTER TABLE `inputs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itmgmt_comments`
--

DROP TABLE IF EXISTS `itmgmt_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `itmgmt_comments` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HARDWARE_ID` int(11) NOT NULL,
  `COMMENTS` longtext DEFAULT NULL,
  `USER_INSERT` varchar(100) DEFAULT NULL,
  `DATE_INSERT` date DEFAULT NULL,
  `ACTION` varchar(255) DEFAULT NULL,
  `VISIBLE` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itmgmt_comments`
--

LOCK TABLES `itmgmt_comments` WRITE;
/*!40000 ALTER TABLE `itmgmt_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `itmgmt_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `javainfo`
--

DROP TABLE IF EXISTS `javainfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `javainfo` (
  `HARDWARE_ID` int(11) NOT NULL,
  `JAVANAME` varchar(255) DEFAULT 'NONAME',
  `JAVAPATHLEVEL` int(11) DEFAULT 0,
  `JAVACOUNTRY` varchar(255) DEFAULT NULL,
  `JAVACLASSPATH` varchar(255) DEFAULT NULL,
  `JAVAHOME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`HARDWARE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `javainfo`
--

LOCK TABLES `javainfo` WRITE;
/*!40000 ALTER TABLE `javainfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `javainfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journallog`
--

DROP TABLE IF EXISTS `journallog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journallog` (
  `HARDWARE_ID` int(11) NOT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `JOURNALLOG` longtext DEFAULT NULL,
  `LISTENERNAME` varchar(255) DEFAULT 'NONAME',
  `DATE` varchar(255) DEFAULT NULL,
  `STATUS` int(11) DEFAULT 0,
  `ERRORCODE` int(11) DEFAULT 0,
  PRIMARY KEY (`ID`,`HARDWARE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journallog`
--

LOCK TABLES `journallog` WRITE;
/*!40000 ALTER TABLE `journallog` DISABLE KEYS */;
/*!40000 ALTER TABLE `journallog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages` (
  `NAME` varchar(60) NOT NULL,
  `IMG` blob DEFAULT NULL,
  `JSON_VALUE` longtext DEFAULT NULL,
  PRIMARY KEY (`NAME`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locks`
--

DROP TABLE IF EXISTS `locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locks` (
  `HARDWARE_ID` int(11) NOT NULL,
  `ID` int(11) DEFAULT NULL,
  `SINCE` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`HARDWARE_ID`),
  KEY `SINCE` (`SINCE`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locks`
--

LOCK TABLES `locks` WRITE;
/*!40000 ALTER TABLE `locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memories`
--

DROP TABLE IF EXISTS `memories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `memories` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HARDWARE_ID` int(11) NOT NULL,
  `CAPTION` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `CAPACITY` varchar(255) DEFAULT NULL,
  `PURPOSE` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `SPEED` varchar(255) DEFAULT NULL,
  `NUMSLOTS` smallint(6) DEFAULT NULL,
  `SERIALNUMBER` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`HARDWARE_ID`,`ID`),
  KEY `ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memories`
--

LOCK TABLES `memories` WRITE;
/*!40000 ALTER TABLE `memories` DISABLE KEYS */;
INSERT INTO `memories` VALUES (9,3,'Memoria física','BANK 1 (No ECC)','8192','System Memory','Unknown','2400',1,'8F341829'),(10,3,'Matriz de memoria física','Matriz de memoria física','0','System Memory','Empty slot','',2,'8F341829'),(11,3,'Matriz de memoria física','Matriz de memoria física','0','System Memory','Empty slot','',3,'8F341829'),(12,3,'Matriz de memoria física','Matriz de memoria física','0','System Memory','Empty slot','',4,'8F341829');
/*!40000 ALTER TABLE `memories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modems`
--

DROP TABLE IF EXISTS `modems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modems` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HARDWARE_ID` int(11) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `MODEL` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`HARDWARE_ID`,`ID`),
  KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modems`
--

LOCK TABLES `modems` WRITE;
/*!40000 ALTER TABLE `modems` DISABLE KEYS */;
/*!40000 ALTER TABLE `modems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monitors`
--

DROP TABLE IF EXISTS `monitors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `monitors` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HARDWARE_ID` int(11) NOT NULL,
  `MANUFACTURER` varchar(255) DEFAULT NULL,
  `CAPTION` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `SERIAL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`HARDWARE_ID`,`ID`),
  KEY `ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monitors`
--

LOCK TABLES `monitors` WRITE;
/*!40000 ALTER TABLE `monitors` DISABLE KEYS */;
INSERT INTO `monitors` VALUES (3,3,'Unknown manufacturer code HKC','HKCTV','','RGB color','');
/*!40000 ALTER TABLE `monitors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `netmap`
--

DROP TABLE IF EXISTS `netmap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `netmap` (
  `IP` varchar(15) NOT NULL,
  `MAC` varchar(17) NOT NULL,
  `MASK` varchar(15) NOT NULL,
  `NETID` varchar(15) NOT NULL,
  `DATE` timestamp NOT NULL DEFAULT current_timestamp(),
  `NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`MAC`),
  KEY `IP` (`IP`),
  KEY `NETID` (`NETID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `netmap`
--

LOCK TABLES `netmap` WRITE;
/*!40000 ALTER TABLE `netmap` DISABLE KEYS */;
/*!40000 ALTER TABLE `netmap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `network_devices`
--

DROP TABLE IF EXISTS `network_devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `network_devices` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `MACADDR` varchar(255) DEFAULT NULL,
  `USER` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `MACADDR` (`MACADDR`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `network_devices`
--

LOCK TABLES `network_devices` WRITE;
/*!40000 ALTER TABLE `network_devices` DISABLE KEYS */;
/*!40000 ALTER TABLE `network_devices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `networks`
--

DROP TABLE IF EXISTS `networks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `networks` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HARDWARE_ID` int(11) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `TYPEMIB` varchar(255) DEFAULT NULL,
  `SPEED` varchar(255) DEFAULT NULL,
  `MTU` varchar(255) DEFAULT NULL,
  `MACADDR` varchar(255) DEFAULT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  `IPADDRESS` varchar(255) DEFAULT NULL,
  `IPMASK` varchar(255) DEFAULT NULL,
  `IPGATEWAY` varchar(255) DEFAULT NULL,
  `IPSUBNET` varchar(255) DEFAULT NULL,
  `IPDHCP` varchar(255) DEFAULT NULL,
  `VIRTUALDEV` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`HARDWARE_ID`,`ID`),
  KEY `MACADDR` (`MACADDR`),
  KEY `IPADDRESS` (`IPADDRESS`),
  KEY `IPGATEWAY` (`IPGATEWAY`),
  KEY `IPSUBNET` (`IPSUBNET`),
  KEY `ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `networks`
--

LOCK TABLES `networks` WRITE;
/*!40000 ALTER TABLE `networks` DISABLE KEYS */;
INSERT INTO `networks` VALUES (13,3,'TAP-Windows Adapter V9-WFP Native MAC Layer LightWeight Filter-0000','Ethernet','ethernetCsmacd','100 Mb/s','','00:FF:39:87:24:54','Down','','','','','',0),(14,3,'TAP-Windows Adapter V9-VirtualBox NDIS Light-Weight Filter-0000','Ethernet','ethernetCsmacd','100 Mb/s','','00:FF:39:87:24:54','Down','','','','','',0),(15,3,'TAP-Windows Adapter V9-QoS Packet Scheduler-0000','Ethernet','ethernetCsmacd','100 Mb/s','','00:FF:39:87:24:54','Down','','','','','',0),(16,3,'TAP-Windows Adapter V9-WFP 802.3 MAC Layer LightWeight Filter-0000','Ethernet','ethernetCsmacd','100 Mb/s','','00:FF:39:87:24:54','Down','','','','','',0),(17,3,'Intel(R) Ethernet Connection (2) I219-V','Ethernet','ethernetCsmacd','100 Mb/s','','60:45:CB:A2:A4:E9','Up','192.168.1.111','255.255.255.0','192.168.1.1','192.168.1.0','192.168.1.1',0),(18,3,'TAP-Windows Adapter V9','Ethernet','ethernetCsmacd','100 Mb/s','','00:FF:39:87:24:54','Down','','','','','',0);
/*!40000 ALTER TABLE `networks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operators`
--

DROP TABLE IF EXISTS `operators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operators` (
  `ID` varchar(255) NOT NULL DEFAULT '',
  `FIRSTNAME` varchar(255) DEFAULT NULL,
  `LASTNAME` varchar(255) DEFAULT NULL,
  `PASSWD` varchar(255) DEFAULT NULL,
  `ACCESSLVL` int(11) DEFAULT NULL,
  `COMMENTS` text DEFAULT NULL,
  `NEW_ACCESSLVL` varchar(255) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `USER_GROUP` varchar(255) DEFAULT NULL,
  `PASSWORD_VERSION` int(11) DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operators`
--

LOCK TABLES `operators` WRITE;
/*!40000 ALTER TABLE `operators` DISABLE KEYS */;
INSERT INTO `operators` VALUES ('admin','admin','admin','$2y$10$uOaVpKaJe7qdB6VNu8D9L.exU8IpLVFJFOU3Y9NyCJmOvbUqfkFZO',1,'Default administrator account','sadmin',NULL,NULL,1);
/*!40000 ALTER TABLE `operators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugins`
--

DROP TABLE IF EXISTS `plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plugins` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `version` double NOT NULL,
  `licence` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `author` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `verminocs` double NOT NULL,
  `activated` tinyint(1) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugins`
--

LOCK TABLES `plugins` WRITE;
/*!40000 ALTER TABLE `plugins` DISABLE KEYS */;
/*!40000 ALTER TABLE `plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ports`
--

DROP TABLE IF EXISTS `ports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ports` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HARDWARE_ID` int(11) NOT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `CAPTION` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`HARDWARE_ID`,`ID`),
  KEY `ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ports`
--

LOCK TABLES `ports` WRITE;
/*!40000 ALTER TABLE `ports` DISABLE KEYS */;
INSERT INTO `ports` VALUES (69,3,'Keyboard Port','PS/2 Mouse/Keyboard','PS/2 Mouse/Keyboard (61)','(61)'),(70,3,'None','DP port','DP port None','None'),(71,3,'None','HDMI port','HDMI port None','None'),(72,3,'None','DVI port','DVI port None','None'),(73,3,'USB','USB3.1_EA1','USB3.1_EA1 (64)','(64)'),(74,3,'USB','USB3.1_EC1','USB3.1_EC1 (64)','(64)'),(75,3,'USB','LAN_USB3_56','LAN_USB3_56 (64)','(64)'),(76,3,'USB','USB910','USB910 (64)','(64)'),(77,3,'Audio Port','AUDIO','AUDIO None','None'),(78,3,'SATA','','None','None'),(79,3,'SATA','','None','None'),(80,3,'SATA','','None','None'),(81,3,'SATA','','None','None'),(82,3,'SATA','','None','None'),(83,3,'SATA','','None','None'),(84,3,'USB','','(64)','(64)'),(85,3,'USB','','(64)','(64)'),(86,3,'USB','','(64)','(64)'),(87,3,'USB','','(64)','(64)'),(88,3,'None','','None','None'),(89,3,'None','','None','None'),(90,3,'None','','None','None'),(91,3,'None','','None','None'),(92,3,'None','','None','None'),(93,3,'None','','None','None'),(94,3,'Serial Port 16550A Compatible','','Circular DIN-8 female','Circular DIN-8 female'),(95,3,'SATA','','None','None'),(96,3,'SATA','','None','None'),(97,3,'None','','None','None'),(98,3,'None','','None','None'),(99,3,'None','','None','None'),(100,3,'None','','None','None'),(101,3,'None','','None','None'),(102,3,'None','','None','None');
/*!40000 ALTER TABLE `ports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `printers`
--

DROP TABLE IF EXISTS `printers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `printers` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HARDWARE_ID` int(11) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `DRIVER` varchar(255) DEFAULT NULL,
  `PORT` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `SERVERNAME` varchar(255) DEFAULT NULL,
  `SHARENAME` varchar(255) DEFAULT NULL,
  `RESOLUTION` varchar(50) DEFAULT NULL,
  `COMMENT` varchar(255) DEFAULT NULL,
  `SHARED` int(11) DEFAULT NULL,
  `NETWORK` int(11) DEFAULT NULL,
  PRIMARY KEY (`HARDWARE_ID`,`ID`),
  KEY `ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `printers`
--

LOCK TABLES `printers` WRITE;
/*!40000 ALTER TABLE `printers` DISABLE KEYS */;
INSERT INTO `printers` VALUES (9,3,'Send To OneNote 2016','Send to Microsoft OneNote 16 Driver','nul:','','','','600 x 600','',0,0),(10,3,'Microsoft XPS Document Writer','Microsoft XPS Document Writer v4','PORTPROMPT:','','','','600 x 600','',0,0),(11,3,'Microsoft Print to PDF','Microsoft Print To PDF','PORTPROMPT:','','','','600 x 600','',0,0),(12,3,'Fax','Microsoft Shared Fax Driver','SHRFAX:','','','','200 x 200','',0,0);
/*!40000 ALTER TABLE `printers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prolog_conntrack`
--

DROP TABLE IF EXISTS `prolog_conntrack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prolog_conntrack` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DEVICEID` varchar(255) DEFAULT NULL,
  `TIMESTAMP` int(11) DEFAULT NULL,
  `PID` int(11) DEFAULT NULL,
  KEY `ID` (`ID`),
  KEY `DEVICEID` (`DEVICEID`)
) ENGINE=MEMORY AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prolog_conntrack`
--

LOCK TABLES `prolog_conntrack` WRITE;
/*!40000 ALTER TABLE `prolog_conntrack` DISABLE KEYS */;
/*!40000 ALTER TABLE `prolog_conntrack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regconfig`
--

DROP TABLE IF EXISTS `regconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `regconfig` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) DEFAULT NULL,
  `REGTREE` int(11) DEFAULT NULL,
  `REGKEY` text DEFAULT NULL,
  `REGVALUE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `NAME` (`NAME`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regconfig`
--

LOCK TABLES `regconfig` WRITE;
/*!40000 ALTER TABLE `regconfig` DISABLE KEYS */;
/*!40000 ALTER TABLE `regconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registry`
--

DROP TABLE IF EXISTS `registry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registry` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HARDWARE_ID` int(11) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `REGVALUE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`HARDWARE_ID`,`ID`),
  KEY `NAME` (`NAME`),
  KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registry`
--

LOCK TABLES `registry` WRITE;
/*!40000 ALTER TABLE `registry` DISABLE KEYS */;
/*!40000 ALTER TABLE `registry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registry_name_cache`
--

DROP TABLE IF EXISTS `registry_name_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registry_name_cache` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NAME` (`NAME`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registry_name_cache`
--

LOCK TABLES `registry_name_cache` WRITE;
/*!40000 ALTER TABLE `registry_name_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `registry_name_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registry_regvalue_cache`
--

DROP TABLE IF EXISTS `registry_regvalue_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registry_regvalue_cache` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `REGVALUE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `REGVALUE` (`REGVALUE`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registry_regvalue_cache`
--

LOCK TABLES `registry_regvalue_cache` WRITE;
/*!40000 ALTER TABLE `registry_regvalue_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `registry_regvalue_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sim`
--

DROP TABLE IF EXISTS `sim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sim` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HARDWARE_ID` int(11) NOT NULL,
  `OPERATOR` varchar(255) DEFAULT NULL,
  `OPNAME` varchar(255) DEFAULT NULL,
  `COUNTRY` varchar(255) DEFAULT NULL,
  `SERIALNUMBER` varchar(255) DEFAULT NULL,
  `DEVICEID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`,`HARDWARE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sim`
--

LOCK TABLES `sim` WRITE;
/*!40000 ALTER TABLE `sim` DISABLE KEYS */;
/*!40000 ALTER TABLE `sim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slots`
--

DROP TABLE IF EXISTS `slots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slots` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HARDWARE_ID` int(11) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `DESIGNATION` varchar(255) DEFAULT NULL,
  `PURPOSE` varchar(255) DEFAULT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  `PSHARE` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`HARDWARE_ID`,`ID`),
  KEY `ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slots`
--

LOCK TABLES `slots` WRITE;
/*!40000 ALTER TABLE `slots` DISABLE KEYS */;
INSERT INTO `slots` VALUES (13,3,'Ranura de sistema','Ranura de sistema','PCIEX16_1','In Use','OK',0),(14,3,'Ranura de sistema','Ranura de sistema','PCIEX16_2','Available','OK',0),(15,3,'Ranura de sistema','Ranura de sistema','PCIEX1_1','Available','OK',0),(16,3,'Ranura de sistema','Ranura de sistema','PCIEX1_2','Available','OK',0),(17,3,'Ranura de sistema','Ranura de sistema','PCIEX1_3','Available','OK',0),(18,3,'Ranura de sistema','Ranura de sistema','PCIEX1_4','Available','OK',0);
/*!40000 ALTER TABLE `slots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp`
--

DROP TABLE IF EXISTS `snmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IPADDR` varchar(255) DEFAULT NULL,
  `MACADDR` varchar(255) NOT NULL,
  `SNMPDEVICEID` varchar(255) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `CONTACT` varchar(255) DEFAULT NULL,
  `LOCATION` varchar(255) DEFAULT NULL,
  `UPTIME` varchar(255) DEFAULT NULL,
  `DOMAIN` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `LASTDATE` datetime DEFAULT NULL,
  `CHECKSUM` bigint(20) unsigned DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp`
--

LOCK TABLES `snmp` WRITE;
/*!40000 ALTER TABLE `snmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_accountinfo`
--

DROP TABLE IF EXISTS `snmp_accountinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_accountinfo` (
  `SNMP_ID` int(11) NOT NULL,
  `TAG` varchar(255) DEFAULT 'NA',
  PRIMARY KEY (`SNMP_ID`),
  KEY `TAG` (`TAG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_accountinfo`
--

LOCK TABLES `snmp_accountinfo` WRITE;
/*!40000 ALTER TABLE `snmp_accountinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmp_accountinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_blades`
--

DROP TABLE IF EXISTS `snmp_blades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_blades` (
  `SNMP_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SERIALNUMBER` varchar(255) DEFAULT NULL,
  `SYSTEM` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SNMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_blades`
--

LOCK TABLES `snmp_blades` WRITE;
/*!40000 ALTER TABLE `snmp_blades` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmp_blades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_cards`
--

DROP TABLE IF EXISTS `snmp_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_cards` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SNMP_ID` int(11) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `REFERENCE` varchar(255) DEFAULT NULL,
  `FIRMWARE` varchar(255) DEFAULT NULL,
  `SOFTWARE` varchar(255) DEFAULT NULL,
  `REVISION` varchar(255) DEFAULT NULL,
  `SERIALNUMBER` varchar(255) DEFAULT NULL,
  `MANUFACTURER` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`,`SNMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_cards`
--

LOCK TABLES `snmp_cards` WRITE;
/*!40000 ALTER TABLE `snmp_cards` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmp_cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_cartridges`
--

DROP TABLE IF EXISTS `snmp_cartridges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_cartridges` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SNMP_ID` int(11) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `LEVEL` int(11) DEFAULT NULL,
  `MAXCAPACITY` int(11) DEFAULT NULL,
  `COLOR` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`,`SNMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_cartridges`
--

LOCK TABLES `snmp_cartridges` WRITE;
/*!40000 ALTER TABLE `snmp_cartridges` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmp_cartridges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_communities`
--

DROP TABLE IF EXISTS `snmp_communities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_communities` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VERSION` varchar(5) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `USERNAME` varchar(255) DEFAULT NULL,
  `AUTHKEY` varchar(255) DEFAULT NULL,
  `AUTHPASSWD` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_communities`
--

LOCK TABLES `snmp_communities` WRITE;
/*!40000 ALTER TABLE `snmp_communities` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmp_communities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_computers`
--

DROP TABLE IF EXISTS `snmp_computers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_computers` (
  `SNMP_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SYSTEM` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SNMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_computers`
--

LOCK TABLES `snmp_computers` WRITE;
/*!40000 ALTER TABLE `snmp_computers` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmp_computers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_cpus`
--

DROP TABLE IF EXISTS `snmp_cpus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_cpus` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SNMP_ID` int(11) NOT NULL,
  `SPEED` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `MANUFACTURER` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`,`SNMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_cpus`
--

LOCK TABLES `snmp_cpus` WRITE;
/*!40000 ALTER TABLE `snmp_cpus` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmp_cpus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_drives`
--

DROP TABLE IF EXISTS `snmp_drives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_drives` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SNMP_ID` int(11) NOT NULL,
  `LETTER` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `FILESYSTEM` varchar(255) DEFAULT NULL,
  `TOTAL` int(11) DEFAULT NULL,
  `FREE` int(11) DEFAULT NULL,
  `NUMFILES` int(11) DEFAULT NULL,
  `VOLUMN` varchar(255) DEFAULT NULL,
  `LABEL` varchar(255) DEFAULT NULL,
  `SERIAL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`,`SNMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_drives`
--

LOCK TABLES `snmp_drives` WRITE;
/*!40000 ALTER TABLE `snmp_drives` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmp_drives` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_fans`
--

DROP TABLE IF EXISTS `snmp_fans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_fans` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SNMP_ID` int(11) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `REFERENCE` varchar(255) DEFAULT NULL,
  `REVISION` varchar(255) DEFAULT NULL,
  `SERIALNUMBER` varchar(255) DEFAULT NULL,
  `MANUFACTURER` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`,`SNMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_fans`
--

LOCK TABLES `snmp_fans` WRITE;
/*!40000 ALTER TABLE `snmp_fans` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmp_fans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_firewalls`
--

DROP TABLE IF EXISTS `snmp_firewalls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_firewalls` (
  `SNMP_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SERIALNUMBER` varchar(255) DEFAULT NULL,
  `SYSTEM` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SNMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_firewalls`
--

LOCK TABLES `snmp_firewalls` WRITE;
/*!40000 ALTER TABLE `snmp_firewalls` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmp_firewalls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_inputs`
--

DROP TABLE IF EXISTS `snmp_inputs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_inputs` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SNMP_ID` int(11) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`,`SNMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_inputs`
--

LOCK TABLES `snmp_inputs` WRITE;
/*!40000 ALTER TABLE `snmp_inputs` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmp_inputs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_laststate`
--

DROP TABLE IF EXISTS `snmp_laststate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_laststate` (
  `SNMP_ID` int(11) NOT NULL,
  `COMMON` varchar(255) DEFAULT NULL,
  `PRINTERS` varchar(255) DEFAULT NULL,
  `TRAYS` varchar(255) DEFAULT NULL,
  `CARTRIDGES` varchar(255) DEFAULT NULL,
  `NETWORKS` varchar(255) DEFAULT NULL,
  `SWITCHS` varchar(255) DEFAULT NULL,
  `BLADES` varchar(255) DEFAULT NULL,
  `STORAGES` varchar(255) DEFAULT NULL,
  `DRIVES` varchar(255) DEFAULT NULL,
  `POWERSUPPLIES` varchar(255) DEFAULT NULL,
  `FANS` varchar(255) DEFAULT NULL,
  `SWITCHINFOS` varchar(255) DEFAULT NULL,
  `LOADBALANCERS` varchar(255) DEFAULT NULL,
  `CARDS` varchar(255) DEFAULT NULL,
  `COMPUTERS` varchar(255) DEFAULT NULL,
  `SOFTWARES` varchar(255) DEFAULT NULL,
  `MEMORIES` varchar(255) DEFAULT NULL,
  `CPUS` varchar(255) DEFAULT NULL,
  `INPUTS` varchar(255) DEFAULT NULL,
  `PORTS` varchar(255) DEFAULT NULL,
  `SOUNDS` varchar(255) DEFAULT NULL,
  `VIDEOS` varchar(255) DEFAULT NULL,
  `MODEMS` varchar(255) DEFAULT NULL,
  `LOCALPRINTERS` varchar(255) DEFAULT NULL,
  `VIRTUALMACHINES` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SNMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_laststate`
--

LOCK TABLES `snmp_laststate` WRITE;
/*!40000 ALTER TABLE `snmp_laststate` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmp_laststate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_loadbalancers`
--

DROP TABLE IF EXISTS `snmp_loadbalancers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_loadbalancers` (
  `SNMP_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SERIALNUMBER` varchar(255) DEFAULT NULL,
  `SYSTEM` varchar(255) DEFAULT NULL,
  `MANUFACTURER` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SNMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_loadbalancers`
--

LOCK TABLES `snmp_loadbalancers` WRITE;
/*!40000 ALTER TABLE `snmp_loadbalancers` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmp_loadbalancers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_localprinters`
--

DROP TABLE IF EXISTS `snmp_localprinters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_localprinters` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SNMP_ID` int(11) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`,`SNMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_localprinters`
--

LOCK TABLES `snmp_localprinters` WRITE;
/*!40000 ALTER TABLE `snmp_localprinters` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmp_localprinters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_memories`
--

DROP TABLE IF EXISTS `snmp_memories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_memories` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SNMP_ID` int(11) NOT NULL,
  `CAPACITY` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`,`SNMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_memories`
--

LOCK TABLES `snmp_memories` WRITE;
/*!40000 ALTER TABLE `snmp_memories` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmp_memories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_mibs`
--

DROP TABLE IF EXISTS `snmp_mibs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_mibs` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VENDOR` varchar(255) DEFAULT NULL,
  `URL` varchar(255) DEFAULT NULL,
  `CHECKSUM` varchar(255) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `PARSER` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_mibs`
--

LOCK TABLES `snmp_mibs` WRITE;
/*!40000 ALTER TABLE `snmp_mibs` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmp_mibs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_modems`
--

DROP TABLE IF EXISTS `snmp_modems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_modems` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SNMP_ID` int(11) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`,`SNMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_modems`
--

LOCK TABLES `snmp_modems` WRITE;
/*!40000 ALTER TABLE `snmp_modems` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmp_modems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_networks`
--

DROP TABLE IF EXISTS `snmp_networks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_networks` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SNMP_ID` int(11) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `MACADDR` varchar(255) DEFAULT NULL,
  `DEVICEMACADDR` varchar(255) DEFAULT NULL,
  `SLOT` varchar(255) DEFAULT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  `SPEED` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `DEVICEADDRESS` varchar(255) DEFAULT NULL,
  `DEVICENAME` varchar(255) DEFAULT NULL,
  `DEVICEPORT` varchar(255) DEFAULT NULL,
  `DEVICETYPE` varchar(255) DEFAULT NULL,
  `TYPEMIB` varchar(255) DEFAULT NULL,
  `IPADDR` varchar(255) DEFAULT NULL,
  `IPMASK` varchar(255) DEFAULT NULL,
  `IPGATEWAY` varchar(255) DEFAULT NULL,
  `IPSUBNET` varchar(255) DEFAULT NULL,
  `IPDHCP` varchar(255) DEFAULT NULL,
  `DRIVER` varchar(255) DEFAULT NULL,
  `VIRTUALDEV` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`,`SNMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_networks`
--

LOCK TABLES `snmp_networks` WRITE;
/*!40000 ALTER TABLE `snmp_networks` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmp_networks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_ports`
--

DROP TABLE IF EXISTS `snmp_ports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_ports` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SNMP_ID` int(11) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`,`SNMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_ports`
--

LOCK TABLES `snmp_ports` WRITE;
/*!40000 ALTER TABLE `snmp_ports` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmp_ports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_powersupplies`
--

DROP TABLE IF EXISTS `snmp_powersupplies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_powersupplies` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SNMP_ID` int(11) NOT NULL,
  `MANUFACTURER` varchar(255) DEFAULT NULL,
  `REFERENCE` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `SERIALNUMBER` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `REVISION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`,`SNMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_powersupplies`
--

LOCK TABLES `snmp_powersupplies` WRITE;
/*!40000 ALTER TABLE `snmp_powersupplies` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmp_powersupplies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_printers`
--

DROP TABLE IF EXISTS `snmp_printers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_printers` (
  `SNMP_ID` int(11) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `SERIALNUMBER` varchar(255) DEFAULT NULL,
  `COUNTER` varchar(255) DEFAULT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  `ERRORSTATE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SNMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_printers`
--

LOCK TABLES `snmp_printers` WRITE;
/*!40000 ALTER TABLE `snmp_printers` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmp_printers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_softwares`
--

DROP TABLE IF EXISTS `snmp_softwares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_softwares` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SNMP_ID` int(11) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `INSTALLDATE` varchar(255) DEFAULT NULL,
  `COMMENTS` text DEFAULT NULL,
  `VERSION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`,`SNMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_softwares`
--

LOCK TABLES `snmp_softwares` WRITE;
/*!40000 ALTER TABLE `snmp_softwares` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmp_softwares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_sounds`
--

DROP TABLE IF EXISTS `snmp_sounds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_sounds` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SNMP_ID` int(11) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`,`SNMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_sounds`
--

LOCK TABLES `snmp_sounds` WRITE;
/*!40000 ALTER TABLE `snmp_sounds` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmp_sounds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_storages`
--

DROP TABLE IF EXISTS `snmp_storages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_storages` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SNMP_ID` int(11) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `MANUFACTURER` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `MODEL` varchar(255) DEFAULT NULL,
  `DISKSIZE` int(11) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `SERIALNUMBER` varchar(255) DEFAULT NULL,
  `FIRMWARE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`,`SNMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_storages`
--

LOCK TABLES `snmp_storages` WRITE;
/*!40000 ALTER TABLE `snmp_storages` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmp_storages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_switchinfos`
--

DROP TABLE IF EXISTS `snmp_switchinfos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_switchinfos` (
  `SNMP_ID` int(11) NOT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SNMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_switchinfos`
--

LOCK TABLES `snmp_switchinfos` WRITE;
/*!40000 ALTER TABLE `snmp_switchinfos` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmp_switchinfos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_switchs`
--

DROP TABLE IF EXISTS `snmp_switchs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_switchs` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SNMP_ID` int(11) NOT NULL,
  `MANUFACTURER` varchar(255) DEFAULT NULL,
  `REFERENCE` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `SOFTVERSION` varchar(255) DEFAULT NULL,
  `FIRMVERSION` varchar(255) DEFAULT NULL,
  `SERIALNUMBER` varchar(255) DEFAULT NULL,
  `REVISION` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`,`SNMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_switchs`
--

LOCK TABLES `snmp_switchs` WRITE;
/*!40000 ALTER TABLE `snmp_switchs` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmp_switchs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_trays`
--

DROP TABLE IF EXISTS `snmp_trays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_trays` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SNMP_ID` int(11) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `LEVEL` varchar(255) DEFAULT NULL,
  `MAXCAPACITY` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`,`SNMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_trays`
--

LOCK TABLES `snmp_trays` WRITE;
/*!40000 ALTER TABLE `snmp_trays` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmp_trays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_videos`
--

DROP TABLE IF EXISTS `snmp_videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_videos` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SNMP_ID` int(11) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`,`SNMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_videos`
--

LOCK TABLES `snmp_videos` WRITE;
/*!40000 ALTER TABLE `snmp_videos` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmp_videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_virtualmachines`
--

DROP TABLE IF EXISTS `snmp_virtualmachines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_virtualmachines` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SNMP_ID` int(11) NOT NULL,
  `CONFIG_FILE` varchar(255) DEFAULT NULL,
  `CPU` int(11) DEFAULT NULL,
  `MEMORY` int(11) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `OS` varchar(255) DEFAULT NULL,
  `POWER` varchar(255) DEFAULT NULL,
  `UUID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`,`SNMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_virtualmachines`
--

LOCK TABLES `snmp_virtualmachines` WRITE;
/*!40000 ALTER TABLE `snmp_virtualmachines` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmp_virtualmachines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `softwares`
--

DROP TABLE IF EXISTS `softwares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `softwares` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HARDWARE_ID` int(11) NOT NULL,
  `PUBLISHER` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `VERSION` varchar(255) DEFAULT NULL,
  `FOLDER` text DEFAULT NULL,
  `COMMENTS` text DEFAULT NULL,
  `FILENAME` varchar(255) DEFAULT NULL,
  `FILESIZE` int(11) DEFAULT 0,
  `SOURCE` int(11) DEFAULT NULL,
  `GUID` varchar(255) DEFAULT NULL,
  `LANGUAGE` varchar(255) DEFAULT NULL,
  `INSTALLDATE` datetime DEFAULT NULL,
  `BITSWIDTH` int(11) DEFAULT NULL,
  PRIMARY KEY (`HARDWARE_ID`,`ID`),
  KEY `NAME` (`NAME`),
  KEY `VERSION` (`VERSION`),
  KEY `ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1088 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `softwares`
--

LOCK TABLES `softwares` WRITE;
/*!40000 ALTER TABLE `softwares` DISABLE KEYS */;
INSERT INTO `softwares` VALUES (816,3,'ASUSTeKcomputer Inc','CloneDrive','1.00.07','','','',0,1,'CloneDrive','','0000-00-00 00:00:00',32),(817,3,'Dropbox, Inc.','Dropbox','41.3.79','C:/Program Files (x86)/Dropbox/Client','','',0,1,'Dropbox','','0000-00-00 00:00:00',32),(818,3,'Tim Kosse','FileZilla Client 3.28.0','3.28.0','C:/Program Files/FileZilla FTP Client','','',0,1,'FileZilla Client','','0000-00-00 00:00:00',32),(819,3,'Google Inc.','Google Chrome','63.0.3239.84','C:/Program Files (x86)/Google/Chrome/Application','','',0,1,'Google Chrome','','2017-06-16 00:00:00',32),(820,3,'Huawei Technologies Co.,Ltd','HiSuite','1.0','','','',0,1,'Hi Suite','','0000-00-00 00:00:00',32),(821,3,'Mega Limited','MEGAsync','','','','',0,1,'MEGAsync','','0000-00-00 00:00:00',32),(822,3,'Mendeley Ltd.','Mendeley Desktop 1.17.11','1.17.11','','','',0,1,'Mendeley Desktop','','0000-00-00 00:00:00',32),(823,3,'Microsoft Corporation','Microsoft Help Viewer 2.2','2.2.25420','C:/Program Files (x86)/Microsoft Help Viewer/v2.2/','','',0,1,'Microsoft Help Viewer 2.2','','0000-00-00 00:00:00',32),(824,3,'','Microsoft SQL Server 2016','','','','',0,1,'Microsoft SQL Server 13','','0000-00-00 00:00:00',32),(825,3,'Microsoft Corporation','Microsoft SQL Server 2016','','','','',0,1,'Microsoft SQL Server SQLServer2016','','0000-00-00 00:00:00',32),(826,3,'NVIDIA Corporation','NVIDIA Stereoscopic 3D Driver','7.17.13.7500','C:/Program Files (x86)/NVIDIA Corporation/3D Vision','','',0,1,'NVIDIAStereo','','0000-00-00 00:00:00',32),(827,3,'OCS Inventory NG Team','OCS Inventory NG Agent 2.3.1.1','2.3.1.1','','','',0,1,'OCS Inventory NG Agent','','0000-00-00 00:00:00',32),(828,3,'Electronic Arts, Inc.','Origin','10.5.8.17910','C:/Program Files (x86)/Origin','','',0,1,'Origin','','0000-00-00 00:00:00',32),(829,3,'Microsoft Corporation','Paquete de idioma de Microsoft Help Viewer 2.2 - ESN','2.2.25420','C:/Program Files (x86)/Microsoft Help Viewer/v2.2/','','',0,1,'Paquete de idioma de Visor de Ayuda de Microsoft 2.2 - ESN','','0000-00-00 00:00:00',32),(830,3,'ParchesPES2017.blogspot.com','Parche Taringuero 3.3.1','3.3.1','C:/Program Files (x86)/Pro Evolution Soccer 2017/','','',0,1,'Parche Taringuero 3.3.1','Español (España, tradicional)','2017-06-23 00:00:00',32),(831,3,'ASUSTeKcomputer Inc','RamCache II','1.01.04','','','',0,1,'RamCache II','','0000-00-00 00:00:00',32),(832,3,'Razer Inc.','Razer Cortex','8.4.17.561','C:/Program Files (x86)/Razer/Razer Cortex/','','',0,1,'Razer Cortex_is1','','2017-12-31 00:00:00',32),(833,3,'3T Software Labs Ltd','Robo 3T 1.1.1','1.1.1','','','',0,1,'Robo 3T 1.1.1','','0000-00-00 00:00:00',32),(834,3,'Rockstar Games','Rockstar Games Social Club','1.2.3.1','','','',0,1,'Rockstar Games Social Club','','0000-00-00 00:00:00',32),(835,3,'Valve Corporation','Steam','2.10.91.91','','','',0,1,'Steam','','0000-00-00 00:00:00',32),(836,3,'','UltraISO Premium V9.33','','C:/Program Files (x86)/UltraISO/','','',0,1,'UltraISO_is1','','2017-06-23 00:00:00',32),(837,3,'Bitnami','XAMPP','7.2.0-0','C:/xampp','','',0,1,'xampp','','0000-00-00 00:00:00',32),(838,3,'Microsoft Corporation','Microsoft Visual Studio Tools for Applications 2015 Language Support - ENU Language Pack','14.0.23107.00','','','',0,1,'{0343F10B-C31B-3A2F-B2C1-C42E84CCAF5E}','Inglés (Estados Unidos)','2017-07-13 00:00:00',32),(839,3,'Microsoft Corporation','Microsoft Visual C++ 2013 Redistributable (x64) - 12.0.30501','12.0.30501.0','','','',0,1,'{050d4fc8-5d48-4b8f-8972-47c82c46020f}','','0000-00-00 00:00:00',32),(840,3,'Microsoft Corporation','SDK de Microsoft .NET Framework 4.6.1 (español)','4.6.01055','','','',0,1,'{07570008-8840-4A14-A752-1367157138A5}','Español (España, internacional)','2017-07-13 00:00:00',32),(841,3,'Dropbox, Inc.','Dropbox Update Helper','1.3.65.1','','','',0,1,'{099218A5-A723-43DC-8DB5-6173656A1E94}','Inglés (Estados Unidos)','2018-01-07 00:00:00',32),(842,3,'Microsoft Corporation','Microsoft Portable Library Multi-Targeting Pack','14.0.25431.01','','','',0,1,'{09D51995-D17C-35E4-9143-314298EB5155}','Inglés (Estados Unidos)','2017-07-14 00:00:00',32),(843,3,'Microsoft Corporation','Microsoft SQL Server 2016 Policies','13.0.1601.5','','','',0,1,'{0BA40265-9FDA-41FF-8111-E22AE2508F60}','Inglés (Estados Unidos)','2017-07-09 00:00:00',32),(844,3,'Acronis','Acronis True Image OEM','19.0.5128','C:/Program Files (x86)/Acronis','','',0,1,'{0DE6E09A-112F-4BCD-B5BC-21C7B0845505}','Inglés (Estados Unidos)','2017-06-16 00:00:00',32),(845,3,'Microsoft Corporation','Requisitos previos para SSDT','13.0.1601.5','','','',0,1,'{12B815EC-981B-4CFC-AE47-9B4528A41ACA}','Español (España, internacional)','2017-07-14 00:00:00',32),(846,3,'Microsoft Corporation','Microsoft Visual C++ 2013 x86 Minimum Runtime - 12.0.21005','12.0.21005','','Caution. Removing this product might prevent some applications from running.','',0,1,'{13A4EE12-23EA-3371-91EE-EFB36DDFFF3E}','Inglés (Estados Unidos)','2017-12-09 00:00:00',32),(847,3,'Microsoft Corporation','Biblioteca autentic. de Active Directory para SQL Server (x86)','13.0.1601.5','','','',0,1,'{15B3E2E1-218C-4BD7-90E8-FC82216920A9}','Español (España, internacional)','2017-07-14 00:00:00',32),(848,3,'Microsoft Corporation','Microsoft Visual Studio 2015 Shell (Minimum) Interop Assemblies','14.0.25420','','','',0,1,'{166EEF5C-F996-390E-91F6-DD6DFD008E9B}','Inglés (Estados Unidos)','2017-07-13 00:00:00',32),(849,3,'Microsoft Corporation','Objetos de administración de Microsoft SQL Server 2014','12.0.2000.8','','','',0,1,'{19053E9D-DA93-4160-BCA1-2265B322B29E}','Español (España, internacional)','2017-07-13 00:00:00',32),(850,3,'Intel Corporation','Microsoft VC++ redistributables repacked.','12.0.0.0','','','',0,1,'{1AB26641-D555-4648-B08B-676F707A0B1B}','Inglés (Estados Unidos)','2017-06-17 00:00:00',32),(851,3,'Microsoft Corporation','SQL Server 2016 Management Studio Extensions','13.0.1601.5','','','',0,1,'{1D792861-C84B-4BD0-8347-34AF40F5ACD1}','Inglés (Estados Unidos)','2017-07-09 00:00:00',32),(852,3,'Microsoft Corporation','Microsoft Visual Studio 2015 XAML Application Timeline','14.0.25431','','','',0,1,'{2230AE9A-A95A-4C15-A4D1-6536F4B24B7D}','Inglés (Estados Unidos)','2017-07-14 00:00:00',32),(853,3,'Microsoft Corporation','SQL Server 2016 Client Tools','13.0.16100.1','','','',0,1,'{22A3A43A-C1BA-473B-8863-F31D41CC0692}','Inglés (Estados Unidos)','2017-07-09 00:00:00',32),(854,3,'Microsoft Corporation','Microsoft .NET Framework 4.5.1 SDK (español)','4.5.51641','','','',0,1,'{23549951-AEAB-4407-B23D-EB1703B14DBA}','Español (España, internacional)','2017-07-13 00:00:00',32),(855,3,'Microsoft Corporation','Microsoft SQL Server Data Tools - ESN (14.0.60519.0)','14.0.60519.0','','','',0,1,'{2DE1C9F0-E4F2-4749-9016-B4CE662BCAD6}','Español (España, internacional)','2017-07-14 00:00:00',32),(856,3,'Microsoft Corporation','Paquete de compatibilidad de Microsoft .NET Framework 4.6.1 (español)','4.6.01055','','','',0,1,'{2ECA62A3-BA78-4B96-BEA3-0E9DA82F08D9}','Español (España, internacional)','2017-07-13 00:00:00',32),(857,3,'Microsoft Corporation','Microsoft .NET Framework 4.6.1 SDK','4.6.01055','','','',0,1,'{2F0ECC80-B9E4-4485-8083-CD32F22ABD92}','Inglés (Estados Unidos)','2017-07-13 00:00:00',32),(858,3,'Microsoft Corporation','Visual C++ IDE Base Package','14.0.25431','','','',0,1,'{30B0517F-1E18-3D45-A78C-C2E34B9A368D}','Inglés (Estados Unidos)','2017-07-14 00:00:00',32),(859,3,'Microsoft Corporation','Microsoft Visual C++ 2012 Redistributable (x86) - 11.0.61030','11.0.61030.0','','','',0,1,'{33d1fd90-4274-48a1-9bc1-97e33d9c2d6f}','','0000-00-00 00:00:00',32),(860,3,'Microsoft Corporation','Microsoft Visual Studio Tools for Applications 2015 Language Support','14.0.23107.10','','','',0,1,'{353253a9-15a3-4727-b415-79b4e6be765e}','','0000-00-00 00:00:00',32),(861,3,'Skype Technologies S.A.','Skype™ 7.40','7.40.103','C:/Program Files (x86)/Skype/','','',0,1,'{3B7E914A-93D5-4A29-92BB-AF8C3F66C431}','Inglés (Estados Unidos)','2017-10-21 00:00:00',32),(862,3,'Microsoft Corporation','SDK de Microsoft .NET Framework 4.6 (español)','4.6.00081','','','',0,1,'{400687A4-8A54-4903-881D-8904AF08600A}','Español (España, internacional)','2017-07-13 00:00:00',32),(863,3,'Microsoft Corporation','Microsoft Visual Studio 2015 Windows Diagnostic Tools','14.0.25431','','','',0,1,'{4100F789-5312-4A41-817C-3118F6F44CAB}','Inglés (Estados Unidos)','2017-07-14 00:00:00',32),(864,3,'Microsoft Corporation','Microsoft .NET Framework 4.6.1 Developer Pack','4.6.1055','','','',0,1,'{463d5540-8dfd-4eef-92e5-b729b3b73cfb}','','0000-00-00 00:00:00',32),(865,3,'Microsoft Corporation','Microsoft Help Viewer 2.2','2.2.25420','','','',0,1,'{4740889B-2D03-3A6F-BC42-07C8AFDF3B2E}','Inglés (Estados Unidos)','2017-07-14 00:00:00',32),(866,3,'Oracle Corporation','Java Auto Updater','2.8.131.11','','','',0,1,'{4A03706F-666A-4037-7777-5F2748764D10}','Inglés (Estados Unidos)','2017-07-02 00:00:00',32),(867,3,'Microsoft Corporation','SQL Server 2016 Management Studio Extensions','13.0.1601.5','','','',0,1,'{4BB5BBDE-CA7D-4A12-BD25-FBA18D799A2A}','Inglés (Estados Unidos)','2017-07-09 00:00:00',32),(868,3,'Microsoft Corporation','UpdateAssistant','1.3.0.0','','','',0,1,'{4E67FF7F-C24E-4279-9AB2-C26D57B53742}','Independiente del idioma','2017-06-27 00:00:00',32),(869,3,'ASUSTeK Computer Inc.','AURA','1.04.29','','','',0,1,'{5899CD4F-8764-4303-A0D9-C60A62CFC24F}','','0000-00-00 00:00:00',32),(870,3,'Microsoft Corporation','Microsoft SQL Server 2016 Setup (English)','13.0.1601.5','','','',0,1,'{59200093-D6A8-453E-B1AA-8D5E8921598A}','Inglés (Estados Unidos)','2017-07-09 00:00:00',32),(871,3,'Giorgio Tani','PeaZip 6.4.1','6.4.1','C:/Program Files (x86)/PeaZip/','','',0,1,'{5A2BC38A-406C-4A5B-BF45-6991F9A05325}_is1','','2017-10-22 00:00:00',32),(872,3,'Google Inc.','Google Update Helper','1.3.33.7','','','',0,1,'{60EC980A-BDA2-4CB6-A427-B07A5498B4CA}','Inglés (Estados Unidos)','2017-11-15 00:00:00',32),(873,3,'Microsoft Corporation','Microsoft Visual C++ 2012 Redistributable (x86) - 11.0.60610','11.0.60610.1','','','',0,1,'{6475bf49-74d9-4eb3-adb8-37c1e92caff1}','','0000-00-00 00:00:00',32),(874,3,'Microsoft Corporation','Roslyn Language Services - x86','14.0.25431','','','',0,1,'{6970C7E1-F99D-388D-8903-DF8FCE677FED}','Inglés (Estados Unidos)','2017-07-14 00:00:00',32),(875,3,'Microsoft Corporation','Microsoft Visual C++ 2015 x86 Additional Runtime - 14.0.24215','14.0.24215','','Caution. Removing this product might prevent some applications from running.','',0,1,'{69BCE4AC-9572-3271-A2FB-9423BDA36A43}','Inglés (Estados Unidos)','2017-07-14 00:00:00',32),(876,3,'Microsoft Corporation','Microsoft .NET Framework 4.5.1 Multi-Targeting Pack','4.5.50932','','','',0,1,'{6A0C6700-EA93-372C-8871-DCCF13D160A4}','Inglés (Estados Unidos)','2017-07-09 00:00:00',32),(877,3,'Microsoft Corporation','Microsoft Visual Studio 2015 Update 3 Diagnostic Tools - x86','14.0.25431','','','',0,1,'{6BD4394B-DE2E-4D0A-B835-31E2BD9AEC38}','Inglés (Estados Unidos)','2017-07-14 00:00:00',32),(878,3,'Microsoft Corporation','Roslyn Language Services - x86','14.0.23107','','','',0,1,'{6C1985E7-E1C5-3A95-86EF-2C62465F15C3}','Inglés (Estados Unidos)','2017-07-09 00:00:00',32),(879,3,'Microsoft Corporation','Objetos de administración de Microsoft SQL Server 2016','13.0.1601.5','','','',0,1,'{6DBC7C66-F543-4BC8-BDB9-81D1FB88DF8E}','Español (España, internacional)','2017-07-14 00:00:00',32),(880,3,'Microsoft Corporation','Microsoft Visual C++ 2005 Redistributable','8.0.61001','','','',0,1,'{710f4c1c-cc18-4c49-8cbf-51240c89a1a2}','Independiente del idioma','2017-07-15 00:00:00',32),(881,3,'getcomposer.org','Composer - Php Dependency Manager','','C:/Program Files (x86)/ComposerSetup/','','',0,1,'{7315AF68-E777-496A-A6A2-4763A98ED35A}_is1','','2017-10-21 00:00:00',32),(882,3,'Microsoft','Microsoft Visual Studio 2015 Update 3.1 Team Explorer Language Pack - ENU','14.102.25619','','','',0,1,'{78650EEF-83B0-3894-84C7-A64273BAFD04}','Español (España, internacional)','2017-07-14 00:00:00',32),(883,3,'Microsoft Corporation','SQL Server 2016 Management Studio for Reporting Services Localization','13.0.16100.1','','','',0,1,'{79E7370B-E5D6-4DAA-949B-A3F373AC1C84}','Inglés (Estados Unidos)','2017-07-09 00:00:00',32),(884,3,'Microsoft','Team Explorer for Microsoft Visual Studio 2015 Update 3.1','14.102.25619','','','',0,1,'{7A95671A-759E-3B83-B763-4289D1D24D73}','Inglés (Estados Unidos)','2017-07-14 00:00:00',32),(885,3,'Microsoft Corporation','Microsoft .NET Framework 4.6.1 Developer Pack (ESN)','4.6.1055','','','',0,1,'{7aa0c146-f0b7-46e6-a453-64fd94808701}','','0000-00-00 00:00:00',32),(886,3,'Microsoft Corporation','SQL Server 2016 Common Files','13.0.1601.5','','','',0,1,'{80E77F09-0045-4094-AF83-A8525CF1C393}','Inglés (Estados Unidos)','2017-07-09 00:00:00',32),(887,3,'Microsoft Corporation','Visual C++ IDE Core Package','14.0.25431','','','',0,1,'{81B64FE0-5DC1-35D4-A51E-AD11803C520C}','Inglés (Estados Unidos)','2017-07-14 00:00:00',32),(888,3,'Microsoft Corporation','Microsoft Visual Studio Tools for Applications 2015 Language Support','14.0.23107.00','','','',0,1,'{85CEB20F-C2D6-3FDC-9A9D-5957CD88E9E5}','Inglés (Estados Unidos)','2017-07-13 00:00:00',32),(889,3,'Microsoft Corporation','Microsoft .NET Framework 4.6.1 Targeting Pack','4.6.01055','','','',0,1,'{8BC3EEC9-090F-4C53-A8DA-1BEC913040F9}','Inglés (Estados Unidos)','2017-07-13 00:00:00',32),(890,3,'Microsoft Corporation','Microsoft .NET Framework 4.6.1 Targeting Pack (ENU)','4.6.01055','','','',0,1,'{8EEB28EE-5141-411C-9CF0-9952264FE4AF}','Inglés (Estados Unidos)','2017-07-13 00:00:00',32),(891,3,'Microsoft Corporation','Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729.17','9.0.30729','','','',0,1,'{9A25302D-30C0-39D9-BD6F-21E6EC160475}','Inglés (Estados Unidos)','2017-12-27 00:00:00',32),(892,3,'Microsoft Corporation','Microsoft SQL Server 2016 T-SQL Language Service','13.0.14500.10','','','',0,1,'{9E8E5CCA-24DC-4812-9B9D-E7882F877FEE}','Español (España, internacional)','2017-07-14 00:00:00',32),(893,3,'Microsoft Corporation','Paquete de idioma de Visor de Ayuda de Microsoft 2.2 - ESN','2.2.25420','','','',0,1,'{A0A5526C-A3EB-34B1-9A5B-F2FE4D9C6EFB}','Español (España, internacional)','2017-07-14 00:00:00',32),(894,3,'Microsoft Corporation','Microsoft SQL Server Data-Tier Application Framework (x86)','13.0.3485.1','','','',0,1,'{A9865C00-A2E1-4FE5-8821-72EEFBDD32E2}','Inglés (Estados Unidos)','2017-07-09 00:00:00',32),(895,3,'Microsoft Corporation','Requisitos previos para SSDT','12.0.2000.8','','','',0,1,'{A9AEF3CC-3E3A-4218-A9E8-76F4E4657BAE}','Español (España, internacional)','2017-07-13 00:00:00',32),(896,3,'Microsoft Corporation','SQL Server 2016 Management Studio for Analysis Services','13.0.16100.1','','','',0,1,'{AA98A8CD-46F6-4A6F-A3C8-ED88A12E077C}','Inglés (Estados Unidos)','2017-07-09 00:00:00',32),(897,3,'Microsoft Corporation','SQL Server 2016 Management Studio for Analysis Services Localization','13.0.16100.1','','','',0,1,'{ABDC2357-6845-439A-9C9E-1879EF56520C}','Inglés (Estados Unidos)','2017-07-09 00:00:00',32),(898,3,'Adobe Systems Incorporated','Adobe Refresh Manager','1.8.0','C:/Program Files (x86)/Common Files/Adobe/ARM/1.0/','','',0,1,'{AC76BA86-0804-1033-1959-001824245926}','Inglés (Estados Unidos)','2017-11-15 00:00:00',32),(899,3,'Adobe Systems Incorporated','Adobe Acrobat Reader DC - Español','18.009.20050','C:/Program Files (x86)/Adobe/Acrobat Reader DC/','','',0,1,'{AC76BA86-7AD7-1034-7B44-AC0F074E4100}','Español (España, tradicional)','2017-12-01 00:00:00',32),(900,3,'ASUSTeKcomputer.Inc','Asus Sonic Studio 3','3.1.3.38259','','','',0,1,'{acef060a-19fa-4c87-b145-524e6faf08c4}','','0000-00-00 00:00:00',32),(901,3,'Microsoft Corporation','SQL Server 2016 Client Tools','13.0.16100.1','','','',0,1,'{AE17FE02-63E7-4530-A819-EBEA34473990}','Inglés (Estados Unidos)','2017-07-09 00:00:00',32),(902,3,'Microsoft Corporation','SQL Server 2016 Management Studio','13.0.16100.1','','','',0,1,'{AFE7E518-F90B-4F6E-9F16-DE666A005C80}','Inglés (Estados Unidos)','2017-07-09 00:00:00',32),(903,3,'Microsoft Corporation','Microsoft Visual C++ 2012 x86 Additional Runtime - 11.0.61030','11.0.61030','','Caution. Removing this product might prevent some applications from running.','',0,1,'{B175520C-86A2-35A7-8619-86DC379688B9}','Inglés (Estados Unidos)','2017-07-02 00:00:00',32),(904,3,'Microsoft Corporation','SQL Server 2016 Management Studio','13.0.16100.1','','','',0,1,'{B3919035-B027-45F5-8184-373E86668CC3}','Inglés (Estados Unidos)','2017-07-09 00:00:00',32),(905,3,'Microsoft Corporation','SQL Server 2016 Common Files','13.0.1601.5','','','',0,1,'{B9EED901-157A-4AB8-BFD1-2C6FBF5CF802}','Inglés (Estados Unidos)','2017-07-09 00:00:00',32),(906,3,'Microsoft Corporation','TypeScript Tools for Microsoft Visual Studio 2015','1.8.36.0','','','',0,1,'{BA5762C7-D35F-4725-A4BD-525854127018}','Inglés (Estados Unidos)','2017-07-14 00:00:00',32),(907,3,'Intel(R) Corporation','Software para dispositivos de chipset Intel®','10.1.1.38','','','',0,1,'{bb0592a7-5772-4736-9d55-2402740085db}','','0000-00-00 00:00:00',32),(908,3,'Microsoft Corporation','Microsoft Visual C++ 2015 x86 Minimum Runtime - 14.0.24215','14.0.24215','','Caution. Removing this product might prevent some applications from running.','',0,1,'{BBF2AC74-720C-3CB3-8291-5E34039232FA}','Inglés (Estados Unidos)','2017-07-14 00:00:00',32),(909,3,'Microsoft Corporation','Servicio de lenguaje T-SQL de Microsoft SQL Server 2014','12.0.2000.8','','','',0,1,'{BC9D3E21-F10A-4DF6-A848-4D1081415CF2}','Español (España, internacional)','2017-07-13 00:00:00',32),(910,3,'Microsoft Corporation','Microsoft Visual C++ 2012 x86 Minimum Runtime - 11.0.61030','11.0.61030','','Caution. Removing this product might prevent some applications from running.','',0,1,'{BD95A8CD-1D9F-35AD-981A-3E7925026EBB}','Inglés (Estados Unidos)','2017-07-02 00:00:00',32),(911,3,'Microsoft Corporation','SQL Server 2016 Management Studio for Reporting Services','13.0.16100.1','','','',0,1,'{BF22A12B-CBEC-41A5-9EEA-1068E9A7065B}','Inglés (Estados Unidos)','2017-07-09 00:00:00',32),(912,3,'Microsoft Corporation','Microsoft Visual Studio Tools for Applications 2015 Language Support Finalizer','14.0.23107.00','','','',0,1,'{BF6E6B74-88F5-358F-AB6D-0A42C18F2824}','Inglés (Estados Unidos)','2017-07-09 00:00:00',32),(913,3,'Microsoft Corporation','Microsoft Visual C++ 2012 Redistributable (x64) - 11.0.60610','11.0.60610.1','','','',0,1,'{c027e08d-3df4-4670-b8b9-fd7cbd3e1435}','','0000-00-00 00:00:00',32),(914,3,'Microsoft Corporation','Microsoft System CLR Types para SQL Server 2014','12.0.2402.29','','','',0,1,'{C307EC0E-7D80-4CEA-AB60-85D1ED59785E}','Español (España, internacional)','2017-07-14 00:00:00',32),(915,3,'ASUSTek Computer Inc.','ASUS Product Register Program','1.0.030','','ASUS Product Register Program','',0,1,'{C87D79F6-F813-4812-B7A9-CCCAAB8B1188}','Inglés (Estados Unidos)','2017-06-17 00:00:00',32),(916,3,'Microsoft Corporation','Microsoft Visual C++ 2015 x86 Debug Runtime - 14.0.24215','14.0.24215','','Caution. Removing this product might prevent some applications from running.','',0,1,'{C956892E-D1F3-3781-935C-8D9060E7CD7E}','Inglés (Estados Unidos)','2017-07-14 00:00:00',32),(917,3,'Microsoft Corporation','Microsoft Visual C++ 2012 Redistributable (x64) - 11.0.61030','11.0.61030.0','','','',0,1,'{ca67548a-5ebe-413a-b50c-4b9ceb6d66c6}','','0000-00-00 00:00:00',32),(918,3,'ASUSTeK Computer Inc.','AI Suite 3','1.01.57','','','',0,1,'{CD36E28B-6023-469A-91E7-049A2874EC13}','','0000-00-00 00:00:00',32),(919,3,'Microsoft Corporation','Paquete de compatibilidad con múltiples versiones de Microsoft .NET Framework 4.5.1 (español)','4.5.50932','','','',0,1,'{D2D0CD35-523F-3D07-8ADE-96A5B4B74485}','Español (España, internacional)','2017-07-13 00:00:00',32),(920,3,'ASUSTeKcomputer.Inc','Asus Sonic Radar 3','3.1.3.38259','','','',0,1,'{d385a418-0a04-44f8-9284-522ed67a2926}','','0000-00-00 00:00:00',32),(921,3,'Microsoft Corporation','Microsoft System CLR Types para SQL Server 2016','13.0.1601.5','','','',0,1,'{D3B9EAC7-D4D3-4897-8252-F4BBFA51B724}','Español (España, internacional)','2017-07-14 00:00:00',32),(922,3,'UBISoft','Assassin\'\'s Creed Brotherhood versión 1.03','1.03','C:/Program Files (x86)/Assassin\'\'s Creed Brotherhood/','','',0,1,'{D785301A-D163-4288-9BCB-D795579C318D}_is1','','2017-06-23 00:00:00',32),(923,3,'Microsoft Corporation','Microsoft Visual C++ 2015 Redistributable (x64) - 14.0.24215','14.0.24215.1','','','',0,1,'{d992c12e-cab2-426f-bde3-fb8c53950b0d}','','0000-00-00 00:00:00',32),(924,3,'Microsoft Corporation','Microsoft Visual Studio 2015 XAML Designer','14.0.25431','','','',0,1,'{D9CAC4A5-7F4C-3792-90F1-C93F4FDB4120}','Inglés (Estados Unidos)','2017-07-14 00:00:00',32),(925,3,'Microsoft Corporation','SQL Server 2016 Client Tools Extensions','13.0.1601.5','','','',0,1,'{DE5995C3-4C4F-457F-9DB6-224EAB49D322}','Inglés (Estados Unidos)','2017-07-09 00:00:00',32),(926,3,'Microsoft Corporation','Microsoft Visual C++ 2015 Redistributable (x86) - 14.0.24215','14.0.24215.1','','','',0,1,'{e2803110-78b3-4664-a479-3611a381656a}','','0000-00-00 00:00:00',32),(927,3,'Asmedia Technology','Asmedia USB Host Controller Driver','1.16.38.1','C:/Program Files (x86)/ASM104xUSB3/','','',0,1,'{E4FB0B39-C991-4EE7-95DD-1A1A7857D33D}','Independiente del idioma','2017-06-17 00:00:00',32),(928,3,'Microsoft Corporation','SQL Server 2016 Client Tools Extensions','13.0.1601.5','','','',0,1,'{EC234B43-728E-4CA9-8AE6-7815325D6AAD}','Inglés (Estados Unidos)','2017-07-09 00:00:00',32),(929,3,'ASUSTeK Computer Inc.','ASUS ROG Connect Plus','1.00.35','C:/Program Files (x86)/ASUS/ASUS ROG Connect Plus','','',0,1,'{ECF51D37-52ED-4871-BF8B-FEA34B8B4120}','','0000-00-00 00:00:00',32),(930,3,'Microsoft Corporation','Microsoft System CLR Types para SQL Server 2014','12.0.2402.11','','','',0,1,'{EFC3D6ED-EAF9-441B-BBF1-CAA3D83D1042}','Español (España, internacional)','2017-07-13 00:00:00',32),(931,3,'Microsoft Corporation','Microsoft Visual C++ 2010 x86 Redistributable - 10.0.40219','10.0.40219','','Caution. Removing this product might prevent some applications from running.','',0,1,'{F0C3E5D1-1ADE-321E-8167-68EF0DE699A5}','Independiente del idioma','2017-07-09 00:00:00',32),(932,3,'Realtek Semiconductor Corp.','Realtek High Definition Audio Driver','6.0.1.7997','C:/Program Files/Realtek/Audio/HDA','','',0,1,'{F132AF7F-7BCA-4EDE-8A7C-958108FE7DBC}','','0000-00-00 00:00:00',32),(933,3,'Microsoft Corporation','Visual C++ IDE Debugger Package','14.0.25431','','','',0,1,'{F3F23EAE-D617-3A1F-8717-FACD35A1ECEE}','Inglés (Estados Unidos)','2017-07-14 00:00:00',32),(934,3,'Electronic Arts','Need for Speed™ Payback','1.0.51.9958','C:/Program Files (x86)/Origin Games/Need for Speed Payback/','','',0,1,'{F4CF3D08-565C-40B7-B351-D3033DE2172B}','','0000-00-00 00:00:00',32),(935,3,'Microsoft Corporation','Microsoft Visual C++ 2013 Redistributable (x86) - 12.0.30501','12.0.30501.0','','','',0,1,'{f65db027-aff3-4070-886a-0d87064aabb1}','','0000-00-00 00:00:00',32),(936,3,'Microsoft Corporation','Explorador para SQL Server 2016','13.0.1601.5','','','',0,1,'{F7F7C30E-F6D4-41BB-A8BF-75601559E234}','Español (España, internacional)','2017-07-09 00:00:00',32),(937,3,'Microsoft Corporation','Microsoft Visual C++ 2013 x86 Additional Runtime - 12.0.21005','12.0.21005','','Caution. Removing this product might prevent some applications from running.','',0,1,'{F8CFEB22-A2E7-3971-9EDA-4B11EDEFC185}','Inglés (Estados Unidos)','2017-12-09 00:00:00',32),(938,3,'Microsoft Corporation','Microsoft SQL Server Management Studio - 16.5.1','13.0.16100.1','','','',0,1,'{f93884c2-f87d-4824-b97a-bca80ea864b6}','','0000-00-00 00:00:00',32),(939,3,'Microsoft Corporation','Microsoft Visual Studio 2015 XAML Visual Diagnostics','14.0.25431','','','',0,1,'{FD733BA2-59BF-4BF1-ADD4-14A1F3EB98CD}','Inglés (Estados Unidos)','2017-07-14 00:00:00',32),(940,3,'CPUID, Inc.','CPUID ROG CPU-Z 1.77','1.77','C:/Program Files/CPUID/ROG CPU-Z/','','',0,1,'CPUID ROG CPU-Z_is1','','2017-07-01 00:00:00',64),(941,3,'SEIKO EPSON Corporation','EPSON L355 Series Printer Uninstall','','','','',0,1,'EPSON L355 Series','','0000-00-00 00:00:00',64),(942,3,'The Git Development Community','Git version 2.9.0','2.9.0','C:/Program Files/Git/','','',0,1,'Git_is1','','2017-07-02 00:00:00',64),(943,3,'Microsoft Corporation','Critical Update for SQL Server 2016 MSVCRT Prerequisites (KB3210111) (64-bit)','13.0.1728.2','','','',0,1,'KB3210111','Independiente del idioma','2017-07-15 00:00:00',64),(944,3,'Microsoft Corporation','Critical Update for SQL Server 2016 MSVCRT Prerequisites (KB4019088) (64-bit)','13.0.1742.0','','','',0,1,'KB4019088','Independiente del idioma','2017-08-08 00:00:00',64),(945,3,'Logitech Inc.','Logitech Gaming Software 8.96','8.96.88','','','',0,1,'Logitech Gaming Software','','0000-00-00 00:00:00',64),(946,3,'','Microsoft SQL Server 2016 (64-bit)','','','','',0,1,'Microsoft SQL Server 13','','0000-00-00 00:00:00',64),(947,3,'Microsoft Corporation','Microsoft SQL Server 2016 (64-bit)','','','','',0,1,'Microsoft SQL Server SQLServer2016','','0000-00-00 00:00:00',64),(948,3,'Microsoft Corporation','Microsoft Office 365 ProPlus - es-es','16.0.8730.2165','C:/Program Files/Microsoft Office','','',0,1,'O365ProPlusRetail - es-es','','0000-00-00 00:00:00',64),(949,3,'OpenVPN Technologies, Inc.','OpenVPN 2.4.4-I601','2.4.4-I601','C:/Program Files/OpenVPN/','','',0,1,'OpenVPN','Inglés (Estados Unidos)','0000-00-00 00:00:00',64),(950,3,'Intel','Intel(R) Network Connections 21.1.30.0','21.1.30.0','C:/Program Files/Intel/','','',0,1,'PROSetDX','Independiente del idioma','2017-06-17 00:00:00',64),(951,3,'Piriform','Speccy','1.29','C:/Program Files/Speccy','','',0,1,'Speccy','','0000-00-00 00:00:00',64),(952,3,'Ubisoft Montreal','Assassin\'\'s Creed Revelations','','C:/Program Files (x86)/Steam/steamapps/common/Assassin\'\'s Creed Revelations','','',0,1,'Steam App 201870','','0000-00-00 00:00:00',64),(953,3,'Rockstar North','Grand Theft Auto V','','C:/Program Files (x86)/Steam/steamapps/common/Grand Theft Auto V','','',0,1,'Steam App 271590','','0000-00-00 00:00:00',64),(954,3,'Criterion Games','Need for Speed: Hot Pursuit','','C:/Program Files (x86)/Steam/steamapps/common/Need for Speed Hot Pursuit','','',0,1,'Steam App 47870','','0000-00-00 00:00:00',64),(955,3,'Konami Digital Entertainment Co., Ltd.','PRO EVOLUTION SOCCER 2018','','C:/Program Files (x86)/Steam/steamapps/common/PRO EVOLUTION SOCCER 2018','','',0,1,'Steam App 592580','','0000-00-00 00:00:00',64),(956,3,'Sublime HQ Pty Ltd','Sublime Text Build 3126','','C:/Program Files/Sublime Text 3/','','',0,1,'Sublime Text 3_is1','','2017-07-09 00:00:00',64),(957,3,'','TAP-Windows 9.21.2','9.21.2','','','',0,1,'TAP-Windows','','0000-00-00 00:00:00',64),(958,3,'VideoLAN','VLC media player','2.2.6','C:/Program Files/VideoLAN/VLC','','',0,1,'VLC media player','','0000-00-00 00:00:00',64),(959,3,'LunarG, Inc.','Vulkan Run Time Libraries 1.0.61.0','1.0.61.0','','','',0,1,'VulkanRT1.0.61.0','','0000-00-00 00:00:00',64),(960,3,'win.rar GmbH','WinRAR 5.40 (64-bit)','5.40.0','C:/Program Files/WinRAR/','','',0,1,'WinRAR archiver','Independiente del idioma','0000-00-00 00:00:00',64),(961,3,'Microsoft Corporation','SQL Server 2016 Connection Info','13.0.14500.10','','','',0,1,'{01525D66-F23F-49AB-B10F-4DABC4FC6653}','Español (España, internacional)','2017-07-09 00:00:00',64),(962,3,'','IIS Express Application Compatibility Database for x64','','','','',0,1,'{08274920-8908-45c2-9258-8ad67ff77b09}.sdb','','0000-00-00 00:00:00',64),(963,3,'ASUSTeKcomputer.Inc','NahimicSettingsConfigurator','3.1.301','','','',0,1,'{0CA6B676-1CB4-49D4-BD7E-CD41A5828130}','Inglés (Estados Unidos)','2017-07-01 00:00:00',64),(964,3,'Oracle Corporation','MySQL Workbench 6.3 CE','6.3.7','','','',0,1,'{0D901124-B910-4985-9D4F-AC5C2FEF7493}','Inglés (Estados Unidos)','2017-07-09 00:00:00',64),(965,3,'Microsoft Corporation','Sql Server Customer Experience Improvement Program','13.0.1601.5','','','',0,1,'{0D9BD39A-A870-4FDF-B590-1E9787CF16D9}','Inglés (Estados Unidos)','2017-07-09 00:00:00',64),(966,3,'ASUSTeKcomputer.Inc','SonicMapperConfigurator','3.1.3.38194','','','',0,1,'{107DC151-D0CB-440D-85E8-ABBB04B31329}','Inglés (Estados Unidos)','2017-07-01 00:00:00',64),(967,3,'Microsoft Corporation','Microsoft SQL Server 2012 Native Client','11.3.6518.0','','','',0,1,'{1385D3DB-8E80-427B-91D2-B7535862B8E4}','Inglés (Estados Unidos)','2017-07-09 00:00:00',64),(968,3,'Microsoft Corporation','IIS 10.0 Express','10.0.1736','','','',0,1,'{13FD7E30-D2F1-498D-ABC2-A4242DB6610E}','Inglés (Estados Unidos)','2017-07-14 00:00:00',64),(969,3,'Microsoft Corporation','Microsoft System CLR Types para SQL Server 2014','12.0.2402.11','','','',0,1,'{14305445-4F3B-4416-862D-DC8DCECF2E80}','Español (España, internacional)','2017-07-13 00:00:00',64),(970,3,'Intel Corporation','Intel(R) Management Engine Components','11.6.0.1030','C:/Program Files (x86)/Intel/Intel(R) Management Engine Components/','','',0,1,'{1CEAC85D-2590-4760-800F-8DE5E91F3700}','','0000-00-00 00:00:00',64),(971,3,'Microsoft Corporation','Microsoft Visual C++ 2010 x64 Redistributable - 10.0.40219','10.0.40219','','Caution. Removing this product might prevent some applications from running.','',0,1,'{1D8E6291-B0D5-35EC-8441-6616F567A0F7}','Independiente del idioma','2017-07-09 00:00:00',64),(972,3,'Intel','Intel(R) Network Connections 21.1.30.0','21.1.30.0','C:/Program Files/Intel/','','',0,1,'{1E5EDF73-13EC-4211-820D-1900B8BD7951}','Independiente del idioma','2017-06-17 00:00:00',64),(973,3,'Microsoft Corporation','Microsoft System CLR Types para SQL Server 2016','13.0.1601.5','','','',0,1,'{1F750C2E-35AA-4B52-866E-08943C5E8361}','Español (España, internacional)','2017-07-14 00:00:00',64),(974,3,'Oracle Corporation','Java 8 Update 131 (64-bit)','8.0.1310.11','C:/Program Files/Java/jre1.8.0_131/','','',0,1,'{26A24AE4-039D-4CA4-87B4-2F64180131F0}','Inglés (Estados Unidos)','2017-07-02 00:00:00',64),(975,3,'Microsoft Corporation','Microsoft Visual Studio 2015 Update 3 Diagnostic Tools - amd64','14.0.25431','','','',0,1,'{2D02967A-1085-4421-8559-B0147208EE13}','Inglés (Estados Unidos)','2017-07-14 00:00:00',64),(976,3,'ASUSTeKcomputer.Inc','SonicStudio3Setup','3.1.3.38259','','','',0,1,'{2FFEC736-656D-41D7-A4D2-AD3CCF3EC272}','Inglés (Estados Unidos)','2017-07-01 00:00:00',64),(977,3,'Microsoft Corporation','SQL Server 2016 DMF','13.0.1601.5','','','',0,1,'{2FFF0757-4360-42F5-8814-16BB5CF0145F}','Inglés (Estados Unidos)','2017-07-09 00:00:00',64),(978,3,'Oracle Corporation','Oracle VM VirtualBox 5.2.4','5.2.4','','','',0,1,'{33042B56-E453-40AB-B313-0EB544FAC0F9}','Inglés (Estados Unidos)','2018-01-06 00:00:00',64),(979,3,'Microsoft Corporation','SQL Server 2016 DMF','13.0.1601.5','','','',0,1,'{34A20DEE-6AD4-44A6-95FF-DFF95CD22B8C}','Inglés (Estados Unidos)','2017-07-09 00:00:00',64),(980,3,'ASUSTeKcomputer.Inc','ProductDaemonSetup','3.1.301','','','',0,1,'{36606417-B1C4-42C2-B5C1-67972DA63DAB}','Inglés (Estados Unidos)','2017-07-01 00:00:00',64),(981,3,'Microsoft Corporation','Microsoft Visual C++ 2012 x64 Additional Runtime - 11.0.61030','11.0.61030','','Caution. Removing this product might prevent some applications from running.','',0,1,'{37B8F9C7-03FB-3253-8781-2517C99D7C00}','Inglés (Estados Unidos)','2017-07-02 00:00:00',64),(982,3,'Microsoft Corporation','Biblioteca de autenticación de AD para SQL Server','13.0.1601.5','','','',0,1,'{3921A687-A672-4EB9-A5CF-D1AB3E775010}','Español (España, internacional)','2017-07-14 00:00:00',64),(983,3,'Microsoft Corporation','Microsoft Visual C++ 2015 x64 Debug Runtime - 14.0.24215','14.0.24215','','Caution. Removing this product might prevent some applications from running.','',0,1,'{406CC721-9FAD-3610-B44E-3130F84358D8}','Inglés (Estados Unidos)','2017-07-14 00:00:00',64),(984,3,'Simon Tatham','PuTTY release 0.70 (64-bit)','0.70.0.0','','','',0,1,'{45B3032F-22CC-40CD-9E97-4DA7095FA5A2}','Inglés (Estados Unidos)','2017-10-25 00:00:00',64),(985,3,'Microsoft Corporation','SQL Server 2016 Management Studio','13.0.16100.1','','','',0,1,'{4C2A6240-B6E6-4186-9C0B-2B198BF7D4A8}','Inglés (Estados Unidos)','2017-07-09 00:00:00',64),(986,3,'ASUSTeKcomputer.Inc','ApoDispatchConfigurator','3.1.301','','','',0,1,'{4FEB3307-A0EF-4385-9C8F-4B4C1503311C}','Inglés (Estados Unidos)','2017-07-01 00:00:00',64),(987,3,'Microsoft Corporation','Microsoft Visual C++ 2015 x64 Minimum Runtime - 14.0.24215','14.0.24215','','Caution. Removing this product might prevent some applications from running.','',0,1,'{50A2BC33-C9CD-3BF1-A8FF-53C10A0B183C}','Inglés (Estados Unidos)','2017-07-14 00:00:00',64),(988,3,'Microsoft Corporation','SQL Server 2016 Database Engine Services','13.0.1601.5','','','',0,1,'{51574D2C-DE28-4441-BDC2-967F0FFC0918}','Inglés (Estados Unidos)','2017-08-08 00:00:00',64),(989,3,'Microsoft Corporation','SQL Server 2016 Database Engine Services','13.0.1601.5','','','',0,1,'{575DC6B9-A50C-478D-8F25-615423553C02}','Español (España, internacional)','2017-07-09 00:00:00',64),(990,3,'Microsoft Corporation','SQL Server 2016 Common Files','13.0.1601.5','','','',0,1,'{57846DA8-8B5D-4466-B850-E8CDFC94046C}','Inglés (Estados Unidos)','2017-08-08 00:00:00',64),(991,3,'Microsoft Corporation','SQL Server 2016 Management Studio','13.0.16100.1','','','',0,1,'{61508F21-0B78-40C9-9013-04C4536AF07D}','Inglés (Estados Unidos)','2017-07-09 00:00:00',64),(992,3,'Microsoft Corporation','SQL Server 2016 Shared Management Objects Extensions','13.0.1601.5','','','',0,1,'{646BAF29-64C4-4D02-B192-37468061E1D6}','Español (España, internacional)','2017-07-09 00:00:00',64),(993,3,'Oracle Corporation','Java SE Development Kit 8 Update 131 (64-bit)','8.0.1310.11','C:/Program Files/Java/jdk1.8.0_131/','','',0,1,'{64A3A4F4-B792-11D6-A78A-00B0D0180131}','Inglés (Estados Unidos)','2017-07-02 00:00:00',64),(994,3,'Intel Corporation','Intel(R) Management Engine Components','11.6.0.1030','','','',0,1,'{6574B7E5-BC77-4EE6-8319-C18FD8B0C960}','Inglés (Estados Unidos)','2017-06-17 00:00:00',64),(995,3,'Microsoft Corporation','SQL Server 2016 Database Engine Shared','13.0.1601.5','','','',0,1,'{686A81C0-C8E4-46F6-952F-B19A28E8C430}','Inglés (Estados Unidos)','2017-07-09 00:00:00',64),(996,3,'Microsoft Corporation','Microsoft ODBC Driver 11 for SQL Server','12.2.5543.11','','','',0,1,'{6A2FD9BA-48FA-426B-AA59-E333037A473F}','Español (España, internacional)','2017-10-21 00:00:00',64),(997,3,'Intel Corporation','Microsoft VC++ redistributables repacked.','12.0.0.0','','','',0,1,'{6CAEAB4F-2B43-485A-B7F9-AFC2D88BD7A3}','Inglés (Estados Unidos)','2017-06-17 00:00:00',64),(998,3,'Microsoft Corporation','Utilidades línea de comandos de Microsoft SQL Server 2012','11.1.3000.0','','','',0,1,'{6D818CE1-E063-4165-BC33-0024269411C5}','Español (España, internacional)','2017-07-13 00:00:00',64),(999,3,'Microsoft Corporation','Microsoft SQL Server 2016 T-SQL ScriptDom','13.0.1601.5','','','',0,1,'{6F4B30B6-BCB4-471E-A7AE-8429450358B4}','Español (España, internacional)','2017-07-14 00:00:00',64),(1000,3,'Microsoft Corporation','Microsoft System CLR Types para SQL Server 2014','12.0.2402.29','','','',0,1,'{73035780-95B1-411B-88C9-832B594A698E}','Español (España, internacional)','2017-07-14 00:00:00',64),(1001,3,'Microsoft Corporation','SQL Server 2016 Connection Info','13.0.14500.10','','','',0,1,'{74940EE5-66DB-42E3-AC30-295D13B461A7}','Inglés (Estados Unidos)','2017-07-09 00:00:00',64),(1002,3,'Intel Corporation','Intel® Trusted Connect Service Client','1.43.301.1','','','',0,1,'{75FE588B-F158-4BB3-A283-A8D18E522A52}','Inglés (Estados Unidos)','2017-06-17 00:00:00',64),(1003,3,'Microsoft Corporation','SQL Server 2016 SQL Diagnostics','13.0.1601.5','','','',0,1,'{766BE25E-D2B5-4E76-BCB0-29B801BADB3F}','Inglés (Estados Unidos)','2017-07-09 00:00:00',64),(1004,3,'Microsoft Corporation','Objetos de administración de Microsoft SQL Server 2014 (x64)','12.0.2000.8','','','',0,1,'{7BC14D15-03A1-49FC-A005-5E93241FCDB0}','Español (España, internacional)','2017-07-13 00:00:00',64),(1005,3,'Microsoft Corporation','SQL Server 2016 XEvent','13.0.1601.5','','','',0,1,'{7C648836-4C38-4943-A577-58DBF95BDC52}','Español (España, internacional)','2017-07-09 00:00:00',64),(1006,3,'Microsoft Corporation','SQL Server 2016 Client Tools Extensions','13.0.1601.5','','','',0,1,'{7E94713F-EF30-46EB-B809-BBA8603FBF9E}','Inglés (Estados Unidos)','2017-07-09 00:00:00',64),(1007,3,'Intel Corporation','Intel(R) Chipset Device Software','10.1.1.38','','','',0,1,'{81520FC5-3518-40E9-9803-70CE8A801D07}','Inglés (Estados Unidos)','2017-06-17 00:00:00',64),(1008,3,'Microsoft Corporation','Microsoft VSS Writer para SQL Server 2016','13.0.1601.5','','','',0,1,'{862D4A68-A05C-4236-A689-DCF944C4717B}','Español (España, internacional)','2017-08-08 00:00:00',64),(1009,3,'Microsoft Corporation','Microsoft Silverlight','5.1.50907.0','C:/Program Files/Microsoft Silverlight/','','',0,1,'{89F4137D-6C26-4A84-BDB8-2E5A4BB71E00}','Inglés (Estados Unidos)','2017-07-15 00:00:00',64),(1010,3,'Microsoft Corporation','SQL Server 2016 Connection Info','13.0.14500.10','','','',0,1,'{8A3AE1F0-0752-435D-A01C-033BDD629C8B}','Inglés (Estados Unidos)','2017-07-09 00:00:00',64),(1011,3,'','KMSpico','','C:/Program Files/KMSpico/','','',0,1,'{8B29D47F-92E2-4C20-9EE0-F710991F5D7C}_is1','','2017-06-17 00:00:00',64),(1012,3,'Microsoft Corporation','SQL Server 2016 XEvent','13.0.1601.5','','','',0,1,'{8CF2CA8E-3984-46B9-B493-F844F3774FA1}','Inglés (Estados Unidos)','2017-07-09 00:00:00',64),(1013,3,'Microsoft Corporation','SQL Server 2016 Common Files','13.0.1601.5','','','',0,1,'{8F49A432-9467-48AA-AAE6-78BCA6729452}','Español (España, internacional)','2017-07-09 00:00:00',64),(1014,3,'Microsoft Corporation','Office 16 Click-to-Run Licensing Component','16.0.8730.2165','','','',0,1,'{90160000-007E-0000-1000-0000000FF1CE}','Independiente del idioma','2018-01-05 00:00:00',64),(1015,3,'Microsoft Corporation','Office 16 Click-to-Run Extensibility Component','16.0.8730.2165','','','',0,1,'{90160000-008C-0000-1000-0000000FF1CE}','Independiente del idioma','2018-01-05 00:00:00',64),(1016,3,'Microsoft Corporation','Office 16 Click-to-Run Localization Component','16.0.8730.2165','','','',0,1,'{90160000-008C-0C0A-1000-0000000FF1CE}','Español (España, internacional)','2018-01-05 00:00:00',64),(1017,3,'Microsoft Corporation','Microsoft Visual C++ 2013 x64 Additional Runtime - 12.0.21005','12.0.21005','','Caution. Removing this product might prevent some applications from running.','',0,1,'{929FBD26-9020-399B-9A7A-751D61F0B942}','Inglés (Estados Unidos)','2017-06-16 00:00:00',64),(1018,3,'Microsoft Corporation','Microsoft Web Deploy 3.6','3.1238.1962','','','',0,1,'{94E1227C-08A9-4962-B388-1F05D89AEA75}','Inglés (Estados Unidos)','2017-07-14 00:00:00',64),(1019,3,'Microsoft Corporation','SQL Server 2016 Management Studio for Analysis Services','13.0.16100.1','','','',0,1,'{990249A8-5E93-4995-A6C7-54AE59A5B895}','Inglés (Estados Unidos)','2017-07-09 00:00:00',64),(1020,3,'Microsoft Corporation','Microsoft SQL Server 2016 Setup (English)','13.0.1742.0','','','',0,1,'{9916613E-6D6C-43B9-834F-91F438D4F403}','Inglés (Estados Unidos)','2017-08-08 00:00:00',64),(1021,3,'Microsoft Corporation','Archivos auxiliares de instalación de Microsoft SQL Server 2008','10.3.5500.0','','','',0,1,'{A4B617AA-D956-4CA3-AF96-CEE4D23319FC}','Español (España, internacional)','2017-07-09 00:00:00',64),(1022,3,'Microsoft Corporation','Microsoft Visual C++ 2013 x64 Minimum Runtime - 12.0.21005','12.0.21005','','Caution. Removing this product might prevent some applications from running.','',0,1,'{A749D8E6-B613-3BE3-8F5F-045C84EBA29B}','Inglés (Estados Unidos)','2017-06-16 00:00:00',64),(1023,3,'Microsoft Corporation','SQL Server 2016 Client Tools Extensions','13.0.1601.5','','','',0,1,'{AB765DC7-7642-4D1C-BEDC-035516CCD224}','Inglés (Estados Unidos)','2017-07-09 00:00:00',64),(1024,3,'ASUSTeKcomputer.Inc','DeviceRoutingConfigurator','3.1.301','','','',0,1,'{AC306567-A1B7-4208-8FED-97CF535050BC}','Inglés (Estados Unidos)','2017-07-01 00:00:00',64),(1025,3,'Intel Corporation','Intel(R) Management Engine Components','1.0.0.0','','','',0,1,'{AC4709F9-831D-4EDD-B8E8-83AC7C563B66}','Inglés (Estados Unidos)','2017-06-17 00:00:00',64),(1026,3,'','IIS Express Application Compatibility Database for x86','','','','',0,1,'{ad846bae-d44b-4722-abad-f7420e08bcd9}.sdb','','0000-00-00 00:00:00',64),(1027,3,'Microsoft Corporation','Microsoft HEVC Media Extension Installation for Microsoft.HEVCVideoExtension_1.0.2512.0_x64__8wekyb3d8bbwe (x64)','1.0.0.0','','','',0,1,'{B0169E83-757B-EF66-E2F0-391944D785BC}','Inglés (Estados Unidos)','2017-12-16 00:00:00',64),(1028,3,'NVIDIA Corporation','NVIDIA Ansel','388.13','C:/Program Files/NVIDIA Corporation/Ansel','','',0,1,'{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}_Ansel','español (Ecuador)','2017-11-18 00:00:00',64),(1029,3,'NVIDIA Corporation','NVIDIA Controlador de 3D Vision 388.13','388.13','C:/Program Files (x86)/NVIDIA Corporation/3D Vision','','',0,1,'{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}_Display.3DVision','español (Ecuador)','2017-12-14 00:00:00',64),(1030,3,'NVIDIA Corporation','Panel de control de NVIDIA 388.13','388.13','C:/Program Files/NVIDIA Corporation/Control Panel Client','','',0,1,'{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}_Display.ControlPanel','español (Ecuador)','2017-12-14 00:00:00',64),(1031,3,'NVIDIA Corporation','NVIDIA Controlador de gráficos 388.13','388.13','C:/Program Files/NVIDIA Corporation/Installer2/Display.Driver.{68A8FE3C-C3F9-4638-9006-31B260B61364}','','',0,1,'{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}_Display.Driver','español (Ecuador)','2017-12-14 00:00:00',64),(1032,3,'NVIDIA Corporation','NVIDIA GeForce Experience 3.10.0.95','3.10.0.95','C:/Program Files/NVIDIA Corporation/Installer2/Display.GFExperience.{A5C0E413-8BA2-46E2-AEF3-A4C4663C7BE9}','','',0,1,'{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}_Display.GFExperience','español (Ecuador)','2017-12-13 00:00:00',64),(1033,3,'NVIDIA Corporation','NVIDIA Controlador de la controladora 3D Vision 369.04','369.04','C:/Program Files/NVIDIA Corporation/Installer2/Display.NVIRUSB.{9D2DFAEF-229E-4323-A2C3-51B13533CBD7}','','',0,1,'{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}_Display.NVIRUSB','español (Ecuador)','2017-09-16 00:00:00',64),(1034,3,'NVIDIA Corporation','NVIDIA Optimus Update 29.1.0.0','29.1.0.0','C:/Program Files/NVIDIA Corporation/Installer2/Display.Optimus.{3C5332B4-245D-4042-9001-643238D53EB2}','','',0,1,'{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}_Display.Optimus','español (Ecuador)','2017-12-13 00:00:00',64),(1035,3,'NVIDIA Corporation','NVIDIA Software del sistema PhysX 9.17.0524','9.17.0524','C:/Program Files (x86)/NVIDIA Corporation/PhysX','','',0,1,'{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}_Display.PhysX','español (Ecuador)','2017-07-10 00:00:00',64),(1036,3,'NVIDIA Corporation','Actualización de NVIDIA 29.1.0.0','29.1.0.0','C:/Program Files/NVIDIA Corporation/Installer2/Display.Update.{F3D82AC5-01FD-4D05-AF5A-27BCC6EEB26C}','','',0,1,'{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}_Display.Update','español (Ecuador)','2017-12-13 00:00:00',64),(1037,3,'NVIDIA Corporation','NVIDIA SHIELD Streaming','7.1.0402','C:/Program Files/NVIDIA Corporation/NvStreamSrv','','',0,1,'{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}_GFExperience.NvStreamSrv','español (Ecuador)','2017-12-13 00:00:00',64),(1038,3,'NVIDIA Corporation','NVIDIA Install Application','2.1002.259.2253','C:/Program Files/NVIDIA Corporation/Installer2/InstallerCore','','',0,1,'{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}_installer','español (Ecuador)','2017-12-14 00:00:00',64),(1039,3,'NVIDIA Corporation','NVIDIA Backend','29.1.0.0','C:/Program Files (x86)/NVIDIA Corporation/Update Core','','',0,1,'{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}_NvBackend','español (Ecuador)','2017-12-13 00:00:00',64),(1040,3,'NVIDIA Corporation','NVIDIA Container','1.8','C:/Program Files/NVIDIA Corporation/NvContainer','','',0,1,'{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}_NvContainer','español (Ecuador)','2017-12-13 00:00:00',64),(1041,3,'NVIDIA Corporation','NVIDIA TelemetryApi helper for NvContainer','1.8','C:/Program Files/NVIDIA Corporation/Installer2/NvContainer.ContainerTelemetryApiHelper.{E2316F16-B44F-4309-A818-628243A6ACAD}','','',0,1,'{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}_NvContainer.ContainerTelemetryApiHelper','español (Ecuador)','2017-12-13 00:00:00',64),(1042,3,'NVIDIA Corporation','NVIDIA LocalSystem Container','1.8','C:/Program Files/NVIDIA Corporation/Installer2/NvContainer.LocalSystem.{675C6223-16A5-418C-907C-167D2BF40EB4}','','',0,1,'{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}_NvContainer.LocalSystem','español (Ecuador)','2017-12-13 00:00:00',64),(1043,3,'NVIDIA Corporation','NVIDIA Message Bus for NvContainer','1.8','C:/Program Files/NVIDIA Corporation/Installer2/NvContainer.MessageBus.{1A7B1C27-8184-40B7-AA01-E43F6018DCC5}','','',0,1,'{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}_NvContainer.MessageBus','español (Ecuador)','2017-12-13 00:00:00',64),(1044,3,'NVIDIA Corporation','NVIDIA NetworkService Container','1.8','C:/Program Files/NVIDIA Corporation/Installer2/NvContainer.NetworkService.{8B81E07E-E922-49FB-BD53-003AAE0E20CC}','','',0,1,'{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}_NvContainer.NetworkService','español (Ecuador)','2017-12-13 00:00:00',64),(1045,3,'NVIDIA Corporation','NVIDIA Session Container','1.8','C:/Program Files/NVIDIA Corporation/Installer2/NvContainer.Session.{EAECE0AE-4F1C-4079-9971-7A81783DDE75}','','',0,1,'{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}_NvContainer.Session','español (Ecuador)','2017-12-13 00:00:00',64),(1046,3,'NVIDIA Corporation','NVIDIA User Container','1.8','C:/Program Files/NVIDIA Corporation/Installer2/NvContainer.User.{AB9F4DEC-8EE0-45A4-A1EF-CD6ECEAFBC05}','','',0,1,'{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}_NvContainer.User','español (Ecuador)','2017-12-13 00:00:00',64),(1047,3,'NVIDIA Corporation','NVIDIA Display Container','1.2','C:/Program Files/NVIDIA Corporation/Display.NvContainer','','',0,1,'{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}_NVDisplayContainer','español (Ecuador)','2017-12-14 00:00:00',64),(1048,3,'NVIDIA Corporation','NVIDIA Display Container LS','1.2','C:/Program Files/NVIDIA Corporation/Installer2/NVDisplayContainerLS.{C40209A4-E795-4CA9-A78A-E954FCD18C34}','','',0,1,'{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}_NVDisplayContainerLS','español (Ecuador)','2017-12-14 00:00:00',64),(1049,3,'NVIDIA Corporation','NVIDIA Display Watchdog Plugin','1.2','C:/Program Files/NVIDIA Corporation/Installer2/NVDisplayPluginWatchdog.{9B4DC1DD-E27F-40ED-845A-B50BEA1DE8B4}','','',0,1,'{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}_NVDisplayPluginWatchdog','español (Ecuador)','2017-12-14 00:00:00',64),(1050,3,'NVIDIA Corporation','NVIDIA Display Session Container','1.2','C:/Program Files/NVIDIA Corporation/Installer2/NVDisplaySessionContainer.{C3F35BCC-0441-400D-88F4-AC8BF0CCDEEE}','','',0,1,'{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}_NVDisplaySessionContainer','español (Ecuador)','2017-12-14 00:00:00',64),(1051,3,'NVIDIA Corporation','NVIDIA NodeJS','3.10.0.95','C:/Program Files/NVIDIA Corporation/Installer2/NvNodejs.{2D0CA375-EBB2-4AB7-A9C1-78986DFC28FF}','','',0,1,'{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}_NvNodejs','español (Ecuador)','2017-12-13 00:00:00',64),(1052,3,'NVIDIA Corporation','NVIDIA Watchdog Plugin for NvContainer','1.8','C:/Program Files/NVIDIA Corporation/Installer2/NvPlugin.Watchdog.{D2A0342E-1FF7-4CE0-9EF7-36BB3EC6A2C9}','','',0,1,'{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}_NvPlugin.Watchdog','español (Ecuador)','2017-12-13 00:00:00',64),(1053,3,'NVIDIA Corporation','NVIDIA Telemetry Client','7.8.8.0','C:/Program Files/NVIDIA Corporation/NvTelemetry','','',0,1,'{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}_NvTelemetry','español (Ecuador)','2017-12-13 00:00:00',64),(1054,3,'NVIDIA Corporation','NVIDIA Telemetry Container','7.8.8.0','C:/Program Files/NVIDIA Corporation/Installer2/NvTelemetryContainer.{2C0EA525-C47B-4F2C-80DB-150527CDCE1C}','','',0,1,'{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}_NvTelemetryContainer','español (Ecuador)','2017-12-13 00:00:00',64),(1055,3,'NVIDIA Corporation','NVIDIA Virtual Host Controller','2.02.0.5','C:/Program Files/NVIDIA Corporation/Installer2/NvvHci.{817EACDC-BAB3-45B5-B677-8A4229F0CD8E}','','',0,1,'{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}_NvvHci','español (Ecuador)','2017-12-13 00:00:00',64),(1056,3,'NVIDIA Corporation','Nvidia Share','3.10.0.95','C:/Program Files/NVIDIA Corporation/Installer2/OSC.{856BF0D1-DF86-454E-A62C-653DDAF6A07C}','','',0,1,'{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}_OSC','español (Ecuador)','2017-12-13 00:00:00',64),(1057,3,'NVIDIA Corporation','NVIDIA ShadowPlay 3.10.0.95','3.10.0.95','C:/Program Files/NVIDIA Corporation/ShadowPlay','','',0,1,'{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}_ShadowPlay','español (Ecuador)','2017-12-13 00:00:00',64),(1058,3,'NVIDIA Corporation','NVIDIA SHIELD Wireless Controller Driver','3.10.0.95','C:/Program Files/NVIDIA Corporation/Installer2/ShieldWirelessController.{B26967DB-C505-4C06-B554-FEFAE1648219}','','',0,1,'{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}_ShieldWirelessController','español (Ecuador)','2017-12-13 00:00:00',64),(1059,3,'NVIDIA Corporation','NVIDIA Update Core','29.1.0.0','C:/Program Files (x86)/NVIDIA Corporation/Update Core','','',0,1,'{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}_Update.Core','español (Ecuador)','2017-12-13 00:00:00',64),(1060,3,'NVIDIA Corporation','NVIDIA Virtual Audio 4.02.2','4.02.2','C:/Program Files/NVIDIA Corporation/Installer2/VirtualAudio.Driver.{F5FAB38A-48EE-4BEE-97F2-F95D73EC232B}','','',0,1,'{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}_VirtualAudio.Driver','español (Ecuador)','2017-12-13 00:00:00',64),(1061,3,'Microsoft Corporation','SQL Server 2016 Shared Management Objects Extensions','13.0.1601.5','','','',0,1,'{B6E1A5EB-1C58-4A04-B76B-E5FE1BE22CA1}','Inglés (Estados Unidos)','2017-07-09 00:00:00',64),(1062,3,'Microsoft Corporation','Microsoft SQL Server 2016 RsFx Driver','13.0.1601.5','','','',0,1,'{B9E13376-B7BD-48AB-A643-67CC4A8FA607}','Inglés (Estados Unidos)','2017-07-09 00:00:00',64),(1063,3,'Microsoft Corporation','Microsoft SQL Server 2014 Transact-SQL ScriptDom','12.0.2000.8','','','',0,1,'{C1A73781-053A-4E1F-887E-8217ED2DDDBC}','Español (España, internacional)','2017-07-13 00:00:00',64),(1064,3,'Microsoft Corporation','Objetos de administración de Microsoft SQL Server 2016 (x64)','13.0.1601.5','','','',0,1,'{CA1A1EB1-809D-44E5-84D8-7431023F9882}','Español (España, internacional)','2017-07-14 00:00:00',64),(1065,3,'Microsoft Corporation','Microsoft Visual C++ 2012 x64 Minimum Runtime - 11.0.61030','11.0.61030','','Caution. Removing this product might prevent some applications from running.','',0,1,'{CF2BEA3C-26EA-32F8-AA9B-331F7E34BA97}','Inglés (Estados Unidos)','2017-07-02 00:00:00',64),(1066,3,'ASUSTeKcomputer.Inc','SonicRadar3Setup','3.1.3.38194','','','',0,1,'{D1DF09DE-0347-42E7-9127-E66A85121C6D}','Inglés (Estados Unidos)','2017-07-01 00:00:00',64),(1067,3,'Microsoft Corporation','SQL Server 2016 Shared Management Objects','13.0.14500.10','','','',0,1,'{D3FC7A31-F127-4E2A-96F6-B24FA7D3FFAF}','Inglés (Estados Unidos)','2017-07-09 00:00:00',64),(1068,3,'Microsoft Corporation','Microsoft SQL Server Compact 4.0 SP1 x64 ESN','4.0.8876.1','C:/Program Files/Microsoft SQL Server Compact Edition/','','',0,1,'{D7126FFC-90BA-4120-8FFB-3688C9931A09}','Español (España, internacional)','2017-07-13 00:00:00',64),(1069,3,'Microsoft Corporation','SQL Server 2016 Batch Parser','13.0.1601.5','','','',0,1,'{D7A905DB-9A1E-4670-9488-F979F8A77A58}','Inglés (Estados Unidos)','2017-07-09 00:00:00',64),(1070,3,'Microsoft Corporation','Microsoft ODBC Driver 13 for SQL Server','13.0.1601.5','','','',0,1,'{DB7B2107-C3C9-439E-BDA8-823CCC152977}','Inglés (Estados Unidos)','2017-07-09 00:00:00',64),(1071,3,'Microsoft Corporation','Microsoft SQL Server 2016 LocalDB','13.0.1742.0','','','',0,1,'{DC5A8BC0-2C40-4F0D-B90F-C34CD31035C6}','Inglés (Estados Unidos)','2017-08-08 00:00:00',64),(1072,3,'Microsoft Corporation','SQL Server 2016 DMF','13.0.1601.5','','','',0,1,'{DDD197E1-1D50-44F0-8838-F74827B09D90}','Español (España, internacional)','2017-07-09 00:00:00',64),(1073,3,'Microsoft Corporation','SQL Server 2016 Database Engine Shared','13.0.1601.5','','','',0,1,'{E57345C1-9382-4DFA-A519-0FE62AC28683}','Español (España, internacional)','2017-07-09 00:00:00',64),(1074,3,'Microsoft Corporation','SQL Server 2016 XEvent','13.0.1601.5','','','',0,1,'{E6FFAAAF-D8B5-4D46-8514-26E96D9F3D8D}','Inglés (Estados Unidos)','2017-07-09 00:00:00',64),(1075,3,'Microsoft Corporation','SQL Server 2016 Shared Management Objects','13.0.14500.10','','','',0,1,'{EE70A6C4-C59C-4A36-865E-2DB9C0E4C833}','Español (España, internacional)','2017-07-09 00:00:00',64),(1076,3,'Microsoft Corporation','Microsoft Visual C++ 2015 x64 Additional Runtime - 14.0.24215','14.0.24215','','Caution. Removing this product might prevent some applications from running.','',0,1,'{EF1EC6A9-17DE-3DA9-B040-686A1E8A8B04}','Inglés (Estados Unidos)','2017-07-14 00:00:00',64),(1077,3,'Microsoft Corporation','KB4023057','1.0.1.0','','','',0,1,'{F2D7A08E-6B70-4336-AC4F-C7F765068281}','Independiente del idioma','2017-06-23 00:00:00',64),(1078,3,'Microsoft Corporation','SQL Server 2016 Shared Management Objects','13.0.14500.10','','','',0,1,'{F8001E21-CFCC-47AD-A3B1-6B3EB6D35E48}','Inglés (Estados Unidos)','2017-07-09 00:00:00',64),(1079,3,'Microsoft Corporation','SQL Server 2016 Shared Management Objects Extensions','13.0.1601.5','','','',0,1,'{FA548BCB-5732-40F8-85B0-61515D18D9C1}','Inglés (Estados Unidos)','2017-07-09 00:00:00',64),(1080,3,'Microsoft Corporation','Microsoft SQL Server 2016 T-SQL Language Service','13.0.14500.10','','','',0,1,'{FE3BF1DD-677E-4793-9770-C07AECC88882}','Inglés (Estados Unidos)','2017-07-09 00:00:00',64),(1081,3,'Microsoft Corporation','Security Update KB4053577','','','(http://support.microsoft.com/?kbid=4053577)','',0,0,'','','0000-00-00 00:00:00',0),(1082,3,'Microsoft Corporation','Update KB4054022','','','(http://support.microsoft.com/?kbid=4054022)','',0,0,'','','0000-00-00 00:00:00',0),(1083,3,'Microsoft Corporation','Update KB4055237','','','(http://support.microsoft.com/?kbid=4055237)','',0,0,'','','0000-00-00 00:00:00',0),(1084,3,'Microsoft Corporation','Update KB4058043','','','(http://support.microsoft.com/?kbid=4058043)','',0,0,'','','0000-00-00 00:00:00',0),(1085,3,'Microsoft Corporation','Update KB4058702','','','(http://support.microsoft.com/?kbid=4058702)','',0,0,'','','0000-00-00 00:00:00',0),(1086,3,'Microsoft Corporation','Security Update KB4056892','','','(http://support.microsoft.com/?kbid=4056892)','',0,0,'','','0000-00-00 00:00:00',0),(1087,3,'Microsoft Corporation','Microsoft Windows 10 Pro','10.0.16299','','','',0,1,'','','2017-12-14 00:00:00',64);
/*!40000 ALTER TABLE `softwares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `softwares_name_cache`
--

DROP TABLE IF EXISTS `softwares_name_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `softwares_name_cache` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NAME` (`NAME`)
) ENGINE=MyISAM AUTO_INCREMENT=233 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `softwares_name_cache`
--

LOCK TABLES `softwares_name_cache` WRITE;
/*!40000 ALTER TABLE `softwares_name_cache` DISABLE KEYS */;
INSERT INTO `softwares_name_cache` VALUES (1,'CloneDrive'),(2,'Dropbox'),(3,'FileZilla Client 3.28.0'),(4,'Google Chrome'),(5,'HiSuite'),(6,'MEGAsync'),(7,'Mendeley Desktop 1.17.11'),(8,'Microsoft Help Viewer 2.2'),(9,'Microsoft SQL Server 2016'),(10,'NVIDIA Stereoscopic 3D Driver'),(11,'Origin'),(12,'Paquete de idioma de Microsoft Help Viewer 2.2 - ESN'),(13,'Parche Taringuero 3.3.1'),(14,'RamCache II'),(15,'Razer Cortex'),(16,'Robo 3T 1.1.1'),(17,'Rockstar Games Social Club'),(18,'Steam'),(19,'UltraISO Premium V9.33'),(20,'XAMPP'),(21,'Microsoft Visual Studio Tools for Applications 2015 Language Support - ENU Language Pack'),(22,'Microsoft Visual C++ 2013 Redistributable (x64) - 12.0.30501'),(23,'SDK de Microsoft .NET Framework 4.6.1 (español)'),(24,'Dropbox Update Helper'),(25,'Microsoft Portable Library Multi-Targeting Pack'),(26,'Microsoft SQL Server 2016 Policies'),(27,'Acronis True Image OEM'),(28,'Requisitos previos para SSDT'),(29,'Microsoft Visual C++ 2013 x86 Minimum Runtime - 12.0.21005'),(30,'Biblioteca autentic. de Active Directory para SQL Server (x86)'),(31,'Microsoft Visual Studio 2015 Shell (Minimum) Interop Assemblies'),(32,'Objetos de administración de Microsoft SQL Server 2014'),(33,'Microsoft VC++ redistributables repacked.'),(34,'SQL Server 2016 Management Studio Extensions'),(35,'Microsoft Visual Studio 2015 XAML Application Timeline'),(36,'SQL Server 2016 Client Tools'),(37,'Microsoft .NET Framework 4.5.1 SDK (español)'),(38,'Microsoft SQL Server Data Tools - ESN (14.0.60519.0)'),(39,'Paquete de compatibilidad de Microsoft .NET Framework 4.6.1 (español)'),(40,'Microsoft .NET Framework 4.6.1 SDK'),(41,'Visual C++ IDE Base Package'),(42,'Microsoft Visual C++ 2012 Redistributable (x86) - 11.0.61030'),(43,'Microsoft Visual Studio Tools for Applications 2015 Language Support'),(44,'Skype™ 7.40'),(45,'SDK de Microsoft .NET Framework 4.6 (español)'),(46,'Microsoft Visual Studio 2015 Windows Diagnostic Tools'),(47,'Microsoft .NET Framework 4.6.1 Developer Pack'),(48,'Java Auto Updater'),(49,'UpdateAssistant'),(50,'AURA'),(51,'Microsoft SQL Server 2016 Setup (English)'),(52,'PeaZip 6.4.1'),(53,'Google Update Helper'),(54,'Microsoft Visual C++ 2012 Redistributable (x86) - 11.0.60610'),(55,'Roslyn Language Services - x86'),(56,'Microsoft Visual C++ 2015 x86 Additional Runtime - 14.0.24215'),(57,'Microsoft .NET Framework 4.5.1 Multi-Targeting Pack'),(58,'Microsoft Visual Studio 2015 Update 3 Diagnostic Tools - x86'),(59,'Objetos de administración de Microsoft SQL Server 2016'),(60,'Microsoft Visual C++ 2005 Redistributable'),(61,'Composer - Php Dependency Manager'),(62,'Microsoft Visual Studio 2015 Update 3.1 Team Explorer Language Pack - ENU'),(63,'SQL Server 2016 Management Studio for Reporting Services Localization'),(64,'Team Explorer for Microsoft Visual Studio 2015 Update 3.1'),(65,'Microsoft .NET Framework 4.6.1 Developer Pack (ESN)'),(66,'SQL Server 2016 Common Files'),(67,'Visual C++ IDE Core Package'),(68,'Microsoft .NET Framework 4.6.1 Targeting Pack'),(69,'Microsoft .NET Framework 4.6.1 Targeting Pack (ENU)'),(70,'Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729.17'),(71,'Microsoft SQL Server 2016 T-SQL Language Service'),(72,'Paquete de idioma de Visor de Ayuda de Microsoft 2.2 - ESN'),(73,'Microsoft SQL Server Data-Tier Application Framework (x86)'),(74,'SQL Server 2016 Management Studio for Analysis Services'),(75,'SQL Server 2016 Management Studio for Analysis Services Localization'),(76,'Adobe Refresh Manager'),(77,'Adobe Acrobat Reader DC - Español'),(78,'Asus Sonic Studio 3'),(79,'SQL Server 2016 Management Studio'),(80,'Microsoft Visual C++ 2012 x86 Additional Runtime - 11.0.61030'),(81,'TypeScript Tools for Microsoft Visual Studio 2015'),(82,'Software para dispositivos de chipset Intel®'),(83,'Microsoft Visual C++ 2015 x86 Minimum Runtime - 14.0.24215'),(84,'Servicio de lenguaje T-SQL de Microsoft SQL Server 2014'),(85,'Microsoft Visual C++ 2012 x86 Minimum Runtime - 11.0.61030'),(86,'SQL Server 2016 Management Studio for Reporting Services'),(87,'Microsoft Visual Studio Tools for Applications 2015 Language Support Finalizer'),(88,'Microsoft Visual C++ 2012 Redistributable (x64) - 11.0.60610'),(89,'Microsoft System CLR Types para SQL Server 2014'),(90,'ASUS Product Register Program'),(91,'Microsoft Visual C++ 2015 x86 Debug Runtime - 14.0.24215'),(92,'Microsoft Visual C++ 2012 Redistributable (x64) - 11.0.61030'),(93,'AI Suite 3'),(94,'Paquete de compatibilidad con múltiples versiones de Microsoft .NET Framework 4.5.1 (español)'),(95,'Asus Sonic Radar 3'),(96,'Microsoft System CLR Types para SQL Server 2016'),(97,'Assassin\'\'s Creed Brotherhood versión 1.03'),(98,'Microsoft Visual C++ 2015 Redistributable (x64) - 14.0.24215'),(99,'Microsoft Visual Studio 2015 XAML Designer'),(100,'SQL Server 2016 Client Tools Extensions'),(101,'Microsoft Visual C++ 2015 Redistributable (x86) - 14.0.24215'),(102,'Asmedia USB Host Controller Driver'),(103,'ASUS ROG Connect Plus'),(104,'Microsoft Visual C++ 2010 x86 Redistributable - 10.0.40219'),(105,'Realtek High Definition Audio Driver'),(106,'Visual C++ IDE Debugger Package'),(107,'Need for Speed™ Payback'),(108,'Microsoft Visual C++ 2013 Redistributable (x86) - 12.0.30501'),(109,'Explorador para SQL Server 2016'),(110,'Microsoft Visual C++ 2013 x86 Additional Runtime - 12.0.21005'),(111,'Microsoft SQL Server Management Studio - 16.5.1'),(112,'Microsoft Visual Studio 2015 XAML Visual Diagnostics'),(113,'CPUID ROG CPU-Z 1.77'),(114,'EPSON L355 Series Printer Uninstall'),(115,'Git version 2.9.0'),(116,'Critical Update for SQL Server 2016 MSVCRT Prerequisites (KB3210111) (64-bit)'),(117,'Critical Update for SQL Server 2016 MSVCRT Prerequisites (KB4019088) (64-bit)'),(118,'Logitech Gaming Software 8.96'),(119,'Microsoft SQL Server 2016 (64-bit)'),(120,'Microsoft Office 365 ProPlus - es-es'),(121,'OpenVPN 2.4.4-I601'),(122,'Intel(R) Network Connections 21.1.30.0'),(123,'Speccy'),(124,'Assassin\'\'s Creed Revelations'),(125,'Grand Theft Auto V'),(126,'Need for Speed: Hot Pursuit'),(127,'PRO EVOLUTION SOCCER 2018'),(128,'Sublime Text Build 3126'),(129,'TAP-Windows 9.21.2'),(130,'VLC media player'),(131,'Vulkan Run Time Libraries 1.0.61.0'),(132,'WinRAR 5.40 (64-bit)'),(133,'SQL Server 2016 Connection Info'),(134,'IIS Express Application Compatibility Database for x64'),(135,'NahimicSettingsConfigurator'),(136,'MySQL Workbench 6.3 CE'),(137,'Sql Server Customer Experience Improvement Program'),(138,'SonicMapperConfigurator'),(139,'Microsoft SQL Server 2012 Native Client'),(140,'IIS 10.0 Express'),(141,'Intel(R) Management Engine Components'),(142,'Microsoft Visual C++ 2010 x64 Redistributable - 10.0.40219'),(143,'Java 8 Update 131 (64-bit)'),(144,'Microsoft Visual Studio 2015 Update 3 Diagnostic Tools - amd64'),(145,'SonicStudio3Setup'),(146,'SQL Server 2016 DMF'),(147,'Oracle VM VirtualBox 5.2.4'),(148,'ProductDaemonSetup'),(149,'Microsoft Visual C++ 2012 x64 Additional Runtime - 11.0.61030'),(150,'Biblioteca de autenticación de AD para SQL Server'),(151,'Microsoft Visual C++ 2015 x64 Debug Runtime - 14.0.24215'),(152,'PuTTY release 0.70 (64-bit)'),(153,'ApoDispatchConfigurator'),(154,'Microsoft Visual C++ 2015 x64 Minimum Runtime - 14.0.24215'),(155,'SQL Server 2016 Database Engine Services'),(156,'SQL Server 2016 Shared Management Objects Extensions'),(157,'Java SE Development Kit 8 Update 131 (64-bit)'),(158,'SQL Server 2016 Database Engine Shared'),(159,'Microsoft ODBC Driver 11 for SQL Server'),(160,'Utilidades línea de comandos de Microsoft SQL Server 2012'),(161,'Microsoft SQL Server 2016 T-SQL ScriptDom'),(162,'Intel® Trusted Connect Service Client'),(163,'SQL Server 2016 SQL Diagnostics'),(164,'Objetos de administración de Microsoft SQL Server 2014 (x64)'),(165,'SQL Server 2016 XEvent'),(166,'Intel(R) Chipset Device Software'),(167,'Microsoft VSS Writer para SQL Server 2016'),(168,'Microsoft Silverlight'),(169,'KMSpico'),(170,'Office 16 Click-to-Run Licensing Component'),(171,'Office 16 Click-to-Run Extensibility Component'),(172,'Office 16 Click-to-Run Localization Component'),(173,'Microsoft Visual C++ 2013 x64 Additional Runtime - 12.0.21005'),(174,'Microsoft Web Deploy 3.6'),(175,'Archivos auxiliares de instalación de Microsoft SQL Server 2008'),(176,'Microsoft Visual C++ 2013 x64 Minimum Runtime - 12.0.21005'),(177,'DeviceRoutingConfigurator'),(178,'IIS Express Application Compatibility Database for x86'),(179,'Microsoft HEVC Media Extension Installation for Microsoft.HEVCVideoExtension_1.0.2512.0_x64__8wekyb3d8bbwe (x64)'),(180,'NVIDIA Ansel'),(181,'NVIDIA Controlador de 3D Vision 388.13'),(182,'Panel de control de NVIDIA 388.13'),(183,'NVIDIA Controlador de gráficos 388.13'),(184,'NVIDIA GeForce Experience 3.10.0.95'),(185,'NVIDIA Controlador de la controladora 3D Vision 369.04'),(186,'NVIDIA Optimus Update 29.1.0.0'),(187,'NVIDIA Software del sistema PhysX 9.17.0524'),(188,'Actualización de NVIDIA 29.1.0.0'),(189,'NVIDIA SHIELD Streaming'),(190,'NVIDIA Install Application'),(191,'NVIDIA Backend'),(192,'NVIDIA Container'),(193,'NVIDIA TelemetryApi helper for NvContainer'),(194,'NVIDIA LocalSystem Container'),(195,'NVIDIA Message Bus for NvContainer'),(196,'NVIDIA NetworkService Container'),(197,'NVIDIA Session Container'),(198,'NVIDIA User Container'),(199,'NVIDIA Display Container'),(200,'NVIDIA Display Container LS'),(201,'NVIDIA Display Watchdog Plugin'),(202,'NVIDIA Display Session Container'),(203,'NVIDIA NodeJS'),(204,'NVIDIA Watchdog Plugin for NvContainer'),(205,'NVIDIA Telemetry Client'),(206,'NVIDIA Telemetry Container'),(207,'NVIDIA Virtual Host Controller'),(208,'Nvidia Share'),(209,'NVIDIA ShadowPlay 3.10.0.95'),(210,'NVIDIA SHIELD Wireless Controller Driver'),(211,'NVIDIA Update Core'),(212,'NVIDIA Virtual Audio 4.02.2'),(213,'Microsoft SQL Server 2016 RsFx Driver'),(214,'Microsoft SQL Server 2014 Transact-SQL ScriptDom'),(215,'Objetos de administración de Microsoft SQL Server 2016 (x64)'),(216,'Microsoft Visual C++ 2012 x64 Minimum Runtime - 11.0.61030'),(217,'SonicRadar3Setup'),(218,'SQL Server 2016 Shared Management Objects'),(219,'Microsoft SQL Server Compact 4.0 SP1 x64 ESN'),(220,'SQL Server 2016 Batch Parser'),(221,'Microsoft ODBC Driver 13 for SQL Server'),(222,'Microsoft SQL Server 2016 LocalDB'),(223,'Microsoft Visual C++ 2015 x64 Additional Runtime - 14.0.24215'),(224,'KB4023057'),(225,'Security Update KB4053577'),(226,'Update KB4054022'),(227,'Update KB4055237'),(228,'Update KB4058043'),(229,'Update KB4058702'),(230,'Security Update KB4056892'),(231,'Microsoft Windows 10 Pro'),(232,'OCS Inventory NG Agent 2.3.1.1');
/*!40000 ALTER TABLE `softwares_name_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sounds`
--

DROP TABLE IF EXISTS `sounds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sounds` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HARDWARE_ID` int(11) NOT NULL,
  `MANUFACTURER` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`HARDWARE_ID`,`ID`),
  KEY `ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sounds`
--

LOCK TABLES `sounds` WRITE;
/*!40000 ALTER TABLE `sounds` DISABLE KEYS */;
INSERT INTO `sounds` VALUES (7,3,'Realtek','Realtek High Definition Audio','Realtek High Definition Audio'),(8,3,'NVIDIA','NVIDIA High Definition Audio','NVIDIA High Definition Audio'),(9,3,'NVIDIA','NVIDIA Virtual Audio Device (Wave Extensible) (WDM)','NVIDIA Virtual Audio Device (Wave Extensible) (WDM)');
/*!40000 ALTER TABLE `sounds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ssl_store`
--

DROP TABLE IF EXISTS `ssl_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ssl_store` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FILE` longblob DEFAULT NULL,
  `AUTHOR` varchar(255) DEFAULT NULL,
  `FILE_NAME` varchar(255) DEFAULT NULL,
  `FILE_TYPE` varchar(20) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ssl_store`
--

LOCK TABLES `ssl_store` WRITE;
/*!40000 ALTER TABLE `ssl_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `ssl_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storages`
--

DROP TABLE IF EXISTS `storages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storages` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HARDWARE_ID` int(11) NOT NULL,
  `MANUFACTURER` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `MODEL` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `DISKSIZE` int(11) DEFAULT NULL,
  `SERIALNUMBER` varchar(255) DEFAULT NULL,
  `FIRMWARE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`HARDWARE_ID`,`ID`),
  KEY `ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storages`
--

LOCK TABLES `storages` WRITE;
/*!40000 ALTER TABLE `storages` DISABLE KEYS */;
INSERT INTO `storages` VALUES (10,3,'(Standard disk drives)','ADATA SU800','//./PHYSICALDRIVE0','Disk drive','Fixed hard disk media',244191,'2H1420018082','Q0125A'),(11,3,'(Standard disk drives)','ST1000DM010-2EP102','//./PHYSICALDRIVE1','Disk drive','Fixed hard disk media',953867,'Z9ABYDXD','CC43'),(12,3,'(Standard disk drives)','Kingston DataTraveler 2.0 USB Device','//./PHYSICALDRIVE2','Disk drive','Removable Media',14778,'','1.00');
/*!40000 ALTER TABLE `storages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subnet`
--

DROP TABLE IF EXISTS `subnet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subnet` (
  `NETID` varchar(15) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `ID` varchar(255) DEFAULT NULL,
  `MASK` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`NETID`),
  KEY `ID` (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subnet`
--

LOCK TABLES `subnet` WRITE;
/*!40000 ALTER TABLE `subnet` DISABLE KEYS */;
/*!40000 ALTER TABLE `subnet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `Tag` varchar(100) NOT NULL DEFAULT '',
  `Login` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`Tag`,`Login`),
  KEY `Tag` (`Tag`),
  KEY `Login` (`Login`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temp_files`
--

DROP TABLE IF EXISTS `temp_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temp_files` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TABLE_NAME` varchar(255) DEFAULT NULL,
  `FIELDS_NAME` varchar(255) DEFAULT NULL,
  `file` longblob DEFAULT NULL,
  `COMMENT` longtext DEFAULT NULL,
  `AUTHOR` varchar(255) DEFAULT NULL,
  `FILE_NAME` varchar(255) DEFAULT NULL,
  `FILE_TYPE` varchar(255) DEFAULT NULL,
  `FILE_SIZE` int(11) DEFAULT NULL,
  `ID_DDE` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp_files`
--

LOCK TABLES `temp_files` WRITE;
/*!40000 ALTER TABLE `temp_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `temp_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usbdevices`
--

DROP TABLE IF EXISTS `usbdevices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usbdevices` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HARDWARE_ID` int(11) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `INTERFACE` varchar(255) DEFAULT NULL,
  `MANUFACTURER` varchar(255) DEFAULT NULL,
  `SERIAL` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usbdevices`
--

LOCK TABLES `usbdevices` WRITE;
/*!40000 ALTER TABLE `usbdevices` DISABLE KEYS */;
/*!40000 ALTER TABLE `usbdevices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `videos` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HARDWARE_ID` int(11) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `CHIPSET` varchar(255) DEFAULT NULL,
  `MEMORY` varchar(255) DEFAULT NULL,
  `RESOLUTION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`HARDWARE_ID`,`ID`),
  KEY `ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videos`
--

LOCK TABLES `videos` WRITE;
/*!40000 ALTER TABLE `videos` DISABLE KEYS */;
INSERT INTO `videos` VALUES (3,3,'NVIDIA GeForce GTX 1060 3GB','GeForce GTX 1060 3GB','3072','1920 x 1080');
/*!40000 ALTER TABLE `videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtualmachines`
--

DROP TABLE IF EXISTS `virtualmachines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `virtualmachines` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HARDWARE_ID` int(11) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  `SUBSYSTEM` varchar(255) DEFAULT NULL,
  `VMTYPE` varchar(255) DEFAULT NULL,
  `UUID` varchar(255) DEFAULT NULL,
  `VCPU` int(11) DEFAULT NULL,
  `MEMORY` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`,`HARDWARE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtualmachines`
--

LOCK TABLES `virtualmachines` WRITE;
/*!40000 ALTER TABLE `virtualmachines` DISABLE KEYS */;
/*!40000 ALTER TABLE `virtualmachines` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-07 11:54:29
