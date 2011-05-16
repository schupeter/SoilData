--
-- Table structure for table `PEDON_PROJECTS`
--

DROP TABLE IF EXISTS `PEDON_PROJECTS`;
SET @saved_cs_client = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `PEDON_PROJECTS` (
  `id` int(11) NOT NULL auto_increment,
  `project_id` varchar(10) NOT NULL,
  `title` varchar(80) NOT NULL,
  `year` int(4) NOT NULL,
  `purpose` varchar(80) NOT NULL,
  `abstract` varchar(1000) NOT NULL,
  `geo_class` varchar(60) NOT NULL,
  `sponsor` varchar(40) NOT NULL,
  `survey_lead` varchar(60) NOT NULL,
  `source_table` varchar(20) DEFAULT NULL,
  `credibility` varchar(4) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Data for table `PEDON_PROJECTS`
--
LOCK TABLES `PEDON_PROJECTS` WRITE;
INSERT INTO `PEDON_PROJECTS` VALUES
(1,'ONRPT','Soil Report Pedons',1993,'Characterize Modal Soils','Pedons Collected From A Variety Of Soil Reports To Characterize
Modal Soils For The Purpose Of Developing Pedo-Transfer Functions','County','Province','BRUCE MCDONALD',NULL,'VC');
UNLOCK TABLES;
