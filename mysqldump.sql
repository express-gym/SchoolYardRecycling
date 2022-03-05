-- MySQL dump 10.13  Distrib 5.7.36, for osx10.17 (x86_64)
--
-- Host: 127.0.0.1    Database: Recycling
-- ------------------------------------------------------
-- Server version	5.7.36

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
-- Table structure for table `recycling_carbon_carbons`
--

DROP TABLE IF EXISTS `recycling_carbon_carbons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recycling_carbon_carbons` (
  `entity_pk` binary(16) NOT NULL,
  `entity_fk` binary(16) DEFAULT NULL,
  `entity_tag` varchar(100) NOT NULL DEFAULT 'manually',
  PRIMARY KEY (`entity_pk`),
  UNIQUE KEY `entity_entity_pk_uindex` (`entity_pk`),
  KEY `entity_entity_entity_pk_fk` (`entity_fk`),
  CONSTRAINT `entity_entity_entity_pk_fk` FOREIGN KEY (`entity_fk`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_recycling_carbon_carbons_a_i` AFTER INSERT ON `recycling_carbon_carbons` FOR EACH ROW
                                                                   BEGIN

        DECLARE original_query text;

SELECT argument INTO original_query 
  FROM mysql.general_log 
  where thread_id = connection_id() 
  order by event_time desc 
  limit 1;

      
INSERT INTO recycling_carbon_history_logs (history_uuid, history_table, history_type, history_data, history_original_query)
                VALUES (UNHEX(REPLACE(UUID() COLLATE utf8_unicode_ci,'-',''))
                        , 'recycling_carbon_carbons'
                        , 'POST'
                        , history_data = JSON_OBJECT(    'entity_pk', JSON_QUOTE(COALESCE(NEW.entity_pk,'')),    'entity_fk', JSON_QUOTE(COALESCE(NEW.entity_fk,'')),    'entity_tag', JSON_QUOTE(COALESCE(NEW.entity_tag,''))
                        ), original_query);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_recycling_carbon_carbons_a_u` AFTER UPDATE ON `recycling_carbon_carbons` FOR EACH ROW
                                                                   BEGIN

        DECLARE original_query text;

SELECT argument INTO original_query 
  FROM mysql.general_log 
  where thread_id = connection_id() 
  order by event_time desc 
  limit 1;

      
INSERT INTO recycling_carbon_history_logs (history_uuid, history_table, history_type, history_data, history_original_query)
                VALUES (UNHEX(REPLACE(UUID() COLLATE utf8_unicode_ci,'-',''))
                        , 'recycling_carbon_carbons'
                        , 'PUT'
                        , history_data = JSON_OBJECT(    'entity_pk', JSON_QUOTE(COALESCE(NEW.entity_pk,'')),    'entity_fk', JSON_QUOTE(COALESCE(NEW.entity_fk,'')),    'entity_tag', JSON_QUOTE(COALESCE(NEW.entity_tag,''))
                        ), original_query);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_recycling_carbon_carbons_b_d` BEFORE DELETE ON `recycling_carbon_carbons` FOR EACH ROW
BEGIN

        DECLARE original_query text;

SELECT argument INTO original_query 
  FROM mysql.general_log 
  where thread_id = connection_id() 
  order by event_time desc 
  limit 1;

      
INSERT INTO recycling_carbon_history_logs (history_uuid, history_table, history_type, history_data, history_original_query)
                VALUES (UNHEX(REPLACE(UUID() COLLATE utf8_unicode_ci,'-',''))
                        , 'recycling_carbon_carbons'
                        , 'DELETE'
                        , history_data = JSON_OBJECT(    'entity_pk', JSON_QUOTE(COALESCE(OLD.entity_pk,'')),    'entity_fk', JSON_QUOTE(COALESCE(OLD.entity_fk,'')),    'entity_tag', JSON_QUOTE(COALESCE(OLD.entity_tag,''))
                        ), original_query);

      

DELETE FROM recycling_carbon_carbons WHERE entity_fk = OLD.entity_pk;

DELETE FROM recycling_carbon_comments WHERE comment_id = OLD.entity_pk;

DELETE FROM recycling_carbon_comments WHERE parent_id = OLD.entity_pk;

DELETE FROM recycling_carbon_comments WHERE user_id = OLD.entity_pk;

DELETE FROM recycling_carbon_feature_group_references WHERE group_entity_id = OLD.entity_pk;

DELETE FROM recycling_carbon_feature_group_references WHERE feature_entity_id = OLD.entity_pk;

DELETE FROM recycling_carbon_features WHERE feature_entity_id = OLD.entity_pk;

DELETE FROM recycling_carbon_group_references WHERE group_id = OLD.entity_pk;

DELETE FROM recycling_carbon_group_references WHERE allowed_to_grant_group_id = OLD.entity_pk;

DELETE FROM recycling_carbon_groups WHERE entity_id = OLD.entity_pk;

DELETE FROM recycling_carbon_groups WHERE created_by = OLD.entity_pk;

DELETE FROM recycling_carbon_location_references WHERE entity_reference = OLD.entity_pk;

DELETE FROM recycling_carbon_location_references WHERE location_reference = OLD.entity_pk;

DELETE FROM recycling_carbon_locations WHERE entity_id = OLD.entity_pk;

DELETE FROM recycling_carbon_photos WHERE photo_id = OLD.entity_pk;

DELETE FROM recycling_carbon_photos WHERE parent_id = OLD.entity_pk;

DELETE FROM recycling_carbon_photos WHERE user_id = OLD.entity_pk;

DELETE FROM recycling_carbon_user_followers WHERE follower_table_id = OLD.entity_pk;

DELETE FROM recycling_carbon_user_followers WHERE follows_user_id = OLD.entity_pk;

DELETE FROM recycling_carbon_user_followers WHERE user_id = OLD.entity_pk;

DELETE FROM recycling_carbon_user_groups WHERE group_id = OLD.entity_pk;

DELETE FROM recycling_carbon_user_groups WHERE user_id = OLD.entity_pk;

DELETE FROM recycling_carbon_user_messages WHERE from_user_id = OLD.entity_pk;

DELETE FROM recycling_carbon_user_messages WHERE message_id = OLD.entity_pk;

DELETE FROM recycling_carbon_user_messages WHERE to_user_id = OLD.entity_pk;

DELETE FROM recycling_carbon_user_tasks WHERE task_id = OLD.entity_pk;

DELETE FROM recycling_carbon_user_tasks WHERE user_id = OLD.entity_pk;

DELETE FROM recycling_carbon_user_tasks WHERE from_id = OLD.entity_pk;

DELETE FROM recycling_carbon_users WHERE user_id = OLD.entity_pk;


END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `recycling_carbon_comments`
--

DROP TABLE IF EXISTS `recycling_carbon_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recycling_carbon_comments` (
  `parent_id` binary(16) NOT NULL,
  `comment_id` binary(16) NOT NULL,
  `user_id` binary(16) NOT NULL,
  `comment` blob NOT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `entity_comments_entity_parent_pk_fk` (`parent_id`),
  KEY `entity_comments_entity_user_pk_fk` (`user_id`),
  CONSTRAINT `entity_comments_entity_entity_pk_fk` FOREIGN KEY (`comment_id`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `entity_comments_entity_parent_pk_fk` FOREIGN KEY (`parent_id`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `entity_comments_entity_user_pk_fk` FOREIGN KEY (`user_id`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_recycling_carbon_comments_a_i` AFTER INSERT ON `recycling_carbon_comments` FOR EACH ROW
                                                                   BEGIN

        DECLARE original_query text;

SELECT argument INTO original_query 
  FROM mysql.general_log 
  where thread_id = connection_id() 
  order by event_time desc 
  limit 1;

      
INSERT INTO recycling_carbon_history_logs (history_uuid, history_table, history_type, history_data, history_original_query)
                VALUES (UNHEX(REPLACE(UUID() COLLATE utf8_unicode_ci,'-',''))
                        , 'recycling_carbon_comments'
                        , 'POST'
                        , history_data = JSON_OBJECT(    'parent_id', JSON_QUOTE(COALESCE(NEW.parent_id,'')),    'comment_id', JSON_QUOTE(COALESCE(NEW.comment_id,'')),    'user_id', JSON_QUOTE(COALESCE(NEW.user_id,'')),    'comment', JSON_QUOTE(COALESCE(NEW.comment,''))
                        ), original_query);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_recycling_carbon_comments_a_u` AFTER UPDATE ON `recycling_carbon_comments` FOR EACH ROW
                                                                   BEGIN

        DECLARE original_query text;

SELECT argument INTO original_query 
  FROM mysql.general_log 
  where thread_id = connection_id() 
  order by event_time desc 
  limit 1;

      
INSERT INTO recycling_carbon_history_logs (history_uuid, history_table, history_type, history_data, history_original_query)
                VALUES (UNHEX(REPLACE(UUID() COLLATE utf8_unicode_ci,'-',''))
                        , 'recycling_carbon_comments'
                        , 'PUT'
                        , history_data = JSON_OBJECT(    'parent_id', JSON_QUOTE(COALESCE(NEW.parent_id,'')),    'comment_id', JSON_QUOTE(COALESCE(NEW.comment_id,'')),    'user_id', JSON_QUOTE(COALESCE(NEW.user_id,'')),    'comment', JSON_QUOTE(COALESCE(NEW.comment,''))
                        ), original_query);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_recycling_carbon_comments_b_d` BEFORE DELETE ON `recycling_carbon_comments` FOR EACH ROW
BEGIN

        DECLARE original_query text;

SELECT argument INTO original_query 
  FROM mysql.general_log 
  where thread_id = connection_id() 
  order by event_time desc 
  limit 1;

      
INSERT INTO recycling_carbon_history_logs (history_uuid, history_table, history_type, history_data, history_original_query)
                VALUES (UNHEX(REPLACE(UUID() COLLATE utf8_unicode_ci,'-',''))
                        , 'recycling_carbon_comments'
                        , 'DELETE'
                        , history_data = JSON_OBJECT(    'parent_id', JSON_QUOTE(COALESCE(OLD.parent_id,'')),    'comment_id', JSON_QUOTE(COALESCE(OLD.comment_id,'')),    'user_id', JSON_QUOTE(COALESCE(OLD.user_id,'')),    'comment', JSON_QUOTE(COALESCE(OLD.comment,''))
                        ), original_query);

      


END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `recycling_carbon_feature_group_references`
--

DROP TABLE IF EXISTS `recycling_carbon_feature_group_references`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recycling_carbon_feature_group_references` (
  `feature_entity_id` binary(16) DEFAULT NULL,
  `group_entity_id` binary(16) DEFAULT NULL,
  KEY `carbon_feature_references_carbons_entity_pk_fk_2` (`feature_entity_id`),
  KEY `carbon_feature_group_references_carbons_entity_pk_fk` (`group_entity_id`),
  CONSTRAINT `carbon_feature_group_references_carbons_entity_pk_fk` FOREIGN KEY (`group_entity_id`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `carbon_feature_references_carbons_entity_pk_fk` FOREIGN KEY (`feature_entity_id`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_recycling_carbon_feature_group_references_a_i` AFTER INSERT ON `recycling_carbon_feature_group_references` FOR EACH ROW
                                                                   BEGIN

        DECLARE original_query text;

SELECT argument INTO original_query 
  FROM mysql.general_log 
  where thread_id = connection_id() 
  order by event_time desc 
  limit 1;

      
INSERT INTO recycling_carbon_history_logs (history_uuid, history_table, history_type, history_data, history_original_query)
                VALUES (UNHEX(REPLACE(UUID() COLLATE utf8_unicode_ci,'-',''))
                        , 'recycling_carbon_feature_group_references'
                        , 'POST'
                        , history_data = JSON_OBJECT(    'feature_entity_id', JSON_QUOTE(COALESCE(NEW.feature_entity_id,'')),    'group_entity_id', JSON_QUOTE(COALESCE(NEW.group_entity_id,''))
                        ), original_query);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_recycling_carbon_feature_group_references_a_u` AFTER UPDATE ON `recycling_carbon_feature_group_references` FOR EACH ROW
                                                                   BEGIN

        DECLARE original_query text;

SELECT argument INTO original_query 
  FROM mysql.general_log 
  where thread_id = connection_id() 
  order by event_time desc 
  limit 1;

      
INSERT INTO recycling_carbon_history_logs (history_uuid, history_table, history_type, history_data, history_original_query)
                VALUES (UNHEX(REPLACE(UUID() COLLATE utf8_unicode_ci,'-',''))
                        , 'recycling_carbon_feature_group_references'
                        , 'PUT'
                        , history_data = JSON_OBJECT(    'feature_entity_id', JSON_QUOTE(COALESCE(NEW.feature_entity_id,'')),    'group_entity_id', JSON_QUOTE(COALESCE(NEW.group_entity_id,''))
                        ), original_query);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_recycling_carbon_feature_group_references_b_d` BEFORE DELETE ON `recycling_carbon_feature_group_references` FOR EACH ROW
BEGIN

        DECLARE original_query text;

SELECT argument INTO original_query 
  FROM mysql.general_log 
  where thread_id = connection_id() 
  order by event_time desc 
  limit 1;

      
INSERT INTO recycling_carbon_history_logs (history_uuid, history_table, history_type, history_data, history_original_query)
                VALUES (UNHEX(REPLACE(UUID() COLLATE utf8_unicode_ci,'-',''))
                        , 'recycling_carbon_feature_group_references'
                        , 'DELETE'
                        , history_data = JSON_OBJECT(    'feature_entity_id', JSON_QUOTE(COALESCE(OLD.feature_entity_id,'')),    'group_entity_id', JSON_QUOTE(COALESCE(OLD.group_entity_id,''))
                        ), original_query);

      


END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `recycling_carbon_features`
--

DROP TABLE IF EXISTS `recycling_carbon_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recycling_carbon_features` (
  `feature_entity_id` binary(16) NOT NULL,
  `feature_code` varchar(30) NOT NULL,
  `feature_creation_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`feature_entity_id`),
  UNIQUE KEY `carbon_features_feature_code_uindex` (`feature_code`),
  UNIQUE KEY `carbon_features_feature_entity_id_uindex` (`feature_entity_id`),
  CONSTRAINT `carbon_features_carbons_entity_pk_fk` FOREIGN KEY (`feature_entity_id`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_recycling_carbon_features_a_i` AFTER INSERT ON `recycling_carbon_features` FOR EACH ROW
                                                                   BEGIN

        DECLARE original_query text;

SELECT argument INTO original_query 
  FROM mysql.general_log 
  where thread_id = connection_id() 
  order by event_time desc 
  limit 1;

      
INSERT INTO recycling_carbon_history_logs (history_uuid, history_table, history_type, history_data, history_original_query)
                VALUES (UNHEX(REPLACE(UUID() COLLATE utf8_unicode_ci,'-',''))
                        , 'recycling_carbon_features'
                        , 'POST'
                        , history_data = JSON_OBJECT(    'feature_entity_id', JSON_QUOTE(COALESCE(NEW.feature_entity_id,'')),    'feature_code', JSON_QUOTE(COALESCE(NEW.feature_code,'')),    'feature_creation_date', JSON_QUOTE(COALESCE(NEW.feature_creation_date,''))
                        ), original_query);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_recycling_carbon_features_a_u` AFTER UPDATE ON `recycling_carbon_features` FOR EACH ROW
                                                                   BEGIN

        DECLARE original_query text;

SELECT argument INTO original_query 
  FROM mysql.general_log 
  where thread_id = connection_id() 
  order by event_time desc 
  limit 1;

      
INSERT INTO recycling_carbon_history_logs (history_uuid, history_table, history_type, history_data, history_original_query)
                VALUES (UNHEX(REPLACE(UUID() COLLATE utf8_unicode_ci,'-',''))
                        , 'recycling_carbon_features'
                        , 'PUT'
                        , history_data = JSON_OBJECT(    'feature_entity_id', JSON_QUOTE(COALESCE(NEW.feature_entity_id,'')),    'feature_code', JSON_QUOTE(COALESCE(NEW.feature_code,'')),    'feature_creation_date', JSON_QUOTE(COALESCE(NEW.feature_creation_date,''))
                        ), original_query);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_recycling_carbon_features_b_d` BEFORE DELETE ON `recycling_carbon_features` FOR EACH ROW
BEGIN

        DECLARE original_query text;

SELECT argument INTO original_query 
  FROM mysql.general_log 
  where thread_id = connection_id() 
  order by event_time desc 
  limit 1;

      
INSERT INTO recycling_carbon_history_logs (history_uuid, history_table, history_type, history_data, history_original_query)
                VALUES (UNHEX(REPLACE(UUID() COLLATE utf8_unicode_ci,'-',''))
                        , 'recycling_carbon_features'
                        , 'DELETE'
                        , history_data = JSON_OBJECT(    'feature_entity_id', JSON_QUOTE(COALESCE(OLD.feature_entity_id,'')),    'feature_code', JSON_QUOTE(COALESCE(OLD.feature_code,'')),    'feature_creation_date', JSON_QUOTE(COALESCE(OLD.feature_creation_date,''))
                        ), original_query);

      


END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `recycling_carbon_group_references`
--

DROP TABLE IF EXISTS `recycling_carbon_group_references`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recycling_carbon_group_references` (
  `group_id` binary(16) DEFAULT NULL,
  `allowed_to_grant_group_id` binary(16) DEFAULT NULL,
  KEY `carbon_group_references_carbons_entity_pk_fk` (`group_id`),
  KEY `carbon_group_references_carbons_entity_pk_fk_2` (`allowed_to_grant_group_id`),
  CONSTRAINT `carbon_group_references_carbons_entity_pk_fk` FOREIGN KEY (`group_id`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `carbon_group_references_carbons_entity_pk_fk_2` FOREIGN KEY (`allowed_to_grant_group_id`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_recycling_carbon_group_references_a_i` AFTER INSERT ON `recycling_carbon_group_references` FOR EACH ROW
                                                                   BEGIN

        DECLARE original_query text;

SELECT argument INTO original_query 
  FROM mysql.general_log 
  where thread_id = connection_id() 
  order by event_time desc 
  limit 1;

      
INSERT INTO recycling_carbon_history_logs (history_uuid, history_table, history_type, history_data, history_original_query)
                VALUES (UNHEX(REPLACE(UUID() COLLATE utf8_unicode_ci,'-',''))
                        , 'recycling_carbon_group_references'
                        , 'POST'
                        , history_data = JSON_OBJECT(    'group_id', JSON_QUOTE(COALESCE(NEW.group_id,'')),    'allowed_to_grant_group_id', JSON_QUOTE(COALESCE(NEW.allowed_to_grant_group_id,''))
                        ), original_query);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_recycling_carbon_group_references_a_u` AFTER UPDATE ON `recycling_carbon_group_references` FOR EACH ROW
                                                                   BEGIN

        DECLARE original_query text;

SELECT argument INTO original_query 
  FROM mysql.general_log 
  where thread_id = connection_id() 
  order by event_time desc 
  limit 1;

      
INSERT INTO recycling_carbon_history_logs (history_uuid, history_table, history_type, history_data, history_original_query)
                VALUES (UNHEX(REPLACE(UUID() COLLATE utf8_unicode_ci,'-',''))
                        , 'recycling_carbon_group_references'
                        , 'PUT'
                        , history_data = JSON_OBJECT(    'group_id', JSON_QUOTE(COALESCE(NEW.group_id,'')),    'allowed_to_grant_group_id', JSON_QUOTE(COALESCE(NEW.allowed_to_grant_group_id,''))
                        ), original_query);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_recycling_carbon_group_references_b_d` BEFORE DELETE ON `recycling_carbon_group_references` FOR EACH ROW
BEGIN

        DECLARE original_query text;

SELECT argument INTO original_query 
  FROM mysql.general_log 
  where thread_id = connection_id() 
  order by event_time desc 
  limit 1;

      
INSERT INTO recycling_carbon_history_logs (history_uuid, history_table, history_type, history_data, history_original_query)
                VALUES (UNHEX(REPLACE(UUID() COLLATE utf8_unicode_ci,'-',''))
                        , 'recycling_carbon_group_references'
                        , 'DELETE'
                        , history_data = JSON_OBJECT(    'group_id', JSON_QUOTE(COALESCE(OLD.group_id,'')),    'allowed_to_grant_group_id', JSON_QUOTE(COALESCE(OLD.allowed_to_grant_group_id,''))
                        ), original_query);

      


END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `recycling_carbon_groups`
--

DROP TABLE IF EXISTS `recycling_carbon_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recycling_carbon_groups` (
  `group_name` varchar(20) NOT NULL,
  `entity_id` binary(16) NOT NULL,
  `created_by` binary(16) NOT NULL,
  `creation_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`entity_id`),
  KEY `carbon_feature_groups_carbons_entity_pk_fk_2` (`created_by`),
  CONSTRAINT `carbon_feature_groups_carbons_entity_pk_fk` FOREIGN KEY (`entity_id`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `carbon_feature_groups_carbons_entity_pk_fk_2` FOREIGN KEY (`created_by`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_recycling_carbon_groups_a_i` AFTER INSERT ON `recycling_carbon_groups` FOR EACH ROW
                                                                   BEGIN

        DECLARE original_query text;

SELECT argument INTO original_query 
  FROM mysql.general_log 
  where thread_id = connection_id() 
  order by event_time desc 
  limit 1;

      
INSERT INTO recycling_carbon_history_logs (history_uuid, history_table, history_type, history_data, history_original_query)
                VALUES (UNHEX(REPLACE(UUID() COLLATE utf8_unicode_ci,'-',''))
                        , 'recycling_carbon_groups'
                        , 'POST'
                        , history_data = JSON_OBJECT(    'group_name', JSON_QUOTE(COALESCE(NEW.group_name,'')),    'entity_id', JSON_QUOTE(COALESCE(NEW.entity_id,'')),    'created_by', JSON_QUOTE(COALESCE(NEW.created_by,'')),    'creation_date', JSON_QUOTE(COALESCE(NEW.creation_date,''))
                        ), original_query);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_recycling_carbon_groups_a_u` AFTER UPDATE ON `recycling_carbon_groups` FOR EACH ROW
                                                                   BEGIN

        DECLARE original_query text;

SELECT argument INTO original_query 
  FROM mysql.general_log 
  where thread_id = connection_id() 
  order by event_time desc 
  limit 1;

      
INSERT INTO recycling_carbon_history_logs (history_uuid, history_table, history_type, history_data, history_original_query)
                VALUES (UNHEX(REPLACE(UUID() COLLATE utf8_unicode_ci,'-',''))
                        , 'recycling_carbon_groups'
                        , 'PUT'
                        , history_data = JSON_OBJECT(    'group_name', JSON_QUOTE(COALESCE(NEW.group_name,'')),    'entity_id', JSON_QUOTE(COALESCE(NEW.entity_id,'')),    'created_by', JSON_QUOTE(COALESCE(NEW.created_by,'')),    'creation_date', JSON_QUOTE(COALESCE(NEW.creation_date,''))
                        ), original_query);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_recycling_carbon_groups_b_d` BEFORE DELETE ON `recycling_carbon_groups` FOR EACH ROW
BEGIN

        DECLARE original_query text;

SELECT argument INTO original_query 
  FROM mysql.general_log 
  where thread_id = connection_id() 
  order by event_time desc 
  limit 1;

      
INSERT INTO recycling_carbon_history_logs (history_uuid, history_table, history_type, history_data, history_original_query)
                VALUES (UNHEX(REPLACE(UUID() COLLATE utf8_unicode_ci,'-',''))
                        , 'recycling_carbon_groups'
                        , 'DELETE'
                        , history_data = JSON_OBJECT(    'group_name', JSON_QUOTE(COALESCE(OLD.group_name,'')),    'entity_id', JSON_QUOTE(COALESCE(OLD.entity_id,'')),    'created_by', JSON_QUOTE(COALESCE(OLD.created_by,'')),    'creation_date', JSON_QUOTE(COALESCE(OLD.creation_date,''))
                        ), original_query);

      


END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `recycling_carbon_history_logs`
--

DROP TABLE IF EXISTS `recycling_carbon_history_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recycling_carbon_history_logs` (
  `history_uuid` binary(16) NOT NULL,
  `history_table` varchar(255) DEFAULT NULL,
  `history_type` varchar(20) DEFAULT NULL,
  `history_data` json DEFAULT NULL,
  `history_original_query` varchar(1024) DEFAULT NULL,
  `history_time` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_recycling_carbon_history_logs_a_i` AFTER INSERT ON `recycling_carbon_history_logs` FOR EACH ROW
                                                                   BEGIN

        DECLARE original_query text;

SELECT argument INTO original_query 
  FROM mysql.general_log 
  where thread_id = connection_id() 
  order by event_time desc 
  limit 1;

      
INSERT INTO recycling_carbon_history_logs (history_uuid, history_table, history_type, history_data, history_original_query)
                VALUES (UNHEX(REPLACE(UUID() COLLATE utf8_unicode_ci,'-',''))
                        , 'recycling_carbon_history_logs'
                        , 'POST'
                        , history_data = JSON_OBJECT(    'history_uuid', JSON_QUOTE(COALESCE(NEW.history_uuid,'')),    'history_table', JSON_QUOTE(COALESCE(NEW.history_table,'')),    'history_type', JSON_QUOTE(COALESCE(NEW.history_type,'')),    'history_data', JSON_QUOTE(COALESCE(NEW.history_data,'')),    'history_original_query', JSON_QUOTE(COALESCE(NEW.history_original_query,'')),    'history_time', JSON_QUOTE(COALESCE(NEW.history_time,''))
                        ), original_query);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_recycling_carbon_history_logs_a_u` AFTER UPDATE ON `recycling_carbon_history_logs` FOR EACH ROW
                                                                   BEGIN

        DECLARE original_query text;

SELECT argument INTO original_query 
  FROM mysql.general_log 
  where thread_id = connection_id() 
  order by event_time desc 
  limit 1;

      
INSERT INTO recycling_carbon_history_logs (history_uuid, history_table, history_type, history_data, history_original_query)
                VALUES (UNHEX(REPLACE(UUID() COLLATE utf8_unicode_ci,'-',''))
                        , 'recycling_carbon_history_logs'
                        , 'PUT'
                        , history_data = JSON_OBJECT(    'history_uuid', JSON_QUOTE(COALESCE(NEW.history_uuid,'')),    'history_table', JSON_QUOTE(COALESCE(NEW.history_table,'')),    'history_type', JSON_QUOTE(COALESCE(NEW.history_type,'')),    'history_data', JSON_QUOTE(COALESCE(NEW.history_data,'')),    'history_original_query', JSON_QUOTE(COALESCE(NEW.history_original_query,'')),    'history_time', JSON_QUOTE(COALESCE(NEW.history_time,''))
                        ), original_query);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_recycling_carbon_history_logs_b_d` BEFORE DELETE ON `recycling_carbon_history_logs` FOR EACH ROW
BEGIN

        DECLARE original_query text;

SELECT argument INTO original_query 
  FROM mysql.general_log 
  where thread_id = connection_id() 
  order by event_time desc 
  limit 1;

      
INSERT INTO recycling_carbon_history_logs (history_uuid, history_table, history_type, history_data, history_original_query)
                VALUES (UNHEX(REPLACE(UUID() COLLATE utf8_unicode_ci,'-',''))
                        , 'recycling_carbon_history_logs'
                        , 'DELETE'
                        , history_data = JSON_OBJECT(    'history_uuid', JSON_QUOTE(COALESCE(OLD.history_uuid,'')),    'history_table', JSON_QUOTE(COALESCE(OLD.history_table,'')),    'history_type', JSON_QUOTE(COALESCE(OLD.history_type,'')),    'history_data', JSON_QUOTE(COALESCE(OLD.history_data,'')),    'history_original_query', JSON_QUOTE(COALESCE(OLD.history_original_query,'')),    'history_time', JSON_QUOTE(COALESCE(OLD.history_time,''))
                        ), original_query);

      


END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `recycling_carbon_location_references`
--

DROP TABLE IF EXISTS `recycling_carbon_location_references`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recycling_carbon_location_references` (
  `entity_reference` binary(16) NOT NULL,
  `location_reference` binary(16) NOT NULL,
  `location_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `carbon_location_references_carbons_entity_pk_fk` (`entity_reference`),
  KEY `carbon_location_references_carbons_entity_pk_fk_2` (`location_reference`),
  CONSTRAINT `carbon_location_references_carbons_entity_pk_fk` FOREIGN KEY (`entity_reference`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `carbon_location_references_carbons_entity_pk_fk_2` FOREIGN KEY (`location_reference`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_recycling_carbon_location_references_a_i` AFTER INSERT ON `recycling_carbon_location_references` FOR EACH ROW
                                                                   BEGIN

        DECLARE original_query text;

SELECT argument INTO original_query 
  FROM mysql.general_log 
  where thread_id = connection_id() 
  order by event_time desc 
  limit 1;

      
INSERT INTO recycling_carbon_history_logs (history_uuid, history_table, history_type, history_data, history_original_query)
                VALUES (UNHEX(REPLACE(UUID() COLLATE utf8_unicode_ci,'-',''))
                        , 'recycling_carbon_location_references'
                        , 'POST'
                        , history_data = JSON_OBJECT(    'entity_reference', JSON_QUOTE(COALESCE(NEW.entity_reference,'')),    'location_reference', JSON_QUOTE(COALESCE(NEW.location_reference,'')),    'location_time', JSON_QUOTE(COALESCE(NEW.location_time,''))
                        ), original_query);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_recycling_carbon_location_references_a_u` AFTER UPDATE ON `recycling_carbon_location_references` FOR EACH ROW
                                                                   BEGIN

        DECLARE original_query text;

SELECT argument INTO original_query 
  FROM mysql.general_log 
  where thread_id = connection_id() 
  order by event_time desc 
  limit 1;

      
INSERT INTO recycling_carbon_history_logs (history_uuid, history_table, history_type, history_data, history_original_query)
                VALUES (UNHEX(REPLACE(UUID() COLLATE utf8_unicode_ci,'-',''))
                        , 'recycling_carbon_location_references'
                        , 'PUT'
                        , history_data = JSON_OBJECT(    'entity_reference', JSON_QUOTE(COALESCE(NEW.entity_reference,'')),    'location_reference', JSON_QUOTE(COALESCE(NEW.location_reference,'')),    'location_time', JSON_QUOTE(COALESCE(NEW.location_time,''))
                        ), original_query);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_recycling_carbon_location_references_b_d` BEFORE DELETE ON `recycling_carbon_location_references` FOR EACH ROW
BEGIN

        DECLARE original_query text;

SELECT argument INTO original_query 
  FROM mysql.general_log 
  where thread_id = connection_id() 
  order by event_time desc 
  limit 1;

      
INSERT INTO recycling_carbon_history_logs (history_uuid, history_table, history_type, history_data, history_original_query)
                VALUES (UNHEX(REPLACE(UUID() COLLATE utf8_unicode_ci,'-',''))
                        , 'recycling_carbon_location_references'
                        , 'DELETE'
                        , history_data = JSON_OBJECT(    'entity_reference', JSON_QUOTE(COALESCE(OLD.entity_reference,'')),    'location_reference', JSON_QUOTE(COALESCE(OLD.location_reference,'')),    'location_time', JSON_QUOTE(COALESCE(OLD.location_time,''))
                        ), original_query);

      


END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `recycling_carbon_locations`
--

DROP TABLE IF EXISTS `recycling_carbon_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recycling_carbon_locations` (
  `entity_id` binary(16) NOT NULL,
  `latitude` varchar(225) DEFAULT NULL,
  `longitude` varchar(225) DEFAULT NULL,
  `street` varchar(225) DEFAULT NULL,
  `city` varchar(40) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `elevation` varchar(40) DEFAULT NULL,
  `zip` int(11) DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `entity_location_entity_id_uindex` (`entity_id`),
  CONSTRAINT `entity_location_entity_entity_pk_fk` FOREIGN KEY (`entity_id`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_recycling_carbon_locations_a_i` AFTER INSERT ON `recycling_carbon_locations` FOR EACH ROW
                                                                   BEGIN

        DECLARE original_query text;

SELECT argument INTO original_query 
  FROM mysql.general_log 
  where thread_id = connection_id() 
  order by event_time desc 
  limit 1;

      
INSERT INTO recycling_carbon_history_logs (history_uuid, history_table, history_type, history_data, history_original_query)
                VALUES (UNHEX(REPLACE(UUID() COLLATE utf8_unicode_ci,'-',''))
                        , 'recycling_carbon_locations'
                        , 'POST'
                        , history_data = JSON_OBJECT(    'entity_id', JSON_QUOTE(COALESCE(NEW.entity_id,'')),    'latitude', JSON_QUOTE(COALESCE(NEW.latitude,'')),    'longitude', JSON_QUOTE(COALESCE(NEW.longitude,'')),    'street', JSON_QUOTE(COALESCE(NEW.street,'')),    'city', JSON_QUOTE(COALESCE(NEW.city,'')),    'state', JSON_QUOTE(COALESCE(NEW.state,'')),    'elevation', JSON_QUOTE(COALESCE(NEW.elevation,'')),    'zip', JSON_QUOTE(COALESCE(NEW.zip,''))
                        ), original_query);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_recycling_carbon_locations_a_u` AFTER UPDATE ON `recycling_carbon_locations` FOR EACH ROW
                                                                   BEGIN

        DECLARE original_query text;

SELECT argument INTO original_query 
  FROM mysql.general_log 
  where thread_id = connection_id() 
  order by event_time desc 
  limit 1;

      
INSERT INTO recycling_carbon_history_logs (history_uuid, history_table, history_type, history_data, history_original_query)
                VALUES (UNHEX(REPLACE(UUID() COLLATE utf8_unicode_ci,'-',''))
                        , 'recycling_carbon_locations'
                        , 'PUT'
                        , history_data = JSON_OBJECT(    'entity_id', JSON_QUOTE(COALESCE(NEW.entity_id,'')),    'latitude', JSON_QUOTE(COALESCE(NEW.latitude,'')),    'longitude', JSON_QUOTE(COALESCE(NEW.longitude,'')),    'street', JSON_QUOTE(COALESCE(NEW.street,'')),    'city', JSON_QUOTE(COALESCE(NEW.city,'')),    'state', JSON_QUOTE(COALESCE(NEW.state,'')),    'elevation', JSON_QUOTE(COALESCE(NEW.elevation,'')),    'zip', JSON_QUOTE(COALESCE(NEW.zip,''))
                        ), original_query);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_recycling_carbon_locations_b_d` BEFORE DELETE ON `recycling_carbon_locations` FOR EACH ROW
BEGIN

        DECLARE original_query text;

SELECT argument INTO original_query 
  FROM mysql.general_log 
  where thread_id = connection_id() 
  order by event_time desc 
  limit 1;

      
INSERT INTO recycling_carbon_history_logs (history_uuid, history_table, history_type, history_data, history_original_query)
                VALUES (UNHEX(REPLACE(UUID() COLLATE utf8_unicode_ci,'-',''))
                        , 'recycling_carbon_locations'
                        , 'DELETE'
                        , history_data = JSON_OBJECT(    'entity_id', JSON_QUOTE(COALESCE(OLD.entity_id,'')),    'latitude', JSON_QUOTE(COALESCE(OLD.latitude,'')),    'longitude', JSON_QUOTE(COALESCE(OLD.longitude,'')),    'street', JSON_QUOTE(COALESCE(OLD.street,'')),    'city', JSON_QUOTE(COALESCE(OLD.city,'')),    'state', JSON_QUOTE(COALESCE(OLD.state,'')),    'elevation', JSON_QUOTE(COALESCE(OLD.elevation,'')),    'zip', JSON_QUOTE(COALESCE(OLD.zip,''))
                        ), original_query);

      


END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `recycling_carbon_photos`
--

DROP TABLE IF EXISTS `recycling_carbon_photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recycling_carbon_photos` (
  `parent_id` binary(16) NOT NULL,
  `photo_id` binary(16) NOT NULL,
  `user_id` binary(16) NOT NULL,
  `photo_path` varchar(225) NOT NULL,
  `photo_description` text,
  PRIMARY KEY (`parent_id`),
  UNIQUE KEY `entity_photos_photo_id_uindex` (`photo_id`),
  KEY `photos_entity_user_pk_fk` (`user_id`),
  CONSTRAINT `entity_photos_entity_entity_pk_fk` FOREIGN KEY (`photo_id`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `photos_entity_entity_pk_fk` FOREIGN KEY (`parent_id`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `photos_entity_user_pk_fk` FOREIGN KEY (`user_id`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_recycling_carbon_photos_a_i` AFTER INSERT ON `recycling_carbon_photos` FOR EACH ROW
                                                                   BEGIN

        DECLARE original_query text;

SELECT argument INTO original_query 
  FROM mysql.general_log 
  where thread_id = connection_id() 
  order by event_time desc 
  limit 1;

      
INSERT INTO recycling_carbon_history_logs (history_uuid, history_table, history_type, history_data, history_original_query)
                VALUES (UNHEX(REPLACE(UUID() COLLATE utf8_unicode_ci,'-',''))
                        , 'recycling_carbon_photos'
                        , 'POST'
                        , history_data = JSON_OBJECT(    'parent_id', JSON_QUOTE(COALESCE(NEW.parent_id,'')),    'photo_id', JSON_QUOTE(COALESCE(NEW.photo_id,'')),    'user_id', JSON_QUOTE(COALESCE(NEW.user_id,'')),    'photo_path', JSON_QUOTE(COALESCE(NEW.photo_path,'')),    'photo_description', JSON_QUOTE(COALESCE(NEW.photo_description,''))
                        ), original_query);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_recycling_carbon_photos_a_u` AFTER UPDATE ON `recycling_carbon_photos` FOR EACH ROW
                                                                   BEGIN

        DECLARE original_query text;

SELECT argument INTO original_query 
  FROM mysql.general_log 
  where thread_id = connection_id() 
  order by event_time desc 
  limit 1;

      
INSERT INTO recycling_carbon_history_logs (history_uuid, history_table, history_type, history_data, history_original_query)
                VALUES (UNHEX(REPLACE(UUID() COLLATE utf8_unicode_ci,'-',''))
                        , 'recycling_carbon_photos'
                        , 'PUT'
                        , history_data = JSON_OBJECT(    'parent_id', JSON_QUOTE(COALESCE(NEW.parent_id,'')),    'photo_id', JSON_QUOTE(COALESCE(NEW.photo_id,'')),    'user_id', JSON_QUOTE(COALESCE(NEW.user_id,'')),    'photo_path', JSON_QUOTE(COALESCE(NEW.photo_path,'')),    'photo_description', JSON_QUOTE(COALESCE(NEW.photo_description,''))
                        ), original_query);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_recycling_carbon_photos_b_d` BEFORE DELETE ON `recycling_carbon_photos` FOR EACH ROW
BEGIN

        DECLARE original_query text;

SELECT argument INTO original_query 
  FROM mysql.general_log 
  where thread_id = connection_id() 
  order by event_time desc 
  limit 1;

      
INSERT INTO recycling_carbon_history_logs (history_uuid, history_table, history_type, history_data, history_original_query)
                VALUES (UNHEX(REPLACE(UUID() COLLATE utf8_unicode_ci,'-',''))
                        , 'recycling_carbon_photos'
                        , 'DELETE'
                        , history_data = JSON_OBJECT(    'parent_id', JSON_QUOTE(COALESCE(OLD.parent_id,'')),    'photo_id', JSON_QUOTE(COALESCE(OLD.photo_id,'')),    'user_id', JSON_QUOTE(COALESCE(OLD.user_id,'')),    'photo_path', JSON_QUOTE(COALESCE(OLD.photo_path,'')),    'photo_description', JSON_QUOTE(COALESCE(OLD.photo_description,''))
                        ), original_query);

      


END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `recycling_carbon_reports`
--

DROP TABLE IF EXISTS `recycling_carbon_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recycling_carbon_reports` (
  `log_level` varchar(20) DEFAULT NULL,
  `report` text,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `call_trace` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_recycling_carbon_reports_a_i` AFTER INSERT ON `recycling_carbon_reports` FOR EACH ROW
                                                                   BEGIN

        DECLARE original_query text;

SELECT argument INTO original_query 
  FROM mysql.general_log 
  where thread_id = connection_id() 
  order by event_time desc 
  limit 1;

      
INSERT INTO recycling_carbon_history_logs (history_uuid, history_table, history_type, history_data, history_original_query)
                VALUES (UNHEX(REPLACE(UUID() COLLATE utf8_unicode_ci,'-',''))
                        , 'recycling_carbon_reports'
                        , 'POST'
                        , history_data = JSON_OBJECT(    'log_level', JSON_QUOTE(COALESCE(NEW.log_level,'')),    'report', JSON_QUOTE(COALESCE(NEW.report,'')),    'date', JSON_QUOTE(COALESCE(NEW.date,'')),    'call_trace', JSON_QUOTE(COALESCE(NEW.call_trace,''))
                        ), original_query);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_recycling_carbon_reports_a_u` AFTER UPDATE ON `recycling_carbon_reports` FOR EACH ROW
                                                                   BEGIN

        DECLARE original_query text;

SELECT argument INTO original_query 
  FROM mysql.general_log 
  where thread_id = connection_id() 
  order by event_time desc 
  limit 1;

      
INSERT INTO recycling_carbon_history_logs (history_uuid, history_table, history_type, history_data, history_original_query)
                VALUES (UNHEX(REPLACE(UUID() COLLATE utf8_unicode_ci,'-',''))
                        , 'recycling_carbon_reports'
                        , 'PUT'
                        , history_data = JSON_OBJECT(    'log_level', JSON_QUOTE(COALESCE(NEW.log_level,'')),    'report', JSON_QUOTE(COALESCE(NEW.report,'')),    'date', JSON_QUOTE(COALESCE(NEW.date,'')),    'call_trace', JSON_QUOTE(COALESCE(NEW.call_trace,''))
                        ), original_query);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_recycling_carbon_reports_b_d` BEFORE DELETE ON `recycling_carbon_reports` FOR EACH ROW
BEGIN

        DECLARE original_query text;

SELECT argument INTO original_query 
  FROM mysql.general_log 
  where thread_id = connection_id() 
  order by event_time desc 
  limit 1;

      
INSERT INTO recycling_carbon_history_logs (history_uuid, history_table, history_type, history_data, history_original_query)
                VALUES (UNHEX(REPLACE(UUID() COLLATE utf8_unicode_ci,'-',''))
                        , 'recycling_carbon_reports'
                        , 'DELETE'
                        , history_data = JSON_OBJECT(    'log_level', JSON_QUOTE(COALESCE(OLD.log_level,'')),    'report', JSON_QUOTE(COALESCE(OLD.report,'')),    'date', JSON_QUOTE(COALESCE(OLD.date,'')),    'call_trace', JSON_QUOTE(COALESCE(OLD.call_trace,''))
                        ), original_query);

      


END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `recycling_carbon_sessions`
--

DROP TABLE IF EXISTS `recycling_carbon_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recycling_carbon_sessions` (
  `user_id` binary(16) NOT NULL,
  `user_ip` varchar(20) DEFAULT NULL,
  `session_id` varchar(255) NOT NULL,
  `session_expires` datetime NOT NULL,
  `session_data` text,
  `user_online_status` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_recycling_carbon_sessions_a_i` AFTER INSERT ON `recycling_carbon_sessions` FOR EACH ROW
                                                                   BEGIN

        DECLARE original_query text;

SELECT argument INTO original_query 
  FROM mysql.general_log 
  where thread_id = connection_id() 
  order by event_time desc 
  limit 1;

      
INSERT INTO recycling_carbon_history_logs (history_uuid, history_table, history_type, history_data, history_original_query)
                VALUES (UNHEX(REPLACE(UUID() COLLATE utf8_unicode_ci,'-',''))
                        , 'recycling_carbon_sessions'
                        , 'POST'
                        , history_data = JSON_OBJECT(    'user_id', JSON_QUOTE(COALESCE(NEW.user_id,'')),    'user_ip', JSON_QUOTE(COALESCE(NEW.user_ip,'')),    'session_id', JSON_QUOTE(COALESCE(NEW.session_id,'')),    'session_expires', JSON_QUOTE(COALESCE(NEW.session_expires,'')),    'session_data', JSON_QUOTE(COALESCE(NEW.session_data,'')),    'user_online_status', JSON_QUOTE(COALESCE(NEW.user_online_status,''))
                        ), original_query);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_recycling_carbon_sessions_a_u` AFTER UPDATE ON `recycling_carbon_sessions` FOR EACH ROW
                                                                   BEGIN

        DECLARE original_query text;

SELECT argument INTO original_query 
  FROM mysql.general_log 
  where thread_id = connection_id() 
  order by event_time desc 
  limit 1;

      
INSERT INTO recycling_carbon_history_logs (history_uuid, history_table, history_type, history_data, history_original_query)
                VALUES (UNHEX(REPLACE(UUID() COLLATE utf8_unicode_ci,'-',''))
                        , 'recycling_carbon_sessions'
                        , 'PUT'
                        , history_data = JSON_OBJECT(    'user_id', JSON_QUOTE(COALESCE(NEW.user_id,'')),    'user_ip', JSON_QUOTE(COALESCE(NEW.user_ip,'')),    'session_id', JSON_QUOTE(COALESCE(NEW.session_id,'')),    'session_expires', JSON_QUOTE(COALESCE(NEW.session_expires,'')),    'session_data', JSON_QUOTE(COALESCE(NEW.session_data,'')),    'user_online_status', JSON_QUOTE(COALESCE(NEW.user_online_status,''))
                        ), original_query);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_recycling_carbon_sessions_b_d` BEFORE DELETE ON `recycling_carbon_sessions` FOR EACH ROW
BEGIN

        DECLARE original_query text;

SELECT argument INTO original_query 
  FROM mysql.general_log 
  where thread_id = connection_id() 
  order by event_time desc 
  limit 1;

      
INSERT INTO recycling_carbon_history_logs (history_uuid, history_table, history_type, history_data, history_original_query)
                VALUES (UNHEX(REPLACE(UUID() COLLATE utf8_unicode_ci,'-',''))
                        , 'recycling_carbon_sessions'
                        , 'DELETE'
                        , history_data = JSON_OBJECT(    'user_id', JSON_QUOTE(COALESCE(OLD.user_id,'')),    'user_ip', JSON_QUOTE(COALESCE(OLD.user_ip,'')),    'session_id', JSON_QUOTE(COALESCE(OLD.session_id,'')),    'session_expires', JSON_QUOTE(COALESCE(OLD.session_expires,'')),    'session_data', JSON_QUOTE(COALESCE(OLD.session_data,'')),    'user_online_status', JSON_QUOTE(COALESCE(OLD.user_online_status,''))
                        ), original_query);

      


END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `recycling_carbon_user_followers`
--

DROP TABLE IF EXISTS `recycling_carbon_user_followers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recycling_carbon_user_followers` (
  `follower_table_id` binary(16) NOT NULL,
  `follows_user_id` binary(16) NOT NULL,
  `user_id` binary(16) NOT NULL,
  PRIMARY KEY (`follower_table_id`),
  KEY `followers_entity_entity_pk_fk` (`follows_user_id`),
  KEY `followers_entity_entity_followers_pk_fk` (`user_id`),
  CONSTRAINT `carbon_user_followers_carbons_entity_pk_fk` FOREIGN KEY (`follower_table_id`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `followers_entity_entity_follows_pk_fk` FOREIGN KEY (`follows_user_id`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `followers_entity_followers_pk_fk` FOREIGN KEY (`user_id`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_recycling_carbon_user_followers_a_i` AFTER INSERT ON `recycling_carbon_user_followers` FOR EACH ROW
                                                                   BEGIN

        DECLARE original_query text;

SELECT argument INTO original_query 
  FROM mysql.general_log 
  where thread_id = connection_id() 
  order by event_time desc 
  limit 1;

      
INSERT INTO recycling_carbon_history_logs (history_uuid, history_table, history_type, history_data, history_original_query)
                VALUES (UNHEX(REPLACE(UUID() COLLATE utf8_unicode_ci,'-',''))
                        , 'recycling_carbon_user_followers'
                        , 'POST'
                        , history_data = JSON_OBJECT(    'follower_table_id', JSON_QUOTE(COALESCE(NEW.follower_table_id,'')),    'follows_user_id', JSON_QUOTE(COALESCE(NEW.follows_user_id,'')),    'user_id', JSON_QUOTE(COALESCE(NEW.user_id,''))
                        ), original_query);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_recycling_carbon_user_followers_a_u` AFTER UPDATE ON `recycling_carbon_user_followers` FOR EACH ROW
                                                                   BEGIN

        DECLARE original_query text;

SELECT argument INTO original_query 
  FROM mysql.general_log 
  where thread_id = connection_id() 
  order by event_time desc 
  limit 1;

      
INSERT INTO recycling_carbon_history_logs (history_uuid, history_table, history_type, history_data, history_original_query)
                VALUES (UNHEX(REPLACE(UUID() COLLATE utf8_unicode_ci,'-',''))
                        , 'recycling_carbon_user_followers'
                        , 'PUT'
                        , history_data = JSON_OBJECT(    'follower_table_id', JSON_QUOTE(COALESCE(NEW.follower_table_id,'')),    'follows_user_id', JSON_QUOTE(COALESCE(NEW.follows_user_id,'')),    'user_id', JSON_QUOTE(COALESCE(NEW.user_id,''))
                        ), original_query);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_recycling_carbon_user_followers_b_d` BEFORE DELETE ON `recycling_carbon_user_followers` FOR EACH ROW
BEGIN

        DECLARE original_query text;

SELECT argument INTO original_query 
  FROM mysql.general_log 
  where thread_id = connection_id() 
  order by event_time desc 
  limit 1;

      
INSERT INTO recycling_carbon_history_logs (history_uuid, history_table, history_type, history_data, history_original_query)
                VALUES (UNHEX(REPLACE(UUID() COLLATE utf8_unicode_ci,'-',''))
                        , 'recycling_carbon_user_followers'
                        , 'DELETE'
                        , history_data = JSON_OBJECT(    'follower_table_id', JSON_QUOTE(COALESCE(OLD.follower_table_id,'')),    'follows_user_id', JSON_QUOTE(COALESCE(OLD.follows_user_id,'')),    'user_id', JSON_QUOTE(COALESCE(OLD.user_id,''))
                        ), original_query);

      


END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `recycling_carbon_user_groups`
--

DROP TABLE IF EXISTS `recycling_carbon_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recycling_carbon_user_groups` (
  `group_id` binary(16) DEFAULT NULL,
  `user_id` binary(16) DEFAULT NULL,
  KEY `carbon_user_groups_carbons_entity_pk_fk` (`group_id`),
  KEY `carbon_user_groups_carbons_entity_pk_fk_2` (`user_id`),
  CONSTRAINT `carbon_user_groups_carbons_entity_pk_fk` FOREIGN KEY (`group_id`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `carbon_user_groups_carbons_entity_pk_fk_2` FOREIGN KEY (`user_id`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_recycling_carbon_user_groups_a_i` AFTER INSERT ON `recycling_carbon_user_groups` FOR EACH ROW
                                                                   BEGIN

        DECLARE original_query text;

SELECT argument INTO original_query 
  FROM mysql.general_log 
  where thread_id = connection_id() 
  order by event_time desc 
  limit 1;

      
INSERT INTO recycling_carbon_history_logs (history_uuid, history_table, history_type, history_data, history_original_query)
                VALUES (UNHEX(REPLACE(UUID() COLLATE utf8_unicode_ci,'-',''))
                        , 'recycling_carbon_user_groups'
                        , 'POST'
                        , history_data = JSON_OBJECT(    'group_id', JSON_QUOTE(COALESCE(NEW.group_id,'')),    'user_id', JSON_QUOTE(COALESCE(NEW.user_id,''))
                        ), original_query);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_recycling_carbon_user_groups_a_u` AFTER UPDATE ON `recycling_carbon_user_groups` FOR EACH ROW
                                                                   BEGIN

        DECLARE original_query text;

SELECT argument INTO original_query 
  FROM mysql.general_log 
  where thread_id = connection_id() 
  order by event_time desc 
  limit 1;

      
INSERT INTO recycling_carbon_history_logs (history_uuid, history_table, history_type, history_data, history_original_query)
                VALUES (UNHEX(REPLACE(UUID() COLLATE utf8_unicode_ci,'-',''))
                        , 'recycling_carbon_user_groups'
                        , 'PUT'
                        , history_data = JSON_OBJECT(    'group_id', JSON_QUOTE(COALESCE(NEW.group_id,'')),    'user_id', JSON_QUOTE(COALESCE(NEW.user_id,''))
                        ), original_query);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_recycling_carbon_user_groups_b_d` BEFORE DELETE ON `recycling_carbon_user_groups` FOR EACH ROW
BEGIN

        DECLARE original_query text;

SELECT argument INTO original_query 
  FROM mysql.general_log 
  where thread_id = connection_id() 
  order by event_time desc 
  limit 1;

      
INSERT INTO recycling_carbon_history_logs (history_uuid, history_table, history_type, history_data, history_original_query)
                VALUES (UNHEX(REPLACE(UUID() COLLATE utf8_unicode_ci,'-',''))
                        , 'recycling_carbon_user_groups'
                        , 'DELETE'
                        , history_data = JSON_OBJECT(    'group_id', JSON_QUOTE(COALESCE(OLD.group_id,'')),    'user_id', JSON_QUOTE(COALESCE(OLD.user_id,''))
                        ), original_query);

      


END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `recycling_carbon_user_messages`
--

DROP TABLE IF EXISTS `recycling_carbon_user_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recycling_carbon_user_messages` (
  `message_id` binary(16) NOT NULL,
  `from_user_id` binary(16) NOT NULL,
  `to_user_id` binary(16) NOT NULL,
  `message` text NOT NULL,
  `message_read` tinyint(4) DEFAULT '0',
  `creation_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`message_id`),
  KEY `messages_entity_entity_pk_fk` (`message_id`),
  KEY `messages_entity_user_from_pk_fk` (`to_user_id`),
  KEY `carbon_user_messages_carbon_entity_pk_fk` (`from_user_id`),
  CONSTRAINT `carbon_user_messages_carbon_entity_pk_fk` FOREIGN KEY (`from_user_id`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `messages_entity_entity_pk_fk` FOREIGN KEY (`message_id`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `messages_entity_user_from_pk_fk` FOREIGN KEY (`to_user_id`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_recycling_carbon_user_messages_a_i` AFTER INSERT ON `recycling_carbon_user_messages` FOR EACH ROW
                                                                   BEGIN

        DECLARE original_query text;

SELECT argument INTO original_query 
  FROM mysql.general_log 
  where thread_id = connection_id() 
  order by event_time desc 
  limit 1;

      
INSERT INTO recycling_carbon_history_logs (history_uuid, history_table, history_type, history_data, history_original_query)
                VALUES (UNHEX(REPLACE(UUID() COLLATE utf8_unicode_ci,'-',''))
                        , 'recycling_carbon_user_messages'
                        , 'POST'
                        , history_data = JSON_OBJECT(    'message_id', JSON_QUOTE(COALESCE(NEW.message_id,'')),    'from_user_id', JSON_QUOTE(COALESCE(NEW.from_user_id,'')),    'to_user_id', JSON_QUOTE(COALESCE(NEW.to_user_id,'')),    'message', JSON_QUOTE(COALESCE(NEW.message,'')),    'message_read', JSON_QUOTE(COALESCE(NEW.message_read,'')),    'creation_date', JSON_QUOTE(COALESCE(NEW.creation_date,''))
                        ), original_query);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_recycling_carbon_user_messages_a_u` AFTER UPDATE ON `recycling_carbon_user_messages` FOR EACH ROW
                                                                   BEGIN

        DECLARE original_query text;

SELECT argument INTO original_query 
  FROM mysql.general_log 
  where thread_id = connection_id() 
  order by event_time desc 
  limit 1;

      
INSERT INTO recycling_carbon_history_logs (history_uuid, history_table, history_type, history_data, history_original_query)
                VALUES (UNHEX(REPLACE(UUID() COLLATE utf8_unicode_ci,'-',''))
                        , 'recycling_carbon_user_messages'
                        , 'PUT'
                        , history_data = JSON_OBJECT(    'message_id', JSON_QUOTE(COALESCE(NEW.message_id,'')),    'from_user_id', JSON_QUOTE(COALESCE(NEW.from_user_id,'')),    'to_user_id', JSON_QUOTE(COALESCE(NEW.to_user_id,'')),    'message', JSON_QUOTE(COALESCE(NEW.message,'')),    'message_read', JSON_QUOTE(COALESCE(NEW.message_read,'')),    'creation_date', JSON_QUOTE(COALESCE(NEW.creation_date,''))
                        ), original_query);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_recycling_carbon_user_messages_b_d` BEFORE DELETE ON `recycling_carbon_user_messages` FOR EACH ROW
BEGIN

        DECLARE original_query text;

SELECT argument INTO original_query 
  FROM mysql.general_log 
  where thread_id = connection_id() 
  order by event_time desc 
  limit 1;

      
INSERT INTO recycling_carbon_history_logs (history_uuid, history_table, history_type, history_data, history_original_query)
                VALUES (UNHEX(REPLACE(UUID() COLLATE utf8_unicode_ci,'-',''))
                        , 'recycling_carbon_user_messages'
                        , 'DELETE'
                        , history_data = JSON_OBJECT(    'message_id', JSON_QUOTE(COALESCE(OLD.message_id,'')),    'from_user_id', JSON_QUOTE(COALESCE(OLD.from_user_id,'')),    'to_user_id', JSON_QUOTE(COALESCE(OLD.to_user_id,'')),    'message', JSON_QUOTE(COALESCE(OLD.message,'')),    'message_read', JSON_QUOTE(COALESCE(OLD.message_read,'')),    'creation_date', JSON_QUOTE(COALESCE(OLD.creation_date,''))
                        ), original_query);

      


END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `recycling_carbon_user_sessions`
--

DROP TABLE IF EXISTS `recycling_carbon_user_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recycling_carbon_user_sessions` (
  `user_id` binary(16) NOT NULL,
  `user_ip` binary(16) DEFAULT NULL,
  `session_id` varchar(255) NOT NULL,
  `session_expires` datetime NOT NULL,
  `session_data` text,
  `user_online_status` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_recycling_carbon_user_sessions_a_i` AFTER INSERT ON `recycling_carbon_user_sessions` FOR EACH ROW
                                                                   BEGIN

        DECLARE original_query text;

SELECT argument INTO original_query 
  FROM mysql.general_log 
  where thread_id = connection_id() 
  order by event_time desc 
  limit 1;

      
INSERT INTO recycling_carbon_history_logs (history_uuid, history_table, history_type, history_data, history_original_query)
                VALUES (UNHEX(REPLACE(UUID() COLLATE utf8_unicode_ci,'-',''))
                        , 'recycling_carbon_user_sessions'
                        , 'POST'
                        , history_data = JSON_OBJECT(    'user_id', JSON_QUOTE(COALESCE(NEW.user_id,'')),    'user_ip', JSON_QUOTE(COALESCE(NEW.user_ip,'')),    'session_id', JSON_QUOTE(COALESCE(NEW.session_id,'')),    'session_expires', JSON_QUOTE(COALESCE(NEW.session_expires,'')),    'session_data', JSON_QUOTE(COALESCE(NEW.session_data,'')),    'user_online_status', JSON_QUOTE(COALESCE(NEW.user_online_status,''))
                        ), original_query);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_recycling_carbon_user_sessions_a_u` AFTER UPDATE ON `recycling_carbon_user_sessions` FOR EACH ROW
                                                                   BEGIN

        DECLARE original_query text;

SELECT argument INTO original_query 
  FROM mysql.general_log 
  where thread_id = connection_id() 
  order by event_time desc 
  limit 1;

      
INSERT INTO recycling_carbon_history_logs (history_uuid, history_table, history_type, history_data, history_original_query)
                VALUES (UNHEX(REPLACE(UUID() COLLATE utf8_unicode_ci,'-',''))
                        , 'recycling_carbon_user_sessions'
                        , 'PUT'
                        , history_data = JSON_OBJECT(    'user_id', JSON_QUOTE(COALESCE(NEW.user_id,'')),    'user_ip', JSON_QUOTE(COALESCE(NEW.user_ip,'')),    'session_id', JSON_QUOTE(COALESCE(NEW.session_id,'')),    'session_expires', JSON_QUOTE(COALESCE(NEW.session_expires,'')),    'session_data', JSON_QUOTE(COALESCE(NEW.session_data,'')),    'user_online_status', JSON_QUOTE(COALESCE(NEW.user_online_status,''))
                        ), original_query);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_recycling_carbon_user_sessions_b_d` BEFORE DELETE ON `recycling_carbon_user_sessions` FOR EACH ROW
BEGIN

        DECLARE original_query text;

SELECT argument INTO original_query 
  FROM mysql.general_log 
  where thread_id = connection_id() 
  order by event_time desc 
  limit 1;

      
INSERT INTO recycling_carbon_history_logs (history_uuid, history_table, history_type, history_data, history_original_query)
                VALUES (UNHEX(REPLACE(UUID() COLLATE utf8_unicode_ci,'-',''))
                        , 'recycling_carbon_user_sessions'
                        , 'DELETE'
                        , history_data = JSON_OBJECT(    'user_id', JSON_QUOTE(COALESCE(OLD.user_id,'')),    'user_ip', JSON_QUOTE(COALESCE(OLD.user_ip,'')),    'session_id', JSON_QUOTE(COALESCE(OLD.session_id,'')),    'session_expires', JSON_QUOTE(COALESCE(OLD.session_expires,'')),    'session_data', JSON_QUOTE(COALESCE(OLD.session_data,'')),    'user_online_status', JSON_QUOTE(COALESCE(OLD.user_online_status,''))
                        ), original_query);

      


END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `recycling_carbon_user_tasks`
--

DROP TABLE IF EXISTS `recycling_carbon_user_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recycling_carbon_user_tasks` (
  `task_id` binary(16) NOT NULL,
  `user_id` binary(16) NOT NULL COMMENT 'This is the user the task is being assigned to',
  `from_id` binary(16) DEFAULT NULL COMMENT 'Keeping this colum so forgen key will remove task if user deleted',
  `task_name` varchar(40) NOT NULL,
  `task_description` varchar(225) DEFAULT NULL,
  `percent_complete` int(11) DEFAULT '0',
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  PRIMARY KEY (`task_id`),
  KEY `user_tasks_entity_entity_pk_fk` (`from_id`),
  KEY `user_tasks_entity_task_pk_fk` (`task_id`),
  KEY `carbon_user_tasks_carbons_entity_pk_fk_2` (`user_id`),
  CONSTRAINT `carbon_user_tasks_carbons_entity_pk_fk` FOREIGN KEY (`task_id`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `carbon_user_tasks_carbons_entity_pk_fk_2` FOREIGN KEY (`user_id`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `carbon_user_tasks_carbons_entity_pk_fk_3` FOREIGN KEY (`from_id`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_recycling_carbon_user_tasks_a_i` AFTER INSERT ON `recycling_carbon_user_tasks` FOR EACH ROW
                                                                   BEGIN

        DECLARE original_query text;

SELECT argument INTO original_query 
  FROM mysql.general_log 
  where thread_id = connection_id() 
  order by event_time desc 
  limit 1;

      
INSERT INTO recycling_carbon_history_logs (history_uuid, history_table, history_type, history_data, history_original_query)
                VALUES (UNHEX(REPLACE(UUID() COLLATE utf8_unicode_ci,'-',''))
                        , 'recycling_carbon_user_tasks'
                        , 'POST'
                        , history_data = JSON_OBJECT(    'task_id', JSON_QUOTE(COALESCE(NEW.task_id,'')),    'user_id', JSON_QUOTE(COALESCE(NEW.user_id,'')),    'from_id', JSON_QUOTE(COALESCE(NEW.from_id,'')),    'task_name', JSON_QUOTE(COALESCE(NEW.task_name,'')),    'task_description', JSON_QUOTE(COALESCE(NEW.task_description,'')),    'percent_complete', JSON_QUOTE(COALESCE(NEW.percent_complete,'')),    'start_date', JSON_QUOTE(COALESCE(NEW.start_date,'')),    'end_date', JSON_QUOTE(COALESCE(NEW.end_date,''))
                        ), original_query);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_recycling_carbon_user_tasks_a_u` AFTER UPDATE ON `recycling_carbon_user_tasks` FOR EACH ROW
                                                                   BEGIN

        DECLARE original_query text;

SELECT argument INTO original_query 
  FROM mysql.general_log 
  where thread_id = connection_id() 
  order by event_time desc 
  limit 1;

      
INSERT INTO recycling_carbon_history_logs (history_uuid, history_table, history_type, history_data, history_original_query)
                VALUES (UNHEX(REPLACE(UUID() COLLATE utf8_unicode_ci,'-',''))
                        , 'recycling_carbon_user_tasks'
                        , 'PUT'
                        , history_data = JSON_OBJECT(    'task_id', JSON_QUOTE(COALESCE(NEW.task_id,'')),    'user_id', JSON_QUOTE(COALESCE(NEW.user_id,'')),    'from_id', JSON_QUOTE(COALESCE(NEW.from_id,'')),    'task_name', JSON_QUOTE(COALESCE(NEW.task_name,'')),    'task_description', JSON_QUOTE(COALESCE(NEW.task_description,'')),    'percent_complete', JSON_QUOTE(COALESCE(NEW.percent_complete,'')),    'start_date', JSON_QUOTE(COALESCE(NEW.start_date,'')),    'end_date', JSON_QUOTE(COALESCE(NEW.end_date,''))
                        ), original_query);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_recycling_carbon_user_tasks_b_d` BEFORE DELETE ON `recycling_carbon_user_tasks` FOR EACH ROW
BEGIN

        DECLARE original_query text;

SELECT argument INTO original_query 
  FROM mysql.general_log 
  where thread_id = connection_id() 
  order by event_time desc 
  limit 1;

      
INSERT INTO recycling_carbon_history_logs (history_uuid, history_table, history_type, history_data, history_original_query)
                VALUES (UNHEX(REPLACE(UUID() COLLATE utf8_unicode_ci,'-',''))
                        , 'recycling_carbon_user_tasks'
                        , 'DELETE'
                        , history_data = JSON_OBJECT(    'task_id', JSON_QUOTE(COALESCE(OLD.task_id,'')),    'user_id', JSON_QUOTE(COALESCE(OLD.user_id,'')),    'from_id', JSON_QUOTE(COALESCE(OLD.from_id,'')),    'task_name', JSON_QUOTE(COALESCE(OLD.task_name,'')),    'task_description', JSON_QUOTE(COALESCE(OLD.task_description,'')),    'percent_complete', JSON_QUOTE(COALESCE(OLD.percent_complete,'')),    'start_date', JSON_QUOTE(COALESCE(OLD.start_date,'')),    'end_date', JSON_QUOTE(COALESCE(OLD.end_date,''))
                        ), original_query);

      


END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `recycling_carbon_users`
--

DROP TABLE IF EXISTS `recycling_carbon_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recycling_carbon_users` (
  `user_username` varchar(100) NOT NULL,
  `user_password` varchar(225) NOT NULL,
  `user_id` binary(16) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'Athlete',
  `user_sport` varchar(20) DEFAULT 'GOLF',
  `user_session_id` varchar(225) DEFAULT NULL,
  `user_facebook_id` varchar(225) DEFAULT NULL,
  `user_first_name` varchar(25) NOT NULL,
  `user_last_name` varchar(25) NOT NULL,
  `user_profile_pic` varchar(225) DEFAULT NULL,
  `user_profile_uri` varchar(225) DEFAULT NULL,
  `user_cover_photo` varchar(225) DEFAULT NULL,
  `user_birthday` varchar(9) DEFAULT NULL,
  `user_gender` varchar(25) DEFAULT NULL,
  `user_about_me` varchar(225) DEFAULT NULL,
  `user_rank` int(11) DEFAULT '0',
  `user_email` varchar(50) NOT NULL,
  `user_email_code` varchar(225) DEFAULT NULL,
  `user_email_confirmed` tinyint(4) DEFAULT '0' COMMENT 'need to change to enums, but no support in rest yet',
  `user_generated_string` varchar(200) DEFAULT NULL,
  `user_membership` int(11) DEFAULT '0',
  `user_deactivated` tinyint(4) DEFAULT '0',
  `user_last_login` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_ip` varchar(20) NOT NULL,
  `user_education_history` varchar(200) DEFAULT NULL,
  `user_location` varchar(20) DEFAULT NULL,
  `user_creation_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `carbon_users_user_username_uindex` (`user_username`),
  UNIQUE KEY `user_user_profile_uri_uindex` (`user_profile_uri`),
  UNIQUE KEY `carbon_users_user_facebook_id_uindex` (`user_facebook_id`),
  CONSTRAINT `user_entity_entity_pk_fk` FOREIGN KEY (`user_id`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_recycling_carbon_users_a_i` AFTER INSERT ON `recycling_carbon_users` FOR EACH ROW
                                                                   BEGIN

        DECLARE original_query text;

SELECT argument INTO original_query 
  FROM mysql.general_log 
  where thread_id = connection_id() 
  order by event_time desc 
  limit 1;

      
INSERT INTO recycling_carbon_history_logs (history_uuid, history_table, history_type, history_data, history_original_query)
                VALUES (UNHEX(REPLACE(UUID() COLLATE utf8_unicode_ci,'-',''))
                        , 'recycling_carbon_users'
                        , 'POST'
                        , history_data = JSON_OBJECT(    'user_username', JSON_QUOTE(COALESCE(NEW.user_username,'')),    'user_password', JSON_QUOTE(COALESCE(NEW.user_password,'')),    'user_id', JSON_QUOTE(COALESCE(NEW.user_id,'')),    'user_type', JSON_QUOTE(COALESCE(NEW.user_type,'')),    'user_sport', JSON_QUOTE(COALESCE(NEW.user_sport,'')),    'user_session_id', JSON_QUOTE(COALESCE(NEW.user_session_id,'')),    'user_facebook_id', JSON_QUOTE(COALESCE(NEW.user_facebook_id,'')),    'user_first_name', JSON_QUOTE(COALESCE(NEW.user_first_name,'')),    'user_last_name', JSON_QUOTE(COALESCE(NEW.user_last_name,'')),    'user_profile_pic', JSON_QUOTE(COALESCE(NEW.user_profile_pic,'')),    'user_profile_uri', JSON_QUOTE(COALESCE(NEW.user_profile_uri,'')),    'user_cover_photo', JSON_QUOTE(COALESCE(NEW.user_cover_photo,'')),    'user_birthday', JSON_QUOTE(COALESCE(NEW.user_birthday,'')),    'user_gender', JSON_QUOTE(COALESCE(NEW.user_gender,'')),    'user_about_me', JSON_QUOTE(COALESCE(NEW.user_about_me,'')),    'user_rank', JSON_QUOTE(COALESCE(NEW.user_rank,'')),    'user_email', JSON_QUOTE(COALESCE(NEW.user_email,'')),    'user_email_code', JSON_QUOTE(COALESCE(NEW.user_email_code,'')),    'user_email_confirmed', JSON_QUOTE(COALESCE(NEW.user_email_confirmed,'')),    'user_generated_string', JSON_QUOTE(COALESCE(NEW.user_generated_string,'')),    'user_membership', JSON_QUOTE(COALESCE(NEW.user_membership,'')),    'user_deactivated', JSON_QUOTE(COALESCE(NEW.user_deactivated,'')),    'user_last_login', JSON_QUOTE(COALESCE(NEW.user_last_login,'')),    'user_ip', JSON_QUOTE(COALESCE(NEW.user_ip,'')),    'user_education_history', JSON_QUOTE(COALESCE(NEW.user_education_history,'')),    'user_location', JSON_QUOTE(COALESCE(NEW.user_location,'')),    'user_creation_date', JSON_QUOTE(COALESCE(NEW.user_creation_date,''))
                        ), original_query);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_recycling_carbon_users_a_u` AFTER UPDATE ON `recycling_carbon_users` FOR EACH ROW
                                                                   BEGIN

        DECLARE original_query text;

SELECT argument INTO original_query 
  FROM mysql.general_log 
  where thread_id = connection_id() 
  order by event_time desc 
  limit 1;

      
INSERT INTO recycling_carbon_history_logs (history_uuid, history_table, history_type, history_data, history_original_query)
                VALUES (UNHEX(REPLACE(UUID() COLLATE utf8_unicode_ci,'-',''))
                        , 'recycling_carbon_users'
                        , 'PUT'
                        , history_data = JSON_OBJECT(    'user_username', JSON_QUOTE(COALESCE(NEW.user_username,'')),    'user_password', JSON_QUOTE(COALESCE(NEW.user_password,'')),    'user_id', JSON_QUOTE(COALESCE(NEW.user_id,'')),    'user_type', JSON_QUOTE(COALESCE(NEW.user_type,'')),    'user_sport', JSON_QUOTE(COALESCE(NEW.user_sport,'')),    'user_session_id', JSON_QUOTE(COALESCE(NEW.user_session_id,'')),    'user_facebook_id', JSON_QUOTE(COALESCE(NEW.user_facebook_id,'')),    'user_first_name', JSON_QUOTE(COALESCE(NEW.user_first_name,'')),    'user_last_name', JSON_QUOTE(COALESCE(NEW.user_last_name,'')),    'user_profile_pic', JSON_QUOTE(COALESCE(NEW.user_profile_pic,'')),    'user_profile_uri', JSON_QUOTE(COALESCE(NEW.user_profile_uri,'')),    'user_cover_photo', JSON_QUOTE(COALESCE(NEW.user_cover_photo,'')),    'user_birthday', JSON_QUOTE(COALESCE(NEW.user_birthday,'')),    'user_gender', JSON_QUOTE(COALESCE(NEW.user_gender,'')),    'user_about_me', JSON_QUOTE(COALESCE(NEW.user_about_me,'')),    'user_rank', JSON_QUOTE(COALESCE(NEW.user_rank,'')),    'user_email', JSON_QUOTE(COALESCE(NEW.user_email,'')),    'user_email_code', JSON_QUOTE(COALESCE(NEW.user_email_code,'')),    'user_email_confirmed', JSON_QUOTE(COALESCE(NEW.user_email_confirmed,'')),    'user_generated_string', JSON_QUOTE(COALESCE(NEW.user_generated_string,'')),    'user_membership', JSON_QUOTE(COALESCE(NEW.user_membership,'')),    'user_deactivated', JSON_QUOTE(COALESCE(NEW.user_deactivated,'')),    'user_last_login', JSON_QUOTE(COALESCE(NEW.user_last_login,'')),    'user_ip', JSON_QUOTE(COALESCE(NEW.user_ip,'')),    'user_education_history', JSON_QUOTE(COALESCE(NEW.user_education_history,'')),    'user_location', JSON_QUOTE(COALESCE(NEW.user_location,'')),    'user_creation_date', JSON_QUOTE(COALESCE(NEW.user_creation_date,''))
                        ), original_query);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_recycling_carbon_users_b_d` BEFORE DELETE ON `recycling_carbon_users` FOR EACH ROW
BEGIN

        DECLARE original_query text;

SELECT argument INTO original_query 
  FROM mysql.general_log 
  where thread_id = connection_id() 
  order by event_time desc 
  limit 1;

      
INSERT INTO recycling_carbon_history_logs (history_uuid, history_table, history_type, history_data, history_original_query)
                VALUES (UNHEX(REPLACE(UUID() COLLATE utf8_unicode_ci,'-',''))
                        , 'recycling_carbon_users'
                        , 'DELETE'
                        , history_data = JSON_OBJECT(    'user_username', JSON_QUOTE(COALESCE(OLD.user_username,'')),    'user_password', JSON_QUOTE(COALESCE(OLD.user_password,'')),    'user_id', JSON_QUOTE(COALESCE(OLD.user_id,'')),    'user_type', JSON_QUOTE(COALESCE(OLD.user_type,'')),    'user_sport', JSON_QUOTE(COALESCE(OLD.user_sport,'')),    'user_session_id', JSON_QUOTE(COALESCE(OLD.user_session_id,'')),    'user_facebook_id', JSON_QUOTE(COALESCE(OLD.user_facebook_id,'')),    'user_first_name', JSON_QUOTE(COALESCE(OLD.user_first_name,'')),    'user_last_name', JSON_QUOTE(COALESCE(OLD.user_last_name,'')),    'user_profile_pic', JSON_QUOTE(COALESCE(OLD.user_profile_pic,'')),    'user_profile_uri', JSON_QUOTE(COALESCE(OLD.user_profile_uri,'')),    'user_cover_photo', JSON_QUOTE(COALESCE(OLD.user_cover_photo,'')),    'user_birthday', JSON_QUOTE(COALESCE(OLD.user_birthday,'')),    'user_gender', JSON_QUOTE(COALESCE(OLD.user_gender,'')),    'user_about_me', JSON_QUOTE(COALESCE(OLD.user_about_me,'')),    'user_rank', JSON_QUOTE(COALESCE(OLD.user_rank,'')),    'user_email', JSON_QUOTE(COALESCE(OLD.user_email,'')),    'user_email_code', JSON_QUOTE(COALESCE(OLD.user_email_code,'')),    'user_email_confirmed', JSON_QUOTE(COALESCE(OLD.user_email_confirmed,'')),    'user_generated_string', JSON_QUOTE(COALESCE(OLD.user_generated_string,'')),    'user_membership', JSON_QUOTE(COALESCE(OLD.user_membership,'')),    'user_deactivated', JSON_QUOTE(COALESCE(OLD.user_deactivated,'')),    'user_last_login', JSON_QUOTE(COALESCE(OLD.user_last_login,'')),    'user_ip', JSON_QUOTE(COALESCE(OLD.user_ip,'')),    'user_education_history', JSON_QUOTE(COALESCE(OLD.user_education_history,'')),    'user_location', JSON_QUOTE(COALESCE(OLD.user_location,'')),    'user_creation_date', JSON_QUOTE(COALESCE(OLD.user_creation_date,''))
                        ), original_query);

      


END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-05 13:12:56
