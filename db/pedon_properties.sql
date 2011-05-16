--
-- Table structure for table `PEDON_PROPERTIES`
--

DROP TABLE IF EXISTS `PEDON_PROPERTIES`;
SET @saved_cs_client = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `PEDON_PROPERTIES` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(200) NOT NULL,
  `abstract` varchar(2000) NOT NULL,
  `unit` varchar(24) NOT NULL,
  `method` varchar(40) NOT NULL,
  `length` varchar(8) NOT NULL,
  `precision` varchar(24) NOT NULL,
  `numeric` varchar(2) NOT NULL,
  `title_fr` varchar(200) NOT NULL,
  `abstract_fr` varchar(2000) NOT NULL,
  `unit_fr` varchar(24) NOT NULL,
  `property_id` varchar(38) NOT NULL,
  `source_table` varchar(40) NOT NULL,
  `source_field` varchar(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Data for table `PEDON_PROPERTIES`
--
LOCK TABLES `PEDON_PROPERTIES` WRITE;
INSERT INTO `PEDON_PROPERTIES` VALUES
(1,'Geographical Class','polygons are grouped into geo_classes; geoclasses are grouped into provinces. geoclasses may politcal in nature or otherwise','-','Look Up','17','QUALITATIVE','N','-','-','-','R_ON_RPT.GEO_CLASS','R_ON_RPT','COUNTY'),
(2,'Soil Association','association refers to two or more soil series that appear in close proximity to each other in the landscape and are associated with - or not associated with -  the same parent material','-','Observation','14','QUALITATIVE','N','-','-','-','R_ON_RPT.ASSOC','REPORT_PEDONS','ASSOC'),
(3,'X_Location','raw location data to be converted into lat_long','-','Observation','91','QUALITATIVE','N','-','-','-','R_ON_RPT.X_LOCATION','R_ON_RPT','X_LOCATION'),
(4,'Land Use','agricultural and non-agricultural uses for agricultural land','-','Observation','13','QUALITATIVE','N','-','-','-','R_ON_RPT.G','R_ON_RPT','LAND_USE'),
(5,'Lab_Identifier','lab_id uniquely defines pedon samples going to the lab for analysis','-','Random','13','-','N','-','-','-','R_ON_RPT.LAB_ID','R_ON_RPT','OIP_LAB_NO'),
(6,'Master Horizon','decribes major processes of soil genesis that distinguish soil layers','interpretive','-','2','-','Y','-','-',NULL,'R_ON_RPT.HZN_MAS','R_ON_RPT','X_LOCATION'),
(7,'Horizon Suffix','describes minor processes of soil genesis that distinguish master horizons','interpretive','-','3','-','N','-','-',NULL,'R_ON_RPT.HZN_SUF','R_ON_RPT','X_LOCATION'),
(8,'Horizon Modifier','decribes minor variations in horizon properties that are not distinguishable as primary or secondary processes eg. differences in texture or minor variations in parent material','interpretive','-','1','-','N','-','-',NULL,'R_ON_RPT.HZN_MOD','R_ON_RPT','X_LOCATION'),
(9,'Lithic Discontinuity','decribes a lithic discontinuity between overlaying and underlaying parent materials','interpretive','-','1','-','N','-','-',NULL,'R_ON_RPT.HZN_LIT','R_ON_RPT','X_LOCATION'),
(10,'Organic Carbon','organic carbon isi expressed as a percentage of the soil by dry weight','percent','-','4','-','Y','-','-',NULL,'R_ON_RPT.ORG_CARBON','R_ON_RPT','CARBON'),
(11,'Organic Matter','organic matter is expressed as a percentage of the soil by dry weight','percent','-','4','-','Y','-','-',NULL,'R_ON_RPT.ORG_MATTER','R_ON_RPT','OM'),
(12,'Dry Bulk Density','dry weight ratio of an undisturbed soil over its volume','g/cm3','-','14','-','Y','-','-',NULL,'R_ON_RPT.BK_DENSITY','R_ON_RPT','BD'),
(13,'Gravel Composition By Percent','see notes','percent','-','3','-','Y','-','-',NULL,'R_ON_RPT.GRAVEL','R_ON_RPT','GRAVEL'),
(14,'Total Sand','sand expressed as a percentage of the mineral component by weight','percent','2.0 - 0.1mm Seive','3','-','Y','-','-',NULL,'R_ON_RPT.PS_SAND_T','R_ON_RPT','TSAND'),
(15,'Very Coarse Sand','very coarse sand expressed as a percentage of the mineral component by weight','percent','2.0 - 1.0mm Seive','5','-','Y','-','-',NULL,'R_ON_RPT.PS_SAND_VC','R_ON_RPT','VC_SAND'),
(16,'Coarse Sand','coarse sand expressed as a percentage of the mineral component by weight','percent','1.0 - 0.5mm Seive','4','-','Y','-','-',NULL,'R_ON_RPT.PS_SAND_C','R_ON_RPT','C_SAND'),
(17,'Medium Sand','medium sand expressed as a percentage of the mineral component by weight','percent','0.5 - 0.25mm Seive','5','-','Y','-','-',NULL,'R_ON_RPT.PS_SAND_M','R_ON_RPT','M_SAND'),
(18,'Fine Sand','fine sand expressed as a percentage of the mineral component by weight','percent','.25 - 0.1mm Seive','5','-','Y','-','-',NULL,'R_ON_RPT.PS_SAND_F','R_ON_RPT','F_SAND'),
(19,'Very Fine Sand','very fine sand expressed as a percentage of the mineral component by weight','percent','.1 - .05mm Seive','5','-','Y','-','-',NULL,'R_ON_RPT.PS_SAND_VF','R_ON_RPT','VF_SAND'),
(20,'Total Silt','silt expressed as a percentage of the mineral component by weight','percent','-','2','-','Y','-','-',NULL,'R_ON_RPT.PS_SILT_T','R_ON_RPT','TSILT'),
(21,'Coarse Silt','coarse silt expressed as a percentage of the mineral component by weight','percent','-','5','-','Y','-','-',NULL,'R_ON_RPT.PS_SILT_C','R_ON_RPT','TSAND'),
(22,'Total Sand','fine silt expressed as a percentage of the mineral component by weight','percent','-','5','-','Y','-','-',NULL,'R_ON_RPT.PS_SILT_F','R_ON_RPT','F_SILT'),
(23,'Total Clay','clay expressed as a percentage of the mineral component by weight','percent','-','2','-','Y','-','-',NULL,'R_ON_RPT.PS_CLAY_T','R_ON_RPT','TCLAY'),
(24,'Coarse Clay','coarse clay expressed as a percentage of the mineral component by weight','percent','-','6','-','Y','-','-',NULL,'R_ON_RPT.PS_CLAY_C','R_ON_RPT','C_CLAY'),
(25,'Fine Clay','fine clay expressed as a percentage of the mineral component by weight','percent','-','6','-','Y','-','-',NULL,'R_ON_RPT.PS_CLAY_F','R_ON_RPT','CLAY_F'),
(26,'Textural Class','proportion sand-silt-clay yields cssc textural class: cansis manual for describing soils in the field 1982, p68','percent','2.0 - 0.1mm Seive','12','-','Y','-','-',NULL,'R_ON_RPT.TEXTURE','R_ON_RPT','TSAND'),
(27,'Acidity In Water','measurement for the disassociation of hydrogen ions in water','ph','-','4','-','Y','-','-',NULL,'R_ON_RPT.PH_H2O','R_ON_RPT','PH_H20'),
(28,'Acidity In Calcium Chloride','measurement for the disassociation of hydrogen ions in calcium chloride','ph','-','1','-','Y','-','-',NULL,'R_ON_RPT.PH_CACL2','R_ON_RPT','PH_CACL2'),
(29,'Calcium Carbonate Equivalent','enter description','ph','-','3','-','Y','-','-',NULL,'R_ON_RPT.CACO3','R_ON_RPT','CACO3'),
(30,'Calcium-Dolomite Ratio','measurement for the ratio to calcium to dolomite','percent','-','5','-','Y','-','-',NULL,'R_ON_RPT.CA_DOL_RAT','R_ON_RPT','CA_DOL_RAT'),
(31,'Void Space In The Soil Matrix By Volume','expression for ratio of the soil pores over a soil matrix','-','-','10','-','Y','-','-',NULL,'R_ON_RPT.POROSITY','R_ON_RPT','POROSITY'),
(32,'Density','enter description','-','-','11','-','Y','-','-',NULL,'R_ON_RPT.DENSITY','R_ON_RPT','DENSITY'),
(33,'Cec - Bacl Extractant','cation exchange capacity neutral salt extraction barium chloride','ph','-','5','-','Y','-','-',NULL,'R_ON_RPT.CEC_BACL','R_ON_RPT','CEC_BACL'),
(34,'Cec - Naoac Extractant','enter description','ph','-','3','-','Y','-','-',NULL,'R_ON_RPT.CEC_NAOAC','R_ON_RPT','CEC_NAOAC'),
(35,'Electrical Conductivity','enter description','mmhos/cm','-','5','-','Y','-','-',NULL,'R_ON_RPT.ELECT_COND','R_ON_RPT','EC'),
(36,'Base Saturation','enter description','-','-','5','-','Y','-','-',NULL,'R_ON_RPT.BASE','R_ON_RPT','BASE'),
(37,'Exchangable Sodium','enter description','meq/100g','-','8','-','Y','-','-',NULL,'R_ON_RPT.EXCHG_NA','R_ON_RPT','NA'),
(38,'Exchangable Calcium','enter description','meq/100g','-','5','-','Y','-','-',NULL,'R_ON_RPT.EXCHG_CA','R_ON_RPT','CA'),
(39,'Exchangable Magnesium','enter description','meq/100g','-','8','-','Y','-','-',NULL,'R_ON_RPT.EXCHG_MG','R_ON_RPT','MG'),
(40,'Exchangable Sodium','enter description','meq/100g','-','8','-','Y','-','-',NULL,'R_ON_RPT.EXCHG_K','R_ON_RPT','K'),
(41,'Available Phosphorus','enter description','meq/100g','-','5','-','Y','-','-',NULL,'R_ON_RPT.AVLBL_P','R_ON_RPT','P'),
(42,'Oxalate Extractable Iron','enter description','-','-','8','-','Y','-','-',NULL,'R_ON_RPT.EXT_FE_OXL','R_ON_RPT','FE_OX'),
(43,'Oxalate Extractable Aluminum','enter description','-','-','5','-','Y','-','-',NULL,'R_ON_RPT.EXT_AL_OXL','R_ON_RPT','AL_OX'),
(44,'Oxalate Extractable Manganese','enter description','-','-','6','-','Y','-','-',NULL,'R_ON_RPT.EXT_MN_OXL','R_ON_RPT','MN_OX'),
(45,'Pyrophosphate Extractable Iron','enter description','-','-','5','-','Y','-','-',NULL,'R_ON_RPT.EXT_FE_PYR','R_ON_RPT','FE_PYR'),
(46,'Pyrophosphate Extractable Aluminum','enter description','-','-','8','-','Y','-','-',NULL,'R_ON_RPT.EXT_AL_PYR','R_ON_RPT','AL_PYR'),
(47,'Pyrophosphate Extractable Manganese','enter description','-','-','6','-','Y','-','-',NULL,'R_ON_RPT.EXT_MN_PYR','R_ON_RPT','MN_PYR'),
(48,'Diothionite Extractable Aluminum','enter description','-','-','4','-','Y','-','-',NULL,'R_ON_RPT.EXT_AL_DTH','R_ON_RPT','AL_DITH'),
(49,'Diothionite Extractable Iron','enter description','-','-','4','-','Y','-','-',NULL,'R_ON_RPT.EXT_FE_DTH','R_ON_RPT','FE_DITH'),
(50,'Diothionite Extractable Manganese','enter description','-','-','1','-','Y','-','-',NULL,'R_ON_RPT.EXT_MN_DTH','R_ON_RPT','MN_DITH'),
(51,'Soil Water Retention (0kpa)','soil water retention with pressure potential of 0 kilo pascals','grams/gram','-','9','-','Y','-','-',NULL,'R_ON_RPT.WR_KP0','R_ON_RPT','KP0'),
(52,'Soil Water Retention (5kpa)','soil water retention with pressure potential of 5 kilo pascals','grams/gram','-','5','-','Y','-','-',NULL,'R_ON_RPT.WR_KP5','R_ON_RPT','KP5'),
(53,'Soil Water Retention (10kpa)','soil water retention with pressure potential of 10 kilo pascals','grams/gram','-','9','-','Y','-','-',NULL,'R_ON_RPT.WR_KP10','R_ON_RPT','KP10'),
(54,'Soil Water Retention (33kpa)','soil water retention with pressure potential of 33 kilo pascals','grams/gram','-','9','-','Y','-','-',NULL,'R_ON_RPT.WR_KP33','R_ON_RPT','KP33'),
(55,'Soil Water Retention (35kpa)','soil water retention with pressure potential of 35 kilo pascals','grams/gram','-','4','-','Y','-','-',NULL,'R_ON_RPT.WR_KP35','R_ON_RPT','KP35'),
(56,'Soil Water Retention (100kpa)','soil water retention with pressure potential of 100 kilo pascals','grams/gram','-','5','-','Y','-','-',NULL,'R_ON_RPT.WR_KP100','R_ON_RPT','KP100'),
(57,'Soil Water Retention (1500kpa)','soil water retention with pressure potential of 1500 kilo pascals','grams/gram','-','9','-','Y','-','-',NULL,'R_ON_RPT.WR_KP1500','R_ON_RPT','KP1500'),
(58,'Hydraulic Conductivity - Range','range of values for saturated hydraulic conductivity','cm/hr','-','13','-','Y','-','-',NULL,'R_ON_RPT.W_KSAT_RNG','R_ON_RPT','KSAT_RANGE'),
(59,'Saturated Hydraulic Conductivity - Mean','mean value for saturated hydraulic conductivity','cm/hr','-','12','-','Y','-','-',NULL,'R_ON_RPT.W_KSAT','R_ON_RPT','KSAT_MEAN');
UNLOCK TABLES;
