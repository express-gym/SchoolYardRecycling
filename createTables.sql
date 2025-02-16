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

CREATE TABLE IF NOT EXISTS `recycling_carbon_carbons` (
`entity_pk` binary(16) NOT NULL,
`entity_fk` binary(16) DEFAULT NULL,
`entity_tag` varchar(100) NOT NULL DEFAULT 'manually',
PRIMARY KEY (`entity_pk`),
UNIQUE KEY `entity_entity_pk_uindex` (`entity_pk`),
KEY `entity_entity_entity_pk_fk` (`entity_fk`),
CONSTRAINT `entity_entity_entity_pk_fk` FOREIGN KEY (`entity_fk`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `recycling_carbon_comments` (
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
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `recycling_carbon_feature_group_references` (
`feature_entity_id` binary(16) DEFAULT NULL,
`group_entity_id` binary(16) DEFAULT NULL,
KEY `carbon_feature_references_carbons_entity_pk_fk_2` (`feature_entity_id`),
KEY `carbon_feature_group_references_carbons_entity_pk_fk` (`group_entity_id`),
CONSTRAINT `carbon_feature_group_references_carbons_entity_pk_fk` FOREIGN KEY (`group_entity_id`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT `carbon_feature_references_carbons_entity_pk_fk` FOREIGN KEY (`feature_entity_id`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `recycling_carbon_features` (
`feature_entity_id` binary(16) NOT NULL,
`feature_code` varchar(30) NOT NULL,
`feature_creation_date` datetime DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (`feature_entity_id`),
UNIQUE KEY `carbon_features_feature_code_uindex` (`feature_code`),
UNIQUE KEY `carbon_features_feature_entity_id_uindex` (`feature_entity_id`),
CONSTRAINT `carbon_features_carbons_entity_pk_fk` FOREIGN KEY (`feature_entity_id`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `recycling_carbon_group_references` (
`group_id` binary(16) DEFAULT NULL,
`allowed_to_grant_group_id` binary(16) DEFAULT NULL,
KEY `carbon_group_references_carbons_entity_pk_fk` (`group_id`),
KEY `carbon_group_references_carbons_entity_pk_fk_2` (`allowed_to_grant_group_id`),
CONSTRAINT `carbon_group_references_carbons_entity_pk_fk` FOREIGN KEY (`group_id`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT `carbon_group_references_carbons_entity_pk_fk_2` FOREIGN KEY (`allowed_to_grant_group_id`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `recycling_carbon_groups` (
`group_name` varchar(20) NOT NULL,
`entity_id` binary(16) NOT NULL,
`created_by` binary(16) NOT NULL,
`creation_date` datetime DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (`entity_id`),
KEY `carbon_feature_groups_carbons_entity_pk_fk_2` (`created_by`),
CONSTRAINT `carbon_feature_groups_carbons_entity_pk_fk` FOREIGN KEY (`entity_id`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT `carbon_feature_groups_carbons_entity_pk_fk_2` FOREIGN KEY (`created_by`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `recycling_carbon_history_logs` (
`history_uuid` binary(16) NOT NULL,
`history_table` varchar(255) DEFAULT NULL,
`history_type` varchar(20) DEFAULT NULL,
`history_data` json DEFAULT NULL,
`history_original_query` varchar(1024) DEFAULT NULL,
`history_time` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `recycling_carbon_location_references` (
`entity_reference` binary(16) NOT NULL,
`location_reference` binary(16) NOT NULL,
`location_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
KEY `carbon_location_references_carbons_entity_pk_fk` (`entity_reference`),
KEY `carbon_location_references_carbons_entity_pk_fk_2` (`location_reference`),
CONSTRAINT `carbon_location_references_carbons_entity_pk_fk` FOREIGN KEY (`entity_reference`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT `carbon_location_references_carbons_entity_pk_fk_2` FOREIGN KEY (`location_reference`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `recycling_carbon_locations` (
`entity_id` binary(16) NOT NULL,
`latitude` varchar(225) DEFAULT NULL,
`longitude` varchar(225) DEFAULT NULL,
`street` varchar(225) DEFAULT NULL,
`city` varchar(40) DEFAULT NULL,
`state` varchar(10) DEFAULT NULL,
`elevation` varchar(40) DEFAULT NULL,
`zip` int DEFAULT NULL,
PRIMARY KEY (`entity_id`),
UNIQUE KEY `entity_location_entity_id_uindex` (`entity_id`),
CONSTRAINT `entity_location_entity_entity_pk_fk` FOREIGN KEY (`entity_id`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `recycling_carbon_photos` (
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
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `recycling_carbon_reports` (
`log_level` varchar(20) DEFAULT NULL,
`report` text,
`date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
`call_trace` text NOT NULL
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `recycling_carbon_sessions` (
`user_id` binary(16) NOT NULL,
`user_ip` varchar(20) DEFAULT NULL,
`session_id` varchar(255) NOT NULL,
`session_expires` datetime NOT NULL,
`session_data` text,
`user_online_status` tinyint DEFAULT '1',
PRIMARY KEY (`session_id`)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `recycling_carbon_user_followers` (
`follower_table_id` binary(16) NOT NULL,
`follows_user_id` binary(16) NOT NULL,
`user_id` binary(16) NOT NULL,
PRIMARY KEY (`follower_table_id`),
KEY `followers_entity_entity_pk_fk` (`follows_user_id`),
KEY `followers_entity_entity_followers_pk_fk` (`user_id`),
CONSTRAINT `carbon_user_followers_carbons_entity_pk_fk` FOREIGN KEY (`follower_table_id`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT `followers_entity_entity_follows_pk_fk` FOREIGN KEY (`follows_user_id`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT `followers_entity_followers_pk_fk` FOREIGN KEY (`user_id`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `recycling_carbon_user_groups` (
`group_id` binary(16) DEFAULT NULL,
`user_id` binary(16) DEFAULT NULL,
KEY `carbon_user_groups_carbons_entity_pk_fk` (`group_id`),
KEY `carbon_user_groups_carbons_entity_pk_fk_2` (`user_id`),
CONSTRAINT `carbon_user_groups_carbons_entity_pk_fk` FOREIGN KEY (`group_id`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT `carbon_user_groups_carbons_entity_pk_fk_2` FOREIGN KEY (`user_id`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `recycling_carbon_user_messages` (
`message_id` binary(16) NOT NULL,
`from_user_id` binary(16) NOT NULL,
`to_user_id` binary(16) NOT NULL,
`message` text NOT NULL,
`message_read` tinyint DEFAULT '0',
`creation_date` datetime DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (`message_id`),
KEY `messages_entity_entity_pk_fk` (`message_id`),
KEY `messages_entity_user_from_pk_fk` (`to_user_id`),
KEY `carbon_user_messages_carbon_entity_pk_fk` (`from_user_id`),
CONSTRAINT `carbon_user_messages_carbon_entity_pk_fk` FOREIGN KEY (`from_user_id`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT `messages_entity_entity_pk_fk` FOREIGN KEY (`message_id`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT `messages_entity_user_from_pk_fk` FOREIGN KEY (`to_user_id`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `recycling_carbon_user_sessions` (
`user_id` binary(16) NOT NULL,
`user_ip` binary(16) DEFAULT NULL,
`session_id` varchar(255) NOT NULL,
`session_expires` datetime NOT NULL,
`session_data` text,
`user_online_status` tinyint DEFAULT '1',
PRIMARY KEY (`session_id`)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `recycling_carbon_user_tasks` (
`task_id` binary(16) NOT NULL,
`user_id` binary(16) NOT NULL COMMENT 'This is the user the task is being assigned to',
`from_id` binary(16) DEFAULT NULL COMMENT 'Keeping this colum so forgen key will remove task if user deleted',
`task_name` varchar(40) NOT NULL,
`task_description` varchar(225) DEFAULT NULL,
`percent_complete` int DEFAULT '0',
`start_date` datetime,
`end_date` datetime,
PRIMARY KEY (`task_id`),
KEY `user_tasks_entity_entity_pk_fk` (`from_id`),
KEY `user_tasks_entity_task_pk_fk` (`task_id`),
KEY `carbon_user_tasks_carbons_entity_pk_fk_2` (`user_id`),
CONSTRAINT `carbon_user_tasks_carbons_entity_pk_fk` FOREIGN KEY (`task_id`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT `carbon_user_tasks_carbons_entity_pk_fk_2` FOREIGN KEY (`user_id`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT `carbon_user_tasks_carbons_entity_pk_fk_3` FOREIGN KEY (`from_id`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `recycling_carbon_users` (
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
`user_rank` int DEFAULT '0',
`user_email` varchar(50) NOT NULL,
`user_email_code` varchar(225) DEFAULT NULL,
`user_email_confirmed` tinyint DEFAULT '0' COMMENT 'need to change to enums, but no support in rest yet',
`user_generated_string` varchar(200) DEFAULT NULL,
`user_membership` int DEFAULT '0',
`user_deactivated` tinyint DEFAULT '0',
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
) ENGINE=InnoDB;



CREATE TABLE IF NOT EXISTS `recycling_carbon_carbons` (
`entity_pk` binary(16) NOT NULL,
`entity_fk` binary(16) DEFAULT NULL,
`entity_tag` varchar(100) NOT NULL DEFAULT 'manually',
PRIMARY KEY (`entity_pk`),
UNIQUE KEY `entity_entity_pk_uindex` (`entity_pk`),
KEY `entity_entity_entity_pk_fk` (`entity_fk`),
CONSTRAINT `entity_entity_entity_pk_fk` FOREIGN KEY (`entity_fk`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `recycling_carbon_comments` (
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
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `recycling_carbon_feature_group_references` (
`feature_entity_id` binary(16) DEFAULT NULL,
`group_entity_id` binary(16) DEFAULT NULL,
KEY `carbon_feature_references_carbons_entity_pk_fk_2` (`feature_entity_id`),
KEY `carbon_feature_group_references_carbons_entity_pk_fk` (`group_entity_id`),
CONSTRAINT `carbon_feature_group_references_carbons_entity_pk_fk` FOREIGN KEY (`group_entity_id`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT `carbon_feature_references_carbons_entity_pk_fk` FOREIGN KEY (`feature_entity_id`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `recycling_carbon_features` (
`feature_entity_id` binary(16) NOT NULL,
`feature_code` varchar(30) NOT NULL,
`feature_creation_date` datetime DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (`feature_entity_id`),
UNIQUE KEY `carbon_features_feature_code_uindex` (`feature_code`),
UNIQUE KEY `carbon_features_feature_entity_id_uindex` (`feature_entity_id`),
CONSTRAINT `carbon_features_carbons_entity_pk_fk` FOREIGN KEY (`feature_entity_id`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `recycling_carbon_group_references` (
`group_id` binary(16) DEFAULT NULL,
`allowed_to_grant_group_id` binary(16) DEFAULT NULL,
KEY `carbon_group_references_carbons_entity_pk_fk` (`group_id`),
KEY `carbon_group_references_carbons_entity_pk_fk_2` (`allowed_to_grant_group_id`),
CONSTRAINT `carbon_group_references_carbons_entity_pk_fk` FOREIGN KEY (`group_id`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT `carbon_group_references_carbons_entity_pk_fk_2` FOREIGN KEY (`allowed_to_grant_group_id`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `recycling_carbon_groups` (
`group_name` varchar(20) NOT NULL,
`entity_id` binary(16) NOT NULL,
`created_by` binary(16) NOT NULL,
`creation_date` datetime DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (`entity_id`),
KEY `carbon_feature_groups_carbons_entity_pk_fk_2` (`created_by`),
CONSTRAINT `carbon_feature_groups_carbons_entity_pk_fk` FOREIGN KEY (`entity_id`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT `carbon_feature_groups_carbons_entity_pk_fk_2` FOREIGN KEY (`created_by`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `recycling_carbon_history_logs` (
`history_uuid` binary(16) NOT NULL,
`history_table` varchar(255) DEFAULT NULL,
`history_type` varchar(20) DEFAULT NULL,
`history_data` json DEFAULT NULL,
`history_original_query` varchar(1024) DEFAULT NULL,
`history_time` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `recycling_carbon_location_references` (
`entity_reference` binary(16) NOT NULL,
`location_reference` binary(16) NOT NULL,
`location_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
KEY `carbon_location_references_carbons_entity_pk_fk` (`entity_reference`),
KEY `carbon_location_references_carbons_entity_pk_fk_2` (`location_reference`),
CONSTRAINT `carbon_location_references_carbons_entity_pk_fk` FOREIGN KEY (`entity_reference`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT `carbon_location_references_carbons_entity_pk_fk_2` FOREIGN KEY (`location_reference`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `recycling_carbon_locations` (
`entity_id` binary(16) NOT NULL,
`latitude` varchar(225) DEFAULT NULL,
`longitude` varchar(225) DEFAULT NULL,
`street` varchar(225) DEFAULT NULL,
`city` varchar(40) DEFAULT NULL,
`state` varchar(10) DEFAULT NULL,
`elevation` varchar(40) DEFAULT NULL,
`zip` int DEFAULT NULL,
PRIMARY KEY (`entity_id`),
UNIQUE KEY `entity_location_entity_id_uindex` (`entity_id`),
CONSTRAINT `entity_location_entity_entity_pk_fk` FOREIGN KEY (`entity_id`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `recycling_carbon_photos` (
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
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `recycling_carbon_reports` (
`log_level` varchar(20) DEFAULT NULL,
`report` text,
`date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
`call_trace` text NOT NULL
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `recycling_carbon_sessions` (
`user_id` binary(16) NOT NULL,
`user_ip` varchar(20) DEFAULT NULL,
`session_id` varchar(255) NOT NULL,
`session_expires` datetime NOT NULL,
`session_data` text,
`user_online_status` tinyint DEFAULT '1',
PRIMARY KEY (`session_id`)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `recycling_carbon_user_followers` (
`follower_table_id` binary(16) NOT NULL,
`follows_user_id` binary(16) NOT NULL,
`user_id` binary(16) NOT NULL,
PRIMARY KEY (`follower_table_id`),
KEY `followers_entity_entity_pk_fk` (`follows_user_id`),
KEY `followers_entity_entity_followers_pk_fk` (`user_id`),
CONSTRAINT `carbon_user_followers_carbons_entity_pk_fk` FOREIGN KEY (`follower_table_id`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT `followers_entity_entity_follows_pk_fk` FOREIGN KEY (`follows_user_id`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT `followers_entity_followers_pk_fk` FOREIGN KEY (`user_id`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `recycling_carbon_user_groups` (
`group_id` binary(16) DEFAULT NULL,
`user_id` binary(16) DEFAULT NULL,
KEY `carbon_user_groups_carbons_entity_pk_fk` (`group_id`),
KEY `carbon_user_groups_carbons_entity_pk_fk_2` (`user_id`),
CONSTRAINT `carbon_user_groups_carbons_entity_pk_fk` FOREIGN KEY (`group_id`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT `carbon_user_groups_carbons_entity_pk_fk_2` FOREIGN KEY (`user_id`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `recycling_carbon_user_messages` (
`message_id` binary(16) NOT NULL,
`from_user_id` binary(16) NOT NULL,
`to_user_id` binary(16) NOT NULL,
`message` text NOT NULL,
`message_read` tinyint DEFAULT '0',
`creation_date` datetime DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (`message_id`),
KEY `messages_entity_entity_pk_fk` (`message_id`),
KEY `messages_entity_user_from_pk_fk` (`to_user_id`),
KEY `carbon_user_messages_carbon_entity_pk_fk` (`from_user_id`),
CONSTRAINT `carbon_user_messages_carbon_entity_pk_fk` FOREIGN KEY (`from_user_id`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT `messages_entity_entity_pk_fk` FOREIGN KEY (`message_id`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT `messages_entity_user_from_pk_fk` FOREIGN KEY (`to_user_id`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `recycling_carbon_user_sessions` (
`user_id` binary(16) NOT NULL,
`user_ip` binary(16) DEFAULT NULL,
`session_id` varchar(255) NOT NULL,
`session_expires` datetime NOT NULL,
`session_data` text,
`user_online_status` tinyint DEFAULT '1',
PRIMARY KEY (`session_id`)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `recycling_carbon_user_tasks` (
`task_id` binary(16) NOT NULL,
`user_id` binary(16) NOT NULL COMMENT 'This is the user the task is being assigned to',
`from_id` binary(16) DEFAULT NULL COMMENT 'Keeping this colum so forgen key will remove task if user deleted',
`task_name` varchar(40) NOT NULL,
`task_description` varchar(225) DEFAULT NULL,
`percent_complete` int DEFAULT '0',
`start_date` datetime,
`end_date` datetime,
PRIMARY KEY (`task_id`),
KEY `user_tasks_entity_entity_pk_fk` (`from_id`),
KEY `user_tasks_entity_task_pk_fk` (`task_id`),
KEY `carbon_user_tasks_carbons_entity_pk_fk_2` (`user_id`),
CONSTRAINT `carbon_user_tasks_carbons_entity_pk_fk` FOREIGN KEY (`task_id`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT `carbon_user_tasks_carbons_entity_pk_fk_2` FOREIGN KEY (`user_id`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT `carbon_user_tasks_carbons_entity_pk_fk_3` FOREIGN KEY (`from_id`) REFERENCES `recycling_carbon_carbons` (`entity_pk`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `recycling_carbon_users` (
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
`user_rank` int DEFAULT '0',
`user_email` varchar(50) NOT NULL,
`user_email_code` varchar(225) DEFAULT NULL,
`user_email_confirmed` tinyint DEFAULT '0' COMMENT 'need to change to enums, but no support in rest yet',
`user_generated_string` varchar(200) DEFAULT NULL,
`user_membership` int DEFAULT '0',
`user_deactivated` tinyint DEFAULT '0',
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
) ENGINE=InnoDB;

/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;