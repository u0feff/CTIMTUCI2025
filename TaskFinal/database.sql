/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.13-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: site
-- ------------------------------------------------------
-- Server version	10.11.13-MariaDB-0ubuntu0.24.04.1

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
-- Table structure for table `wp_actionscheduler_actions`
--

DROP TABLE IF EXISTS `wp_actionscheduler_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `hook` varchar(191) NOT NULL,
  `status` varchar(20) NOT NULL,
  `scheduled_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  `priority` tinyint(3) unsigned NOT NULL DEFAULT 10,
  `args` varchar(191) DEFAULT NULL,
  `schedule` longtext DEFAULT NULL,
  `group_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `extended_args` varchar(8000) DEFAULT NULL,
  PRIMARY KEY (`action_id`),
  KEY `hook_status_scheduled_date_gmt` (`hook`(163),`status`,`scheduled_date_gmt`),
  KEY `status_scheduled_date_gmt` (`status`,`scheduled_date_gmt`),
  KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  KEY `args` (`args`),
  KEY `group_id` (`group_id`),
  KEY `last_attempt_gmt` (`last_attempt_gmt`),
  KEY `claim_id_status_priority_scheduled_date_gmt` (`claim_id`,`status`,`priority`,`scheduled_date_gmt`),
  KEY `status_last_attempt_gmt` (`status`,`last_attempt_gmt`),
  KEY `status_claim_id` (`status`,`claim_id`)
) ENGINE=InnoDB AUTO_INCREMENT=927 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_actions`
--

LOCK TABLES `wp_actionscheduler_actions` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_actions` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_actions` VALUES
(22,'action_scheduler/migration_hook','failed','2025-08-18 18:10:53','2025-08-18 18:10:53',10,'[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1755540653;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1755540653;}',2,1,'2025-08-18 18:10:54','2025-08-18 21:10:54',186,NULL),
(23,'woocommerce_refresh_order_count_cache','complete','2025-08-20 08:41:32','2025-08-20 08:41:32',10,'[\"shop_order\"]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1755679292;s:18:\"\0*\0first_timestamp\";i:1755483255;s:13:\"\0*\0recurrence\";i:43200;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1755679292;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:43200;}',3,1,'2025-08-22 15:52:05','2025-08-22 18:52:05',328,NULL),
(24,'woocommerce_cleanup_draft_orders','complete','2025-08-20 20:41:32','2025-08-20 20:41:32',10,'[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1755722492;s:18:\"\0*\0first_timestamp\";i:1755440055;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1755722492;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',4,1,'2025-08-22 15:52:05','2025-08-22 18:52:05',328,NULL),
(25,'action_scheduler_run_recurring_actions_schedule_hook','complete','2025-08-20 20:41:32','2025-08-20 20:41:32',20,'[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1755722492;s:18:\"\0*\0first_timestamp\";i:1755440053;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1755722492;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',1,1,'2025-08-22 15:52:05','2025-08-22 18:52:05',328,NULL),
(26,'woocommerce_admin/stored_state_setup_for_products/async/run_remote_notifications','failed','2025-08-19 21:41:50','2025-08-19 21:41:50',10,'[]','O:28:\"ActionScheduler_NullSchedule\":0:{}',4,1,'2025-08-19 21:42:02','2025-08-20 00:42:02',280,NULL),
(49,'woocommerce_refresh_order_count_cache','complete','2025-08-23 03:52:05','2025-08-23 03:52:05',10,'[\"shop_order\"]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1755921125;s:18:\"\0*\0first_timestamp\";i:1755483255;s:13:\"\0*\0recurrence\";i:43200;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1755921125;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:43200;}',3,1,'2025-08-26 21:03:40','2025-08-27 00:03:40',434,NULL),
(50,'woocommerce_cleanup_draft_orders','complete','2025-08-23 15:52:05','2025-08-23 15:52:05',10,'[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1755964325;s:18:\"\0*\0first_timestamp\";i:1755440055;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1755964325;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',4,1,'2025-08-26 21:03:40','2025-08-27 00:03:40',434,NULL),
(51,'action_scheduler_run_recurring_actions_schedule_hook','complete','2025-08-23 15:52:05','2025-08-23 15:52:05',20,'[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1755964325;s:18:\"\0*\0first_timestamp\";i:1755440053;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1755964325;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',1,1,'2025-08-26 21:03:40','2025-08-27 00:03:40',434,NULL),
(149,'woocommerce_refresh_order_count_cache','complete','2025-08-27 09:03:40','2025-08-27 09:03:40',10,'[\"shop_order\"]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1756285420;s:18:\"\0*\0first_timestamp\";i:1755483255;s:13:\"\0*\0recurrence\";i:43200;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1756285420;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:43200;}',3,1,'2025-08-27 13:27:34','2025-08-27 16:27:34',542,NULL),
(150,'woocommerce_cleanup_draft_orders','complete','2025-08-27 21:03:40','2025-08-27 21:03:40',10,'[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1756328620;s:18:\"\0*\0first_timestamp\";i:1755440055;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1756328620;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',4,1,'2025-09-01 18:40:09','2025-09-01 21:40:09',598,NULL),
(151,'action_scheduler_run_recurring_actions_schedule_hook','complete','2025-08-27 21:03:40','2025-08-27 21:03:40',20,'[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1756328620;s:18:\"\0*\0first_timestamp\";i:1755440053;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1756328620;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',1,1,'2025-09-01 18:40:09','2025-09-01 21:40:09',598,NULL),
(243,'woocommerce_refresh_order_count_cache','complete','2025-08-28 01:27:34','2025-08-28 01:27:34',10,'[\"shop_order\"]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1756344454;s:18:\"\0*\0first_timestamp\";i:1755483255;s:13:\"\0*\0recurrence\";i:43200;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1756344454;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:43200;}',3,1,'2025-09-01 18:40:09','2025-09-01 21:40:09',598,NULL),
(248,'wc-admin_import_orders','complete','2025-08-27 13:31:45','2025-08-27 13:31:45',10,'[103]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1756301505;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1756301505;}',7,1,'2025-08-27 13:33:37','2025-08-27 16:33:37',550,NULL),
(269,'wc-admin_import_orders','complete','2025-08-27 13:43:30','2025-08-27 13:43:30',10,'[103]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1756302210;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1756302210;}',7,1,'2025-08-27 13:44:20','2025-08-27 16:44:20',571,NULL),
(297,'woocommerce_cleanup_draft_orders','complete','2025-09-02 18:40:09','2025-09-02 18:40:09',10,'[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1756838409;s:18:\"\0*\0first_timestamp\";i:1755440055;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1756838409;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',4,1,'2025-09-05 08:04:33','2025-09-05 11:04:33',900,NULL),
(298,'woocommerce_refresh_order_count_cache','complete','2025-09-02 06:40:09','2025-09-02 06:40:09',10,'[\"shop_order\"]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1756795209;s:18:\"\0*\0first_timestamp\";i:1755483255;s:13:\"\0*\0recurrence\";i:43200;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1756795209;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:43200;}',3,1,'2025-09-02 07:41:21','2025-09-02 10:41:21',778,NULL),
(299,'action_scheduler_run_recurring_actions_schedule_hook','complete','2025-09-02 18:40:09','2025-09-02 18:40:09',20,'[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1756838409;s:18:\"\0*\0first_timestamp\";i:1755440053;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1756838409;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',1,1,'2025-09-05 08:04:33','2025-09-05 11:04:33',900,NULL),
(363,'fetch_patterns','complete','2025-09-01 19:39:13','2025-09-01 19:39:13',10,'[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1756755553;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1756755553;}',4,1,'2025-09-01 19:40:14','2025-09-01 22:40:14',673,NULL),
(364,'action_scheduler/migration_hook','complete','2025-09-01 19:40:13','2025-09-01 19:40:13',10,'[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1756755613;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1756755613;}',2,1,'2025-09-01 19:40:14','2025-09-01 22:40:14',673,NULL),
(446,'fetch_patterns','complete','2025-09-01 21:27:07','2025-09-01 21:27:07',10,'[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1756762027;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1756762027;}',4,1,'2025-09-01 21:29:10','2025-09-02 00:29:10',751,NULL),
(447,'action_scheduler/migration_hook','complete','2025-09-01 21:28:07','2025-09-01 21:28:07',10,'[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1756762087;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1756762087;}',2,1,'2025-09-01 21:29:10','2025-09-02 00:29:10',751,NULL),
(479,'woocommerce_refresh_order_count_cache','complete','2025-09-02 19:41:21','2025-09-02 19:41:21',10,'[\"shop_order\"]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1756842081;s:18:\"\0*\0first_timestamp\";i:1755483255;s:13:\"\0*\0recurrence\";i:43200;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1756842081;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:43200;}',3,1,'2025-09-05 08:04:33','2025-09-05 11:04:33',900,NULL),
(607,'woocommerce_cleanup_draft_orders','complete','2025-09-06 08:04:33','2025-09-06 08:04:33',10,'[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1757145873;s:18:\"\0*\0first_timestamp\";i:1755440055;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1757145873;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',4,1,'2025-09-11 09:32:05','2025-09-11 12:32:05',1046,NULL),
(608,'woocommerce_refresh_order_count_cache','complete','2025-09-05 20:04:33','2025-09-05 20:04:33',10,'[\"shop_order\"]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1757102673;s:18:\"\0*\0first_timestamp\";i:1755483255;s:13:\"\0*\0recurrence\";i:43200;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1757102673;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:43200;}',3,1,'2025-09-11 09:32:05','2025-09-11 12:32:05',1046,NULL),
(609,'action_scheduler_run_recurring_actions_schedule_hook','complete','2025-09-06 08:04:33','2025-09-06 08:04:33',20,'[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1757145873;s:18:\"\0*\0first_timestamp\";i:1755440053;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1757145873;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',1,1,'2025-09-11 09:32:05','2025-09-11 12:32:05',1046,NULL),
(631,'fetch_patterns','complete','2025-09-05 08:26:09','2025-09-05 08:26:09',10,'[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1757060769;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1757060769;}',4,1,'2025-09-05 08:28:10','2025-09-05 11:28:10',924,NULL),
(632,'action_scheduler/migration_hook','complete','2025-09-05 08:27:09','2025-09-05 08:27:09',10,'[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1757060829;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1757060829;}',2,1,'2025-09-05 08:28:10','2025-09-05 11:28:10',924,NULL),
(649,'fetch_patterns','complete','2025-09-05 08:42:29','2025-09-05 08:42:29',10,'[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1757061749;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1757061749;}',4,1,'2025-09-05 08:43:31','2025-09-05 11:43:31',941,NULL),
(650,'action_scheduler/migration_hook','complete','2025-09-05 08:43:29','2025-09-05 08:43:29',10,'[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1757061809;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1757061809;}',2,1,'2025-09-05 08:43:31','2025-09-05 11:43:31',941,NULL),
(763,'woocommerce_refresh_order_count_cache','complete','2025-09-11 21:32:05','2025-09-11 21:32:05',10,'[\"shop_order\"]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1757626325;s:18:\"\0*\0first_timestamp\";i:1755483255;s:13:\"\0*\0recurrence\";i:43200;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1757626325;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:43200;}',3,1,'2025-09-12 20:21:30','2025-09-12 23:21:30',1048,NULL),
(764,'woocommerce_cleanup_draft_orders','complete','2025-09-12 09:32:05','2025-09-12 09:32:05',10,'[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1757669525;s:18:\"\0*\0first_timestamp\";i:1755440055;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1757669525;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',4,1,'2025-09-12 20:21:30','2025-09-12 23:21:30',1048,NULL),
(765,'action_scheduler_run_recurring_actions_schedule_hook','complete','2025-09-12 09:32:05','2025-09-12 09:32:05',20,'[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1757669525;s:18:\"\0*\0first_timestamp\";i:1755440053;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1757669525;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',1,1,'2025-09-12 20:21:30','2025-09-12 23:21:30',1048,NULL),
(771,'woocommerce_refresh_order_count_cache','complete','2025-09-13 08:21:30','2025-09-13 08:21:30',10,'[\"shop_order\"]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1757751690;s:18:\"\0*\0first_timestamp\";i:1755483255;s:13:\"\0*\0recurrence\";i:43200;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1757751690;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:43200;}',3,1,'2025-09-15 11:49:09','2025-09-15 14:49:09',1053,NULL),
(772,'woocommerce_cleanup_draft_orders','complete','2025-09-13 20:21:30','2025-09-13 20:21:30',10,'[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1757794890;s:18:\"\0*\0first_timestamp\";i:1755440055;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1757794890;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',4,1,'2025-09-15 11:49:09','2025-09-15 14:49:09',1053,NULL),
(773,'action_scheduler_run_recurring_actions_schedule_hook','complete','2025-09-13 20:21:30','2025-09-13 20:21:30',20,'[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1757794890;s:18:\"\0*\0first_timestamp\";i:1755440053;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1757794890;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',1,1,'2025-09-15 11:49:09','2025-09-15 14:49:09',1053,NULL),
(781,'woocommerce_refresh_order_count_cache','complete','2025-09-15 23:49:09','2025-09-15 23:49:09',10,'[\"shop_order\"]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1757980149;s:18:\"\0*\0first_timestamp\";i:1755483255;s:13:\"\0*\0recurrence\";i:43200;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1757980149;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:43200;}',3,1,'2025-09-20 22:21:21','2025-09-21 01:21:21',1175,NULL),
(782,'woocommerce_cleanup_draft_orders','complete','2025-09-16 11:49:09','2025-09-16 11:49:09',10,'[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1758023349;s:18:\"\0*\0first_timestamp\";i:1755440055;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1758023349;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',4,1,'2025-09-20 22:21:21','2025-09-21 01:21:21',1175,NULL),
(783,'action_scheduler_run_recurring_actions_schedule_hook','complete','2025-09-16 11:49:09','2025-09-16 11:49:09',20,'[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1758023349;s:18:\"\0*\0first_timestamp\";i:1755440053;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1758023349;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',1,1,'2025-09-20 22:21:21','2025-09-21 01:21:21',1175,NULL),
(784,'forminator_daily_cron','complete','2025-09-16 12:49:41','2025-09-16 12:49:41',10,'[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1758026981;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1758026981;}',6,1,'2025-09-20 22:21:21','2025-09-21 01:21:21',1175,NULL),
(872,'forminator_action_scheduler_cleanup','complete','2025-09-15 18:06:16','2025-09-15 18:06:16',10,'[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1757959576;s:18:\"\0*\0first_timestamp\";i:1755641936;s:13:\"\0*\0recurrence\";i:7200;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1757959576;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:7200;}',6,1,'2025-09-20 22:21:21','2025-09-21 01:21:21',1175,NULL),
(891,'forminator_process_report','complete','2025-09-20 22:22:21','2025-09-20 22:22:21',10,'[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1758406941;s:18:\"\0*\0first_timestamp\";i:1755641956;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1758406941;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}',6,1,'2025-09-20 22:24:48','2025-09-21 01:24:48',1177,NULL),
(892,'forminator_send_export','complete','2025-09-20 22:22:21','2025-09-20 22:22:21',10,'[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1758406941;s:18:\"\0*\0first_timestamp\";i:1755641946;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1758406941;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}',6,1,'2025-09-20 22:24:48','2025-09-21 01:24:48',1177,NULL),
(893,'forminator_general_data_protection_cleanup','pending','2025-09-20 23:21:21','2025-09-20 23:21:21',10,'[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1758410481;s:18:\"\0*\0first_timestamp\";i:1755641936;s:13:\"\0*\0recurrence\";i:3600;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1758410481;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}',6,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL),
(894,'forminator_action_scheduler_cleanup','pending','2025-09-21 00:21:21','2025-09-21 00:21:21',10,'[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1758414081;s:18:\"\0*\0first_timestamp\";i:1755641936;s:13:\"\0*\0recurrence\";i:7200;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1758414081;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:7200;}',6,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL),
(895,'woocommerce_refresh_order_count_cache','pending','2025-09-21 10:21:21','2025-09-21 10:21:21',10,'[\"shop_order\"]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1758450081;s:18:\"\0*\0first_timestamp\";i:1755483255;s:13:\"\0*\0recurrence\";i:43200;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1758450081;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:43200;}',3,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL),
(896,'woocommerce_cleanup_draft_orders','pending','2025-09-21 22:21:21','2025-09-21 22:21:21',10,'[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1758493281;s:18:\"\0*\0first_timestamp\";i:1755440055;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1758493281;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',4,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL),
(897,'action_scheduler_run_recurring_actions_schedule_hook','pending','2025-09-21 22:21:21','2025-09-21 22:21:21',20,'[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1758493281;s:18:\"\0*\0first_timestamp\";i:1755440053;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1758493281;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL),
(898,'forminator_daily_cron','pending','2025-09-21 23:21:22','2025-09-21 23:21:22',10,'[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1758496882;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1758496882;}',6,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL),
(899,'fetch_patterns','failed','2025-09-20 22:21:40','2025-09-20 22:21:40',10,'[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1758406900;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1758406900;}',4,1,'2025-09-20 22:22:46','2025-09-21 01:22:46',0,NULL),
(900,'action_scheduler/migration_hook','complete','2025-09-20 22:22:40','2025-09-20 22:22:40',10,'[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1758406960;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1758406960;}',2,1,'2025-09-20 22:24:48','2025-09-21 01:24:48',1177,NULL),
(901,'forminator_process_report','complete','2025-09-20 22:25:48','2025-09-20 22:25:48',10,'[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1758407148;s:18:\"\0*\0first_timestamp\";i:1755641956;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1758407148;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}',6,1,'2025-09-20 22:26:33','2025-09-21 01:26:33',1180,NULL),
(902,'forminator_send_export','complete','2025-09-20 22:25:48','2025-09-20 22:25:48',10,'[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1758407148;s:18:\"\0*\0first_timestamp\";i:1755641946;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1758407148;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}',6,1,'2025-09-20 22:26:33','2025-09-21 01:26:33',1180,NULL),
(903,'forminator_process_report','complete','2025-09-20 22:27:33','2025-09-20 22:27:33',10,'[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1758407253;s:18:\"\0*\0first_timestamp\";i:1755641956;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1758407253;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}',6,1,'2025-09-20 22:28:13','2025-09-21 01:28:13',1183,NULL),
(904,'forminator_send_export','complete','2025-09-20 22:27:33','2025-09-20 22:27:33',10,'[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1758407253;s:18:\"\0*\0first_timestamp\";i:1755641946;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1758407253;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}',6,1,'2025-09-20 22:28:13','2025-09-21 01:28:13',1183,NULL),
(905,'forminator_process_report','complete','2025-09-20 22:29:13','2025-09-20 22:29:13',10,'[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1758407353;s:18:\"\0*\0first_timestamp\";i:1755641956;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1758407353;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}',6,1,'2025-09-20 22:29:13','2025-09-21 01:29:13',1185,NULL),
(906,'forminator_send_export','complete','2025-09-20 22:29:13','2025-09-20 22:29:13',10,'[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1758407353;s:18:\"\0*\0first_timestamp\";i:1755641946;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1758407353;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}',6,1,'2025-09-20 22:29:13','2025-09-21 01:29:13',1185,NULL),
(907,'forminator_process_report','complete','2025-09-20 22:30:13','2025-09-20 22:30:13',10,'[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1758407413;s:18:\"\0*\0first_timestamp\";i:1755641956;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1758407413;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}',6,1,'2025-09-20 22:30:13','2025-09-21 01:30:13',1187,NULL),
(908,'forminator_send_export','complete','2025-09-20 22:30:13','2025-09-20 22:30:13',10,'[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1758407413;s:18:\"\0*\0first_timestamp\";i:1755641946;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1758407413;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}',6,1,'2025-09-20 22:30:13','2025-09-21 01:30:13',1187,NULL),
(909,'forminator_process_report','complete','2025-09-20 22:31:13','2025-09-20 22:31:13',10,'[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1758407473;s:18:\"\0*\0first_timestamp\";i:1755641956;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1758407473;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}',6,1,'2025-09-20 22:31:13','2025-09-21 01:31:13',1189,NULL),
(910,'forminator_send_export','complete','2025-09-20 22:31:13','2025-09-20 22:31:13',10,'[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1758407473;s:18:\"\0*\0first_timestamp\";i:1755641946;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1758407473;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}',6,1,'2025-09-20 22:31:13','2025-09-21 01:31:13',1189,NULL),
(911,'forminator_process_report','complete','2025-09-20 22:32:13','2025-09-20 22:32:13',10,'[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1758407533;s:18:\"\0*\0first_timestamp\";i:1755641956;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1758407533;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}',6,1,'2025-09-20 22:32:13','2025-09-21 01:32:13',1191,NULL),
(912,'forminator_send_export','complete','2025-09-20 22:32:13','2025-09-20 22:32:13',10,'[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1758407533;s:18:\"\0*\0first_timestamp\";i:1755641946;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1758407533;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}',6,1,'2025-09-20 22:32:13','2025-09-21 01:32:13',1191,NULL),
(913,'forminator_process_report','complete','2025-09-20 22:33:13','2025-09-20 22:33:13',10,'[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1758407593;s:18:\"\0*\0first_timestamp\";i:1755641956;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1758407593;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}',6,1,'2025-09-20 22:33:14','2025-09-21 01:33:14',1193,NULL),
(914,'forminator_send_export','complete','2025-09-20 22:33:13','2025-09-20 22:33:13',10,'[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1758407593;s:18:\"\0*\0first_timestamp\";i:1755641946;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1758407593;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}',6,1,'2025-09-20 22:33:14','2025-09-21 01:33:14',1193,NULL),
(915,'forminator_process_report','complete','2025-09-20 22:34:14','2025-09-20 22:34:14',10,'[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1758407654;s:18:\"\0*\0first_timestamp\";i:1755641956;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1758407654;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}',6,1,'2025-09-20 22:35:13','2025-09-21 01:35:13',1196,NULL),
(916,'forminator_send_export','complete','2025-09-20 22:34:14','2025-09-20 22:34:14',10,'[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1758407654;s:18:\"\0*\0first_timestamp\";i:1755641946;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1758407654;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}',6,1,'2025-09-20 22:35:13','2025-09-21 01:35:13',1196,NULL),
(917,'forminator_process_report','complete','2025-09-20 22:36:13','2025-09-20 22:36:13',10,'[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1758407773;s:18:\"\0*\0first_timestamp\";i:1755641956;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1758407773;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}',6,1,'2025-09-20 22:36:13','2025-09-21 01:36:13',1198,NULL),
(918,'forminator_send_export','complete','2025-09-20 22:36:13','2025-09-20 22:36:13',10,'[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1758407773;s:18:\"\0*\0first_timestamp\";i:1755641946;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1758407773;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}',6,1,'2025-09-20 22:36:13','2025-09-21 01:36:13',1198,NULL),
(919,'forminator_process_report','complete','2025-09-20 22:37:13','2025-09-20 22:37:13',10,'[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1758407833;s:18:\"\0*\0first_timestamp\";i:1755641956;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1758407833;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}',6,1,'2025-09-20 22:37:14','2025-09-21 01:37:14',1200,NULL),
(920,'forminator_send_export','complete','2025-09-20 22:37:13','2025-09-20 22:37:13',10,'[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1758407833;s:18:\"\0*\0first_timestamp\";i:1755641946;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1758407833;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}',6,1,'2025-09-20 22:37:14','2025-09-21 01:37:14',1200,NULL),
(921,'forminator_process_report','complete','2025-09-20 22:38:14','2025-09-20 22:38:14',10,'[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1758407894;s:18:\"\0*\0first_timestamp\";i:1755641956;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1758407894;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}',6,1,'2025-09-20 22:38:14','2025-09-21 01:38:14',1202,NULL),
(922,'forminator_send_export','complete','2025-09-20 22:38:14','2025-09-20 22:38:14',10,'[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1758407894;s:18:\"\0*\0first_timestamp\";i:1755641946;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1758407894;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}',6,1,'2025-09-20 22:38:14','2025-09-21 01:38:14',1202,NULL),
(923,'forminator_process_report','complete','2025-09-20 22:39:14','2025-09-20 22:39:14',10,'[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1758407954;s:18:\"\0*\0first_timestamp\";i:1755641956;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1758407954;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}',6,1,'2025-09-20 22:39:14','2025-09-21 01:39:14',1204,NULL),
(924,'forminator_send_export','complete','2025-09-20 22:39:14','2025-09-20 22:39:14',10,'[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1758407954;s:18:\"\0*\0first_timestamp\";i:1755641946;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1758407954;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}',6,1,'2025-09-20 22:39:14','2025-09-21 01:39:14',1204,NULL),
(925,'forminator_process_report','pending','2025-09-20 22:40:14','2025-09-20 22:40:14',10,'[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1758408014;s:18:\"\0*\0first_timestamp\";i:1755641956;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1758408014;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}',6,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL),
(926,'forminator_send_export','pending','2025-09-20 22:40:14','2025-09-20 22:40:14',10,'[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1758408014;s:18:\"\0*\0first_timestamp\";i:1755641946;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1758408014;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}',6,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL);
/*!40000 ALTER TABLE `wp_actionscheduler_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_claims`
--

DROP TABLE IF EXISTS `wp_actionscheduler_claims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `date_created_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`claim_id`),
  KEY `date_created_gmt` (`date_created_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=1206 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_claims`
--

LOCK TABLES `wp_actionscheduler_claims` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_claims` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_actionscheduler_claims` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_groups`
--

DROP TABLE IF EXISTS `wp_actionscheduler_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `slug` (`slug`(191))
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_groups`
--

LOCK TABLES `wp_actionscheduler_groups` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_groups` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_groups` VALUES
(1,'ActionScheduler'),
(2,'action-scheduler-migration'),
(3,'count'),
(4,''),
(5,'woocommerce-db-updates'),
(6,'forminator'),
(7,'wc-admin-data');
/*!40000 ALTER TABLE `wp_actionscheduler_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_logs`
--

DROP TABLE IF EXISTS `wp_actionscheduler_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `action_id` bigint(20) unsigned NOT NULL,
  `message` text NOT NULL,
  `log_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`log_id`),
  KEY `action_id` (`action_id`),
  KEY `log_date_gmt` (`log_date_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=2744 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_logs`
--

LOCK TABLES `wp_actionscheduler_logs` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_logs` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_logs` VALUES
(40,22,'действие создано','2025-08-18 18:09:53','2025-08-18 18:09:53'),
(41,22,'действие началось через Async Request','2025-08-18 18:10:54','2025-08-18 18:10:54'),
(42,22,'действие не удалось через Async Request: Запланированное действие для action_scheduler/migration_hook не будет выполнено, так как обратные вызовы не зарегистрированы.','2025-08-18 18:10:54','2025-08-18 18:10:54'),
(45,23,'действие создано','2025-08-19 20:41:32','2025-08-19 20:41:32'),
(48,24,'действие создано','2025-08-19 20:41:32','2025-08-19 20:41:32'),
(51,25,'действие создано','2025-08-19 20:41:32','2025-08-19 20:41:32'),
(52,26,'действие создано','2025-08-19 21:41:50','2025-08-19 21:41:50'),
(54,26,'действие началось через Async Request','2025-08-19 21:42:02','2025-08-19 21:42:02'),
(55,26,'действие не удалось через Async Request: Запланированное действие для woocommerce_admin/stored_state_setup_for_products/async/run_remote_notifications не будет выполнено, так как обратные вызовы не зарегистрированы.','2025-08-19 21:42:02','2025-08-19 21:42:02'),
(111,23,'действие началось через WP Cron','2025-08-22 15:52:05','2025-08-22 15:52:05'),
(112,23,'действие завершено через WP Cron','2025-08-22 15:52:05','2025-08-22 15:52:05'),
(113,49,'действие создано','2025-08-22 15:52:05','2025-08-22 15:52:05'),
(114,24,'действие началось через WP Cron','2025-08-22 15:52:05','2025-08-22 15:52:05'),
(115,24,'действие завершено через WP Cron','2025-08-22 15:52:05','2025-08-22 15:52:05'),
(116,50,'действие создано','2025-08-22 15:52:05','2025-08-22 15:52:05'),
(119,25,'действие началось через WP Cron','2025-08-22 15:52:05','2025-08-22 15:52:05'),
(120,25,'действие завершено через WP Cron','2025-08-22 15:52:05','2025-08-22 15:52:05'),
(121,51,'действие создано','2025-08-22 15:52:05','2025-08-22 15:52:05'),
(411,49,'действие началось через WP Cron','2025-08-26 21:03:40','2025-08-26 21:03:40'),
(412,49,'действие завершено через WP Cron','2025-08-26 21:03:40','2025-08-26 21:03:40'),
(413,149,'действие создано','2025-08-26 21:03:40','2025-08-26 21:03:40'),
(414,50,'действие началось через WP Cron','2025-08-26 21:03:40','2025-08-26 21:03:40'),
(415,50,'действие завершено через WP Cron','2025-08-26 21:03:40','2025-08-26 21:03:40'),
(416,150,'действие создано','2025-08-26 21:03:40','2025-08-26 21:03:40'),
(419,51,'действие началось через WP Cron','2025-08-26 21:03:40','2025-08-26 21:03:40'),
(420,51,'действие завершено через WP Cron','2025-08-26 21:03:40','2025-08-26 21:03:40'),
(421,151,'действие создано','2025-08-26 21:03:40','2025-08-26 21:03:40'),
(693,149,'действие началось через WP Cron','2025-08-27 13:27:34','2025-08-27 13:27:34'),
(694,149,'действие завершено через WP Cron','2025-08-27 13:27:34','2025-08-27 13:27:34'),
(695,243,'действие создано','2025-08-27 13:27:34','2025-08-27 13:27:34'),
(708,248,'действие создано','2025-08-27 13:31:40','2025-08-27 13:31:40'),
(715,248,'действие началось через WP Cron','2025-08-27 13:33:37','2025-08-27 13:33:37'),
(716,248,'действие завершено через WP Cron','2025-08-27 13:33:37','2025-08-27 13:33:37'),
(771,269,'действие создано','2025-08-27 13:43:25','2025-08-27 13:43:25'),
(772,269,'действие началось через WP Cron','2025-08-27 13:44:20','2025-08-27 13:44:20'),
(773,269,'действие завершено через WP Cron','2025-08-27 13:44:20','2025-08-27 13:44:20'),
(855,150,'действие началось через WP Cron','2025-09-01 18:40:09','2025-09-01 18:40:09'),
(856,150,'действие завершено через WP Cron','2025-09-01 18:40:09','2025-09-01 18:40:09'),
(857,297,'действие создано','2025-09-01 18:40:09','2025-09-01 18:40:09'),
(860,243,'действие началось через WP Cron','2025-09-01 18:40:09','2025-09-01 18:40:09'),
(861,243,'действие завершено через WP Cron','2025-09-01 18:40:09','2025-09-01 18:40:09'),
(862,298,'действие создано','2025-09-01 18:40:09','2025-09-01 18:40:09'),
(863,151,'действие началось через WP Cron','2025-09-01 18:40:09','2025-09-01 18:40:09'),
(864,151,'действие завершено через WP Cron','2025-09-01 18:40:09','2025-09-01 18:40:09'),
(865,299,'действие создано','2025-09-01 18:40:09','2025-09-01 18:40:09'),
(1053,363,'действие создано','2025-09-01 19:39:13','2025-09-01 19:39:13'),
(1054,364,'действие создано','2025-09-01 19:39:13','2025-09-01 19:39:13'),
(1055,363,'действие началось через WP Cron','2025-09-01 19:40:14','2025-09-01 19:40:14'),
(1056,363,'действие завершено через WP Cron','2025-09-01 19:40:14','2025-09-01 19:40:14'),
(1066,364,'действие началось через WP Cron','2025-09-01 19:40:14','2025-09-01 19:40:14'),
(1067,364,'действие завершено через WP Cron','2025-09-01 19:40:14','2025-09-01 19:40:14'),
(1302,446,'действие создано','2025-09-01 21:27:07','2025-09-01 21:27:07'),
(1303,447,'действие создано','2025-09-01 21:27:07','2025-09-01 21:27:07'),
(1304,446,'действие началось через WP Cron','2025-09-01 21:29:09','2025-09-01 21:29:09'),
(1305,446,'действие завершено через WP Cron','2025-09-01 21:29:10','2025-09-01 21:29:10'),
(1312,447,'действие началось через WP Cron','2025-09-01 21:29:10','2025-09-01 21:29:10'),
(1313,447,'действие завершено через WP Cron','2025-09-01 21:29:10','2025-09-01 21:29:10'),
(1401,298,'действие началось через WP Cron','2025-09-02 07:41:21','2025-09-02 07:41:21'),
(1402,298,'действие завершено через WP Cron','2025-09-02 07:41:21','2025-09-02 07:41:21'),
(1403,479,'действие создано','2025-09-02 07:41:21','2025-09-02 07:41:21'),
(1785,297,'действие началось через WP Cron','2025-09-05 08:04:33','2025-09-05 08:04:33'),
(1786,297,'действие завершено через WP Cron','2025-09-05 08:04:33','2025-09-05 08:04:33'),
(1787,607,'действие создано','2025-09-05 08:04:33','2025-09-05 08:04:33'),
(1790,479,'действие началось через WP Cron','2025-09-05 08:04:33','2025-09-05 08:04:33'),
(1791,479,'действие завершено через WP Cron','2025-09-05 08:04:33','2025-09-05 08:04:33'),
(1792,608,'действие создано','2025-09-05 08:04:33','2025-09-05 08:04:33'),
(1793,299,'действие началось через WP Cron','2025-09-05 08:04:33','2025-09-05 08:04:33'),
(1794,299,'действие завершено через WP Cron','2025-09-05 08:04:33','2025-09-05 08:04:33'),
(1795,609,'действие создано','2025-09-05 08:04:33','2025-09-05 08:04:33'),
(1857,631,'действие создано','2025-09-05 08:26:09','2025-09-05 08:26:09'),
(1858,632,'действие создано','2025-09-05 08:26:09','2025-09-05 08:26:09'),
(1859,631,'действие началось через WP Cron','2025-09-05 08:28:09','2025-09-05 08:28:09'),
(1860,631,'действие завершено через WP Cron','2025-09-05 08:28:10','2025-09-05 08:28:10'),
(1867,632,'действие началось через WP Cron','2025-09-05 08:28:10','2025-09-05 08:28:10'),
(1868,632,'действие завершено через WP Cron','2025-09-05 08:28:10','2025-09-05 08:28:10'),
(1911,649,'действие создано','2025-09-05 08:42:29','2025-09-05 08:42:29'),
(1912,650,'действие создано','2025-09-05 08:42:29','2025-09-05 08:42:29'),
(1913,649,'действие началось через WP Cron','2025-09-05 08:43:30','2025-09-05 08:43:30'),
(1914,649,'действие завершено через WP Cron','2025-09-05 08:43:31','2025-09-05 08:43:31'),
(1921,650,'действие началось через WP Cron','2025-09-05 08:43:31','2025-09-05 08:43:31'),
(1922,650,'действие завершено через WP Cron','2025-09-05 08:43:31','2025-09-05 08:43:31'),
(2253,608,'действие началось через WP Cron','2025-09-11 09:32:05','2025-09-11 09:32:05'),
(2254,608,'действие завершено через WP Cron','2025-09-11 09:32:05','2025-09-11 09:32:05'),
(2255,763,'действие создано','2025-09-11 09:32:05','2025-09-11 09:32:05'),
(2256,607,'действие началось через WP Cron','2025-09-11 09:32:05','2025-09-11 09:32:05'),
(2257,607,'действие завершено через WP Cron','2025-09-11 09:32:05','2025-09-11 09:32:05'),
(2258,764,'действие создано','2025-09-11 09:32:05','2025-09-11 09:32:05'),
(2261,609,'действие началось через WP Cron','2025-09-11 09:32:05','2025-09-11 09:32:05'),
(2262,609,'действие завершено через WP Cron','2025-09-11 09:32:05','2025-09-11 09:32:05'),
(2263,765,'действие создано','2025-09-11 09:32:05','2025-09-11 09:32:05'),
(2277,763,'действие началось через WP Cron','2025-09-12 20:21:30','2025-09-12 20:21:30'),
(2278,763,'действие завершено через WP Cron','2025-09-12 20:21:30','2025-09-12 20:21:30'),
(2279,771,'действие создано','2025-09-12 20:21:30','2025-09-12 20:21:30'),
(2280,764,'действие началось через WP Cron','2025-09-12 20:21:30','2025-09-12 20:21:30'),
(2281,764,'действие завершено через WP Cron','2025-09-12 20:21:30','2025-09-12 20:21:30'),
(2282,772,'действие создано','2025-09-12 20:21:30','2025-09-12 20:21:30'),
(2285,765,'действие началось через WP Cron','2025-09-12 20:21:30','2025-09-12 20:21:30'),
(2286,765,'действие завершено через WP Cron','2025-09-12 20:21:30','2025-09-12 20:21:30'),
(2287,773,'действие создано','2025-09-12 20:21:30','2025-09-12 20:21:30'),
(2307,771,'действие началось через WP Cron','2025-09-15 11:49:09','2025-09-15 11:49:09'),
(2308,771,'действие завершено через WP Cron','2025-09-15 11:49:09','2025-09-15 11:49:09'),
(2309,781,'действие создано','2025-09-15 11:49:09','2025-09-15 11:49:09'),
(2310,772,'действие началось через WP Cron','2025-09-15 11:49:09','2025-09-15 11:49:09'),
(2311,772,'действие завершено через WP Cron','2025-09-15 11:49:09','2025-09-15 11:49:09'),
(2312,782,'действие создано','2025-09-15 11:49:09','2025-09-15 11:49:09'),
(2315,773,'действие началось через WP Cron','2025-09-15 11:49:09','2025-09-15 11:49:09'),
(2316,773,'действие завершено через WP Cron','2025-09-15 11:49:09','2025-09-15 11:49:09'),
(2317,783,'действие создано','2025-09-15 11:49:09','2025-09-15 11:49:09'),
(2318,784,'действие создано','2025-09-15 11:49:41','2025-09-15 11:49:41'),
(2582,872,'действие создано','2025-09-15 16:06:16','2025-09-15 16:06:16'),
(2639,891,'действие создано','2025-09-20 22:21:21','2025-09-20 22:21:21'),
(2642,892,'действие создано','2025-09-20 22:21:21','2025-09-20 22:21:21'),
(2645,893,'действие создано','2025-09-20 22:21:21','2025-09-20 22:21:21'),
(2646,872,'действие началось через WP Cron','2025-09-20 22:21:21','2025-09-20 22:21:21'),
(2647,872,'действие завершено через WP Cron','2025-09-20 22:21:21','2025-09-20 22:21:21'),
(2648,894,'действие создано','2025-09-20 22:21:21','2025-09-20 22:21:21'),
(2649,781,'действие началось через WP Cron','2025-09-20 22:21:21','2025-09-20 22:21:21'),
(2650,781,'действие завершено через WP Cron','2025-09-20 22:21:21','2025-09-20 22:21:21'),
(2651,895,'действие создано','2025-09-20 22:21:21','2025-09-20 22:21:21'),
(2652,782,'действие началось через WP Cron','2025-09-20 22:21:21','2025-09-20 22:21:21'),
(2653,782,'действие завершено через WP Cron','2025-09-20 22:21:21','2025-09-20 22:21:21'),
(2654,896,'действие создано','2025-09-20 22:21:21','2025-09-20 22:21:21'),
(2655,784,'действие началось через WP Cron','2025-09-20 22:21:21','2025-09-20 22:21:21'),
(2656,784,'действие завершено через WP Cron','2025-09-20 22:21:21','2025-09-20 22:21:21'),
(2657,783,'действие началось через WP Cron','2025-09-20 22:21:21','2025-09-20 22:21:21'),
(2658,783,'действие завершено через WP Cron','2025-09-20 22:21:21','2025-09-20 22:21:21'),
(2659,897,'действие создано','2025-09-20 22:21:21','2025-09-20 22:21:21'),
(2660,898,'действие создано','2025-09-20 22:21:23','2025-09-20 22:21:23'),
(2661,899,'действие создано','2025-09-20 22:21:40','2025-09-20 22:21:40'),
(2662,900,'действие создано','2025-09-20 22:21:40','2025-09-20 22:21:40'),
(2663,891,'действие началось через WP Cron','2025-09-20 22:24:48','2025-09-20 22:24:48'),
(2664,891,'действие завершено через WP Cron','2025-09-20 22:24:48','2025-09-20 22:24:48'),
(2665,901,'действие создано','2025-09-20 22:24:48','2025-09-20 22:24:48'),
(2666,892,'действие началось через WP Cron','2025-09-20 22:24:48','2025-09-20 22:24:48'),
(2667,892,'действие завершено через WP Cron','2025-09-20 22:24:48','2025-09-20 22:24:48'),
(2668,902,'действие создано','2025-09-20 22:24:48','2025-09-20 22:24:48'),
(2669,900,'действие началось через WP Cron','2025-09-20 22:24:48','2025-09-20 22:24:48'),
(2670,900,'действие завершено через WP Cron','2025-09-20 22:24:48','2025-09-20 22:24:48'),
(2671,901,'действие началось через WP Cron','2025-09-20 22:26:33','2025-09-20 22:26:33'),
(2672,901,'действие завершено через WP Cron','2025-09-20 22:26:33','2025-09-20 22:26:33'),
(2673,903,'действие создано','2025-09-20 22:26:33','2025-09-20 22:26:33'),
(2674,902,'действие началось через WP Cron','2025-09-20 22:26:33','2025-09-20 22:26:33'),
(2675,902,'действие завершено через WP Cron','2025-09-20 22:26:33','2025-09-20 22:26:33'),
(2676,904,'действие создано','2025-09-20 22:26:33','2025-09-20 22:26:33'),
(2677,899,'действие помечено как неудачное через 300 сек. Произошла неизвестная ошибка. Проверьте журнал ошибок сервера, PHP и базы данных, чтобы диагностировать причину.','2025-09-20 22:28:13','2025-09-20 22:28:13'),
(2678,903,'действие началось через WP Cron','2025-09-20 22:28:13','2025-09-20 22:28:13'),
(2679,903,'действие завершено через WP Cron','2025-09-20 22:28:13','2025-09-20 22:28:13'),
(2680,905,'действие создано','2025-09-20 22:28:13','2025-09-20 22:28:13'),
(2681,904,'действие началось через WP Cron','2025-09-20 22:28:13','2025-09-20 22:28:13'),
(2682,904,'действие завершено через WP Cron','2025-09-20 22:28:13','2025-09-20 22:28:13'),
(2683,906,'действие создано','2025-09-20 22:28:13','2025-09-20 22:28:13'),
(2684,905,'действие началось через WP Cron','2025-09-20 22:29:13','2025-09-20 22:29:13'),
(2685,905,'действие завершено через WP Cron','2025-09-20 22:29:13','2025-09-20 22:29:13'),
(2686,907,'действие создано','2025-09-20 22:29:13','2025-09-20 22:29:13'),
(2687,906,'действие началось через WP Cron','2025-09-20 22:29:13','2025-09-20 22:29:13'),
(2688,906,'действие завершено через WP Cron','2025-09-20 22:29:13','2025-09-20 22:29:13'),
(2689,908,'действие создано','2025-09-20 22:29:13','2025-09-20 22:29:13'),
(2690,907,'действие началось через WP Cron','2025-09-20 22:30:13','2025-09-20 22:30:13'),
(2691,907,'действие завершено через WP Cron','2025-09-20 22:30:13','2025-09-20 22:30:13'),
(2692,909,'действие создано','2025-09-20 22:30:13','2025-09-20 22:30:13'),
(2693,908,'действие началось через WP Cron','2025-09-20 22:30:13','2025-09-20 22:30:13'),
(2694,908,'действие завершено через WP Cron','2025-09-20 22:30:13','2025-09-20 22:30:13'),
(2695,910,'действие создано','2025-09-20 22:30:13','2025-09-20 22:30:13'),
(2696,909,'действие началось через WP Cron','2025-09-20 22:31:13','2025-09-20 22:31:13'),
(2697,909,'действие завершено через WP Cron','2025-09-20 22:31:13','2025-09-20 22:31:13'),
(2698,911,'действие создано','2025-09-20 22:31:13','2025-09-20 22:31:13'),
(2699,910,'действие началось через WP Cron','2025-09-20 22:31:13','2025-09-20 22:31:13'),
(2700,910,'действие завершено через WP Cron','2025-09-20 22:31:13','2025-09-20 22:31:13'),
(2701,912,'действие создано','2025-09-20 22:31:13','2025-09-20 22:31:13'),
(2702,911,'действие началось через WP Cron','2025-09-20 22:32:13','2025-09-20 22:32:13'),
(2703,911,'действие завершено через WP Cron','2025-09-20 22:32:13','2025-09-20 22:32:13'),
(2704,913,'действие создано','2025-09-20 22:32:13','2025-09-20 22:32:13'),
(2705,912,'действие началось через WP Cron','2025-09-20 22:32:13','2025-09-20 22:32:13'),
(2706,912,'действие завершено через WP Cron','2025-09-20 22:32:13','2025-09-20 22:32:13'),
(2707,914,'действие создано','2025-09-20 22:32:13','2025-09-20 22:32:13'),
(2708,913,'действие началось через WP Cron','2025-09-20 22:33:14','2025-09-20 22:33:14'),
(2709,913,'действие завершено через WP Cron','2025-09-20 22:33:14','2025-09-20 22:33:14'),
(2710,915,'действие создано','2025-09-20 22:33:14','2025-09-20 22:33:14'),
(2711,914,'действие началось через WP Cron','2025-09-20 22:33:14','2025-09-20 22:33:14'),
(2712,914,'действие завершено через WP Cron','2025-09-20 22:33:14','2025-09-20 22:33:14'),
(2713,916,'действие создано','2025-09-20 22:33:14','2025-09-20 22:33:14'),
(2714,915,'действие началось через WP Cron','2025-09-20 22:35:13','2025-09-20 22:35:13'),
(2715,915,'действие завершено через WP Cron','2025-09-20 22:35:13','2025-09-20 22:35:13'),
(2716,917,'действие создано','2025-09-20 22:35:13','2025-09-20 22:35:13'),
(2717,916,'действие началось через WP Cron','2025-09-20 22:35:13','2025-09-20 22:35:13'),
(2718,916,'действие завершено через WP Cron','2025-09-20 22:35:13','2025-09-20 22:35:13'),
(2719,918,'действие создано','2025-09-20 22:35:13','2025-09-20 22:35:13'),
(2720,917,'действие началось через WP Cron','2025-09-20 22:36:13','2025-09-20 22:36:13'),
(2721,917,'действие завершено через WP Cron','2025-09-20 22:36:13','2025-09-20 22:36:13'),
(2722,919,'действие создано','2025-09-20 22:36:13','2025-09-20 22:36:13'),
(2723,918,'действие началось через WP Cron','2025-09-20 22:36:13','2025-09-20 22:36:13'),
(2724,918,'действие завершено через WP Cron','2025-09-20 22:36:13','2025-09-20 22:36:13'),
(2725,920,'действие создано','2025-09-20 22:36:13','2025-09-20 22:36:13'),
(2726,919,'действие началось через WP Cron','2025-09-20 22:37:14','2025-09-20 22:37:14'),
(2727,919,'действие завершено через WP Cron','2025-09-20 22:37:14','2025-09-20 22:37:14'),
(2728,921,'действие создано','2025-09-20 22:37:14','2025-09-20 22:37:14'),
(2729,920,'действие началось через WP Cron','2025-09-20 22:37:14','2025-09-20 22:37:14'),
(2730,920,'действие завершено через WP Cron','2025-09-20 22:37:14','2025-09-20 22:37:14'),
(2731,922,'действие создано','2025-09-20 22:37:14','2025-09-20 22:37:14'),
(2732,921,'действие началось через WP Cron','2025-09-20 22:38:14','2025-09-20 22:38:14'),
(2733,921,'действие завершено через WP Cron','2025-09-20 22:38:14','2025-09-20 22:38:14'),
(2734,923,'действие создано','2025-09-20 22:38:14','2025-09-20 22:38:14'),
(2735,922,'действие началось через WP Cron','2025-09-20 22:38:14','2025-09-20 22:38:14'),
(2736,922,'действие завершено через WP Cron','2025-09-20 22:38:14','2025-09-20 22:38:14'),
(2737,924,'действие создано','2025-09-20 22:38:14','2025-09-20 22:38:14'),
(2738,923,'действие началось через WP Cron','2025-09-20 22:39:14','2025-09-20 22:39:14'),
(2739,923,'действие завершено через WP Cron','2025-09-20 22:39:14','2025-09-20 22:39:14'),
(2740,925,'действие создано','2025-09-20 22:39:14','2025-09-20 22:39:14'),
(2741,924,'действие началось через WP Cron','2025-09-20 22:39:14','2025-09-20 22:39:14'),
(2742,924,'действие завершено через WP Cron','2025-09-20 22:39:14','2025-09-20 22:39:14'),
(2743,926,'действие создано','2025-09-20 22:39:14','2025-09-20 22:39:14');
/*!40000 ALTER TABLE `wp_actionscheduler_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_alpaca_customer_profile`
--

DROP TABLE IF EXISTS `wp_alpaca_customer_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_alpaca_customer_profile` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `phone` varchar(32) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_phone` (`phone`),
  KEY `idx_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_alpaca_customer_profile`
--

LOCK TABLES `wp_alpaca_customer_profile` WRITE;
/*!40000 ALTER TABLE `wp_alpaca_customer_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_alpaca_customer_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10)),
  KEY `woo_idx_comment_type` (`comment_type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES
(1,1,'Комментатор WordPress','wapuu@wordpress.example','https://ru.wordpress.org/','','2025-08-17 16:01:10','2025-08-17 13:01:10','Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com/\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_frmt_form_entry`
--

DROP TABLE IF EXISTS `wp_frmt_form_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_frmt_form_entry` (
  `entry_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `entry_type` varchar(191) NOT NULL,
  `draft_id` varchar(12) DEFAULT NULL,
  `form_id` bigint(20) unsigned NOT NULL,
  `is_spam` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`entry_id`),
  KEY `entry_is_spam` (`is_spam`),
  KEY `entry_type` (`entry_type`),
  KEY `entry_form_id` (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_frmt_form_entry`
--

LOCK TABLES `wp_frmt_form_entry` WRITE;
/*!40000 ALTER TABLE `wp_frmt_form_entry` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_frmt_form_entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_frmt_form_entry_meta`
--

DROP TABLE IF EXISTS `wp_frmt_form_entry_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_frmt_form_entry_meta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(191) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`meta_id`),
  KEY `meta_key` (`meta_key`),
  KEY `meta_entry_id` (`entry_id`),
  KEY `meta_key_object` (`entry_id`,`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_frmt_form_entry_meta`
--

LOCK TABLES `wp_frmt_form_entry_meta` WRITE;
/*!40000 ALTER TABLE `wp_frmt_form_entry_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_frmt_form_entry_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_frmt_form_reports`
--

DROP TABLE IF EXISTS `wp_frmt_form_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_frmt_form_reports` (
  `report_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `report_value` longtext NOT NULL,
  `status` varchar(200) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`report_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_frmt_form_reports`
--

LOCK TABLES `wp_frmt_form_reports` WRITE;
/*!40000 ALTER TABLE `wp_frmt_form_reports` DISABLE KEYS */;
INSERT INTO `wp_frmt_form_reports` VALUES
(1,'a:5:{s:7:\"exclude\";a:1:{i:0;i:1;}s:8:\"settings\";a:3:{s:5:\"label\";s:12:\"Form reports\";s:6:\"module\";s:5:\"forms\";s:10:\"forms_type\";s:3:\"all\";}s:8:\"schedule\";a:3:{s:9:\"frequency\";s:7:\"monthly\";s:8:\"monthDay\";s:1:\"4\";s:9:\"monthTime\";s:8:\"04:00 AM\";}s:13:\"report_status\";s:8:\"inactive\";s:10:\"recipients\";a:1:{i:0;a:5:{s:2:\"id\";i:1;s:4:\"name\";s:5:\"admin\";s:5:\"email\";s:20:\"adminAlpaca@shop.com\";s:4:\"role\";s:13:\"Administrator\";s:6:\"avatar\";s:113:\"https://secure.gravatar.com/avatar/14e0b135302dc5b3bcea64ab0a331830f21874bcb02c4028371e7e4c0b431caa?s=96&d=mm&r=g\";}}}','inactive','2025-08-20 01:18:56','2025-08-20 01:18:56');
/*!40000 ALTER TABLE `wp_frmt_form_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_frmt_form_views`
--

DROP TABLE IF EXISTS `wp_frmt_form_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_frmt_form_views` (
  `view_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` bigint(20) unsigned NOT NULL,
  `page_id` bigint(20) unsigned NOT NULL,
  `ip` varchar(191) DEFAULT NULL,
  `count` mediumint(8) unsigned NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`view_id`),
  KEY `view_form_id` (`form_id`),
  KEY `view_ip` (`ip`),
  KEY `view_form_object` (`form_id`,`view_id`),
  KEY `view_form_object_ip` (`form_id`,`view_id`,`ip`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_frmt_form_views`
--

LOCK TABLES `wp_frmt_form_views` WRITE;
/*!40000 ALTER TABLE `wp_frmt_form_views` DISABLE KEYS */;
INSERT INTO `wp_frmt_form_views` VALUES
(1,97,10,NULL,2,'2025-08-22 19:38:15','2025-08-22 16:47:38'),
(2,97,10,NULL,1,'2025-08-27 01:42:31','0000-00-00 00:00:00'),
(3,97,10,NULL,1,'2025-08-27 01:59:27','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `wp_frmt_form_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=2176 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES
(1,'cron','a:18:{i:1758408013;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1758409270;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1758410054;a:2:{s:20:\"jetpack_clean_nonces\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}s:33:\"wc_admin_process_orders_milestone\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1758410060;a:1:{s:29:\"wc_admin_unsnooze_admin_notes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1758416400;a:1:{s:37:\"tinvwl_remove_without_author_wishlist\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1758416486;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1758420070;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1758420855;a:1:{s:45:\"woocommerce_marketplace_cron_fetch_promotions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1758421870;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1758423670;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1758459670;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1758459686;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1758459690;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1758463645;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1758464054;a:1:{s:20:\"jetpack_v2_heartbeat\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1758546070;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1759616492;a:1:{s:34:\"tinvwl_disable_notifications_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}s:7:\"version\";i:2;}','on'),
(2,'siteurl','http://192.168.171.132','on'),
(3,'home','http://192.168.171.132','on'),
(4,'blogname','AlpacaShop','on'),
(5,'blogdescription','','on'),
(6,'users_can_register','0','on'),
(7,'admin_email','adminAlpaca@shop.com','on'),
(8,'start_of_week','1','on'),
(9,'use_balanceTags','0','on'),
(10,'use_smilies','1','on'),
(11,'require_name_email','1','on'),
(12,'comments_notify','1','on'),
(13,'posts_per_rss','10','on'),
(14,'rss_use_excerpt','0','on'),
(15,'mailserver_url','mail.example.com','on'),
(16,'mailserver_login','login@example.com','on'),
(17,'mailserver_pass','','on'),
(18,'mailserver_port','110','on'),
(19,'default_category','1','on'),
(20,'default_comment_status','open','on'),
(21,'default_ping_status','open','on'),
(22,'default_pingback_flag','0','on'),
(23,'posts_per_page','10','on'),
(24,'date_format','d.m.Y','on'),
(25,'time_format','H:i','on'),
(26,'links_updated_date_format','d.m.Y H:i','on'),
(27,'comment_moderation','0','on'),
(28,'moderation_notify','1','on'),
(29,'permalink_structure','/%year%/%monthnum%/%day%/%postname%/','on'),
(31,'hack_file','0','on'),
(32,'blog_charset','UTF-8','on'),
(33,'moderation_keys','','off'),
(34,'active_plugins','a:3:{i:1;s:25:\"forminator/forminator.php\";i:2;s:51:\"ti-woocommerce-wishlist/ti-woocommerce-wishlist.php\";i:3;s:27:\"woocommerce/woocommerce.php\";}','on'),
(35,'category_base','','on'),
(36,'ping_sites','https://rpc.pingomatic.com/','on'),
(37,'comment_max_links','2','on'),
(38,'gmt_offset','3','on'),
(39,'default_email_category','1','on'),
(40,'recently_edited','a:3:{i:0;s:52:\"/var/www/html/wp-content/plugins/akismet/akismet.php\";i:2;s:58:\"/var/www/html/wp-content/themes/twentytwentyfive/style.css\";i:3;s:0:\"\";}','off'),
(41,'template','twentytwentyfive','on'),
(42,'stylesheet','twentytwentyfive','on'),
(43,'comment_registration','0','on'),
(44,'html_type','text/html','on'),
(45,'use_trackback','0','on'),
(46,'default_role','subscriber','on'),
(47,'db_version','58975','on'),
(48,'uploads_use_yearmonth_folders','1','on'),
(49,'upload_path','','on'),
(50,'blog_public','0','on'),
(51,'default_link_category','2','on'),
(52,'show_on_front','page','on'),
(53,'tag_base','','on'),
(54,'show_avatars','1','on'),
(55,'avatar_rating','G','on'),
(56,'upload_url_path','','on'),
(57,'thumbnail_size_w','150','on'),
(58,'thumbnail_size_h','150','on'),
(59,'thumbnail_crop','1','on'),
(60,'medium_size_w','300','on'),
(61,'medium_size_h','300','on'),
(62,'avatar_default','mystery','on'),
(63,'large_size_w','1024','on'),
(64,'large_size_h','1024','on'),
(65,'image_default_link_type','none','on'),
(66,'image_default_size','','on'),
(67,'image_default_align','','on'),
(68,'close_comments_for_old_posts','0','on'),
(69,'close_comments_days_old','14','on'),
(70,'thread_comments','1','on'),
(71,'thread_comments_depth','5','on'),
(72,'page_comments','0','on'),
(73,'comments_per_page','50','on'),
(74,'default_comments_page','newest','on'),
(75,'comment_order','asc','on'),
(76,'sticky_posts','a:0:{}','on'),
(77,'widget_categories','a:0:{}','on'),
(78,'widget_text','a:0:{}','on'),
(79,'widget_rss','a:0:{}','on'),
(80,'uninstall_plugins','a:1:{s:51:\"ti-woocommerce-wishlist/ti-woocommerce-wishlist.php\";s:23:\"uninstall_tinv_wishlist\";}','off'),
(81,'timezone_string','','on'),
(82,'page_for_posts','0','on'),
(83,'page_on_front','93','on'),
(84,'default_post_format','0','on'),
(85,'link_manager_enabled','0','on'),
(86,'finished_splitting_shared_terms','1','on'),
(87,'site_icon','66','on'),
(88,'medium_large_size_w','768','on'),
(89,'medium_large_size_h','0','on'),
(90,'wp_page_for_privacy_policy','3','on'),
(91,'show_comments_cookies_opt_in','1','on'),
(92,'admin_email_lifespan','1770987670','on'),
(93,'disallowed_keys','','off'),
(94,'comment_previously_approved','1','on'),
(95,'auto_plugin_theme_update_emails','a:0:{}','off'),
(96,'auto_update_core_dev','enabled','on'),
(97,'auto_update_core_minor','enabled','on'),
(98,'auto_update_core_major','enabled','on'),
(99,'wp_force_deactivated_plugins','a:0:{}','on'),
(100,'wp_attachment_pages_enabled','0','on'),
(101,'initial_db_version','60421','on'),
(102,'wp_user_roles','a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:122:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:16:\"create_customers\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:23:\"tinvwl_general_settings\";b:1;s:16:\"tinvwl_wishlists\";b:1;s:21:\"tinvwl_style_settings\";b:1;s:28:\"tinvwl_integrations_settings\";b:1;s:29:\"tinvwl_export_import_settings\";b:1;s:14:\"tinvwl_upgrade\";b:1;s:17:\"manage_forminator\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:94:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:16:\"create_customers\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:16:\"tinvwl_wishlists\";b:1;}}}','on'),
(103,'fresh_site','0','off'),
(104,'WPLANG','ru_RU','auto'),
(105,'user_count','12','off'),
(106,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:167:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Свежие записи</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:247:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Свежие комментарии</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Архивы</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Рубрики</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','auto'),
(107,'sidebars_widgets','a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','auto'),
(108,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(109,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(110,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(111,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(112,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(113,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(114,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(115,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(116,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(117,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(118,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(119,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(120,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(121,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(122,'_transient_wp_core_block_css_files','a:2:{s:7:\"version\";s:5:\"6.7.3\";s:5:\"files\";a:544:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:21:\"button/editor-rtl.css\";i:29;s:25:\"button/editor-rtl.min.css\";i:30;s:17:\"button/editor.css\";i:31;s:21:\"button/editor.min.css\";i:32;s:20:\"button/style-rtl.css\";i:33;s:24:\"button/style-rtl.min.css\";i:34;s:16:\"button/style.css\";i:35;s:20:\"button/style.min.css\";i:36;s:22:\"buttons/editor-rtl.css\";i:37;s:26:\"buttons/editor-rtl.min.css\";i:38;s:18:\"buttons/editor.css\";i:39;s:22:\"buttons/editor.min.css\";i:40;s:21:\"buttons/style-rtl.css\";i:41;s:25:\"buttons/style-rtl.min.css\";i:42;s:17:\"buttons/style.css\";i:43;s:21:\"buttons/style.min.css\";i:44;s:22:\"calendar/style-rtl.css\";i:45;s:26:\"calendar/style-rtl.min.css\";i:46;s:18:\"calendar/style.css\";i:47;s:22:\"calendar/style.min.css\";i:48;s:25:\"categories/editor-rtl.css\";i:49;s:29:\"categories/editor-rtl.min.css\";i:50;s:21:\"categories/editor.css\";i:51;s:25:\"categories/editor.min.css\";i:52;s:24:\"categories/style-rtl.css\";i:53;s:28:\"categories/style-rtl.min.css\";i:54;s:20:\"categories/style.css\";i:55;s:24:\"categories/style.min.css\";i:56;s:19:\"code/editor-rtl.css\";i:57;s:23:\"code/editor-rtl.min.css\";i:58;s:15:\"code/editor.css\";i:59;s:19:\"code/editor.min.css\";i:60;s:18:\"code/style-rtl.css\";i:61;s:22:\"code/style-rtl.min.css\";i:62;s:14:\"code/style.css\";i:63;s:18:\"code/style.min.css\";i:64;s:18:\"code/theme-rtl.css\";i:65;s:22:\"code/theme-rtl.min.css\";i:66;s:14:\"code/theme.css\";i:67;s:18:\"code/theme.min.css\";i:68;s:22:\"columns/editor-rtl.css\";i:69;s:26:\"columns/editor-rtl.min.css\";i:70;s:18:\"columns/editor.css\";i:71;s:22:\"columns/editor.min.css\";i:72;s:21:\"columns/style-rtl.css\";i:73;s:25:\"columns/style-rtl.min.css\";i:74;s:17:\"columns/style.css\";i:75;s:21:\"columns/style.min.css\";i:76;s:33:\"comment-author-name/style-rtl.css\";i:77;s:37:\"comment-author-name/style-rtl.min.css\";i:78;s:29:\"comment-author-name/style.css\";i:79;s:33:\"comment-author-name/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:26:\"comment-date/style-rtl.css\";i:85;s:30:\"comment-date/style-rtl.min.css\";i:86;s:22:\"comment-date/style.css\";i:87;s:26:\"comment-date/style.min.css\";i:88;s:31:\"comment-edit-link/style-rtl.css\";i:89;s:35:\"comment-edit-link/style-rtl.min.css\";i:90;s:27:\"comment-edit-link/style.css\";i:91;s:31:\"comment-edit-link/style.min.css\";i:92;s:32:\"comment-reply-link/style-rtl.css\";i:93;s:36:\"comment-reply-link/style-rtl.min.css\";i:94;s:28:\"comment-reply-link/style.css\";i:95;s:32:\"comment-reply-link/style.min.css\";i:96;s:30:\"comment-template/style-rtl.css\";i:97;s:34:\"comment-template/style-rtl.min.css\";i:98;s:26:\"comment-template/style.css\";i:99;s:30:\"comment-template/style.min.css\";i:100;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:101;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:102;s:38:\"comments-pagination-numbers/editor.css\";i:103;s:42:\"comments-pagination-numbers/editor.min.css\";i:104;s:34:\"comments-pagination/editor-rtl.css\";i:105;s:38:\"comments-pagination/editor-rtl.min.css\";i:106;s:30:\"comments-pagination/editor.css\";i:107;s:34:\"comments-pagination/editor.min.css\";i:108;s:33:\"comments-pagination/style-rtl.css\";i:109;s:37:\"comments-pagination/style-rtl.min.css\";i:110;s:29:\"comments-pagination/style.css\";i:111;s:33:\"comments-pagination/style.min.css\";i:112;s:29:\"comments-title/editor-rtl.css\";i:113;s:33:\"comments-title/editor-rtl.min.css\";i:114;s:25:\"comments-title/editor.css\";i:115;s:29:\"comments-title/editor.min.css\";i:116;s:23:\"comments/editor-rtl.css\";i:117;s:27:\"comments/editor-rtl.min.css\";i:118;s:19:\"comments/editor.css\";i:119;s:23:\"comments/editor.min.css\";i:120;s:22:\"comments/style-rtl.css\";i:121;s:26:\"comments/style-rtl.min.css\";i:122;s:18:\"comments/style.css\";i:123;s:22:\"comments/style.min.css\";i:124;s:20:\"cover/editor-rtl.css\";i:125;s:24:\"cover/editor-rtl.min.css\";i:126;s:16:\"cover/editor.css\";i:127;s:20:\"cover/editor.min.css\";i:128;s:19:\"cover/style-rtl.css\";i:129;s:23:\"cover/style-rtl.min.css\";i:130;s:15:\"cover/style.css\";i:131;s:19:\"cover/style.min.css\";i:132;s:22:\"details/editor-rtl.css\";i:133;s:26:\"details/editor-rtl.min.css\";i:134;s:18:\"details/editor.css\";i:135;s:22:\"details/editor.min.css\";i:136;s:21:\"details/style-rtl.css\";i:137;s:25:\"details/style-rtl.min.css\";i:138;s:17:\"details/style.css\";i:139;s:21:\"details/style.min.css\";i:140;s:20:\"embed/editor-rtl.css\";i:141;s:24:\"embed/editor-rtl.min.css\";i:142;s:16:\"embed/editor.css\";i:143;s:20:\"embed/editor.min.css\";i:144;s:19:\"embed/style-rtl.css\";i:145;s:23:\"embed/style-rtl.min.css\";i:146;s:15:\"embed/style.css\";i:147;s:19:\"embed/style.min.css\";i:148;s:19:\"embed/theme-rtl.css\";i:149;s:23:\"embed/theme-rtl.min.css\";i:150;s:15:\"embed/theme.css\";i:151;s:19:\"embed/theme.min.css\";i:152;s:19:\"file/editor-rtl.css\";i:153;s:23:\"file/editor-rtl.min.css\";i:154;s:15:\"file/editor.css\";i:155;s:19:\"file/editor.min.css\";i:156;s:18:\"file/style-rtl.css\";i:157;s:22:\"file/style-rtl.min.css\";i:158;s:14:\"file/style.css\";i:159;s:18:\"file/style.min.css\";i:160;s:23:\"footnotes/style-rtl.css\";i:161;s:27:\"footnotes/style-rtl.min.css\";i:162;s:19:\"footnotes/style.css\";i:163;s:23:\"footnotes/style.min.css\";i:164;s:23:\"freeform/editor-rtl.css\";i:165;s:27:\"freeform/editor-rtl.min.css\";i:166;s:19:\"freeform/editor.css\";i:167;s:23:\"freeform/editor.min.css\";i:168;s:22:\"gallery/editor-rtl.css\";i:169;s:26:\"gallery/editor-rtl.min.css\";i:170;s:18:\"gallery/editor.css\";i:171;s:22:\"gallery/editor.min.css\";i:172;s:21:\"gallery/style-rtl.css\";i:173;s:25:\"gallery/style-rtl.min.css\";i:174;s:17:\"gallery/style.css\";i:175;s:21:\"gallery/style.min.css\";i:176;s:21:\"gallery/theme-rtl.css\";i:177;s:25:\"gallery/theme-rtl.min.css\";i:178;s:17:\"gallery/theme.css\";i:179;s:21:\"gallery/theme.min.css\";i:180;s:20:\"group/editor-rtl.css\";i:181;s:24:\"group/editor-rtl.min.css\";i:182;s:16:\"group/editor.css\";i:183;s:20:\"group/editor.min.css\";i:184;s:19:\"group/style-rtl.css\";i:185;s:23:\"group/style-rtl.min.css\";i:186;s:15:\"group/style.css\";i:187;s:19:\"group/style.min.css\";i:188;s:19:\"group/theme-rtl.css\";i:189;s:23:\"group/theme-rtl.min.css\";i:190;s:15:\"group/theme.css\";i:191;s:19:\"group/theme.min.css\";i:192;s:21:\"heading/style-rtl.css\";i:193;s:25:\"heading/style-rtl.min.css\";i:194;s:17:\"heading/style.css\";i:195;s:21:\"heading/style.min.css\";i:196;s:19:\"html/editor-rtl.css\";i:197;s:23:\"html/editor-rtl.min.css\";i:198;s:15:\"html/editor.css\";i:199;s:19:\"html/editor.min.css\";i:200;s:20:\"image/editor-rtl.css\";i:201;s:24:\"image/editor-rtl.min.css\";i:202;s:16:\"image/editor.css\";i:203;s:20:\"image/editor.min.css\";i:204;s:19:\"image/style-rtl.css\";i:205;s:23:\"image/style-rtl.min.css\";i:206;s:15:\"image/style.css\";i:207;s:19:\"image/style.min.css\";i:208;s:19:\"image/theme-rtl.css\";i:209;s:23:\"image/theme-rtl.min.css\";i:210;s:15:\"image/theme.css\";i:211;s:19:\"image/theme.min.css\";i:212;s:29:\"latest-comments/style-rtl.css\";i:213;s:33:\"latest-comments/style-rtl.min.css\";i:214;s:25:\"latest-comments/style.css\";i:215;s:29:\"latest-comments/style.min.css\";i:216;s:27:\"latest-posts/editor-rtl.css\";i:217;s:31:\"latest-posts/editor-rtl.min.css\";i:218;s:23:\"latest-posts/editor.css\";i:219;s:27:\"latest-posts/editor.min.css\";i:220;s:26:\"latest-posts/style-rtl.css\";i:221;s:30:\"latest-posts/style-rtl.min.css\";i:222;s:22:\"latest-posts/style.css\";i:223;s:26:\"latest-posts/style.min.css\";i:224;s:18:\"list/style-rtl.css\";i:225;s:22:\"list/style-rtl.min.css\";i:226;s:14:\"list/style.css\";i:227;s:18:\"list/style.min.css\";i:228;s:22:\"loginout/style-rtl.css\";i:229;s:26:\"loginout/style-rtl.min.css\";i:230;s:18:\"loginout/style.css\";i:231;s:22:\"loginout/style.min.css\";i:232;s:25:\"media-text/editor-rtl.css\";i:233;s:29:\"media-text/editor-rtl.min.css\";i:234;s:21:\"media-text/editor.css\";i:235;s:25:\"media-text/editor.min.css\";i:236;s:24:\"media-text/style-rtl.css\";i:237;s:28:\"media-text/style-rtl.min.css\";i:238;s:20:\"media-text/style.css\";i:239;s:24:\"media-text/style.min.css\";i:240;s:19:\"more/editor-rtl.css\";i:241;s:23:\"more/editor-rtl.min.css\";i:242;s:15:\"more/editor.css\";i:243;s:19:\"more/editor.min.css\";i:244;s:30:\"navigation-link/editor-rtl.css\";i:245;s:34:\"navigation-link/editor-rtl.min.css\";i:246;s:26:\"navigation-link/editor.css\";i:247;s:30:\"navigation-link/editor.min.css\";i:248;s:29:\"navigation-link/style-rtl.css\";i:249;s:33:\"navigation-link/style-rtl.min.css\";i:250;s:25:\"navigation-link/style.css\";i:251;s:29:\"navigation-link/style.min.css\";i:252;s:33:\"navigation-submenu/editor-rtl.css\";i:253;s:37:\"navigation-submenu/editor-rtl.min.css\";i:254;s:29:\"navigation-submenu/editor.css\";i:255;s:33:\"navigation-submenu/editor.min.css\";i:256;s:25:\"navigation/editor-rtl.css\";i:257;s:29:\"navigation/editor-rtl.min.css\";i:258;s:21:\"navigation/editor.css\";i:259;s:25:\"navigation/editor.min.css\";i:260;s:24:\"navigation/style-rtl.css\";i:261;s:28:\"navigation/style-rtl.min.css\";i:262;s:20:\"navigation/style.css\";i:263;s:24:\"navigation/style.min.css\";i:264;s:23:\"nextpage/editor-rtl.css\";i:265;s:27:\"nextpage/editor-rtl.min.css\";i:266;s:19:\"nextpage/editor.css\";i:267;s:23:\"nextpage/editor.min.css\";i:268;s:24:\"page-list/editor-rtl.css\";i:269;s:28:\"page-list/editor-rtl.min.css\";i:270;s:20:\"page-list/editor.css\";i:271;s:24:\"page-list/editor.min.css\";i:272;s:23:\"page-list/style-rtl.css\";i:273;s:27:\"page-list/style-rtl.min.css\";i:274;s:19:\"page-list/style.css\";i:275;s:23:\"page-list/style.min.css\";i:276;s:24:\"paragraph/editor-rtl.css\";i:277;s:28:\"paragraph/editor-rtl.min.css\";i:278;s:20:\"paragraph/editor.css\";i:279;s:24:\"paragraph/editor.min.css\";i:280;s:23:\"paragraph/style-rtl.css\";i:281;s:27:\"paragraph/style-rtl.min.css\";i:282;s:19:\"paragraph/style.css\";i:283;s:23:\"paragraph/style.min.css\";i:284;s:35:\"post-author-biography/style-rtl.css\";i:285;s:39:\"post-author-biography/style-rtl.min.css\";i:286;s:31:\"post-author-biography/style.css\";i:287;s:35:\"post-author-biography/style.min.css\";i:288;s:30:\"post-author-name/style-rtl.css\";i:289;s:34:\"post-author-name/style-rtl.min.css\";i:290;s:26:\"post-author-name/style.css\";i:291;s:30:\"post-author-name/style.min.css\";i:292;s:26:\"post-author/editor-rtl.css\";i:293;s:30:\"post-author/editor-rtl.min.css\";i:294;s:22:\"post-author/editor.css\";i:295;s:26:\"post-author/editor.min.css\";i:296;s:25:\"post-author/style-rtl.css\";i:297;s:29:\"post-author/style-rtl.min.css\";i:298;s:21:\"post-author/style.css\";i:299;s:25:\"post-author/style.min.css\";i:300;s:33:\"post-comments-form/editor-rtl.css\";i:301;s:37:\"post-comments-form/editor-rtl.min.css\";i:302;s:29:\"post-comments-form/editor.css\";i:303;s:33:\"post-comments-form/editor.min.css\";i:304;s:32:\"post-comments-form/style-rtl.css\";i:305;s:36:\"post-comments-form/style-rtl.min.css\";i:306;s:28:\"post-comments-form/style.css\";i:307;s:32:\"post-comments-form/style.min.css\";i:308;s:27:\"post-content/editor-rtl.css\";i:309;s:31:\"post-content/editor-rtl.min.css\";i:310;s:23:\"post-content/editor.css\";i:311;s:27:\"post-content/editor.min.css\";i:312;s:26:\"post-content/style-rtl.css\";i:313;s:30:\"post-content/style-rtl.min.css\";i:314;s:22:\"post-content/style.css\";i:315;s:26:\"post-content/style.min.css\";i:316;s:23:\"post-date/style-rtl.css\";i:317;s:27:\"post-date/style-rtl.min.css\";i:318;s:19:\"post-date/style.css\";i:319;s:23:\"post-date/style.min.css\";i:320;s:27:\"post-excerpt/editor-rtl.css\";i:321;s:31:\"post-excerpt/editor-rtl.min.css\";i:322;s:23:\"post-excerpt/editor.css\";i:323;s:27:\"post-excerpt/editor.min.css\";i:324;s:26:\"post-excerpt/style-rtl.css\";i:325;s:30:\"post-excerpt/style-rtl.min.css\";i:326;s:22:\"post-excerpt/style.css\";i:327;s:26:\"post-excerpt/style.min.css\";i:328;s:34:\"post-featured-image/editor-rtl.css\";i:329;s:38:\"post-featured-image/editor-rtl.min.css\";i:330;s:30:\"post-featured-image/editor.css\";i:331;s:34:\"post-featured-image/editor.min.css\";i:332;s:33:\"post-featured-image/style-rtl.css\";i:333;s:37:\"post-featured-image/style-rtl.min.css\";i:334;s:29:\"post-featured-image/style.css\";i:335;s:33:\"post-featured-image/style.min.css\";i:336;s:34:\"post-navigation-link/style-rtl.css\";i:337;s:38:\"post-navigation-link/style-rtl.min.css\";i:338;s:30:\"post-navigation-link/style.css\";i:339;s:34:\"post-navigation-link/style.min.css\";i:340;s:28:\"post-template/editor-rtl.css\";i:341;s:32:\"post-template/editor-rtl.min.css\";i:342;s:24:\"post-template/editor.css\";i:343;s:28:\"post-template/editor.min.css\";i:344;s:27:\"post-template/style-rtl.css\";i:345;s:31:\"post-template/style-rtl.min.css\";i:346;s:23:\"post-template/style.css\";i:347;s:27:\"post-template/style.min.css\";i:348;s:24:\"post-terms/style-rtl.css\";i:349;s:28:\"post-terms/style-rtl.min.css\";i:350;s:20:\"post-terms/style.css\";i:351;s:24:\"post-terms/style.min.css\";i:352;s:24:\"post-title/style-rtl.css\";i:353;s:28:\"post-title/style-rtl.min.css\";i:354;s:20:\"post-title/style.css\";i:355;s:24:\"post-title/style.min.css\";i:356;s:26:\"preformatted/style-rtl.css\";i:357;s:30:\"preformatted/style-rtl.min.css\";i:358;s:22:\"preformatted/style.css\";i:359;s:26:\"preformatted/style.min.css\";i:360;s:24:\"pullquote/editor-rtl.css\";i:361;s:28:\"pullquote/editor-rtl.min.css\";i:362;s:20:\"pullquote/editor.css\";i:363;s:24:\"pullquote/editor.min.css\";i:364;s:23:\"pullquote/style-rtl.css\";i:365;s:27:\"pullquote/style-rtl.min.css\";i:366;s:19:\"pullquote/style.css\";i:367;s:23:\"pullquote/style.min.css\";i:368;s:23:\"pullquote/theme-rtl.css\";i:369;s:27:\"pullquote/theme-rtl.min.css\";i:370;s:19:\"pullquote/theme.css\";i:371;s:23:\"pullquote/theme.min.css\";i:372;s:39:\"query-pagination-numbers/editor-rtl.css\";i:373;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:374;s:35:\"query-pagination-numbers/editor.css\";i:375;s:39:\"query-pagination-numbers/editor.min.css\";i:376;s:31:\"query-pagination/editor-rtl.css\";i:377;s:35:\"query-pagination/editor-rtl.min.css\";i:378;s:27:\"query-pagination/editor.css\";i:379;s:31:\"query-pagination/editor.min.css\";i:380;s:30:\"query-pagination/style-rtl.css\";i:381;s:34:\"query-pagination/style-rtl.min.css\";i:382;s:26:\"query-pagination/style.css\";i:383;s:30:\"query-pagination/style.min.css\";i:384;s:25:\"query-title/style-rtl.css\";i:385;s:29:\"query-title/style-rtl.min.css\";i:386;s:21:\"query-title/style.css\";i:387;s:25:\"query-title/style.min.css\";i:388;s:25:\"query-total/style-rtl.css\";i:389;s:29:\"query-total/style-rtl.min.css\";i:390;s:21:\"query-total/style.css\";i:391;s:25:\"query-total/style.min.css\";i:392;s:20:\"query/editor-rtl.css\";i:393;s:24:\"query/editor-rtl.min.css\";i:394;s:16:\"query/editor.css\";i:395;s:20:\"query/editor.min.css\";i:396;s:19:\"quote/style-rtl.css\";i:397;s:23:\"quote/style-rtl.min.css\";i:398;s:15:\"quote/style.css\";i:399;s:19:\"quote/style.min.css\";i:400;s:19:\"quote/theme-rtl.css\";i:401;s:23:\"quote/theme-rtl.min.css\";i:402;s:15:\"quote/theme.css\";i:403;s:19:\"quote/theme.min.css\";i:404;s:23:\"read-more/style-rtl.css\";i:405;s:27:\"read-more/style-rtl.min.css\";i:406;s:19:\"read-more/style.css\";i:407;s:23:\"read-more/style.min.css\";i:408;s:18:\"rss/editor-rtl.css\";i:409;s:22:\"rss/editor-rtl.min.css\";i:410;s:14:\"rss/editor.css\";i:411;s:18:\"rss/editor.min.css\";i:412;s:17:\"rss/style-rtl.css\";i:413;s:21:\"rss/style-rtl.min.css\";i:414;s:13:\"rss/style.css\";i:415;s:17:\"rss/style.min.css\";i:416;s:21:\"search/editor-rtl.css\";i:417;s:25:\"search/editor-rtl.min.css\";i:418;s:17:\"search/editor.css\";i:419;s:21:\"search/editor.min.css\";i:420;s:20:\"search/style-rtl.css\";i:421;s:24:\"search/style-rtl.min.css\";i:422;s:16:\"search/style.css\";i:423;s:20:\"search/style.min.css\";i:424;s:20:\"search/theme-rtl.css\";i:425;s:24:\"search/theme-rtl.min.css\";i:426;s:16:\"search/theme.css\";i:427;s:20:\"search/theme.min.css\";i:428;s:24:\"separator/editor-rtl.css\";i:429;s:28:\"separator/editor-rtl.min.css\";i:430;s:20:\"separator/editor.css\";i:431;s:24:\"separator/editor.min.css\";i:432;s:23:\"separator/style-rtl.css\";i:433;s:27:\"separator/style-rtl.min.css\";i:434;s:19:\"separator/style.css\";i:435;s:23:\"separator/style.min.css\";i:436;s:23:\"separator/theme-rtl.css\";i:437;s:27:\"separator/theme-rtl.min.css\";i:438;s:19:\"separator/theme.css\";i:439;s:23:\"separator/theme.min.css\";i:440;s:24:\"shortcode/editor-rtl.css\";i:441;s:28:\"shortcode/editor-rtl.min.css\";i:442;s:20:\"shortcode/editor.css\";i:443;s:24:\"shortcode/editor.min.css\";i:444;s:24:\"site-logo/editor-rtl.css\";i:445;s:28:\"site-logo/editor-rtl.min.css\";i:446;s:20:\"site-logo/editor.css\";i:447;s:24:\"site-logo/editor.min.css\";i:448;s:23:\"site-logo/style-rtl.css\";i:449;s:27:\"site-logo/style-rtl.min.css\";i:450;s:19:\"site-logo/style.css\";i:451;s:23:\"site-logo/style.min.css\";i:452;s:27:\"site-tagline/editor-rtl.css\";i:453;s:31:\"site-tagline/editor-rtl.min.css\";i:454;s:23:\"site-tagline/editor.css\";i:455;s:27:\"site-tagline/editor.min.css\";i:456;s:26:\"site-tagline/style-rtl.css\";i:457;s:30:\"site-tagline/style-rtl.min.css\";i:458;s:22:\"site-tagline/style.css\";i:459;s:26:\"site-tagline/style.min.css\";i:460;s:25:\"site-title/editor-rtl.css\";i:461;s:29:\"site-title/editor-rtl.min.css\";i:462;s:21:\"site-title/editor.css\";i:463;s:25:\"site-title/editor.min.css\";i:464;s:24:\"site-title/style-rtl.css\";i:465;s:28:\"site-title/style-rtl.min.css\";i:466;s:20:\"site-title/style.css\";i:467;s:24:\"site-title/style.min.css\";i:468;s:26:\"social-link/editor-rtl.css\";i:469;s:30:\"social-link/editor-rtl.min.css\";i:470;s:22:\"social-link/editor.css\";i:471;s:26:\"social-link/editor.min.css\";i:472;s:27:\"social-links/editor-rtl.css\";i:473;s:31:\"social-links/editor-rtl.min.css\";i:474;s:23:\"social-links/editor.css\";i:475;s:27:\"social-links/editor.min.css\";i:476;s:26:\"social-links/style-rtl.css\";i:477;s:30:\"social-links/style-rtl.min.css\";i:478;s:22:\"social-links/style.css\";i:479;s:26:\"social-links/style.min.css\";i:480;s:21:\"spacer/editor-rtl.css\";i:481;s:25:\"spacer/editor-rtl.min.css\";i:482;s:17:\"spacer/editor.css\";i:483;s:21:\"spacer/editor.min.css\";i:484;s:20:\"spacer/style-rtl.css\";i:485;s:24:\"spacer/style-rtl.min.css\";i:486;s:16:\"spacer/style.css\";i:487;s:20:\"spacer/style.min.css\";i:488;s:20:\"table/editor-rtl.css\";i:489;s:24:\"table/editor-rtl.min.css\";i:490;s:16:\"table/editor.css\";i:491;s:20:\"table/editor.min.css\";i:492;s:19:\"table/style-rtl.css\";i:493;s:23:\"table/style-rtl.min.css\";i:494;s:15:\"table/style.css\";i:495;s:19:\"table/style.min.css\";i:496;s:19:\"table/theme-rtl.css\";i:497;s:23:\"table/theme-rtl.min.css\";i:498;s:15:\"table/theme.css\";i:499;s:19:\"table/theme.min.css\";i:500;s:24:\"tag-cloud/editor-rtl.css\";i:501;s:28:\"tag-cloud/editor-rtl.min.css\";i:502;s:20:\"tag-cloud/editor.css\";i:503;s:24:\"tag-cloud/editor.min.css\";i:504;s:23:\"tag-cloud/style-rtl.css\";i:505;s:27:\"tag-cloud/style-rtl.min.css\";i:506;s:19:\"tag-cloud/style.css\";i:507;s:23:\"tag-cloud/style.min.css\";i:508;s:28:\"template-part/editor-rtl.css\";i:509;s:32:\"template-part/editor-rtl.min.css\";i:510;s:24:\"template-part/editor.css\";i:511;s:28:\"template-part/editor.min.css\";i:512;s:27:\"template-part/theme-rtl.css\";i:513;s:31:\"template-part/theme-rtl.min.css\";i:514;s:23:\"template-part/theme.css\";i:515;s:27:\"template-part/theme.min.css\";i:516;s:30:\"term-description/style-rtl.css\";i:517;s:34:\"term-description/style-rtl.min.css\";i:518;s:26:\"term-description/style.css\";i:519;s:30:\"term-description/style.min.css\";i:520;s:27:\"text-columns/editor-rtl.css\";i:521;s:31:\"text-columns/editor-rtl.min.css\";i:522;s:23:\"text-columns/editor.css\";i:523;s:27:\"text-columns/editor.min.css\";i:524;s:26:\"text-columns/style-rtl.css\";i:525;s:30:\"text-columns/style-rtl.min.css\";i:526;s:22:\"text-columns/style.css\";i:527;s:26:\"text-columns/style.min.css\";i:528;s:19:\"verse/style-rtl.css\";i:529;s:23:\"verse/style-rtl.min.css\";i:530;s:15:\"verse/style.css\";i:531;s:19:\"verse/style.min.css\";i:532;s:20:\"video/editor-rtl.css\";i:533;s:24:\"video/editor-rtl.min.css\";i:534;s:16:\"video/editor.css\";i:535;s:20:\"video/editor.min.css\";i:536;s:19:\"video/style-rtl.css\";i:537;s:23:\"video/style-rtl.min.css\";i:538;s:15:\"video/style.css\";i:539;s:19:\"video/style.min.css\";i:540;s:19:\"video/theme-rtl.css\";i:541;s:23:\"video/theme-rtl.min.css\";i:542;s:15:\"video/theme.css\";i:543;s:19:\"video/theme.min.css\";}}','on'),
(126,'recovery_keys','a:0:{}','off'),
(127,'theme_mods_twentytwentyfive','a:1:{s:18:\"custom_css_post_id\";i:-1;}','auto'),
(128,'_transient_wp_styles_for_blocks','a:2:{s:4:\"hash\";s:32:\"f67278f44d65ef46340757a16c893655\";s:6:\"blocks\";a:52:{s:11:\"core/button\";s:0:\"\";s:14:\"core/site-logo\";s:0:\"\";s:18:\"core/post-template\";s:0:\"\";s:12:\"core/columns\";s:769:\":root :where(.wp-block-columns-is-layout-flow) > :first-child{margin-block-start: 0;}:root :where(.wp-block-columns-is-layout-flow) > :last-child{margin-block-end: 0;}:root :where(.wp-block-columns-is-layout-flow) > *{margin-block-start: var(--wp--preset--spacing--50);margin-block-end: 0;}:root :where(.wp-block-columns-is-layout-constrained) > :first-child{margin-block-start: 0;}:root :where(.wp-block-columns-is-layout-constrained) > :last-child{margin-block-end: 0;}:root :where(.wp-block-columns-is-layout-constrained) > *{margin-block-start: var(--wp--preset--spacing--50);margin-block-end: 0;}:root :where(.wp-block-columns-is-layout-flex){gap: var(--wp--preset--spacing--50);}:root :where(.wp-block-columns-is-layout-grid){gap: var(--wp--preset--spacing--50);}\";s:14:\"core/pullquote\";s:306:\":root :where(.wp-block-pullquote){font-size: var(--wp--preset--font-size--xx-large);font-weight: 300;line-height: 1.2;padding-top: var(--wp--preset--spacing--30);padding-bottom: var(--wp--preset--spacing--30);}:root :where(.wp-block-pullquote p:last-of-type){margin-bottom: var(--wp--preset--spacing--30);}\";s:32:\"c48738dcb285a3f6ab83acff204fc486\";s:106:\":root :where(.wp-block-pullquote cite){font-size: var(--wp--preset--font-size--small);font-style: normal;}\";s:11:\"core/avatar\";s:57:\":root :where(.wp-block-avatar img){border-radius: 100px;}\";s:12:\"core/buttons\";s:665:\":root :where(.wp-block-buttons-is-layout-flow) > :first-child{margin-block-start: 0;}:root :where(.wp-block-buttons-is-layout-flow) > :last-child{margin-block-end: 0;}:root :where(.wp-block-buttons-is-layout-flow) > *{margin-block-start: 16px;margin-block-end: 0;}:root :where(.wp-block-buttons-is-layout-constrained) > :first-child{margin-block-start: 0;}:root :where(.wp-block-buttons-is-layout-constrained) > :last-child{margin-block-end: 0;}:root :where(.wp-block-buttons-is-layout-constrained) > *{margin-block-start: 16px;margin-block-end: 0;}:root :where(.wp-block-buttons-is-layout-flex){gap: 16px;}:root :where(.wp-block-buttons-is-layout-grid){gap: 16px;}\";s:9:\"core/code\";s:427:\":root :where(.wp-block-code){background-color: var(--wp--preset--color--accent-5);color: var(--wp--preset--color--contrast);font-family: var(--wp--preset--font-family--fira-code);font-size: var(--wp--preset--font-size--medium);font-weight: 300;padding-top: var(--wp--preset--spacing--40);padding-right: var(--wp--preset--spacing--40);padding-bottom: var(--wp--preset--spacing--40);padding-left: var(--wp--preset--spacing--40);}\";s:24:\"core/comment-author-name\";s:169:\":root :where(.wp-block-comment-author-name){color: var(--wp--preset--color--accent-4);font-size: var(--wp--preset--font-size--small);margin-top: 5px;margin-bottom: 0px;}\";s:32:\"c0002c260f8238c4212f3e4c369fc4f7\";s:143:\":root :where(.wp-block-comment-author-name a:where(:not(.wp-element-button))){color: var(--wp--preset--color--accent-4);text-decoration: none;}\";s:32:\"1e7c38b45537b325dbbbaec17a301676\";s:112:\":root :where(.wp-block-comment-author-name a:where(:not(.wp-element-button)):hover){text-decoration: underline;}\";s:20:\"core/comment-content\";s:178:\":root :where(.wp-block-comment-content){font-size: var(--wp--preset--font-size--medium);margin-top: var(--wp--preset--spacing--30);margin-bottom: var(--wp--preset--spacing--30);}\";s:17:\"core/comment-date\";s:127:\":root :where(.wp-block-comment-date){color: var(--wp--preset--color--contrast);font-size: var(--wp--preset--font-size--small);}\";s:32:\"c83ca7b3e52884c70f7830c54f99b318\";s:114:\":root :where(.wp-block-comment-date a:where(:not(.wp-element-button))){color: var(--wp--preset--color--contrast);}\";s:22:\"core/comment-edit-link\";s:90:\":root :where(.wp-block-comment-edit-link){font-size: var(--wp--preset--font-size--small);}\";s:32:\"41d70710612536a90e368c12bcb0efea\";s:119:\":root :where(.wp-block-comment-edit-link a:where(:not(.wp-element-button))){color: var(--wp--preset--color--contrast);}\";s:23:\"core/comment-reply-link\";s:91:\":root :where(.wp-block-comment-reply-link){font-size: var(--wp--preset--font-size--small);}\";s:32:\"13c96340dbf37700add1f4c5cae19f3e\";s:120:\":root :where(.wp-block-comment-reply-link a:where(:not(.wp-element-button))){color: var(--wp--preset--color--contrast);}\";s:23:\"core/post-comments-form\";s:565:\":root :where(.wp-block-post-comments-form){font-size: var(--wp--preset--font-size--medium);padding-top: var(--wp--preset--spacing--40);padding-bottom: var(--wp--preset--spacing--40);}:root :where(.wp-block-post-comments-form textarea, .wp-block-post-comments-form input:not([type=submit])){border-radius:.25rem; border-color: var(--wp--preset--color--accent-6) !important;}:root :where(.wp-block-post-comments-form input[type=checkbox]){margin:0 .2rem 0 0 !important;}:root :where(.wp-block-post-comments-form label){font-size: var(--wp--preset--font-size--small);}\";s:24:\"core/comments-pagination\";s:182:\":root :where(.wp-block-comments-pagination){font-size: var(--wp--preset--font-size--medium);margin-top: var(--wp--preset--spacing--40);margin-bottom: var(--wp--preset--spacing--40);}\";s:29:\"core/comments-pagination-next\";s:98:\":root :where(.wp-block-comments-pagination-next){font-size: var(--wp--preset--font-size--medium);}\";s:32:\"core/comments-pagination-numbers\";s:101:\":root :where(.wp-block-comments-pagination-numbers){font-size: var(--wp--preset--font-size--medium);}\";s:33:\"core/comments-pagination-previous\";s:102:\":root :where(.wp-block-comments-pagination-previous){font-size: var(--wp--preset--font-size--medium);}\";s:14:\"core/post-date\";s:124:\":root :where(.wp-block-post-date){color: var(--wp--preset--color--accent-4);font-size: var(--wp--preset--font-size--small);}\";s:32:\"ac0d4e00f5ec22d14451759983e5bd43\";s:133:\":root :where(.wp-block-post-date a:where(:not(.wp-element-button))){color: var(--wp--preset--color--accent-4);text-decoration: none;}\";s:32:\"0ae6ffd1b886044c2da62d75d05ab13d\";s:102:\":root :where(.wp-block-post-date a:where(:not(.wp-element-button)):hover){text-decoration: underline;}\";s:25:\"core/post-navigation-link\";s:94:\":root :where(.wp-block-post-navigation-link){font-size: var(--wp--preset--font-size--medium);}\";s:15:\"core/post-terms\";s:158:\":root :where(.wp-block-post-terms){font-size: var(--wp--preset--font-size--small);font-weight: 600;}:root :where(.wp-block-post-terms a){white-space: nowrap;}\";s:15:\"core/post-title\";s:0:\"\";s:32:\"bb496d3fcd9be3502ce57ff8281e5687\";s:92:\":root :where(.wp-block-post-title a:where(:not(.wp-element-button))){text-decoration: none;}\";s:32:\"12380ab98fdc81351bb32a39bbfc9249\";s:103:\":root :where(.wp-block-post-title a:where(:not(.wp-element-button)):hover){text-decoration: underline;}\";s:10:\"core/quote\";s:1315:\":root :where(.wp-block-quote){border-color: currentColor;border-width: 0 0 0 2px;border-style: solid;font-size: var(--wp--preset--font-size--large);font-weight: 300;margin-right: 0;margin-left: 0;padding-top: var(--wp--preset--spacing--30);padding-right: var(--wp--preset--spacing--40);padding-bottom: var(--wp--preset--spacing--30);padding-left: var(--wp--preset--spacing--40);}:root :where(.wp-block-quote-is-layout-flow) > :first-child{margin-block-start: 0;}:root :where(.wp-block-quote-is-layout-flow) > :last-child{margin-block-end: 0;}:root :where(.wp-block-quote-is-layout-flow) > *{margin-block-start: var(--wp--preset--spacing--30);margin-block-end: 0;}:root :where(.wp-block-quote-is-layout-constrained) > :first-child{margin-block-start: 0;}:root :where(.wp-block-quote-is-layout-constrained) > :last-child{margin-block-end: 0;}:root :where(.wp-block-quote-is-layout-constrained) > *{margin-block-start: var(--wp--preset--spacing--30);margin-block-end: 0;}:root :where(.wp-block-quote-is-layout-flex){gap: var(--wp--preset--spacing--30);}:root :where(.wp-block-quote-is-layout-grid){gap: var(--wp--preset--spacing--30);}:root :where(.wp-block-quote.has-text-align-right ){border-width: 0 2px 0 0;}:root :where(.wp-block-quote.has-text-align-center ){border-width: 0;border-inline: 0; padding-inline: 0;}\";s:32:\"1de7a22e22013106efc5be82788cb6c0\";s:176:\":root :where(.wp-block-quote cite){font-size: var(--wp--preset--font-size--small);font-style: normal;font-weight: 300;}:root :where(.wp-block-quote cite sub){font-size: 0.65em}\";s:21:\"core/query-pagination\";s:107:\":root :where(.wp-block-query-pagination){font-size: var(--wp--preset--font-size--medium);font-weight: 500;}\";s:11:\"core/search\";s:380:\":root :where(.wp-block-search .wp-block-search__label, .wp-block-search .wp-block-search__input, .wp-block-search .wp-block-search__button){font-size: var(--wp--preset--font-size--medium);line-height: 1.6;}:root :where(.wp-block-search .wp-block-search__input){border-radius:3.125rem;padding-left:1.5625rem;padding-right:1.5625rem;border-color:var(--wp--preset--color--accent-6);}\";s:32:\"14fa6a3d0cfbde171cbc0fb04aa8a6cf\";s:138:\":root :where(.wp-block-search .wp-element-button,.wp-block-search  .wp-block-button__link){border-radius: 3.125rem;margin-left: 1.125rem;}\";s:32:\"05993ee2f3de94b5d1350998a7e9b6b0\";s:130:\":root :where(.wp-block-search .wp-element-button:hover,.wp-block-search  .wp-block-button__link:hover){border-color: transparent;}\";s:14:\"core/separator\";s:148:\":root :where(.wp-block-separator){border-color: currentColor;border-width: 0 0 1px 0;border-style: solid;color: var(--wp--preset--color--accent-6);}\";s:17:\"core/site-tagline\";s:86:\":root :where(.wp-block-site-tagline){font-size: var(--wp--preset--font-size--medium);}\";s:15:\"core/site-title\";s:75:\":root :where(.wp-block-site-title){font-weight: 700;letter-spacing: -.5px;}\";s:32:\"f513d889cf971b13995cc3fffed2f39b\";s:92:\":root :where(.wp-block-site-title a:where(:not(.wp-element-button))){text-decoration: none;}\";s:32:\"22c37a317cc0ebd50155b5ad78564f37\";s:103:\":root :where(.wp-block-site-title a:where(:not(.wp-element-button)):hover){text-decoration: underline;}\";s:21:\"core/term-description\";s:90:\":root :where(.wp-block-term-description){font-size: var(--wp--preset--font-size--medium);}\";s:15:\"core/navigation\";s:84:\":root :where(.wp-block-navigation){font-size: var(--wp--preset--font-size--medium);}\";s:32:\"25289a01850f5a0264ddb79a9a3baf3d\";s:92:\":root :where(.wp-block-navigation a:where(:not(.wp-element-button))){text-decoration: none;}\";s:32:\"026c04da08398d655a95047f1f235d97\";s:103:\":root :where(.wp-block-navigation a:where(:not(.wp-element-button)):hover){text-decoration: underline;}\";s:9:\"core/list\";s:52:\":root :where(.wp-block-list li){margin-top: 0.5rem;}\";s:12:\"core/heading\";s:0:\"\";s:14:\"core/paragraph\";s:0:\"\";s:10:\"core/group\";s:0:\"\";s:11:\"core/column\";s:0:\"\";}}','on'),
(158,'finished_updating_comment_type','1','auto'),
(170,'_site_transient_wp_plugin_dependencies_plugin_data','a:0:{}','off'),
(171,'recently_activated','a:1:{s:19:\"akismet/akismet.php\";i:1758406900;}','off'),
(180,'action_scheduler_hybrid_store_demarkation','6','auto'),
(181,'schema-ActionScheduler_StoreSchema','8.0.1755440053','auto'),
(182,'schema-ActionScheduler_LoggerSchema','3.0.1755440053','auto'),
(185,'woocommerce_newly_installed','no','auto'),
(186,'woocommerce_schema_version','920','auto'),
(187,'woocommerce_store_address','','on'),
(188,'woocommerce_store_address_2','','on'),
(189,'woocommerce_store_city','','on'),
(190,'woocommerce_default_country','RU','on'),
(191,'woocommerce_store_postcode','','on'),
(192,'woocommerce_allowed_countries','all','on'),
(193,'woocommerce_all_except_countries','','on'),
(194,'woocommerce_specific_allowed_countries','','on'),
(195,'woocommerce_ship_to_countries','','on'),
(196,'woocommerce_specific_ship_to_countries','','on'),
(197,'woocommerce_default_customer_address','base','on'),
(198,'woocommerce_calc_taxes','no','on'),
(199,'woocommerce_enable_coupons','yes','on'),
(200,'woocommerce_calc_discounts_sequentially','no','off'),
(201,'woocommerce_currency','RUB','on'),
(202,'woocommerce_currency_pos','right_space','on'),
(203,'woocommerce_price_thousand_sep',' ','on'),
(204,'woocommerce_price_decimal_sep',',','on'),
(205,'woocommerce_price_num_decimals','2','on'),
(206,'woocommerce_shop_page_id','7','on'),
(207,'woocommerce_cart_redirect_after_add','no','on'),
(208,'woocommerce_enable_ajax_add_to_cart','yes','on'),
(209,'woocommerce_placeholder_image','6','on'),
(210,'woocommerce_weight_unit','kg','on'),
(211,'woocommerce_dimension_unit','cm','on'),
(212,'woocommerce_enable_reviews','yes','on'),
(213,'woocommerce_review_rating_verification_label','yes','off'),
(214,'woocommerce_review_rating_verification_required','no','off'),
(215,'woocommerce_enable_review_rating','yes','on'),
(216,'woocommerce_review_rating_required','yes','off'),
(217,'woocommerce_manage_stock','yes','on'),
(218,'woocommerce_hold_stock_minutes','60','off'),
(219,'woocommerce_notify_low_stock','yes','off'),
(220,'woocommerce_notify_no_stock','yes','off'),
(221,'woocommerce_stock_email_recipient','adminAlpaca@shop.com','off'),
(222,'woocommerce_notify_low_stock_amount','2','off'),
(223,'woocommerce_notify_no_stock_amount','0','on'),
(224,'woocommerce_hide_out_of_stock_items','no','on'),
(225,'woocommerce_stock_format','','on'),
(226,'woocommerce_file_download_method','force','off'),
(227,'woocommerce_downloads_redirect_fallback_allowed','no','off'),
(228,'woocommerce_downloads_require_login','no','off'),
(229,'woocommerce_downloads_grant_access_after_payment','yes','off'),
(230,'woocommerce_downloads_deliver_inline','','off'),
(231,'woocommerce_downloads_add_hash_to_filename','yes','on'),
(232,'woocommerce_downloads_count_partial','yes','on'),
(234,'woocommerce_attribute_lookup_direct_updates','no','on'),
(235,'woocommerce_attribute_lookup_optimized_updates','no','on'),
(236,'woocommerce_product_match_featured_image_by_sku','no','on'),
(237,'woocommerce_prices_include_tax','no','on'),
(238,'woocommerce_tax_based_on','shipping','on'),
(239,'woocommerce_shipping_tax_class','inherit','on'),
(240,'woocommerce_tax_round_at_subtotal','no','on'),
(241,'woocommerce_tax_classes','','on'),
(242,'woocommerce_tax_display_shop','excl','on'),
(243,'woocommerce_tax_display_cart','excl','on'),
(244,'woocommerce_price_display_suffix','','on'),
(245,'woocommerce_tax_total_display','itemized','off'),
(246,'woocommerce_enable_shipping_calc','yes','off'),
(247,'woocommerce_shipping_cost_requires_address','no','on'),
(248,'woocommerce_shipping_hide_rates_when_free','no','off'),
(249,'woocommerce_ship_to_destination','billing','off'),
(250,'woocommerce_shipping_debug_mode','no','on'),
(251,'woocommerce_enable_guest_checkout','yes','off'),
(252,'woocommerce_enable_checkout_login_reminder','no','off'),
(253,'woocommerce_enable_delayed_account_creation','no','off'),
(254,'woocommerce_enable_signup_and_login_from_checkout','no','off'),
(255,'woocommerce_enable_myaccount_registration','yes','off'),
(256,'woocommerce_registration_generate_password','no','off'),
(257,'woocommerce_registration_generate_username','yes','off'),
(258,'woocommerce_erasure_request_removes_order_data','no','off'),
(259,'woocommerce_erasure_request_removes_download_data','no','off'),
(260,'woocommerce_allow_bulk_remove_personal_data','no','off'),
(261,'woocommerce_registration_privacy_policy_text','Ваши личные данные будут использоваться для упрощения вашего дальнейшего взаимодействия с сайтом, управления доступом к вашему аккаунту и других целей, описанных в документе [privacy_policy].','on'),
(262,'woocommerce_checkout_privacy_policy_text','Ваши персональные данные будут использоваться для обработки ваших заказов, упрощения вашего взаимодействия с сайтом и для прочих целей, описанных в документе [privacy_policy].','on'),
(263,'woocommerce_delete_inactive_accounts','a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}','off'),
(264,'woocommerce_trash_pending_orders','a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}','off'),
(265,'woocommerce_trash_failed_orders','a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}','off'),
(266,'woocommerce_trash_cancelled_orders','a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}','off'),
(267,'woocommerce_anonymize_refunded_orders','a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}','off'),
(268,'woocommerce_anonymize_completed_orders','a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}','off'),
(269,'woocommerce_email_from_name','AlpacaShop','off'),
(270,'woocommerce_email_from_address','adminAlpaca@shop.com','off'),
(271,'woocommerce_email_header_image','','off'),
(272,'woocommerce_email_header_image_width','120','on'),
(273,'woocommerce_email_header_alignment','left','on'),
(274,'woocommerce_email_font_family','Helvetica','on'),
(275,'woocommerce_email_footer_text','{site_title}<br />{store_address}','off'),
(276,'woocommerce_email_base_color','#111111','off'),
(277,'woocommerce_email_background_color','#FFFFFF','off'),
(278,'woocommerce_email_body_background_color','#FFFFFF','off'),
(279,'woocommerce_email_text_color','#111111','off'),
(280,'woocommerce_email_footer_text_color','#111111','off'),
(281,'woocommerce_email_auto_sync_with_theme','yes','off'),
(282,'woocommerce_pos_store_name','AlpacaShop','on'),
(283,'woocommerce_pos_store_address','','on'),
(284,'woocommerce_pos_store_phone','','on'),
(285,'woocommerce_pos_store_email','adminAlpaca@shop.com','on'),
(286,'woocommerce_pos_refund_returns_policy','','on'),
(287,'woocommerce_cart_page_id','8','off'),
(288,'woocommerce_checkout_page_id','9','off'),
(289,'woocommerce_myaccount_page_id','10','off'),
(290,'woocommerce_terms_page_id','','off'),
(291,'woocommerce_force_ssl_checkout','no','on'),
(292,'woocommerce_unforce_ssl_checkout','no','on'),
(293,'woocommerce_checkout_pay_endpoint','order-pay','on'),
(294,'woocommerce_checkout_order_received_endpoint','order-received','on'),
(295,'woocommerce_myaccount_add_payment_method_endpoint','add-payment-method','on'),
(296,'woocommerce_myaccount_delete_payment_method_endpoint','delete-payment-method','on'),
(297,'woocommerce_myaccount_set_default_payment_method_endpoint','set-default-payment-method','on'),
(298,'woocommerce_myaccount_orders_endpoint','orders','on'),
(299,'woocommerce_myaccount_view_order_endpoint','view-order','on'),
(300,'woocommerce_myaccount_downloads_endpoint','downloads','on'),
(301,'woocommerce_myaccount_edit_account_endpoint','edit-account','on'),
(302,'woocommerce_myaccount_edit_address_endpoint','edit-address','on'),
(303,'woocommerce_myaccount_payment_methods_endpoint','payment-methods','on'),
(304,'woocommerce_myaccount_lost_password_endpoint','lost-password','on'),
(305,'woocommerce_logout_endpoint','customer-logout','on'),
(306,'woocommerce_api_enabled','no','on'),
(307,'woocommerce_allow_tracking','yes','on'),
(308,'woocommerce_show_marketplace_suggestions','yes','off'),
(309,'woocommerce_custom_orders_table_enabled','yes','on'),
(310,'woocommerce_analytics_enabled','yes','on'),
(311,'woocommerce_feature_rate_limit_checkout_enabled','no','on'),
(312,'woocommerce_feature_order_attribution_enabled','yes','on'),
(313,'woocommerce_feature_site_visibility_badge_enabled','yes','on'),
(314,'woocommerce_feature_remote_logging_enabled','yes','on'),
(315,'woocommerce_feature_email_improvements_enabled','yes','on'),
(318,'woocommerce_email_improvements_disabled_count','1','auto'),
(319,'woocommerce_email_improvements_first_disabled_at','2025-08-17 14:14:14','auto'),
(320,'woocommerce_email_improvements_last_disabled_at','2025-08-17 14:14:14','auto'),
(321,'woocommerce_feature_blueprint_enabled','yes','on'),
(322,'woocommerce_hpos_fts_index_enabled','no','on'),
(323,'woocommerce_hpos_datastore_caching_enabled','no','on'),
(324,'woocommerce_feature_block_email_editor_enabled','no','on'),
(325,'woocommerce_feature_point_of_sale_enabled','yes','on'),
(326,'woocommerce_feature_experimental-iapi-mini-cart_enabled','no','on'),
(327,'woocommerce_feature_cost_of_goods_sold_enabled','no','on'),
(328,'woocommerce_single_image_width','600','on'),
(329,'woocommerce_thumbnail_image_width','300','on'),
(330,'woocommerce_checkout_highlight_required_fields','yes','on'),
(331,'woocommerce_demo_store','no','off'),
(332,'wc_downloads_approved_directories_mode','enabled','auto'),
(333,'woocommerce_permalinks','a:5:{s:12:\"product_base\";s:8:\"/product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}','auto'),
(334,'current_theme_supports_woocommerce','yes','auto'),
(335,'woocommerce_queue_flush_rewrite_rules','no','auto'),
(336,'_transient_wc_attribute_taxonomies','a:0:{}','on'),
(338,'default_product_cat','15','auto'),
(340,'woocommerce_refund_returns_page_id','11','auto'),
(343,'woocommerce_paypal_settings','a:23:{s:7:\"enabled\";s:2:\"no\";s:5:\"title\";s:6:\"PayPal\";s:11:\"description\";s:205:\"Оплата через PayPal; вы сможете произвести оплату с помощью банковской карты, если у вас нет аккаунта в системе PayPal.\";s:5:\"email\";s:20:\"adminAlpaca@shop.com\";s:8:\"advanced\";s:0:\"\";s:8:\"testmode\";s:2:\"no\";s:5:\"debug\";s:2:\"no\";s:16:\"ipn_notification\";s:3:\"yes\";s:14:\"receiver_email\";s:20:\"adminAlpaca@shop.com\";s:14:\"identity_token\";s:0:\"\";s:14:\"invoice_prefix\";s:3:\"WC-\";s:13:\"send_shipping\";s:3:\"yes\";s:16:\"address_override\";s:2:\"no\";s:13:\"paymentaction\";s:4:\"sale\";s:9:\"image_url\";s:0:\"\";s:11:\"api_details\";s:0:\"\";s:12:\"api_username\";s:0:\"\";s:12:\"api_password\";s:0:\"\";s:13:\"api_signature\";s:0:\"\";s:20:\"sandbox_api_username\";s:0:\"\";s:20:\"sandbox_api_password\";s:0:\"\";s:21:\"sandbox_api_signature\";s:0:\"\";s:12:\"_should_load\";s:2:\"no\";}','on'),
(344,'woocommerce_version','10.1.0','auto'),
(345,'woocommerce_db_version','10.1.0','auto'),
(346,'woocommerce_store_id','fb8506c4-d955-40a3-80b4-a4c2a773400c','auto'),
(347,'woocommerce_admin_install_timestamp','1755440054','auto'),
(348,'woocommerce_inbox_variant_assignment','8','auto'),
(349,'woocommerce_remote_variant_assignment','1','auto'),
(350,'woocommerce_attribute_lookup_enabled','no','auto'),
(354,'_transient_jetpack_autoloader_plugin_paths','a:1:{i:0;s:29:\"{{WP_PLUGIN_DIR}}/woocommerce\";}','on'),
(355,'action_scheduler_lock_async-request-runner','68cf2d126faa49.24760452|1758408014','no'),
(356,'woocommerce_maxmind_geolocation_settings','a:1:{s:15:\"database_prefix\";s:32:\"GedUtDuNN2Qoj2baDTAwkO39o2RtVyDG\";}','on'),
(357,'_transient_woocommerce_webhook_ids_status_active','a:0:{}','on'),
(358,'widget_woocommerce_widget_cart','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(359,'widget_woocommerce_layered_nav_filters','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(360,'widget_woocommerce_layered_nav','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(361,'widget_woocommerce_price_filter','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(362,'widget_woocommerce_product_categories','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(363,'widget_woocommerce_product_search','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(364,'widget_woocommerce_product_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(365,'widget_woocommerce_products','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(366,'widget_woocommerce_recently_viewed_products','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(367,'widget_woocommerce_top_rated_products','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(368,'widget_woocommerce_recent_reviews','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(369,'widget_woocommerce_rating_filter','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(370,'widget_wc_brands_brand_description','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(371,'widget_woocommerce_brand_nav','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(372,'widget_wc_brands_brand_thumbnails','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(378,'jetpack_options','a:1:{s:14:\"last_heartbeat\";i:1758406881;}','auto'),
(379,'_transient_timeout_woocommerce_blocks_asset_api_script_data','1760544490','off'),
(380,'_transient_woocommerce_blocks_asset_api_script_data','{\"script_data\":{\"assets\\/client\\/blocks\\/wc-settings.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/wc-settings.js\",\"version\":\"4f2e7067bd1c84cca43f\",\"dependencies\":[\"wc-types\",\"wp-hooks\",\"wp-polyfill\"]},\"assets\\/client\\/blocks\\/wc-types.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/wc-types.js\",\"version\":\"35dee88875b85ff65531\",\"dependencies\":[\"wp-polyfill\"]},\"assets\\/client\\/blocks\\/wc-blocks-middleware.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/wc-blocks-middleware.js\",\"version\":\"d79dedade2f2e4dc9df4\",\"dependencies\":[\"wp-api-fetch\",\"wp-polyfill\",\"wp-url\"]},\"assets\\/client\\/blocks\\/wc-blocks-data.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/wc-blocks-data.js\",\"version\":\"d0ad299087b6ae74378b\",\"dependencies\":[\"wc-blocks-checkout-events\",\"wc-blocks-registry\",\"wc-settings\",\"wc-types\",\"wp-api-fetch\",\"wp-data\",\"wp-data-controls\",\"wp-deprecated\",\"wp-dom\",\"wp-element\",\"wp-hooks\",\"wp-html-entities\",\"wp-i18n\",\"wp-is-shallow-equal\",\"wp-notices\",\"wp-polyfill\",\"wp-url\"]},\"assets\\/client\\/blocks\\/wc-blocks-vendors.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/wc-blocks-vendors.js\",\"version\":\"1c5f828afef2f98a6774\",\"dependencies\":[\"wp-polyfill\"]},\"assets\\/client\\/blocks\\/wc-blocks-registry.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/wc-blocks-registry.js\",\"version\":\"a16aa912ffa0a15063f1\",\"dependencies\":[\"react-jsx-runtime\",\"wc-settings\",\"wp-data\",\"wp-deprecated\",\"wp-element\",\"wp-hooks\",\"wp-polyfill\"]},\"assets\\/client\\/blocks\\/wc-blocks.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/wc-blocks.js\",\"version\":\"0db759a8a6e010732c50\",\"dependencies\":[\"react-jsx-runtime\",\"wp-blocks\",\"wp-compose\",\"wp-element\",\"wp-hooks\",\"wp-polyfill\"]},\"assets\\/client\\/blocks\\/wc-blocks-shared-context.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/wc-blocks-shared-context.js\",\"version\":\"1d9ff4f03584490ad390\",\"dependencies\":[\"react-jsx-runtime\",\"wp-element\",\"wp-polyfill\"]},\"assets\\/client\\/blocks\\/wc-blocks-shared-hocs.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/wc-blocks-shared-hocs.js\",\"version\":\"99a2a0de38bfa707fc7b\",\"dependencies\":[\"react-jsx-runtime\",\"wc-blocks-data-store\",\"wc-blocks-shared-context\",\"wc-types\",\"wp-data\",\"wp-element\",\"wp-is-shallow-equal\",\"wp-polyfill\"]},\"assets\\/client\\/blocks\\/price-format.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/price-format.js\",\"version\":\"57e176e7cc02bdd27978\",\"dependencies\":[\"wc-settings\",\"wp-polyfill\"]},\"assets\\/client\\/blocks\\/wc-blocks-frontend-vendors-frontend.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/wc-blocks-frontend-vendors-frontend.js\",\"version\":\"2a67f05c7f92833d4e15\",\"dependencies\":[\"wp-polyfill\"]},\"assets\\/client\\/blocks\\/wc-cart-checkout-vendors-frontend.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/wc-cart-checkout-vendors-frontend.js\",\"version\":\"c939a893efb4febadc26\",\"dependencies\":[\"wp-polyfill\"]},\"assets\\/client\\/blocks\\/wc-cart-checkout-base-frontend.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/wc-cart-checkout-base-frontend.js\",\"version\":\"4929936dde15d33bd184\",\"dependencies\":[\"wp-polyfill\"]},\"assets\\/client\\/blocks\\/blocks-checkout.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/blocks-checkout.js\",\"version\":\"a1c2e7c31247ee1ae717\",\"dependencies\":[\"wc-cart-checkout-base\",\"wc-cart-checkout-vendors\",\"react\",\"react-dom\",\"react-jsx-runtime\",\"wc-blocks-components\",\"wc-blocks-data-store\",\"wc-blocks-registry\",\"wc-settings\",\"wc-types\",\"wp-a11y\",\"wp-compose\",\"wp-data\",\"wp-deprecated\",\"wp-element\",\"wp-html-entities\",\"wp-i18n\",\"wp-is-shallow-equal\",\"wp-notices\",\"wp-polyfill\",\"wp-primitives\",\"wp-warning\"]},\"assets\\/client\\/blocks\\/blocks-checkout-events.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/blocks-checkout-events.js\",\"version\":\"2d0fd4590f6cc663947c\",\"dependencies\":[\"wc-types\",\"wp-polyfill\"]},\"assets\\/client\\/blocks\\/blocks-components.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/blocks-components.js\",\"version\":\"14f739e1c451e591f9da\",\"dependencies\":[\"wc-cart-checkout-base\",\"wc-cart-checkout-vendors\",\"react\",\"react-dom\",\"react-jsx-runtime\",\"wc-blocks-data-store\",\"wc-settings\",\"wc-types\",\"wp-a11y\",\"wp-compose\",\"wp-data\",\"wp-deprecated\",\"wp-element\",\"wp-html-entities\",\"wp-i18n\",\"wp-notices\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/wc-schema-parser.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/wc-schema-parser.js\",\"version\":\"f762078aeb4207fe9c3d\",\"dependencies\":[\"wp-polyfill\"]},\"assets\\/client\\/admin\\/customer-effort-score\\/index.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/admin\\/customer-effort-score\\/index.js\",\"version\":\"ebdc0b2d7487174621e6\",\"dependencies\":[\"react\",\"wc-experimental\",\"wc-navigation\",\"wc-store-data\",\"wc-tracks\",\"wp-api-fetch\",\"wp-components\",\"wp-compose\",\"wp-data\",\"wp-data-controls\",\"wp-element\",\"wp-i18n\"]},\"assets\\/client\\/blocks\\/customer-account.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/customer-account.js\",\"version\":\"eb8aec89095d4f916023\",\"dependencies\":[\"react-jsx-runtime\",\"wc-settings\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-element\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/mini-cart.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/mini-cart.js\",\"version\":\"84848da30dd5e5ee0092\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wc-price-format\",\"wc-settings\",\"wc-types\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-data\",\"wp-dom\",\"wp-element\",\"wp-hooks\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/mini-cart-frontend.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/mini-cart-frontend.js\",\"version\":\"f7403ae8c18597571632\",\"dependencies\":[\"wc-cart-checkout-base\",\"wc-cart-checkout-vendors\",\"wc-blocks-data-store\",\"wc-price-format\",\"wc-settings\",\"wc-types\",\"wp-data\",\"wp-i18n\",\"wp-polyfill\"]},\"assets\\/client\\/blocks\\/mini-cart-title-label-block.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/mini-cart-title-label-block.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/mini-cart-title-items-counter-block.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/mini-cart-title-items-counter-block.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/mini-cart-title-block.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/mini-cart-title-block.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/mini-cart-products-table-block.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/mini-cart-products-table-block.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/mini-cart-items-block.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/mini-cart-items-block.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/mini-cart-cart-button-block.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/mini-cart-cart-button-block.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/mini-cart-checkout-button-block.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/mini-cart-checkout-button-block.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/mini-cart-footer-block.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/mini-cart-footer-block.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/filled-mini-cart-contents-block.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/filled-mini-cart-contents-block.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/mini-cart-shopping-button-block.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/mini-cart-shopping-button-block.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/empty-mini-cart-contents-block.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/empty-mini-cart-contents-block.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/mini-cart-contents.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/mini-cart-contents.js\",\"version\":\"dcd56c9c2a1c3ac052dc\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wc-blocks-checkout\",\"wc-blocks-components\",\"wc-blocks-data-store\",\"wc-blocks-registry\",\"wc-price-format\",\"wc-settings\",\"wc-types\",\"wp-a11y\",\"wp-autop\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-data\",\"wp-deprecated\",\"wp-dom\",\"wp-element\",\"wp-hooks\",\"wp-html-entities\",\"wp-i18n\",\"wp-is-shallow-equal\",\"wp-keycodes\",\"wp-polyfill\",\"wp-primitives\",\"wp-wordcount\"]},\"assets\\/client\\/blocks\\/mini-cart-component-frontend.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/mini-cart-component-frontend.js\",\"version\":\"996b487bcdeb2a438dc9\",\"dependencies\":[\"wc-cart-checkout-base\",\"wc-cart-checkout-vendors\",\"react\",\"react-jsx-runtime\",\"wc-blocks-checkout\",\"wc-blocks-components\",\"wc-blocks-data-store\",\"wc-blocks-registry\",\"wc-price-format\",\"wc-settings\",\"wc-types\",\"wp-a11y\",\"wp-autop\",\"wp-compose\",\"wp-data\",\"wp-deprecated\",\"wp-element\",\"wp-hooks\",\"wp-html-entities\",\"wp-i18n\",\"wp-is-shallow-equal\",\"wp-keycodes\",\"wp-polyfill\",\"wp-primitives\",\"wp-style-engine\",\"wp-wordcount\"]},\"assets\\/client\\/blocks\\/mini-cart-contents-block\\/footer-frontend.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/mini-cart-contents-block\\/footer-frontend.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/mini-cart-contents-block\\/products-table-frontend.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/mini-cart-contents-block\\/products-table-frontend.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/mini-cart-contents-block\\/filled-cart-frontend.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/mini-cart-contents-block\\/filled-cart-frontend.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/mini-cart-contents-block\\/title-style.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/mini-cart-contents-block\\/title-style.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/mini-cart-contents-block\\/title-items-counter-frontend.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/mini-cart-contents-block\\/title-items-counter-frontend.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/mini-cart-contents-block\\/shopping-button-frontend.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/mini-cart-contents-block\\/shopping-button-frontend.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/mini-cart-contents-block\\/shopping-button-style.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/mini-cart-contents-block\\/shopping-button-style.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/mini-cart-contents-block\\/checkout-button-frontend.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/mini-cart-contents-block\\/checkout-button-frontend.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/mini-cart-contents-block\\/items-frontend.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/mini-cart-contents-block\\/items-frontend.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/mini-cart-contents-block\\/title-label-style.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/mini-cart-contents-block\\/title-label-style.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/mini-cart-contents-block\\/checkout-button-style.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/mini-cart-contents-block\\/checkout-button-style.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/mini-cart-contents-block\\/title-items-counter-style.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/mini-cart-contents-block\\/title-items-counter-style.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/mini-cart-contents-block\\/empty-cart-frontend.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/mini-cart-contents-block\\/empty-cart-frontend.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/mini-cart-contents-block\\/title-label-frontend.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/mini-cart-contents-block\\/title-label-frontend.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/mini-cart-contents-block\\/title-frontend.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/mini-cart-contents-block\\/title-frontend.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/mini-cart-contents-block\\/empty-cart-style.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/mini-cart-contents-block\\/empty-cart-style.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/mini-cart-contents-block\\/cart-button-frontend.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/mini-cart-contents-block\\/cart-button-frontend.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/mini-cart-contents-block\\/cart-button-style.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/mini-cart-contents-block\\/cart-button-style.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/mini-cart-contents-block\\/items-style.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/mini-cart-contents-block\\/items-style.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/mini-cart-contents-block\\/filled-cart-style.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/mini-cart-contents-block\\/filled-cart-style.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/mini-cart-contents-block\\/footer-style.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/mini-cart-contents-block\\/footer-style.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/cart-line-items--mini-cart-contents-block\\/products-table-frontend.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/cart-line-items--mini-cart-contents-block\\/products-table-frontend.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/wc-shipping-method-pickup-location.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/wc-shipping-method-pickup-location.js\",\"version\":\"0446a66f2604add5f739\",\"dependencies\":[\"react\",\"react-dom\",\"react-jsx-runtime\",\"wc-settings\",\"wc-types\",\"wp-api-fetch\",\"wp-components\",\"wp-data\",\"wp-element\",\"wp-i18n\",\"wp-notices\",\"wp-polyfill\",\"wp-primitives\",\"wp-url\"]},\"assets\\/client\\/blocks\\/breadcrumbs.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/breadcrumbs.js\",\"version\":\"707d9a3ce1ce34bfa957\",\"dependencies\":[\"react-jsx-runtime\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-element\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/store-notices.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/store-notices.js\",\"version\":\"55ef31f3cab5ed0fde09\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wp-a11y\",\"wp-block-editor\",\"wp-blocks\",\"wp-element\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/product-results-count.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-results-count.js\",\"version\":\"abbeb48c5765e1441556\",\"dependencies\":[\"react-jsx-runtime\",\"wp-block-editor\",\"wp-blocks\",\"wp-element\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/catalog-sorting.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/catalog-sorting.js\",\"version\":\"ed06ff482496d2720cf1\",\"dependencies\":[\"react-jsx-runtime\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-element\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/product-template.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-template.js\",\"version\":\"a406c995c6cdc68ec95a\",\"dependencies\":[\"react-jsx-runtime\",\"wc-blocks-shared-context\",\"wc-settings\",\"wc-types\",\"wp-api-fetch\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-compose\",\"wp-core-data\",\"wp-data\",\"wp-element\",\"wp-i18n\",\"wp-polyfill\",\"wp-url\"]},\"assets\\/client\\/blocks\\/product-button.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-button.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/product-collection-no-results.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-collection-no-results.js\",\"version\":\"5605fcd916d6586c6ea1\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wp-block-editor\",\"wp-blocks\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/product-collection.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-collection.js\",\"version\":\"7a950dc057ed30631805\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wc-blocks-registry\",\"wc-customer-effort-score\",\"wc-price-format\",\"wc-settings\",\"wc-types\",\"wp-api-fetch\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-compose\",\"wp-core-data\",\"wp-data\",\"wp-editor\",\"wp-element\",\"wp-escape-html\",\"wp-hooks\",\"wp-html-entities\",\"wp-i18n\",\"wp-is-shallow-equal\",\"wp-polyfill\",\"wp-primitives\",\"wp-url\"]},\"assets\\/client\\/blocks\\/cart-frontend.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-frontend.js\",\"version\":\"db09d88dfde01e08b9f8\",\"dependencies\":[\"wc-cart-checkout-base\",\"wc-cart-checkout-vendors\",\"react\",\"react-jsx-runtime\",\"wc-blocks-checkout\",\"wc-blocks-checkout-events\",\"wc-blocks-components\",\"wc-blocks-data-store\",\"wc-blocks-registry\",\"wc-blocks-shared-context\",\"wc-blocks-shared-hocs\",\"wc-price-format\",\"wc-settings\",\"wc-types\",\"wp-a11y\",\"wp-api-fetch\",\"wp-autop\",\"wp-compose\",\"wp-data\",\"wp-deprecated\",\"wp-element\",\"wp-hooks\",\"wp-html-entities\",\"wp-i18n\",\"wp-is-shallow-equal\",\"wp-keycodes\",\"wp-notices\",\"wp-plugins\",\"wp-polyfill\",\"wp-primitives\",\"wp-style-engine\",\"wp-wordcount\"]},\"assets\\/client\\/blocks\\/checkout-frontend.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-frontend.js\",\"version\":\"9284299da7eb3a8b062c\",\"dependencies\":[\"wc-cart-checkout-base\",\"wc-cart-checkout-vendors\",\"react\",\"react-jsx-runtime\",\"wc-blocks-checkout\",\"wc-blocks-checkout-events\",\"wc-blocks-components\",\"wc-blocks-data-store\",\"wc-blocks-registry\",\"wc-blocks-shared-hocs\",\"wc-price-format\",\"wc-settings\",\"wc-types\",\"wp-a11y\",\"wp-api-fetch\",\"wp-autop\",\"wp-components\",\"wp-compose\",\"wp-data\",\"wp-deprecated\",\"wp-dom\",\"wp-element\",\"wp-hooks\",\"wp-html-entities\",\"wp-i18n\",\"wp-is-shallow-equal\",\"wp-notices\",\"wp-plugins\",\"wp-polyfill\",\"wp-primitives\",\"wp-url\",\"wp-wordcount\"]},\"assets\\/client\\/blocks\\/add-to-cart-form.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/add-to-cart-form.js\",\"version\":\"943d081838aacac9b0a4\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wc-settings\",\"wc-types\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-data\",\"wp-element\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/product-details.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-details.js\",\"version\":\"6f0923a2464378b398e7\",\"dependencies\":[\"react-jsx-runtime\",\"wc-types\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-data\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/wc-blocks-classic-template-revert-button.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/wc-blocks-classic-template-revert-button.js\",\"version\":\"69f6194d91fc4dcdbccb\",\"dependencies\":[\"react-jsx-runtime\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-core-data\",\"wp-data\",\"wp-editor\",\"wp-element\",\"wp-i18n\",\"wp-plugins\",\"wp-polyfill\"]},\"assets\\/client\\/blocks\\/active-filters.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/active-filters.js\",\"version\":\"6845a16c77c390404f04\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wc-blocks-components\",\"wc-blocks-data-store\",\"wc-price-format\",\"wc-settings\",\"wc-types\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-compose\",\"wp-data\",\"wp-element\",\"wp-html-entities\",\"wp-i18n\",\"wp-is-shallow-equal\",\"wp-polyfill\",\"wp-primitives\",\"wp-url\"]},\"assets\\/client\\/blocks\\/active-filters-frontend.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/active-filters-frontend.js\",\"version\":\"4952c741d2a257cbddc4\",\"dependencies\":[\"wc-blocks-frontend-vendors\",\"react\",\"react-jsx-runtime\",\"wc-blocks-components\",\"wc-blocks-data-store\",\"wc-price-format\",\"wc-settings\",\"wc-types\",\"wp-data\",\"wp-element\",\"wp-html-entities\",\"wp-i18n\",\"wp-is-shallow-equal\",\"wp-polyfill\",\"wp-primitives\",\"wp-url\"]},\"assets\\/client\\/blocks\\/all-products.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/all-products.js\",\"version\":\"b06db43572d226fd43a7\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wc-blocks-components\",\"wc-blocks-data-store\",\"wc-blocks-registry\",\"wc-blocks-shared-context\",\"wc-blocks-shared-hocs\",\"wc-price-format\",\"wc-settings\",\"wc-types\",\"wp-a11y\",\"wp-api-fetch\",\"wp-autop\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-compose\",\"wp-data\",\"wp-element\",\"wp-escape-html\",\"wp-hooks\",\"wp-html-entities\",\"wp-i18n\",\"wp-is-shallow-equal\",\"wp-polyfill\",\"wp-primitives\",\"wp-style-engine\",\"wp-url\",\"wp-wordcount\"]},\"assets\\/client\\/blocks\\/all-products-frontend.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/all-products-frontend.js\",\"version\":\"fda1ba1011e7d855b896\",\"dependencies\":[\"wc-blocks-frontend-vendors\",\"react\",\"react-jsx-runtime\",\"wc-blocks-components\",\"wc-blocks-data-store\",\"wc-blocks-registry\",\"wc-blocks-shared-context\",\"wc-blocks-shared-hocs\",\"wc-price-format\",\"wc-settings\",\"wc-types\",\"wp-a11y\",\"wp-autop\",\"wp-block-editor\",\"wp-components\",\"wp-compose\",\"wp-data\",\"wp-element\",\"wp-hooks\",\"wp-html-entities\",\"wp-i18n\",\"wp-is-shallow-equal\",\"wp-polyfill\",\"wp-primitives\",\"wp-style-engine\",\"wp-wordcount\"]},\"assets\\/client\\/blocks\\/all-reviews.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/all-reviews.js\",\"version\":\"7b3d4ba248c0ef3da496\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wc-blocks-components\",\"wc-settings\",\"wp-api-fetch\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-element\",\"wp-escape-html\",\"wp-html-entities\",\"wp-i18n\",\"wp-is-shallow-equal\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/reviews-frontend.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/reviews-frontend.js\",\"version\":\"3e8e39938ee6891862a6\",\"dependencies\":[\"wc-blocks-frontend-vendors\",\"react-jsx-runtime\",\"wc-blocks-components\",\"wc-settings\",\"wp-a11y\",\"wp-api-fetch\",\"wp-element\",\"wp-html-entities\",\"wp-i18n\",\"wp-is-shallow-equal\",\"wp-polyfill\"]},\"assets\\/client\\/blocks\\/attribute-filter.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/attribute-filter.js\",\"version\":\"8fa1cbbea7f5c2174aa3\",\"dependencies\":[\"lodash\",\"react\",\"react-jsx-runtime\",\"wc-blocks-components\",\"wc-blocks-data-store\",\"wc-settings\",\"wc-types\",\"wp-a11y\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-compose\",\"wp-data\",\"wp-deprecated\",\"wp-dom\",\"wp-element\",\"wp-html-entities\",\"wp-i18n\",\"wp-is-shallow-equal\",\"wp-keycodes\",\"wp-polyfill\",\"wp-primitives\",\"wp-url\",\"wp-warning\"]},\"assets\\/client\\/blocks\\/attribute-filter-frontend.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/attribute-filter-frontend.js\",\"version\":\"d35146d5c65ef33b7b86\",\"dependencies\":[\"wc-blocks-frontend-vendors\",\"lodash\",\"react\",\"react-jsx-runtime\",\"wc-blocks-components\",\"wc-blocks-data-store\",\"wc-settings\",\"wc-types\",\"wp-a11y\",\"wp-compose\",\"wp-data\",\"wp-deprecated\",\"wp-dom\",\"wp-element\",\"wp-html-entities\",\"wp-i18n\",\"wp-is-shallow-equal\",\"wp-keycodes\",\"wp-polyfill\",\"wp-primitives\",\"wp-url\",\"wp-warning\"]},\"assets\\/client\\/blocks\\/cart-link.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-link.js\",\"version\":\"90816cbdab22d1620d03\",\"dependencies\":[\"react-jsx-runtime\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-element\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/classic-shortcode.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/classic-shortcode.js\",\"version\":\"1f211b0908c43740e8b0\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-data\",\"wp-element\",\"wp-i18n\",\"wp-notices\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/coming-soon.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/coming-soon.js\",\"version\":\"948b16ce9040618a7c59\",\"dependencies\":[\"react-jsx-runtime\",\"wc-settings\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-data\",\"wp-editor\",\"wp-i18n\",\"wp-plugins\",\"wp-polyfill\"]},\"assets\\/client\\/blocks\\/featured-category.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/featured-category.js\",\"version\":\"934196a9d56816c7c2c8\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wc-settings\",\"wc-types\",\"wp-api-fetch\",\"wp-autop\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-compose\",\"wp-data\",\"wp-element\",\"wp-escape-html\",\"wp-html-entities\",\"wp-i18n\",\"wp-is-shallow-equal\",\"wp-polyfill\",\"wp-primitives\",\"wp-style-engine\",\"wp-url\"]},\"assets\\/client\\/blocks\\/featured-product.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/featured-product.js\",\"version\":\"b43afa4b4b58f2c56181\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wc-settings\",\"wc-types\",\"wp-api-fetch\",\"wp-autop\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-compose\",\"wp-data\",\"wp-element\",\"wp-escape-html\",\"wp-html-entities\",\"wp-i18n\",\"wp-is-shallow-equal\",\"wp-polyfill\",\"wp-primitives\",\"wp-style-engine\",\"wp-url\"]},\"assets\\/client\\/blocks\\/filter-wrapper.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/filter-wrapper.js\",\"version\":\"403c4541c8220ae06a2c\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-data\",\"wp-element\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/filter-wrapper-frontend.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/filter-wrapper-frontend.js\",\"version\":\"16d455bd5bd91e48de2a\",\"dependencies\":[\"wc-blocks-frontend-vendors\",\"lodash\",\"react\",\"react-jsx-runtime\",\"wc-blocks-checkout\",\"wc-blocks-components\",\"wc-blocks-data-store\",\"wc-blocks-registry\",\"wc-price-format\",\"wc-settings\",\"wc-types\",\"wp-a11y\",\"wp-compose\",\"wp-data\",\"wp-deprecated\",\"wp-dom\",\"wp-element\",\"wp-html-entities\",\"wp-i18n\",\"wp-is-shallow-equal\",\"wp-keycodes\",\"wp-polyfill\",\"wp-primitives\",\"wp-style-engine\",\"wp-url\",\"wp-warning\"]},\"assets\\/client\\/blocks\\/handpicked-products.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/handpicked-products.js\",\"version\":\"ec3d5e4fa2f44827da4d\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wc-settings\",\"wp-api-fetch\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-compose\",\"wp-element\",\"wp-escape-html\",\"wp-html-entities\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\",\"wp-server-side-render\",\"wp-url\"]},\"assets\\/client\\/blocks\\/payment-method-icons.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/payment-method-icons.js\",\"version\":\"f06aac6ea533a03d6d64\",\"dependencies\":[\"react-jsx-runtime\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-i18n\",\"wp-polyfill\"]},\"assets\\/client\\/blocks\\/price-filter.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/price-filter.js\",\"version\":\"11edb3e00bda729168ec\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wc-blocks-components\",\"wc-blocks-data-store\",\"wc-price-format\",\"wc-settings\",\"wc-types\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-compose\",\"wp-data\",\"wp-element\",\"wp-i18n\",\"wp-is-shallow-equal\",\"wp-polyfill\",\"wp-primitives\",\"wp-url\"]},\"assets\\/client\\/blocks\\/price-filter-frontend.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/price-filter-frontend.js\",\"version\":\"828811034ef1241ab82a\",\"dependencies\":[\"wc-blocks-frontend-vendors\",\"react\",\"react-jsx-runtime\",\"wc-blocks-components\",\"wc-blocks-data-store\",\"wc-price-format\",\"wc-settings\",\"wc-types\",\"wp-data\",\"wp-element\",\"wp-i18n\",\"wp-is-shallow-equal\",\"wp-polyfill\",\"wp-url\"]},\"assets\\/client\\/blocks\\/product-best-sellers.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-best-sellers.js\",\"version\":\"ff30c7ee1ad859f22682\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wc-settings\",\"wp-api-fetch\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-compose\",\"wp-element\",\"wp-escape-html\",\"wp-html-entities\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\",\"wp-server-side-render\",\"wp-url\"]},\"assets\\/client\\/blocks\\/product-categories.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-categories.js\",\"version\":\"d44a3ebfb21927a00e6d\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-data\",\"wp-element\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\",\"wp-server-side-render\"]},\"assets\\/client\\/blocks\\/product-category.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-category.js\",\"version\":\"fbf15c4f1ff0e1841e9b\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wc-settings\",\"wp-api-fetch\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-compose\",\"wp-element\",\"wp-escape-html\",\"wp-html-entities\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\",\"wp-server-side-render\",\"wp-url\"]},\"assets\\/client\\/blocks\\/product-filters.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-filters.js\",\"version\":\"5d4febb6d48fa9ac64a0\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wp-block-editor\",\"wp-blocks\",\"wp-element\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/product-filter-status.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-filter-status.js\",\"version\":\"db369c1f56db47fff831\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wc-blocks-data-store\",\"wc-settings\",\"wc-types\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-data\",\"wp-element\",\"wp-i18n\",\"wp-is-shallow-equal\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/product-filter-price.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-filter-price.js\",\"version\":\"59fc27c1e7160f61b961\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wc-blocks-data-store\",\"wc-price-format\",\"wc-types\",\"wp-block-editor\",\"wp-blocks\",\"wp-data\",\"wp-element\",\"wp-i18n\",\"wp-is-shallow-equal\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/product-filter-price-slider.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-filter-price-slider.js\",\"version\":\"4ee8aab7dd50bdd698e7\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wc-price-format\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/product-filter-attribute.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-filter-attribute.js\",\"version\":\"81c607b638736e119f49\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wc-blocks-data-store\",\"wc-settings\",\"wc-types\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-data\",\"wp-element\",\"wp-i18n\",\"wp-is-shallow-equal\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/product-filter-rating.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-filter-rating.js\",\"version\":\"5e00043ed1026cf101a4\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wc-blocks-data-store\",\"wc-settings\",\"wc-types\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-data\",\"wp-element\",\"wp-i18n\",\"wp-is-shallow-equal\",\"wp-polyfill\",\"wp-primitives\",\"wp-url\"]},\"assets\\/client\\/blocks\\/product-filter-active.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-filter-active.js\",\"version\":\"dff9b5a50cc63b55fe22\",\"dependencies\":[\"react-jsx-runtime\",\"wp-block-editor\",\"wp-blocks\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/product-filter-removable-chips.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-filter-removable-chips.js\",\"version\":\"9aec0f8d9a682ad6bc63\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wc-blocks-components\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-element\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/product-filter-clear-button.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-filter-clear-button.js\",\"version\":\"780618f6f958d84f19b6\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wp-block-editor\",\"wp-blocks\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/product-filter-checkbox-list.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-filter-checkbox-list.js\",\"version\":\"7a6c4c688912336defb4\",\"dependencies\":[\"react-jsx-runtime\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-element\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/product-filter-chips.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-filter-chips.js\",\"version\":\"f4891802bba1835ed6d2\",\"dependencies\":[\"react-jsx-runtime\",\"wp-block-editor\",\"wp-blocks\",\"wp-element\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/product-gallery.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-gallery.js\",\"version\":\"b3105b41ac7965c9d139\",\"dependencies\":[\"react-jsx-runtime\",\"wc-blocks-shared-context\",\"wc-blocks-shared-hocs\",\"wc-settings\",\"wc-types\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-data\",\"wp-element\",\"wp-i18n\",\"wp-polyfill\"]},\"assets\\/client\\/blocks\\/product-gallery-large-image.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-gallery-large-image.js\",\"version\":\"579e9a9e4bc700379bcf\",\"dependencies\":[\"react-jsx-runtime\",\"wp-block-editor\",\"wp-blocks\",\"wp-polyfill\"]},\"assets\\/client\\/blocks\\/product-new.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-new.js\",\"version\":\"f69954121cca4230a528\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wc-settings\",\"wp-api-fetch\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-compose\",\"wp-element\",\"wp-escape-html\",\"wp-html-entities\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\",\"wp-server-side-render\",\"wp-url\"]},\"assets\\/client\\/blocks\\/product-on-sale.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-on-sale.js\",\"version\":\"b46ebbeffb20aea1109f\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wc-settings\",\"wp-api-fetch\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-compose\",\"wp-element\",\"wp-escape-html\",\"wp-html-entities\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\",\"wp-server-side-render\",\"wp-url\"]},\"assets\\/client\\/blocks\\/product-query.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-query.js\",\"version\":\"07942e05b5073ac9ad72\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wc-settings\",\"wc-types\",\"wp-api-fetch\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-compose\",\"wp-data\",\"wp-element\",\"wp-escape-html\",\"wp-hooks\",\"wp-html-entities\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\",\"wp-url\"]},\"assets\\/client\\/blocks\\/product-query-frontend.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-query-frontend.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/product-search.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-search.js\",\"version\":\"d751e390158f6b777cc3\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wc-settings\",\"wc-types\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-compose\",\"wp-data\",\"wp-element\",\"wp-hooks\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/product-tag.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-tag.js\",\"version\":\"c448b9b3ef058aa9e971\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wc-settings\",\"wc-types\",\"wp-api-fetch\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-compose\",\"wp-element\",\"wp-html-entities\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\",\"wp-server-side-render\",\"wp-url\"]},\"assets\\/client\\/blocks\\/product-title.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-title.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/product-title-frontend.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-title-frontend.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/product-top-rated.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-top-rated.js\",\"version\":\"0359238f4371249d37eb\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wc-settings\",\"wp-api-fetch\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-compose\",\"wp-element\",\"wp-escape-html\",\"wp-html-entities\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\",\"wp-server-side-render\",\"wp-url\"]},\"assets\\/client\\/blocks\\/products-by-attribute.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/products-by-attribute.js\",\"version\":\"3db4c6e415bbfc941309\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wc-settings\",\"wc-types\",\"wp-api-fetch\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-compose\",\"wp-data\",\"wp-element\",\"wp-escape-html\",\"wp-html-entities\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\",\"wp-server-side-render\",\"wp-url\"]},\"assets\\/client\\/blocks\\/rating-filter.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/rating-filter.js\",\"version\":\"43fc27167290029f0e9d\",\"dependencies\":[\"lodash\",\"react\",\"react-jsx-runtime\",\"wc-blocks-components\",\"wc-blocks-data-store\",\"wc-settings\",\"wc-types\",\"wp-a11y\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-compose\",\"wp-data\",\"wp-deprecated\",\"wp-dom\",\"wp-element\",\"wp-i18n\",\"wp-is-shallow-equal\",\"wp-keycodes\",\"wp-polyfill\",\"wp-primitives\",\"wp-url\",\"wp-warning\"]},\"assets\\/client\\/blocks\\/reviews-by-category.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/reviews-by-category.js\",\"version\":\"c923ec2a8c95195dd937\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wc-blocks-components\",\"wc-settings\",\"wp-api-fetch\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-compose\",\"wp-element\",\"wp-escape-html\",\"wp-html-entities\",\"wp-i18n\",\"wp-is-shallow-equal\",\"wp-polyfill\",\"wp-primitives\",\"wp-url\"]},\"assets\\/client\\/blocks\\/reviews-by-product.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/reviews-by-product.js\",\"version\":\"7126c2314766304b0903\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wc-blocks-components\",\"wc-settings\",\"wc-types\",\"wp-api-fetch\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-compose\",\"wp-element\",\"wp-escape-html\",\"wp-html-entities\",\"wp-i18n\",\"wp-is-shallow-equal\",\"wp-polyfill\",\"wp-primitives\",\"wp-url\"]},\"assets\\/client\\/blocks\\/single-product.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/single-product.js\",\"version\":\"e214c0e50f35551d9cbe\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wc-blocks-components\",\"wc-blocks-data-store\",\"wc-blocks-registry\",\"wc-blocks-shared-context\",\"wc-blocks-shared-hocs\",\"wc-price-format\",\"wc-settings\",\"wc-store-data\",\"wc-types\",\"wp-api-fetch\",\"wp-autop\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-compose\",\"wp-data\",\"wp-element\",\"wp-escape-html\",\"wp-hooks\",\"wp-html-entities\",\"wp-i18n\",\"wp-is-shallow-equal\",\"wp-polyfill\",\"wp-primitives\",\"wp-style-engine\",\"wp-url\",\"wp-wordcount\"]},\"assets\\/client\\/blocks\\/stock-filter.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/stock-filter.js\",\"version\":\"073bc55cc1db50d0dfb0\",\"dependencies\":[\"lodash\",\"react\",\"react-jsx-runtime\",\"wc-blocks-components\",\"wc-blocks-data-store\",\"wc-settings\",\"wc-types\",\"wp-a11y\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-compose\",\"wp-data\",\"wp-deprecated\",\"wp-dom\",\"wp-element\",\"wp-html-entities\",\"wp-i18n\",\"wp-is-shallow-equal\",\"wp-keycodes\",\"wp-polyfill\",\"wp-primitives\",\"wp-url\",\"wp-warning\"]},\"assets\\/client\\/blocks\\/stock-filter-frontend.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/stock-filter-frontend.js\",\"version\":\"0670d08c7a43afaed1b2\",\"dependencies\":[\"wc-blocks-frontend-vendors\",\"lodash\",\"react\",\"react-jsx-runtime\",\"wc-blocks-components\",\"wc-blocks-data-store\",\"wc-settings\",\"wc-types\",\"wp-a11y\",\"wp-compose\",\"wp-data\",\"wp-deprecated\",\"wp-dom\",\"wp-element\",\"wp-html-entities\",\"wp-i18n\",\"wp-is-shallow-equal\",\"wp-keycodes\",\"wp-polyfill\",\"wp-primitives\",\"wp-url\",\"wp-warning\"]},\"assets\\/client\\/blocks\\/page-content-wrapper.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/page-content-wrapper.js\",\"version\":\"8b42f9fde24fe77c4f9d\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wc-settings\",\"wp-block-editor\",\"wp-blocks\",\"wp-element\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/order-confirmation-create-account.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/order-confirmation-create-account.js\",\"version\":\"de5a6821a11788e52cd9\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wc-blocks-components\",\"wc-blocks-data-store\",\"wc-settings\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-compose\",\"wp-data\",\"wp-element\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/order-confirmation-create-account-frontend.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/order-confirmation-create-account-frontend.js\",\"version\":\"3757ea7894e223b63713\",\"dependencies\":[\"wc-blocks-frontend-vendors\",\"react\",\"react-jsx-runtime\",\"wc-blocks-components\",\"wc-blocks-data-store\",\"wc-settings\",\"wp-compose\",\"wp-data\",\"wp-element\",\"wp-i18n\",\"wp-polyfill\"]},\"assets\\/client\\/blocks\\/product-description.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-description.js\",\"version\":\"1f5600c36c2735e05c9c\",\"dependencies\":[\"react-jsx-runtime\",\"wc-types\",\"wp-block-editor\",\"wp-blocks\",\"wp-core-data\",\"wp-data\",\"wp-element\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/product-specifications.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-specifications.js\",\"version\":\"c0eaa70fab02d4feb984\",\"dependencies\":[\"react-jsx-runtime\",\"wc-store-data\",\"wc-types\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-data\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/accordion-group.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/accordion-group.js\",\"version\":\"aa124ca1e723ec7397de\",\"dependencies\":[\"react-jsx-runtime\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-i18n\",\"wp-polyfill\"]},\"assets\\/client\\/blocks\\/accordion-item.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/accordion-item.js\",\"version\":\"d36bf2998865d0b7efda\",\"dependencies\":[\"react-jsx-runtime\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-data\",\"wp-element\",\"wp-i18n\",\"wp-polyfill\"]},\"assets\\/client\\/blocks\\/accordion-panel.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/accordion-panel.js\",\"version\":\"7b6c895143f956ef43be\",\"dependencies\":[\"react-jsx-runtime\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-polyfill\"]},\"assets\\/client\\/blocks\\/accordion-header.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/accordion-header.js\",\"version\":\"f8c36bc6eed18d6637b6\",\"dependencies\":[\"react-jsx-runtime\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-i18n\",\"wp-polyfill\"]},\"assets\\/client\\/blocks\\/product-reviews.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-reviews.js\",\"version\":\"6ec025e01c67e58f4a27\",\"dependencies\":[\"react-jsx-runtime\",\"wc-types\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-data\",\"wp-i18n\",\"wp-polyfill\"]},\"assets\\/client\\/blocks\\/product-review-rating.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-review-rating.js\",\"version\":\"c7356b182347ab81c44c\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wc-store-data\",\"wp-block-editor\",\"wp-blocks\",\"wp-data\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/product-reviews-title.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-reviews-title.js\",\"version\":\"0382916bde4044632c8d\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wc-store-data\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-core-data\",\"wp-data\",\"wp-element\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/product-review-form.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-review-form.js\",\"version\":\"2c791c1db4b8cf8ebd81\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wc-store-data\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-compose\",\"wp-core-data\",\"wp-data\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/product-review-date.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-review-date.js\",\"version\":\"716fdc6eebc84d5b4df9\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-core-data\",\"wp-date\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/product-review-content.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-review-content.js\",\"version\":\"761993e3b42d1fbb4db4\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-core-data\",\"wp-element\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/product-review-author-name.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-review-author-name.js\",\"version\":\"7889909dea8ac111cfcf\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-core-data\",\"wp-data\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/product-reviews-pagination.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-reviews-pagination.js\",\"version\":\"748a894dba54d954ecd9\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-data\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/product-reviews-pagination-next.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-reviews-pagination-next.js\",\"version\":\"8104662b6e94eb7de269\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wp-block-editor\",\"wp-blocks\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/product-reviews-pagination-previous.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-reviews-pagination-previous.js\",\"version\":\"a4ce5e1180f51ac9d7ec\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wp-block-editor\",\"wp-blocks\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/product-reviews-pagination-numbers.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-reviews-pagination-numbers.js\",\"version\":\"6320b999a6faa27a26ab\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wp-block-editor\",\"wp-blocks\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/product-review-template.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-review-template.js\",\"version\":\"9d729c09ffc8df3147ee\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wp-api-fetch\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-core-data\",\"wp-data\",\"wp-element\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\",\"wp-url\"]},\"assets\\/client\\/blocks\\/cart.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart.js\",\"version\":\"54be841f6c505e806342\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wc-blocks-checkout\",\"wc-blocks-checkout-events\",\"wc-blocks-components\",\"wc-blocks-data-store\",\"wc-blocks-registry\",\"wc-blocks-shared-context\",\"wc-blocks-shared-hocs\",\"wc-price-format\",\"wc-settings\",\"wc-types\",\"wp-a11y\",\"wp-api-fetch\",\"wp-autop\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-compose\",\"wp-core-data\",\"wp-data\",\"wp-deprecated\",\"wp-dom\",\"wp-editor\",\"wp-element\",\"wp-hooks\",\"wp-html-entities\",\"wp-i18n\",\"wp-is-shallow-equal\",\"wp-keycodes\",\"wp-notices\",\"wp-plugins\",\"wp-polyfill\",\"wp-primitives\",\"wp-style-engine\",\"wp-url\",\"wp-wordcount\"]},\"assets\\/client\\/blocks\\/cart-blocks\\/cart-line-items-style.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/cart-line-items-style.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/cart-express-payment-style.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/cart-express-payment-style.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/cart-cross-sells-products-style.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/cart-cross-sells-products-style.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/order-summary-discount-style.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/order-summary-discount-style.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/cart-line-items-frontend.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/cart-line-items-frontend.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/filled-cart-frontend.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/filled-cart-frontend.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/order-summary-coupon-form-style.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/order-summary-coupon-form-style.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/cart-accepted-payment-methods-frontend.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/cart-accepted-payment-methods-frontend.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/cart-cross-sells-products-frontend.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/cart-cross-sells-products-frontend.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/order-summary-fee-frontend.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/order-summary-fee-frontend.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/order-summary-fee-style.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/order-summary-fee-style.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/cart-cross-sells-style.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/cart-cross-sells-style.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/order-summary-totals-frontend.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/order-summary-totals-frontend.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/cart-items-style.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/cart-items-style.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/order-summary-shipping-style.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/order-summary-shipping-style.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/cart-order-summary-frontend.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/cart-order-summary-frontend.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/order-summary-heading-style.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/order-summary-heading-style.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/cart-cross-sells-frontend.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/cart-cross-sells-frontend.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/order-summary-taxes-frontend.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/order-summary-taxes-frontend.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/order-summary-heading-frontend.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/order-summary-heading-frontend.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/cart-totals-style.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/cart-totals-style.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/cart-items-frontend.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/cart-items-frontend.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/order-summary-subtotal-frontend.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/order-summary-subtotal-frontend.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/order-summary-shipping-frontend.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/order-summary-shipping-frontend.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/cart-order-summary-style.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/cart-order-summary-style.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/order-summary-discount-frontend.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/order-summary-discount-frontend.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/cart-totals-frontend.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/cart-totals-frontend.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/empty-cart-frontend.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/empty-cart-frontend.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/empty-cart-style.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/empty-cart-style.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/cart-express-payment-frontend.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/cart-express-payment-frontend.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/order-summary-coupon-form-frontend.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/order-summary-coupon-form-frontend.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/order-summary-taxes-style.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/order-summary-taxes-style.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/filled-cart-style.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/filled-cart-style.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/cart-accepted-payment-methods-style.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/cart-accepted-payment-methods-style.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/proceed-to-checkout-style.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/proceed-to-checkout-style.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/order-summary-totals-style.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/order-summary-totals-style.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/order-summary-subtotal-style.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/order-summary-subtotal-style.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/proceed-to-checkout-frontend.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/proceed-to-checkout-frontend.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-order-summary-taxes-block.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-order-summary-taxes-block.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-order-summary-subtotal-block.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-order-summary-subtotal-block.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-order-summary-totals-block.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-order-summary-totals-block.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/filled-cart-block.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/filled-cart-block.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/empty-cart-block.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/empty-cart-block.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-totals-block.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-totals-block.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-items-block.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-items-block.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-line-items-block.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-line-items-block.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-order-summary-block.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-order-summary-block.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-express-payment-block.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-express-payment-block.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/proceed-to-checkout-block.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/proceed-to-checkout-block.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-accepted-payment-methods-block.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-accepted-payment-methods-block.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-order-summary-coupon-form-block.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-order-summary-coupon-form-block.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-order-summary-discount-block.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-order-summary-discount-block.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-order-summary-fee-block.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-order-summary-fee-block.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-order-summary-heading-block.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-order-summary-heading-block.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-order-summary-shipping-block.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-order-summary-shipping-block.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-cross-sells-block.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-cross-sells-block.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-cross-sells-products-block.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-cross-sells-products-block.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout.js\",\"version\":\"a9ecbf6e3d6f92a43a69\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wc-blocks-checkout\",\"wc-blocks-checkout-events\",\"wc-blocks-components\",\"wc-blocks-data-store\",\"wc-blocks-registry\",\"wc-price-format\",\"wc-settings\",\"wc-types\",\"wp-a11y\",\"wp-api-fetch\",\"wp-autop\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-compose\",\"wp-core-data\",\"wp-data\",\"wp-deprecated\",\"wp-dom\",\"wp-editor\",\"wp-element\",\"wp-hooks\",\"wp-html-entities\",\"wp-i18n\",\"wp-is-shallow-equal\",\"wp-keycodes\",\"wp-notices\",\"wp-plugins\",\"wp-polyfill\",\"wp-primitives\",\"wp-url\",\"wp-wordcount\"]},\"assets\\/client\\/blocks\\/cart-blocks\\/cart-express-payment--checkout-blocks\\/express-payment-frontend.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/cart-express-payment--checkout-blocks\\/express-payment-frontend.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-actions-block.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-actions-block.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-additional-information-block.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-additional-information-block.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-billing-address-block.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-billing-address-block.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-contact-information-block.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-contact-information-block.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-express-payment-block.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-express-payment-block.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-fields-block.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-fields-block.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-order-note-block.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-order-note-block.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-order-summary-block.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-order-summary-block.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-order-summary-cart-items-block.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-order-summary-cart-items-block.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-order-summary-coupon-form-block.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-order-summary-coupon-form-block.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-order-summary-discount-block.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-order-summary-discount-block.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-order-summary-fee-block.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-order-summary-fee-block.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-order-summary-shipping-block.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-order-summary-shipping-block.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-order-summary-subtotal-block.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-order-summary-subtotal-block.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-order-summary-taxes-block.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-order-summary-taxes-block.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-order-summary-totals-block.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-order-summary-totals-block.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-payment-block.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-payment-block.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-shipping-address-block.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-shipping-address-block.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-shipping-methods-block.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-shipping-methods-block.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-shipping-method-block.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-shipping-method-block.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-pickup-options-block.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-pickup-options-block.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-terms-block.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-terms-block.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-totals-block.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-totals-block.js\",\"version\":\"wc-10.1.0\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/add-to-cart-with-options.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/add-to-cart-with-options.js\",\"version\":\"974184e880c9dd91dd03\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wc-blocks-shared-context\",\"wc-settings\",\"wc-types\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-core-data\",\"wp-data\",\"wp-editor\",\"wp-element\",\"wp-hooks\",\"wp-i18n\",\"wp-plugins\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/add-to-cart-with-options-quantity-selector.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/add-to-cart-with-options-quantity-selector.js\",\"version\":\"d95cf75a9739fd0bf6fc\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-element\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/add-to-cart-with-options-variation-selector.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/add-to-cart-with-options-variation-selector.js\",\"version\":\"291374ffcc608c68f50c\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wc-blocks-shared-context\",\"wc-settings\",\"wp-block-editor\",\"wp-blocks\",\"wp-data\",\"wp-element\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/add-to-cart-with-options-variation-selector-attribute.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/add-to-cart-with-options-variation-selector-attribute.js\",\"version\":\"b1953111d453d7775545\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wc-blocks-shared-context\",\"wp-block-editor\",\"wp-blocks\",\"wp-data\",\"wp-element\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/add-to-cart-with-options-variation-selector-attribute-name.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/add-to-cart-with-options-variation-selector-attribute-name.js\",\"version\":\"1fa9ba5e066d22c47bda\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wc-blocks-shared-context\",\"wp-block-editor\",\"wp-blocks\",\"wp-element\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/add-to-cart-with-options-variation-selector-attribute-options.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/add-to-cart-with-options-variation-selector-attribute-options.js\",\"version\":\"a937f6d971d10ff648f0\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wc-blocks-shared-context\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-element\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/add-to-cart-with-options-grouped-product-selector.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/add-to-cart-with-options-grouped-product-selector.js\",\"version\":\"760df4667c76b96112a5\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wp-block-editor\",\"wp-blocks\",\"wp-element\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/add-to-cart-with-options-grouped-product-item.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/add-to-cart-with-options-grouped-product-item.js\",\"version\":\"59dc3ae7138a9fbb96eb\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wc-blocks-shared-context\",\"wc-settings\",\"wc-store-data\",\"wp-api-fetch\",\"wp-block-editor\",\"wp-blocks\",\"wp-compose\",\"wp-data\",\"wp-element\",\"wp-polyfill\",\"wp-primitives\",\"wp-url\"]},\"assets\\/client\\/blocks\\/add-to-cart-with-options-grouped-product-item-selector.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/add-to-cart-with-options-grouped-product-item-selector.js\",\"version\":\"578ed4b7560de87d3490\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wc-blocks-shared-context\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-element\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/add-to-cart-with-options-grouped-product-item-label.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/add-to-cart-with-options-grouped-product-item-label.js\",\"version\":\"608aa1734c7e09d7089a\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wc-blocks-shared-context\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/legacy-template.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/legacy-template.js\",\"version\":\"6ef86b3f84c1ae92ea01\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wc-settings\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-core-data\",\"wp-data\",\"wp-element\",\"wp-i18n\",\"wp-notices\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/order-confirmation-status.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/order-confirmation-status.js\",\"version\":\"8300d2f7ab17e274b6cd\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wp-block-editor\",\"wp-blocks\",\"wp-element\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/order-confirmation-summary.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/order-confirmation-summary.js\",\"version\":\"73a1958ae0d873d74ed4\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wc-price-format\",\"wc-settings\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-date\",\"wp-element\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/order-confirmation-totals.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/order-confirmation-totals.js\",\"version\":\"151364bcfd0070f544aa\",\"dependencies\":[\"react-jsx-runtime\",\"wc-price-format\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-element\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/order-confirmation-totals-wrapper.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/order-confirmation-totals-wrapper.js\",\"version\":\"72772ecd72ef6a40d76b\",\"dependencies\":[\"react-jsx-runtime\",\"wp-block-editor\",\"wp-blocks\",\"wp-element\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/order-confirmation-downloads.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/order-confirmation-downloads.js\",\"version\":\"7a08a5ce6b5669a00680\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-element\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/order-confirmation-downloads-wrapper.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/order-confirmation-downloads-wrapper.js\",\"version\":\"408b308ce13099848800\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wc-settings\",\"wp-block-editor\",\"wp-blocks\",\"wp-element\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/order-confirmation-billing-address.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/order-confirmation-billing-address.js\",\"version\":\"ce937e71edaf406c5c96\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wc-settings\",\"wp-block-editor\",\"wp-blocks\",\"wp-element\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/order-confirmation-shipping-address.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/order-confirmation-shipping-address.js\",\"version\":\"c92c6d50f3939511a869\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wc-settings\",\"wp-block-editor\",\"wp-blocks\",\"wp-element\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/order-confirmation-billing-wrapper.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/order-confirmation-billing-wrapper.js\",\"version\":\"0053e5c2ef6f287eb2aa\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wp-block-editor\",\"wp-blocks\",\"wp-element\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/order-confirmation-shipping-wrapper.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/order-confirmation-shipping-wrapper.js\",\"version\":\"5c35e0d8a291588bec1c\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wp-block-editor\",\"wp-blocks\",\"wp-element\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/order-confirmation-additional-information.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/order-confirmation-additional-information.js\",\"version\":\"4633104b7b4a017358d3\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wp-block-editor\",\"wp-blocks\",\"wp-element\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/order-confirmation-additional-fields-wrapper.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/order-confirmation-additional-fields-wrapper.js\",\"version\":\"b895566b39971950e6e7\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wc-settings\",\"wp-block-editor\",\"wp-blocks\",\"wp-element\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/order-confirmation-additional-fields.js\":{\"src\":\"http:\\/\\/192.168.20.81\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/order-confirmation-additional-fields.js\",\"version\":\"10755ecb8cf9807553e7\",\"dependencies\":[\"react\",\"react-jsx-runtime\",\"wc-settings\",\"wp-block-editor\",\"wp-blocks\",\"wp-element\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]}},\"version\":\"wc-10.1.0\",\"hash\":\"6a5a65c88b7721460bbd315a7539ea07\"}','off'),
(381,'woocommerce_hooked_blocks_version','10.1.0','auto'),
(382,'woocommerce_custom_orders_table_created','yes','auto'),
(383,'woocommerce_coming_soon','no','auto'),
(384,'woocommerce_store_pages_only','no','auto'),
(385,'woocommerce_email_improvements_default_enabled','yes','auto'),
(386,'woocommerce_email_improvements_first_enabled_at','2025-08-17 14:14:15','auto'),
(387,'woocommerce_email_improvements_last_enabled_at','2025-08-17 14:14:15','auto'),
(388,'woocommerce_email_improvements_enabled_count','1','auto'),
(389,'woocommerce_initial_installed_version','10.1.0','off'),
(390,'wc_blocks_db_schema_version','260','auto'),
(391,'wc_remote_inbox_notifications_stored_state','O:8:\"stdClass\":2:{s:22:\"there_were_no_products\";b:1;s:22:\"there_are_now_products\";b:1;}','off'),
(392,'woocommerce_admin_notices','a:0:{}','auto'),
(398,'woocommerce_admin_pes_incentive_woopayments_store_had_woopayments','no','auto'),
(401,'woocommerce_gateway_order','a:7:{s:19:\"_wc_pes_woopayments\";i:0;s:25:\"_wc_pes_paypal_full_stack\";i:1;s:12:\"ppcp-gateway\";i:2;s:33:\"_wc_offline_payment_methods_group\";i:3;s:4:\"bacs\";i:4;s:6:\"cheque\";i:5;s:3:\"cod\";i:6;}','auto'),
(408,'woocommerce_checkout_phone_field','optional','auto'),
(409,'woocommerce_checkout_company_field','hidden','auto'),
(410,'woocommerce_checkout_address_2_field','optional','auto'),
(411,'_transient_timeout_woocommerce_analytics_orders_statuses_all','1787837617','off'),
(412,'_transient_woocommerce_analytics_orders_statuses_all','a:1:{i:0;s:17:\"wc-checkout-draft\";}','off'),
(416,'woocommerce_onboarding_profile_progress','a:1:{s:29:\"core_profiler_completed_steps\";a:4:{s:12:\"intro-opt-in\";a:1:{s:12:\"completed_at\";s:20:\"2025-08-17T14:14:23Z\";}s:12:\"user-profile\";a:1:{s:12:\"completed_at\";s:20:\"2025-08-17T14:14:27Z\";}s:13:\"business-info\";a:1:{s:12:\"completed_at\";s:20:\"2025-08-17T14:15:02Z\";}s:7:\"plugins\";a:1:{s:12:\"completed_at\";s:20:\"2025-08-17T14:15:30Z\";}}}','auto'),
(417,'woocommerce_allow_tracking_first_optin','1755440064','auto'),
(418,'woocommerce_allow_tracking_last_modified','1755440064','auto'),
(420,'wc_has_tracked_default_theme','1','auto'),
(422,'woocommerce_onboarding_profile','a:7:{s:15:\"business_choice\";s:28:\"im_just_starting_my_business\";s:8:\"industry\";a:1:{i:0;s:24:\"clothing_and_accessories\";}s:18:\"is_agree_marketing\";b:0;s:11:\"store_email\";s:20:\"adminAlpaca@shop.com\";s:20:\"is_store_country_set\";b:1;s:9:\"completed\";b:1;s:19:\"business_extensions\";a:2:{i:0;s:25:\"pinterest-for-woocommerce\";i:1;s:27:\"woocommerce-paypal-payments\";}}','auto'),
(429,'pinterest-for-woocommerce-update-version','1.4.21','auto'),
(433,'jetpack_connection_active_plugins','a:1:{s:11:\"woocommerce\";a:1:{s:4:\"name\";s:11:\"WooCommerce\";}}','auto'),
(434,'pinterest_for_woocommerce','a:4:{s:12:\"account_data\";N;s:22:\"ads_campaign_is_active\";b:0;s:19:\"tracking_advertiser\";N;s:12:\"tracking_tag\";N;}','auto'),
(435,'woocommerce_paypal_branded','profiler','off'),
(438,'as_has_wp_comment_logs','no','on'),
(441,'woocommerce-ppcp-is-new-merchant','1','auto'),
(442,'woocommerce-ppcp-settings','a:12:{s:5:\"title\";s:6:\"PayPal\";s:11:\"description\";s:15:\"Pay via PayPal.\";s:22:\"smart_button_locations\";a:5:{i:0;s:7:\"product\";i:1;s:4:\"cart\";i:2;s:8:\"checkout\";i:3;s:22:\"checkout-block-express\";i:4;s:10:\"cart-block\";}s:40:\"smart_button_enable_styling_per_location\";b:0;s:27:\"pay_later_messaging_enabled\";b:1;s:24:\"pay_later_button_enabled\";b:1;s:26:\"pay_later_button_locations\";a:5:{i:0;s:7:\"product\";i:1;s:4:\"cart\";i:2;s:8:\"checkout\";i:3;s:22:\"checkout-block-express\";i:4;s:10:\"cart-block\";}s:29:\"pay_later_messaging_locations\";a:4:{i:0;s:7:\"product\";i:1;s:4:\"cart\";i:2;s:8:\"checkout\";i:3;s:4:\"shop\";}s:10:\"brand_name\";s:10:\"AlpacaShop\";s:17:\"dcc_gateway_title\";s:20:\"Debit & Credit Cards\";s:23:\"dcc_gateway_description\";s:26:\"Pay with your credit card.\";s:24:\"allow_local_apm_gateways\";b:1;}','auto'),
(443,'woocommerce-ppcp-data-common','a:12:{s:11:\"use_sandbox\";b:0;s:21:\"use_manual_connection\";b:0;s:20:\"is_send_only_country\";b:0;s:18:\"merchant_connected\";b:0;s:16:\"sandbox_merchant\";b:0;s:11:\"merchant_id\";s:0:\"\";s:14:\"merchant_email\";s:0:\"\";s:16:\"merchant_country\";s:0:\"\";s:9:\"client_id\";s:0:\"\";s:13:\"client_secret\";s:0:\"\";s:11:\"seller_type\";s:7:\"unknown\";s:20:\"wc_installation_path\";s:6:\"direct\";}','auto'),
(444,'woocommerce-ppcp-version','3.0.9','auto'),
(447,'woocommerce_ppcp-axo-gateway_settings','a:1:{s:7:\"enabled\";s:2:\"no\";}','on'),
(450,'woocommerce_private_link','no','auto'),
(451,'woocommerce_share_key','6ZuIcUKC1JvchVvsfLaPZMcup08aJW3t','auto'),
(458,'woocommerce_ppcp-admin-notices','a:0:{}','on'),
(462,'_transient_shipping-transient-version','1755440131','on'),
(463,'woocommerce_free_shipping_1_settings','a:4:{s:5:\"title\";s:13:\"Free shipping\";s:8:\"requires\";s:0:\"\";s:10:\"min_amount\";s:1:\"0\";s:16:\"ignore_discounts\";s:2:\"no\";}','auto'),
(464,'woocommerce_admin_created_default_shipping_zones','yes','auto'),
(465,'_transient_woocommerce_product_task_has_product_transient','yes','on'),
(466,'_transient_woocommerce_shipping_task_zone_count_transient','1','on'),
(467,'woocommerce_task_list_tracked_completed_tasks','a:3:{i:0;s:8:\"shipping\";i:1;s:15:\"review-shipping\";i:2;s:8:\"products\";}','auto'),
(468,'_transient_woocommerce_reports-transient-version','1757951860','on'),
(479,'woocommerce_payments_provider_state_snapshots','a:1:{s:27:\"woocommerce-paypal-payments\";a:5:{s:17:\"account_connected\";b:0;s:17:\"account_test_mode\";b:0;s:16:\"extension_active\";b:0;s:11:\"needs_setup\";b:1;s:9:\"test_mode\";b:0;}}','off'),
(528,'_transient_product_query-transient-version','1757945186','on'),
(539,'woocommerce_default_homepage_layout','two_columns','auto'),
(540,'woocommerce_task_list_hidden_lists','a:1:{i:0;s:5:\"setup\";}','auto'),
(541,'woocommerce_admin_reviewed_default_shipping_zones','yes','auto'),
(601,'tinvwl_db_ver','2.8.2','auto'),
(602,'tinvwl-general','a:19:{s:13:\"default_title\";s:0:\"\";s:13:\"page_wishlist\";i:63;s:13:\"require_login\";b:0;s:22:\"redirect_require_login\";b:0;s:19:\"my_account_endpoint\";b:0;s:24:\"my_account_endpoint_slug\";s:8:\"wishlist\";s:17:\"link_in_myaccount\";b:1;s:21:\"processing_autoremove\";b:1;s:28:\"processing_autoremove_anyone\";b:0;s:28:\"processing_redirect_checkout\";b:0;s:11:\"simple_flow\";b:0;s:13:\"product_stats\";b:0;s:14:\"guests_timeout\";i:30;s:11:\"show_notice\";b:1;s:11:\"text_browse\";s:13:\"View Wishlist\";s:8:\"redirect\";b:1;s:13:\"text_added_to\";s:40:\"{product_name} added to {wishlist_title}\";s:15:\"text_already_in\";s:42:\"{product_name} already in {wishlist_title}\";s:17:\"text_removed_from\";s:29:\"Product removed from Wishlist\";}','auto'),
(603,'tinvwl-permalinks','a:1:{s:5:\"force\";b:0;}','auto'),
(604,'tinvwl-rename','a:3:{s:6:\"rename\";b:0;s:13:\"rename_single\";s:0:\"\";s:13:\"rename_plural\";s:0:\"\";}','auto'),
(605,'tinvwl-page','a:1:{s:8:\"wishlist\";i:63;}','auto'),
(606,'tinvwl-processing','a:4:{s:10:\"autoremove\";b:1;s:17:\"autoremove_status\";s:14:\"tinvwl-addcart\";s:17:\"redirect_checkout\";b:0;s:17:\"autoremove_anyone\";b:0;}','auto'),
(607,'tinvwl-add_to_wishlist','a:12:{s:8:\"position\";s:5:\"after\";s:5:\"class\";s:0:\"\";s:4:\"icon\";s:5:\"heart\";s:11:\"icon_upload\";s:0:\"\";s:17:\"icon_upload_added\";s:0:\"\";s:10:\"icon_style\";s:0:\"\";s:14:\"show_preloader\";b:0;s:9:\"show_text\";b:1;s:4:\"text\";s:47:\"Добавить в список желаний\";s:10:\"already_on\";b:0;s:15:\"text_already_on\";s:19:\"Already In Wishlist\";s:11:\"text_remove\";s:20:\"Remove from Wishlist\";}','auto'),
(608,'tinvwl-add_to_wishlist_catalog','a:13:{s:12:\"show_in_loop\";b:1;s:8:\"position\";s:5:\"after\";s:5:\"class\";s:0:\"\";s:4:\"icon\";s:5:\"heart\";s:11:\"icon_upload\";s:0:\"\";s:17:\"icon_upload_added\";s:0:\"\";s:10:\"icon_style\";s:0:\"\";s:14:\"show_preloader\";b:0;s:9:\"show_text\";b:1;s:4:\"text\";s:47:\"Добавить в список желаний\";s:10:\"already_on\";b:0;s:15:\"text_already_on\";s:19:\"Already In Wishlist\";s:11:\"text_remove\";s:20:\"Remove from Wishlist\";}','auto'),
(609,'tinvwl-product_table','a:5:{s:11:\"add_to_cart\";b:1;s:16:\"text_add_to_cart\";s:11:\"Add to Cart\";s:10:\"colm_price\";b:1;s:10:\"colm_stock\";b:1;s:9:\"colm_date\";b:1;}','auto'),
(610,'tinvwl-table','a:8:{s:8:\"per_page\";i:10;s:13:\"colm_checkbox\";b:1;s:12:\"colm_actions\";b:1;s:18:\"add_select_to_cart\";b:1;s:23:\"text_add_select_to_cart\";s:20:\"Add Selected to Cart\";s:15:\"add_all_to_cart\";b:1;s:20:\"text_add_all_to_cart\";s:15:\"Add All to Cart\";s:10:\"hide_popup\";b:0;}','auto'),
(611,'tinvwl-social','a:9:{s:6:\"social\";s:0:\"\";s:8:\"facebook\";b:0;s:7:\"twitter\";b:0;s:9:\"pinterest\";b:0;s:8:\"whatsapp\";b:0;s:9:\"clipboard\";b:0;s:5:\"email\";b:0;s:8:\"share_on\";s:8:\"Share on\";s:10:\"icon_style\";s:0:\"\";}','auto'),
(612,'tinvwl-topline','a:9:{s:4:\"icon\";s:5:\"heart\";s:11:\"icon_upload\";s:0:\"\";s:10:\"icon_style\";s:0:\"\";s:9:\"show_text\";b:1;s:4:\"text\";s:29:\"Список желаний -\";s:4:\"menu\";a:1:{i:0;s:0:\"\";}s:10:\"menu_order\";i:100;s:12:\"show_counter\";b:1;s:17:\"hide_zero_counter\";b:0;}','auto'),
(613,'tinvwl-uninstall','a:1:{s:11:\"delete_data\";b:0;}','auto'),
(614,'tinvwl-chat','a:1:{s:7:\"enabled\";b:1;}','auto'),
(615,'tinvwl-integrations','a:0:{}','auto'),
(616,'tinvwl-style','a:1:{s:11:\"customstyle\";b:1;}','auto'),
(617,'tinvwl-style_options','a:75:{s:32:\"bda8150264b84aeff0ca47779ebacc00\";s:7:\"#000000\";s:32:\"2d1414f360ef96f3bdd718878b838843\";s:4:\"40px\";s:32:\"0f617e666d70702b660f4a733af1cd5c\";s:7:\"#1a1a1a\";s:32:\"4578aeedef5c22d62ff52c33f9bba6cd\";s:0:\"\";s:32:\"6fa639cb245131cd45e0abb36abd86ce\";s:7:\"#007acc\";s:32:\"2343474f1380ef4be1905ba43b880647\";s:7:\"#686868\";s:32:\"0b340af13bdf4cbdb056adc5f79b3373\";s:9:\"underline\";s:32:\"3fc21953166f508ee2aeeecd7aee0bd8\";s:7:\"inherit\";s:32:\"7a33c22c4c2a5c21e7c3a914f4eeb2c1\";s:0:\"\";s:32:\"24179cd549f6e251373383906299b096\";s:0:\"\";s:32:\"5e58bbdd0e885ca2b71116cea057e414\";s:0:\"\";s:32:\"c9b30b5c3e54618a46760805932ab8bf\";s:0:\"\";s:32:\"6a1003e57ef5796dfcaf02fa4b8ac499\";s:0:\"\";s:32:\"f7baf52c4518d3a4dfa63810320b45e2\";s:4:\"12px\";s:32:\"7139fa8307c4a65b7591e6dde6ae937f\";s:7:\"#ebe9eb\";s:32:\"cb88e51ff78f5d530ccf0bb719ec9c76\";s:7:\"#dad8da\";s:32:\"da0b548056da720976cf4f7f3cb5018c\";s:7:\"#515151\";s:32:\"c986c70cad5bc5f474abffea5b94ff7e\";s:7:\"#686868\";s:32:\"9e727dca77dd5482f23de230a3d5046f\";s:7:\"#007acc\";s:32:\"2ceebaa93d8a5c371551274780ddc300\";s:7:\"#686868\";s:32:\"dd67d3c367e9535414de00f3cc31a27c\";s:7:\"inherit\";s:32:\"478dbaf4932fbddfb0635a2524c109f8\";s:4:\"16px\";s:32:\"5a5c778b20bb2a740c14d622e1778927\";s:4:\"16px\";s:32:\"68940071b9fb40e3f336b7886b6f1d1b\";s:3:\"3px\";s:32:\"d5d75eab7561efa79cb1fefccd01f8a4\";s:7:\"#ebe9eb\";s:32:\"73a7a9d026401b62bf1cfe5d2a833b7e\";s:7:\"#dad8da\";s:32:\"939c7f00b7b90a16f80fd6312a4a0e0d\";s:7:\"#515151\";s:32:\"fa4f419f1114d3867a9630275364d086\";s:7:\"#515151\";s:32:\"2b1fbec4726635eb00e802d02f6e2e7d\";s:7:\"#007acc\";s:32:\"048f149cf361ad9d0e085d4af382752b\";s:7:\"#686868\";s:32:\"321da9c8bc66c286a29c544fc14e3f9e\";s:0:\"\";s:32:\"01f066844ed4e57f9ee7b8b03b2f18a7\";s:4:\"16px\";s:32:\"f3e46faa2e790800a881e6893cf2171e\";s:4:\"16px\";s:32:\"8d6c42fb581f8511d2affa83aa9ef81f\";s:3:\"3px\";s:32:\"27471cca2b825cfe2c307f7deb5c0f8b\";s:7:\"#ebe9eb\";s:32:\"1be5052ff24892ae6eecd8ee532be013\";s:7:\"#dad8da\";s:32:\"dcbaebb7da7109f1c0adc717b6971cd7\";s:7:\"#515151\";s:32:\"38acbc6d0ea4887e80a909b8078335a2\";s:7:\"#515151\";s:32:\"21a1f368854745ed15acea4fee3fd90a\";s:7:\"inherit\";s:32:\"a76bde0573bc009de0ff353bbac66def\";s:4:\"14px\";s:32:\"a095a25b82f1c317456ed3d5bf7bd721\";s:3:\"3px\";s:32:\"e8453b34b3ad8e5c51a4b1a8c83da979\";s:7:\"#a46497\";s:32:\"864bd3ccc745240992706b97c1599d1e\";s:7:\"#935386\";s:32:\"40bbed4ee296fd5fef264a1cc77670bf\";s:7:\"#ffffff\";s:32:\"831efa14fec3cf383879f988d32c5a15\";s:7:\"#ffffff\";s:32:\"fda80ea49f05a78edb5076e814f69292\";s:7:\"inherit\";s:32:\"3d4036f21baef6625cc3a323ee6e1e66\";s:4:\"14px\";s:32:\"672007341cff762ddf0d2281bdc0c299\";s:3:\"3px\";s:32:\"e4d5d4ef67c7ca30722286d58b2650f6\";s:7:\"#ffffff\";s:32:\"0b792e66d13026e6a122323222804c15\";s:7:\"#d1d1d1\";s:32:\"608484016590a0721da236a1885f9ade\";s:7:\"#ffffff\";s:32:\"69ae1bd0ebe53785d2b0e348b27b37dc\";s:7:\"#1a1a1a\";s:32:\"ecec585e20f406fc1ff002adfcbe9a9c\";s:7:\"inherit\";s:32:\"17742a42a30f7be0736d1e79908bc616\";s:4:\"14px\";s:32:\"aaf74cc43a3736ed621e17f1d7337965\";s:7:\"#686868\";s:32:\"e1b605ab84ede698ee5b65bdc097c550\";s:7:\"inherit\";s:32:\"59a1d057b2b45324f63ce597f36946e2\";s:4:\"14px\";s:32:\"921f8d28a66e0dbff0d74713a842c219\";s:7:\"#202020\";s:32:\"a2dabc4fdcada89b2e391e2edd7268a5\";s:7:\"inherit\";s:32:\"115256bbd72f9182797db3f54dce8f8b\";s:4:\"16px\";s:32:\"d1241272421242eb22011f3518a76da3\";s:7:\"#ffffff\";s:32:\"711de9e4983ba0e64439cec8d257fec0\";s:7:\"#007acc\";s:32:\"2c83e1eeed3250bf738550e6d52f2203\";s:7:\"#ebe9eb\";s:32:\"6eac9d09c71c87fd720963bcfc4ff973\";s:7:\"#dad8da\";s:32:\"3c6b408b1f5e325ef9b98202c693a4ec\";s:7:\"#000000\";s:32:\"f2a3a843e98eb989d8c9355f149b2b5e\";s:7:\"#686868\";s:32:\"8000e1c3ff927792052adcbaf10a57b6\";s:4:\"20px\";s:32:\"25ad1cb265d6a6f1798c03ea5e2380cc\";s:7:\"#ffffff\";s:32:\"e20fe57c88d077539db0740fbc54d95e\";s:7:\"#1a1a1a\";s:32:\"f74bce5a7e9a892248f5a1459acb2318\";s:0:\"\";s:32:\"70d5eda2690ddb4aaed81ee52db962fb\";s:4:\"16px\";s:32:\"89c5f801f41e34d0d01bf1c592f4642a\";s:7:\"#ebe9eb\";s:32:\"8256242f5a6cd2296de8ab945a060a2b\";s:7:\"#dad8da\";s:32:\"9da70190e482bf08f104dcb8280efabb\";s:7:\"#515151\";s:32:\"d7348c4c1bb37670a9d9a0202d2f056d\";s:7:\"#515151\";}','auto'),
(618,'tinvwl-style_plain','a:2:{s:5:\"allow\";b:0;s:3:\"css\";s:0:\"\";}','auto'),
(620,'tinvwl_ver','2.8.2','auto'),
(621,'tinvwl_activation_date','1755442291','auto'),
(623,'widget_widget_top_wishlist','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(625,'tinvwl_wizard','1','auto'),
(629,'_transient_timeout_wc_blocks_query_5363a57d92ddac380bcea0733b79eaad','1760544534','off'),
(630,'_transient_wc_blocks_query_5363a57d92ddac380bcea0733b79eaad','a:2:{s:7:\"version\";s:10:\"1757945186\";s:5:\"value\";a:4:{i:0;i:89;i:1;i:88;i:2;i:87;i:3;i:86;}}','off'),
(745,'woocommerce_admin_customize_store_completed','yes','auto'),
(746,'site_logo','66','auto'),
(757,'woocommerce_ces_tracks_queue','a:0:{}','auto'),
(758,'woocommerce_clear_ces_tracks_queue_for_page','','auto'),
(759,'woocommerce_ces_shown_for_actions','a:3:{i:0;s:14:\"product_update\";i:1;s:19:\"product_add_publish\";i:2;s:15:\"settings_change\";}','auto'),
(778,'_transient_health-check-site-status-result','{\"good\":13,\"recommended\":8,\"critical\":2}','on'),
(794,'woocommerce_tracker_ua','a:4:{i:0;s:125:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0\";i:1;s:70:\"Mozilla/5.0 (X11; Linux x86_64; rv:128.0) Gecko/20100101 Firefox/128.0\";i:2;s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36\";i:3;s:125:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0\";}','off'),
(891,'woocommerce_customer_new_account_settings','a:7:{s:7:\"enabled\";s:2:\"no\";s:7:\"subject\";s:0:\"\";s:7:\"heading\";s:0:\"\";s:18:\"additional_content\";s:33:\"До скорой встречи.\";s:10:\"email_type\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";}','on'),
(1051,'_transient_product-transient-version','1755640201','on'),
(1052,'_transient_filter_data-transient-version','1755640201','on'),
(1095,'product_cat_children','a:0:{}','auto'),
(1097,'_transient_timeout_wc_term_counts','1758471788','off'),
(1098,'_transient_wc_term_counts','a:7:{s:14:\"24_product_cat\";i:1;s:14:\"22_product_cat\";i:1;s:14:\"21_product_cat\";i:1;s:14:\"23_product_cat\";i:1;s:14:\"20_product_cat\";i:2;s:14:\"19_product_cat\";i:2;s:14:\"15_product_cat\";i:0;}','off'),
(1118,'_transient_timeout_wc_product_loop_dbdf9d1d5326b317f963eeec7e7d47b3','1760537484','off'),
(1119,'_transient_wc_product_loop_dbdf9d1d5326b317f963eeec7e7d47b3','a:2:{s:7:\"version\";s:10:\"1757945186\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:8:{i:0;i:89;i:1;i:88;i:2;i:87;i:3;i:86;i:4;i:85;i:5;i:84;i:6;i:83;i:7;i:82;}s:5:\"total\";i:8;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:8;s:12:\"current_page\";i:1;}}','off'),
(1161,'forminator_free_install_date','1755652735','off'),
(1163,'wpmudev_recommended_plugins_registered','a:1:{s:25:\"forminator/forminator.php\";a:1:{s:13:\"registered_at\";i:1755641935;}}','off'),
(1164,'forminator_default_report_entry','1','auto'),
(1165,'forminator_version','1.28.1','auto'),
(1166,'widget_forminator_widget','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(1168,'forminator_appearance_presets','a:1:{s:7:\"default\";s:50:\"Предустановка по умолчанию\";}','auto'),
(1199,'_transient_timeout_wc_low_stock_count','1758469939','off'),
(1200,'_transient_wc_low_stock_count','0','off'),
(1201,'_transient_timeout_wc_outofstock_count','1758469939','off'),
(1202,'_transient_wc_outofstock_count','0','off'),
(1228,'forminator_form_privacy_settings','a:0:{}','auto'),
(1229,'forminator_posts_map','a:0:{}','auto'),
(1255,'_transient_timeout_wc_blocks_has_downloadable_product','1758471776','off'),
(1256,'_transient_wc_blocks_has_downloadable_product','0','off'),
(1257,'_transient_timeout_wc_product_loop_f02df4a1dbc0cecb151b37ee507994ea','1760544534','off'),
(1258,'_transient_wc_product_loop_f02df4a1dbc0cecb151b37ee507994ea','a:2:{s:7:\"version\";s:10:\"1757945186\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:8:{i:0;i:82;i:1;i:83;i:2;i:84;i:3;i:85;i:4;i:86;i:5;i:87;i:6;i:88;i:7;i:89;}s:5:\"total\";i:8;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:8;s:12:\"current_page\";i:1;}}','off'),
(1267,'rewrite_rules','a:201:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:21:\"^wc/file/transient/?$\";s:33:\"index.php?wc-transient-file-name=\";s:24:\"^wc/file/transient/(.+)$\";s:44:\"index.php?wc-transient-file-name=$matches[1]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:18:\"^entries/([^/]+)/?\";s:29:\"index.php?entries=$matches[1]\";s:42:\"archives/(\\d+)(?:/(\\d+))?/entries/(\\d+)/?$\";s:60:\"index.php?p=$matches[1]&page=$matches[2]&entries=$matches[3]\";s:38:\"(.?.+?)(?:/([0-9]+))?/entries/(\\d+)/?$\";s:67:\"index.php?pagename=$matches[1]&page=$matches[2]&entries=$matches[3]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/entries/(\\d+)/?$\";s:101:\"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&page=$matches[4]&entries=$matches[5]\";s:75:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/entries/(\\d+)/?$\";s:117:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]&entries=$matches[6]\";s:26:\"(.?.+?)/entries(/(.*))?/?$\";s:50:\"index.php?pagename=$matches[1]&entries=$matches[3]\";s:15:\"^checkout-link$\";s:28:\"index.php?checkout-link=true\";s:64:\"(([^/]+/)*wishlist)/([A-Fa-f0-9]{6})?/wl_page/([0-9]{1,})/{0,1}$\";s:72:\"index.php?pagename=$matches[1]&tinvwlID=$matches[3]&wl_paged=$matches[4]\";s:44:\"(([^/]+/)*wishlist)/([A-Fa-f0-9]{6})?/{0,1}$\";s:51:\"index.php?pagename=$matches[1]&tinvwlID=$matches[3]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:43:\"category/(.+?)/wc/file/transient(/(.*))?/?$\";s:65:\"index.php?category_name=$matches[1]&wc/file/transient=$matches[3]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:40:\"tag/([^/]+)/wc/file/transient(/(.*))?/?$\";s:55:\"index.php?tag=$matches[1]&wc/file/transient=$matches[3]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:49:\"бренд/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?product_brand=$matches[1]&feed=$matches[2]\";s:44:\"бренд/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?product_brand=$matches[1]&feed=$matches[2]\";s:25:\"бренд/(.+?)/embed/?$\";s:46:\"index.php?product_brand=$matches[1]&embed=true\";s:37:\"бренд/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?product_brand=$matches[1]&paged=$matches[2]\";s:19:\"бренд/(.+?)/?$\";s:35:\"index.php?product_brand=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:44:\"product/([^/]+)/wc/file/transient(/(.*))?/?$\";s:59:\"index.php?product=$matches[1]&wc/file/transient=$matches[3]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/([^/]+)/wc/file/transient(/(.*))?/?$\";s:62:\"index.php?attachment=$matches[1]&wc/file/transient=$matches[3]\";s:61:\"product/[^/]+/attachment/([^/]+)/wc/file/transient(/(.*))?/?$\";s:62:\"index.php?attachment=$matches[1]&wc/file/transient=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:12:\"sitemap\\.xml\";s:24:\"index.php??sitemap=index\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=93&cpage=$matches[1]\";s:28:\"wc/file/transient(/(.*))?/?$\";s:40:\"index.php?&wc/file/transient=$matches[2]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:18:\"vozvrat(/(.*))?/?$\";s:30:\"index.php?&vozvrat=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:37:\"comments/wc/file/transient(/(.*))?/?$\";s:40:\"index.php?&wc/file/transient=$matches[2]\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:40:\"search/(.+)/wc/file/transient(/(.*))?/?$\";s:53:\"index.php?s=$matches[1]&wc/file/transient=$matches[3]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:43:\"author/([^/]+)/wc/file/transient(/(.*))?/?$\";s:63:\"index.php?author_name=$matches[1]&wc/file/transient=$matches[3]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc/file/transient(/(.*))?/?$\";s:93:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc/file/transient=$matches[5]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:52:\"([0-9]{4})/([0-9]{1,2})/wc/file/transient(/(.*))?/?$\";s:77:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc/file/transient=$matches[4]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:39:\"([0-9]{4})/wc/file/transient(/(.*))?/?$\";s:56:\"index.php?year=$matches[1]&wc/file/transient=$matches[3]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:73:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc/file/transient(/(.*))?/?$\";s:110:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc/file/transient=$matches[6]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc/file/transient(/(.*))?/?$\";s:62:\"index.php?attachment=$matches[1]&wc/file/transient=$matches[3]\";s:84:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc/file/transient(/(.*))?/?$\";s:62:\"index.php?attachment=$matches[1]&wc/file/transient=$matches[3]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:36:\"(.?.+?)/wc/file/transient(/(.*))?/?$\";s:60:\"index.php?pagename=$matches[1]&wc/file/transient=$matches[3]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:26:\"(.?.+?)/vozvrat(/(.*))?/?$\";s:50:\"index.php?pagename=$matches[1]&vozvrat=$matches[3]\";s:42:\".?.+?/([^/]+)/wc/file/transient(/(.*))?/?$\";s:62:\"index.php?attachment=$matches[1]&wc/file/transient=$matches[3]\";s:53:\".?.+?/attachment/([^/]+)/wc/file/transient(/(.*))?/?$\";s:62:\"index.php?attachment=$matches[1]&wc/file/transient=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}','auto'),
(1278,'woocommerce_brand_permalink','','auto'),
(1306,'db_upgraded','','on'),
(1431,'auto_core_update_notified','a:4:{s:4:\"type\";s:4:\"fail\";s:5:\"email\";s:20:\"adminAlpaca@shop.com\";s:7:\"version\";s:5:\"6.8.2\";s:9:\"timestamp\";i:1756301264;}','off'),
(1453,'_transient_orders-transient-version','1756752009','on'),
(1558,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:4:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-6.8.2.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-6.8.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.8.2\";s:7:\"version\";s:5:\"6.8.2\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.8.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.8.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.8.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.8.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.8.2\";s:7:\"version\";s:5:\"6.8.2\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-6.8.2.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-6.8.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.8.2\";s:7:\"version\";s:5:\"6.8.2\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-6.8.1.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-6.8.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.8.1\";s:7:\"version\";s:5:\"6.8.1\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1758406881;s:15:\"version_checked\";s:5:\"6.7.3\";s:12:\"translations\";a:0:{}}','off'),
(1564,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1758406881;s:7:\"checked\";a:3:{s:16:\"twentytwentyfive\";s:3:\"1.3\";s:16:\"twentytwentyfour\";s:3:\"1.3\";s:17:\"twentytwentythree\";s:3:\"1.6\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:16:\"twentytwentyfive\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfive\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfive/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfive.1.3.zip\";s:8:\"requires\";s:3:\"6.7\";s:12:\"requires_php\";s:3:\"7.2\";}s:16:\"twentytwentyfour\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfour\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfour/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfour.1.3.zip\";s:8:\"requires\";s:3:\"6.4\";s:12:\"requires_php\";s:3:\"7.0\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.6.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}','off'),
(1565,'can_compress_scripts','0','on'),
(1589,'_site_transient_update_plugins','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1758407722;s:8:\"response\";a:5:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"5.5\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.5.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";s:6:\"tested\";s:5:\"6.8.2\";s:12:\"requires_php\";s:3:\"7.2\";s:16:\"requires_plugins\";a:0:{}}s:25:\"forminator/forminator.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:24:\"w.org/plugins/forminator\";s:4:\"slug\";s:10:\"forminator\";s:6:\"plugin\";s:25:\"forminator/forminator.php\";s:11:\"new_version\";s:6:\"1.46.2\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/forminator/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/forminator.1.46.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/forminator/assets/icon-256x256.png?rev=2746202\";s:2:\"1x\";s:63:\"https://ps.w.org/forminator/assets/icon-128x128.png?rev=2746202\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/forminator/assets/banner-1544x500.png?rev=2626060\";s:2:\"1x\";s:65:\"https://ps.w.org/forminator/assets/banner-772x250.png?rev=2626060\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.4\";s:6:\"tested\";s:5:\"6.8.2\";s:12:\"requires_php\";s:3:\"7.4\";s:16:\"requires_plugins\";a:0:{}}s:51:\"ti-woocommerce-wishlist/ti-woocommerce-wishlist.php\";O:8:\"stdClass\":14:{s:2:\"id\";s:37:\"w.org/plugins/ti-woocommerce-wishlist\";s:4:\"slug\";s:23:\"ti-woocommerce-wishlist\";s:6:\"plugin\";s:51:\"ti-woocommerce-wishlist/ti-woocommerce-wishlist.php\";s:11:\"new_version\";s:6:\"2.10.0\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/ti-woocommerce-wishlist/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/ti-woocommerce-wishlist.2.10.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/ti-woocommerce-wishlist/assets/icon-256x256.gif?rev=2469447\";s:2:\"1x\";s:76:\"https://ps.w.org/ti-woocommerce-wishlist/assets/icon-128x128.gif?rev=2469447\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/ti-woocommerce-wishlist/assets/banner-1544x500.png?rev=2071101\";s:2:\"1x\";s:78:\"https://ps.w.org/ti-woocommerce-wishlist/assets/banner-772x250.png?rev=2071101\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.1\";s:6:\"tested\";s:5:\"6.8.2\";s:12:\"requires_php\";s:3:\"7.4\";s:16:\"requires_plugins\";a:1:{i:0;s:11:\"woocommerce\";}s:14:\"upgrade_notice\";s:176:\"<p><strong>Fixed</strong>: Vulnerability CVE-2025-47577 by updating integration with <a href=\"https://wordpress.org/plugins/wc-fields-factory/\">WC Fields Factory</a> plugin</p>\";}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:6:\"10.1.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/woocommerce.10.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:56:\"https://ps.w.org/woocommerce/assets/icon.svg?rev=3234504\";s:3:\"svg\";s:56:\"https://ps.w.org/woocommerce/assets/icon.svg?rev=3234504\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=3234504\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=3234504\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.7\";s:6:\"tested\";s:5:\"6.8.2\";s:12:\"requires_php\";s:3:\"7.4\";s:16:\"requires_plugins\";a:0:{}}s:59:\"woocommerce-paypal-payments/woocommerce-paypal-payments.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:41:\"w.org/plugins/woocommerce-paypal-payments\";s:4:\"slug\";s:27:\"woocommerce-paypal-payments\";s:6:\"plugin\";s:59:\"woocommerce-paypal-payments/woocommerce-paypal-payments.php\";s:11:\"new_version\";s:5:\"3.1.0\";s:3:\"url\";s:58:\"https://wordpress.org/plugins/woocommerce-paypal-payments/\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/plugin/woocommerce-paypal-payments.3.1.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:80:\"https://ps.w.org/woocommerce-paypal-payments/assets/icon-256x256.png?rev=3234615\";s:2:\"1x\";s:80:\"https://ps.w.org/woocommerce-paypal-payments/assets/icon-128x128.png?rev=3234615\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:83:\"https://ps.w.org/woocommerce-paypal-payments/assets/banner-1544x500.png?rev=3234615\";s:2:\"1x\";s:82:\"https://ps.w.org/woocommerce-paypal-payments/assets/banner-772x250.png?rev=3234615\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.5\";s:6:\"tested\";s:5:\"6.8.2\";s:12:\"requires_php\";s:3:\"7.4\";s:16:\"requires_plugins\";a:1:{i:0;s:11:\"woocommerce\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:55:\"pinterest-for-woocommerce/pinterest-for-woocommerce.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:39:\"w.org/plugins/pinterest-for-woocommerce\";s:4:\"slug\";s:25:\"pinterest-for-woocommerce\";s:6:\"plugin\";s:55:\"pinterest-for-woocommerce/pinterest-for-woocommerce.php\";s:11:\"new_version\";s:6:\"1.4.21\";s:3:\"url\";s:56:\"https://wordpress.org/plugins/pinterest-for-woocommerce/\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/plugin/pinterest-for-woocommerce.1.4.21.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:70:\"https://ps.w.org/pinterest-for-woocommerce/assets/icon.svg?rev=2619817\";s:3:\"svg\";s:70:\"https://ps.w.org/pinterest-for-woocommerce/assets/icon.svg?rev=2619817\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:81:\"https://ps.w.org/pinterest-for-woocommerce/assets/banner-1544x500.png?rev=2619817\";s:2:\"1x\";s:80:\"https://ps.w.org/pinterest-for-woocommerce/assets/banner-772x250.png?rev=2619817\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.6\";}}}','off'),
(1591,'recovery_mode_email_last_sent','1756753282','auto'),
(1635,'widget_akismet_widget','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(1975,'https_detection_errors','a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:36:\"HTTPS запрос неудачен.\";}}','auto'),
(1992,'woocommerce_task_list_reminder_bar_hidden','yes','auto'),
(1995,'_transient_timeout_woocommerce_marketplace_promotions_v2','1758493281','off'),
(1996,'_transient_woocommerce_marketplace_promotions_v2','a:0:{}','off'),
(2020,'_transient_timeout_wc_report_orders_stats_e2de45b604e2d960be1e1f76893503ee','1758556936','off'),
(2021,'_transient_wc_report_orders_stats_e2de45b604e2d960be1e1f76893503ee','a:2:{s:7:\"version\";s:10:\"1757951860\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:3:{i:0;a:6:{s:8:\"interval\";s:7:\"2025-38\";s:10:\"date_start\";s:19:\"2025-09-15 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2025-09-14 21:00:00\";s:8:\"date_end\";s:19:\"2025-09-15 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2025-09-15 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2025-37\";s:10:\"date_start\";s:19:\"2025-09-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2025-09-07 21:00:00\";s:8:\"date_end\";s:19:\"2025-09-14 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2025-09-14 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:7:\"2025-36\";s:10:\"date_start\";s:19:\"2025-09-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2025-08-31 21:00:00\";s:8:\"date_end\";s:19:\"2025-09-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2025-09-07 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:3;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','off'),
(2022,'_transient_timeout_wc_report_orders_stats_62d9ebe0bb6df7b6222e7127f47fba56','1758556936','off'),
(2023,'_transient_wc_report_orders_stats_62d9ebe0bb6df7b6222e7127f47fba56','a:2:{s:7:\"version\";s:10:\"1757951860\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:3:{i:0;a:6:{s:8:\"interval\";s:7:\"2025-38\";s:10:\"date_start\";s:19:\"2025-09-15 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2025-09-14 21:00:00\";s:8:\"date_end\";s:19:\"2025-09-15 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2025-09-15 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2025-37\";s:10:\"date_start\";s:19:\"2025-09-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2025-09-07 21:00:00\";s:8:\"date_end\";s:19:\"2025-09-14 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2025-09-14 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:7:\"2025-36\";s:10:\"date_start\";s:19:\"2025-09-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2025-08-31 21:00:00\";s:8:\"date_end\";s:19:\"2025-09-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2025-09-07 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:3;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','off'),
(2024,'_transient_timeout_wc_report_products_stats_809bb014d08e6f424e2a1451ab61662a','1758556936','off'),
(2025,'_transient_wc_report_products_stats_809bb014d08e6f424e2a1451ab61662a','a:2:{s:7:\"version\";s:10:\"1757951860\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":6:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:14:\"products_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:3:{i:0;a:6:{s:8:\"interval\";s:7:\"2025-38\";s:10:\"date_start\";s:19:\"2025-09-15 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2025-09-14 21:00:00\";s:8:\"date_end\";s:19:\"2025-09-15 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2025-09-15 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:14:\"products_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2025-37\";s:10:\"date_start\";s:19:\"2025-09-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2025-09-07 21:00:00\";s:8:\"date_end\";s:19:\"2025-09-14 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2025-09-14 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:14:\"products_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:7:\"2025-36\";s:10:\"date_start\";s:19:\"2025-09-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2025-08-31 21:00:00\";s:8:\"date_end\";s:19:\"2025-09-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2025-09-07 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:14:\"products_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:3;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','off'),
(2026,'_transient_timeout_wc_report_variations_stats_3c4286a523af7eaeb2ffe38df23763cb','1758556936','off'),
(2027,'_transient_wc_report_variations_stats_3c4286a523af7eaeb2ffe38df23763cb','a:2:{s:7:\"version\";s:10:\"1757951860\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":5:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:3:{i:0;a:6:{s:8:\"interval\";s:7:\"2025-38\";s:10:\"date_start\";s:19:\"2025-09-15 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2025-09-14 21:00:00\";s:8:\"date_end\";s:19:\"2025-09-15 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2025-09-15 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2025-37\";s:10:\"date_start\";s:19:\"2025-09-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2025-09-07 21:00:00\";s:8:\"date_end\";s:19:\"2025-09-14 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2025-09-14 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:7:\"2025-36\";s:10:\"date_start\";s:19:\"2025-09-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2025-08-31 21:00:00\";s:8:\"date_end\";s:19:\"2025-09-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2025-09-07 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:3;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','off'),
(2028,'_transient_timeout_wc_report_orders_stats_d33b1ff1ab39a6566c67d8cb82c5cf71','1758556936','off'),
(2029,'_transient_wc_report_orders_stats_d33b1ff1ab39a6566c67d8cb82c5cf71','a:2:{s:7:\"version\";s:10:\"1757951860\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":4:{s:11:\"net_revenue\";d:0;s:8:\"products\";i:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:15:{i:0;a:6:{s:8:\"interval\";s:10:\"2025-09-01\";s:10:\"date_start\";s:19:\"2025-09-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2025-08-31 21:00:00\";s:8:\"date_end\";s:19:\"2025-09-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2025-09-01 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2025-09-02\";s:10:\"date_start\";s:19:\"2025-09-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2025-09-01 21:00:00\";s:8:\"date_end\";s:19:\"2025-09-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2025-09-02 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:10:\"2025-09-03\";s:10:\"date_start\";s:19:\"2025-09-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2025-09-02 21:00:00\";s:8:\"date_end\";s:19:\"2025-09-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2025-09-03 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:10:\"2025-09-04\";s:10:\"date_start\";s:19:\"2025-09-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2025-09-03 21:00:00\";s:8:\"date_end\";s:19:\"2025-09-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2025-09-04 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:10:\"2025-09-05\";s:10:\"date_start\";s:19:\"2025-09-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2025-09-04 21:00:00\";s:8:\"date_end\";s:19:\"2025-09-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2025-09-05 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:5;a:6:{s:8:\"interval\";s:10:\"2025-09-06\";s:10:\"date_start\";s:19:\"2025-09-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2025-09-05 21:00:00\";s:8:\"date_end\";s:19:\"2025-09-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2025-09-06 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:6;a:6:{s:8:\"interval\";s:10:\"2025-09-07\";s:10:\"date_start\";s:19:\"2025-09-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2025-09-06 21:00:00\";s:8:\"date_end\";s:19:\"2025-09-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2025-09-07 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:7;a:6:{s:8:\"interval\";s:10:\"2025-09-08\";s:10:\"date_start\";s:19:\"2025-09-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2025-09-07 21:00:00\";s:8:\"date_end\";s:19:\"2025-09-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2025-09-08 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:8;a:6:{s:8:\"interval\";s:10:\"2025-09-09\";s:10:\"date_start\";s:19:\"2025-09-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2025-09-08 21:00:00\";s:8:\"date_end\";s:19:\"2025-09-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2025-09-09 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:9;a:6:{s:8:\"interval\";s:10:\"2025-09-10\";s:10:\"date_start\";s:19:\"2025-09-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2025-09-09 21:00:00\";s:8:\"date_end\";s:19:\"2025-09-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2025-09-10 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:10;a:6:{s:8:\"interval\";s:10:\"2025-09-11\";s:10:\"date_start\";s:19:\"2025-09-11 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2025-09-10 21:00:00\";s:8:\"date_end\";s:19:\"2025-09-11 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2025-09-11 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:11;a:6:{s:8:\"interval\";s:10:\"2025-09-12\";s:10:\"date_start\";s:19:\"2025-09-12 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2025-09-11 21:00:00\";s:8:\"date_end\";s:19:\"2025-09-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2025-09-12 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:12;a:6:{s:8:\"interval\";s:10:\"2025-09-13\";s:10:\"date_start\";s:19:\"2025-09-13 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2025-09-12 21:00:00\";s:8:\"date_end\";s:19:\"2025-09-13 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2025-09-13 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:13;a:6:{s:8:\"interval\";s:10:\"2025-09-14\";s:10:\"date_start\";s:19:\"2025-09-14 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2025-09-13 21:00:00\";s:8:\"date_end\";s:19:\"2025-09-14 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2025-09-14 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:14;a:6:{s:8:\"interval\";s:10:\"2025-09-15\";s:10:\"date_start\";s:19:\"2025-09-15 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2025-09-14 21:00:00\";s:8:\"date_end\";s:19:\"2025-09-15 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2025-09-15 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:15;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','off'),
(2043,'_site_transient_timeout_woocommerce_block_asset_resource_hints','1758554473','off'),
(2044,'_site_transient_woocommerce_block_asset_resource_hints','a:2:{s:5:\"files\";a:2:{s:13:\"cart-frontend\";a:44:{i:0;a:2:{s:4:\"href\";s:114:\"http://192.168.20.81/wp-content/plugins/woocommerce/assets/client/blocks/cart-frontend.js?ver=db09d88dfde01e08b9f8\";s:2:\"as\";s:6:\"script\";}i:1;a:2:{s:4:\"href\";s:131:\"http://192.168.20.81/wp-content/plugins/woocommerce/assets/client/blocks/wc-cart-checkout-base-frontend.js?ver=4929936dde15d33bd184\";s:2:\"as\";s:6:\"script\";}i:2;a:2:{s:4:\"href\";s:77:\"http://192.168.20.81/wp-includes/js/dist/vendor/wp-polyfill.min.js?ver=3.15.0\";s:2:\"as\";s:6:\"script\";}i:3;a:2:{s:4:\"href\";s:77:\"http://192.168.20.81/wp-includes/js/dist/i18n.min.js?ver=5e580eb46a90c2b997e6\";s:2:\"as\";s:6:\"script\";}i:4;a:2:{s:4:\"href\";s:78:\"http://192.168.20.81/wp-includes/js/dist/hooks.min.js?ver=4d63a3d491d11ffd8ac6\";s:2:\"as\";s:6:\"script\";}i:5;a:2:{s:4:\"href\";s:134:\"http://192.168.20.81/wp-content/plugins/woocommerce/assets/client/blocks/wc-cart-checkout-vendors-frontend.js?ver=c939a893efb4febadc26\";s:2:\"as\";s:6:\"script\";}i:9;a:2:{s:4:\"href\";s:73:\"http://192.168.20.81/wp-includes/js/dist/vendor/react.min.js?ver=18.3.1.1\";s:2:\"as\";s:6:\"script\";}i:10;a:2:{s:4:\"href\";s:83:\"http://192.168.20.81/wp-includes/js/dist/vendor/react-jsx-runtime.min.js?ver=18.3.1\";s:2:\"as\";s:6:\"script\";}i:12;a:2:{s:4:\"href\";s:116:\"http://192.168.20.81/wp-content/plugins/woocommerce/assets/client/blocks/blocks-checkout.js?ver=a1c2e7c31247ee1ae717\";s:2:\"as\";s:6:\"script\";}i:22;a:2:{s:4:\"href\";s:77:\"http://192.168.20.81/wp-includes/js/dist/vendor/react-dom.min.js?ver=18.3.1.1\";s:2:\"as\";s:6:\"script\";}i:26;a:2:{s:4:\"href\";s:118:\"http://192.168.20.81/wp-content/plugins/woocommerce/assets/client/blocks/blocks-components.js?ver=14f739e1c451e591f9da\";s:2:\"as\";s:6:\"script\";}i:40;a:2:{s:4:\"href\";s:115:\"http://192.168.20.81/wp-content/plugins/woocommerce/assets/client/blocks/wc-blocks-data.js?ver=d0ad299087b6ae74378b\";s:2:\"as\";s:6:\"script\";}i:41;a:2:{s:4:\"href\";s:123:\"http://192.168.20.81/wp-content/plugins/woocommerce/assets/client/blocks/blocks-checkout-events.js?ver=2d0fd4590f6cc663947c\";s:2:\"as\";s:6:\"script\";}i:42;a:2:{s:4:\"href\";s:109:\"http://192.168.20.81/wp-content/plugins/woocommerce/assets/client/blocks/wc-types.js?ver=35dee88875b85ff65531\";s:2:\"as\";s:6:\"script\";}i:47;a:2:{s:4:\"href\";s:119:\"http://192.168.20.81/wp-content/plugins/woocommerce/assets/client/blocks/wc-blocks-registry.js?ver=a16aa912ffa0a15063f1\";s:2:\"as\";s:6:\"script\";}i:50;a:2:{s:4:\"href\";s:112:\"http://192.168.20.81/wp-content/plugins/woocommerce/assets/client/blocks/wc-settings.js?ver=4f2e7067bd1c84cca43f\";s:2:\"as\";s:6:\"script\";}i:55;a:2:{s:4:\"href\";s:82:\"http://192.168.20.81/wp-includes/js/dist/api-fetch.min.js?ver=d387b816bc1ed2042e28\";s:2:\"as\";s:6:\"script\";}i:58;a:2:{s:4:\"href\";s:76:\"http://192.168.20.81/wp-includes/js/dist/url.min.js?ver=e87eb76272a3a08402d2\";s:2:\"as\";s:6:\"script\";}i:63;a:2:{s:4:\"href\";s:77:\"http://192.168.20.81/wp-includes/js/dist/data.min.js?ver=7c62e39de0308c73d50c\";s:2:\"as\";s:6:\"script\";}i:66;a:2:{s:4:\"href\";s:80:\"http://192.168.20.81/wp-includes/js/dist/compose.min.js?ver=d52df0f868e03c1bd905\";s:2:\"as\";s:6:\"script\";}i:70;a:2:{s:4:\"href\";s:83:\"http://192.168.20.81/wp-includes/js/dist/deprecated.min.js?ver=e1f84915c5e8ae38964c\";s:2:\"as\";s:6:\"script\";}i:72;a:2:{s:4:\"href\";s:76:\"http://192.168.20.81/wp-includes/js/dist/dom.min.js?ver=93117dfee2692b04b770\";s:2:\"as\";s:6:\"script\";}i:75;a:2:{s:4:\"href\";s:80:\"http://192.168.20.81/wp-includes/js/dist/element.min.js?ver=cb762d190aebbec25b27\";s:2:\"as\";s:6:\"script\";}i:79;a:2:{s:4:\"href\";s:84:\"http://192.168.20.81/wp-includes/js/dist/escape-html.min.js?ver=6561a406d2d232a6fbd2\";s:2:\"as\";s:6:\"script\";}i:80;a:2:{s:4:\"href\";s:89:\"http://192.168.20.81/wp-includes/js/dist/is-shallow-equal.min.js?ver=e0f9f1d78d83f5196979\";s:2:\"as\";s:6:\"script\";}i:81;a:2:{s:4:\"href\";s:81:\"http://192.168.20.81/wp-includes/js/dist/keycodes.min.js?ver=034ff647a54b018581d3\";s:2:\"as\";s:6:\"script\";}i:85;a:2:{s:4:\"href\";s:87:\"http://192.168.20.81/wp-includes/js/dist/priority-queue.min.js?ver=9c21c957c7e50ffdbf48\";s:2:\"as\";s:6:\"script\";}i:96;a:2:{s:4:\"href\";s:85:\"http://192.168.20.81/wp-includes/js/dist/private-apis.min.js?ver=4b858962c15c2c7a135f\";s:2:\"as\";s:6:\"script\";}i:97;a:2:{s:4:\"href\";s:86:\"http://192.168.20.81/wp-includes/js/dist/redux-routine.min.js?ver=a0a172871afaeb261566\";s:2:\"as\";s:6:\"script\";}i:163;a:2:{s:4:\"href\";s:86:\"http://192.168.20.81/wp-includes/js/dist/data-controls.min.js?ver=49f5587e8b90f9e7cc7e\";s:2:\"as\";s:6:\"script\";}i:218;a:2:{s:4:\"href\";s:86:\"http://192.168.20.81/wp-includes/js/dist/html-entities.min.js?ver=2cd3358363e0675638fb\";s:2:\"as\";s:6:\"script\";}i:222;a:2:{s:4:\"href\";s:80:\"http://192.168.20.81/wp-includes/js/dist/notices.min.js?ver=673a68a7ac2f556ed50b\";s:2:\"as\";s:6:\"script\";}i:261;a:2:{s:4:\"href\";s:121:\"http://192.168.20.81/wp-content/plugins/woocommerce/assets/client/blocks/wc-blocks-middleware.js?ver=d79dedade2f2e4dc9df4\";s:2:\"as\";s:6:\"script\";}i:286;a:2:{s:4:\"href\";s:77:\"http://192.168.20.81/wp-includes/js/dist/a11y.min.js?ver=3156534cc54473497e14\";s:2:\"as\";s:6:\"script\";}i:287;a:2:{s:4:\"href\";s:82:\"http://192.168.20.81/wp-includes/js/dist/dom-ready.min.js?ver=f77871ff7694fffea381\";s:2:\"as\";s:6:\"script\";}i:392;a:2:{s:4:\"href\";s:83:\"http://192.168.20.81/wp-includes/js/dist/primitives.min.js?ver=aef2543ab60c8c9bb609\";s:2:\"as\";s:6:\"script\";}i:821;a:2:{s:4:\"href\";s:80:\"http://192.168.20.81/wp-includes/js/dist/warning.min.js?ver=ed7c8b0940914f4fe44b\";s:2:\"as\";s:6:\"script\";}i:1493;a:2:{s:4:\"href\";s:125:\"http://192.168.20.81/wp-content/plugins/woocommerce/assets/client/blocks/wc-blocks-shared-context.js?ver=1d9ff4f03584490ad390\";s:2:\"as\";s:6:\"script\";}i:1504;a:2:{s:4:\"href\";s:122:\"http://192.168.20.81/wp-content/plugins/woocommerce/assets/client/blocks/wc-blocks-shared-hocs.js?ver=99a2a0de38bfa707fc7b\";s:2:\"as\";s:6:\"script\";}i:1793;a:2:{s:4:\"href\";s:113:\"http://192.168.20.81/wp-content/plugins/woocommerce/assets/client/blocks/price-format.js?ver=57e176e7cc02bdd27978\";s:2:\"as\";s:6:\"script\";}i:1833;a:2:{s:4:\"href\";s:78:\"http://192.168.20.81/wp-includes/js/dist/autop.min.js?ver=9fb50649848277dd318d\";s:2:\"as\";s:6:\"script\";}i:1940;a:2:{s:4:\"href\";s:80:\"http://192.168.20.81/wp-includes/js/dist/plugins.min.js?ver=ef6da4a9b2747b62c09c\";s:2:\"as\";s:6:\"script\";}i:1987;a:2:{s:4:\"href\";s:85:\"http://192.168.20.81/wp-includes/js/dist/style-engine.min.js?ver=08cc10e9532531e22456\";s:2:\"as\";s:6:\"script\";}i:1988;a:2:{s:4:\"href\";s:82:\"http://192.168.20.81/wp-includes/js/dist/wordcount.min.js?ver=55d8c2bf3dc99e7ea5ec\";s:2:\"as\";s:6:\"script\";}}s:17:\"checkout-frontend\";a:47:{i:0;a:2:{s:4:\"href\";s:118:\"http://192.168.20.81/wp-content/plugins/woocommerce/assets/client/blocks/checkout-frontend.js?ver=9284299da7eb3a8b062c\";s:2:\"as\";s:6:\"script\";}i:1;a:2:{s:4:\"href\";s:131:\"http://192.168.20.81/wp-content/plugins/woocommerce/assets/client/blocks/wc-cart-checkout-base-frontend.js?ver=4929936dde15d33bd184\";s:2:\"as\";s:6:\"script\";}i:2;a:2:{s:4:\"href\";s:77:\"http://192.168.20.81/wp-includes/js/dist/vendor/wp-polyfill.min.js?ver=3.15.0\";s:2:\"as\";s:6:\"script\";}i:3;a:2:{s:4:\"href\";s:77:\"http://192.168.20.81/wp-includes/js/dist/i18n.min.js?ver=5e580eb46a90c2b997e6\";s:2:\"as\";s:6:\"script\";}i:4;a:2:{s:4:\"href\";s:78:\"http://192.168.20.81/wp-includes/js/dist/hooks.min.js?ver=4d63a3d491d11ffd8ac6\";s:2:\"as\";s:6:\"script\";}i:5;a:2:{s:4:\"href\";s:134:\"http://192.168.20.81/wp-content/plugins/woocommerce/assets/client/blocks/wc-cart-checkout-vendors-frontend.js?ver=c939a893efb4febadc26\";s:2:\"as\";s:6:\"script\";}i:9;a:2:{s:4:\"href\";s:73:\"http://192.168.20.81/wp-includes/js/dist/vendor/react.min.js?ver=18.3.1.1\";s:2:\"as\";s:6:\"script\";}i:10;a:2:{s:4:\"href\";s:83:\"http://192.168.20.81/wp-includes/js/dist/vendor/react-jsx-runtime.min.js?ver=18.3.1\";s:2:\"as\";s:6:\"script\";}i:12;a:2:{s:4:\"href\";s:116:\"http://192.168.20.81/wp-content/plugins/woocommerce/assets/client/blocks/blocks-checkout.js?ver=a1c2e7c31247ee1ae717\";s:2:\"as\";s:6:\"script\";}i:22;a:2:{s:4:\"href\";s:77:\"http://192.168.20.81/wp-includes/js/dist/vendor/react-dom.min.js?ver=18.3.1.1\";s:2:\"as\";s:6:\"script\";}i:26;a:2:{s:4:\"href\";s:118:\"http://192.168.20.81/wp-content/plugins/woocommerce/assets/client/blocks/blocks-components.js?ver=14f739e1c451e591f9da\";s:2:\"as\";s:6:\"script\";}i:40;a:2:{s:4:\"href\";s:115:\"http://192.168.20.81/wp-content/plugins/woocommerce/assets/client/blocks/wc-blocks-data.js?ver=d0ad299087b6ae74378b\";s:2:\"as\";s:6:\"script\";}i:41;a:2:{s:4:\"href\";s:123:\"http://192.168.20.81/wp-content/plugins/woocommerce/assets/client/blocks/blocks-checkout-events.js?ver=2d0fd4590f6cc663947c\";s:2:\"as\";s:6:\"script\";}i:42;a:2:{s:4:\"href\";s:109:\"http://192.168.20.81/wp-content/plugins/woocommerce/assets/client/blocks/wc-types.js?ver=35dee88875b85ff65531\";s:2:\"as\";s:6:\"script\";}i:47;a:2:{s:4:\"href\";s:119:\"http://192.168.20.81/wp-content/plugins/woocommerce/assets/client/blocks/wc-blocks-registry.js?ver=a16aa912ffa0a15063f1\";s:2:\"as\";s:6:\"script\";}i:50;a:2:{s:4:\"href\";s:112:\"http://192.168.20.81/wp-content/plugins/woocommerce/assets/client/blocks/wc-settings.js?ver=4f2e7067bd1c84cca43f\";s:2:\"as\";s:6:\"script\";}i:55;a:2:{s:4:\"href\";s:82:\"http://192.168.20.81/wp-includes/js/dist/api-fetch.min.js?ver=d387b816bc1ed2042e28\";s:2:\"as\";s:6:\"script\";}i:58;a:2:{s:4:\"href\";s:76:\"http://192.168.20.81/wp-includes/js/dist/url.min.js?ver=e87eb76272a3a08402d2\";s:2:\"as\";s:6:\"script\";}i:63;a:2:{s:4:\"href\";s:77:\"http://192.168.20.81/wp-includes/js/dist/data.min.js?ver=7c62e39de0308c73d50c\";s:2:\"as\";s:6:\"script\";}i:66;a:2:{s:4:\"href\";s:80:\"http://192.168.20.81/wp-includes/js/dist/compose.min.js?ver=d52df0f868e03c1bd905\";s:2:\"as\";s:6:\"script\";}i:70;a:2:{s:4:\"href\";s:83:\"http://192.168.20.81/wp-includes/js/dist/deprecated.min.js?ver=e1f84915c5e8ae38964c\";s:2:\"as\";s:6:\"script\";}i:72;a:2:{s:4:\"href\";s:76:\"http://192.168.20.81/wp-includes/js/dist/dom.min.js?ver=93117dfee2692b04b770\";s:2:\"as\";s:6:\"script\";}i:75;a:2:{s:4:\"href\";s:80:\"http://192.168.20.81/wp-includes/js/dist/element.min.js?ver=cb762d190aebbec25b27\";s:2:\"as\";s:6:\"script\";}i:79;a:2:{s:4:\"href\";s:84:\"http://192.168.20.81/wp-includes/js/dist/escape-html.min.js?ver=6561a406d2d232a6fbd2\";s:2:\"as\";s:6:\"script\";}i:80;a:2:{s:4:\"href\";s:89:\"http://192.168.20.81/wp-includes/js/dist/is-shallow-equal.min.js?ver=e0f9f1d78d83f5196979\";s:2:\"as\";s:6:\"script\";}i:81;a:2:{s:4:\"href\";s:81:\"http://192.168.20.81/wp-includes/js/dist/keycodes.min.js?ver=034ff647a54b018581d3\";s:2:\"as\";s:6:\"script\";}i:85;a:2:{s:4:\"href\";s:87:\"http://192.168.20.81/wp-includes/js/dist/priority-queue.min.js?ver=9c21c957c7e50ffdbf48\";s:2:\"as\";s:6:\"script\";}i:96;a:2:{s:4:\"href\";s:85:\"http://192.168.20.81/wp-includes/js/dist/private-apis.min.js?ver=4b858962c15c2c7a135f\";s:2:\"as\";s:6:\"script\";}i:97;a:2:{s:4:\"href\";s:86:\"http://192.168.20.81/wp-includes/js/dist/redux-routine.min.js?ver=a0a172871afaeb261566\";s:2:\"as\";s:6:\"script\";}i:163;a:2:{s:4:\"href\";s:86:\"http://192.168.20.81/wp-includes/js/dist/data-controls.min.js?ver=49f5587e8b90f9e7cc7e\";s:2:\"as\";s:6:\"script\";}i:218;a:2:{s:4:\"href\";s:86:\"http://192.168.20.81/wp-includes/js/dist/html-entities.min.js?ver=2cd3358363e0675638fb\";s:2:\"as\";s:6:\"script\";}i:222;a:2:{s:4:\"href\";s:80:\"http://192.168.20.81/wp-includes/js/dist/notices.min.js?ver=673a68a7ac2f556ed50b\";s:2:\"as\";s:6:\"script\";}i:261;a:2:{s:4:\"href\";s:121:\"http://192.168.20.81/wp-content/plugins/woocommerce/assets/client/blocks/wc-blocks-middleware.js?ver=d79dedade2f2e4dc9df4\";s:2:\"as\";s:6:\"script\";}i:286;a:2:{s:4:\"href\";s:77:\"http://192.168.20.81/wp-includes/js/dist/a11y.min.js?ver=3156534cc54473497e14\";s:2:\"as\";s:6:\"script\";}i:287;a:2:{s:4:\"href\";s:82:\"http://192.168.20.81/wp-includes/js/dist/dom-ready.min.js?ver=f77871ff7694fffea381\";s:2:\"as\";s:6:\"script\";}i:392;a:2:{s:4:\"href\";s:83:\"http://192.168.20.81/wp-includes/js/dist/primitives.min.js?ver=aef2543ab60c8c9bb609\";s:2:\"as\";s:6:\"script\";}i:821;a:2:{s:4:\"href\";s:80:\"http://192.168.20.81/wp-includes/js/dist/warning.min.js?ver=ed7c8b0940914f4fe44b\";s:2:\"as\";s:6:\"script\";}i:1493;a:2:{s:4:\"href\";s:122:\"http://192.168.20.81/wp-content/plugins/woocommerce/assets/client/blocks/wc-blocks-shared-hocs.js?ver=99a2a0de38bfa707fc7b\";s:2:\"as\";s:6:\"script\";}i:1727;a:2:{s:4:\"href\";s:125:\"http://192.168.20.81/wp-content/plugins/woocommerce/assets/client/blocks/wc-blocks-shared-context.js?ver=1d9ff4f03584490ad390\";s:2:\"as\";s:6:\"script\";}i:1782;a:2:{s:4:\"href\";s:113:\"http://192.168.20.81/wp-content/plugins/woocommerce/assets/client/blocks/price-format.js?ver=57e176e7cc02bdd27978\";s:2:\"as\";s:6:\"script\";}i:1822;a:2:{s:4:\"href\";s:78:\"http://192.168.20.81/wp-includes/js/dist/autop.min.js?ver=9fb50649848277dd318d\";s:2:\"as\";s:6:\"script\";}i:1823;a:2:{s:4:\"href\";s:83:\"http://192.168.20.81/wp-includes/js/dist/components.min.js?ver=fe486283a957ca5ed7c6\";s:2:\"as\";s:6:\"script\";}i:1853;a:2:{s:4:\"href\";s:77:\"http://192.168.20.81/wp-includes/js/dist/date.min.js?ver=aaca6387d1cf924acc51\";s:2:\"as\";s:6:\"script\";}i:1854;a:2:{s:4:\"href\";s:72:\"http://192.168.20.81/wp-includes/js/dist/vendor/moment.min.js?ver=2.30.1\";s:2:\"as\";s:6:\"script\";}i:1886;a:2:{s:4:\"href\";s:82:\"http://192.168.20.81/wp-includes/js/dist/rich-text.min.js?ver=4021b9e4e9ef4d3cd868\";s:2:\"as\";s:6:\"script\";}i:2067;a:2:{s:4:\"href\";s:80:\"http://192.168.20.81/wp-includes/js/dist/plugins.min.js?ver=ef6da4a9b2747b62c09c\";s:2:\"as\";s:6:\"script\";}i:2116;a:2:{s:4:\"href\";s:82:\"http://192.168.20.81/wp-includes/js/dist/wordcount.min.js?ver=55d8c2bf3dc99e7ea5ec\";s:2:\"as\";s:6:\"script\";}}}s:7:\"version\";a:3:{s:11:\"woocommerce\";s:6:\"10.1.0\";s:9:\"wordpress\";s:5:\"6.7.3\";s:8:\"site_url\";s:20:\"http://192.168.20.81\";}}','off'),
(2117,'_site_transient_timeout_wp_theme_files_patterns-b24c4b64a1fe6f9f73313f730ddfc1cf','1758408681','off'),
(2118,'_site_transient_wp_theme_files_patterns-b24c4b64a1fe6f9f73313f730ddfc1cf','a:2:{s:7:\"version\";s:3:\"1.3\";s:8:\"patterns\";a:98:{s:21:\"banner-about-book.php\";a:4:{s:5:\"title\";s:28:\"Banner with book description\";s:4:\"slug\";s:34:\"twentytwentyfive/banner-about-book\";s:11:\"description\";s:66:\"Banner with book description and accompanying image for promotion.\";s:10:\"categories\";a:1:{i:0;s:6:\"banner\";}}s:28:\"banner-cover-big-heading.php\";a:4:{s:5:\"title\";s:22:\"Cover with big heading\";s:4:\"slug\";s:41:\"twentytwentyfive/banner-cover-big-heading\";s:11:\"description\";s:82:\"A full-width cover section with a large background image and an oversized heading.\";s:10:\"categories\";a:3:{i:0;s:6:\"banner\";i:1;s:5:\"about\";i:2;s:8:\"featured\";}}s:22:\"banner-intro-image.php\";a:4:{s:5:\"title\";s:49:\"Short heading and paragraph and image on the left\";s:4:\"slug\";s:35:\"twentytwentyfive/banner-intro-image\";s:11:\"description\";s:68:\"A Intro pattern with Short heading, paragraph and image on the left.\";s:10:\"categories\";a:2:{i:0;s:6:\"banner\";i:1;s:8:\"featured\";}}s:16:\"banner-intro.php\";a:4:{s:5:\"title\";s:35:\"Intro with left-aligned description\";s:4:\"slug\";s:29:\"twentytwentyfive/banner-intro\";s:11:\"description\";s:66:\"A large left-aligned heading with a brand name emphasized in bold.\";s:10:\"categories\";a:1:{i:0;s:6:\"banner\";}}s:17:\"banner-poster.php\";a:4:{s:5:\"title\";s:19:\"Poster-like section\";s:4:\"slug\";s:30:\"twentytwentyfive/banner-poster\";s:11:\"description\";s:78:\"A section that can be used as a banner or a landing page to announce an event.\";s:10:\"categories\";a:2:{i:0;s:6:\"banner\";i:1;s:5:\"media\";}}s:43:\"banner-with-description-and-images-grid.php\";a:4:{s:5:\"title\";s:39:\"Banner with description and images grid\";s:4:\"slug\";s:47:\"twentytwentyfive/banner-description-images-grid\";s:11:\"description\";s:75:\"A banner with a short paragraph, and two images displayed in a grid layout.\";s:10:\"categories\";a:2:{i:0;s:6:\"banner\";i:1;s:8:\"featured\";}}s:18:\"binding-format.php\";a:4:{s:5:\"title\";s:16:\"Post format name\";s:4:\"slug\";s:31:\"twentytwentyfive/binding-format\";s:11:\"description\";s:75:\"Prints the name of the post format with the help of the Block Bindings API.\";s:10:\"categories\";a:1:{i:0;s:28:\"twentytwentyfive_post-format\";}}s:12:\"comments.php\";a:5:{s:5:\"title\";s:8:\"Comments\";s:4:\"slug\";s:25:\"twentytwentyfive/comments\";s:11:\"description\";s:63:\"Comments area with comments list, pagination, and comment form.\";s:10:\"categories\";a:1:{i:0;s:4:\"text\";}s:10:\"blockTypes\";a:1:{i:0;s:13:\"core/comments\";}}s:32:\"contact-centered-social-link.php\";a:5:{s:5:\"title\";s:30:\"Centered link and social links\";s:4:\"slug\";s:45:\"twentytwentyfive/contact-centered-social-link\";s:11:\"description\";s:73:\"Centered contact section with a prominent message and social media links.\";s:10:\"categories\";a:1:{i:0;s:7:\"contact\";}s:8:\"keywords\";a:3:{i:0;s:7:\"contact\";i:1;s:3:\"faq\";i:2;s:9:\"questions\";}}s:26:\"contact-info-locations.php\";a:6:{s:5:\"title\";s:27:\"Contact, info and locations\";s:4:\"slug\";s:39:\"twentytwentyfive/contact-info-locations\";s:11:\"description\";s:78:\"Contact section with social media links, email, and multiple location details.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:1:{i:0;s:7:\"contact\";}s:8:\"keywords\";a:2:{i:0;s:7:\"contact\";i:1;s:8:\"location\";}}s:29:\"contact-location-and-link.php\";a:4:{s:5:\"title\";s:25:\"Contact location and link\";s:4:\"slug\";s:42:\"twentytwentyfive/contact-location-and-link\";s:11:\"description\";s:89:\"Contact section with a location address, a directions link, and an image of the location.\";s:10:\"categories\";a:2:{i:0;s:7:\"contact\";i:1;s:8:\"featured\";}}s:18:\"cta-book-links.php\";a:4:{s:5:\"title\";s:30:\"Call to action with book links\";s:4:\"slug\";s:31:\"twentytwentyfive/cta-book-links\";s:11:\"description\";s:74:\"A call to action section with links to get the book in different websites.\";s:10:\"categories\";a:1:{i:0;s:14:\"call-to-action\";}}s:22:\"cta-book-locations.php\";a:4:{s:5:\"title\";s:29:\"Call to action with locations\";s:4:\"slug\";s:35:\"twentytwentyfive/cta-book-locations\";s:11:\"description\";s:82:\"A call to action section with links to get the book in the most popular locations.\";s:10:\"categories\";a:1:{i:0;s:14:\"call-to-action\";}}s:24:\"cta-centered-heading.php\";a:4:{s:5:\"title\";s:16:\"Centered heading\";s:4:\"slug\";s:37:\"twentytwentyfive/cta-centered-heading\";s:11:\"description\";s:53:\"A hero with a centered heading, paragraph and button.\";s:10:\"categories\";a:1:{i:0;s:14:\"call-to-action\";}}s:19:\"cta-events-list.php\";a:4:{s:5:\"title\";s:11:\"Events list\";s:4:\"slug\";s:32:\"twentytwentyfive/cta-events-list\";s:11:\"description\";s:37:\"A list of events with call to action.\";s:10:\"categories\";a:1:{i:0;s:14:\"call-to-action\";}}s:26:\"cta-grid-products-link.php\";a:5:{s:5:\"title\";s:54:\"Call to action with grid layout with products and link\";s:4:\"slug\";s:39:\"twentytwentyfive/cta-grid-products-link\";s:11:\"description\";s:42:\"A call to action featuring product images.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:14:\"call-to-action\";i:1;s:8:\"featured\";}}s:22:\"cta-heading-search.php\";a:4:{s:5:\"title\";s:23:\"Heading and search form\";s:4:\"slug\";s:35:\"twentytwentyfive/cta-heading-search\";s:11:\"description\";s:54:\"Large heading with a search form for quick navigation.\";s:10:\"categories\";a:1:{i:0;s:14:\"call-to-action\";}}s:18:\"cta-newsletter.php\";a:5:{s:5:\"title\";s:18:\"Newsletter sign-up\";s:4:\"slug\";s:31:\"twentytwentyfive/cta-newsletter\";s:11:\"description\";s:0:\"\";s:10:\"categories\";a:1:{i:0;s:14:\"call-to-action\";}s:8:\"keywords\";a:2:{i:0;s:14:\"call-to-action\";i:1;s:10:\"newsletter\";}}s:15:\"event-3-col.php\";a:5:{s:5:\"title\";s:46:\"Events, 3 columns with event images and titles\";s:4:\"slug\";s:28:\"twentytwentyfive/event-3-col\";s:11:\"description\";s:95:\"A header with title and text and three columns that show 3 events with their images and titles.\";s:10:\"categories\";a:1:{i:0;s:6:\"banner\";}s:8:\"keywords\";a:3:{i:0;s:6:\"events\";i:1;s:7:\"columns\";i:2;s:6:\"images\";}}s:14:\"event-rsvp.php\";a:7:{s:5:\"title\";s:10:\"Event RSVP\";s:4:\"slug\";s:27:\"twentytwentyfive/event-rsvp\";s:11:\"description\";s:64:\"RSVP for an upcoming event with a cover image and event details.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:1:{i:0;s:14:\"call-to-action\";}s:8:\"keywords\";a:3:{i:0;s:14:\"call-to-action\";i:1;s:4:\"rsvp\";i:2;s:5:\"event\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}}s:18:\"event-schedule.php\";a:5:{s:5:\"title\";s:14:\"Event schedule\";s:4:\"slug\";s:31:\"twentytwentyfive/event-schedule\";s:11:\"description\";s:54:\"A section with specified dates and times for an event.\";s:10:\"categories\";a:1:{i:0;s:5:\"about\";}s:8:\"keywords\";a:4:{i:0;s:6:\"events\";i:1;s:6:\"agenda\";i:2;s:8:\"schedule\";i:3;s:8:\"lectures\";}}s:19:\"footer-centered.php\";a:5:{s:5:\"title\";s:15:\"Centered footer\";s:4:\"slug\";s:32:\"twentytwentyfive/footer-centered\";s:11:\"description\";s:44:\"Footer with centered site title and tagline.\";s:10:\"categories\";a:1:{i:0;s:6:\"footer\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/template-part/footer\";}}s:18:\"footer-columns.php\";a:5:{s:5:\"title\";s:19:\"Footer with columns\";s:4:\"slug\";s:31:\"twentytwentyfive/footer-columns\";s:11:\"description\";s:45:\"Footer columns with title, tagline and links.\";s:10:\"categories\";a:1:{i:0;s:6:\"footer\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/template-part/footer\";}}s:21:\"footer-newsletter.php\";a:5:{s:5:\"title\";s:29:\"Footer with newsletter signup\";s:4:\"slug\";s:34:\"twentytwentyfive/footer-newsletter\";s:11:\"description\";s:51:\"Footer with large site title and newsletter signup.\";s:10:\"categories\";a:1:{i:0;s:6:\"footer\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/template-part/footer\";}}s:17:\"footer-social.php\";a:5:{s:5:\"title\";s:33:\"Centered footer with social links\";s:4:\"slug\";s:30:\"twentytwentyfive/footer-social\";s:11:\"description\";s:49:\"Footer with centered site title and social links.\";s:10:\"categories\";a:1:{i:0;s:6:\"footer\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/template-part/footer\";}}s:10:\"footer.php\";a:5:{s:5:\"title\";s:6:\"Footer\";s:4:\"slug\";s:23:\"twentytwentyfive/footer\";s:11:\"description\";s:51:\"Footer columns with logo, title, tagline and links.\";s:10:\"categories\";a:1:{i:0;s:6:\"footer\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/template-part/footer\";}}s:16:\"format-audio.php\";a:4:{s:5:\"title\";s:12:\"Audio format\";s:4:\"slug\";s:29:\"twentytwentyfive/format-audio\";s:11:\"description\";s:73:\"An audio post format with an image, title, audio player, and description.\";s:10:\"categories\";a:1:{i:0;s:28:\"twentytwentyfive_post-format\";}}s:15:\"format-link.php\";a:4:{s:5:\"title\";s:11:\"Link format\";s:4:\"slug\";s:28:\"twentytwentyfive/format-link\";s:11:\"description\";s:77:\"A link post format with a description and an emphasized link for key content.\";s:10:\"categories\";a:1:{i:0;s:28:\"twentytwentyfive_post-format\";}}s:15:\"grid-videos.php\";a:4:{s:5:\"title\";s:16:\"Grid with videos\";s:4:\"slug\";s:28:\"twentytwentyfive/grid-videos\";s:11:\"description\";s:19:\"A grid with videos.\";s:10:\"categories\";a:1:{i:0;s:5:\"about\";}}s:24:\"grid-with-categories.php\";a:5:{s:5:\"title\";s:20:\"Grid with categories\";s:4:\"slug\";s:37:\"twentytwentyfive/grid-with-categories\";s:11:\"description\";s:41:\"A grid section with different categories.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:1:{i:0;s:6:\"banner\";}}s:19:\"header-centered.php\";a:5:{s:5:\"title\";s:20:\"Centered site header\";s:4:\"slug\";s:32:\"twentytwentyfive/header-centered\";s:11:\"description\";s:52:\"Site header with centered site title and navigation.\";s:10:\"categories\";a:1:{i:0;s:6:\"header\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/template-part/header\";}}s:18:\"header-columns.php\";a:5:{s:5:\"title\";s:19:\"Header with columns\";s:4:\"slug\";s:31:\"twentytwentyfive/header-columns\";s:11:\"description\";s:54:\"Site header with site title and navigation in columns.\";s:10:\"categories\";a:1:{i:0;s:6:\"header\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/template-part/header\";}}s:22:\"header-large-title.php\";a:5:{s:5:\"title\";s:23:\"Header with large title\";s:4:\"slug\";s:35:\"twentytwentyfive/header-large-title\";s:11:\"description\";s:63:\"Site header with large site title and right-aligned navigation.\";s:10:\"categories\";a:1:{i:0;s:6:\"header\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/template-part/header\";}}s:10:\"header.php\";a:5:{s:5:\"title\";s:6:\"Header\";s:4:\"slug\";s:23:\"twentytwentyfive/header\";s:11:\"description\";s:43:\"Site header with site title and navigation.\";s:10:\"categories\";a:1:{i:0;s:6:\"header\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/template-part/header\";}}s:36:\"heading-and-paragraph-with-image.php\";a:4:{s:5:\"title\";s:45:\"Heading and paragraph with image on the right\";s:4:\"slug\";s:49:\"twentytwentyfive/heading-and-paragraph-with-image\";s:11:\"description\";s:89:\"A two-column section with a heading and paragraph on the left, and an image on the right.\";s:10:\"categories\";a:1:{i:0;s:5:\"about\";}}s:13:\"hero-book.php\";a:5:{s:5:\"title\";s:9:\"Hero book\";s:4:\"slug\";s:26:\"twentytwentyfive/hero-book\";s:11:\"description\";s:66:\"A hero section for the book with a description and pre-order link.\";s:10:\"categories\";a:1:{i:0;s:6:\"banner\";}s:8:\"keywords\";a:3:{i:0;s:7:\"podcast\";i:1;s:4:\"hero\";i:2;s:7:\"stories\";}}s:25:\"hero-full-width-image.php\";a:4:{s:5:\"title\";s:22:\"Hero, full width image\";s:4:\"slug\";s:38:\"twentytwentyfive/hero-full-width-image\";s:11:\"description\";s:68:\"A hero with a full width image, heading, short paragraph and button.\";s:10:\"categories\";a:1:{i:0;s:6:\"banner\";}}s:41:\"hero-overlapped-book-cover-with-links.php\";a:4:{s:5:\"title\";s:38:\"Hero, overlapped book cover with links\";s:4:\"slug\";s:54:\"twentytwentyfive/hero-overlapped-book-cover-with-links\";s:11:\"description\";s:47:\"A hero with an overlapped book cover and links.\";s:10:\"categories\";a:1:{i:0;s:6:\"banner\";}}s:16:\"hero-podcast.php\";a:5:{s:5:\"title\";s:12:\"Hero podcast\";s:4:\"slug\";s:29:\"twentytwentyfive/hero-podcast\";s:11:\"description\";s:0:\"\";s:10:\"categories\";a:1:{i:0;s:6:\"banner\";}s:8:\"keywords\";a:3:{i:0;s:7:\"podcast\";i:1;s:4:\"hero\";i:2;s:7:\"stories\";}}s:14:\"hidden-404.php\";a:4:{s:5:\"title\";s:3:\"404\";s:4:\"slug\";s:27:\"twentytwentyfive/hidden-404\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:23:\"hidden-blog-heading.php\";a:4:{s:5:\"title\";s:19:\"Hidden blog heading\";s:4:\"slug\";s:36:\"twentytwentyfive/hidden-blog-heading\";s:11:\"description\";s:52:\"Hidden heading for the home page and index template.\";s:8:\"inserter\";b:0;}s:17:\"hidden-search.php\";a:4:{s:5:\"title\";s:6:\"Search\";s:4:\"slug\";s:30:\"twentytwentyfive/hidden-search\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:18:\"hidden-sidebar.php\";a:4:{s:5:\"title\";s:7:\"Sidebar\";s:4:\"slug\";s:31:\"twentytwentyfive/hidden-sidebar\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:21:\"hidden-written-by.php\";a:4:{s:5:\"title\";s:10:\"Written by\";s:4:\"slug\";s:34:\"twentytwentyfive/hidden-written-by\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:9:\"logos.php\";a:4:{s:5:\"title\";s:5:\"Logos\";s:4:\"slug\";s:22:\"twentytwentyfive/logos\";s:11:\"description\";s:77:\"Showcasing the podcast\'s clients with a heading and a series of client logos.\";s:10:\"categories\";a:1:{i:0;s:6:\"banner\";}}s:24:\"media-instagram-grid.php\";a:5:{s:5:\"title\";s:14:\"Instagram grid\";s:4:\"slug\";s:37:\"twentytwentyfive/media-instagram-grid\";s:11:\"description\";s:62:\"A grid section with photos and a link to an Instagram profile.\";s:13:\"viewportWidth\";i:1440;s:10:\"categories\";a:3:{i:0;s:5:\"media\";i:1;s:7:\"gallery\";i:2;s:8:\"featured\";}}s:14:\"more-posts.php\";a:5:{s:5:\"title\";s:10:\"More posts\";s:4:\"slug\";s:27:\"twentytwentyfive/more-posts\";s:11:\"description\";s:45:\"Displays a list of posts with title and date.\";s:10:\"categories\";a:1:{i:0;s:5:\"query\";}s:10:\"blockTypes\";a:1:{i:0;s:10:\"core/query\";}}s:21:\"overlapped-images.php\";a:4:{s:5:\"title\";s:41:\"Overlapping images and paragraph on right\";s:4:\"slug\";s:34:\"twentytwentyfive/overlapped-images\";s:11:\"description\";s:53:\"A section with overlapping images, and a description.\";s:10:\"categories\";a:2:{i:0;s:5:\"about\";i:1;s:8:\"featured\";}}s:22:\"page-business-home.php\";a:8:{s:5:\"title\";s:17:\"Business homepage\";s:4:\"slug\";s:35:\"twentytwentyfive/page-business-home\";s:11:\"description\";s:28:\"A business homepage pattern.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:21:\"twentytwentyfive_page\";i:1;s:8:\"featured\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}s:9:\"postTypes\";a:2:{i:0;s:4:\"page\";i:1;s:11:\"wp_template\";}}s:20:\"page-coming-soon.php\";a:8:{s:5:\"title\";s:11:\"Coming soon\";s:4:\"slug\";s:33:\"twentytwentyfive/page-coming-soon\";s:11:\"description\";s:96:\"A full-width cover banner that can be applied to a page or it can work as a single landing page.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:21:\"twentytwentyfive_page\";i:1;s:8:\"featured\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}s:9:\"postTypes\";a:2:{i:0;s:4:\"page\";i:1;s:11:\"wp_template\";}}s:15:\"page-cv-bio.php\";a:7:{s:5:\"title\";s:6:\"CV/bio\";s:4:\"slug\";s:28:\"twentytwentyfive/page-cv-bio\";s:11:\"description\";s:36:\"A pattern for a CV/Bio landing page.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:3:{i:0;s:21:\"twentytwentyfive_page\";i:1;s:5:\"about\";i:2;s:8:\"featured\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}}s:21:\"page-landing-book.php\";a:8:{s:5:\"title\";s:21:\"Landing page for book\";s:4:\"slug\";s:34:\"twentytwentyfive/page-landing-book\";s:11:\"description\";s:104:\"A landing page for the book with a hero section, pre-order links, locations, FAQs and newsletter signup.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:21:\"twentytwentyfive_page\";i:1;s:8:\"featured\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}s:9:\"postTypes\";a:2:{i:0;s:4:\"page\";i:1;s:11:\"wp_template\";}}s:22:\"page-landing-event.php\";a:8:{s:5:\"title\";s:22:\"Landing page for event\";s:4:\"slug\";s:35:\"twentytwentyfive/page-landing-event\";s:11:\"description\";s:87:\"A landing page for the event with a hero section, description, FAQs and call to action.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:21:\"twentytwentyfive_page\";i:1;s:8:\"featured\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}s:9:\"postTypes\";a:2:{i:0;s:4:\"page\";i:1;s:11:\"wp_template\";}}s:24:\"page-landing-podcast.php\";a:8:{s:5:\"title\";s:24:\"Landing page for podcast\";s:4:\"slug\";s:37:\"twentytwentyfive/page-landing-podcast\";s:11:\"description\";s:111:\"A landing page for the podcast with a hero section, description, logos, grid with videos and newsletter signup.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:21:\"twentytwentyfive_page\";i:1;s:8:\"featured\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}s:9:\"postTypes\";a:2:{i:0;s:4:\"page\";i:1;s:11:\"wp_template\";}}s:50:\"page-link-in-bio-heading-paragraph-links-image.php\";a:7:{s:5:\"title\";s:59:\"Link in bio heading, paragraph, links and full-height image\";s:4:\"slug\";s:63:\"twentytwentyfive/page-link-in-bio-heading-paragraph-links-image\";s:11:\"description\";s:84:\"A link in bio landing page with a heading, paragraph, links and a full height image.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:3:{i:0;s:21:\"twentytwentyfive_page\";i:1;s:6:\"banner\";i:2;s:8:\"featured\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}}s:33:\"page-link-in-bio-wide-margins.php\";a:7:{s:5:\"title\";s:48:\"Link in bio with profile, links and wide margins\";s:4:\"slug\";s:46:\"twentytwentyfive/page-link-in-bio-wide-margins\";s:11:\"description\";s:86:\"A link in bio landing page with social links, a profile photo and a brief description.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:3:{i:0;s:21:\"twentytwentyfive_page\";i:1;s:6:\"banner\";i:2;s:8:\"featured\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}}s:39:\"page-link-in-bio-with-tight-margins.php\";a:8:{s:5:\"title\";s:30:\"Link in bio with tight margins\";s:4:\"slug\";s:52:\"twentytwentyfive/page-link-in-bio-with-tight-margins\";s:11:\"description\";s:90:\"A full-width, full-height link in bio section with an image, a paragraph and social links.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:21:\"twentytwentyfive_page\";i:1;s:6:\"banner\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}s:9:\"postTypes\";a:2:{i:0;s:4:\"page\";i:1;s:11:\"wp_template\";}}s:23:\"page-portfolio-home.php\";a:8:{s:5:\"title\";s:18:\"Portfolio homepage\";s:4:\"slug\";s:36:\"twentytwentyfive/page-portfolio-home\";s:11:\"description\";s:29:\"A portfolio homepage pattern.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:21:\"twentytwentyfive_page\";i:1;s:5:\"posts\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}s:9:\"postTypes\";a:2:{i:0;s:4:\"page\";i:1;s:11:\"wp_template\";}}s:18:\"page-shop-home.php\";a:8:{s:5:\"title\";s:13:\"Shop homepage\";s:4:\"slug\";s:31:\"twentytwentyfive/page-shop-home\";s:11:\"description\";s:24:\"A shop homepage pattern.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:1:{i:0;s:21:\"twentytwentyfive_page\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}s:9:\"postTypes\";a:2:{i:0;s:4:\"page\";i:1;s:11:\"wp_template\";}}s:19:\"post-navigation.php\";a:5:{s:5:\"title\";s:15:\"Post navigation\";s:4:\"slug\";s:32:\"twentytwentyfive/post-navigation\";s:11:\"description\";s:29:\"Next and previous post links.\";s:10:\"categories\";a:1:{i:0;s:4:\"text\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/post-navigation-link\";}}s:17:\"pricing-2-col.php\";a:5:{s:5:\"title\";s:18:\"Pricing, 2 columns\";s:4:\"slug\";s:30:\"twentytwentyfive/pricing-2-col\";s:11:\"description\";s:88:\"Pricing section with two columns, pricing plan, description, and call-to-action buttons.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:1:{i:0;s:14:\"call-to-action\";}}s:17:\"pricing-3-col.php\";a:4:{s:5:\"title\";s:18:\"Pricing, 3 columns\";s:4:\"slug\";s:30:\"twentytwentyfive/pricing-3-col\";s:11:\"description\";s:100:\"A three-column boxed pricing table designed to showcase services, descriptions, and pricing options.\";s:10:\"categories\";a:3:{i:0;s:14:\"call-to-action\";i:1;s:6:\"banner\";i:2;s:8:\"services\";}}s:18:\"services-3-col.php\";a:4:{s:5:\"title\";s:19:\"Services, 3 columns\";s:4:\"slug\";s:31:\"twentytwentyfive/services-3-col\";s:11:\"description\";s:56:\"Three columns with images and text to showcase services.\";s:10:\"categories\";a:3:{i:0;s:14:\"call-to-action\";i:1;s:6:\"banner\";i:2;s:8:\"services\";}}s:36:\"services-subscriber-only-section.php\";a:4:{s:5:\"title\";s:33:\"Services, subscriber only section\";s:4:\"slug\";s:49:\"twentytwentyfive/services-subscriber-only-section\";s:11:\"description\";s:72:\"A subscriber-only section highlighting exclusive services and offerings.\";s:10:\"categories\";a:2:{i:0;s:14:\"call-to-action\";i:1;s:8:\"services\";}}s:24:\"services-team-photos.php\";a:4:{s:5:\"title\";s:21:\"Services, team photos\";s:4:\"slug\";s:37:\"twentytwentyfive/services-team-photos\";s:11:\"description\";s:59:\"Display team photos in a services section with grid layout.\";s:10:\"categories\";a:3:{i:0;s:6:\"banner\";i:1;s:14:\"call-to-action\";i:2;s:8:\"featured\";}}s:37:\"template-404-vertical-header-blog.php\";a:5:{s:5:\"title\";s:17:\"Right-aligned 404\";s:4:\"slug\";s:50:\"twentytwentyfive/template-404-vertical-header-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:13:\"templateTypes\";a:1:{i:0;s:3:\"404\";}}s:30:\"template-archive-news-blog.php\";a:6:{s:5:\"title\";s:17:\"News blog archive\";s:4:\"slug\";s:43:\"twentytwentyfive/template-archive-news-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:1:{i:0;s:7:\"archive\";}}s:31:\"template-archive-photo-blog.php\";a:6:{s:5:\"title\";s:18:\"Photo blog archive\";s:4:\"slug\";s:44:\"twentytwentyfive/template-archive-photo-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:1:{i:0;s:7:\"archive\";}}s:30:\"template-archive-text-blog.php\";a:6:{s:5:\"title\";s:17:\"Text blog archive\";s:4:\"slug\";s:43:\"twentytwentyfive/template-archive-text-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:1:{i:0;s:7:\"archive\";}}s:41:\"template-archive-vertical-header-blog.php\";a:6:{s:5:\"title\";s:21:\"Right-aligned archive\";s:4:\"slug\";s:54:\"twentytwentyfive/template-archive-vertical-header-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:1:{i:0;s:7:\"archive\";}}s:27:\"template-home-news-blog.php\";a:6:{s:5:\"title\";s:14:\"News blog home\";s:4:\"slug\";s:40:\"twentytwentyfive/template-home-news-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:3:{i:0;s:10:\"front-page\";i:1;s:5:\"index\";i:2;s:4:\"home\";}}s:28:\"template-home-photo-blog.php\";a:6:{s:5:\"title\";s:15:\"Photo blog home\";s:4:\"slug\";s:41:\"twentytwentyfive/template-home-photo-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:3:{i:0;s:10:\"front-page\";i:1;s:5:\"index\";i:2;s:4:\"home\";}}s:38:\"template-home-posts-grid-news-blog.php\";a:5:{s:5:\"title\";s:34:\"News blog with featured posts grid\";s:4:\"slug\";s:51:\"twentytwentyfive/template-home-posts-grid-news-blog\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:3:{i:0;s:10:\"front-page\";i:1;s:5:\"index\";i:2;s:4:\"home\";}}s:27:\"template-home-text-blog.php\";a:6:{s:5:\"title\";s:14:\"Text blog home\";s:4:\"slug\";s:40:\"twentytwentyfive/template-home-text-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:2:{i:0;s:10:\"front-page\";i:1;s:4:\"home\";}}s:38:\"template-home-vertical-header-blog.php\";a:6:{s:5:\"title\";s:18:\"Right-aligned home\";s:4:\"slug\";s:51:\"twentytwentyfive/template-home-vertical-header-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:3:{i:0;s:10:\"front-page\";i:1;s:5:\"index\";i:2;s:4:\"home\";}}s:40:\"template-home-with-sidebar-news-blog.php\";a:6:{s:5:\"title\";s:22:\"News blog with sidebar\";s:4:\"slug\";s:53:\"twentytwentyfive/template-home-with-sidebar-news-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:3:{i:0;s:10:\"front-page\";i:1;s:5:\"index\";i:2;s:4:\"home\";}}s:28:\"template-page-photo-blog.php\";a:5:{s:5:\"title\";s:15:\"Photo blog page\";s:4:\"slug\";s:41:\"twentytwentyfive/template-page-photo-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:13:\"templateTypes\";a:1:{i:0;s:4:\"page\";}}s:38:\"template-page-vertical-header-blog.php\";a:5:{s:5:\"title\";s:18:\"Right-aligned page\";s:4:\"slug\";s:51:\"twentytwentyfive/template-page-vertical-header-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:13:\"templateTypes\";a:1:{i:0;s:4:\"page\";}}s:33:\"template-query-loop-news-blog.php\";a:4:{s:5:\"title\";s:20:\"News blog query loop\";s:4:\"slug\";s:46:\"twentytwentyfive/template-query-loop-news-blog\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:34:\"template-query-loop-photo-blog.php\";a:6:{s:5:\"title\";s:16:\"Photo blog posts\";s:4:\"slug\";s:47:\"twentytwentyfive/template-query-loop-photo-blog\";s:11:\"description\";s:54:\"A list of posts, 3 columns, with only featured images.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:1:{i:0;s:5:\"query\";}s:10:\"blockTypes\";a:1:{i:0;s:10:\"core/query\";}}s:33:\"template-query-loop-text-blog.php\";a:4:{s:5:\"title\";s:20:\"Text blog query loop\";s:4:\"slug\";s:46:\"twentytwentyfive/template-query-loop-text-blog\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:44:\"template-query-loop-vertical-header-blog.php\";a:4:{s:5:\"title\";s:24:\"Right-aligned query loop\";s:4:\"slug\";s:57:\"twentytwentyfive/template-query-loop-vertical-header-blog\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:23:\"template-query-loop.php\";a:5:{s:5:\"title\";s:23:\"List of posts, 1 column\";s:4:\"slug\";s:36:\"twentytwentyfive/template-query-loop\";s:11:\"description\";s:61:\"A list of posts, 1 column, with featured image and post date.\";s:10:\"categories\";a:1:{i:0;s:5:\"query\";}s:10:\"blockTypes\";a:1:{i:0;s:10:\"core/query\";}}s:29:\"template-search-news-blog.php\";a:6:{s:5:\"title\";s:24:\"News blog search results\";s:4:\"slug\";s:42:\"twentytwentyfive/template-search-news-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:1:{i:0;s:6:\"search\";}}s:30:\"template-search-photo-blog.php\";a:6:{s:5:\"title\";s:25:\"Photo blog search results\";s:4:\"slug\";s:43:\"twentytwentyfive/template-search-photo-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:1:{i:0;s:6:\"search\";}}s:29:\"template-search-text-blog.php\";a:6:{s:5:\"title\";s:24:\"Text blog search results\";s:4:\"slug\";s:42:\"twentytwentyfive/template-search-text-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:1:{i:0;s:6:\"search\";}}s:40:\"template-search-vertical-header-blog.php\";a:6:{s:5:\"title\";s:26:\"Right-aligned blog, search\";s:4:\"slug\";s:53:\"twentytwentyfive/template-search-vertical-header-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:1:{i:0;s:6:\"search\";}}s:40:\"template-single-left-aligned-content.php\";a:6:{s:5:\"title\";s:30:\"Post with left-aligned content\";s:4:\"slug\";s:47:\"twentytwentyfive/post-with-left-aligned-content\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:2:{i:0;s:5:\"posts\";i:1;s:6:\"single\";}}s:29:\"template-single-news-blog.php\";a:6:{s:5:\"title\";s:34:\"News blog single post with sidebar\";s:4:\"slug\";s:42:\"twentytwentyfive/template-single-news-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:2:{i:0;s:5:\"posts\";i:1;s:6:\"single\";}}s:26:\"template-single-offset.php\";a:6:{s:5:\"title\";s:34:\"Offset post without featured image\";s:4:\"slug\";s:39:\"twentytwentyfive/template-single-offset\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:2:{i:0;s:5:\"posts\";i:1;s:6:\"single\";}}s:30:\"template-single-photo-blog.php\";a:6:{s:5:\"title\";s:22:\"Photo blog single post\";s:4:\"slug\";s:43:\"twentytwentyfive/template-single-photo-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:2:{i:0;s:5:\"posts\";i:1;s:6:\"single\";}}s:29:\"template-single-text-blog.php\";a:6:{s:5:\"title\";s:21:\"Text blog single post\";s:4:\"slug\";s:42:\"twentytwentyfive/template-single-text-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:2:{i:0;s:5:\"posts\";i:1;s:6:\"single\";}}s:40:\"template-single-vertical-header-blog.php\";a:6:{s:5:\"title\";s:25:\"Right-aligned single post\";s:4:\"slug\";s:53:\"twentytwentyfive/template-single-vertical-header-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:2:{i:0;s:5:\"posts\";i:1;s:6:\"single\";}}s:22:\"testimonials-2-col.php\";a:5:{s:5:\"title\";s:21:\"2 columns with avatar\";s:4:\"slug\";s:35:\"twentytwentyfive/testimonials-2-col\";s:11:\"description\";s:42:\"Two columns with testimonials and avatars.\";s:10:\"categories\";a:1:{i:0;s:12:\"testimonials\";}s:8:\"keywords\";a:1:{i:0;s:11:\"testimonial\";}}s:22:\"testimonials-6-col.php\";a:5:{s:5:\"title\";s:35:\"3 column layout with 6 testimonials\";s:4:\"slug\";s:35:\"twentytwentyfive/testimonials-6-col\";s:11:\"description\";s:86:\"A section with three columns and two rows, each containing a testimonial and citation.\";s:10:\"categories\";a:1:{i:0;s:12:\"testimonials\";}s:8:\"keywords\";a:1:{i:0;s:11:\"testimonial\";}}s:22:\"testimonials-large.php\";a:5:{s:5:\"title\";s:32:\"Review with large image on right\";s:4:\"slug\";s:35:\"twentytwentyfive/testimonials-large\";s:11:\"description\";s:46:\"A testimonial with a large image on the right.\";s:10:\"categories\";a:1:{i:0;s:12:\"testimonials\";}s:8:\"keywords\";a:1:{i:0;s:11:\"testimonial\";}}s:13:\"text-faqs.php\";a:6:{s:5:\"title\";s:4:\"FAQs\";s:4:\"slug\";s:26:\"twentytwentyfive/text-faqs\";s:11:\"description\";s:68:\"A FAQs section with a FAQ heading and list of questions and answers.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:4:\"text\";i:1;s:5:\"about\";}s:8:\"keywords\";a:5:{i:0;s:3:\"faq\";i:1;s:5:\"about\";i:2;s:10:\"frequently\";i:3;s:5:\"asked\";i:4;s:9:\"questions\";}}s:19:\"vertical-header.php\";a:6:{s:5:\"title\";s:20:\"Vertical site header\";s:4:\"slug\";s:32:\"twentytwentyfive/vertical-header\";s:11:\"description\";s:52:\"Vertical site header with site title and navigation.\";s:13:\"viewportWidth\";i:300;s:10:\"categories\";a:1:{i:0;s:6:\"header\";}s:10:\"blockTypes\";a:1:{i:0;s:34:\"core/template-part/vertical-header\";}}}}','off'),
(2119,'_site_transient_timeout_woocommerce_blocks_patterns','1760998881','off'),
(2120,'_site_transient_woocommerce_blocks_patterns','a:2:{s:7:\"version\";s:6:\"10.1.0\";s:8:\"patterns\";a:41:{i:0;a:11:{s:5:\"title\";s:6:\"Banner\";s:4:\"slug\";s:25:\"woocommerce-blocks/banner\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:29:\"WooCommerce, featured-selling\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:0:\"\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:10:\"banner.php\";}i:1;a:11:{s:5:\"title\";s:23:\"Coming Soon Entire Site\";s:4:\"slug\";s:35:\"woocommerce/coming-soon-entire-site\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:5:\"false\";s:11:\"featureFlag\";s:17:\"launch-your-store\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:27:\"coming-soon-entire-site.php\";}i:2;a:11:{s:5:\"title\";s:22:\"Coming Soon Store Only\";s:4:\"slug\";s:34:\"woocommerce/coming-soon-store-only\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:5:\"false\";s:11:\"featureFlag\";s:17:\"launch-your-store\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:26:\"coming-soon-store-only.php\";}i:3;a:11:{s:5:\"title\";s:11:\"Coming Soon\";s:4:\"slug\";s:23:\"woocommerce/coming-soon\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:5:\"false\";s:11:\"featureFlag\";s:17:\"launch-your-store\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:15:\"coming-soon.php\";}i:4;a:11:{s:5:\"title\";s:29:\"Content right with image left\";s:4:\"slug\";s:48:\"woocommerce-blocks/content-right-with-image-left\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:18:\"WooCommerce, About\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:0:\"\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:28:\"content-right-image-left.php\";}i:5;a:11:{s:5:\"title\";s:29:\"Featured Category Cover Image\";s:4:\"slug\";s:48:\"woocommerce-blocks/featured-category-cover-image\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:18:\"WooCommerce, Intro\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:0:\"\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:33:\"featured-category-cover-image.php\";}i:6;a:11:{s:5:\"title\";s:24:\"Featured Category Triple\";s:4:\"slug\";s:43:\"woocommerce-blocks/featured-category-triple\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:29:\"WooCommerce, featured-selling\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:0:\"\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:28:\"featured-category-triple.php\";}i:7;a:11:{s:5:\"title\";s:12:\"Large Footer\";s:4:\"slug\";s:31:\"woocommerce-blocks/footer-large\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:25:\"core/template-part/footer\";s:8:\"inserter\";s:0:\"\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:16:\"footer-large.php\";}i:8;a:11:{s:5:\"title\";s:23:\"Footer with Simple Menu\";s:4:\"slug\";s:37:\"woocommerce-blocks/footer-simple-menu\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:25:\"core/template-part/footer\";s:8:\"inserter\";s:0:\"\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:22:\"footer-simple-menu.php\";}i:9;a:11:{s:5:\"title\";s:17:\"Footer with menus\";s:4:\"slug\";s:38:\"woocommerce-blocks/footer-with-3-menus\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:25:\"core/template-part/footer\";s:8:\"inserter\";s:0:\"\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:23:\"footer-with-3-menus.php\";}i:10;a:11:{s:5:\"title\";s:28:\"Four Image Grid Content Left\";s:4:\"slug\";s:47:\"woocommerce-blocks/form-image-grid-content-left\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:18:\"WooCommerce, About\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:0:\"\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:32:\"four-image-grid-content-left.php\";}i:11;a:11:{s:5:\"title\";s:20:\"Centered Header Menu\";s:4:\"slug\";s:39:\"woocommerce-blocks/header-centered-menu\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:25:\"core/template-part/header\";s:8:\"inserter\";s:0:\"\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:27:\"header-centered-pattern.php\";}i:12;a:11:{s:5:\"title\";s:23:\"Distraction Free Header\";s:4:\"slug\";s:42:\"woocommerce-blocks/header-distraction-free\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:25:\"core/template-part/header\";s:8:\"inserter\";s:0:\"\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:27:\"header-distraction-free.php\";}i:13;a:11:{s:5:\"title\";s:16:\"Essential Header\";s:4:\"slug\";s:35:\"woocommerce-blocks/header-essential\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:25:\"core/template-part/header\";s:8:\"inserter\";s:0:\"\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:20:\"header-essential.php\";}i:14;a:11:{s:5:\"title\";s:12:\"Large Header\";s:4:\"slug\";s:31:\"woocommerce-blocks/header-large\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:25:\"core/template-part/header\";s:8:\"inserter\";s:0:\"\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:16:\"header-large.php\";}i:15;a:11:{s:5:\"title\";s:14:\"Minimal Header\";s:4:\"slug\";s:33:\"woocommerce-blocks/header-minimal\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:25:\"core/template-part/header\";s:8:\"inserter\";s:0:\"\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:18:\"header-minimal.php\";}i:16;a:11:{s:5:\"title\";s:47:\"Heading with three columns of content with link\";s:4:\"slug\";s:66:\"woocommerce-blocks/heading-with-three-columns-of-content-with-link\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:21:\"WooCommerce, Services\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:0:\"\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:51:\"heading-with-three-columns-of-content-with-link.php\";}i:17;a:11:{s:5:\"title\";s:20:\"Hero Product 3 Split\";s:4:\"slug\";s:39:\"woocommerce-blocks/hero-product-3-split\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:29:\"WooCommerce, featured-selling\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:0:\"\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:24:\"hero-product-3-split.php\";}i:18;a:11:{s:5:\"title\";s:23:\"Hero Product Chessboard\";s:4:\"slug\";s:42:\"woocommerce-blocks/hero-product-chessboard\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:29:\"WooCommerce, featured-selling\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:0:\"\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:27:\"hero-product-chessboard.php\";}i:19;a:11:{s:5:\"title\";s:18:\"Hero Product Split\";s:4:\"slug\";s:37:\"woocommerce-blocks/hero-product-split\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:18:\"WooCommerce, Intro\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:0:\"\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:22:\"hero-product-split.php\";}i:20;a:11:{s:5:\"title\";s:33:\"Centered content with image below\";s:4:\"slug\";s:52:\"woocommerce-blocks/centered-content-with-image-below\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:18:\"WooCommerce, Intro\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:0:\"\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:43:\"intro-centered-content-with-image-below.php\";}i:21;a:11:{s:5:\"title\";s:22:\"Just Arrived Full Hero\";s:4:\"slug\";s:41:\"woocommerce-blocks/just-arrived-full-hero\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:18:\"WooCommerce, Intro\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:0:\"\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:26:\"just-arrived-full-hero.php\";}i:22;a:11:{s:5:\"title\";s:33:\"No Products Found - Clear Filters\";s:4:\"slug\";s:43:\"woocommerce/no-products-found-clear-filters\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:2:\"no\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:29:\"no-products-found-filters.php\";}i:23;a:11:{s:5:\"title\";s:17:\"No Products Found\";s:4:\"slug\";s:29:\"woocommerce/no-products-found\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:2:\"no\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:21:\"no-products-found.php\";}i:24;a:11:{s:5:\"title\";s:19:\"Default Coming Soon\";s:4:\"slug\";s:36:\"woocommerce/page-coming-soon-default\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:5:\"false\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:11:\"coming-soon\";s:6:\"source\";s:28:\"page-coming-soon-default.php\";}i:25;a:11:{s:5:\"title\";s:25:\"Coming Soon Image Gallery\";s:4:\"slug\";s:42:\"woocommerce/page-coming-soon-image-gallery\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:5:\"false\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:11:\"coming-soon\";s:6:\"source\";s:34:\"page-coming-soon-image-gallery.php\";}i:26;a:11:{s:5:\"title\";s:30:\"Coming Soon Minimal Left Image\";s:4:\"slug\";s:47:\"woocommerce/page-coming-soon-minimal-left-image\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:5:\"false\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:11:\"coming-soon\";s:6:\"source\";s:39:\"page-coming-soon-minimal-left-image.php\";}i:27;a:11:{s:5:\"title\";s:24:\"Coming Soon Modern Black\";s:4:\"slug\";s:41:\"woocommerce/page-coming-soon-modern-black\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:5:\"false\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:11:\"coming-soon\";s:6:\"source\";s:33:\"page-coming-soon-modern-black.php\";}i:28;a:11:{s:5:\"title\";s:29:\"Coming Soon Split Right Image\";s:4:\"slug\";s:46:\"woocommerce/page-coming-soon-split-right-image\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:5:\"false\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:11:\"coming-soon\";s:6:\"source\";s:38:\"page-coming-soon-split-right-image.php\";}i:29;a:11:{s:5:\"title\";s:34:\"Coming Soon With Header and Footer\";s:4:\"slug\";s:47:\"woocommerce/page-coming-soon-with-header-footer\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:5:\"false\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:11:\"coming-soon\";s:6:\"source\";s:39:\"page-coming-soon-with-header-footer.php\";}i:30;a:11:{s:5:\"title\";s:28:\"Product Collection 3 Columns\";s:4:\"slug\";s:47:\"woocommerce-blocks/product-collection-3-columns\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:0:\"\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:32:\"product-collection-3-columns.php\";}i:31;a:11:{s:5:\"title\";s:28:\"Product Collection 4 Columns\";s:4:\"slug\";s:47:\"woocommerce-blocks/product-collection-4-columns\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:29:\"WooCommerce, featured-selling\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:0:\"\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:32:\"product-collection-4-columns.php\";}i:32;a:11:{s:5:\"title\";s:28:\"Product Collection 5 Columns\";s:4:\"slug\";s:47:\"woocommerce-blocks/product-collection-5-columns\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:29:\"WooCommerce, featured-selling\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:0:\"\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:32:\"product-collection-5-columns.php\";}i:33;a:11:{s:5:\"title\";s:47:\"Product Collection: Featured Products 5 Columns\";s:4:\"slug\";s:65:\"woocommerce-blocks/product-collection-featured-products-5-columns\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:29:\"WooCommerce, featured-selling\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:0:\"\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:50:\"product-collection-featured-products-5-columns.php\";}i:34;a:11:{s:5:\"title\";s:15:\"Product Gallery\";s:4:\"slug\";s:48:\"woocommerce-blocks/product-query-product-gallery\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:29:\"WooCommerce, featured-selling\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:36:\"core/query/woocommerce/product-query\";s:8:\"inserter\";s:0:\"\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:33:\"product-query-product-gallery.php\";}i:35;a:11:{s:5:\"title\";s:14:\"Product Search\";s:4:\"slug\";s:31:\"woocommerce/product-search-form\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:2:\"no\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:23:\"product-search-form.php\";}i:36;a:11:{s:5:\"title\";s:16:\"Related Products\";s:4:\"slug\";s:35:\"woocommerce-blocks/related-products\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:5:\"false\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:20:\"related-products.php\";}i:37;a:11:{s:5:\"title\";s:33:\"Social: Follow us on social media\";s:4:\"slug\";s:51:\"woocommerce-blocks/social-follow-us-in-social-media\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:25:\"WooCommerce, social-media\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:0:\"\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:36:\"social-follow-us-in-social-media.php\";}i:38;a:11:{s:5:\"title\";s:22:\"Testimonials 3 Columns\";s:4:\"slug\";s:41:\"woocommerce-blocks/testimonials-3-columns\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:20:\"WooCommerce, Reviews\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:0:\"\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:26:\"testimonials-3-columns.php\";}i:39;a:11:{s:5:\"title\";s:19:\"Testimonials Single\";s:4:\"slug\";s:38:\"woocommerce-blocks/testimonials-single\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:20:\"WooCommerce, Reviews\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:0:\"\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:23:\"testimonials-single.php\";}i:40;a:11:{s:5:\"title\";s:37:\"Three columns with images and content\";s:4:\"slug\";s:56:\"woocommerce-blocks/three-columns-with-images-and-content\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:21:\"WooCommerce, Services\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:0:\"\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:41:\"three-columns-with-images-and-content.php\";}}}','off'),
(2122,'_transient_timeout__woocommerce_helper_subscriptions','1758407781','off'),
(2123,'_transient__woocommerce_helper_subscriptions','a:0:{}','off'),
(2124,'_site_transient_timeout_theme_roots','1758408681','off'),
(2125,'_site_transient_theme_roots','a:3:{s:16:\"twentytwentyfive\";s:7:\"/themes\";s:16:\"twentytwentyfour\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";}','off'),
(2126,'_site_transient_timeout_woocommerce_new_version','1759011681','off'),
(2127,'_site_transient_woocommerce_new_version','10.1.2','off'),
(2128,'tinvwl_notifications_postponed','1','auto'),
(2129,'_transient_timeout_woocommerce_admin_settings_payments_has_providers_with_incentive','1758410493','off'),
(2130,'_transient_woocommerce_admin_settings_payments_has_providers_with_incentive','no','off'),
(2131,'_transient_timeout_action_scheduler_last_pastdue_actions_check','1758428493','off'),
(2132,'_transient_action_scheduler_last_pastdue_actions_check','1758406893','off'),
(2133,'_transient_timeout_wc_tracks_blog_details','1758493293','off'),
(2134,'_transient_wc_tracks_blog_details','a:6:{s:3:\"url\";s:20:\"http://192.168.20.81\";s:9:\"blog_lang\";s:5:\"ru_RU\";s:7:\"blog_id\";b:0;s:8:\"store_id\";s:36:\"fb8506c4-d955-40a3-80b4-a4c2a773400c\";s:14:\"products_count\";s:1:\"8\";s:10:\"wc_version\";s:6:\"10.1.0\";}','off'),
(2135,'_transient_timeout_dash_v2_f69de0bbfe7eaa113146875f40c02000','1758450094','off'),
(2136,'_transient_dash_v2_f69de0bbfe7eaa113146875f40c02000','<div class=\"rss-widget\"><p><strong>Ошибка RSS:</strong> WP HTTP Error: Предоставлен неверный URL.</p></div><div class=\"rss-widget\"><p><strong>Ошибка RSS:</strong> WP HTTP Error: Предоставлен неверный URL.</p></div>','off'),
(2137,'_transient_timeout_wc_report_orders_stats_8af6f0af247d9a6559f087a8cafaa124','1759011694','off'),
(2138,'_transient_wc_report_orders_stats_8af6f0af247d9a6559f087a8cafaa124','a:2:{s:7:\"version\";s:10:\"1757951860\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:3:{i:0;a:6:{s:8:\"interval\";s:7:\"2025-38\";s:10:\"date_start\";s:19:\"2025-09-15 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2025-09-14 21:00:00\";s:8:\"date_end\";s:19:\"2025-09-21 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2025-09-21 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2025-37\";s:10:\"date_start\";s:19:\"2025-09-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2025-09-07 21:00:00\";s:8:\"date_end\";s:19:\"2025-09-14 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2025-09-14 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:7:\"2025-36\";s:10:\"date_start\";s:19:\"2025-09-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2025-08-31 21:00:00\";s:8:\"date_end\";s:19:\"2025-09-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2025-09-07 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:3;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','off'),
(2139,'_transient_timeout_wc_report_orders_stats_97910606998675f619e847f379c4b375','1759011694','off'),
(2140,'_transient_wc_report_orders_stats_97910606998675f619e847f379c4b375','a:2:{s:7:\"version\";s:10:\"1757951860\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:3:{i:0;a:6:{s:8:\"interval\";s:7:\"2025-38\";s:10:\"date_start\";s:19:\"2025-09-15 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2025-09-14 21:00:00\";s:8:\"date_end\";s:19:\"2025-09-21 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2025-09-21 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2025-37\";s:10:\"date_start\";s:19:\"2025-09-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2025-09-07 21:00:00\";s:8:\"date_end\";s:19:\"2025-09-14 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2025-09-14 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:7:\"2025-36\";s:10:\"date_start\";s:19:\"2025-09-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2025-08-31 21:00:00\";s:8:\"date_end\";s:19:\"2025-09-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2025-09-07 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:3;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','off'),
(2141,'_transient_timeout_wc_report_products_stats_ebc8a31989734431e676cd200f6ab971','1759011694','off'),
(2142,'_transient_wc_report_products_stats_ebc8a31989734431e676cd200f6ab971','a:2:{s:7:\"version\";s:10:\"1757951860\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":6:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:14:\"products_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:3:{i:0;a:6:{s:8:\"interval\";s:7:\"2025-38\";s:10:\"date_start\";s:19:\"2025-09-15 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2025-09-14 21:00:00\";s:8:\"date_end\";s:19:\"2025-09-21 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2025-09-21 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:14:\"products_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2025-37\";s:10:\"date_start\";s:19:\"2025-09-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2025-09-07 21:00:00\";s:8:\"date_end\";s:19:\"2025-09-14 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2025-09-14 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:14:\"products_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:7:\"2025-36\";s:10:\"date_start\";s:19:\"2025-09-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2025-08-31 21:00:00\";s:8:\"date_end\";s:19:\"2025-09-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2025-09-07 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:14:\"products_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:3;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','off'),
(2143,'_transient_timeout_wc_report_variations_stats_d2e0e27d5796e52c82d25b2c695d54ff','1759011694','off'),
(2144,'_transient_wc_report_variations_stats_d2e0e27d5796e52c82d25b2c695d54ff','a:2:{s:7:\"version\";s:10:\"1757951860\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":5:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:3:{i:0;a:6:{s:8:\"interval\";s:7:\"2025-38\";s:10:\"date_start\";s:19:\"2025-09-15 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2025-09-14 21:00:00\";s:8:\"date_end\";s:19:\"2025-09-21 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2025-09-21 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2025-37\";s:10:\"date_start\";s:19:\"2025-09-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2025-09-07 21:00:00\";s:8:\"date_end\";s:19:\"2025-09-14 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2025-09-14 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:7:\"2025-36\";s:10:\"date_start\";s:19:\"2025-09-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2025-08-31 21:00:00\";s:8:\"date_end\";s:19:\"2025-09-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2025-09-07 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:3;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','off'),
(2145,'_transient_timeout_wc_report_orders_stats_a6ca11ca9f2ae1edbc33f2a6f0b28a73','1759011694','off'),
(2146,'_transient_wc_report_orders_stats_a6ca11ca9f2ae1edbc33f2a6f0b28a73','a:2:{s:7:\"version\";s:10:\"1757951860\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":4:{s:11:\"net_revenue\";d:0;s:8:\"products\";i:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:21:{i:0;a:6:{s:8:\"interval\";s:10:\"2025-09-01\";s:10:\"date_start\";s:19:\"2025-09-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2025-08-31 21:00:00\";s:8:\"date_end\";s:19:\"2025-09-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2025-09-01 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2025-09-02\";s:10:\"date_start\";s:19:\"2025-09-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2025-09-01 21:00:00\";s:8:\"date_end\";s:19:\"2025-09-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2025-09-02 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:10:\"2025-09-03\";s:10:\"date_start\";s:19:\"2025-09-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2025-09-02 21:00:00\";s:8:\"date_end\";s:19:\"2025-09-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2025-09-03 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:10:\"2025-09-04\";s:10:\"date_start\";s:19:\"2025-09-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2025-09-03 21:00:00\";s:8:\"date_end\";s:19:\"2025-09-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2025-09-04 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:10:\"2025-09-05\";s:10:\"date_start\";s:19:\"2025-09-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2025-09-04 21:00:00\";s:8:\"date_end\";s:19:\"2025-09-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2025-09-05 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:5;a:6:{s:8:\"interval\";s:10:\"2025-09-06\";s:10:\"date_start\";s:19:\"2025-09-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2025-09-05 21:00:00\";s:8:\"date_end\";s:19:\"2025-09-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2025-09-06 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:6;a:6:{s:8:\"interval\";s:10:\"2025-09-07\";s:10:\"date_start\";s:19:\"2025-09-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2025-09-06 21:00:00\";s:8:\"date_end\";s:19:\"2025-09-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2025-09-07 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:7;a:6:{s:8:\"interval\";s:10:\"2025-09-08\";s:10:\"date_start\";s:19:\"2025-09-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2025-09-07 21:00:00\";s:8:\"date_end\";s:19:\"2025-09-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2025-09-08 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:8;a:6:{s:8:\"interval\";s:10:\"2025-09-09\";s:10:\"date_start\";s:19:\"2025-09-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2025-09-08 21:00:00\";s:8:\"date_end\";s:19:\"2025-09-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2025-09-09 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:9;a:6:{s:8:\"interval\";s:10:\"2025-09-10\";s:10:\"date_start\";s:19:\"2025-09-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2025-09-09 21:00:00\";s:8:\"date_end\";s:19:\"2025-09-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2025-09-10 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:10;a:6:{s:8:\"interval\";s:10:\"2025-09-11\";s:10:\"date_start\";s:19:\"2025-09-11 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2025-09-10 21:00:00\";s:8:\"date_end\";s:19:\"2025-09-11 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2025-09-11 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:11;a:6:{s:8:\"interval\";s:10:\"2025-09-12\";s:10:\"date_start\";s:19:\"2025-09-12 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2025-09-11 21:00:00\";s:8:\"date_end\";s:19:\"2025-09-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2025-09-12 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:12;a:6:{s:8:\"interval\";s:10:\"2025-09-13\";s:10:\"date_start\";s:19:\"2025-09-13 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2025-09-12 21:00:00\";s:8:\"date_end\";s:19:\"2025-09-13 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2025-09-13 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:13;a:6:{s:8:\"interval\";s:10:\"2025-09-14\";s:10:\"date_start\";s:19:\"2025-09-14 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2025-09-13 21:00:00\";s:8:\"date_end\";s:19:\"2025-09-14 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2025-09-14 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:14;a:6:{s:8:\"interval\";s:10:\"2025-09-15\";s:10:\"date_start\";s:19:\"2025-09-15 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2025-09-14 21:00:00\";s:8:\"date_end\";s:19:\"2025-09-15 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2025-09-15 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:15;a:6:{s:8:\"interval\";s:10:\"2025-09-16\";s:10:\"date_start\";s:19:\"2025-09-16 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2025-09-15 21:00:00\";s:8:\"date_end\";s:19:\"2025-09-16 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2025-09-16 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:16;a:6:{s:8:\"interval\";s:10:\"2025-09-17\";s:10:\"date_start\";s:19:\"2025-09-17 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2025-09-16 21:00:00\";s:8:\"date_end\";s:19:\"2025-09-17 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2025-09-17 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:17;a:6:{s:8:\"interval\";s:10:\"2025-09-18\";s:10:\"date_start\";s:19:\"2025-09-18 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2025-09-17 21:00:00\";s:8:\"date_end\";s:19:\"2025-09-18 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2025-09-18 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:18;a:6:{s:8:\"interval\";s:10:\"2025-09-19\";s:10:\"date_start\";s:19:\"2025-09-19 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2025-09-18 21:00:00\";s:8:\"date_end\";s:19:\"2025-09-19 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2025-09-19 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:19;a:6:{s:8:\"interval\";s:10:\"2025-09-20\";s:10:\"date_start\";s:19:\"2025-09-20 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2025-09-19 21:00:00\";s:8:\"date_end\";s:19:\"2025-09-20 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2025-09-20 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:20;a:6:{s:8:\"interval\";s:10:\"2025-09-21\";s:10:\"date_start\";s:19:\"2025-09-21 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2025-09-20 21:00:00\";s:8:\"date_end\";s:19:\"2025-09-21 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2025-09-21 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:21;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','off'),
(2147,'_site_transient_timeout_wp_plugin_dependencies_plugin_timeout_woocommerce','1758450098','off'),
(2148,'_site_transient_wp_plugin_dependencies_plugin_timeout_woocommerce','1','off'),
(2149,'_transient_timeout_woocommerce_admin_remote_inbox_notifications_specs','1759011700','off'),
(2150,'_transient_woocommerce_admin_remote_inbox_notifications_specs','a:1:{s:5:\"ru_RU\";a:0:{}}','off'),
(2152,'_transient_timeout_as-post-store-dependencies-met','1758493300','off'),
(2153,'_transient_as-post-store-dependencies-met','yes','off'),
(2154,'last_fetch_patterns_request','1758406900','off'),
(2156,'action_scheduler_migration_status','complete','auto'),
(2159,'_transient_timeout_wc_shipping_method_count','1760999197','off'),
(2160,'_transient_wc_shipping_method_count','a:4:{s:7:\"version\";s:10:\"1755440131\";s:6:\"legacy\";i:0;s:7:\"enabled\";i:1;s:8:\"disabled\";i:0;}','off'),
(2163,'_transient_timeout_wc_ptk_pattern_store_warning','1758493694','off'),
(2164,'_transient_wc_ptk_pattern_store_warning','1','off');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES
(2,3,'_wp_page_template','default'),
(5,7,'_edit_lock','1757951305:1'),
(8,63,'_edit_lock','1755879851:1'),
(9,65,'_wp_attached_file','2025/08/AlpacaLogo.png'),
(10,65,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:4:\"file\";s:22:\"2025/08/AlpacaLogo.png\";s:8:\"filesize\";i:2664870;s:5:\"sizes\";a:7:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"AlpacaLogo-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:29908;}s:5:\"large\";a:5:{s:4:\"file\";s:23:\"AlpacaLogo-1024x683.png\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:361347;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"AlpacaLogo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:13584;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"AlpacaLogo-768x512.png\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:189340;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:22:\"AlpacaLogo-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:48077;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:22:\"AlpacaLogo-600x400.png\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:114935;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:22:\"AlpacaLogo-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:6847;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(11,66,'_wp_attached_file','2025/08/AlpacaIcon.png'),
(12,66,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:4:\"file\";s:22:\"2025/08/AlpacaIcon.png\";s:8:\"filesize\";i:1670626;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"AlpacaIcon-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:26489;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"AlpacaIcon-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:8715;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"AlpacaIcon-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:136900;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:22:\"AlpacaIcon-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:26489;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:22:\"AlpacaIcon-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:85557;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:22:\"AlpacaIcon-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:4745;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(15,68,'origin','plugin'),
(16,69,'origin','theme'),
(20,8,'_edit_lock','1755636379:1'),
(22,3,'_edit_lock','1756242748:1'),
(29,10,'_edit_lock','1756249829:1'),
(30,9,'_edit_lock','1755640086:1'),
(31,74,'_wp_attached_file','2025/08/plushToy.png'),
(32,74,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:4:\"file\";s:20:\"2025/08/plushToy.png\";s:8:\"filesize\";i:1254105;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"plushToy-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:42511;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"plushToy-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:11387;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:20:\"plushToy-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:244248;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:20:\"plushToy-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:42511;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:20:\"plushToy-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:147658;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:20:\"plushToy-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:5516;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(33,75,'_wp_attached_file','2025/08/sweaterG.png'),
(34,75,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:4:\"file\";s:20:\"2025/08/sweaterG.png\";s:8:\"filesize\";i:1737886;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"sweaterG-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:47267;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"sweaterG-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:13491;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:20:\"sweaterG-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:318561;}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"sweaterG-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:47267;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(35,76,'_wp_attached_file','2025/08/sweaterB.png'),
(36,76,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:4:\"file\";s:20:\"2025/08/sweaterB.png\";s:8:\"filesize\";i:1361139;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"sweaterB-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:34046;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"sweaterB-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:10672;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:20:\"sweaterB-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:256080;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:20:\"sweaterB-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:34046;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:20:\"sweaterB-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:146925;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:20:\"sweaterB-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:5807;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(37,77,'_wp_attached_file','2025/08/t-shirtW.png'),
(38,77,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:4:\"file\";s:20:\"2025/08/t-shirtW.png\";s:8:\"filesize\";i:1457947;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"t-shirtW-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:34918;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"t-shirtW-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:11161;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:20:\"t-shirtW-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:274692;}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"t-shirtW-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:34918;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(39,78,'_wp_attached_file','2025/08/t-shirtG.png'),
(40,78,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:4:\"file\";s:20:\"2025/08/t-shirtG.png\";s:8:\"filesize\";i:1551999;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"t-shirtG-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:32370;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"t-shirtG-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:8975;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(41,79,'_wp_attached_file','2025/08/socks.png'),
(42,79,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:4:\"file\";s:17:\"2025/08/socks.png\";s:8:\"filesize\";i:2118245;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"socks-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:56400;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"socks-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:14047;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:17:\"socks-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:429570;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:17:\"socks-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:56400;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:17:\"socks-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:252349;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:17:\"socks-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:6759;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(43,80,'_wp_attached_file','2025/08/cup.png'),
(44,80,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:4:\"file\";s:15:\"2025/08/cup.png\";s:8:\"filesize\";i:1209860;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:15:\"cup-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:29533;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:15:\"cup-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:8350;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:15:\"cup-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:245276;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:15:\"cup-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:29533;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:15:\"cup-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:131664;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:15:\"cup-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:4590;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(45,81,'_wp_attached_file','2025/08/cap.png'),
(46,81,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:4:\"file\";s:15:\"2025/08/cap.png\";s:8:\"filesize\";i:1852227;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:15:\"cap-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:46986;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:15:\"cap-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:13575;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:15:\"cap-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:378946;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:15:\"cap-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:46986;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:15:\"cap-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:232193;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:15:\"cap-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:6490;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(47,82,'_edit_lock','1755640640:1'),
(48,82,'_edit_last','1'),
(49,82,'_thumbnail_id','77'),
(50,82,'_regular_price','1999'),
(51,82,'total_sales','0'),
(52,82,'_tax_status','taxable'),
(53,82,'_tax_class',''),
(54,82,'_manage_stock','no'),
(55,82,'_backorders','no'),
(56,82,'_sold_individually','no'),
(57,82,'_virtual','no'),
(58,82,'_downloadable','no'),
(59,82,'_download_limit','-1'),
(60,82,'_download_expiry','-1'),
(61,82,'_stock',NULL),
(62,82,'_stock_status','instock'),
(63,82,'_wc_average_rating','0'),
(64,82,'_wc_review_count','0'),
(65,82,'_product_version','10.1.0'),
(66,82,'_price','1999'),
(67,83,'_edit_lock','1755639694:1'),
(68,83,'_edit_last','1'),
(69,83,'_thumbnail_id','78'),
(70,83,'_regular_price','1999'),
(71,83,'total_sales','0'),
(72,83,'_tax_status','taxable'),
(73,83,'_tax_class',''),
(74,83,'_manage_stock','no'),
(75,83,'_backorders','no'),
(76,83,'_sold_individually','no'),
(77,83,'_virtual','no'),
(78,83,'_downloadable','no'),
(79,83,'_download_limit','-1'),
(80,83,'_download_expiry','-1'),
(81,83,'_stock',NULL),
(82,83,'_stock_status','instock'),
(83,83,'_wc_average_rating','0'),
(84,83,'_wc_review_count','0'),
(85,83,'_product_version','10.1.0'),
(86,83,'_price','1999'),
(87,84,'_edit_lock','1755639742:1'),
(88,84,'_edit_last','1'),
(89,84,'_thumbnail_id','76'),
(90,84,'_regular_price','4999'),
(91,84,'total_sales','0'),
(92,84,'_tax_status','taxable'),
(93,84,'_tax_class',''),
(94,84,'_manage_stock','no'),
(95,84,'_backorders','no'),
(96,84,'_sold_individually','no'),
(97,84,'_virtual','no'),
(98,84,'_downloadable','no'),
(99,84,'_download_limit','-1'),
(100,84,'_download_expiry','-1'),
(101,84,'_stock',NULL),
(102,84,'_stock_status','instock'),
(103,84,'_wc_average_rating','0'),
(104,84,'_wc_review_count','0'),
(105,84,'_product_version','10.1.0'),
(106,84,'_price','4999'),
(107,85,'_edit_lock','1755639776:1'),
(108,85,'_edit_last','1'),
(109,85,'_thumbnail_id','75'),
(110,85,'_regular_price','4999'),
(111,85,'total_sales','0'),
(112,85,'_tax_status','taxable'),
(113,85,'_tax_class',''),
(114,85,'_manage_stock','no'),
(115,85,'_backorders','no'),
(116,85,'_sold_individually','no'),
(117,85,'_virtual','no'),
(118,85,'_downloadable','no'),
(119,85,'_download_limit','-1'),
(120,85,'_download_expiry','-1'),
(121,85,'_stock',NULL),
(122,85,'_stock_status','instock'),
(123,85,'_wc_average_rating','0'),
(124,85,'_wc_review_count','0'),
(125,85,'_product_version','10.1.0'),
(126,85,'_price','4999'),
(127,86,'_edit_lock','1755639826:1'),
(128,86,'_edit_last','1'),
(129,86,'_thumbnail_id','80'),
(130,86,'_regular_price','2499'),
(131,86,'total_sales','0'),
(132,86,'_tax_status','taxable'),
(133,86,'_tax_class',''),
(134,86,'_manage_stock','no'),
(135,86,'_backorders','no'),
(136,86,'_sold_individually','no'),
(137,86,'_virtual','no'),
(138,86,'_downloadable','no'),
(139,86,'_download_limit','-1'),
(140,86,'_download_expiry','-1'),
(141,86,'_stock',NULL),
(142,86,'_stock_status','instock'),
(143,86,'_wc_average_rating','0'),
(144,86,'_wc_review_count','0'),
(145,86,'_product_version','10.1.0'),
(146,86,'_price','2499'),
(147,87,'_edit_lock','1755639867:1'),
(148,87,'_edit_last','1'),
(149,87,'_thumbnail_id','81'),
(150,87,'_regular_price','1999'),
(151,87,'total_sales','0'),
(152,87,'_tax_status','taxable'),
(153,87,'_tax_class',''),
(154,87,'_manage_stock','no'),
(155,87,'_backorders','no'),
(156,87,'_sold_individually','no'),
(157,87,'_virtual','no'),
(158,87,'_downloadable','no'),
(159,87,'_download_limit','-1'),
(160,87,'_download_expiry','-1'),
(161,87,'_stock',NULL),
(162,87,'_stock_status','instock'),
(163,87,'_wc_average_rating','0'),
(164,87,'_wc_review_count','0'),
(165,87,'_product_version','10.1.0'),
(166,87,'_price','1999'),
(167,88,'_edit_lock','1755639980:1'),
(168,88,'_edit_last','1'),
(169,88,'_regular_price','3999'),
(170,88,'total_sales','0'),
(171,88,'_tax_status','taxable'),
(172,88,'_tax_class',''),
(173,88,'_manage_stock','no'),
(174,88,'_backorders','no'),
(175,88,'_sold_individually','no'),
(176,88,'_virtual','no'),
(177,88,'_downloadable','no'),
(178,88,'_download_limit','-1'),
(179,88,'_download_expiry','-1'),
(180,88,'_stock',NULL),
(181,88,'_stock_status','instock'),
(182,88,'_wc_average_rating','0'),
(183,88,'_wc_review_count','0'),
(184,88,'_product_version','10.1.0'),
(185,88,'_price','3999'),
(187,88,'_thumbnail_id','74'),
(188,89,'_edit_lock','1755640075:1'),
(189,89,'_edit_last','1'),
(190,89,'_thumbnail_id','79'),
(191,89,'_regular_price','1499'),
(192,89,'total_sales','0'),
(193,89,'_tax_status','taxable'),
(194,89,'_tax_class',''),
(195,89,'_manage_stock','no'),
(196,89,'_backorders','no'),
(197,89,'_sold_individually','no'),
(198,89,'_virtual','no'),
(199,89,'_downloadable','no'),
(200,89,'_download_limit','-1'),
(201,89,'_download_expiry','-1'),
(202,89,'_stock',NULL),
(203,89,'_stock_status','instock'),
(204,89,'_wc_average_rating','0'),
(205,89,'_wc_review_count','0'),
(206,89,'_product_version','10.1.0'),
(207,89,'_price','1499'),
(213,93,'_edit_lock','1755879755:1'),
(217,97,'forminator_form_meta','a:6:{s:6:\"fields\";a:5:{i:0;a:29:{s:2:\"id\";s:6:\"name-1\";s:10:\"element_id\";s:6:\"name-1\";s:7:\"form_id\";s:17:\"wrapper-7050-9042\";s:12:\"parent_group\";s:0:\"\";s:4:\"type\";s:4:\"name\";s:7:\"options\";a:0:{}s:4:\"cols\";s:2:\"12\";s:10:\"conditions\";a:0:{}s:10:\"wrapper_id\";s:17:\"wrapper-7050-9042\";s:11:\"field_label\";s:6:\"Имя\";s:11:\"placeholder\";s:33:\"Например, Джон Доу\";s:12:\"prefix_label\";s:14:\"Префикс\";s:11:\"fname_label\";s:24:\"Имя и фамилия\";s:17:\"fname_placeholder\";s:26:\"Например, Джон\";s:11:\"mname_label\";s:19:\"Второе имя\";s:17:\"mname_placeholder\";s:26:\"Например, Смит\";s:11:\"lname_label\";s:14:\"Фамилия\";s:17:\"lname_placeholder\";s:24:\"Например, Доу\";s:6:\"prefix\";s:4:\"true\";s:5:\"fname\";s:4:\"true\";s:5:\"mname\";s:4:\"true\";s:5:\"lname\";s:4:\"true\";s:16:\"required_message\";s:21:\"Введите имя\";s:23:\"prefix_required_message\";s:36:\"Префикс обязателен.\";s:22:\"fname_required_message\";s:48:\"Имя и фамилия обязательны.\";s:22:\"mname_required_message\";s:43:\"Второе имя обязательно.\";s:22:\"lname_required_message\";s:38:\"Фамилия обязательна.\";s:14:\"layout_columns\";s:1:\"2\";s:8:\"required\";s:1:\"1\";}i:1;a:14:{s:2:\"id\";s:7:\"email-1\";s:10:\"element_id\";s:7:\"email-1\";s:7:\"form_id\";s:17:\"wrapper-7502-4233\";s:12:\"parent_group\";s:0:\"\";s:4:\"type\";s:5:\"email\";s:7:\"options\";a:0:{}s:4:\"cols\";s:2:\"12\";s:10:\"conditions\";a:0:{}s:10:\"wrapper_id\";s:17:\"wrapper-7502-4233\";s:10:\"validation\";s:0:\"\";s:11:\"placeholder\";s:30:\"Например, john@doe.com\";s:11:\"field_label\";s:33:\"Электронная почта\";s:8:\"required\";s:1:\"1\";s:16:\"required_message\";s:48:\"Введите электронную почту\";}i:2;a:15:{s:2:\"id\";s:10:\"textarea-1\";s:10:\"element_id\";s:10:\"textarea-1\";s:7:\"form_id\";s:17:\"wrapper-8890-5767\";s:12:\"parent_group\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:7:\"options\";a:0:{}s:4:\"cols\";s:2:\"12\";s:10:\"conditions\";a:0:{}s:10:\"wrapper_id\";s:17:\"wrapper-8890-5767\";s:10:\"input_type\";s:4:\"line\";s:10:\"limit_type\";s:10:\"characters\";s:11:\"field_label\";s:31:\"Причина возврата\";s:11:\"placeholder\";s:31:\"Причина возврата\";s:8:\"required\";s:1:\"1\";s:16:\"required_message\";s:48:\"Напишите причину возврата\";}i:3;a:18:{s:2:\"id\";s:8:\"number-1\";s:10:\"element_id\";s:8:\"number-1\";s:7:\"form_id\";s:17:\"wrapper-5226-7768\";s:12:\"parent_group\";s:0:\"\";s:4:\"type\";s:6:\"number\";s:7:\"options\";a:0:{}s:4:\"cols\";s:2:\"12\";s:10:\"conditions\";a:0:{}s:10:\"wrapper_id\";s:17:\"wrapper-5226-7768\";s:15:\"hidden_behavior\";s:4:\"zero\";s:12:\"calculations\";s:4:\"true\";s:9:\"limit_min\";s:1:\"1\";s:9:\"limit_max\";s:7:\"9999999\";s:11:\"field_label\";s:23:\"Номер заказа\";s:11:\"placeholder\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:16:\"required_message\";s:38:\"Введите номер заказа\";s:9:\"precision\";s:1:\"0\";}i:4;a:18:{s:2:\"id\";s:8:\"upload-1\";s:10:\"element_id\";s:8:\"upload-1\";s:7:\"form_id\";s:17:\"wrapper-8331-7740\";s:12:\"parent_group\";s:0:\"\";s:4:\"type\";s:6:\"upload\";s:7:\"options\";a:0:{}s:4:\"cols\";s:2:\"12\";s:10:\"conditions\";a:0:{}s:10:\"wrapper_id\";s:17:\"wrapper-8331-7740\";s:11:\"field_label\";s:30:\"Чек/фото дефекта\";s:9:\"filetypes\";a:13:{i:0;s:4:\"webp\";i:1;s:4:\"avif\";i:2;s:4:\"heif\";i:3;s:5:\"heics\";i:4;s:5:\"heifs\";i:5;s:3:\"css\";i:6;s:8:\"htm|html\";i:7;s:4:\"dfxp\";i:8;s:9:\"wav|x-wav\";i:9;s:2:\"js\";i:10;s:12:\"jpg|jpeg|jpe\";i:11;s:3:\"png\";i:12;s:3:\"pdf\";}s:9:\"file-type\";s:6:\"single\";s:10:\"file-limit\";s:9:\"unlimited\";s:12:\"upload-limit\";s:1:\"8\";s:8:\"filesize\";s:2:\"MB\";s:8:\"required\";s:1:\"1\";s:16:\"required_message\";s:51:\"Прикрепите чек/фото дефекта\";s:12:\"custom-files\";s:1:\"1\";}}s:8:\"settings\";a:89:{s:17:\"pagination-header\";s:3:\"nav\";s:14:\"paginationData\";a:2:{s:24:\"pagination-header-design\";s:4:\"show\";s:17:\"pagination-header\";s:3:\"nav\";}s:8:\"formName\";s:27:\"Возврат товара\";s:7:\"version\";s:6:\"1.28.1\";s:17:\"form-border-style\";s:4:\"none\";s:12:\"form-padding\";s:0:\"\";s:11:\"form-border\";s:0:\"\";s:12:\"fields-style\";s:4:\"open\";s:16:\"field-image-size\";s:6:\"custom\";s:10:\"validation\";s:9:\"on_submit\";s:18:\"akismet-protection\";s:1:\"0\";s:10:\"form-style\";s:7:\"default\";s:11:\"enable-ajax\";s:4:\"true\";s:9:\"autoclose\";s:4:\"true\";s:20:\"submission-indicator\";s:4:\"show\";s:15:\"indicator-label\";s:23:\"Подчиняясь...\";s:9:\"form-type\";s:7:\"default\";s:20:\"submission-behaviour\";s:18:\"behaviour-thankyou\";s:16:\"thankyou-message\";s:122:\"Спасибо, что обратились к нам, мы свяжемся с вами в ближайшее время.\";s:10:\"submitData\";a:2:{s:18:\"custom-submit-text\";s:37:\"Отправить сообщение\";s:27:\"custom-invalid-form-message\";s:120:\"Ошибка: Ваша форма недействительна, пожалуйста, исправьте ошибки!\";}s:17:\"validation-inline\";s:1:\"1\";s:11:\"form-expire\";s:9:\"no_expire\";s:16:\"form-padding-top\";s:1:\"0\";s:18:\"form-padding-right\";s:1:\"0\";s:19:\"form-padding-bottom\";s:1:\"0\";s:17:\"form-padding-left\";s:1:\"0\";s:17:\"form-border-width\";s:1:\"0\";s:18:\"form-border-radius\";s:1:\"0\";s:23:\"cform-label-font-family\";s:6:\"Roboto\";s:25:\"cform-label-custom-family\";s:0:\"\";s:21:\"cform-label-font-size\";s:2:\"12\";s:23:\"cform-label-font-weight\";s:4:\"bold\";s:23:\"cform-title-font-family\";s:6:\"Roboto\";s:25:\"cform-title-custom-family\";s:0:\"\";s:21:\"cform-title-font-size\";s:2:\"45\";s:23:\"cform-title-font-weight\";s:6:\"normal\";s:22:\"cform-title-text-align\";s:4:\"left\";s:26:\"cform-subtitle-font-family\";s:6:\"Roboto\";s:26:\"cform-subtitle-custom-font\";s:0:\"\";s:24:\"cform-subtitle-font-size\";s:2:\"18\";s:26:\"cform-subtitle-font-weight\";s:6:\"normal\";s:25:\"cform-subtitle-text-align\";s:4:\"left\";s:23:\"cform-input-font-family\";s:6:\"Roboto\";s:23:\"cform-input-custom-font\";s:0:\"\";s:21:\"cform-input-font-size\";s:2:\"16\";s:23:\"cform-input-font-weight\";s:6:\"normal\";s:23:\"cform-radio-font-family\";s:6:\"Roboto\";s:23:\"cform-radio-custom-font\";s:0:\"\";s:21:\"cform-radio-font-size\";s:2:\"14\";s:23:\"cform-radio-font-weight\";s:6:\"normal\";s:24:\"cform-select-font-family\";s:6:\"Roboto\";s:26:\"cform-select-custom-family\";s:0:\"\";s:22:\"cform-select-font-size\";s:2:\"16\";s:24:\"cform-select-font-weight\";s:6:\"normal\";s:29:\"cform-multiselect-font-family\";s:6:\"Roboto\";s:29:\"cform-multiselect-custom-font\";s:0:\"\";s:27:\"cform-multiselect-font-size\";s:2:\"16\";s:29:\"cform-multiselect-font-weight\";s:6:\"normal\";s:26:\"cform-dropdown-font-family\";s:6:\"Roboto\";s:26:\"cform-dropdown-custom-font\";s:0:\"\";s:24:\"cform-dropdown-font-size\";s:2:\"16\";s:26:\"cform-dropdown-font-weight\";s:6:\"normal\";s:26:\"cform-calendar-font-family\";s:6:\"Roboto\";s:26:\"cform-calendar-custom-font\";s:0:\"\";s:24:\"cform-calendar-font-size\";s:2:\"13\";s:26:\"cform-calendar-font-weight\";s:6:\"normal\";s:24:\"cform-button-font-family\";s:6:\"Roboto\";s:24:\"cform-button-custom-font\";s:0:\"\";s:22:\"cform-button-font-size\";s:2:\"14\";s:24:\"cform-button-font-weight\";s:3:\"500\";s:26:\"cform-timeline-font-family\";s:6:\"Roboto\";s:26:\"cform-timeline-custom-font\";s:0:\"\";s:24:\"cform-timeline-font-size\";s:2:\"12\";s:26:\"cform-timeline-font-weight\";s:6:\"normal\";s:28:\"cform-pagination-font-family\";s:0:\"\";s:28:\"cform-pagination-custom-font\";s:0:\"\";s:26:\"cform-pagination-font-size\";s:2:\"16\";s:28:\"cform-pagination-font-weight\";s:6:\"normal\";s:19:\"payment_require_ssl\";s:0:\"\";s:15:\"submission-file\";s:6:\"delete\";s:7:\"form_id\";s:2:\"97\";s:17:\"store_submissions\";s:1:\"1\";s:9:\"form_name\";s:1:\"-\";s:11:\"form_status\";s:7:\"publish\";s:13:\"sc_email_link\";s:1:\"1\";s:10:\"sc_message\";s:791:\"<p>Ваша форма была сохранена как черновик, и была создана ссылка для возобновления, чтобы вы могли вернуться к форме в любое время в течение {retention_period} дней с сегодняшнего дня. Скопируйте и сохраните ссылку или введите свой адрес электронной почты ниже, чтобы ссылка была отправлена на вашу почту.</p><p>Эти поля не были сохранены в черновике вашей заявки: Paypal, Stripe, Signature, Password, Captcha и Upload. . Пожалуйста, заполните их перед отправкой формы.</p>\";s:13:\"use_ajax_load\";s:0:\"\";s:18:\"notification_count\";i:1;s:15:\"previous_status\";s:7:\"publish\";}s:9:\"client_id\";N;s:22:\"integration_conditions\";a:0:{}s:9:\"behaviors\";a:1:{i:0;a:10:{s:4:\"slug\";s:18:\"behavior-1234-4567\";s:5:\"label\";s:0:\"\";s:14:\"autoclose-time\";s:1:\"5\";s:9:\"autoclose\";s:4:\"true\";s:6:\"newtab\";s:7:\"sametab\";s:16:\"thankyou-message\";s:122:\"Спасибо, что обратились к нам, мы свяжемся с вами в ближайшее время.\";s:22:\"email-thankyou-message\";s:0:\"\";s:23:\"manual-thankyou-message\";s:0:\"\";s:20:\"submission-behaviour\";s:18:\"behaviour-thankyou\";s:12:\"redirect-url\";s:0:\"\";}}s:13:\"notifications\";a:1:{i:0;a:8:{s:4:\"slug\";s:22:\"notification-1234-4567\";s:5:\"label\";s:62:\"Электронная почта администратора\";s:16:\"email-recipients\";s:7:\"default\";s:10:\"recipients\";s:20:\"adminAlpaca@shop.com\";s:13:\"email-subject\";s:49:\"Заявка на возврат #{submission_id}\";s:12:\"email-editor\";s:67:\"<p>Новая заявка на возврат #{submission_id}</p>\";s:16:\"email-attachment\";s:4:\"true\";s:4:\"type\";s:7:\"default\";}}}'),
(218,98,'footnotes','');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES
(1,1,'2025-08-17 16:01:10','2025-08-17 13:01:10','<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->','Привет, мир!','','publish','open','open','','%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80','','','2025-08-17 16:01:10','2025-08-17 13:01:10','',0,'http://192.168.171.132/?p=1',0,'post','',1),
(3,1,'2025-08-17 16:01:10','2025-08-17 13:01:10','<!-- wp:list {\"ordered\":true} -->\n<ol class=\"wp-block-list\"><!-- wp:list-item -->\n<li>Законность. Обработка по 152-ФЗ. Собираем минимум: ФИО, контакты, адреса доставки/оплаты, сведения о заказах, IP и cookie — только для работы магазина.</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Цели. Оформление/оплата/доставка, учётная запись и поддержка, выполнение требований закона; маркетинг — только при отдельном согласии.</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Передача. Платёжным сервисам, доставке, хостингу/техподдержке и аналитике — строго по необходимости и при обеспечении конфиденциальности.</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Cookie. Технические — обязательны; аналитические/маркетинговые — по согласию. Управлять можно в настройках браузера.</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Хранение и защита. Храним до достижения целей/сроков по закону; ограничение доступа, резервное копирование и обновления.</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Права. Доступ/копия, исправление, удаление, отзыв согласия, возражение; жалоба в уполномоченный орган.</li>\n<!-- /wp:list-item --></ol>\n<!-- /wp:list -->','Политика конфиденциальности','','publish','closed','open','','privacy-policy','','','2025-08-27 00:11:17','2025-08-26 21:11:17','',0,'http://192.168.171.132/?page_id=3',0,'page','',0),
(4,0,'2025-08-17 16:01:10','2025-08-17 13:01:10','<!-- wp:navigation-link {\"label\":\"Главная\",\"type\":\"page\",\"id\":93,\"url\":\"http://192.168.20.81/\",\"kind\":\"post-type\"} /-->\n\n<!-- wp:navigation-link {\"label\":\"Корзина\",\"type\":\"page\",\"id\":8,\"url\":\"http://192.168.20.81/cart/\",\"kind\":\"post-type\"} /-->\n\n<!-- wp:navigation-link {\"label\":\"Магазин\",\"type\":\"page\",\"id\":7,\"url\":\"http://192.168.20.81/shop/\",\"kind\":\"post-type\"} /-->\n\n<!-- wp:navigation-link {\"label\":\"Мой аккаунт\",\"type\":\"page\",\"id\":10,\"url\":\"http://192.168.20.81/my-account/\",\"kind\":\"post-type\"} /-->\n\n<!-- wp:navigation-link {\"label\":\"Оформление заказа\",\"type\":\"page\",\"id\":9,\"url\":\"http://192.168.20.81/checkout/\",\"kind\":\"post-type\"} /-->\n\n<!-- wp:navigation-link {\"label\":\"Пол. конф.\",\"type\":\"page\",\"id\":3,\"url\":\"http://192.168.20.81/privacy-policy/\",\"kind\":\"post-type\"} /-->\n\n<!-- wp:navigation-link {\"label\":\"Список желаний\",\"type\":\"page\",\"id\":63,\"url\":\"http://192.168.20.81/wishlist/\",\"kind\":\"post-type\"} /-->','Навигация','','publish','closed','closed','','navigation','','','2025-09-15 19:14:33','2025-09-15 16:14:33','',0,'http://192.168.171.132/2025/08/17/navigation/',0,'wp_navigation','',0),
(7,1,'2025-08-17 17:14:14','2025-08-17 14:14:14','','Магазин','','publish','closed','closed','','shop','','','2025-08-17 17:14:14','2025-08-17 14:14:14','',0,'http://192.168.171.132/shop/',0,'page','',0),
(8,1,'2025-08-17 17:14:14','2025-08-17 14:14:14','<!-- wp:woocommerce/cart -->\n<div class=\"wp-block-woocommerce-cart alignwide is-loading\"><!-- wp:woocommerce/filled-cart-block -->\n<div class=\"wp-block-woocommerce-filled-cart-block\"><!-- wp:woocommerce/cart-items-block -->\n<div class=\"wp-block-woocommerce-cart-items-block\"><!-- wp:woocommerce/cart-line-items-block -->\n<div class=\"wp-block-woocommerce-cart-line-items-block\"></div>\n<!-- /wp:woocommerce/cart-line-items-block -->\n\n<!-- wp:woocommerce/cart-cross-sells-block -->\n<div class=\"wp-block-woocommerce-cart-cross-sells-block\"><!-- wp:heading {\"fontSize\":\"large\"} -->\n<h2 class=\"wp-block-heading has-large-font-size\">Вас может заинтересовать…</h2>\n<!-- /wp:heading -->\n\n<!-- wp:woocommerce/cart-cross-sells-products-block -->\n<div class=\"wp-block-woocommerce-cart-cross-sells-products-block\"></div>\n<!-- /wp:woocommerce/cart-cross-sells-products-block --></div>\n<!-- /wp:woocommerce/cart-cross-sells-block --></div>\n<!-- /wp:woocommerce/cart-items-block -->\n\n<!-- wp:woocommerce/cart-totals-block -->\n<div class=\"wp-block-woocommerce-cart-totals-block\"><!-- wp:woocommerce/cart-order-summary-block -->\n<div class=\"wp-block-woocommerce-cart-order-summary-block\"><!-- wp:woocommerce/cart-order-summary-heading-block -->\n<div class=\"wp-block-woocommerce-cart-order-summary-heading-block\"></div>\n<!-- /wp:woocommerce/cart-order-summary-heading-block -->\n\n<!-- wp:woocommerce/cart-order-summary-coupon-form-block -->\n<div class=\"wp-block-woocommerce-cart-order-summary-coupon-form-block\"></div>\n<!-- /wp:woocommerce/cart-order-summary-coupon-form-block -->\n\n<!-- wp:woocommerce/cart-order-summary-subtotal-block -->\n<div class=\"wp-block-woocommerce-cart-order-summary-subtotal-block\"></div>\n<!-- /wp:woocommerce/cart-order-summary-subtotal-block -->\n\n<!-- wp:woocommerce/cart-order-summary-fee-block -->\n<div class=\"wp-block-woocommerce-cart-order-summary-fee-block\"></div>\n<!-- /wp:woocommerce/cart-order-summary-fee-block -->\n\n<!-- wp:woocommerce/cart-order-summary-discount-block -->\n<div class=\"wp-block-woocommerce-cart-order-summary-discount-block\"></div>\n<!-- /wp:woocommerce/cart-order-summary-discount-block -->\n\n<!-- wp:woocommerce/cart-order-summary-shipping-block -->\n<div class=\"wp-block-woocommerce-cart-order-summary-shipping-block\"></div>\n<!-- /wp:woocommerce/cart-order-summary-shipping-block -->\n\n<!-- wp:woocommerce/cart-order-summary-taxes-block -->\n<div class=\"wp-block-woocommerce-cart-order-summary-taxes-block\"></div>\n<!-- /wp:woocommerce/cart-order-summary-taxes-block --></div>\n<!-- /wp:woocommerce/cart-order-summary-block -->\n\n<!-- wp:woocommerce/cart-express-payment-block -->\n<div class=\"wp-block-woocommerce-cart-express-payment-block\"></div>\n<!-- /wp:woocommerce/cart-express-payment-block -->\n\n<!-- wp:woocommerce/proceed-to-checkout-block -->\n<div class=\"wp-block-woocommerce-proceed-to-checkout-block\"></div>\n<!-- /wp:woocommerce/proceed-to-checkout-block -->\n\n<!-- wp:woocommerce/cart-accepted-payment-methods-block -->\n<div class=\"wp-block-woocommerce-cart-accepted-payment-methods-block\"></div>\n<!-- /wp:woocommerce/cart-accepted-payment-methods-block --></div>\n<!-- /wp:woocommerce/cart-totals-block --></div>\n<!-- /wp:woocommerce/filled-cart-block -->\n\n<!-- wp:woocommerce/empty-cart-block -->\n<div class=\"wp-block-woocommerce-empty-cart-block\"><!-- wp:heading {\"textAlign\":\"center\",\"className\":\"with-empty-cart-icon wc-block-cart__empty-cart__title\"} -->\n<h2 class=\"wp-block-heading has-text-align-center with-empty-cart-icon wc-block-cart__empty-cart__title\">Сейчас ваша корзина пуста!</h2>\n<!-- /wp:heading -->\n\n<!-- wp:separator {\"className\":\"is-style-dots\"} -->\n<hr class=\"wp-block-separator has-alpha-channel-opacity is-style-dots\"/>\n<!-- /wp:separator -->\n\n<!-- wp:heading {\"textAlign\":\"center\"} -->\n<h2 class=\"wp-block-heading has-text-align-center\">Новинка в магазине</h2>\n<!-- /wp:heading -->\n\n<!-- wp:woocommerce/product-new {\"columns\":4,\"rows\":1} /--></div>\n<!-- /wp:woocommerce/empty-cart-block --></div>\n<!-- /wp:woocommerce/cart -->','Корзина','','publish','closed','closed','','cart','','','2025-08-18 01:26:40','2025-08-17 22:26:40','',0,'http://192.168.171.132/cart/',0,'page','',0),
(9,1,'2025-08-17 17:14:14','2025-08-17 14:14:14','<!-- wp:woocommerce/checkout -->\n<div class=\"wp-block-woocommerce-checkout alignwide wc-block-checkout is-loading\"><!-- wp:woocommerce/checkout-fields-block -->\n<div class=\"wp-block-woocommerce-checkout-fields-block\"><!-- wp:woocommerce/checkout-express-payment-block -->\n<div class=\"wp-block-woocommerce-checkout-express-payment-block\"></div>\n<!-- /wp:woocommerce/checkout-express-payment-block -->\n\n<!-- wp:woocommerce/checkout-contact-information-block -->\n<div class=\"wp-block-woocommerce-checkout-contact-information-block\"></div>\n<!-- /wp:woocommerce/checkout-contact-information-block -->\n\n<!-- wp:woocommerce/checkout-shipping-method-block -->\n<div class=\"wp-block-woocommerce-checkout-shipping-method-block\"></div>\n<!-- /wp:woocommerce/checkout-shipping-method-block -->\n\n<!-- wp:woocommerce/checkout-pickup-options-block -->\n<div class=\"wp-block-woocommerce-checkout-pickup-options-block\"></div>\n<!-- /wp:woocommerce/checkout-pickup-options-block -->\n\n<!-- wp:woocommerce/checkout-shipping-address-block -->\n<div class=\"wp-block-woocommerce-checkout-shipping-address-block\"></div>\n<!-- /wp:woocommerce/checkout-shipping-address-block -->\n\n<!-- wp:woocommerce/checkout-billing-address-block -->\n<div class=\"wp-block-woocommerce-checkout-billing-address-block\"></div>\n<!-- /wp:woocommerce/checkout-billing-address-block -->\n\n<!-- wp:woocommerce/checkout-shipping-methods-block -->\n<div class=\"wp-block-woocommerce-checkout-shipping-methods-block\"></div>\n<!-- /wp:woocommerce/checkout-shipping-methods-block -->\n\n<!-- wp:woocommerce/checkout-payment-block -->\n<div class=\"wp-block-woocommerce-checkout-payment-block\"></div>\n<!-- /wp:woocommerce/checkout-payment-block -->\n\n<!-- wp:woocommerce/checkout-additional-information-block -->\n<div class=\"wp-block-woocommerce-checkout-additional-information-block\"></div>\n<!-- /wp:woocommerce/checkout-additional-information-block -->\n\n<!-- wp:woocommerce/checkout-order-note-block -->\n<div class=\"wp-block-woocommerce-checkout-order-note-block\"></div>\n<!-- /wp:woocommerce/checkout-order-note-block -->\n\n<!-- wp:woocommerce/checkout-terms-block -->\n<div class=\"wp-block-woocommerce-checkout-terms-block\"></div>\n<!-- /wp:woocommerce/checkout-terms-block -->\n\n<!-- wp:woocommerce/checkout-actions-block -->\n<div class=\"wp-block-woocommerce-checkout-actions-block\"></div>\n<!-- /wp:woocommerce/checkout-actions-block --></div>\n<!-- /wp:woocommerce/checkout-fields-block -->\n\n<!-- wp:woocommerce/checkout-totals-block -->\n<div class=\"wp-block-woocommerce-checkout-totals-block\"><!-- wp:woocommerce/checkout-order-summary-block -->\n<div class=\"wp-block-woocommerce-checkout-order-summary-block\"><!-- wp:woocommerce/checkout-order-summary-cart-items-block -->\n<div class=\"wp-block-woocommerce-checkout-order-summary-cart-items-block\"></div>\n<!-- /wp:woocommerce/checkout-order-summary-cart-items-block -->\n\n<!-- wp:woocommerce/checkout-order-summary-coupon-form-block -->\n<div class=\"wp-block-woocommerce-checkout-order-summary-coupon-form-block\"></div>\n<!-- /wp:woocommerce/checkout-order-summary-coupon-form-block -->\n\n<!-- wp:woocommerce/checkout-order-summary-subtotal-block -->\n<div class=\"wp-block-woocommerce-checkout-order-summary-subtotal-block\"></div>\n<!-- /wp:woocommerce/checkout-order-summary-subtotal-block -->\n\n<!-- wp:woocommerce/checkout-order-summary-fee-block -->\n<div class=\"wp-block-woocommerce-checkout-order-summary-fee-block\"></div>\n<!-- /wp:woocommerce/checkout-order-summary-fee-block -->\n\n<!-- wp:woocommerce/checkout-order-summary-discount-block -->\n<div class=\"wp-block-woocommerce-checkout-order-summary-discount-block\"></div>\n<!-- /wp:woocommerce/checkout-order-summary-discount-block -->\n\n<!-- wp:woocommerce/checkout-order-summary-shipping-block -->\n<div class=\"wp-block-woocommerce-checkout-order-summary-shipping-block\"></div>\n<!-- /wp:woocommerce/checkout-order-summary-shipping-block -->\n\n<!-- wp:woocommerce/checkout-order-summary-taxes-block -->\n<div class=\"wp-block-woocommerce-checkout-order-summary-taxes-block\"></div>\n<!-- /wp:woocommerce/checkout-order-summary-taxes-block --></div>\n<!-- /wp:woocommerce/checkout-order-summary-block --></div>\n<!-- /wp:woocommerce/checkout-totals-block --></div>\n<!-- /wp:woocommerce/checkout -->','Оформление заказа','','publish','closed','closed','','checkout','','','2025-08-17 17:14:14','2025-08-17 14:14:14','',0,'http://192.168.171.132/checkout/',0,'page','',0),
(10,1,'2025-08-17 17:14:14','2025-08-17 14:14:14','<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->','Мой аккаунт','','publish','closed','closed','','my-account','','','2025-08-17 17:14:14','2025-08-17 14:14:14','',0,'http://192.168.171.132/my-account/',0,'page','',0),
(12,0,'2025-08-17 17:15:18','2025-08-17 14:15:18','{\"fontFamily\":\"Inter, sans-serif\",\"preview\":\"https://s.w.org/images/fonts/wp-6.7/previews/inter/inter.svg\"}','Inter','','publish','closed','closed','','inter','','','2025-08-17 17:15:18','2025-08-17 14:15:18','',0,'http://192.168.171.132/2025/08/17/inter/',0,'wp_font_family','',0),
(13,0,'2025-08-17 17:15:18','2025-08-17 14:15:18','{\"fontFamily\":\"\\\"Bodoni Moda\\\", serif\",\"preview\":\"https://s.w.org/images/fonts/wp-6.7/previews/bodoni-moda/bodoni-moda.svg\"}','Bodoni Moda','','publish','closed','closed','','bodoni-moda','','','2025-08-17 17:15:18','2025-08-17 14:15:18','',0,'http://192.168.171.132/2025/08/17/bodoni-moda/',0,'wp_font_family','',0),
(14,0,'2025-08-17 17:15:18','2025-08-17 14:15:18','{\"fontFamily\":\"Overpass, sans-serif\",\"preview\":\"https://s.w.org/images/fonts/wp-6.7/previews/overpass/overpass.svg\"}','Overpass','','publish','closed','closed','','overpass','','','2025-08-17 17:15:18','2025-08-17 14:15:18','',0,'http://192.168.171.132/2025/08/17/overpass/',0,'wp_font_family','',0),
(15,0,'2025-08-17 17:15:18','2025-08-17 14:15:18','{\"fontFamily\":\"\\\"Albert Sans\\\", sans-serif\",\"preview\":\"https://s.w.org/images/fonts/wp-6.7/previews/albert-sans/albert-sans.svg\"}','Albert Sans','','publish','closed','closed','','albert-sans','','','2025-08-17 17:15:18','2025-08-17 14:15:18','',0,'http://192.168.171.132/2025/08/17/albert-sans/',0,'wp_font_family','',0),
(16,0,'2025-08-17 17:15:18','2025-08-17 14:15:18','{\"fontFamily\":\"Lora, serif\",\"preview\":\"https://s.w.org/images/fonts/wp-6.7/previews/lora/lora.svg\"}','Lora','','publish','closed','closed','','lora','','','2025-08-17 17:15:18','2025-08-17 14:15:18','',0,'http://192.168.171.132/2025/08/17/lora/',0,'wp_font_family','',0),
(17,0,'2025-08-17 17:15:18','2025-08-17 14:15:18','{\"fontFamily\":\"Montserrat, sans-serif\",\"preview\":\"https://s.w.org/images/fonts/wp-6.7/previews/montserrat/montserrat.svg\"}','Montserrat','','publish','closed','closed','','montserrat','','','2025-08-17 17:15:18','2025-08-17 14:15:18','',0,'http://192.168.171.132/2025/08/17/montserrat/',0,'wp_font_family','',0),
(18,0,'2025-08-17 17:15:18','2025-08-17 14:15:18','{\"fontFamily\":\"Arvo, serif\",\"preview\":\"https://s.w.org/images/fonts/wp-6.7/previews/arvo/arvo.svg\"}','Arvo','','publish','closed','closed','','arvo','','','2025-08-17 17:15:18','2025-08-17 14:15:18','',0,'http://192.168.171.132/2025/08/17/arvo/',0,'wp_font_family','',0),
(19,0,'2025-08-17 17:15:18','2025-08-17 14:15:18','{\"fontFamily\":\"Rubik, sans-serif\",\"preview\":\"https://s.w.org/images/fonts/wp-6.7/previews/rubik/rubik.svg\"}','Rubik','','publish','closed','closed','','rubik','','','2025-08-17 17:15:18','2025-08-17 14:15:18','',0,'http://192.168.171.132/2025/08/17/rubik/',0,'wp_font_family','',0),
(20,0,'2025-08-17 17:15:18','2025-08-17 14:15:18','{\"fontFamily\":\"Newsreader, serif\",\"preview\":\"https://s.w.org/images/fonts/wp-6.7/previews/newsreader/newsreader.svg\"}','Newsreader','','publish','closed','closed','','newsreader','','','2025-08-17 17:15:18','2025-08-17 14:15:18','',0,'http://192.168.171.132/2025/08/17/newsreader/',0,'wp_font_family','',0),
(21,0,'2025-08-17 17:15:18','2025-08-17 14:15:18','{\"fontFamily\":\"Cormorant, serif\",\"preview\":\"https://s.w.org/images/fonts/wp-6.7/previews/cormorant/cormorant.svg\"}','Cormorant','','publish','closed','closed','','cormorant','','','2025-08-17 17:15:18','2025-08-17 14:15:18','',0,'http://192.168.171.132/2025/08/17/cormorant/',0,'wp_font_family','',0),
(22,0,'2025-08-17 17:15:18','2025-08-17 14:15:18','{\"fontFamily\":\"\\\"Work Sans\\\", sans-serif\",\"preview\":\"https://s.w.org/images/fonts/wp-6.7/previews/work-sans/work-sans.svg\"}','Work Sans','','publish','closed','closed','','work-sans','','','2025-08-17 17:15:18','2025-08-17 14:15:18','',0,'http://192.168.171.132/2025/08/17/work-sans/',0,'wp_font_family','',0),
(23,0,'2025-08-17 17:15:18','2025-08-17 14:15:18','{\"fontFamily\":\"Raleway, sans-serif\",\"preview\":\"https://s.w.org/images/fonts/wp-6.7/previews/raleway/raleway.svg\"}','Raleway','','publish','closed','closed','','raleway','','','2025-08-17 17:15:18','2025-08-17 14:15:18','',0,'http://192.168.171.132/2025/08/17/raleway/',0,'wp_font_family','',0),
(24,0,'2025-08-17 17:15:18','2025-08-17 14:15:18','{\"fontFamily\":\"Inter\",\"fontStyle\":\"normal\",\"fontWeight\":\"400\",\"src\":\"http://192.168.171.132/wp-content/uploads/fonts/UcCO3FwrK3iLTeHuS_nVMrMxCp50SjIw2boKoduKmMEVuLyfMZ1rib2Bg-4.woff2\",\"preview\":\"https://s.w.org/images/fonts/wp-6.7/previews/inter/inter-400-normal.svg\"}','inter;normal;400;100%;U+0-10FFFF','','publish','closed','closed','','internormal400100u0-10ffff','','','2025-08-17 17:15:18','2025-08-17 14:15:18','',12,'http://192.168.171.132/2025/08/17/internormal400100u0-10ffff/',0,'wp_font_face','',0),
(25,0,'2025-08-17 17:15:19','2025-08-17 14:15:19','{\"fontFamily\":\"Inter\",\"fontStyle\":\"normal\",\"fontWeight\":\"500\",\"src\":\"http://192.168.171.132/wp-content/uploads/fonts/UcCO3FwrK3iLTeHuS_nVMrMxCp50SjIw2boKoduKmMEVuI6fMZ1rib2Bg-4.woff2\",\"preview\":\"https://s.w.org/images/fonts/wp-6.7/previews/inter/inter-500-normal.svg\"}','inter;normal;500;100%;U+0-10FFFF','','publish','closed','closed','','internormal500100u0-10ffff','','','2025-08-17 17:15:19','2025-08-17 14:15:19','',12,'http://192.168.171.132/2025/08/17/internormal500100u0-10ffff/',0,'wp_font_face','',0),
(26,0,'2025-08-17 17:15:19','2025-08-17 14:15:19','{\"fontFamily\":\"Inter\",\"fontStyle\":\"normal\",\"fontWeight\":\"600\",\"src\":\"http://192.168.171.132/wp-content/uploads/fonts/UcCO3FwrK3iLTeHuS_nVMrMxCp50SjIw2boKoduKmMEVuGKYMZ1rib2Bg-4.woff2\",\"preview\":\"https://s.w.org/images/fonts/wp-6.7/previews/inter/inter-600-normal.svg\"}','inter;normal;600;100%;U+0-10FFFF','','publish','closed','closed','','internormal600100u0-10ffff','','','2025-08-17 17:15:19','2025-08-17 14:15:19','',12,'http://192.168.171.132/2025/08/17/internormal600100u0-10ffff/',0,'wp_font_face','',0),
(27,0,'2025-08-17 17:15:19','2025-08-17 14:15:19','{\"fontFamily\":\"Inter\",\"fontStyle\":\"italic\",\"fontWeight\":\"400\",\"src\":\"http://192.168.171.132/wp-content/uploads/fonts/UcCM3FwrK3iLTcvneQg7Ca725JhhKnNqk4j1ebLhAm8SrXTc2dthiJ-Ek-7MeA.woff2\",\"preview\":\"https://s.w.org/images/fonts/wp-6.7/previews/inter/inter-400-italic.svg\"}','inter;italic;400;100%;U+0-10FFFF','','publish','closed','closed','','interitalic400100u0-10ffff','','','2025-08-17 17:15:19','2025-08-17 14:15:19','',12,'http://192.168.171.132/2025/08/17/interitalic400100u0-10ffff/',0,'wp_font_face','',0),
(28,0,'2025-08-17 17:15:19','2025-08-17 14:15:19','{\"fontFamily\":\"Inter\",\"fontStyle\":\"italic\",\"fontWeight\":\"500\",\"src\":\"http://192.168.171.132/wp-content/uploads/fonts/UcCM3FwrK3iLTcvneQg7Ca725JhhKnNqk4j1ebLhAm8SrXTc69thiJ-Ek-7MeA.woff2\",\"preview\":\"https://s.w.org/images/fonts/wp-6.7/previews/inter/inter-500-italic.svg\"}','inter;italic;500;100%;U+0-10FFFF','','publish','closed','closed','','interitalic500100u0-10ffff','','','2025-08-17 17:15:19','2025-08-17 14:15:19','',12,'http://192.168.171.132/2025/08/17/interitalic500100u0-10ffff/',0,'wp_font_face','',0),
(29,0,'2025-08-17 17:15:19','2025-08-17 14:15:19','{\"fontFamily\":\"Inter\",\"fontStyle\":\"italic\",\"fontWeight\":\"600\",\"src\":\"http://192.168.171.132/wp-content/uploads/fonts/UcCM3FwrK3iLTcvneQg7Ca725JhhKnNqk4j1ebLhAm8SrXTcB9xhiJ-Ek-7MeA.woff2\",\"preview\":\"https://s.w.org/images/fonts/wp-6.7/previews/inter/inter-600-italic.svg\"}','inter;italic;600;100%;U+0-10FFFF','','publish','closed','closed','','interitalic600100u0-10ffff','','','2025-08-17 17:15:19','2025-08-17 14:15:19','',12,'http://192.168.171.132/2025/08/17/interitalic600100u0-10ffff/',0,'wp_font_face','',0),
(30,0,'2025-08-17 17:15:19','2025-08-17 14:15:19','{\"fontFamily\":\"\\\"Bodoni Moda\\\"\",\"fontStyle\":\"normal\",\"fontWeight\":\"400\",\"src\":\"http://192.168.171.132/wp-content/uploads/fonts/aFT67PxzY382XsXX63LUYL6GYFcan6NJrKp-VPjfJMShrpsGFUt8oU7awIVytVjMYwE.woff2\",\"preview\":\"https://s.w.org/images/fonts/wp-6.7/previews/bodoni-moda/bodoni-moda-400-normal.svg\"}','bodoni moda;normal;400;100%;U+0-10FFFF','','publish','closed','closed','','bodoni-modanormal400100u0-10ffff','','','2025-08-17 17:15:19','2025-08-17 14:15:19','',13,'http://192.168.171.132/2025/08/17/bodoni-modanormal400100u0-10ffff/',0,'wp_font_face','',0),
(31,0,'2025-08-17 17:15:19','2025-08-17 14:15:19','{\"fontFamily\":\"\\\"Bodoni Moda\\\"\",\"fontStyle\":\"italic\",\"fontWeight\":\"400\",\"src\":\"http://192.168.171.132/wp-content/uploads/fonts/aFT07PxzY382XsXX63LUYJSPUqb0pL6OQqxrZLnVbvZedvJtj-V7tIaZKMN4tHrJcwHqoQ.woff2\",\"preview\":\"https://s.w.org/images/fonts/wp-6.7/previews/bodoni-moda/bodoni-moda-400-italic.svg\"}','bodoni moda;italic;400;100%;U+0-10FFFF','','publish','closed','closed','','bodoni-modaitalic400100u0-10ffff','','','2025-08-17 17:15:19','2025-08-17 14:15:19','',13,'http://192.168.171.132/2025/08/17/bodoni-modaitalic400100u0-10ffff/',0,'wp_font_face','',0),
(32,0,'2025-08-17 17:15:20','2025-08-17 14:15:20','{\"fontFamily\":\"Overpass\",\"fontStyle\":\"normal\",\"fontWeight\":\"300\",\"src\":\"http://192.168.171.132/wp-content/uploads/fonts/qFda35WCmI96Ajtm83upeyoaX6QPnlo6ovPrPJCLtce-og.woff2\",\"preview\":\"https://s.w.org/images/fonts/wp-6.7/previews/overpass/overpass-300-normal.svg\"}','overpass;normal;300;100%;U+0-10FFFF','','publish','closed','closed','','overpassnormal300100u0-10ffff','','','2025-08-17 17:15:20','2025-08-17 14:15:20','',14,'http://192.168.171.132/2025/08/17/overpassnormal300100u0-10ffff/',0,'wp_font_face','',0),
(33,0,'2025-08-17 17:15:20','2025-08-17 14:15:20','{\"fontFamily\":\"Overpass\",\"fontStyle\":\"normal\",\"fontWeight\":\"400\",\"src\":\"http://192.168.171.132/wp-content/uploads/fonts/qFda35WCmI96Ajtm83upeyoaX6QPnlo6_PPrPJCLtce-og.woff2\",\"preview\":\"https://s.w.org/images/fonts/wp-6.7/previews/overpass/overpass-400-normal.svg\"}','overpass;normal;400;100%;U+0-10FFFF','','publish','closed','closed','','overpassnormal400100u0-10ffff','','','2025-08-17 17:15:20','2025-08-17 14:15:20','',14,'http://192.168.171.132/2025/08/17/overpassnormal400100u0-10ffff/',0,'wp_font_face','',0),
(34,0,'2025-08-17 17:15:20','2025-08-17 14:15:20','{\"fontFamily\":\"Overpass\",\"fontStyle\":\"italic\",\"fontWeight\":\"300\",\"src\":\"http://192.168.171.132/wp-content/uploads/fonts/qFdU35WCmI96Ajtm81GgSdXCNs-VMF0vNLBdepqKl8Kuosgz.woff2\",\"preview\":\"https://s.w.org/images/fonts/wp-6.7/previews/overpass/overpass-300-italic.svg\"}','overpass;italic;300;100%;U+0-10FFFF','','publish','closed','closed','','overpassitalic300100u0-10ffff','','','2025-08-17 17:15:20','2025-08-17 14:15:20','',14,'http://192.168.171.132/2025/08/17/overpassitalic300100u0-10ffff/',0,'wp_font_face','',0),
(35,0,'2025-08-17 17:15:20','2025-08-17 14:15:20','{\"fontFamily\":\"Overpass\",\"fontStyle\":\"italic\",\"fontWeight\":\"400\",\"src\":\"http://192.168.171.132/wp-content/uploads/fonts/qFdU35WCmI96Ajtm81GgSdXCNs-VMF0vNLADepqKl8Kuosgz.woff2\",\"preview\":\"https://s.w.org/images/fonts/wp-6.7/previews/overpass/overpass-400-italic.svg\"}','overpass;italic;400;100%;U+0-10FFFF','','publish','closed','closed','','overpassitalic400100u0-10ffff','','','2025-08-17 17:15:20','2025-08-17 14:15:20','',14,'http://192.168.171.132/2025/08/17/overpassitalic400100u0-10ffff/',0,'wp_font_face','',0),
(36,0,'2025-08-17 17:15:20','2025-08-17 14:15:20','{\"fontFamily\":\"\\\"Albert Sans\\\"\",\"fontStyle\":\"normal\",\"fontWeight\":\"700\",\"src\":\"http://192.168.171.132/wp-content/uploads/fonts/i7dZIFdwYjGaAMFtZd_QA3xXSKZqhr-TenSHTJT_qY32TxAj1g.woff2\",\"preview\":\"https://s.w.org/images/fonts/wp-6.7/previews/albert-sans/albert-sans-700-normal.svg\"}','albert sans;normal;700;100%;U+0-10FFFF','','publish','closed','closed','','albert-sansnormal700100u0-10ffff','','','2025-08-17 17:15:20','2025-08-17 14:15:20','',15,'http://192.168.171.132/2025/08/17/albert-sansnormal700100u0-10ffff/',0,'wp_font_face','',0),
(37,0,'2025-08-17 17:15:20','2025-08-17 14:15:20','{\"fontFamily\":\"\\\"Albert Sans\\\"\",\"fontStyle\":\"italic\",\"fontWeight\":\"700\",\"src\":\"http://192.168.171.132/wp-content/uploads/fonts/i7dfIFdwYjGaAMFtZd_QA1Zeelmy79QJ1HOSY9Dw6If3bRUz1r5t.woff2\",\"preview\":\"https://s.w.org/images/fonts/wp-6.7/previews/albert-sans/albert-sans-700-italic.svg\"}','albert sans;italic;700;100%;U+0-10FFFF','','publish','closed','closed','','albert-sansitalic700100u0-10ffff','','','2025-08-17 17:15:20','2025-08-17 14:15:20','',15,'http://192.168.171.132/2025/08/17/albert-sansitalic700100u0-10ffff/',0,'wp_font_face','',0),
(38,0,'2025-08-17 17:15:21','2025-08-17 14:15:21','{\"fontFamily\":\"Lora\",\"fontStyle\":\"normal\",\"fontWeight\":\"400\",\"src\":\"http://192.168.171.132/wp-content/uploads/fonts/0QI6MX1D_JOuGQbT0gvTJPa787weuyJDmKxemMeZ.woff2\",\"preview\":\"https://s.w.org/images/fonts/wp-6.7/previews/lora/lora-400-normal.svg\"}','lora;normal;400;100%;U+0-10FFFF','','publish','closed','closed','','loranormal400100u0-10ffff','','','2025-08-17 17:15:21','2025-08-17 14:15:21','',16,'http://192.168.171.132/2025/08/17/loranormal400100u0-10ffff/',0,'wp_font_face','',0),
(39,0,'2025-08-17 17:15:21','2025-08-17 14:15:21','{\"fontFamily\":\"Lora\",\"fontStyle\":\"italic\",\"fontWeight\":\"400\",\"src\":\"http://192.168.171.132/wp-content/uploads/fonts/0QI8MX1D_JOuMw_hLdO6T2wV9KnW-MoFkq18ndeZzZ0.woff2\",\"preview\":\"https://s.w.org/images/fonts/wp-6.7/previews/lora/lora-400-italic.svg\"}','lora;italic;400;100%;U+0-10FFFF','','publish','closed','closed','','loraitalic400100u0-10ffff','','','2025-08-17 17:15:21','2025-08-17 14:15:21','',16,'http://192.168.171.132/2025/08/17/loraitalic400100u0-10ffff/',0,'wp_font_face','',0),
(40,0,'2025-08-17 17:15:21','2025-08-17 14:15:21','{\"fontFamily\":\"Montserrat\",\"fontStyle\":\"normal\",\"fontWeight\":\"500\",\"src\":\"http://192.168.171.132/wp-content/uploads/fonts/JTUHjIg1_i6t8kCHKm4532VJOt5-QNFgpCtZ6Ew7Y3tcoqK5.woff2\",\"preview\":\"https://s.w.org/images/fonts/wp-6.7/previews/montserrat/montserrat-500-normal.svg\"}','montserrat;normal;500;100%;U+0-10FFFF','','publish','closed','closed','','montserratnormal500100u0-10ffff','','','2025-08-17 17:15:21','2025-08-17 14:15:21','',17,'http://192.168.171.132/2025/08/17/montserratnormal500100u0-10ffff/',0,'wp_font_face','',0),
(41,0,'2025-08-17 17:15:21','2025-08-17 14:15:21','{\"fontFamily\":\"Montserrat\",\"fontStyle\":\"normal\",\"fontWeight\":\"700\",\"src\":\"http://192.168.171.132/wp-content/uploads/fonts/JTUHjIg1_i6t8kCHKm4532VJOt5-QNFgpCuM70w7Y3tcoqK5.woff2\",\"preview\":\"https://s.w.org/images/fonts/wp-6.7/previews/montserrat/montserrat-700-normal.svg\"}','montserrat;normal;700;100%;U+0-10FFFF','','publish','closed','closed','','montserratnormal700100u0-10ffff','','','2025-08-17 17:15:21','2025-08-17 14:15:21','',17,'http://192.168.171.132/2025/08/17/montserratnormal700100u0-10ffff/',0,'wp_font_face','',0),
(42,0,'2025-08-17 17:15:21','2025-08-17 14:15:21','{\"fontFamily\":\"Montserrat\",\"fontStyle\":\"italic\",\"fontWeight\":\"500\",\"src\":\"http://192.168.171.132/wp-content/uploads/fonts/JTUFjIg1_i6t8kCHKm459Wx7xQYXK0vOoz6jq5Z9aXp-p7K5ILg.woff2\",\"preview\":\"https://s.w.org/images/fonts/wp-6.7/previews/montserrat/montserrat-500-italic.svg\"}','montserrat;italic;500;100%;U+0-10FFFF','','publish','closed','closed','','montserratitalic500100u0-10ffff','','','2025-08-17 17:15:21','2025-08-17 14:15:21','',17,'http://192.168.171.132/2025/08/17/montserratitalic500100u0-10ffff/',0,'wp_font_face','',0),
(43,0,'2025-08-17 17:15:21','2025-08-17 14:15:21','{\"fontFamily\":\"Montserrat\",\"fontStyle\":\"italic\",\"fontWeight\":\"700\",\"src\":\"http://192.168.171.132/wp-content/uploads/fonts/JTUFjIg1_i6t8kCHKm459Wx7xQYXK0vOoz6jq0N6aXp-p7K5ILg.woff2\",\"preview\":\"https://s.w.org/images/fonts/wp-6.7/previews/montserrat/montserrat-700-italic.svg\"}','montserrat;italic;700;100%;U+0-10FFFF','','publish','closed','closed','','montserratitalic700100u0-10ffff','','','2025-08-17 17:15:21','2025-08-17 14:15:21','',17,'http://192.168.171.132/2025/08/17/montserratitalic700100u0-10ffff/',0,'wp_font_face','',0),
(44,0,'2025-08-17 17:15:21','2025-08-17 14:15:21','{\"fontFamily\":\"Arvo\",\"fontStyle\":\"normal\",\"fontWeight\":\"400\",\"src\":\"http://192.168.171.132/wp-content/uploads/fonts/tDbD2oWUg0MKmSUa7Lzr7vs.woff2\",\"preview\":\"https://s.w.org/images/fonts/wp-6.7/previews/arvo/arvo-400-normal.svg\"}','arvo;normal;400;100%;U+0-10FFFF','','publish','closed','closed','','arvonormal400100u0-10ffff','','','2025-08-17 17:15:21','2025-08-17 14:15:21','',18,'http://192.168.171.132/2025/08/17/arvonormal400100u0-10ffff/',0,'wp_font_face','',0),
(45,0,'2025-08-17 17:15:22','2025-08-17 14:15:22','{\"fontFamily\":\"Arvo\",\"fontStyle\":\"italic\",\"fontWeight\":\"400\",\"src\":\"http://192.168.171.132/wp-content/uploads/fonts/tDbN2oWUg0MKqSIQ7Z7u_vvijQ.woff2\",\"preview\":\"https://s.w.org/images/fonts/wp-6.7/previews/arvo/arvo-400-italic.svg\"}','arvo;italic;400;100%;U+0-10FFFF','','publish','closed','closed','','arvoitalic400100u0-10ffff','','','2025-08-17 17:15:22','2025-08-17 14:15:22','',18,'http://192.168.171.132/2025/08/17/arvoitalic400100u0-10ffff/',0,'wp_font_face','',0),
(46,0,'2025-08-17 17:15:22','2025-08-17 14:15:22','{\"fontFamily\":\"Rubik\",\"fontStyle\":\"normal\",\"fontWeight\":\"400\",\"src\":\"http://192.168.171.132/wp-content/uploads/fonts/iJWZBXyIfDnIV5PNhY1KTN7Z-Yh-B4i1VU80V4bVkA.woff2\",\"preview\":\"https://s.w.org/images/fonts/wp-6.7/previews/rubik/rubik-400-normal.svg\"}','rubik;normal;400;100%;U+0-10FFFF','','publish','closed','closed','','rubiknormal400100u0-10ffff','','','2025-08-17 17:15:22','2025-08-17 14:15:22','',19,'http://192.168.171.132/2025/08/17/rubiknormal400100u0-10ffff/',0,'wp_font_face','',0),
(47,0,'2025-08-17 17:15:22','2025-08-17 14:15:22','{\"fontFamily\":\"Rubik\",\"fontStyle\":\"normal\",\"fontWeight\":\"800\",\"src\":\"http://192.168.171.132/wp-content/uploads/fonts/iJWZBXyIfDnIV5PNhY1KTN7Z-Yh-h4-1VU80V4bVkA.woff2\",\"preview\":\"https://s.w.org/images/fonts/wp-6.7/previews/rubik/rubik-800-normal.svg\"}','rubik;normal;800;100%;U+0-10FFFF','','publish','closed','closed','','rubiknormal800100u0-10ffff','','','2025-08-17 17:15:22','2025-08-17 14:15:22','',19,'http://192.168.171.132/2025/08/17/rubiknormal800100u0-10ffff/',0,'wp_font_face','',0),
(48,0,'2025-08-17 17:15:22','2025-08-17 14:15:22','{\"fontFamily\":\"Rubik\",\"fontStyle\":\"italic\",\"fontWeight\":\"400\",\"src\":\"http://192.168.171.132/wp-content/uploads/fonts/iJWbBXyIfDnIV7nEt3KSJbVDV49rz8tdE0U1dYPFkJ1O.woff2\",\"preview\":\"https://s.w.org/images/fonts/wp-6.7/previews/rubik/rubik-400-italic.svg\"}','rubik;italic;400;100%;U+0-10FFFF','','publish','closed','closed','','rubikitalic400100u0-10ffff','','','2025-08-17 17:15:22','2025-08-17 14:15:22','',19,'http://192.168.171.132/2025/08/17/rubikitalic400100u0-10ffff/',0,'wp_font_face','',0),
(49,0,'2025-08-17 17:15:22','2025-08-17 14:15:22','{\"fontFamily\":\"Rubik\",\"fontStyle\":\"italic\",\"fontWeight\":\"800\",\"src\":\"http://192.168.171.132/wp-content/uploads/fonts/iJWbBXyIfDnIV7nEt3KSJbVDV49rz8vdFEU1dYPFkJ1O.woff2\",\"preview\":\"https://s.w.org/images/fonts/wp-6.7/previews/rubik/rubik-800-italic.svg\"}','rubik;italic;800;100%;U+0-10FFFF','','publish','closed','closed','','rubikitalic800100u0-10ffff','','','2025-08-17 17:15:22','2025-08-17 14:15:22','',19,'http://192.168.171.132/2025/08/17/rubikitalic800100u0-10ffff/',0,'wp_font_face','',0),
(50,0,'2025-08-17 17:15:22','2025-08-17 14:15:22','{\"fontFamily\":\"Newsreader\",\"fontStyle\":\"normal\",\"fontWeight\":\"400\",\"src\":\"http://192.168.171.132/wp-content/uploads/fonts/cY9qfjOCX1hbuyalUrK49dLac06G1ZGsZBtoBCzBDXXD9JVF438weI_ACexEPjCggA.woff2\",\"preview\":\"https://s.w.org/images/fonts/wp-6.7/previews/newsreader/newsreader-400-normal.svg\"}','newsreader;normal;400;100%;U+0-10FFFF','','publish','closed','closed','','newsreadernormal400100u0-10ffff','','','2025-08-17 17:15:22','2025-08-17 14:15:22','',20,'http://192.168.171.132/2025/08/17/newsreadernormal400100u0-10ffff/',0,'wp_font_face','',0),
(51,0,'2025-08-17 17:15:22','2025-08-17 14:15:22','{\"fontFamily\":\"Newsreader\",\"fontStyle\":\"italic\",\"fontWeight\":\"400\",\"src\":\"http://192.168.171.132/wp-content/uploads/fonts/cY9kfjOCX1hbuyalUrK439vogqC9yFZCYg7oRZaLP4obnf7fTXglsMwoT-ZFHDWwgECi.woff2\",\"preview\":\"https://s.w.org/images/fonts/wp-6.7/previews/newsreader/newsreader-400-italic.svg\"}','newsreader;italic;400;100%;U+0-10FFFF','','publish','closed','closed','','newsreaderitalic400100u0-10ffff','','','2025-08-17 17:15:22','2025-08-17 14:15:22','',20,'http://192.168.171.132/2025/08/17/newsreaderitalic400100u0-10ffff/',0,'wp_font_face','',0),
(52,0,'2025-08-17 17:15:23','2025-08-17 14:15:23','{\"fontFamily\":\"Cormorant\",\"fontStyle\":\"normal\",\"fontWeight\":\"400\",\"src\":\"http://192.168.171.132/wp-content/uploads/fonts/H4c2BXOCl9bbnla_nHIA47NMUjsNbCVrFhFTQ7Fg7A2uwYs.woff2\",\"preview\":\"https://s.w.org/images/fonts/wp-6.7/previews/cormorant/cormorant-400-normal.svg\"}','cormorant;normal;400;100%;U+0-10FFFF','','publish','closed','closed','','cormorantnormal400100u0-10ffff','','','2025-08-17 17:15:23','2025-08-17 14:15:23','',21,'http://192.168.171.132/2025/08/17/cormorantnormal400100u0-10ffff/',0,'wp_font_face','',0),
(53,0,'2025-08-17 17:15:23','2025-08-17 14:15:23','{\"fontFamily\":\"Cormorant\",\"fontStyle\":\"normal\",\"fontWeight\":\"500\",\"src\":\"http://192.168.171.132/wp-content/uploads/fonts/H4c2BXOCl9bbnla_nHIA47NMUjsNbCVrFiNTQ7Fg7A2uwYs.woff2\",\"preview\":\"https://s.w.org/images/fonts/wp-6.7/previews/cormorant/cormorant-500-normal.svg\"}','cormorant;normal;500;100%;U+0-10FFFF','','publish','closed','closed','','cormorantnormal500100u0-10ffff','','','2025-08-17 17:15:23','2025-08-17 14:15:23','',21,'http://192.168.171.132/2025/08/17/cormorantnormal500100u0-10ffff/',0,'wp_font_face','',0),
(54,0,'2025-08-17 17:15:23','2025-08-17 14:15:23','{\"fontFamily\":\"Cormorant\",\"fontStyle\":\"italic\",\"fontWeight\":\"400\",\"src\":\"http://192.168.171.132/wp-content/uploads/fonts/H4c0BXOCl9bbnla_nHIq6oGzilJm9otsA9kQq_dq7S-r0YvxdA.woff2\",\"preview\":\"https://s.w.org/images/fonts/wp-6.7/previews/cormorant/cormorant-400-italic.svg\"}','cormorant;italic;400;100%;U+0-10FFFF','','publish','closed','closed','','cormorantitalic400100u0-10ffff','','','2025-08-17 17:15:23','2025-08-17 14:15:23','',21,'http://192.168.171.132/2025/08/17/cormorantitalic400100u0-10ffff/',0,'wp_font_face','',0),
(55,0,'2025-08-17 17:15:23','2025-08-17 14:15:23','{\"fontFamily\":\"Cormorant\",\"fontStyle\":\"italic\",\"fontWeight\":\"500\",\"src\":\"http://192.168.171.132/wp-content/uploads/fonts/H4c0BXOCl9bbnla_nHIq6oGzilJm9otsA9kQmfdq7S-r0YvxdA.woff2\",\"preview\":\"https://s.w.org/images/fonts/wp-6.7/previews/cormorant/cormorant-500-italic.svg\"}','cormorant;italic;500;100%;U+0-10FFFF','','publish','closed','closed','','cormorantitalic500100u0-10ffff','','','2025-08-17 17:15:23','2025-08-17 14:15:23','',21,'http://192.168.171.132/2025/08/17/cormorantitalic500100u0-10ffff/',0,'wp_font_face','',0),
(56,0,'2025-08-17 17:15:23','2025-08-17 14:15:23','{\"fontFamily\":\"\\\"Work Sans\\\"\",\"fontStyle\":\"normal\",\"fontWeight\":\"400\",\"src\":\"http://192.168.171.132/wp-content/uploads/fonts/QGY_z_wNahGAdqQ43RhVcIgYT2Xz5u32K0nXNi0Dp6_cOyA.woff2\",\"preview\":\"https://s.w.org/images/fonts/wp-6.7/previews/work-sans/work-sans-400-normal.svg\"}','work sans;normal;400;100%;U+0-10FFFF','','publish','closed','closed','','work-sansnormal400100u0-10ffff','','','2025-08-17 17:15:23','2025-08-17 14:15:23','',22,'http://192.168.171.132/2025/08/17/work-sansnormal400100u0-10ffff/',0,'wp_font_face','',0),
(57,0,'2025-08-17 17:15:23','2025-08-17 14:15:23','{\"fontFamily\":\"\\\"Work Sans\\\"\",\"fontStyle\":\"italic\",\"fontWeight\":\"400\",\"src\":\"http://192.168.171.132/wp-content/uploads/fonts/QGY9z_wNahGAdqQ43Rh_ebrnlwyYfEPxPoGU3msJpo3ZKyDSQQ.woff2\",\"preview\":\"https://s.w.org/images/fonts/wp-6.7/previews/work-sans/work-sans-400-italic.svg\"}','work sans;italic;400;100%;U+0-10FFFF','','publish','closed','closed','','work-sansitalic400100u0-10ffff','','','2025-08-17 17:15:23','2025-08-17 14:15:23','',22,'http://192.168.171.132/2025/08/17/work-sansitalic400100u0-10ffff/',0,'wp_font_face','',0),
(58,0,'2025-08-17 17:15:24','2025-08-17 14:15:24','{\"fontFamily\":\"Raleway\",\"fontStyle\":\"normal\",\"fontWeight\":\"700\",\"src\":\"http://192.168.171.132/wp-content/uploads/fonts/1Ptxg8zYS_SKggPN4iEgvnHyvveLxVs9pYCKNLA3JC9c.woff2\",\"preview\":\"https://s.w.org/images/fonts/wp-6.7/previews/raleway/raleway-700-normal.svg\"}','raleway;normal;700;100%;U+0-10FFFF','','publish','closed','closed','','ralewaynormal700100u0-10ffff','','','2025-08-17 17:15:24','2025-08-17 14:15:24','',23,'http://192.168.171.132/2025/08/17/ralewaynormal700100u0-10ffff/',0,'wp_font_face','',0),
(59,0,'2025-08-17 17:15:24','2025-08-17 14:15:24','{\"fontFamily\":\"Raleway\",\"fontStyle\":\"italic\",\"fontWeight\":\"700\",\"src\":\"http://192.168.171.132/wp-content/uploads/fonts/1Pt_g8zYS_SKggPNyCgSQamb1W0lwk4S4Y_LPrEVIT9c2c8.woff2\",\"preview\":\"https://s.w.org/images/fonts/wp-6.7/previews/raleway/raleway-700-italic.svg\"}','raleway;italic;700;100%;U+0-10FFFF','','publish','closed','closed','','ralewayitalic700100u0-10ffff','','','2025-08-17 17:15:24','2025-08-17 14:15:24','',23,'http://192.168.171.132/2025/08/17/ralewayitalic700100u0-10ffff/',0,'wp_font_face','',0),
(60,1,'2025-08-17 17:15:29','2025-08-17 14:15:29','<!-- wp:woocommerce/cart -->\n<div class=\"wp-block-woocommerce-cart alignwide is-loading\"><!-- wp:woocommerce/filled-cart-block -->\n<div class=\"wp-block-woocommerce-filled-cart-block\"><!-- wp:woocommerce/cart-items-block -->\n<div class=\"wp-block-woocommerce-cart-items-block\"><!-- wp:woocommerce/cart-line-items-block -->\n<div class=\"wp-block-woocommerce-cart-line-items-block\"></div>\n<!-- /wp:woocommerce/cart-line-items-block -->\n\n<!-- wp:woocommerce/cart-cross-sells-block -->\n<div class=\"wp-block-woocommerce-cart-cross-sells-block\"><!-- wp:heading {\"fontSize\":\"large\"} -->\n<h2 class=\"wp-block-heading has-large-font-size\">Вас может заинтересовать…</h2>\n<!-- /wp:heading -->\n\n<!-- wp:woocommerce/cart-cross-sells-products-block -->\n<div class=\"wp-block-woocommerce-cart-cross-sells-products-block\"></div>\n<!-- /wp:woocommerce/cart-cross-sells-products-block --></div>\n<!-- /wp:woocommerce/cart-cross-sells-block --></div>\n<!-- /wp:woocommerce/cart-items-block -->\n\n<!-- wp:woocommerce/cart-totals-block -->\n<div class=\"wp-block-woocommerce-cart-totals-block\"><!-- wp:woocommerce/cart-order-summary-block -->\n<div class=\"wp-block-woocommerce-cart-order-summary-block\"><!-- wp:woocommerce/cart-order-summary-heading-block -->\n<div class=\"wp-block-woocommerce-cart-order-summary-heading-block\"></div>\n<!-- /wp:woocommerce/cart-order-summary-heading-block -->\n\n<!-- wp:woocommerce/cart-order-summary-coupon-form-block -->\n<div class=\"wp-block-woocommerce-cart-order-summary-coupon-form-block\"></div>\n<!-- /wp:woocommerce/cart-order-summary-coupon-form-block -->\n\n<!-- wp:woocommerce/cart-order-summary-subtotal-block -->\n<div class=\"wp-block-woocommerce-cart-order-summary-subtotal-block\"></div>\n<!-- /wp:woocommerce/cart-order-summary-subtotal-block -->\n\n<!-- wp:woocommerce/cart-order-summary-fee-block -->\n<div class=\"wp-block-woocommerce-cart-order-summary-fee-block\"></div>\n<!-- /wp:woocommerce/cart-order-summary-fee-block -->\n\n<!-- wp:woocommerce/cart-order-summary-discount-block -->\n<div class=\"wp-block-woocommerce-cart-order-summary-discount-block\"></div>\n<!-- /wp:woocommerce/cart-order-summary-discount-block -->\n\n<!-- wp:woocommerce/cart-order-summary-shipping-block -->\n<div class=\"wp-block-woocommerce-cart-order-summary-shipping-block\"></div>\n<!-- /wp:woocommerce/cart-order-summary-shipping-block -->\n\n<!-- wp:woocommerce/cart-order-summary-taxes-block -->\n<div class=\"wp-block-woocommerce-cart-order-summary-taxes-block\"></div>\n<!-- /wp:woocommerce/cart-order-summary-taxes-block --></div>\n<!-- /wp:woocommerce/cart-order-summary-block -->\n\n<!-- wp:woocommerce/cart-express-payment-block -->\n<div class=\"wp-block-woocommerce-cart-express-payment-block\"></div>\n<!-- /wp:woocommerce/cart-express-payment-block -->\n\n<!-- wp:woocommerce/proceed-to-checkout-block -->\n<div class=\"wp-block-woocommerce-proceed-to-checkout-block\"></div>\n<!-- /wp:woocommerce/proceed-to-checkout-block -->\n\n<!-- wp:woocommerce/cart-accepted-payment-methods-block -->\n<div class=\"wp-block-woocommerce-cart-accepted-payment-methods-block\"></div>\n<!-- /wp:woocommerce/cart-accepted-payment-methods-block --></div>\n<!-- /wp:woocommerce/cart-totals-block --></div>\n<!-- /wp:woocommerce/filled-cart-block -->\n\n<!-- wp:woocommerce/empty-cart-block -->\n<div class=\"wp-block-woocommerce-empty-cart-block\"><!-- wp:heading {\"textAlign\":\"center\",\"className\":\"with-empty-cart-icon wc-block-cart__empty-cart__title\"} -->\n<h2 class=\"wp-block-heading has-text-align-center with-empty-cart-icon wc-block-cart__empty-cart__title\">Сейчас ваша корзина пуста!</h2>\n<!-- /wp:heading -->\n\n<!-- wp:separator {\"className\":\"is-style-dots\"} -->\n<hr class=\"wp-block-separator has-alpha-channel-opacity is-style-dots\"/>\n<!-- /wp:separator -->\n\n<!-- wp:heading {\"textAlign\":\"center\"} -->\n<h2 class=\"wp-block-heading has-text-align-center\">Новинка в магазине</h2>\n<!-- /wp:heading -->\n\n<!-- wp:woocommerce/product-new {\"columns\":4,\"rows\":1} /--></div>\n<!-- /wp:woocommerce/empty-cart-block --></div>\n<!-- /wp:woocommerce/cart -->','Корзина','','inherit','closed','closed','','8-revision-v1','','','2025-08-17 17:15:29','2025-08-17 14:15:29','',8,'http://192.168.171.132/?p=60',0,'revision','',0),
(61,1,'2025-08-17 17:18:15','2025-08-17 14:18:15','{\"version\": 3, \"isGlobalStylesUserThemeJSON\": true }','Custom Styles','','publish','closed','closed','','wp-global-styles-twentytwentyfive','','','2025-08-17 17:18:15','2025-08-17 14:18:15','',0,'http://192.168.171.132/2025/08/17/wp-global-styles-twentytwentyfive/',0,'wp_global_styles','',0),
(63,1,'2025-08-17 17:51:46','2025-08-17 14:51:46','[ti_wishlistsview]','Список желаний','','publish','closed','closed','','wishlist','','','2025-08-17 17:51:46','2025-08-17 14:51:46','',0,'http://192.168.171.132/?page_id=63',0,'page','',0),
(64,1,'2025-08-17 17:51:46','2025-08-17 14:51:46','[ti_wishlistsview]','Список желаний','','inherit','closed','closed','','63-revision-v1','','','2025-08-17 17:51:46','2025-08-17 14:51:46','',63,'http://192.168.171.132/?p=64',0,'revision','',0),
(65,1,'2025-08-18 01:01:19','2025-08-17 22:01:19','','AlpacaLogo','','inherit','open','closed','','alpacalogo','','','2025-08-18 01:01:19','2025-08-17 22:01:19','',0,'http://192.168.171.132/wp-content/uploads/2025/08/AlpacaLogo.png',0,'attachment','image/png',0),
(66,1,'2025-08-18 01:01:26','2025-08-17 22:01:26','','AlpacaIcon','','inherit','open','closed','','alpacaicon','','','2025-08-18 01:01:26','2025-08-17 22:01:26','',0,'http://192.168.171.132/wp-content/uploads/2025/08/AlpacaIcon.png',0,'attachment','image/png',0),
(68,1,'2025-08-18 01:18:20','2025-08-17 22:18:20','<!-- wp:template-part {\"slug\":\"header\",\"theme\":\"twentytwentyfive\"} /-->\n\n<!-- wp:group {\"tagName\":\"main\",\"layout\":{\"inherit\":true,\"type\":\"constrained\"}} -->\n<main class=\"wp-block-group\"><!-- wp:woocommerce/breadcrumbs /-->\n\n<!-- wp:query-title {\"type\":\"archive\",\"showPrefix\":false,\"align\":\"wide\"} /-->\n\n<!-- wp:woocommerce/store-notices /-->\n\n<!-- wp:group {\"className\":\"alignwide\",\"layout\":{\"type\":\"flex\",\"flexWrap\":\"nowrap\",\"justifyContent\":\"space-between\"}} -->\n<div class=\"wp-block-group alignwide\"><!-- wp:woocommerce/product-results-count /-->\n\n<!-- wp:woocommerce/catalog-sorting /--></div>\n<!-- /wp:group -->\n\n<!-- wp:woocommerce/product-collection {\"queryId\":96,\"query\":{\"woocommerceAttributes\":[],\"woocommerceStockStatus\":[\"instock\",\"outofstock\",\"onbackorder\"],\"taxQuery\":[],\"isProductCollectionBlock\":true,\"perPage\":10,\"pages\":0,\"offset\":0,\"postType\":\"product\",\"order\":\"asc\",\"orderBy\":\"title\",\"author\":\"\",\"search\":\"\",\"exclude\":[],\"sticky\":\"\",\"inherit\":true},\"tagName\":\"div\",\"displayLayout\":{\"type\":\"flex\",\"columns\":3,\"shrinkColumns\":true},\"dimensions\":{\"widthType\":\"fill\",\"fixedWidth\":\"\"},\"queryContextIncludes\":[\"collection\"],\"__privatePreviewState\":{\"isPreview\":false,\"previewMessage\":\"Фактические товары будут отличаться в зависимости от просматриваемой страницы.\"},\"align\":\"wide\"} -->\n<div class=\"wp-block-woocommerce-product-collection alignwide\"><!-- wp:woocommerce/product-template -->\n<!-- wp:woocommerce/product-image {\"showSaleBadge\":false,\"imageSizing\":\"thumbnail\",\"isDescendentOfQueryLoop\":true} -->\n<!-- wp:woocommerce/product-sale-badge {\"isDescendentOfQueryLoop\":true,\"align\":\"right\"} /-->\n<!-- /wp:woocommerce/product-image -->\n\n<!-- wp:post-title {\"textAlign\":\"center\",\"isLink\":true,\"style\":{\"typography\":{\"lineHeight\":\"1.4\"}},\"fontSize\":\"medium\",\"__woocommerceNamespace\":\"woocommerce/product-collection/product-title\"} /-->\n\n<!-- wp:woocommerce/product-price {\"isDescendentOfQueryLoop\":true,\"textAlign\":\"center\",\"fontSize\":\"small\",\"style\":{\"spacing\":{\"margin\":{\"bottom\":\"1rem\"}}}} /-->\n\n<!-- wp:woocommerce/product-button {\"textAlign\":\"center\",\"isDescendentOfQueryLoop\":true,\"fontSize\":\"small\",\"style\":{\"spacing\":{\"margin\":{\"bottom\":\"1rem\"}}}} /-->\n<!-- /wp:woocommerce/product-template -->\n\n<!-- wp:query-pagination {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\"}} -->\n<!-- wp:query-pagination-previous /-->\n\n<!-- wp:query-pagination-numbers /-->\n\n<!-- wp:query-pagination-next /-->\n<!-- /wp:query-pagination -->\n\n<!-- wp:woocommerce/product-collection-no-results -->\n<!-- wp:group {\"layout\":{\"type\":\"flex\",\"orientation\":\"vertical\",\"justifyContent\":\"center\",\"flexWrap\":\"wrap\"}} -->\n<div class=\"wp-block-group\"><!-- wp:paragraph {\"fontSize\":\"medium\"} -->\n<p class=\"has-medium-font-size\"><strong>Ничего не найдено</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Попробуйте <a class=\"wc-link-clear-any-filters\" href=\"#\">сброс всех фильтров</a> или перейдите в <a class=\"wc-link-stores-home\" href=\"#\">главную страницу магазина</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group -->\n<!-- /wp:woocommerce/product-collection-no-results --></div>\n<!-- /wp:woocommerce/product-collection --></main>\n<!-- /wp:group -->\n\n<!-- wp:template-part {\"slug\":\"footer\",\"theme\":\"twentytwentyfive\"} /-->','Каталог товаров','Отображает ваши товары.','publish','closed','closed','','archive-product','','','2025-08-18 01:18:20','2025-08-17 22:18:20','',0,'http://192.168.171.132/2025/08/18/archive-product/',0,'wp_template','',0),
(69,1,'2025-08-18 01:18:20','2025-08-17 22:18:20','<!-- wp:group {\"align\":\"full\",\"layout\":{\"type\":\"default\"}} -->\n<div class=\"wp-block-group alignfull\"><!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:group {\"align\":\"wide\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"var:preset|spacing|30\",\"bottom\":\"var:preset|spacing|30\"}}},\"layout\":{\"type\":\"flex\",\"flexWrap\":\"nowrap\",\"justifyContent\":\"space-between\"}} -->\n<div class=\"wp-block-group alignwide\" style=\"padding-top:var(--wp--preset--spacing--30);padding-bottom:var(--wp--preset--spacing--30)\"><!-- wp:site-logo {\"shouldSyncIcon\":true} /-->\n\n<!-- wp:site-title {\"level\":0} /-->\n\n<!-- wp:group {\"style\":{\"spacing\":{\"blockGap\":\"var:preset|spacing|10\"}},\"layout\":{\"type\":\"flex\",\"flexWrap\":\"nowrap\",\"justifyContent\":\"right\"}} -->\n<div class=\"wp-block-group\"><!-- wp:navigation {\"ref\":4,\"overlayBackgroundColor\":\"base\",\"overlayTextColor\":\"contrast\",\"metadata\":{\"ignoredHookedBlocks\":[\"woocommerce/customer-account\"]},\"layout\":{\"type\":\"flex\",\"justifyContent\":\"right\",\"flexWrap\":\"wrap\"}} /-->\n\n<!-- wp:woocommerce/customer-account {\"displayStyle\":\"icon_only\",\"iconStyle\":\"line\",\"iconClass\":\"wc-block-customer-account__account-icon\",\"style\":{\"typography\":{\"fontSize\":\"var(\\u002d\\u002dwp\\u002d\\u002dpreset\\u002d\\u002dfont-size\\u002d\\u002dmedium)\"}}} /-->\n\n<!-- wp:woocommerce/mini-cart {\"style\":{\"typography\":{\"fontSize\":\"var(\\u002d\\u002dwp\\u002d\\u002dpreset\\u002d\\u002dfont-size\\u002d\\u002dmedium)\"}}} /--></div>\n<!-- /wp:group --></div>\n<!-- /wp:group --></div>\n<!-- /wp:group --></div>\n<!-- /wp:group -->','Заголовок','','publish','closed','closed','','header','','','2025-08-18 01:18:20','2025-08-17 22:18:20','',0,'http://192.168.171.132/2025/08/18/header/',0,'wp_template_part','',0),
(70,1,'2025-08-18 01:18:20','2025-08-17 22:18:20','<!-- wp:group {\"align\":\"full\",\"layout\":{\"type\":\"default\"}} -->\n<div class=\"wp-block-group alignfull\"><!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:group {\"align\":\"wide\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"var:preset|spacing|30\",\"bottom\":\"var:preset|spacing|30\"}}},\"layout\":{\"type\":\"flex\",\"flexWrap\":\"nowrap\",\"justifyContent\":\"space-between\"}} -->\n<div class=\"wp-block-group alignwide\" style=\"padding-top:var(--wp--preset--spacing--30);padding-bottom:var(--wp--preset--spacing--30)\"><!-- wp:site-logo {\"shouldSyncIcon\":true} /-->\n\n<!-- wp:site-title {\"level\":0} /-->\n\n<!-- wp:group {\"style\":{\"spacing\":{\"blockGap\":\"var:preset|spacing|10\"}},\"layout\":{\"type\":\"flex\",\"flexWrap\":\"nowrap\",\"justifyContent\":\"right\"}} -->\n<div class=\"wp-block-group\"><!-- wp:navigation {\"ref\":4,\"overlayBackgroundColor\":\"base\",\"overlayTextColor\":\"contrast\",\"metadata\":{\"ignoredHookedBlocks\":[\"woocommerce/customer-account\"]},\"layout\":{\"type\":\"flex\",\"justifyContent\":\"right\",\"flexWrap\":\"wrap\"}} /-->\n\n<!-- wp:woocommerce/customer-account {\"displayStyle\":\"icon_only\",\"iconStyle\":\"line\",\"iconClass\":\"wc-block-customer-account__account-icon\",\"style\":{\"typography\":{\"fontSize\":\"var(\\u002d\\u002dwp\\u002d\\u002dpreset\\u002d\\u002dfont-size\\u002d\\u002dmedium)\"}}} /-->\n\n<!-- wp:woocommerce/mini-cart {\"style\":{\"typography\":{\"fontSize\":\"var(\\u002d\\u002dwp\\u002d\\u002dpreset\\u002d\\u002dfont-size\\u002d\\u002dmedium)\"}}} /--></div>\n<!-- /wp:group --></div>\n<!-- /wp:group --></div>\n<!-- /wp:group --></div>\n<!-- /wp:group -->','Заголовок','','inherit','closed','closed','','69-revision-v1','','','2025-08-18 01:18:20','2025-08-17 22:18:20','',69,'http://192.168.171.132/?p=70',0,'revision','',0),
(72,1,'2025-08-19 23:48:06','2025-08-19 20:48:06','<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Кто мы</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Наш адрес сайта: http://192.168.171.132.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Комментарии</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Медиафайлы</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Куки</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Встраиваемое содержимое других вебсайтов</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">С кем мы делимся вашими данными</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы запросите сброс пароля, ваш IP будет указан в email-сообщении о сбросе.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Как долго мы храним ваши данные</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Какие у вас права на ваши данные</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Куда отправляются ваши данные</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p>\n<!-- /wp:paragraph -->\n','Политика конфиденциальности','','inherit','closed','closed','','3-revision-v1','','','2025-08-19 23:48:06','2025-08-19 20:48:06','',3,'http://192.168.171.132/?p=72',0,'revision','',0),
(74,1,'2025-08-20 00:33:36','2025-08-19 21:33:36','','plushToy','','inherit','open','closed','','plushtoy','','','2025-08-20 00:33:36','2025-08-19 21:33:36','',0,'http://192.168.171.132/wp-content/uploads/2025/08/plushToy.png',0,'attachment','image/png',0),
(75,1,'2025-08-20 00:33:58','2025-08-19 21:33:58','','sweaterG','','inherit','open','closed','','sweaterg','','','2025-08-20 00:33:58','2025-08-19 21:33:58','',0,'http://192.168.171.132/wp-content/uploads/2025/08/sweaterG.png',0,'attachment','image/png',0),
(76,1,'2025-08-20 00:34:50','2025-08-19 21:34:50','','sweaterB','','inherit','open','closed','','sweaterb','','','2025-08-20 00:34:50','2025-08-19 21:34:50','',0,'http://192.168.171.132/wp-content/uploads/2025/08/sweaterB.png',0,'attachment','image/png',0),
(77,1,'2025-08-20 00:35:08','2025-08-19 21:35:08','','t-shirtW','','inherit','open','closed','','t-shirtw','','','2025-08-20 00:37:37','2025-08-19 21:37:37','',82,'http://192.168.171.132/wp-content/uploads/2025/08/t-shirtW.png',0,'attachment','image/png',0),
(78,1,'2025-08-20 00:35:31','2025-08-19 21:35:31','','t-shirtG','','inherit','open','closed','','t-shirtg','','','2025-08-20 00:35:31','2025-08-19 21:35:31','',0,'http://192.168.171.132/wp-content/uploads/2025/08/t-shirtG.png',0,'attachment','image/png',0),
(79,1,'2025-08-20 00:35:50','2025-08-19 21:35:50','','socks','','inherit','open','closed','','socks','','','2025-08-20 00:35:50','2025-08-19 21:35:50','',0,'http://192.168.171.132/wp-content/uploads/2025/08/socks.png',0,'attachment','image/png',0),
(80,1,'2025-08-20 00:35:59','2025-08-19 21:35:59','','cup','','inherit','open','closed','','cup','','','2025-08-20 00:35:59','2025-08-19 21:35:59','',0,'http://192.168.171.132/wp-content/uploads/2025/08/cup.png',0,'attachment','image/png',0),
(81,1,'2025-08-20 00:36:07','2025-08-19 21:36:07','','cap','','inherit','open','closed','','cap','','','2025-08-20 00:36:07','2025-08-19 21:36:07','',0,'http://192.168.171.132/wp-content/uploads/2025/08/cap.png',0,'attachment','image/png',0),
(82,1,'2025-08-20 00:41:50','2025-08-19 21:41:50','Футболка белая с принтом альпаки\r\n\r\n&nbsp;','Футболка белая','','publish','open','closed','','%d1%84%d1%83%d1%82%d0%b1%d0%be%d0%bb%d0%ba%d0%b0-%d0%b1%d0%b5%d0%bb%d0%b0%d1%8f','','','2025-08-20 00:41:50','2025-08-19 21:41:50','',0,'http://192.168.171.132/?post_type=product&#038;p=82',0,'product','',0),
(83,1,'2025-08-20 00:43:50','2025-08-19 21:43:50','Футболка зеленая с принтом альпаки','Футболка зеленая','','publish','open','closed','','%d1%84%d1%83%d1%82%d0%b1%d0%be%d0%bb%d0%ba%d0%b0-%d0%b7%d0%b5%d0%bb%d0%b5%d0%bd%d0%b0%d1%8f','','','2025-08-20 00:43:50','2025-08-19 21:43:50','',0,'http://192.168.171.132/?post_type=product&#038;p=83',0,'product','',0),
(84,1,'2025-08-20 00:44:41','2025-08-19 21:44:41','Свитер синий с принтом альпаки','Свитер синий','','publish','open','closed','','%d1%81%d0%b2%d0%b8%d1%82%d0%b5%d1%80-%d1%81%d0%b8%d0%bd%d0%b8%d0%b9','','','2025-08-20 00:44:41','2025-08-19 21:44:41','',0,'http://192.168.171.132/?post_type=product&#038;p=84',0,'product','',0),
(85,1,'2025-08-20 00:45:18','2025-08-19 21:45:18','Свитер серый с изображением альпаки','Свитер серый','','publish','open','closed','','%d1%81%d0%b2%d0%b8%d1%82%d0%b5%d1%80-%d1%81%d0%b5%d1%80%d1%8b%d0%b9','','','2025-08-20 00:45:18','2025-08-19 21:45:18','',0,'http://192.168.171.132/?post_type=product&#038;p=85',0,'product','',0),
(86,1,'2025-08-20 00:46:09','2025-08-19 21:46:09','Кружка белая с изображением альпаки','Кружка','','publish','open','closed','','%d0%ba%d1%80%d1%83%d0%b6%d0%ba%d0%b0','','','2025-08-20 00:46:09','2025-08-19 21:46:09','',0,'http://192.168.171.132/?post_type=product&#038;p=86',0,'product','',0),
(87,1,'2025-08-20 00:46:45','2025-08-19 21:46:45','Кепка с изображением альпаки','Кепка','','publish','open','closed','','%d0%ba%d0%b5%d0%bf%d0%ba%d0%b0','','','2025-08-20 00:46:45','2025-08-19 21:46:45','',0,'http://192.168.171.132/?post_type=product&#038;p=87',0,'product','',0),
(88,1,'2025-08-20 00:47:34','2025-08-19 21:47:34','Плюшевая игрушка','Плюшевая альпака','','publish','open','closed','','%d0%bf%d0%bb%d1%8e%d1%88%d0%b5%d0%b2%d0%b0%d1%8f-%d0%b0%d0%bb%d1%8c%d0%bf%d0%b0%d0%ba%d0%b0','','','2025-08-20 00:48:19','2025-08-19 21:48:19','',0,'http://192.168.171.132/?post_type=product&#038;p=88',0,'product','',0),
(89,1,'2025-08-20 00:50:01','2025-08-19 21:50:01','Носки из шерсти альпаки','Носки','','publish','open','closed','','%d0%bd%d0%be%d1%81%d0%ba%d0%b8','','','2025-08-20 00:50:01','2025-08-19 21:50:01','',0,'http://192.168.171.132/?post_type=product&#038;p=89',0,'product','',0),
(93,1,'2025-08-20 01:01:49','2025-08-19 22:01:49','<!-- wp:group {\"align\":\"full\",\"className\":\"home-hero\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"80px\",\"bottom\":\"80px\",\"left\":\"16px\",\"right\":\"16px\"}}},\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group alignfull home-hero\" style=\"padding-top:80px;padding-right:16px;padding-bottom:80px;padding-left:16px\"><!-- wp:group {\"layout\":{\"type\":\"constrained\",\"contentSize\":\"920px\"}} -->\n<div class=\"wp-block-group\"><!-- wp:site-logo {\"width\":96,\"shouldSyncIcon\":true} /-->\n\n<!-- wp:heading {\"textAlign\":\"center\",\"level\":1,\"fontSize\":\"xx-large\"} -->\n<h1 class=\"wp-block-heading has-text-align-center has-xx-large-font-size\">Добро пожаловать в AlpacaShop</h1>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"fontSize\":\"large\"} -->\n<p class=\"has-text-align-center has-large-font-size\">Мягкие вещи из альпаки: свитеры, шарфы, пледы. Быстрая доставка и тёплая забота.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\",\"flexWrap\":\"wrap\"}} -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"width\":100,\"style\":{\"spacing\":{\"padding\":{\"top\":\"12px\",\"bottom\":\"12px\",\"left\":\"18px\",\"right\":\"18px\"}}}} -->\n<div class=\"wp-block-button has-custom-width wp-block-button__width-100\"><a class=\"wp-block-button__link wp-element-button\" href=\"/shop/\" style=\"padding-top:12px;padding-right:18px;padding-bottom:12px;padding-left:18px\">Перейти в магазин</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button {\"width\":100,\"className\":\"is-style-outline\"} -->\n<div class=\"wp-block-button has-custom-width wp-block-button__width-100 is-style-outline\"><a class=\"wp-block-button__link wp-element-button\" href=\"/my-account/\">Войти / Регистрация</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:group --></div>\n<!-- /wp:group -->\n\n<!-- wp:group {\"align\":\"wide\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"24px\",\"bottom\":\"24px\"}}},\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group alignwide\" style=\"padding-top:24px;padding-bottom:24px\"><!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Новинки и хиты</h2>\n<!-- /wp:heading -->\n\n<!-- wp:shortcode -->\n[products limit=\"8\" columns=\"4\" orderby=\"date\"]\n<!-- /wp:shortcode --></div>\n<!-- /wp:group -->','Главная','','publish','closed','closed','','%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f','','','2025-08-20 01:01:49','2025-08-19 22:01:49','',0,'http://192.168.171.132/?page_id=93',0,'page','',0),
(94,1,'2025-08-20 01:01:47','2025-08-19 22:01:47','<!-- wp:group {\"align\":\"full\",\"className\":\"home-hero\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"80px\",\"bottom\":\"80px\",\"left\":\"16px\",\"right\":\"16px\"}}},\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group alignfull home-hero\" style=\"padding-top:80px;padding-right:16px;padding-bottom:80px;padding-left:16px\"><!-- wp:group {\"layout\":{\"type\":\"constrained\",\"contentSize\":\"920px\"}} -->\n<div class=\"wp-block-group\"><!-- wp:site-logo {\"width\":96,\"shouldSyncIcon\":true} /-->\n\n<!-- wp:heading {\"textAlign\":\"center\",\"level\":1,\"fontSize\":\"xx-large\"} -->\n<h1 class=\"wp-block-heading has-text-align-center has-xx-large-font-size\">Добро пожаловать в AlpacaShop</h1>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"fontSize\":\"large\"} -->\n<p class=\"has-text-align-center has-large-font-size\">Мягкие вещи из альпаки: свитеры, шарфы, пледы. Быстрая доставка и тёплая забота.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\",\"flexWrap\":\"wrap\"}} -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"width\":100,\"style\":{\"spacing\":{\"padding\":{\"top\":\"12px\",\"bottom\":\"12px\",\"left\":\"18px\",\"right\":\"18px\"}}}} -->\n<div class=\"wp-block-button has-custom-width wp-block-button__width-100\"><a class=\"wp-block-button__link wp-element-button\" href=\"/shop/\" style=\"padding-top:12px;padding-right:18px;padding-bottom:12px;padding-left:18px\">Перейти в магазин</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button {\"width\":100,\"className\":\"is-style-outline\"} -->\n<div class=\"wp-block-button has-custom-width wp-block-button__width-100 is-style-outline\"><a class=\"wp-block-button__link wp-element-button\" href=\"/my-account/\">Войти / Регистрация</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:group --></div>\n<!-- /wp:group -->\n\n<!-- wp:group {\"align\":\"wide\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"24px\",\"bottom\":\"24px\"}}},\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group alignwide\" style=\"padding-top:24px;padding-bottom:24px\"><!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Новинки и хиты</h2>\n<!-- /wp:heading -->\n\n<!-- wp:shortcode -->\n[products limit=\"8\" columns=\"4\" orderby=\"date\"]\n<!-- /wp:shortcode --></div>\n<!-- /wp:group -->','Главная','','inherit','closed','closed','','93-revision-v1','','','2025-08-20 01:01:47','2025-08-19 22:01:47','',93,'http://192.168.171.132/?p=94',0,'revision','',0),
(97,1,'2025-08-22 19:20:29','2025-08-22 16:20:29','','%d0%b2%d0%be%d0%b7%d0%b2%d1%80%d0%b0%d1%82-%d1%82%d0%be%d0%b2%d0%b0%d1%80%d0%b0','','publish','closed','closed','','%d0%b2%d0%be%d0%b7%d0%b2%d1%80%d0%b0%d1%82-%d1%82%d0%be%d0%b2%d0%b0%d1%80%d0%b0','','','2025-08-22 19:47:36','2025-08-22 16:47:36','',0,'http://192.168.171.132/?post_type=forminator_forms&#038;p=97',0,'forminator_forms','',0),
(98,1,'2025-08-22 19:26:37','2025-08-22 16:26:37','<!-- wp:shortcode -->\n[woocommerce_my_account]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Мой аккаунт','','inherit','closed','closed','','10-autosave-v1','','','2025-08-22 19:26:37','2025-08-22 16:26:37','',10,'http://192.168.171.132/?p=98',0,'revision','',0),
(99,1,'2025-08-27 00:11:17','2025-08-26 21:11:17','<!-- wp:list {\"ordered\":true} -->\n<ol class=\"wp-block-list\"><!-- wp:list-item -->\n<li>Законность. Обработка по 152-ФЗ. Собираем минимум: ФИО, контакты, адреса доставки/оплаты, сведения о заказах, IP и cookie — только для работы магазина.</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Цели. Оформление/оплата/доставка, учётная запись и поддержка, выполнение требований закона; маркетинг — только при отдельном согласии.</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Передача. Платёжным сервисам, доставке, хостингу/техподдержке и аналитике — строго по необходимости и при обеспечении конфиденциальности.</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Cookie. Технические — обязательны; аналитические/маркетинговые — по согласию. Управлять можно в настройках браузера.</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Хранение и защита. Храним до достижения целей/сроков по закону; ограничение доступа, резервное копирование и обновления.</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Права. Доступ/копия, исправление, удаление, отзыв согласия, возражение; жалоба в уполномоченный орган.</li>\n<!-- /wp:list-item --></ol>\n<!-- /wp:list -->','Политика конфиденциальности','','inherit','closed','closed','','3-revision-v1','','','2025-08-27 00:11:17','2025-08-26 21:11:17','',3,'http://192.168.171.132/?p=99',0,'revision','',0),
(100,1,'2025-08-27 00:13:54','2025-08-26 21:13:54','<!-- wp:navigation-link {\"label\":\"Главная\",\"type\":\"page\",\"id\":93,\"url\":\"http://192.168.171.132/\",\"kind\":\"post-type\"} /-->\n\n<!-- wp:navigation-link {\"label\":\"Корзина\",\"type\":\"page\",\"id\":8,\"url\":\"http://192.168.171.132/cart/\",\"kind\":\"post-type\"} /-->\n\n<!-- wp:navigation-link {\"label\":\"Магазин\",\"type\":\"page\",\"id\":7,\"url\":\"http://192.168.171.132/shop/\",\"kind\":\"post-type\"} /-->\n\n<!-- wp:navigation-link {\"label\":\"Мой аккаунт\",\"type\":\"page\",\"id\":10,\"url\":\"http://192.168.171.132/my-account/\",\"kind\":\"post-type\"} /-->\n\n<!-- wp:navigation-link {\"label\":\"Оформление заказа\",\"type\":\"page\",\"id\":9,\"url\":\"http://192.168.171.132/checkout/\",\"kind\":\"post-type\"} /-->\n\n<!-- wp:navigation-link {\"label\":\"Пол. конф\",\"type\":\"page\",\"id\":3,\"url\":\"http://192.168.171.132/privacy-policy/\",\"kind\":\"post-type\"} /-->\n\n<!-- wp:navigation-link {\"label\":\"Список желаний\",\"type\":\"page\",\"id\":63,\"url\":\"http://192.168.171.132/wishlist/\",\"kind\":\"post-type\"} /-->','Навигация','','inherit','closed','closed','','4-revision-v1','','','2025-08-27 00:13:54','2025-08-26 21:13:54','',4,'http://192.168.171.132/?p=100',0,'revision','',0),
(101,1,'2025-08-27 00:14:13','2025-08-26 21:14:13','<!-- wp:navigation-link {\"label\":\"Главная\",\"type\":\"page\",\"id\":93,\"url\":\"http://192.168.171.132/\",\"kind\":\"post-type\"} /-->\n\n<!-- wp:navigation-link {\"label\":\"Корзина\",\"type\":\"page\",\"id\":8,\"url\":\"http://192.168.171.132/cart/\",\"kind\":\"post-type\"} /-->\n\n<!-- wp:navigation-link {\"label\":\"Магазин\",\"type\":\"page\",\"id\":7,\"url\":\"http://192.168.171.132/shop/\",\"kind\":\"post-type\"} /-->\n\n<!-- wp:navigation-link {\"label\":\"Мой аккаунт\",\"type\":\"page\",\"id\":10,\"url\":\"http://192.168.171.132/my-account/\",\"kind\":\"post-type\"} /-->\n\n<!-- wp:navigation-link {\"label\":\"Оформление заказа\",\"type\":\"page\",\"id\":9,\"url\":\"http://192.168.171.132/checkout/\",\"kind\":\"post-type\"} /-->\n\n<!-- wp:navigation-link {\"label\":\"Пол. конф.\",\"type\":\"page\",\"id\":3,\"url\":\"http://192.168.171.132/privacy-policy/\",\"kind\":\"post-type\"} /-->\n\n<!-- wp:navigation-link {\"label\":\"Список желаний\",\"type\":\"page\",\"id\":63,\"url\":\"http://192.168.171.132/wishlist/\",\"kind\":\"post-type\"} /-->','Навигация','','inherit','closed','closed','','4-revision-v1','','','2025-08-27 00:14:13','2025-08-26 21:14:13','',4,'http://192.168.171.132/?p=101',0,'revision','',0),
(106,1,'2025-09-15 17:06:26','0000-00-00 00:00:00','','Черновик','','auto-draft','open','open','','','','','2025-09-15 17:06:26','0000-00-00 00:00:00','',0,'http://192.168.20.81/?p=106',0,'post','',0),
(107,1,'2025-09-15 19:14:33','2025-09-15 16:14:33','<!-- wp:navigation-link {\"label\":\"Главная\",\"type\":\"page\",\"id\":93,\"url\":\"http://192.168.20.81/\",\"kind\":\"post-type\"} /-->\n\n<!-- wp:navigation-link {\"label\":\"Корзина\",\"type\":\"page\",\"id\":8,\"url\":\"http://192.168.20.81/cart/\",\"kind\":\"post-type\"} /-->\n\n<!-- wp:navigation-link {\"label\":\"Магазин\",\"type\":\"page\",\"id\":7,\"url\":\"http://192.168.20.81/shop/\",\"kind\":\"post-type\"} /-->\n\n<!-- wp:navigation-link {\"label\":\"Мой аккаунт\",\"type\":\"page\",\"id\":10,\"url\":\"http://192.168.20.81/my-account/\",\"kind\":\"post-type\"} /-->\n\n<!-- wp:navigation-link {\"label\":\"Оформление заказа\",\"type\":\"page\",\"id\":9,\"url\":\"http://192.168.20.81/checkout/\",\"kind\":\"post-type\"} /-->\n\n<!-- wp:navigation-link {\"label\":\"Пол. конф.\",\"type\":\"page\",\"id\":3,\"url\":\"http://192.168.20.81/privacy-policy/\",\"kind\":\"post-type\"} /-->\n\n<!-- wp:navigation-link {\"label\":\"Список желаний\",\"type\":\"page\",\"id\":63,\"url\":\"http://192.168.20.81/wishlist/\",\"kind\":\"post-type\"} /-->','Навигация','','inherit','closed','closed','','4-revision-v1','','','2025-09-15 19:14:33','2025-09-15 16:14:33','',4,'http://192.168.20.81/?p=107',0,'revision','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES
(1,1,0),
(61,16,0),
(68,17,0),
(69,16,0),
(69,18,0),
(82,2,0),
(82,19,0),
(83,2,0),
(83,19,0),
(84,2,0),
(84,20,0),
(85,2,0),
(85,20,0),
(86,2,0),
(86,21,0),
(87,2,0),
(87,22,0),
(88,2,0),
(88,23,0),
(89,2,0),
(89,24,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES
(1,1,'category','',0,1),
(2,2,'product_type','',0,8),
(3,3,'product_type','',0,0),
(4,4,'product_type','',0,0),
(5,5,'product_type','',0,0),
(6,6,'product_visibility','',0,0),
(7,7,'product_visibility','',0,0),
(8,8,'product_visibility','',0,0),
(9,9,'product_visibility','',0,0),
(10,10,'product_visibility','',0,0),
(11,11,'product_visibility','',0,0),
(12,12,'product_visibility','',0,0),
(13,13,'product_visibility','',0,0),
(14,14,'product_visibility','',0,0),
(15,15,'product_cat','',0,0),
(16,16,'wp_theme','',0,2),
(17,17,'wp_theme','',0,1),
(18,18,'wp_template_part_area','',0,1),
(19,19,'product_cat','',0,2),
(20,20,'product_cat','',0,2),
(21,21,'product_cat','',0,1),
(22,22,'product_cat','',0,1),
(23,23,'product_cat','',0,1),
(24,24,'product_cat','',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
INSERT INTO `wp_termmeta` VALUES
(1,19,'order','0'),
(2,19,'product_count_product_cat','2'),
(3,20,'order','0'),
(4,20,'product_count_product_cat','2'),
(5,21,'order','0'),
(6,21,'product_count_product_cat','1'),
(7,22,'order','0'),
(8,22,'product_count_product_cat','1'),
(9,23,'order','0'),
(10,23,'product_count_product_cat','1'),
(11,24,'order','0'),
(12,24,'product_count_product_cat','1');
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES
(1,'Без рубрики','%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8',0),
(2,'simple','simple',0),
(3,'grouped','grouped',0),
(4,'variable','variable',0),
(5,'external','external',0),
(6,'exclude-from-search','exclude-from-search',0),
(7,'exclude-from-catalog','exclude-from-catalog',0),
(8,'featured','featured',0),
(9,'outofstock','outofstock',0),
(10,'rated-1','rated-1',0),
(11,'rated-2','rated-2',0),
(12,'rated-3','rated-3',0),
(13,'rated-4','rated-4',0),
(14,'rated-5','rated-5',0),
(15,'Misc','misc',0),
(16,'twentytwentyfive','twentytwentyfive',0),
(17,'woocommerce/woocommerce','woocommerce-woocommerce',0),
(18,'header','header',0),
(19,'Футболки','%d1%84%d1%83%d1%82%d0%b1%d0%be%d0%bb%d0%ba%d0%b8',0),
(20,'Свитеры','%d1%81%d0%b2%d0%b8%d1%82%d0%b5%d1%80%d1%8b',0),
(21,'Кружка','%d0%ba%d1%80%d1%83%d0%b6%d0%ba%d0%b0',0),
(22,'Кепка','%d0%ba%d0%b5%d0%bf%d0%ba%d0%b0',0),
(23,'Плюшевая игрушка','%d0%bf%d0%bb%d1%8e%d1%88%d0%b5%d0%b2%d0%b0%d1%8f-%d0%b8%d0%b3%d1%80%d1%83%d1%88%d0%ba%d0%b0',0),
(24,'Носки','%d0%bd%d0%be%d1%81%d0%ba%d0%b8',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_tinvwl_analytics`
--

DROP TABLE IF EXISTS `wp_tinvwl_analytics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_tinvwl_analytics` (
  `ID` varchar(32) NOT NULL,
  `wishlist_id` bigint(20) NOT NULL DEFAULT 0,
  `product_id` bigint(20) NOT NULL DEFAULT 0,
  `variation_id` bigint(20) NOT NULL DEFAULT 0,
  `visite_author` bigint(20) NOT NULL DEFAULT 0,
  `visite` bigint(20) NOT NULL DEFAULT 0,
  `click_author` bigint(20) NOT NULL DEFAULT 0,
  `click` bigint(20) NOT NULL DEFAULT 0,
  `cart` bigint(20) NOT NULL DEFAULT 0,
  `sell_of_wishlist` bigint(20) NOT NULL DEFAULT 0,
  `sell_as_gift` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `unique_product` (`wishlist_id`,`product_id`,`variation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_tinvwl_analytics`
--

LOCK TABLES `wp_tinvwl_analytics` WRITE;
/*!40000 ALTER TABLE `wp_tinvwl_analytics` DISABLE KEYS */;
INSERT INTO `wp_tinvwl_analytics` VALUES
('088011a04b90c20d2b6a3dcb70aac043',14,82,0,0,0,0,0,1,0,0),
('16dbae04d788716b3f42cf3d59849fbe',15,87,0,1,0,0,0,1,0,0),
('4f255e2b7ca1897ab88891048efe369d',7,87,0,0,0,0,0,1,0,0),
('640a447eb02aa83b69dd23f0540f6ef5',8,86,0,0,0,0,0,1,0,0),
('727ca292ad248b157678a5d5318597fb',17,89,0,1,0,0,0,1,0,0),
('7b4543d7e175de087dd0a9698e2988f3',12,88,0,0,0,0,0,1,0,0),
('90e3b03b6bc19494ef40014443dfadbe',1,89,0,0,0,0,0,1,0,0),
('9c4723057169a66b1b3aeb9751009a6e',1,87,0,5,0,0,0,1,0,0),
('a6fa4a31b6caf8d13fe98380df311347',13,83,0,0,0,0,0,1,0,0),
('abc5d1aa0bfdf4ab89f036abc2eabb71',9,84,0,0,0,0,0,1,0,0),
('b18d24ba79953157b8be51d25efaf290',6,82,0,0,0,0,0,1,0,0),
('ba5d56917ff86dd72d3a2ce1ad9cdb3d',10,84,0,0,0,0,0,1,0,0),
('cd427c913ae7a8c801fe4d0d98c42d28',16,86,0,1,0,0,0,1,0,0),
('d0b1556011ca3c2b70bc8aab9e05e8d1',11,86,0,1,0,0,0,1,0,0),
('d203aa45fcbdb0f5b84ddd12aee0ee76',5,83,0,0,0,0,0,1,0,0);
/*!40000 ALTER TABLE `wp_tinvwl_analytics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_tinvwl_items`
--

DROP TABLE IF EXISTS `wp_tinvwl_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_tinvwl_items` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `wishlist_id` bigint(20) NOT NULL DEFAULT 0,
  `product_id` bigint(20) NOT NULL DEFAULT 0,
  `variation_id` bigint(20) NOT NULL DEFAULT 0,
  `formdata` text DEFAULT NULL,
  `author` bigint(20) NOT NULL DEFAULT 0,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `quantity` bigint(20) NOT NULL DEFAULT 1,
  `price` varchar(255) NOT NULL DEFAULT '0',
  `in_stock` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_tinvwl_items`
--

LOCK TABLES `wp_tinvwl_items` WRITE;
/*!40000 ALTER TABLE `wp_tinvwl_items` DISABLE KEYS */;
INSERT INTO `wp_tinvwl_items` VALUES
(2,1,87,0,'',1,'2025-08-27 16:43:18',1,'1999',1),
(3,5,83,0,'{\"tinvwl-hidden-fields\":\"[]\"}',5,'2025-09-15 18:21:08',1,'1999',1),
(4,6,82,0,'{\"tinvwl-hidden-fields\":\"[]\"}',6,'2025-09-15 18:21:52',1,'1999',1),
(5,7,87,0,'{\"tinvwl-hidden-fields\":\"[]\"}',7,'2025-09-15 18:24:30',1,'1999',1),
(6,8,86,0,'{\"tinvwl-hidden-fields\":\"[]\"}',8,'2025-09-15 18:26:03',1,'2499',1),
(7,9,84,0,'{\"tinvwl-hidden-fields\":\"[]\"}',9,'2025-09-15 18:26:48',1,'4999',1),
(8,10,84,0,'{\"tinvwl-hidden-fields\":\"[]\"}',10,'2025-09-15 18:50:59',1,'4999',1),
(10,11,86,0,'',11,'2025-09-15 18:54:33',1,'2499',1),
(11,12,88,0,'{\"tinvwl-hidden-fields\":\"[]\"}',12,'2025-09-15 18:56:38',1,'3999',1),
(12,13,83,0,'{\"tinvwl-hidden-fields\":\"[]\"}',13,'2025-09-15 18:57:16',1,'1999',1),
(13,14,82,0,'{\"tinvwl-hidden-fields\":\"[]\"}',14,'2025-09-15 18:57:53',1,'1999',1),
(15,1,89,0,'',1,'2025-09-21 01:34:02',1,'1499',1);
/*!40000 ALTER TABLE `wp_tinvwl_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_tinvwl_lists`
--

DROP TABLE IF EXISTS `wp_tinvwl_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_tinvwl_lists` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `author` bigint(20) NOT NULL DEFAULT 0,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` text DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'public',
  `type` varchar(20) NOT NULL DEFAULT 'list',
  `share_key` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_tinvwl_lists`
--

LOCK TABLES `wp_tinvwl_lists` WRITE;
/*!40000 ALTER TABLE `wp_tinvwl_lists` DISABLE KEYS */;
INSERT INTO `wp_tinvwl_lists` VALUES
(1,1,'2025-08-17 17:51:32','','share','default','8c6470'),
(5,5,'2025-08-27 01:57:18','','share','default','4a758d'),
(6,6,'2025-08-27 01:59:22','','share','default','b0013a'),
(7,7,'2025-08-27 02:00:53','','share','default','48166f'),
(8,8,'2025-08-27 02:02:15','','share','default','316039'),
(9,9,'2025-08-27 02:03:34','','share','default','899a11'),
(10,10,'2025-08-27 02:05:18','','share','default','e044b5'),
(11,11,'2025-08-27 02:06:12','','share','default','5b8bac'),
(12,12,'2025-08-27 02:07:04','','share','default','454ca4'),
(13,13,'2025-08-27 02:07:58','','share','default','047a55'),
(14,14,'2025-08-27 02:08:49','','share','default','1cc246'),
(15,0,'2025-08-27 16:31:54','','share','default','82b52c'),
(16,0,'2025-09-15 18:53:48','','share','default','2ad932'),
(17,0,'2025-09-21 01:26:49','','share','default','519912');
/*!40000 ALTER TABLE `wp_tinvwl_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=495 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES
(1,1,'nickname','admin'),
(2,1,'first_name',''),
(3,1,'last_name',''),
(4,1,'description',''),
(5,1,'rich_editing','true'),
(6,1,'syntax_highlighting','true'),
(7,1,'comment_shortcuts','false'),
(8,1,'admin_color','fresh'),
(9,1,'use_ssl','0'),
(10,1,'show_admin_bar_front','true'),
(11,1,'locale',''),
(12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),
(13,1,'wp_user_level','10'),
(14,1,'dismissed_wp_pointers','plugin_editor_notice'),
(15,1,'show_welcome_panel','1'),
(17,1,'wp_dashboard_quick_press_last_post_id','106'),
(18,1,'community-events-location','a:1:{s:2:\"ip\";s:12:\"192.168.20.0\";}'),
(19,1,'_woocommerce_tracks_anon_id','woo:YPCHws+X2cp5mlsz+WO9REJw'),
(20,1,'last_update','1757952864'),
(21,1,'woocommerce_admin_task_list_tracked_started_tasks','{\"customize-store\":1,\"marketing\":1}'),
(22,1,'wc_last_active','1758326400'),
(23,1,'meta-box-order_product','a:3:{s:4:\"side\";s:84:\"submitdiv,postimagediv,woocommerce-product-images,product_catdiv,tagsdiv-product_tag\";s:6:\"normal\";s:55:\"woocommerce-product-data,postcustom,slugdiv,postexcerpt\";s:8:\"advanced\";s:0:\"\";}'),
(24,1,'wp_persisted_preferences','a:4:{s:4:\"core\";a:2:{s:26:\"isComplementaryAreaVisible\";b:0;s:24:\"enableChoosePatternModal\";b:1;}s:14:\"core/edit-post\";a:1:{s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2025-09-15T16:14:27.334Z\";s:14:\"core/edit-site\";a:4:{s:12:\"welcomeGuide\";b:0;s:18:\"welcomeGuideStyles\";b:0;s:16:\"welcomeGuidePage\";b:0;s:20:\"welcomeGuideTemplate\";b:0;}}'),
(25,1,'wp_user-settings','libraryContent=browse&mfold=o'),
(26,1,'wp_user-settings-time','1756242332'),
(108,5,'nickname','ivan.petrov'),
(109,5,'first_name','Иван'),
(110,5,'last_name','Петров'),
(111,5,'description',''),
(112,5,'rich_editing','true'),
(113,5,'syntax_highlighting','true'),
(114,5,'comment_shortcuts','false'),
(115,5,'admin_color','fresh'),
(116,5,'use_ssl','0'),
(117,5,'show_admin_bar_front','true'),
(118,5,'locale',''),
(119,5,'wp_capabilities','a:1:{s:8:\"customer\";b:1;}'),
(120,5,'wp_user_level','0'),
(121,5,'_wc_order_attribution_source_type','typein'),
(122,5,'_wc_order_attribution_utm_source','(direct)'),
(123,5,'_wc_order_attribution_session_entry','http://192.168.171.132/'),
(124,5,'_wc_order_attribution_session_start_time','2025-08-26 21:11:48'),
(125,5,'_wc_order_attribution_session_pages','2'),
(126,5,'_wc_order_attribution_session_count','1'),
(127,5,'_wc_order_attribution_user_agent','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0'),
(128,5,'_wc_order_attribution_device_type','Desktop'),
(129,5,'last_update','1756249119'),
(131,5,'wc_last_active','1757894400'),
(132,5,'billing_first_name','Иван'),
(133,5,'billing_last_name','Петров'),
(134,5,'shipping_first_name','Иван'),
(135,5,'shipping_last_name','Петров'),
(136,5,'shipping_address_1','ул. Тверская, д. 12, кв. 45'),
(137,5,'shipping_city','Москва'),
(138,5,'shipping_state','Москва'),
(139,5,'shipping_postcode','125009'),
(140,5,'shipping_country','RU'),
(141,6,'nickname','anna.smirnova'),
(142,6,'first_name','Анна'),
(143,6,'last_name','Смирнова'),
(144,6,'description',''),
(145,6,'rich_editing','true'),
(146,6,'syntax_highlighting','true'),
(147,6,'comment_shortcuts','false'),
(148,6,'admin_color','fresh'),
(149,6,'use_ssl','0'),
(150,6,'show_admin_bar_front','true'),
(151,6,'locale',''),
(152,6,'wp_capabilities','a:1:{s:8:\"customer\";b:1;}'),
(153,6,'wp_user_level','0'),
(154,6,'_wc_order_attribution_source_type','typein'),
(155,6,'_wc_order_attribution_utm_source','(direct)'),
(156,6,'_wc_order_attribution_session_entry','http://192.168.171.132/'),
(157,6,'_wc_order_attribution_session_start_time','2025-08-26 21:11:48'),
(158,6,'_wc_order_attribution_session_pages','9'),
(159,6,'_wc_order_attribution_session_count','2'),
(160,6,'_wc_order_attribution_user_agent','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0'),
(161,6,'_wc_order_attribution_device_type','Desktop'),
(162,6,'last_update','1756249226'),
(164,6,'wc_last_active','1757894400'),
(165,6,'shipping_first_name','Анна'),
(166,6,'shipping_last_name','Смирнова'),
(167,6,'shipping_address_1','Невский проспект, д. 90, кв. 12'),
(168,6,'shipping_address_2','подъезд 2, этаж 3'),
(169,6,'shipping_city','Санкт‑Петербург'),
(170,6,'shipping_state','Санкт‑Петербург'),
(171,6,'shipping_postcode','191186'),
(172,6,'shipping_country','RU'),
(173,6,'billing_first_name','Анна'),
(174,6,'billing_last_name','Смирнова'),
(175,7,'nickname','sergey.ivanov'),
(176,7,'first_name','Сергей'),
(177,7,'last_name','Иванов'),
(178,7,'description',''),
(179,7,'rich_editing','true'),
(180,7,'syntax_highlighting','true'),
(181,7,'comment_shortcuts','false'),
(182,7,'admin_color','fresh'),
(183,7,'use_ssl','0'),
(184,7,'show_admin_bar_front','true'),
(185,7,'locale',''),
(186,7,'wp_capabilities','a:1:{s:8:\"customer\";b:1;}'),
(187,7,'wp_user_level','0'),
(188,7,'_wc_order_attribution_source_type','typein'),
(189,7,'_wc_order_attribution_utm_source','(direct)'),
(190,7,'_wc_order_attribution_session_entry','http://192.168.171.132/'),
(191,7,'_wc_order_attribution_session_start_time','2025-08-26 21:11:48'),
(192,7,'_wc_order_attribution_session_pages','20'),
(193,7,'_wc_order_attribution_session_count','2'),
(194,7,'_wc_order_attribution_user_agent','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0'),
(195,7,'_wc_order_attribution_device_type','Desktop'),
(196,7,'last_update','1756249318'),
(198,7,'wc_last_active','1757894400'),
(199,7,'billing_first_name','Сергей'),
(200,7,'billing_last_name','Иванов'),
(201,7,'shipping_first_name','Сергей'),
(202,7,'shipping_last_name','Иванов'),
(203,7,'shipping_address_1','ул. Красный проспект, д. 35, кв. 8'),
(204,7,'shipping_address_2','подъезд 1, этаж 2'),
(205,7,'shipping_city','Новосибирск'),
(206,7,'shipping_state','Новосибирская область'),
(207,7,'shipping_postcode','630099'),
(208,7,'shipping_country','RU'),
(209,8,'nickname','maria.kuznetsova'),
(210,8,'first_name','Мария'),
(211,8,'last_name','Кузнецова'),
(212,8,'description',''),
(213,8,'rich_editing','true'),
(214,8,'syntax_highlighting','true'),
(215,8,'comment_shortcuts','false'),
(216,8,'admin_color','fresh'),
(217,8,'use_ssl','0'),
(218,8,'show_admin_bar_front','true'),
(219,8,'locale',''),
(220,8,'wp_capabilities','a:1:{s:8:\"customer\";b:1;}'),
(221,8,'wp_user_level','0'),
(222,8,'_wc_order_attribution_source_type','typein'),
(223,8,'_wc_order_attribution_utm_source','(direct)'),
(224,8,'_wc_order_attribution_session_entry','http://192.168.171.132/'),
(225,8,'_wc_order_attribution_session_start_time','2025-08-26 21:11:48'),
(226,8,'_wc_order_attribution_session_pages','30'),
(227,8,'_wc_order_attribution_session_count','2'),
(228,8,'_wc_order_attribution_user_agent','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0'),
(229,8,'_wc_order_attribution_device_type','Desktop'),
(230,8,'last_update','1756249395'),
(232,8,'wc_last_active','1757894400'),
(233,8,'billing_first_name','Мария'),
(234,8,'billing_last_name','Кузнецова'),
(235,8,'shipping_first_name','Мария'),
(236,8,'shipping_last_name','Кузнецова'),
(237,8,'shipping_address_1','ул. Вайнера, д. 16, кв. 27'),
(238,8,'shipping_city','Екатеринбург'),
(239,8,'shipping_state','Свердловская область'),
(240,8,'shipping_postcode','620014'),
(241,8,'shipping_country','RU'),
(242,9,'nickname','dmitry.sokolov'),
(243,9,'first_name','Дмитрий'),
(244,9,'last_name','Соколов'),
(245,9,'description',''),
(246,9,'rich_editing','true'),
(247,9,'syntax_highlighting','true'),
(248,9,'comment_shortcuts','false'),
(249,9,'admin_color','fresh'),
(250,9,'use_ssl','0'),
(251,9,'show_admin_bar_front','true'),
(252,9,'locale',''),
(253,9,'wp_capabilities','a:1:{s:8:\"customer\";b:1;}'),
(254,9,'wp_user_level','0'),
(255,9,'_wc_order_attribution_source_type','typein'),
(256,9,'_wc_order_attribution_utm_source','(direct)'),
(257,9,'_wc_order_attribution_session_entry','http://192.168.171.132/'),
(258,9,'_wc_order_attribution_session_start_time','2025-08-26 21:11:48'),
(259,9,'_wc_order_attribution_session_pages','38'),
(260,9,'_wc_order_attribution_session_count','2'),
(261,9,'_wc_order_attribution_user_agent','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0'),
(262,9,'_wc_order_attribution_device_type','Desktop'),
(263,9,'last_update','1756249503'),
(265,9,'wc_last_active','1757894400'),
(266,9,'billing_first_name','Дмитрий'),
(267,9,'billing_last_name','Соколов'),
(268,9,'shipping_first_name','Дмитрий'),
(269,9,'shipping_last_name','Соколов'),
(270,9,'shipping_address_1','ул. Баумана, д. 54, кв. 19'),
(271,9,'shipping_city','Казань'),
(272,9,'shipping_state','Республика Татарстан'),
(273,9,'shipping_postcode','420111'),
(274,9,'shipping_country','RU'),
(275,10,'nickname','ekaterina.popova'),
(276,10,'first_name','Екатерина'),
(277,10,'last_name','Попова'),
(278,10,'description',''),
(279,10,'rich_editing','true'),
(280,10,'syntax_highlighting','true'),
(281,10,'comment_shortcuts','false'),
(282,10,'admin_color','fresh'),
(283,10,'use_ssl','0'),
(284,10,'show_admin_bar_front','true'),
(285,10,'locale',''),
(286,10,'wp_capabilities','a:1:{s:8:\"customer\";b:1;}'),
(287,10,'wp_user_level','0'),
(288,10,'_wc_order_attribution_source_type','typein'),
(289,10,'_wc_order_attribution_utm_source','(direct)'),
(290,10,'_wc_order_attribution_session_entry','http://192.168.171.132/'),
(291,10,'_wc_order_attribution_session_start_time','2025-08-26 21:11:48'),
(292,10,'_wc_order_attribution_session_pages','45'),
(293,10,'_wc_order_attribution_session_count','2'),
(294,10,'_wc_order_attribution_user_agent','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0'),
(295,10,'_wc_order_attribution_device_type','Desktop'),
(296,10,'last_update','1756249562'),
(298,10,'wc_last_active','1757894400'),
(299,10,'billing_first_name','Екатерина'),
(300,10,'billing_last_name','Попова'),
(301,10,'shipping_first_name','Екатерина'),
(302,10,'shipping_last_name','Попова'),
(303,10,'shipping_address_1','ул. Большая Покровская, д. 25, кв. 7'),
(304,10,'shipping_city','Нижний Новгород'),
(305,10,'shipping_state','Нижегородская область'),
(306,10,'shipping_postcode','603005'),
(307,10,'shipping_country','RU'),
(308,11,'nickname','alexey.morozov'),
(309,11,'first_name','Алексей'),
(310,11,'last_name','Морозов'),
(311,11,'description',''),
(312,11,'rich_editing','true'),
(313,11,'syntax_highlighting','true'),
(314,11,'comment_shortcuts','false'),
(315,11,'admin_color','fresh'),
(316,11,'use_ssl','0'),
(317,11,'show_admin_bar_front','true'),
(318,11,'locale',''),
(319,11,'wp_capabilities','a:1:{s:8:\"customer\";b:1;}'),
(320,11,'wp_user_level','0'),
(321,11,'_wc_order_attribution_source_type','typein'),
(322,11,'_wc_order_attribution_utm_source','(direct)'),
(323,11,'_wc_order_attribution_session_entry','http://192.168.171.132/'),
(324,11,'_wc_order_attribution_session_start_time','2025-08-26 21:11:48'),
(325,11,'_wc_order_attribution_session_pages','54'),
(326,11,'_wc_order_attribution_session_count','2'),
(327,11,'_wc_order_attribution_user_agent','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0'),
(328,11,'_wc_order_attribution_device_type','Desktop'),
(329,11,'last_update','1756249611'),
(331,11,'wc_last_active','1757894400'),
(332,11,'billing_first_name','Алексей'),
(333,11,'billing_last_name','Морозов'),
(334,11,'shipping_first_name','Алексей'),
(335,11,'shipping_last_name','Морозов'),
(336,11,'shipping_address_1','пр-т Ленина, д. 59, кв. 14'),
(337,11,'shipping_city','Челябинск'),
(338,11,'shipping_state','Челябинская область'),
(339,11,'shipping_postcode','454091'),
(340,11,'shipping_country','RU'),
(341,12,'nickname','olga.vasileva'),
(342,12,'first_name','Ольга'),
(343,12,'last_name','Васильева'),
(344,12,'description',''),
(345,12,'rich_editing','true'),
(346,12,'syntax_highlighting','true'),
(347,12,'comment_shortcuts','false'),
(348,12,'admin_color','fresh'),
(349,12,'use_ssl','0'),
(350,12,'show_admin_bar_front','true'),
(351,12,'locale',''),
(352,12,'wp_capabilities','a:1:{s:8:\"customer\";b:1;}'),
(353,12,'wp_user_level','0'),
(354,12,'_wc_order_attribution_source_type','typein'),
(355,12,'_wc_order_attribution_utm_source','(direct)'),
(356,12,'_wc_order_attribution_session_entry','http://192.168.171.132/'),
(357,12,'_wc_order_attribution_session_start_time','2025-08-26 21:11:48'),
(358,12,'_wc_order_attribution_session_pages','61'),
(359,12,'_wc_order_attribution_session_count','2'),
(360,12,'_wc_order_attribution_user_agent','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0'),
(361,12,'_wc_order_attribution_device_type','Desktop'),
(362,12,'last_update','1756249661'),
(364,12,'wc_last_active','1757894400'),
(365,12,'billing_first_name','Ольга'),
(366,12,'billing_last_name','Васильева'),
(367,12,'shipping_first_name','Ольга'),
(368,12,'shipping_last_name','Васильева'),
(369,12,'shipping_address_1','ул. Ленина, д. 10, кв. 30'),
(370,12,'shipping_address_2','подъезд 2'),
(371,12,'shipping_city','Омск'),
(372,12,'shipping_state','Омская область'),
(373,12,'shipping_postcode','644024'),
(374,12,'shipping_country','RU'),
(375,13,'nickname','nikolay.ponomarev'),
(376,13,'first_name','Николай'),
(377,13,'last_name','Пономарев'),
(378,13,'description',''),
(379,13,'rich_editing','true'),
(380,13,'syntax_highlighting','true'),
(381,13,'comment_shortcuts','false'),
(382,13,'admin_color','fresh'),
(383,13,'use_ssl','0'),
(384,13,'show_admin_bar_front','true'),
(385,13,'locale',''),
(386,13,'wp_capabilities','a:1:{s:8:\"customer\";b:1;}'),
(387,13,'wp_user_level','0'),
(388,13,'_wc_order_attribution_source_type','typein'),
(389,13,'_wc_order_attribution_utm_source','(direct)'),
(390,13,'_wc_order_attribution_session_entry','http://192.168.171.132/'),
(391,13,'_wc_order_attribution_session_start_time','2025-08-26 21:11:48'),
(392,13,'_wc_order_attribution_session_pages','68'),
(393,13,'_wc_order_attribution_session_count','2'),
(394,13,'_wc_order_attribution_user_agent','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0'),
(395,13,'_wc_order_attribution_device_type','Desktop'),
(396,13,'last_update','1756249716'),
(398,13,'wc_last_active','1757894400'),
(399,13,'billing_first_name','Николай'),
(400,13,'billing_last_name','Пономарев'),
(401,13,'shipping_first_name','Николай'),
(402,13,'shipping_last_name','Пономарев'),
(403,13,'shipping_address_1','ул. Ленинградская, д. 45, кв. 21'),
(404,13,'shipping_city','Самара'),
(405,13,'shipping_state','Самарская область'),
(406,13,'shipping_postcode','443080'),
(407,13,'shipping_country','RU'),
(408,14,'nickname','tatiana.fedorova'),
(409,14,'first_name','Татьяна'),
(410,14,'last_name','Федорова'),
(411,14,'description',''),
(412,14,'rich_editing','true'),
(413,14,'syntax_highlighting','true'),
(414,14,'comment_shortcuts','false'),
(415,14,'admin_color','fresh'),
(416,14,'use_ssl','0'),
(417,14,'show_admin_bar_front','true'),
(418,14,'locale',''),
(419,14,'wp_capabilities','a:1:{s:8:\"customer\";b:1;}'),
(420,14,'wp_user_level','0'),
(421,14,'_wc_order_attribution_source_type','typein'),
(422,14,'_wc_order_attribution_utm_source','(direct)'),
(423,14,'_wc_order_attribution_session_entry','http://192.168.171.132/'),
(424,14,'_wc_order_attribution_session_start_time','2025-08-26 21:11:48'),
(425,14,'_wc_order_attribution_session_pages','75'),
(426,14,'_wc_order_attribution_session_count','2'),
(427,14,'_wc_order_attribution_user_agent','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0'),
(428,14,'_wc_order_attribution_device_type','Desktop'),
(429,14,'last_update','1756249771'),
(431,14,'wc_last_active','1757894400'),
(432,14,'billing_first_name','Татьяна'),
(433,14,'billing_last_name','Федорова'),
(434,14,'shipping_first_name','Татьяна'),
(435,14,'shipping_last_name','Федерова'),
(436,14,'shipping_address_1','ул. Большая Садовая, д. 78, кв. 5'),
(437,14,'shipping_city','Ростов‑на‑Дону'),
(438,14,'shipping_state','Ростовская область'),
(439,14,'shipping_postcode','344002'),
(440,14,'shipping_country','RU'),
(444,5,'_woocommerce_tracks_anon_id','woo:fpvp8XCl545O6DbEDgOlwLpT'),
(457,11,'_woocommerce_tracks_anon_id','woo:VKWZa2YPdX1sebPZ2aLmoXqR'),
(458,1,'session_tokens','a:1:{s:64:\"60bcae455a1be4088c3b0e2dac10de38905537065c0577a1813845541f41effc\";a:4:{s:10:\"expiration\";i:1758580442;s:2:\"ip\";s:14:\"192.168.20.134\";s:2:\"ua\";s:70:\"Mozilla/5.0 (X11; Linux x86_64; rv:128.0) Gecko/20100101 Firefox/128.0\";s:5:\"login\";i:1758407642;}}'),
(459,15,'nickname','hacker'),
(460,15,'first_name',''),
(461,15,'last_name',''),
(462,15,'description',''),
(463,15,'rich_editing','true'),
(464,15,'syntax_highlighting','true'),
(465,15,'comment_shortcuts','false'),
(466,15,'admin_color','fresh'),
(467,15,'use_ssl','0'),
(468,15,'show_admin_bar_front','true'),
(469,15,'locale',''),
(470,15,'wp_capabilities','a:1:{s:10:\"subscriber\";b:1;}'),
(471,15,'wp_user_level','0'),
(472,15,'dismissed_wp_pointers',''),
(473,15,'last_update','1758407773'),
(474,15,'billing_first_name',''),
(475,15,'billing_last_name',''),
(476,15,'billing_company','EvIlC0rPH!'),
(477,15,'billing_address_1',''),
(478,15,'billing_address_2',''),
(479,15,'billing_city',''),
(480,15,'billing_postcode',''),
(481,15,'billing_country',''),
(482,15,'billing_state',''),
(483,15,'billing_phone',''),
(484,15,'billing_email','evhack@ev.ru'),
(485,15,'shipping_first_name',''),
(486,15,'shipping_last_name',''),
(487,15,'shipping_company',''),
(488,15,'shipping_address_1',''),
(489,15,'shipping_address_2',''),
(490,15,'shipping_city',''),
(491,15,'shipping_postcode',''),
(492,15,'shipping_country',''),
(493,15,'shipping_state',''),
(494,15,'shipping_phone','');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES
(1,'admin','$P$BBSPX8jQZv1Xn47CDvDYjftxkvJZg.0','admin','adminAlpaca@shop.com','http://192.168.171.132','2025-08-17 13:01:10','',0,'admin'),
(5,'ivan.petrov','$P$BgDMnyPCzUoPXtCkYeBW4mXeh4AiQ2.','ivan-petrov','ivan.petrov@yandex.ru','','2025-08-26 22:57:18','',0,'ivan.petrov'),
(6,'anna.smirnova','$P$BbAT3BqqbzOyyU.X/NUQZFvEix87z..','anna-smirnova','anna.smirnova@gmail.com','','2025-08-26 22:59:22','',0,'anna.smirnova'),
(7,'sergey.ivanov','$P$BvY1B1vdQjOzpyo4ukBS8ebps.aN.B1','sergey-ivanov','sergey.ivanov@mail.ru','','2025-08-26 23:00:53','',0,'sergey.ivanov'),
(8,'maria.kuznetsova','$P$ByKe9Gl/cuGgx4jvADbPJ3C1wMWcUT.','maria-kuznetsova','maria.kuznetsova@outlook.com','','2025-08-26 23:02:15','',0,'maria.kuznetsova'),
(9,'dmitry.sokolov','$P$BAoBGUEu8dklLo3OICFQ7YxYFVhrIq0','dmitry-sokolov','dmitry.sokolov@yandex.ru','','2025-08-26 23:03:34','',0,'dmitry.sokolov'),
(10,'ekaterina.popova','$P$BVey4Rzs/U1VnFyGjpBkWD4Ro/bV3b0','ekaterina-popova','ekaterina.popova@gmail.com','','2025-08-26 23:05:17','',0,'ekaterina.popova'),
(11,'alexey.morozov','$P$BJWenTRZ2KJRgc7eSHO8.znYUBsmkH0','alexey-morozov','alexey.morozov@mail.ru','','2025-08-26 23:06:12','',0,'alexey.morozov'),
(12,'olga.vasileva','$P$BbeCgNykKc3t.xnZPVvRHl5IF0ohZ4.','olga-vasileva','olga.vasileva@ya.ru','','2025-08-26 23:07:04','',0,'olga.vasileva'),
(13,'nikolay.ponomarev','$P$B.tzr/8cYO0UufP4yeMMYSqUpvBf1.0','nikolay-ponomarev','nikolay.ponomarev@gmail.com','','2025-08-26 23:07:57','',0,'nikolay.ponomarev'),
(14,'tatiana.fedorova','$P$BGnlbSRU0fMx6YDtDcs3BH.J0DA8X.0','tatiana-fedorova','tatiana.fedorova@yandex.ru','','2025-08-26 23:08:49','',0,'tatiana.fedorova'),
(15,'hacker','$P$BT/hHZriKygIXuAVMVq.KnwqPOTkne1','hacker','evhack@ev.ru','','2025-09-20 22:35:52','1758407752:$P$B8Tlh465wy9QJrY.jnG2VOjnAi6ytF1',0,'hacker');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_admin_note_actions`
--

DROP TABLE IF EXISTS `wp_wc_admin_note_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_wc_admin_note_actions` (
  `action_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `note_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `query` longtext NOT NULL,
  `status` varchar(255) NOT NULL,
  `actioned_text` varchar(255) NOT NULL,
  `nonce_action` varchar(255) DEFAULT NULL,
  `nonce_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`action_id`),
  KEY `note_id` (`note_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1422 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_admin_note_actions`
--

LOCK TABLES `wp_wc_admin_note_actions` WRITE;
/*!40000 ALTER TABLE `wp_wc_admin_note_actions` DISABLE KEYS */;
INSERT INTO `wp_wc_admin_note_actions` VALUES
(1,1,'notify-refund-returns-page','Редактировать страницу','http://192.168.171.132/wp-admin/post.php?post=11&action=edit','actioned','',NULL,NULL),
(542,2,'wayflyer_bnpl_q4_2021','Level up with funding','https://woocommerce.com/products/wayflyer/?utm_source=inbox_note&utm_medium=product&utm_campaign=wayflyer_bnpl_q4_2021','actioned','',NULL,NULL),
(543,3,'wc_shipping_mobile_app_usps_q4_2021','Get WooCommerce Shipping','https://woocommerce.com/woocommerce-shipping/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc_shipping_mobile_app_usps_q4_2021','actioned','',NULL,NULL),
(588,36,'woopay-beta-merchantrecruitment-short-activate-06MAY23-TESTA','Activate WooPay Test A','http://192.168.171.132/wp-admin/admin.php?page=wc-settings&tab=checkout&section=woocommerce_payments&method=platform_checkout','unactioned','',NULL,NULL),
(589,36,'woopay-beta-merchantrecruitment-short-activate-learnmore-06MAY23-TESTA','Learn More','https://woocommerce.com/woopay-businesses/?utm_source=inbox_note&utm_medium=product&utm_campaign=woopay-beta-merchantrecruitment-short-activate-learnmore-06MAY23-TESTA','unactioned','',NULL,NULL),
(590,37,'woopay-beta-merchantrecruitment-short-activate-06MAY23-TESTB','Activate WooPay Test B','http://192.168.171.132/wp-admin/admin.php?page=wc-settings&tab=checkout&section=woocommerce_payments&method=platform_checkout','unactioned','',NULL,NULL),
(591,37,'woopay-beta-merchantrecruitment-short-activate-learnmore-06MAY23-TESTA','Learn More','https://woocommerce.com/woopay-businesses/?utm_source=inbox_note&utm_medium=product&utm_campaign=woopay-beta-merchantrecruitment-short-activate-learnmore-06MAY23-TESTA','unactioned','',NULL,NULL),
(592,38,'woopay-beta-merchantrecruitment-short-activate-06MAY23-TESTC','Activate WooPay Test C','http://192.168.171.132/wp-admin/admin.php?page=wc-settings&tab=checkout&section=woocommerce_payments&method=platform_checkout','unactioned','',NULL,NULL),
(593,38,'woopay-beta-merchantrecruitment-short-activate-learnmore-06MAY23-TESTC','Learn More','https://woocommerce.com/woopay-businesses/?utm_source=inbox_note&utm_medium=product&utm_campaign=woopay-beta-merchantrecruitment-short-activate-learnmore-06MAY23-TESTC','unactioned','',NULL,NULL),
(594,39,'woopay-beta-merchantrecruitment-short-activate-06MAY23-TESTD','Activate WooPay Test D','http://192.168.171.132/wp-admin/admin.php?page=wc-settings&tab=checkout&section=woocommerce_payments&method=platform_checkout','unactioned','',NULL,NULL),
(595,39,'woopay-beta-merchantrecruitment-short-activate-learnmore-06MAY23-TESTD','Learn More','https://woocommerce.com/woopay-businesses/?utm_source=inbox_note&utm_medium=product&utm_campaign=woopay-beta-merchantrecruitment-short-activate-learnmore-06MAY23-TESTD','unactioned','',NULL,NULL),
(630,62,'stripe_optimizedcheckout_upgrade_q3_2025_click','Enable optimized checkout','https://woocommerce.com/document/stripe/admin-experience/updated-requirements-for-stripe-plugin-mid-2025/?utm_source=inbox_note&utm_medium=product&utm_campaign=stripe_optimizedcheckout_upgrade_q3_2025_click#enable-the-optimized-checkout-suite','unactioned','',NULL,NULL),
(631,63,'stripe_optimizedcheckout_promotion_q3_2025_click','Get paid with Stripe','https://woocommerce.com/products/stripe/?utm_source=inbox_note&utm_medium=product&utm_campaign=stripe_optimizedcheckout_promotion_q3_2025_click','unactioned','',NULL,NULL),
(1343,4,'learn-more','Learn more','https://woocommerce.com/posts/ecommerce-shipping-solutions-guide/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more','actioned','',NULL,NULL),
(1344,5,'optimizing-the-checkout-flow','Learn more','https://woocommerce.com/posts/optimizing-woocommerce-checkout?utm_source=inbox_note&utm_medium=product&utm_campaign=optimizing-the-checkout-flow','actioned','',NULL,NULL),
(1345,6,'qualitative-feedback-from-new-users','Share feedback','https://automattic.survey.fm/woopayments-new-user-feedback','actioned','',NULL,NULL),
(1346,7,'share-feedback','Share feedback','http://automattic.survey.fm/paypal-feedback','unactioned','',NULL,NULL),
(1347,8,'get-started','Get started','https://woocommerce.com/products/google-listings-and-ads?utm_source=inbox_note&utm_medium=product&utm_campaign=get-started','actioned','',NULL,NULL),
(1348,9,'update-wc-subscriptions-3-0-15','View latest version','http://192.168.171.132/wp-admin/&page=wc-addons&section=helper','actioned','',NULL,NULL),
(1349,10,'update-wc-core-5-4-0','How to update WooCommerce','https://docs.woocommerce.com/document/how-to-update-woocommerce/','actioned','',NULL,NULL),
(1350,13,'ppxo-pps-install-paypal-payments-1','View upgrade guide','https://docs.woocommerce.com/document/woocommerce-paypal-payments/paypal-payments-upgrade-guide/','actioned','',NULL,NULL),
(1351,14,'ppxo-pps-install-paypal-payments-2','View upgrade guide','https://docs.woocommerce.com/document/woocommerce-paypal-payments/paypal-payments-upgrade-guide/','actioned','',NULL,NULL),
(1352,15,'learn-more','Learn more','https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more','unactioned','',NULL,NULL),
(1353,15,'dismiss','Dismiss','','actioned','',NULL,NULL),
(1354,16,'learn-more','Learn more','https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more','unactioned','',NULL,NULL),
(1355,16,'dismiss','Dismiss','','actioned','',NULL,NULL),
(1356,17,'learn-more','Learn more','https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more','unactioned','',NULL,NULL),
(1357,17,'dismiss','Dismiss','','actioned','',NULL,NULL),
(1358,18,'learn-more','Learn more','https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more','unactioned','',NULL,NULL),
(1359,18,'dismiss','Dismiss','','actioned','',NULL,NULL),
(1360,19,'share-feedback','Share feedback','https://automattic.survey.fm/store-management','unactioned','',NULL,NULL),
(1361,20,'learn-more','Learn more','https://developer.woocommerce.com/2022/03/10/woocommerce-3-5-10-6-3-1-security-releases/','unactioned','',NULL,NULL),
(1362,20,'woocommerce-core-paypal-march-2022-dismiss','Dismiss','','actioned','',NULL,NULL),
(1363,21,'learn-more','Learn more','https://developer.woocommerce.com/2022/03/10/woocommerce-3-5-10-6-3-1-security-releases/','unactioned','',NULL,NULL),
(1364,21,'dismiss','Dismiss','','actioned','',NULL,NULL),
(1365,22,'pinterest_03_2022_update','Update Instructions','https://woocommerce.com/document/pinterest-for-woocommerce/?utm_source=inbox_note&utm_medium=product&utm_campaign=pinterest_03_2022_update#section-3','actioned','',NULL,NULL),
(1366,23,'store_setup_survey_survey_q2_2022_share_your_thoughts','Tell us how it’s going','https://automattic.survey.fm/store-setup-survey-2022','actioned','',NULL,NULL),
(1367,24,'needs-update-eway-payment-gateway-rin-action-button-2022-12-20','See available updates','http://192.168.171.132/wp-admin/update-core.php','unactioned','',NULL,NULL),
(1368,24,'needs-update-eway-payment-gateway-rin-dismiss-button-2022-12-20','Dismiss','#','actioned','',NULL,NULL),
(1369,25,'updated-eway-payment-gateway-rin-action-button-2022-12-20','See all updates','http://192.168.171.132/wp-admin/update-core.php','unactioned','',NULL,NULL),
(1370,25,'updated-eway-payment-gateway-rin-dismiss-button-2022-12-20','Dismiss','#','actioned','',NULL,NULL),
(1371,26,'share-navigation-survey-feedback','Share feedback','https://automattic.survey.fm/new-ecommerce-plan-navigation','actioned','',NULL,NULL),
(1372,27,'woopay-beta-merchantrecruitment-activate-04MAY23','Activate WooPay','http://192.168.171.132/wp-admin/admin.php?page=wc-settings&tab=checkout&section=woocommerce_payments&method=platform_checkout','actioned','',NULL,NULL),
(1373,27,'woopay-beta-merchantrecruitment-activate-learnmore-04MAY23','Learn More','https://woocommerce.com/woopay-businesses/?utm_source=inbox_note&utm_medium=product&utm_campaign=woopay-beta-merchantrecruitment-activate-learnmore-04MAY23','unactioned','',NULL,NULL),
(1374,28,'woocommerce-wcpay-march-2023-update-needed-button','See Blog Post','https://developer.woocommerce.com/2023/03/23/critical-vulnerability-detected-in-woocommerce-payments-what-you-need-to-know','unactioned','',NULL,NULL),
(1375,28,'woocommerce-wcpay-march-2023-update-needed-dismiss-button','Dismiss','#','actioned','',NULL,NULL),
(1376,29,'tap_to_pay_iphone_q2_2023_no_wcpay','Simplify my payments','https://woocommerce.com/products/woocommerce-payments/?utm_source=inbox_note&utm_medium=product&utm_campaign=tap_to_pay_iphone_q2_2023_no_wcpay','actioned','',NULL,NULL),
(1377,30,'extension-settings','See available updates','http://192.168.171.132/wp-admin/update-core.php','unactioned','',NULL,NULL),
(1378,30,'dismiss','Dismiss','#','actioned','',NULL,NULL),
(1379,31,'woopay-beta-merchantrecruitment-update-WCPay-04MAY23','Update WooCommerce Payments','http://192.168.171.132/wp-admin/plugins.php?plugin_status=all','unactioned','',NULL,NULL),
(1380,31,'woopay-beta-merchantrecruitment-update-activate-04MAY23','Activate WooPay','http://192.168.171.132/wp-admin/admin.php?page=wc-settings&tab=checkout&section=woocommerce_payments&method=platform_checkout','actioned','',NULL,NULL),
(1381,32,'woopay-beta-existingmerchants-noaction-documentation-27APR23','Documentation','https://woocommerce.com/document/woopay-merchant-documentation/?utm_source=inbox_note&utm_medium=product&utm_campaign=woopay-beta-existingmerchants-noaction-documentation-27APR23','actioned','',NULL,NULL),
(1382,33,'woopay-beta-existingmerchants-update-WCPay-27APR23','Update WooCommerce Payments','http://192.168.171.132/wp-admin/plugins.php?plugin_status=all','actioned','',NULL,NULL),
(1383,34,'woopay-beta-merchantrecruitment-short-activate-04MAY23','Activate WooPay','http://192.168.171.132/wp-admin/admin.php?page=wc-settings&tab=checkout&section=woocommerce_payments&method=platform_checkout','actioned','',NULL,NULL),
(1384,34,'woopay-beta-merchantrecruitment-short-activate-learnmore-04MAY23','Learn More','https://woocommerce.com/woopay-businesses/?utm_source=inbox_note&utm_medium=product&utm_campaign=woopay-beta-merchantrecruitment-short-activate-learnmore-04MAY23','actioned','',NULL,NULL),
(1385,35,'woopay-beta-merchantrecruitment-short-update-WCPay-04MAY23','Update WooCommerce Payments','http://192.168.171.132/wp-admin/plugins.php?plugin_status=all','unactioned','',NULL,NULL),
(1386,35,'woopay-beta-merchantrecruitment-short-update-activate-04MAY23','Activate WooPay','http://192.168.171.132/wp-admin/admin.php?page=wc-settings&tab=checkout&section=woocommerce_payments&method=platform_checkout','actioned','',NULL,NULL),
(1387,40,'woopay-beta-merchantrecruitment-short-activate-button-09MAY23','Activate WooPay','http://192.168.171.132/wp-admin/admin.php?page=wc-settings&tab=checkout&section=woocommerce_payments&method=platform_checkout','unactioned','',NULL,NULL),
(1388,40,'woopay-beta-merchantrecruitment-short-activate-learnmore-button2-09MAY23','Learn More','https://woocommerce.com/woopay-businesses/?utm_source=inbox_note&utm_medium=product&utm_campaign=woopay-beta-merchantrecruitment-short-activate-learnmore-button2-09MAY23','unactioned','',NULL,NULL),
(1389,41,'woopay-beta-merchantrecruitment-short-update-WCPay-09MAY23','Update WooCommerce Payments','http://192.168.171.132/wp-admin/plugins.php?plugin_status=all','unactioned','',NULL,NULL),
(1390,41,'woopay-beta-merchantrecruitment-short-update-activate-09MAY23','Activate WooPay','http://192.168.171.132/wp-admin/admin.php?page=wc-settings&tab=checkout&section=woocommerce_payments&method=platform_checkout','unactioned','',NULL,NULL),
(1391,42,'woocommerce-WCSubscriptions-June-2023-updated-needed-Plugin-Settings','See available updates','http://192.168.171.132/wp-admin/plugins.php?plugin_status=all','unactioned','',NULL,NULL),
(1392,42,'woocommerce-WCSubscriptions-June-2023-updated-needed-dismiss','Dismiss','#','actioned','',NULL,NULL),
(1393,43,'woocommerce-WCReturnsWarranty-June-2023-updated-needed','See available updates','http://192.168.171.132/wp-admin/plugins.php?plugin_status=all','unactioned','',NULL,NULL),
(1394,43,'woocommerce-WCReturnsWarranty-June-2023-updated-needed','Dismiss','#','actioned','',NULL,NULL),
(1395,44,'woocommerce-WCOPC-June-2023-updated-needed','See available updates','http://192.168.171.132/wp-admin/plugins.php?plugin_status=all','actioned','',NULL,NULL),
(1396,44,'woocommerce-WCOPC-June-2023-updated-needed','Dismiss','http://192.168.171.132/wp-admin/#','actioned','',NULL,NULL),
(1397,45,'woocommerce-WCGC-July-2023-update-needed','See available updates','http://192.168.171.132/wp-admin/plugins.php?plugin_status=all','unactioned','',NULL,NULL),
(1398,45,'woocommerce-WCGC-July-2023-update-needed','Dismiss','#','actioned','',NULL,NULL),
(1399,46,'learn-more','Learn more','https://woocommerce.com/document/fedex/?utm_medium=product&utm_source=inbox_note&utm_campaign=learn-more#july-2023-api-outage','unactioned','',NULL,NULL),
(1400,47,'plugin-list','See available updates','http://192.168.171.132/wp-admin/plugins.php?plugin_status=all','unactioned','',NULL,NULL),
(1401,47,'dismiss','Dismiss','http://192.168.171.132/wp-admin/admin.php?page=wc-admin','actioned','',NULL,NULL),
(1402,48,'woocommerce-WCStripe-Aug-2023-update-needed','See available updates','http://192.168.171.132/wp-admin/update-core.php?','unactioned','',NULL,NULL),
(1403,48,'dismiss','Dismiss','#','actioned','',NULL,NULL),
(1404,49,'dismiss','Dismiss','#','actioned','',NULL,NULL),
(1405,50,'dismiss','Dismiss','#','actioned','',NULL,NULL),
(1406,51,'avalara_q3-2023_noAvaTax','Automate my sales tax','https://woocommerce.com/products/woocommerce-avatax/?utm_source=inbox_note&utm_medium=product&utm_campaign=avalara_q3-2023_noAvaTax','unactioned','',NULL,NULL),
(1407,52,'woocommerce-usermeta-Sept2023-productvendors','See available updates','http://192.168.171.132/wp-admin/plugins.php','unactioned','',NULL,NULL),
(1408,52,'dismiss','Dismiss','http://192.168.171.132/wp-admin/#','actioned','',NULL,NULL),
(1409,53,'woocommerce-STRIPE-Oct-2023-update-needed','See available updates','http://192.168.171.132/wp-admin/update-core.php','unactioned','',NULL,NULL),
(1410,53,'dismiss','Dismiss','#','actioned','',NULL,NULL),
(1411,54,'amazon-mcf-review-button-2023-12-07','Leave a review','https://woocommerce.com/products/woocommerce-amazon-fulfillment/?review&utm_source=inbox_note&utm_medium=product&utm_campaign=amazon-mcf-review-button-2023-12-07','actioned','',NULL,NULL),
(1412,54,'amazon-mcf-support-button-2023-12-07','Request support','https://woocommerce.com/my-account/contact-support/?utm_source=inbox_note&utm_medium=product&utm_campaign=amazon-mcf-support-button-2023-12-07','actioned','',NULL,NULL),
(1413,55,'view_docs','Learn about Deposit schedules','https://woocommerce.com/document/woopayments/deposits/deposit-schedule/?utm_source=inbox_note&utm_medium=product&utm_campaign=view_docs#available-funds','unactioned','',NULL,NULL),
(1414,56,'sirt-woo-2024-11-xss-admin','See available updates','http://192.168.171.132/wp-admin/update-core.php?','unactioned','',NULL,NULL),
(1415,56,'sirt-woo-2024-11-xss-admin','Dismiss','#','actioned','',NULL,NULL),
(1416,57,'paypal-braintree-sdk-depreciation-2025-02-20-button','Upgrade now','http://192.168.171.132/wp-admin/wp-admin/plugins.php','actioned','',NULL,NULL),
(1417,58,'uk-vat-notice-button-2025-04-30','Learn more about this extension','https://wordpress.org/plugins/eu-vat-for-woocommerce/','actioned','',NULL,NULL),
(1418,59,'payson-retirement-2025','Explore alternative payment methods','https://woocommerce.com/product-category/woocommerce-extensions/payment-gateways/?categoryIds=28680&collections=product&page=1&country=Sweden&utm_source=inbox_note&utm_medium=product&utm_campaign=payson-retirement-2025','actioned','',NULL,NULL),
(1419,60,'paypal-braintree-sdk-depreciation-2025-05-30-button','Update now','http://192.168.171.132/wp-admin/wp-admin/plugins.php','unactioned','',NULL,NULL),
(1420,61,'stripe_optimizedcheckout_upgrade_q3_2025_click','Upgrade now','http://192.168.171.132/wp-admin/update.php','unactioned','',NULL,NULL),
(1421,64,'stripe_optimizedcheckout_competitors_q3_2025_click','Get more from Stripe','https://woocommerce.com/products/stripe/?utm_source=inbox_note&utm_medium=product&utm_campaign=stripe_optimizedcheckout_competitors_q3_2025_click','unactioned','',NULL,NULL);
/*!40000 ALTER TABLE `wp_wc_admin_note_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_admin_notes`
--

DROP TABLE IF EXISTS `wp_wc_admin_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_wc_admin_notes` (
  `note_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL,
  `locale` varchar(20) NOT NULL,
  `title` longtext NOT NULL,
  `content` longtext NOT NULL,
  `content_data` longtext DEFAULT NULL,
  `status` varchar(200) NOT NULL,
  `source` varchar(200) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT 0,
  `layout` varchar(20) NOT NULL DEFAULT '',
  `image` varchar(200) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `icon` varchar(200) NOT NULL DEFAULT 'info',
  PRIMARY KEY (`note_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_admin_notes`
--

LOCK TABLES `wp_wc_admin_notes` WRITE;
/*!40000 ALTER TABLE `wp_wc_admin_notes` DISABLE KEYS */;
INSERT INTO `wp_wc_admin_notes` VALUES
(1,'wc-refund-returns-page','info','en_US','Настройте страницу политики возврата, чтобы повысить доверие к вашему магазину.','Мы создали для вас образец страницы возврата. Пожалуйста, посмотрите и обновите его содержимое, чтобы оно соответствовало процессам вашей компании.','{}','unactioned','woocommerce-core','2025-08-17 14:14:15',NULL,0,'plain','',1,1,'info'),
(2,'wayflyer_bnpl_q4_2021','marketing','en_US','Grow your business with funding through Wayflyer','Fast, flexible financing to boost cash flow and help your business grow – one fee, no interest rates, penalties, equity, or personal guarantees. Based on your store’s performance, Wayflyer provides funding and analytical insights to invest in your business.','{}','pending','woocommerce.com','2025-08-17 14:15:29',NULL,0,'plain','',0,0,'info'),
(3,'wc_shipping_mobile_app_usps_q4_2021','marketing','en_US','Print and manage your shipping labels with WooCommerce Shipping and the WooCommerce Mobile App','Save time by printing, purchasing, refunding, and tracking shipping labels generated by <a href=\"https://woocommerce.com/woocommerce-shipping/\">WooCommerce Shipping</a> – all directly from your mobile device!','{}','pending','woocommerce.com','2025-08-17 14:15:29',NULL,0,'plain','',0,0,'info'),
(4,'your-first-product','info','en_US','Your first product','That’s huge! You’re well on your way to building a successful online store — now it’s time to think about how you’ll fulfill your orders.<br /><br />Read our shipping guide to learn best practices and options for putting together your shipping strategy. And for WooCommerce stores in the United States, you can print discounted shipping labels via USPS with <a href=\"https://href.li/?https://woocommerce.com/shipping\" target=\"_blank\">WooCommerce Shipping</a>.','{}','pending','woocommerce.com','2025-08-17 14:15:29',NULL,0,'plain','',0,0,'info'),
(5,'wc-admin-optimizing-the-checkout-flow','info','en_US','Optimizing the checkout flow','It’s crucial to get your store’s checkout as smooth as possible to avoid losing sales. Let’s take a look at how you can optimize the checkout experience for your shoppers.','{}','pending','woocommerce.com','2025-08-17 14:15:29',NULL,0,'plain','',0,0,'info'),
(6,'wc-payments-qualitative-feedback','info','en_US','WooPayments setup - let us know what you think','Congrats on enabling WooPayments for your store. Please share your feedback in this 2 minute survey to help us improve the setup process.','{}','pending','woocommerce.com','2025-08-17 14:15:29',NULL,0,'plain','',0,0,'info'),
(7,'share-your-feedback-on-paypal','info','en_US','Share your feedback on PayPal','Share your feedback in this 2 minute survey about how we can make the process of accepting payments more useful for your store.','{}','pending','woocommerce.com','2025-08-17 14:15:29',NULL,0,'plain','',0,0,'info'),
(8,'google_listings_and_ads_install','marketing','en_US','Drive traffic and sales with Google','Reach online shoppers to drive traffic and sales for your store by showcasing products across Google, for free or with ads.','{}','pending','woocommerce.com','2025-08-17 14:15:29',NULL,0,'plain','',0,0,'info'),
(9,'wc-subscriptions-security-update-3-0-15','info','en_US','WooCommerce Subscriptions security update!','We recently released an important security update to WooCommerce Subscriptions. To ensure your site’s data is protected, please upgrade <strong>WooCommerce Subscriptions to version 3.0.15</strong> or later.<br /><br />Click the button below to view and update to the latest Subscriptions version, or log in to <a href=\"https://woocommerce.com/my-dashboard\">WooCommerce.com Dashboard</a> and navigate to your <strong>Downloads</strong> page.<br /><br />We recommend always using the latest version of WooCommerce Subscriptions, and other software running on your site, to ensure maximum security.<br /><br />If you have any questions we are here to help — just <a href=\"https://woocommerce.com/my-account/create-a-ticket/\">open a ticket</a>.','{}','pending','woocommerce.com','2025-08-17 14:15:29',NULL,0,'plain','',0,0,'info'),
(10,'woocommerce-core-update-5-4-0','info','en_US','Update to WooCommerce 5.4.1 now','WooCommerce 5.4.1 addresses a checkout issue discovered in WooCommerce 5.4. We recommend upgrading to WooCommerce 5.4.1 as soon as possible.','{}','pending','woocommerce.com','2025-08-17 14:15:29',NULL,0,'plain','',0,0,'info'),
(11,'wcpay-promo-2020-11','marketing','en_US','wcpay-promo-2020-11','wcpay-promo-2020-11','{}','pending','woocommerce.com','2025-08-17 14:15:29',NULL,0,'plain','',0,0,'info'),
(12,'wcpay-promo-2020-12','marketing','en_US','wcpay-promo-2020-12','wcpay-promo-2020-12','{}','pending','woocommerce.com','2025-08-17 14:15:29',NULL,0,'plain','',0,0,'info'),
(13,'ppxo-pps-upgrade-paypal-payments-1','info','en_US','Get the latest PayPal extension for WooCommerce','Heads up! There’s a new PayPal on the block!<br /><br />Now is a great time to upgrade to our latest <a href=\"https://woocommerce.com/products/woocommerce-paypal-payments/\" target=\"_blank\">PayPal extension</a> to continue to receive support and updates with PayPal.<br /><br />Get access to a full suite of PayPal payment methods, extensive currency and country coverage, and pay later options with the all-new PayPal extension for WooCommerce.','{}','pending','woocommerce.com','2025-08-17 14:15:29',NULL,0,'plain','',0,0,'info'),
(14,'ppxo-pps-upgrade-paypal-payments-2','info','en_US','Upgrade your PayPal experience!','Get access to a full suite of PayPal payment methods, extensive currency and country coverage, offer subscription and recurring payments, and the new PayPal pay later options.<br /><br />Start using our <a href=\"https://woocommerce.com/products/woocommerce-paypal-payments/\" target=\"_blank\">latest PayPal today</a> to continue to receive support and updates.','{}','pending','woocommerce.com','2025-08-17 14:15:29',NULL,0,'plain','',0,0,'info'),
(15,'woocommerce-core-sqli-july-2021-need-to-update','update','en_US','Action required: Critical vulnerabilities in WooCommerce','In response to a critical vulnerability identified on July 13, 2021, we are working with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br />Our investigation into this vulnerability is ongoing, but <strong>we wanted to let you know now about the importance of updating immediately</strong>.<br /><br />For more information on which actions you should take, as well as answers to FAQs, please urgently review our blog post detailing this issue.','{}','pending','woocommerce.com','2025-08-17 14:15:29',NULL,0,'plain','',0,0,'info'),
(16,'woocommerce-blocks-sqli-july-2021-need-to-update','update','en_US','Action required: Critical vulnerabilities in WooCommerce Blocks','In response to a critical vulnerability identified on July 13, 2021, we are working with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br />Our investigation into this vulnerability is ongoing, but <strong>we wanted to let you know now about the importance of updating immediately</strong>.<br /><br />For more information on which actions you should take, as well as answers to FAQs, please urgently review our blog post detailing this issue.','{}','pending','woocommerce.com','2025-08-17 14:15:29',NULL,0,'plain','',0,0,'info'),
(17,'woocommerce-core-sqli-july-2021-store-patched','update','en_US','Solved: Critical vulnerabilities patched in WooCommerce','In response to a critical vulnerability identified on July 13, 2021, we worked with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br /><strong>Your store has been updated to the latest secure version(s)</strong>. For more information and answers to FAQs, please review our blog post detailing this issue.','{}','pending','woocommerce.com','2025-08-17 14:15:29',NULL,0,'plain','',0,0,'info'),
(18,'woocommerce-blocks-sqli-july-2021-store-patched','update','en_US','Solved: Critical vulnerabilities patched in WooCommerce Blocks','In response to a critical vulnerability identified on July 13, 2021, we worked with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br /><strong>Your store has been updated to the latest secure version(s)</strong>. For more information and answers to FAQs, please review our blog post detailing this issue.','{}','pending','woocommerce.com','2025-08-17 14:15:29',NULL,0,'plain','',0,0,'info'),
(19,'habit-moment-survey','marketing','en_US','We’re all ears! Share your experience so far with WooCommerce','We’d love your input to shape the future of WooCommerce together. Feel free to share any feedback, ideas or suggestions that you have.','{}','pending','woocommerce.com','2025-08-17 14:15:29',NULL,0,'plain','',0,0,'info'),
(20,'woocommerce-core-paypal-march-2022-updated','update','en_US','Security auto-update of WooCommerce','<strong>Your store has been updated to the latest secure version of WooCommerce</strong>. We worked with WordPress to deploy PayPal Standard security updates for stores running WooCommerce (version 3.5 to 6.3). It’s recommended to disable PayPal Standard, and use <a href=\"https://woocommerce.com/products/woocommerce-paypal-payments/\" target=\"_blank\">PayPal Payments</a> to accept PayPal.','{}','pending','woocommerce.com','2025-08-17 14:15:29',NULL,0,'plain','',0,0,'info'),
(21,'woocommerce-core-paypal-march-2022-updated-nopp','update','en_US','Security auto-update of WooCommerce','<strong>Your store has been updated to the latest secure version of WooCommerce</strong>. We worked with WordPress to deploy security updates related to PayPal Standard payment gateway for stores running WooCommerce (version 3.5 to 6.3).','{}','pending','woocommerce.com','2025-08-17 14:15:29',NULL,0,'plain','',0,0,'info'),
(22,'pinterest_03_2022_update','marketing','en_US','Your Pinterest for WooCommerce plugin is out of date!','Update to the latest version of Pinterest for WooCommerce to continue using this plugin and keep your store connected with Pinterest. To update, visit <strong>Plugins &gt; Installed Plugins</strong>, and click on “update now” under Pinterest for WooCommerce.','{}','pending','woocommerce.com','2025-08-17 14:15:29',NULL,0,'plain','',0,0,'info'),
(23,'store_setup_survey_survey_q2_2022','survey','en_US','How is your store setup going?','Our goal is to make sure you have all the right tools to start setting up your store in the smoothest way possible.\r\nWe’d love to know if we hit our mark and how we can improve. To collect your thoughts, we made a 2-minute survey.','{}','pending','woocommerce.com','2025-08-17 14:15:29',NULL,0,'plain','',0,0,'info'),
(24,'needs-update-eway-payment-gateway-rin-2022-12-20','update','en_US','Security vulnerability patched in WooCommerce Eway Gateway','In response to a potential vulnerability identified in WooCommerce Eway Gateway versions 3.1.0 to 3.5.0, we’ve worked to deploy security fixes and have released an updated version.\r\nNo external exploits have been detected, but we recommend you update to your latest supported version 3.1.26, 3.2.3, 3.3.1, 3.4.6, or 3.5.1','{}','pending','woocommerce.com','2025-08-17 14:15:29',NULL,0,'plain','',0,0,'info'),
(25,'updated-eway-payment-gateway-rin-2022-12-20','update','en_US','WooCommerce Eway Gateway has been automatically updated','Your store is now running the latest secure version of WooCommerce Eway Gateway. We worked with the WordPress Plugins team to deploy a software update to stores running WooCommerce Eway Gateway (versions 3.1.0 to 3.5.0) in response to a security vulnerability that was discovered.','{}','pending','woocommerce.com','2025-08-17 14:15:29',NULL,0,'plain','',0,0,'info'),
(26,'ecomm-wc-navigation-survey-2023','info','en_US','Navigating WooCommerce on WordPress.com','We are improving the WooCommerce navigation on WordPress.com and would love your help to make it better! Please share your experience with us in this 2-minute survey.','{}','pending','woocommerce.com','2025-08-17 14:15:29',NULL,0,'plain','',0,0,'info'),
(27,'woopay-beta-merchantrecruitment-04MAY23','info','en_US','Increase conversions with WooPay — our fastest checkout yet','WooPay, a new express checkout feature built into WooCommerce Payments, is now available —and we’re inviting you to be one of the first to try it. \r\n<br><br>\r\nBoost conversions by offering your customers a simple, secure way to pay with a single click.\r\n<br><br>\r\nGet started in seconds.','{}','pending','woocommerce.com','2025-08-17 14:15:29',NULL,0,'plain','',0,0,'info'),
(28,'woocommerce-wcpay-march-2023-update-needed','update','en_US','Action required: Security update for WooCommerce Payments','<strong>Your store requires a security update for WooCommerce Payments</strong>. Please update to the latest version of WooCommerce Payments immediately to address a potential vulnerability discovered on March 22. For more information on how to update, visit this WooCommerce Developer Blog Post.','{}','pending','woocommerce.com','2025-08-17 14:15:29',NULL,0,'plain','',0,0,'info'),
(29,'tap_to_pay_iphone_q2_2023_no_wcpay','marketing','en_US','Accept in-person contactless payments on your iPhone','Tap to Pay on iPhone and WooCommerce Payments is quick, secure, and simple to set up — no extra terminals or card readers are needed. Accept contactless debit and credit cards, Apple Pay, and other NFC digital wallets in person.','{}','pending','woocommerce.com','2025-08-17 14:15:29',NULL,0,'plain','',0,0,'info'),
(30,'woocommerce-WCPreOrders-april-2023-update-needed','update','en_US','Action required: Security update of WooCommerce Pre-Orders extension','<strong>Your store requires a security update for the WooCommerce Pre-Orders extension</strong>. Please update the WooCommerce Pre-Orders extension immediately to address a potential vulnerability discovered on April 11.','{}','pending','woocommerce.com','2025-08-17 14:15:29',NULL,0,'plain','',0,0,'info'),
(31,'woopay-beta-merchantrecruitment-update-04MAY23','info','en_US','Increase conversions with WooPay — our fastest checkout yet','WooPay, a new express checkout feature built into WooCommerce Payments, is now available — and you’re invited to try it. \r\n<br /><br />\r\nBoost conversions by offering your customers a simple, secure way to pay with a single click.\r\n<br /><br />\r\nUpdate WooCommerce Payments to get started.','{}','pending','woocommerce.com','2025-08-17 14:15:29',NULL,0,'plain','',0,0,'info'),
(32,'woopay-beta-existingmerchants-noaction-27APR23','info','en_US','WooPay is back!','Thanks for previously trying WooPay, the express checkout feature built into WooCommerce Payments. We’re excited to announce that WooPay availability has resumed. No action is required on your part.\r\n<br /><br />\r\nYou can now continue boosting conversions by offering your customers a simple, secure way to pay with a single click.','{}','pending','woocommerce.com','2025-08-17 14:15:29',NULL,0,'plain','',0,0,'info'),
(33,'woopay-beta-existingmerchants-update-27APR23','info','en_US','WooPay is back!','Thanks for previously trying WooPay, the express checkout feature built into WooCommerce Payments. We’re excited to announce that WooPay availability has resumed.\r\n<br /><br />\r\n\r\nUpdate to the latest WooCommerce Payments version to continue boosting conversions by offering your customers a simple, secure way to pay with a single click.','{}','pending','woocommerce.com','2025-08-17 14:15:29',NULL,0,'plain','',0,0,'info'),
(34,'woopay-beta-merchantrecruitment-short-04MAY23','info','en_US','Increase conversions with WooPay — our fastest checkout yet','Be one of the first to try WooPay, a new express checkout feature for WooCommerce Payments. \r\n<br><br>\r\nBoost conversions by letting customers pay with a single click.','{}','pending','woocommerce.com','2025-08-17 14:15:29',NULL,0,'plain','',0,0,'info'),
(35,'woopay-beta-merchantrecruitment-short-update-04MAY23','info','en_US','Increase conversions with WooPay — our fastest checkout yet','Be one of the first to try WooPay, our new express checkout feature. <br>Boost conversions by letting customers pay with a single click. <br><br>Update to the latest version of WooCommerce Payments to get started.','{}','pending','woocommerce.com','2025-08-17 14:15:29',NULL,0,'plain','',0,0,'info'),
(36,'woopay-beta-merchantrecruitment-short-06MAY23-TESTA','info','en_US','Increase conversions with WooPay — our fastest checkout yet','Be one of the first to try WooPay, a new express checkout feature for WooCommerce Payments. \r\n<br><br>\r\nBoost conversions by letting customers pay with a single click.','{}','pending','woocommerce.com','2025-08-17 14:15:29',NULL,0,'plain','',0,0,'info'),
(37,'woopay-beta-merchantrecruitment-short-06MAY23-TESTB','info','en_US','Increase conversions with WooPay — our fastest checkout yet','Be one of the first to try WooPay, a new express checkout feature for WooCommerce Payments. \r\n<br><br>\r\nBoost conversions by letting customers pay with a single click.','{}','pending','woocommerce.com','2025-08-17 14:15:29',NULL,0,'plain','',0,0,'info'),
(38,'woopay-beta-merchantrecruitment-short-06MAY23-TESTC','info','en_US','Increase conversions with WooPay — our fastest checkout yet','Be one of the first to try WooPay, a new express checkout feature for WooCommerce Payments. \r\n<br><br>\r\nBoost conversions by letting customers pay with a single click.','{}','pending','woocommerce.com','2025-08-17 14:15:29',NULL,0,'plain','',0,0,'info'),
(39,'woopay-beta-merchantrecruitment-short-06MAY23-TESTD','info','en_US','Increase conversions with WooPay — our fastest checkout yet','Be one of the first to try WooPay, a new express checkout feature for WooCommerce Payments. \r\n<br><br>\r\nBoost conversions by letting customers pay with a single click.','{}','pending','woocommerce.com','2025-08-17 14:15:29',NULL,0,'plain','',0,0,'info'),
(40,'woopay-beta-merchantrecruitment-short-09MAY23','info','en_US','Increase conversions with WooPay — our fastest checkout yet','Be one of the first to try WooPay, a new express checkout feature for WooCommerce Payments. \r\n<br><br>\r\nBoost conversions by letting customers pay with a single click.','{}','pending','woocommerce.com','2025-08-17 14:15:29',NULL,0,'plain','',0,0,'info'),
(41,'woopay-beta-merchantrecruitment-short-update-09MAY23','info','en_US','Increase conversions with WooPay — our fastest checkout yet','Be one of the first to try WooPay, our new express checkout feature. <br>Boost conversions by letting customers pay with a single click. <br><br>Update to the latest version of WooCommerce Payments to get started.','{}','pending','woocommerce.com','2025-08-17 14:15:29',NULL,0,'plain','',0,0,'info'),
(42,'woocommerce-WCSubscriptions-June-2023-updated-needed','marketing','en_US','Action required: Security update of WooCommerce Subscriptions','<strong>Your store requires a security update for the WooCommerce Subscriptions plugin</strong>. Please update the WooCommerce Subscriptions plugin immediately to address a potential vulnerability.','{}','pending','woocommerce.com','2025-08-17 14:15:29',NULL,0,'plain','',0,0,'info'),
(43,'woocommerce-WCReturnsWarranty-June-2023-updated-needed','update','en_US','Action required: Security update of WooCommerce Returns and Warranty Requests extension','<strong>Your store requires a security update for the Returns and Warranty Requests extension</strong>.  Please update to the latest version of the WooCommerce Returns and Warranty Requests extension immediately to address a potential vulnerability discovered on May 31.','{}','pending','woocommerce.com','2025-08-17 14:15:29',NULL,0,'plain','',0,0,'info'),
(44,'woocommerce-WCOPC-June-2023-updated-needed','update','en_US','Action required: Security update of WooCommerce One Page Checkout','<strong>Your shop requires a security update to address a vulnerability in the WooCommerce One Page Checkout extension</strong>. The fix for this vulnerability was released for this extension on June 13th. Please update immediately.','{}','pending','woocommerce.com','2025-08-17 14:15:29',NULL,0,'plain','',0,0,'info'),
(45,'woocommerce-WCGC-July-2023-update-needed','update','en_US','Action required: Security update of WooCommerce GoCardless Extension','<strong>Your shop requires a security update to address a vulnerability in the WooCommerce GoCardless extension</strong>. The fix for this vulnerability was released on July 4th. Please update immediately.','{}','pending','woocommerce.com','2025-08-17 14:15:29',NULL,0,'plain','',0,0,'info'),
(46,'woocommerce-shipping-fedex-api-outage-2023-07-16','warning','en_US','Scheduled FedEx API outage — July 2023','On July 16 there will be a full outage of the FedEx API from 04:00 to 08:00 AM UTC. Due to planned maintenance by FedEx, you\'ll be unable to provide FedEx shipping rates during this time. Follow the link below for more information and recommendations on how to minimize impact.','{}','pending','woocommerce.com','2025-08-17 14:15:29',NULL,0,'plain','',0,0,'info'),
(47,'wcship-2023-07-hazmat-update-needed','update','en_US','Action required: USPS HAZMAT compliance update for WooCommerce Shipping & Tax extension','<strong>Your store requires an update for the WooCommerce Shipping extension</strong>. Please update to the latest version of the WooCommerce Shipping &amp; Tax extension immediately to ensure compliance with new USPS HAZMAT rules currently in effect.','{}','pending','woocommerce.com','2025-08-17 14:15:29',NULL,0,'plain','',0,0,'info'),
(48,'woocommerce-WCStripe-Aug-2023-update-needed','update','en_US','Action required: Security update for WooCommerce Stripe plugin','<strong>Your shop requires an important security update for the  WooCommerce Stripe plugin</strong>. The fix for this vulnerability was released on July 31. Please update immediately.','{}','pending','woocommerce.com','2025-08-17 14:15:29',NULL,0,'plain','',0,0,'info'),
(49,'woocommerce-WCStripe-Aug-2023-security-updated','update','en_US','Security update of WooCommerce Stripe plugin','<strong>Your store has been updated to the latest secure version of the WooCommerce Stripe plugin</strong>. This update was released on July 31.','{}','pending','woocommerce.com','2025-08-17 14:15:29',NULL,0,'plain','',0,0,'info'),
(50,'woocommerce-WooPayments-Aug-2023-security-updated','update','en_US','Security update of WooPayments (WooCommerce Payments) plugin','<strong>Your store has been updated to the more secure version of WooPayments (WooCommerce Payments)</strong>. This update was released on July 31.','{}','pending','woocommerce.com','2025-08-17 14:15:29',NULL,0,'plain','',0,0,'info'),
(51,'avalara_q3-2023_noAvaTax','marketing','en_US','Automatically calculate VAT in real time','Take the effort out of determining tax rates and sell confidently across borders with automated tax management from Avalara AvaTax— including built-in VAT calculation when you sell into or across the EU and UK. Save time and stay compliant when you let Avalara do the heavy lifting.','{}','pending','woocommerce.com','2025-08-17 14:15:29',NULL,0,'plain','',0,0,'info'),
(52,'woocommerce-usermeta-Sept2023-productvendors','update','en_US','Your store requires a security update','<strong>Your shop needs an update to address a vulnerability in WooCommerce.</strong> The fix was released on Sept 15. Please update WooCommerce to the latest version immediately. <a href=\"https://developer.woocommerce.com/2023/09/16/woocommerce-vulnerability-reintroduced-from-7-0-1/\" />Read our developer update</a> for more information.','{}','pending','woocommerce.com','2025-08-17 14:15:29',NULL,0,'plain','',0,0,'info'),
(53,'woocommerce-STRIPE-Oct-2023-update-needed','update','en_US','Action required: Security update for WooCommerce Stripe Gateway','<strong>Your shop requires a security update to address a vulnerability in the WooCommerce Stripe Gateway</strong>. The fix for this vulnerability was released on October 17. Please update immediately.','{}','pending','woocommerce.com','2025-08-17 14:15:29',NULL,0,'plain','',0,0,'info'),
(54,'amazon-mcf-reviews-2023-12-07','marketing','en_US','Enjoying Amazon MCF for WooCommerce?','We\'re Never Settle, the developers behind Amazon MCF for WooCommerce, and would be deeply honored to have your review. Reviews help immensely as other users can learn how MCF can solve their needs too! Not happy or need help? Please reach out for support and we’d love to make things right!','{}','pending','woocommerce.com','2025-08-17 14:15:29',NULL,0,'plain','',0,0,'info'),
(55,'remove_estimated_deposits_2024','marketing','en_US','Estimated deposits are going away','To provide more accurate deposit information and support the expansion of instant deposits, estimated deposit details will no longer be available in WooPayments. We recommend upgrading to the latest version of WooPayments for more detailed balance status information.','{}','pending','woocommerce.com','2025-08-17 14:15:29',NULL,0,'plain','',0,0,'info'),
(56,'sirt-woo-2024-11-xss-admin','update','en_US','An important update is required for WooCommerce','This update addresses a security vulnerability that could allow unauthorized access to administrative privileges on your site. <a href=\"https://developer.woocommerce.com/2024/12/03/woocommerce-9-4-3-and-woocommerce-9-3-4-available-now/\">Learn more</a>.\r\n<br><br>\r\n<strong>Please ensure your site is updated to the latest version to stay secure.</strong>','{}','pending','woocommerce.com','2025-08-17 14:15:29',NULL,0,'plain','',0,0,'info'),
(57,'paypal-braintree-sdk-depreciation-2025-02-20','update','en_US','Update required for your PayPal Braintree extension','To continue securely accepting payments, you must update your PayPal Braintree extension to version 3.2.4 or newer before June 30, 2025. Your current extension version will not support payment processing after this date due to an SSL certificate update.','{}','pending','woocommerce.com','2025-08-17 14:15:29',NULL,0,'plain','',0,0,'info'),
(58,'uk-vat-notice-2025-04-30','warning','en_US','UK VAT numbers are no longer supported','Due to recent HM Revenue &amp; Customs (HMRC) VAT API changes, your EU VAT Number for WooCommerce extension can no longer validate UK VAT numbers. HMRC now requires merchants to register an API key, which this extension does not currently support. We recommend EU/UK VAT Validation Manager for WooCommerce as a replacement','{}','pending','woocommerce.com','2025-08-17 14:15:29',NULL,0,'plain','',0,0,'info'),
(59,'payson-retirement-2025','update','en_US','Payson Form Retirement','Svea Bank is discontinuing the Payson service; the last date for transactions is August 31, 2025. As a result, the Payson Form extension has been removed from WooCommerce.com. Documentation remains available.','{}','pending','woocommerce.com','2025-08-17 14:15:29',NULL,0,'plain','',0,0,'info'),
(60,'paypal-braintree-sdk-depreciation-2025-05-30','update','en_US','Action required: Update the PayPal Braintree extension','Your PayPal Braintree extension is using an outdated SDK and will stop processing payments after June 30, 2025, due to a root SSL certificate expiration. To avoid service disruption, update to version 3.2.4 or newer immediately.','{}','pending','woocommerce.com','2025-08-17 14:15:29',NULL,0,'plain','',0,0,'info'),
(61,'stripe_optimizedcheckout_upgrade_q3_2025','marketing','en_US','Upgrade for a faster, more flexible Stripe checkout','You\'re not on the latest WooCommerce Stripe Payment Gateway version. Upgrade to version 9.8 to access Stripe\'s Optimized Checkout Suite and leverage AI models to dynamically surface the most relevant payment methods for each customer, including BNPL, local options, and one-click Link checkout.','{}','pending','woocommerce.com','2025-08-17 14:15:29',NULL,0,'plain','',0,0,'info'),
(62,'stripe_optimizedcheckout_enable_q3_2025','marketing','en_US','Unlock dynamic payments and sell more','You’re on the latest WooCommerce Stripe Payment Gateway — now unlock its full potential by enabling the Optimized Checkout Suite. It uses AI models to dynamically surface the most relevant payment methods for each customer, helping you boost conversions.','{}','pending','woocommerce.com','2025-08-17 14:15:29',NULL,0,'plain','',0,0,'info'),
(63,'stripe_optimizedcheckout_promotion_q3_2025','marketing','en_US','Upgrade to Stripe for a faster, more flexible checkout','Unlock dynamic payments with Stripe’s Optimized Checkout Suite — now available with the WooCommerce Stripe Payment Gateway. Leverage AI models to dynamically surface the most relevant payment methods for each customer, including BNPL, local options, and one-click Link checkout.','{}','pending','woocommerce.com','2025-08-17 14:15:29',NULL,0,'plain','',0,0,'info'),
(64,'stripe_optimizedcheckout_competitors_q3_2025','marketing','en_US','Upgrade to the official WooCommerce Stripe Payment Gateway','Unlock dynamic payments with Stripe’s Optimized Checkout Suite — now available with the WooCommerce Stripe Payment Gateway. Use AI models to dynamically surface the most relevant payment methods for each customer, including BNPL, local options, and one-click checkout with Link.','{}','pending','woocommerce.com','2025-09-01 18:59:31',NULL,0,'plain','',0,0,'info');
/*!40000 ALTER TABLE `wp_wc_admin_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_category_lookup`
--

DROP TABLE IF EXISTS `wp_wc_category_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_wc_category_lookup` (
  `category_tree_id` bigint(20) unsigned NOT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`category_tree_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_category_lookup`
--

LOCK TABLES `wp_wc_category_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_category_lookup` DISABLE KEYS */;
INSERT INTO `wp_wc_category_lookup` VALUES
(19,19),
(20,20),
(21,21),
(22,22),
(23,23),
(24,24);
/*!40000 ALTER TABLE `wp_wc_category_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_customer_lookup`
--

DROP TABLE IF EXISTS `wp_wc_customer_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_wc_customer_lookup` (
  `customer_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `username` varchar(60) NOT NULL DEFAULT '',
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) NOT NULL DEFAULT '',
  `postcode` varchar(20) NOT NULL DEFAULT '',
  `city` varchar(100) NOT NULL DEFAULT '',
  `state` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_customer_lookup`
--

LOCK TABLES `wp_wc_customer_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_customer_lookup` DISABLE KEYS */;
INSERT INTO `wp_wc_customer_lookup` VALUES
(4,5,'ivan.petrov','Иван','Петров','ivan.petrov@yandex.ru','2025-09-15 00:00:00','2025-08-26 22:57:18','','','',''),
(5,6,'anna.smirnova','Анна','Смирнова','anna.smirnova@gmail.com','2025-09-15 00:00:00','2025-08-26 22:59:22','','','',''),
(6,7,'sergey.ivanov','Сергей','Иванов','sergey.ivanov@mail.ru','2025-09-15 00:00:00','2025-08-26 23:00:53','','','',''),
(7,8,'maria.kuznetsova','Мария','Кузнецова','maria.kuznetsova@outlook.com','2025-09-15 00:00:00','2025-08-26 23:02:15','','','',''),
(8,9,'dmitry.sokolov','Дмитрий','Соколов','dmitry.sokolov@yandex.ru','2025-09-15 00:00:00','2025-08-26 23:03:34','','','',''),
(9,10,'ekaterina.popova','Екатерина','Попова','ekaterina.popova@gmail.com','2025-09-15 00:00:00','2025-08-26 23:05:17','','','',''),
(10,11,'alexey.morozov','Алексей','Морозов','alexey.morozov@mail.ru','2025-09-15 00:00:00','2025-08-26 23:06:12','','','',''),
(11,12,'olga.vasileva','Ольга','Васильева','olga.vasileva@ya.ru','2025-09-15 00:00:00','2025-08-26 23:07:04','','','',''),
(12,13,'nikolay.ponomarev','Николай','Пономарев','nikolay.ponomarev@gmail.com','2025-09-15 00:00:00','2025-08-26 23:07:57','','','',''),
(13,14,'tatiana.fedorova','Татьяна','Федорова','tatiana.fedorova@yandex.ru','2025-09-15 00:00:00','2025-08-26 23:08:49','','','',''),
(14,NULL,'','','','','2025-08-27 13:31:40',NULL,'RU','','','');
/*!40000 ALTER TABLE `wp_wc_customer_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_download_log`
--

DROP TABLE IF EXISTS `wp_wc_download_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `user_ip_address` varchar(100) DEFAULT '',
  PRIMARY KEY (`download_log_id`),
  KEY `permission_id` (`permission_id`),
  KEY `timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_download_log`
--

LOCK TABLES `wp_wc_download_log` WRITE;
/*!40000 ALTER TABLE `wp_wc_download_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_download_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_order_addresses`
--

DROP TABLE IF EXISTS `wp_wc_order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_wc_order_addresses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) unsigned NOT NULL,
  `address_type` varchar(20) DEFAULT NULL,
  `first_name` text DEFAULT NULL,
  `last_name` text DEFAULT NULL,
  `company` text DEFAULT NULL,
  `address_1` text DEFAULT NULL,
  `address_2` text DEFAULT NULL,
  `city` text DEFAULT NULL,
  `state` text DEFAULT NULL,
  `postcode` text DEFAULT NULL,
  `country` text DEFAULT NULL,
  `email` varchar(320) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `address_type_order_id` (`address_type`,`order_id`),
  KEY `order_id` (`order_id`),
  KEY `email` (`email`(191)),
  KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_order_addresses`
--

LOCK TABLES `wp_wc_order_addresses` WRITE;
/*!40000 ALTER TABLE `wp_wc_order_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_order_coupon_lookup`
--

DROP TABLE IF EXISTS `wp_wc_order_coupon_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_wc_order_coupon_lookup` (
  `order_id` bigint(20) unsigned NOT NULL,
  `coupon_id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`order_id`,`coupon_id`),
  KEY `coupon_id` (`coupon_id`),
  KEY `date_created` (`date_created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_order_coupon_lookup`
--

LOCK TABLES `wp_wc_order_coupon_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_order_coupon_lookup` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_order_coupon_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_order_operational_data`
--

DROP TABLE IF EXISTS `wp_wc_order_operational_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_wc_order_operational_data` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) unsigned DEFAULT NULL,
  `created_via` varchar(100) DEFAULT NULL,
  `woocommerce_version` varchar(20) DEFAULT NULL,
  `prices_include_tax` tinyint(1) DEFAULT NULL,
  `coupon_usages_are_counted` tinyint(1) DEFAULT NULL,
  `download_permission_granted` tinyint(1) DEFAULT NULL,
  `cart_hash` varchar(100) DEFAULT NULL,
  `new_order_email_sent` tinyint(1) DEFAULT NULL,
  `order_key` varchar(100) DEFAULT NULL,
  `order_stock_reduced` tinyint(1) DEFAULT NULL,
  `date_paid_gmt` datetime DEFAULT NULL,
  `date_completed_gmt` datetime DEFAULT NULL,
  `shipping_tax_amount` decimal(26,8) DEFAULT NULL,
  `shipping_total_amount` decimal(26,8) DEFAULT NULL,
  `discount_tax_amount` decimal(26,8) DEFAULT NULL,
  `discount_total_amount` decimal(26,8) DEFAULT NULL,
  `recorded_sales` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_id` (`order_id`),
  KEY `order_key` (`order_key`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_order_operational_data`
--

LOCK TABLES `wp_wc_order_operational_data` WRITE;
/*!40000 ALTER TABLE `wp_wc_order_operational_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_order_operational_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_order_product_lookup`
--

DROP TABLE IF EXISTS `wp_wc_order_product_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_wc_order_product_lookup` (
  `order_item_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `variation_id` bigint(20) unsigned NOT NULL,
  `customer_id` bigint(20) unsigned DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `product_qty` int(11) NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT 0,
  `product_gross_revenue` double NOT NULL DEFAULT 0,
  `coupon_amount` double NOT NULL DEFAULT 0,
  `tax_amount` double NOT NULL DEFAULT 0,
  `shipping_amount` double NOT NULL DEFAULT 0,
  `shipping_tax_amount` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`),
  KEY `customer_id` (`customer_id`),
  KEY `date_created` (`date_created`),
  KEY `customer_product_date` (`customer_id`,`product_id`,`date_created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_order_product_lookup`
--

LOCK TABLES `wp_wc_order_product_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_order_product_lookup` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_order_product_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_order_stats`
--

DROP TABLE IF EXISTS `wp_wc_order_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_wc_order_stats` (
  `order_id` bigint(20) unsigned NOT NULL,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_paid` datetime DEFAULT '0000-00-00 00:00:00',
  `date_completed` datetime DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int(11) NOT NULL DEFAULT 0,
  `total_sales` double NOT NULL DEFAULT 0,
  `tax_total` double NOT NULL DEFAULT 0,
  `shipping_total` double NOT NULL DEFAULT 0,
  `net_total` double NOT NULL DEFAULT 0,
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(200) NOT NULL,
  `customer_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `date_created` (`date_created`),
  KEY `customer_id` (`customer_id`),
  KEY `status` (`status`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_order_stats`
--

LOCK TABLES `wp_wc_order_stats` WRITE;
/*!40000 ALTER TABLE `wp_wc_order_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_order_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_order_tax_lookup`
--

DROP TABLE IF EXISTS `wp_wc_order_tax_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_wc_order_tax_lookup` (
  `order_id` bigint(20) unsigned NOT NULL,
  `tax_rate_id` bigint(20) unsigned NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT 0,
  `order_tax` double NOT NULL DEFAULT 0,
  `total_tax` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`order_id`,`tax_rate_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `date_created` (`date_created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_order_tax_lookup`
--

LOCK TABLES `wp_wc_order_tax_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_order_tax_lookup` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_order_tax_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_orders`
--

DROP TABLE IF EXISTS `wp_wc_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_wc_orders` (
  `id` bigint(20) unsigned NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `tax_amount` decimal(26,8) DEFAULT NULL,
  `total_amount` decimal(26,8) DEFAULT NULL,
  `customer_id` bigint(20) unsigned DEFAULT NULL,
  `billing_email` varchar(320) DEFAULT NULL,
  `date_created_gmt` datetime DEFAULT NULL,
  `date_updated_gmt` datetime DEFAULT NULL,
  `parent_order_id` bigint(20) unsigned DEFAULT NULL,
  `payment_method` varchar(100) DEFAULT NULL,
  `payment_method_title` text DEFAULT NULL,
  `transaction_id` varchar(100) DEFAULT NULL,
  `ip_address` varchar(100) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `customer_note` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `date_created` (`date_created_gmt`),
  KEY `customer_id_billing_email` (`customer_id`,`billing_email`(171)),
  KEY `billing_email` (`billing_email`(191)),
  KEY `type_status_date` (`type`,`status`,`date_created_gmt`),
  KEY `parent_order_id` (`parent_order_id`),
  KEY `date_updated` (`date_updated_gmt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_orders`
--

LOCK TABLES `wp_wc_orders` WRITE;
/*!40000 ALTER TABLE `wp_wc_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_orders_meta`
--

DROP TABLE IF EXISTS `wp_wc_orders_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_wc_orders_meta` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) unsigned DEFAULT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_key_value` (`meta_key`(100),`meta_value`(82)),
  KEY `order_id_meta_key_meta_value` (`order_id`,`meta_key`(100),`meta_value`(82))
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_orders_meta`
--

LOCK TABLES `wp_wc_orders_meta` WRITE;
/*!40000 ALTER TABLE `wp_wc_orders_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_orders_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_product_attributes_lookup`
--

DROP TABLE IF EXISTS `wp_wc_product_attributes_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_wc_product_attributes_lookup` (
  `product_id` bigint(20) NOT NULL,
  `product_or_parent_id` bigint(20) NOT NULL,
  `taxonomy` varchar(32) NOT NULL,
  `term_id` bigint(20) NOT NULL,
  `is_variation_attribute` tinyint(1) NOT NULL,
  `in_stock` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_or_parent_id`,`term_id`,`product_id`,`taxonomy`),
  KEY `is_variation_attribute_term_id` (`is_variation_attribute`,`term_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_product_attributes_lookup`
--

LOCK TABLES `wp_wc_product_attributes_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_product_attributes_lookup` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_product_attributes_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_product_download_directories`
--

DROP TABLE IF EXISTS `wp_wc_product_download_directories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_wc_product_download_directories` (
  `url_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(256) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`url_id`),
  KEY `url` (`url`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_product_download_directories`
--

LOCK TABLES `wp_wc_product_download_directories` WRITE;
/*!40000 ALTER TABLE `wp_wc_product_download_directories` DISABLE KEYS */;
INSERT INTO `wp_wc_product_download_directories` VALUES
(1,'file:///var/www/html/wp-content/uploads/woocommerce_uploads/',1),
(2,'http://192.168.171.132/wp-content/uploads/woocommerce_uploads/',1);
/*!40000 ALTER TABLE `wp_wc_product_download_directories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_product_meta_lookup`
--

DROP TABLE IF EXISTS `wp_wc_product_meta_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) DEFAULT '',
  `global_unique_id` varchar(100) DEFAULT '',
  `virtual` tinyint(1) DEFAULT 0,
  `downloadable` tinyint(1) DEFAULT 0,
  `min_price` decimal(19,4) DEFAULT NULL,
  `max_price` decimal(19,4) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT 0,
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT 0,
  `average_rating` decimal(3,2) DEFAULT 0.00,
  `total_sales` bigint(20) DEFAULT 0,
  `tax_status` varchar(100) DEFAULT 'taxable',
  `tax_class` varchar(100) DEFAULT '',
  PRIMARY KEY (`product_id`),
  KEY `virtual` (`virtual`),
  KEY `downloadable` (`downloadable`),
  KEY `stock_status` (`stock_status`),
  KEY `stock_quantity` (`stock_quantity`),
  KEY `onsale` (`onsale`),
  KEY `min_max_price` (`min_price`,`max_price`),
  KEY `sku` (`sku`(50))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_product_meta_lookup`
--

LOCK TABLES `wp_wc_product_meta_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_product_meta_lookup` DISABLE KEYS */;
INSERT INTO `wp_wc_product_meta_lookup` VALUES
(82,'','',0,0,1999.0000,1999.0000,0,NULL,'instock',0,0.00,0,'taxable',''),
(83,'','',0,0,1999.0000,1999.0000,0,NULL,'instock',0,0.00,0,'taxable',''),
(84,'','',0,0,4999.0000,4999.0000,0,NULL,'instock',0,0.00,0,'taxable',''),
(85,'','',0,0,4999.0000,4999.0000,0,NULL,'instock',0,0.00,0,'taxable',''),
(86,'','',0,0,2499.0000,2499.0000,0,NULL,'instock',0,0.00,0,'taxable',''),
(87,'','',0,0,1999.0000,1999.0000,0,NULL,'instock',0,0.00,0,'taxable',''),
(88,'','',0,0,3999.0000,3999.0000,0,NULL,'instock',0,0.00,0,'taxable',''),
(89,'','',0,0,1499.0000,1499.0000,0,NULL,'instock',0,0.00,0,'taxable','');
/*!40000 ALTER TABLE `wp_wc_product_meta_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_rate_limits`
--

DROP TABLE IF EXISTS `wp_wc_rate_limits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_wc_rate_limits` (
  `rate_limit_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rate_limit_key` varchar(200) NOT NULL,
  `rate_limit_expiry` bigint(20) unsigned NOT NULL,
  `rate_limit_remaining` smallint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`rate_limit_id`),
  UNIQUE KEY `rate_limit_key` (`rate_limit_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_rate_limits`
--

LOCK TABLES `wp_wc_rate_limits` WRITE;
/*!40000 ALTER TABLE `wp_wc_rate_limits` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_rate_limits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_reserved_stock`
--

DROP TABLE IF EXISTS `wp_wc_reserved_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_wc_reserved_stock` (
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `stock_quantity` double NOT NULL DEFAULT 0,
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expires` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`order_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_reserved_stock`
--

LOCK TABLES `wp_wc_reserved_stock` WRITE;
/*!40000 ALTER TABLE `wp_wc_reserved_stock` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_reserved_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_tax_rate_classes`
--

DROP TABLE IF EXISTS `wp_wc_tax_rate_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_class_id`),
  UNIQUE KEY `slug` (`slug`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_tax_rate_classes`
--

LOCK TABLES `wp_wc_tax_rate_classes` WRITE;
/*!40000 ALTER TABLE `wp_wc_tax_rate_classes` DISABLE KEYS */;
INSERT INTO `wp_wc_tax_rate_classes` VALUES
(1,'Пониженная ставка','%d0%bf%d0%be%d0%bd%d0%b8%d0%b6%d0%b5%d0%bd%d0%bd%d0%b0%d1%8f-%d1%81%d1%82%d0%b0%d0%b2%d0%ba%d0%b0'),
(2,'Нулевая ставка','%d0%bd%d1%83%d0%bb%d0%b5%d0%b2%d0%b0%d1%8f-%d1%81%d1%82%d0%b0%d0%b2%d0%ba%d0%b0');
/*!40000 ALTER TABLE `wp_wc_tax_rate_classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_webhooks`
--

DROP TABLE IF EXISTS `wp_wc_webhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(200) NOT NULL,
  `name` text NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `delivery_url` text NOT NULL,
  `secret` text NOT NULL,
  `topic` varchar(200) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT 0,
  `pending_delivery` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`webhook_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_webhooks`
--

LOCK TABLES `wp_wc_webhooks` WRITE;
/*!40000 ALTER TABLE `wp_wc_webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_webhooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_api_keys`
--

DROP TABLE IF EXISTS `wp_woocommerce_api_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `permissions` varchar(10) NOT NULL,
  `consumer_key` char(64) NOT NULL,
  `consumer_secret` char(43) NOT NULL,
  `nonces` longtext DEFAULT NULL,
  `truncated_key` char(7) NOT NULL,
  `last_access` datetime DEFAULT NULL,
  PRIMARY KEY (`key_id`),
  KEY `consumer_key` (`consumer_key`),
  KEY `consumer_secret` (`consumer_secret`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_api_keys`
--

LOCK TABLES `wp_woocommerce_api_keys` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_api_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_api_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

DROP TABLE IF EXISTS `wp_woocommerce_attribute_taxonomies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(200) NOT NULL,
  `attribute_label` varchar(200) DEFAULT NULL,
  `attribute_type` varchar(20) NOT NULL,
  `attribute_orderby` varchar(20) NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`attribute_id`),
  KEY `attribute_name` (`attribute_name`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_attribute_taxonomies`
--

LOCK TABLES `wp_woocommerce_attribute_taxonomies` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_attribute_taxonomies` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_attribute_taxonomies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

DROP TABLE IF EXISTS `wp_woocommerce_downloadable_product_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `download_id` varchar(36) NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `order_key` varchar(200) NOT NULL,
  `user_email` varchar(200) NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `downloads_remaining` varchar(9) DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`permission_id`),
  KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  KEY `order_id` (`order_id`),
  KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_downloadable_product_permissions`
--

LOCK TABLES `wp_woocommerce_downloadable_product_permissions` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_downloadable_product_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_downloadable_product_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_log`
--

DROP TABLE IF EXISTS `wp_woocommerce_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) NOT NULL,
  `message` longtext NOT NULL,
  `context` longtext DEFAULT NULL,
  PRIMARY KEY (`log_id`),
  KEY `level` (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_log`
--

LOCK TABLES `wp_woocommerce_log` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

DROP TABLE IF EXISTS `wp_woocommerce_order_itemmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_order_itemmeta`
--

LOCK TABLES `wp_woocommerce_order_itemmeta` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_order_itemmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_order_itemmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_order_items`
--

DROP TABLE IF EXISTS `wp_woocommerce_order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_name` text NOT NULL,
  `order_item_type` varchar(200) NOT NULL DEFAULT '',
  `order_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_order_items`
--

LOCK TABLES `wp_woocommerce_order_items` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_order_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

DROP TABLE IF EXISTS `wp_woocommerce_payment_tokenmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `payment_token_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `payment_token_id` (`payment_token_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_payment_tokenmeta`
--

LOCK TABLES `wp_woocommerce_payment_tokenmeta` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokenmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokenmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

DROP TABLE IF EXISTS `wp_woocommerce_payment_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gateway_id` varchar(200) NOT NULL,
  `token` text NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `type` varchar(200) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`token_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_payment_tokens`
--

LOCK TABLES `wp_woocommerce_payment_tokens` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_sessions`
--

DROP TABLE IF EXISTS `wp_woocommerce_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `session_key` char(32) NOT NULL,
  `session_value` longtext NOT NULL,
  `session_expiry` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`session_id`),
  UNIQUE KEY `session_key` (`session_key`)
) ENGINE=InnoDB AUTO_INCREMENT=244 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

LOCK TABLES `wp_woocommerce_sessions` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_sessions` DISABLE KEYS */;
INSERT INTO `wp_woocommerce_sessions` VALUES
(24,'5','a:7:{s:8:\"customer\";s:942:\"a:28:{s:2:\"id\";s:1:\"5\";s:13:\"date_modified\";s:25:\"2025-08-26T22:58:39+00:00\";s:10:\"first_name\";s:8:\"Иван\";s:9:\"last_name\";s:12:\"Петров\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:21:\"ivan.petrov@yandex.ru\";s:7:\"address\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:7:\"country\";s:2:\"RU\";s:19:\"shipping_first_name\";s:8:\"Иван\";s:18:\"shipping_last_name\";s:12:\"Петров\";s:16:\"shipping_company\";s:0:\"\";s:14:\"shipping_phone\";s:0:\"\";s:16:\"shipping_address\";s:40:\"ул. Тверская, д. 12, кв. 45\";s:18:\"shipping_address_1\";s:40:\"ул. Тверская, д. 12, кв. 45\";s:18:\"shipping_address_2\";s:0:\"\";s:13:\"shipping_city\";s:12:\"Москва\";s:14:\"shipping_state\";s:12:\"Москва\";s:17:\"shipping_postcode\";s:6:\"125009\";s:16:\"shipping_country\";s:2:\"RU\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:9:\"meta_data\";a:0:{}}\";s:22:\"shipping_for_package_0\";s:566:\"a:2:{s:12:\"package_hash\";s:40:\"wc_ship_157773b5e841fb1c08befd225eb82081\";s:5:\"rates\";a:1:{s:15:\"free_shipping:1\";O:16:\"WC_Shipping_Rate\":2:{s:7:\"\0*\0data\";a:9:{s:2:\"id\";s:15:\"free_shipping:1\";s:9:\"method_id\";s:13:\"free_shipping\";s:11:\"instance_id\";i:1;s:5:\"label\";s:13:\"Free shipping\";s:4:\"cost\";s:1:\"0\";s:5:\"taxes\";a:0:{}s:10:\"tax_status\";s:7:\"taxable\";s:11:\"description\";s:0:\"\";s:13:\"delivery_time\";s:0:\"\";}s:12:\"\0*\0meta_data\";a:1:{s:12:\"Товары\";s:100:\"Кружка &times; 1, Свитер синий &times; 1, Плюшевая альпака &times; 1\";}}}}\";s:25:\"previous_shipping_methods\";s:43:\"a:1:{i:0;a:1:{i:0;s:15:\"free_shipping:1\";}}\";s:23:\"chosen_shipping_methods\";s:33:\"a:1:{i:0;s:15:\"free_shipping:1\";}\";s:22:\"shipping_method_counts\";s:14:\"a:1:{i:0;i:1;}\";s:11:\"cart_totals\";s:402:\"a:15:{s:8:\"subtotal\";s:5:\"11497\";s:12:\"subtotal_tax\";d:0;s:14:\"shipping_total\";s:1:\"0\";s:12:\"shipping_tax\";d:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";d:0;s:12:\"discount_tax\";d:0;s:19:\"cart_contents_total\";s:5:\"11497\";s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:1:\"0\";s:7:\"fee_tax\";d:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:8:\"11497.00\";s:9:\"total_tax\";d:0;}\";s:4:\"cart\";s:1230:\"a:3:{s:32:\"93db85ed909c13838ff95ccfa94cebd9\";a:11:{s:3:\"key\";s:32:\"93db85ed909c13838ff95ccfa94cebd9\";s:10:\"product_id\";i:86;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:2499;s:17:\"line_subtotal_tax\";d:0;s:10:\"line_total\";d:2499;s:8:\"line_tax\";d:0;}s:32:\"68d30a9594728bc39aa24be94b319d21\";a:11:{s:3:\"key\";s:32:\"68d30a9594728bc39aa24be94b319d21\";s:10:\"product_id\";i:84;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:4999;s:17:\"line_subtotal_tax\";d:0;s:10:\"line_total\";d:4999;s:8:\"line_tax\";d:0;}s:32:\"2a38a4a9316c49e5a833517c45d31070\";a:11:{s:3:\"key\";s:32:\"2a38a4a9316c49e5a833517c45d31070\";s:10:\"product_id\";i:88;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:3999;s:17:\"line_subtotal_tax\";d:0;s:10:\"line_total\";d:3999;s:8:\"line_tax\";d:0;}}\";}',1758554458),
(30,'6','a:7:{s:8:\"customer\";s:1037:\"a:28:{s:2:\"id\";s:1:\"6\";s:13:\"date_modified\";s:25:\"2025-08-26T23:00:26+00:00\";s:10:\"first_name\";s:8:\"Анна\";s:9:\"last_name\";s:16:\"Смирнова\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:23:\"anna.smirnova@gmail.com\";s:7:\"address\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:7:\"country\";s:2:\"RU\";s:19:\"shipping_first_name\";s:8:\"Анна\";s:18:\"shipping_last_name\";s:16:\"Смирнова\";s:16:\"shipping_company\";s:0:\"\";s:14:\"shipping_phone\";s:0:\"\";s:16:\"shipping_address\";s:49:\"Невский проспект, д. 90, кв. 12\";s:18:\"shipping_address_1\";s:49:\"Невский проспект, д. 90, кв. 12\";s:18:\"shipping_address_2\";s:28:\"подъезд 2, этаж 3\";s:13:\"shipping_city\";s:31:\"Санкт‑Петербург\";s:14:\"shipping_state\";s:31:\"Санкт‑Петербург\";s:17:\"shipping_postcode\";s:6:\"191186\";s:16:\"shipping_country\";s:2:\"RU\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:9:\"meta_data\";a:0:{}}\";s:22:\"shipping_for_package_0\";s:563:\"a:2:{s:12:\"package_hash\";s:40:\"wc_ship_7a731081c8d6ddb28761389c912a3c8f\";s:5:\"rates\";a:1:{s:15:\"free_shipping:1\";O:16:\"WC_Shipping_Rate\":2:{s:7:\"\0*\0data\";a:9:{s:2:\"id\";s:15:\"free_shipping:1\";s:9:\"method_id\";s:13:\"free_shipping\";s:11:\"instance_id\";i:1;s:5:\"label\";s:13:\"Free shipping\";s:4:\"cost\";s:1:\"0\";s:5:\"taxes\";a:0:{}s:10:\"tax_status\";s:7:\"taxable\";s:11:\"description\";s:0:\"\";s:13:\"delivery_time\";s:0:\"\";}s:12:\"\0*\0meta_data\";a:1:{s:12:\"Товары\";s:98:\"Кепка &times; 1, Плюшевая альпака &times; 1, Свитер синий &times; 1\";}}}}\";s:25:\"previous_shipping_methods\";s:43:\"a:1:{i:0;a:1:{i:0;s:15:\"free_shipping:1\";}}\";s:23:\"chosen_shipping_methods\";s:33:\"a:1:{i:0;s:15:\"free_shipping:1\";}\";s:22:\"shipping_method_counts\";s:14:\"a:1:{i:0;i:1;}\";s:11:\"cart_totals\";s:402:\"a:15:{s:8:\"subtotal\";s:5:\"10997\";s:12:\"subtotal_tax\";d:0;s:14:\"shipping_total\";s:1:\"0\";s:12:\"shipping_tax\";d:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";d:0;s:12:\"discount_tax\";d:0;s:19:\"cart_contents_total\";s:5:\"10997\";s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:1:\"0\";s:7:\"fee_tax\";d:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:8:\"10997.00\";s:9:\"total_tax\";d:0;}\";s:4:\"cart\";s:1230:\"a:3:{s:32:\"c7e1249ffc03eb9ded908c236bd1996d\";a:11:{s:3:\"key\";s:32:\"c7e1249ffc03eb9ded908c236bd1996d\";s:10:\"product_id\";i:87;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:1999;s:17:\"line_subtotal_tax\";d:0;s:10:\"line_total\";d:1999;s:8:\"line_tax\";d:0;}s:32:\"2a38a4a9316c49e5a833517c45d31070\";a:11:{s:3:\"key\";s:32:\"2a38a4a9316c49e5a833517c45d31070\";s:10:\"product_id\";i:88;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:3999;s:17:\"line_subtotal_tax\";d:0;s:10:\"line_total\";d:3999;s:8:\"line_tax\";d:0;}s:32:\"68d30a9594728bc39aa24be94b319d21\";a:11:{s:3:\"key\";s:32:\"68d30a9594728bc39aa24be94b319d21\";s:10:\"product_id\";i:84;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:4999;s:17:\"line_subtotal_tax\";d:0;s:10:\"line_total\";d:4999;s:8:\"line_tax\";d:0;}}\";}',1758554505),
(36,'7','a:7:{s:8:\"customer\";s:1048:\"a:28:{s:2:\"id\";s:1:\"7\";s:13:\"date_modified\";s:25:\"2025-08-26T23:01:58+00:00\";s:10:\"first_name\";s:12:\"Сергей\";s:9:\"last_name\";s:12:\"Иванов\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:21:\"sergey.ivanov@mail.ru\";s:7:\"address\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:7:\"country\";s:2:\"RU\";s:19:\"shipping_first_name\";s:12:\"Сергей\";s:18:\"shipping_last_name\";s:12:\"Иванов\";s:16:\"shipping_company\";s:0:\"\";s:14:\"shipping_phone\";s:0:\"\";s:16:\"shipping_address\";s:54:\"ул. Красный проспект, д. 35, кв. 8\";s:18:\"shipping_address_1\";s:54:\"ул. Красный проспект, д. 35, кв. 8\";s:18:\"shipping_address_2\";s:28:\"подъезд 1, этаж 2\";s:13:\"shipping_city\";s:22:\"Новосибирск\";s:14:\"shipping_state\";s:41:\"Новосибирская область\";s:17:\"shipping_postcode\";s:6:\"630099\";s:16:\"shipping_country\";s:2:\"RU\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:9:\"meta_data\";a:0:{}}\";s:22:\"shipping_for_package_0\";s:528:\"a:2:{s:12:\"package_hash\";s:40:\"wc_ship_8233c927d301469afe3c9e1bb86b078a\";s:5:\"rates\";a:1:{s:15:\"free_shipping:1\";O:16:\"WC_Shipping_Rate\":2:{s:7:\"\0*\0data\";a:9:{s:2:\"id\";s:15:\"free_shipping:1\";s:9:\"method_id\";s:13:\"free_shipping\";s:11:\"instance_id\";i:1;s:5:\"label\";s:13:\"Free shipping\";s:4:\"cost\";s:1:\"0\";s:5:\"taxes\";a:0:{}s:10:\"tax_status\";s:7:\"taxable\";s:11:\"description\";s:0:\"\";s:13:\"delivery_time\";s:0:\"\";}s:12:\"\0*\0meta_data\";a:1:{s:12:\"Товары\";s:63:\"Носки &times; 1, Футболка зеленая &times; 1\";}}}}\";s:25:\"previous_shipping_methods\";s:43:\"a:1:{i:0;a:1:{i:0;s:15:\"free_shipping:1\";}}\";s:23:\"chosen_shipping_methods\";s:33:\"a:1:{i:0;s:15:\"free_shipping:1\";}\";s:22:\"shipping_method_counts\";s:14:\"a:1:{i:0;i:1;}\";s:11:\"cart_totals\";s:399:\"a:15:{s:8:\"subtotal\";s:4:\"3498\";s:12:\"subtotal_tax\";d:0;s:14:\"shipping_total\";s:1:\"0\";s:12:\"shipping_tax\";d:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";d:0;s:12:\"discount_tax\";d:0;s:19:\"cart_contents_total\";s:4:\"3498\";s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:1:\"0\";s:7:\"fee_tax\";d:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:7:\"3498.00\";s:9:\"total_tax\";d:0;}\";s:4:\"cart\";s:1079:\"a:2:{s:32:\"7647966b7343c29048673252e490f736\";a:12:{s:3:\"key\";s:32:\"7647966b7343c29048673252e490f736\";s:10:\"product_id\";i:89;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:15:\"tinvwl_formdata\";a:1:{s:15:\"success_message\";s:58:\"«Носки» добавлен в вашу корзину\";}s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:1499;s:17:\"line_subtotal_tax\";d:0;s:10:\"line_total\";d:1499;s:8:\"line_tax\";d:0;}s:32:\"fe9fc289c3ff0af142b6d3bead98a923\";a:12:{s:3:\"key\";s:32:\"fe9fc289c3ff0af142b6d3bead98a923\";s:10:\"product_id\";i:83;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:15:\"tinvwl_formdata\";a:1:{s:15:\"success_message\";s:79:\"«Футболка зеленая» добавлен в вашу корзину\";}s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:1999;s:17:\"line_subtotal_tax\";d:0;s:10:\"line_total\";d:1999;s:8:\"line_tax\";d:0;}}\";}',1758554664),
(42,'8','a:7:{s:8:\"customer\";s:1002:\"a:28:{s:2:\"id\";s:1:\"8\";s:13:\"date_modified\";s:25:\"2025-08-26T23:03:15+00:00\";s:10:\"first_name\";s:10:\"Мария\";s:9:\"last_name\";s:18:\"Кузнецова\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:28:\"maria.kuznetsova@outlook.com\";s:7:\"address\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:7:\"country\";s:2:\"RU\";s:19:\"shipping_first_name\";s:10:\"Мария\";s:18:\"shipping_last_name\";s:18:\"Кузнецова\";s:16:\"shipping_company\";s:0:\"\";s:14:\"shipping_phone\";s:0:\"\";s:16:\"shipping_address\";s:38:\"ул. Вайнера, д. 16, кв. 27\";s:18:\"shipping_address_1\";s:38:\"ул. Вайнера, д. 16, кв. 27\";s:18:\"shipping_address_2\";s:0:\"\";s:13:\"shipping_city\";s:24:\"Екатеринбург\";s:14:\"shipping_state\";s:39:\"Свердловская область\";s:17:\"shipping_postcode\";s:6:\"620014\";s:16:\"shipping_country\";s:2:\"RU\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:9:\"meta_data\";a:0:{}}\";s:22:\"shipping_for_package_0\";s:727:\"a:2:{s:12:\"package_hash\";s:40:\"wc_ship_666b70d5663435bb21f1c80bc9d21289\";s:5:\"rates\";a:1:{s:15:\"free_shipping:1\";O:16:\"WC_Shipping_Rate\":2:{s:7:\"\0*\0data\";a:9:{s:2:\"id\";s:15:\"free_shipping:1\";s:9:\"method_id\";s:13:\"free_shipping\";s:11:\"instance_id\";i:1;s:5:\"label\";s:13:\"Free shipping\";s:4:\"cost\";s:1:\"0\";s:5:\"taxes\";a:0:{}s:10:\"tax_status\";s:7:\"taxable\";s:11:\"description\";s:0:\"\";s:13:\"delivery_time\";s:0:\"\";}s:12:\"\0*\0meta_data\";a:1:{s:12:\"Товары\";s:261:\"Кепка &times; 1, Свитер серый &times; 1, Футболка зеленая &times; 1, Свитер синий &times; 1, Футболка белая &times; 1, Плюшевая альпака &times; 1, Носки &times; 1, Кружка &times; 2\";}}}}\";s:25:\"previous_shipping_methods\";s:43:\"a:1:{i:0;a:1:{i:0;s:15:\"free_shipping:1\";}}\";s:23:\"chosen_shipping_methods\";s:33:\"a:1:{i:0;s:15:\"free_shipping:1\";}\";s:22:\"shipping_method_counts\";s:14:\"a:1:{i:0;i:1;}\";s:11:\"cart_totals\";s:402:\"a:15:{s:8:\"subtotal\";s:5:\"26491\";s:12:\"subtotal_tax\";d:0;s:14:\"shipping_total\";s:1:\"0\";s:12:\"shipping_tax\";d:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";d:0;s:12:\"discount_tax\";d:0;s:19:\"cart_contents_total\";s:5:\"26491\";s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:1:\"0\";s:7:\"fee_tax\";d:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:8:\"26491.00\";s:9:\"total_tax\";d:0;}\";s:4:\"cart\";s:4301:\"a:8:{s:32:\"c7e1249ffc03eb9ded908c236bd1996d\";a:12:{s:3:\"key\";s:32:\"c7e1249ffc03eb9ded908c236bd1996d\";s:10:\"product_id\";i:87;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:15:\"tinvwl_formdata\";a:1:{s:15:\"success_message\";s:58:\"«Кепка» добавлен в вашу корзину\";}s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:1999;s:17:\"line_subtotal_tax\";d:0;s:10:\"line_total\";d:1999;s:8:\"line_tax\";d:0;}s:32:\"3ef815416f775098fe977004015c6193\";a:12:{s:3:\"key\";s:32:\"3ef815416f775098fe977004015c6193\";s:10:\"product_id\";i:85;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:15:\"tinvwl_formdata\";a:1:{s:15:\"success_message\";s:71:\"«Свитер серый» добавлен в вашу корзину\";}s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:4999;s:17:\"line_subtotal_tax\";d:0;s:10:\"line_total\";d:4999;s:8:\"line_tax\";d:0;}s:32:\"fe9fc289c3ff0af142b6d3bead98a923\";a:12:{s:3:\"key\";s:32:\"fe9fc289c3ff0af142b6d3bead98a923\";s:10:\"product_id\";i:83;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:15:\"tinvwl_formdata\";a:1:{s:15:\"success_message\";s:79:\"«Футболка зеленая» добавлен в вашу корзину\";}s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:1999;s:17:\"line_subtotal_tax\";d:0;s:10:\"line_total\";d:1999;s:8:\"line_tax\";d:0;}s:32:\"68d30a9594728bc39aa24be94b319d21\";a:12:{s:3:\"key\";s:32:\"68d30a9594728bc39aa24be94b319d21\";s:10:\"product_id\";i:84;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:15:\"tinvwl_formdata\";a:1:{s:15:\"success_message\";s:71:\"«Свитер синий» добавлен в вашу корзину\";}s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:4999;s:17:\"line_subtotal_tax\";d:0;s:10:\"line_total\";d:4999;s:8:\"line_tax\";d:0;}s:32:\"9778d5d219c5080b9a6a17bef029331c\";a:12:{s:3:\"key\";s:32:\"9778d5d219c5080b9a6a17bef029331c\";s:10:\"product_id\";i:82;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:15:\"tinvwl_formdata\";a:1:{s:15:\"success_message\";s:75:\"«Футболка белая» добавлен в вашу корзину\";}s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:1999;s:17:\"line_subtotal_tax\";d:0;s:10:\"line_total\";d:1999;s:8:\"line_tax\";d:0;}s:32:\"2a38a4a9316c49e5a833517c45d31070\";a:12:{s:3:\"key\";s:32:\"2a38a4a9316c49e5a833517c45d31070\";s:10:\"product_id\";i:88;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:15:\"tinvwl_formdata\";a:1:{s:15:\"success_message\";s:79:\"«Плюшевая альпака» добавлен в вашу корзину\";}s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:3999;s:17:\"line_subtotal_tax\";d:0;s:10:\"line_total\";d:3999;s:8:\"line_tax\";d:0;}s:32:\"7647966b7343c29048673252e490f736\";a:12:{s:3:\"key\";s:32:\"7647966b7343c29048673252e490f736\";s:10:\"product_id\";i:89;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:15:\"tinvwl_formdata\";a:1:{s:15:\"success_message\";s:58:\"«Носки» добавлен в вашу корзину\";}s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:1499;s:17:\"line_subtotal_tax\";d:0;s:10:\"line_total\";d:1499;s:8:\"line_tax\";d:0;}s:32:\"93db85ed909c13838ff95ccfa94cebd9\";a:12:{s:3:\"key\";s:32:\"93db85ed909c13838ff95ccfa94cebd9\";s:10:\"product_id\";i:86;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:2;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:15:\"tinvwl_formdata\";a:1:{s:15:\"success_message\";s:60:\"«Кружка» добавлен в вашу корзину\";}s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:4998;s:17:\"line_subtotal_tax\";d:0;s:10:\"line_total\";d:4998;s:8:\"line_tax\";d:0;}}\";}',1758554748),
(48,'9','a:7:{s:8:\"customer\";s:986:\"a:28:{s:2:\"id\";s:1:\"9\";s:13:\"date_modified\";s:25:\"2025-08-26T23:05:03+00:00\";s:10:\"first_name\";s:14:\"Дмитрий\";s:9:\"last_name\";s:14:\"Соколов\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:24:\"dmitry.sokolov@yandex.ru\";s:7:\"address\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:7:\"country\";s:2:\"RU\";s:19:\"shipping_first_name\";s:14:\"Дмитрий\";s:18:\"shipping_last_name\";s:14:\"Соколов\";s:16:\"shipping_company\";s:0:\"\";s:14:\"shipping_phone\";s:0:\"\";s:16:\"shipping_address\";s:38:\"ул. Баумана, д. 54, кв. 19\";s:18:\"shipping_address_1\";s:38:\"ул. Баумана, д. 54, кв. 19\";s:18:\"shipping_address_2\";s:0:\"\";s:13:\"shipping_city\";s:12:\"Казань\";s:14:\"shipping_state\";s:39:\"Республика Татарстан\";s:17:\"shipping_postcode\";s:6:\"420111\";s:16:\"shipping_country\";s:2:\"RU\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:9:\"meta_data\";a:0:{}}\";s:22:\"shipping_for_package_0\";s:545:\"a:2:{s:12:\"package_hash\";s:40:\"wc_ship_a8a2780e914d809498b096dd82d13212\";s:5:\"rates\";a:1:{s:15:\"free_shipping:1\";O:16:\"WC_Shipping_Rate\":2:{s:7:\"\0*\0data\";a:9:{s:2:\"id\";s:15:\"free_shipping:1\";s:9:\"method_id\";s:13:\"free_shipping\";s:11:\"instance_id\";i:1;s:5:\"label\";s:13:\"Free shipping\";s:4:\"cost\";s:1:\"0\";s:5:\"taxes\";a:0:{}s:10:\"tax_status\";s:7:\"taxable\";s:11:\"description\";s:0:\"\";s:13:\"delivery_time\";s:0:\"\";}s:12:\"\0*\0meta_data\";a:1:{s:12:\"Товары\";s:80:\"Футболка зеленая &times; 1, Футболка белая &times; 1\";}}}}\";s:25:\"previous_shipping_methods\";s:43:\"a:1:{i:0;a:1:{i:0;s:15:\"free_shipping:1\";}}\";s:23:\"chosen_shipping_methods\";s:33:\"a:1:{i:0;s:15:\"free_shipping:1\";}\";s:22:\"shipping_method_counts\";s:14:\"a:1:{i:0;i:1;}\";s:11:\"cart_totals\";s:399:\"a:15:{s:8:\"subtotal\";s:4:\"3998\";s:12:\"subtotal_tax\";d:0;s:14:\"shipping_total\";s:1:\"0\";s:12:\"shipping_tax\";d:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";d:0;s:12:\"discount_tax\";d:0;s:19:\"cart_contents_total\";s:4:\"3998\";s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:1:\"0\";s:7:\"fee_tax\";d:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:7:\"3998.00\";s:9:\"total_tax\";d:0;}\";s:4:\"cart\";s:1096:\"a:2:{s:32:\"fe9fc289c3ff0af142b6d3bead98a923\";a:12:{s:3:\"key\";s:32:\"fe9fc289c3ff0af142b6d3bead98a923\";s:10:\"product_id\";i:83;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:15:\"tinvwl_formdata\";a:1:{s:15:\"success_message\";s:79:\"«Футболка зеленая» добавлен в вашу корзину\";}s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:1999;s:17:\"line_subtotal_tax\";d:0;s:10:\"line_total\";d:1999;s:8:\"line_tax\";d:0;}s:32:\"9778d5d219c5080b9a6a17bef029331c\";a:12:{s:3:\"key\";s:32:\"9778d5d219c5080b9a6a17bef029331c\";s:10:\"product_id\";i:82;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:15:\"tinvwl_formdata\";a:1:{s:15:\"success_message\";s:75:\"«Футболка белая» добавлен в вашу корзину\";}s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:1999;s:17:\"line_subtotal_tax\";d:0;s:10:\"line_total\";d:1999;s:8:\"line_tax\";d:0;}}\";}',1758554807),
(54,'10','a:7:{s:8:\"customer\";s:1052:\"a:28:{s:2:\"id\";s:2:\"10\";s:13:\"date_modified\";s:25:\"2025-08-26T23:06:02+00:00\";s:10:\"first_name\";s:18:\"Екатерина\";s:9:\"last_name\";s:12:\"Попова\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:26:\"ekaterina.popova@gmail.com\";s:7:\"address\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:7:\"country\";s:2:\"RU\";s:19:\"shipping_first_name\";s:18:\"Екатерина\";s:18:\"shipping_last_name\";s:12:\"Попова\";s:16:\"shipping_company\";s:0:\"\";s:14:\"shipping_phone\";s:0:\"\";s:16:\"shipping_address\";s:58:\"ул. Большая Покровская, д. 25, кв. 7\";s:18:\"shipping_address_1\";s:58:\"ул. Большая Покровская, д. 25, кв. 7\";s:18:\"shipping_address_2\";s:0:\"\";s:13:\"shipping_city\";s:29:\"Нижний Новгород\";s:14:\"shipping_state\";s:41:\"Нижегородская область\";s:17:\"shipping_postcode\";s:6:\"603005\";s:16:\"shipping_country\";s:2:\"RU\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:9:\"meta_data\";a:0:{}}\";s:22:\"shipping_for_package_0\";s:555:\"a:2:{s:12:\"package_hash\";s:40:\"wc_ship_5cf923e6dafbf0a4dadbe32dcd8bd232\";s:5:\"rates\";a:1:{s:15:\"free_shipping:1\";O:16:\"WC_Shipping_Rate\":2:{s:7:\"\0*\0data\";a:9:{s:2:\"id\";s:15:\"free_shipping:1\";s:9:\"method_id\";s:13:\"free_shipping\";s:11:\"instance_id\";i:1;s:5:\"label\";s:13:\"Free shipping\";s:4:\"cost\";s:1:\"0\";s:5:\"taxes\";a:0:{}s:10:\"tax_status\";s:7:\"taxable\";s:11:\"description\";s:0:\"\";s:13:\"delivery_time\";s:0:\"\";}s:12:\"\0*\0meta_data\";a:1:{s:12:\"Товары\";s:90:\"Кепка &times; 1, Свитер серый &times; 1, Свитер синий &times; 1\";}}}}\";s:25:\"previous_shipping_methods\";s:43:\"a:1:{i:0;a:1:{i:0;s:15:\"free_shipping:1\";}}\";s:23:\"chosen_shipping_methods\";s:33:\"a:1:{i:0;s:15:\"free_shipping:1\";}\";s:22:\"shipping_method_counts\";s:14:\"a:1:{i:0;i:1;}\";s:11:\"cart_totals\";s:402:\"a:15:{s:8:\"subtotal\";s:5:\"11997\";s:12:\"subtotal_tax\";d:0;s:14:\"shipping_total\";s:1:\"0\";s:12:\"shipping_tax\";d:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";d:0;s:12:\"discount_tax\";d:0;s:19:\"cart_contents_total\";s:5:\"11997\";s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:1:\"0\";s:7:\"fee_tax\";d:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:8:\"11997.00\";s:9:\"total_tax\";d:0;}\";s:4:\"cart\";s:1230:\"a:3:{s:32:\"c7e1249ffc03eb9ded908c236bd1996d\";a:11:{s:3:\"key\";s:32:\"c7e1249ffc03eb9ded908c236bd1996d\";s:10:\"product_id\";i:87;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:1999;s:17:\"line_subtotal_tax\";d:0;s:10:\"line_total\";d:1999;s:8:\"line_tax\";d:0;}s:32:\"3ef815416f775098fe977004015c6193\";a:11:{s:3:\"key\";s:32:\"3ef815416f775098fe977004015c6193\";s:10:\"product_id\";i:85;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:4999;s:17:\"line_subtotal_tax\";d:0;s:10:\"line_total\";d:4999;s:8:\"line_tax\";d:0;}s:32:\"68d30a9594728bc39aa24be94b319d21\";a:11:{s:3:\"key\";s:32:\"68d30a9594728bc39aa24be94b319d21\";s:10:\"product_id\";i:84;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:4999;s:17:\"line_subtotal_tax\";d:0;s:10:\"line_total\";d:4999;s:8:\"line_tax\";d:0;}}\";}',1758556251),
(60,'11','a:7:{s:8:\"customer\";s:989:\"a:28:{s:2:\"id\";s:2:\"11\";s:13:\"date_modified\";s:25:\"2025-08-26T23:06:51+00:00\";s:10:\"first_name\";s:14:\"Алексей\";s:9:\"last_name\";s:14:\"Морозов\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:22:\"alexey.morozov@mail.ru\";s:7:\"address\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:7:\"country\";s:2:\"RU\";s:19:\"shipping_first_name\";s:14:\"Алексей\";s:18:\"shipping_last_name\";s:14:\"Морозов\";s:16:\"shipping_company\";s:0:\"\";s:14:\"shipping_phone\";s:0:\"\";s:16:\"shipping_address\";s:38:\"пр-т Ленина, д. 59, кв. 14\";s:18:\"shipping_address_1\";s:38:\"пр-т Ленина, д. 59, кв. 14\";s:18:\"shipping_address_2\";s:0:\"\";s:13:\"shipping_city\";s:18:\"Челябинск\";s:14:\"shipping_state\";s:37:\"Челябинская область\";s:17:\"shipping_postcode\";s:6:\"454091\";s:16:\"shipping_country\";s:2:\"RU\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:9:\"meta_data\";a:0:{}}\";s:22:\"shipping_for_package_0\";s:660:\"a:2:{s:12:\"package_hash\";s:40:\"wc_ship_3f376fce7965c3540f3315b4188f2c48\";s:5:\"rates\";a:1:{s:15:\"free_shipping:1\";O:16:\"WC_Shipping_Rate\":2:{s:7:\"\0*\0data\";a:9:{s:2:\"id\";s:15:\"free_shipping:1\";s:9:\"method_id\";s:13:\"free_shipping\";s:11:\"instance_id\";i:1;s:5:\"label\";s:13:\"Free shipping\";s:4:\"cost\";s:1:\"0\";s:5:\"taxes\";a:0:{}s:10:\"tax_status\";s:7:\"taxable\";s:11:\"description\";s:0:\"\";s:13:\"delivery_time\";s:0:\"\";}s:12:\"\0*\0meta_data\";a:1:{s:12:\"Товары\";s:194:\"Носки &times; 1, Футболка белая &times; 1, Плюшевая альпака &times; 1, Кепка &times; 1, Свитер синий &times; 1, Свитер серый &times; 1\";}}}}\";s:25:\"previous_shipping_methods\";s:43:\"a:1:{i:0;a:1:{i:0;s:15:\"free_shipping:1\";}}\";s:23:\"chosen_shipping_methods\";s:33:\"a:1:{i:0;s:15:\"free_shipping:1\";}\";s:22:\"shipping_method_counts\";s:14:\"a:1:{i:0;i:1;}\";s:11:\"cart_totals\";s:402:\"a:15:{s:8:\"subtotal\";s:5:\"19494\";s:12:\"subtotal_tax\";d:0;s:14:\"shipping_total\";s:1:\"0\";s:12:\"shipping_tax\";d:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";d:0;s:12:\"discount_tax\";d:0;s:19:\"cart_contents_total\";s:5:\"19494\";s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:1:\"0\";s:7:\"fee_tax\";d:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:8:\"19494.00\";s:9:\"total_tax\";d:0;}\";s:4:\"cart\";s:3226:\"a:6:{s:32:\"7647966b7343c29048673252e490f736\";a:12:{s:3:\"key\";s:32:\"7647966b7343c29048673252e490f736\";s:10:\"product_id\";i:89;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:15:\"tinvwl_formdata\";a:1:{s:15:\"success_message\";s:58:\"«Носки» добавлен в вашу корзину\";}s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:1499;s:17:\"line_subtotal_tax\";d:0;s:10:\"line_total\";d:1499;s:8:\"line_tax\";d:0;}s:32:\"9778d5d219c5080b9a6a17bef029331c\";a:12:{s:3:\"key\";s:32:\"9778d5d219c5080b9a6a17bef029331c\";s:10:\"product_id\";i:82;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:15:\"tinvwl_formdata\";a:1:{s:15:\"success_message\";s:75:\"«Футболка белая» добавлен в вашу корзину\";}s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:1999;s:17:\"line_subtotal_tax\";d:0;s:10:\"line_total\";d:1999;s:8:\"line_tax\";d:0;}s:32:\"2a38a4a9316c49e5a833517c45d31070\";a:12:{s:3:\"key\";s:32:\"2a38a4a9316c49e5a833517c45d31070\";s:10:\"product_id\";i:88;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:15:\"tinvwl_formdata\";a:1:{s:15:\"success_message\";s:79:\"«Плюшевая альпака» добавлен в вашу корзину\";}s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:3999;s:17:\"line_subtotal_tax\";d:0;s:10:\"line_total\";d:3999;s:8:\"line_tax\";d:0;}s:32:\"c7e1249ffc03eb9ded908c236bd1996d\";a:12:{s:3:\"key\";s:32:\"c7e1249ffc03eb9ded908c236bd1996d\";s:10:\"product_id\";i:87;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:15:\"tinvwl_formdata\";a:1:{s:15:\"success_message\";s:58:\"«Кепка» добавлен в вашу корзину\";}s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:1999;s:17:\"line_subtotal_tax\";d:0;s:10:\"line_total\";d:1999;s:8:\"line_tax\";d:0;}s:32:\"68d30a9594728bc39aa24be94b319d21\";a:12:{s:3:\"key\";s:32:\"68d30a9594728bc39aa24be94b319d21\";s:10:\"product_id\";i:84;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:15:\"tinvwl_formdata\";a:1:{s:15:\"success_message\";s:71:\"«Свитер синий» добавлен в вашу корзину\";}s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:4999;s:17:\"line_subtotal_tax\";d:0;s:10:\"line_total\";d:4999;s:8:\"line_tax\";d:0;}s:32:\"3ef815416f775098fe977004015c6193\";a:12:{s:3:\"key\";s:32:\"3ef815416f775098fe977004015c6193\";s:10:\"product_id\";i:85;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:15:\"tinvwl_formdata\";a:1:{s:15:\"success_message\";s:71:\"«Свитер серый» добавлен в вашу корзину\";}s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:4999;s:17:\"line_subtotal_tax\";d:0;s:10:\"line_total\";d:4999;s:8:\"line_tax\";d:0;}}\";}',1758556835),
(66,'12','a:7:{s:8:\"customer\";s:978:\"a:28:{s:2:\"id\";s:2:\"12\";s:13:\"date_modified\";s:25:\"2025-08-26T23:07:41+00:00\";s:10:\"first_name\";s:10:\"Ольга\";s:9:\"last_name\";s:18:\"Васильева\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:19:\"olga.vasileva@ya.ru\";s:7:\"address\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:7:\"country\";s:2:\"RU\";s:19:\"shipping_first_name\";s:10:\"Ольга\";s:18:\"shipping_last_name\";s:18:\"Васильева\";s:16:\"shipping_company\";s:0:\"\";s:14:\"shipping_phone\";s:0:\"\";s:16:\"shipping_address\";s:36:\"ул. Ленина, д. 10, кв. 30\";s:18:\"shipping_address_1\";s:36:\"ул. Ленина, д. 10, кв. 30\";s:18:\"shipping_address_2\";s:16:\"подъезд 2\";s:13:\"shipping_city\";s:8:\"Омск\";s:14:\"shipping_state\";s:27:\"Омская область\";s:17:\"shipping_postcode\";s:6:\"644024\";s:16:\"shipping_country\";s:2:\"RU\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:9:\"meta_data\";a:0:{}}\";s:22:\"shipping_for_package_0\";s:597:\"a:2:{s:12:\"package_hash\";s:40:\"wc_ship_1e4a0cb53cb8158707065da3ed36c512\";s:5:\"rates\";a:1:{s:15:\"free_shipping:1\";O:16:\"WC_Shipping_Rate\":2:{s:7:\"\0*\0data\";a:9:{s:2:\"id\";s:15:\"free_shipping:1\";s:9:\"method_id\";s:13:\"free_shipping\";s:11:\"instance_id\";i:1;s:5:\"label\";s:13:\"Free shipping\";s:4:\"cost\";s:1:\"0\";s:5:\"taxes\";a:0:{}s:10:\"tax_status\";s:7:\"taxable\";s:11:\"description\";s:0:\"\";s:13:\"delivery_time\";s:0:\"\";}s:12:\"\0*\0meta_data\";a:1:{s:12:\"Товары\";s:131:\"Плюшевая альпака &times; 99, Кепка &times; 1, Кружка &times; 1, Футболка зеленая &times; 1\";}}}}\";s:25:\"previous_shipping_methods\";s:43:\"a:1:{i:0;a:1:{i:0;s:15:\"free_shipping:1\";}}\";s:23:\"chosen_shipping_methods\";s:33:\"a:1:{i:0;s:15:\"free_shipping:1\";}\";s:22:\"shipping_method_counts\";s:14:\"a:1:{i:0;i:1;}\";s:11:\"cart_totals\";s:405:\"a:15:{s:8:\"subtotal\";s:6:\"402398\";s:12:\"subtotal_tax\";d:0;s:14:\"shipping_total\";s:1:\"0\";s:12:\"shipping_tax\";d:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";d:0;s:12:\"discount_tax\";d:0;s:19:\"cart_contents_total\";s:6:\"402398\";s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:1:\"0\";s:7:\"fee_tax\";d:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:9:\"402398.00\";s:9:\"total_tax\";d:0;}\";s:4:\"cart\";s:1643:\"a:4:{s:32:\"2a38a4a9316c49e5a833517c45d31070\";a:11:{s:3:\"key\";s:32:\"2a38a4a9316c49e5a833517c45d31070\";s:10:\"product_id\";i:88;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";d:99;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:395901;s:17:\"line_subtotal_tax\";d:0;s:10:\"line_total\";d:395901;s:8:\"line_tax\";d:0;}s:32:\"c7e1249ffc03eb9ded908c236bd1996d\";a:11:{s:3:\"key\";s:32:\"c7e1249ffc03eb9ded908c236bd1996d\";s:10:\"product_id\";i:87;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:1999;s:17:\"line_subtotal_tax\";d:0;s:10:\"line_total\";d:1999;s:8:\"line_tax\";d:0;}s:32:\"93db85ed909c13838ff95ccfa94cebd9\";a:11:{s:3:\"key\";s:32:\"93db85ed909c13838ff95ccfa94cebd9\";s:10:\"product_id\";i:86;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:2499;s:17:\"line_subtotal_tax\";d:0;s:10:\"line_total\";d:2499;s:8:\"line_tax\";d:0;}s:32:\"fe9fc289c3ff0af142b6d3bead98a923\";a:11:{s:3:\"key\";s:32:\"fe9fc289c3ff0af142b6d3bead98a923\";s:10:\"product_id\";i:83;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:1999;s:17:\"line_subtotal_tax\";d:0;s:10:\"line_total\";d:1999;s:8:\"line_tax\";d:0;}}\";}',1758556706),
(72,'13','a:7:{s:8:\"customer\";s:1016:\"a:28:{s:2:\"id\";s:2:\"13\";s:13:\"date_modified\";s:25:\"2025-08-26T23:08:36+00:00\";s:10:\"first_name\";s:14:\"Николай\";s:9:\"last_name\";s:18:\"Пономарев\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:27:\"nikolay.ponomarev@gmail.com\";s:7:\"address\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:7:\"country\";s:2:\"RU\";s:19:\"shipping_first_name\";s:14:\"Николай\";s:18:\"shipping_last_name\";s:18:\"Пономарев\";s:16:\"shipping_company\";s:0:\"\";s:14:\"shipping_phone\";s:0:\"\";s:16:\"shipping_address\";s:50:\"ул. Ленинградская, д. 45, кв. 21\";s:18:\"shipping_address_1\";s:50:\"ул. Ленинградская, д. 45, кв. 21\";s:18:\"shipping_address_2\";s:0:\"\";s:13:\"shipping_city\";s:12:\"Самара\";s:14:\"shipping_state\";s:33:\"Самарская область\";s:17:\"shipping_postcode\";s:6:\"443080\";s:16:\"shipping_country\";s:2:\"RU\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:9:\"meta_data\";a:0:{}}\";s:22:\"shipping_for_package_0\";s:621:\"a:2:{s:12:\"package_hash\";s:40:\"wc_ship_a0c51ed48b40bdb3e3ed71abcf71e8d4\";s:5:\"rates\";a:1:{s:15:\"free_shipping:1\";O:16:\"WC_Shipping_Rate\":2:{s:7:\"\0*\0data\";a:9:{s:2:\"id\";s:15:\"free_shipping:1\";s:9:\"method_id\";s:13:\"free_shipping\";s:11:\"instance_id\";i:1;s:5:\"label\";s:13:\"Free shipping\";s:4:\"cost\";s:1:\"0\";s:5:\"taxes\";a:0:{}s:10:\"tax_status\";s:7:\"taxable\";s:11:\"description\";s:0:\"\";s:13:\"delivery_time\";s:0:\"\";}s:12:\"\0*\0meta_data\";a:1:{s:12:\"Товары\";s:155:\"Плюшевая альпака &times; 1, Свитер серый &times; 1, Свитер синий &times; 1, Кепка &times; 1, Носки &times; 1\";}}}}\";s:25:\"previous_shipping_methods\";s:43:\"a:1:{i:0;a:1:{i:0;s:15:\"free_shipping:1\";}}\";s:23:\"chosen_shipping_methods\";s:33:\"a:1:{i:0;s:15:\"free_shipping:1\";}\";s:22:\"shipping_method_counts\";s:14:\"a:1:{i:0;i:1;}\";s:11:\"cart_totals\";s:402:\"a:15:{s:8:\"subtotal\";s:5:\"17495\";s:12:\"subtotal_tax\";d:0;s:14:\"shipping_total\";s:1:\"0\";s:12:\"shipping_tax\";d:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";d:0;s:12:\"discount_tax\";d:0;s:19:\"cart_contents_total\";s:5:\"17495\";s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:1:\"0\";s:7:\"fee_tax\";d:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:8:\"17495.00\";s:9:\"total_tax\";d:0;}\";s:4:\"cart\";s:2046:\"a:5:{s:32:\"2a38a4a9316c49e5a833517c45d31070\";a:11:{s:3:\"key\";s:32:\"2a38a4a9316c49e5a833517c45d31070\";s:10:\"product_id\";i:88;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:3999;s:17:\"line_subtotal_tax\";d:0;s:10:\"line_total\";d:3999;s:8:\"line_tax\";d:0;}s:32:\"3ef815416f775098fe977004015c6193\";a:11:{s:3:\"key\";s:32:\"3ef815416f775098fe977004015c6193\";s:10:\"product_id\";i:85;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:4999;s:17:\"line_subtotal_tax\";d:0;s:10:\"line_total\";d:4999;s:8:\"line_tax\";d:0;}s:32:\"68d30a9594728bc39aa24be94b319d21\";a:11:{s:3:\"key\";s:32:\"68d30a9594728bc39aa24be94b319d21\";s:10:\"product_id\";i:84;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:4999;s:17:\"line_subtotal_tax\";d:0;s:10:\"line_total\";d:4999;s:8:\"line_tax\";d:0;}s:32:\"c7e1249ffc03eb9ded908c236bd1996d\";a:11:{s:3:\"key\";s:32:\"c7e1249ffc03eb9ded908c236bd1996d\";s:10:\"product_id\";i:87;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:1999;s:17:\"line_subtotal_tax\";d:0;s:10:\"line_total\";d:1999;s:8:\"line_tax\";d:0;}s:32:\"7647966b7343c29048673252e490f736\";a:11:{s:3:\"key\";s:32:\"7647966b7343c29048673252e490f736\";s:10:\"product_id\";i:89;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:1499;s:17:\"line_subtotal_tax\";d:0;s:10:\"line_total\";d:1499;s:8:\"line_tax\";d:0;}}\";}',1758556639),
(78,'14','a:7:{s:8:\"customer\";s:1035:\"a:28:{s:2:\"id\";s:2:\"14\";s:13:\"date_modified\";s:25:\"2025-08-26T23:09:31+00:00\";s:10:\"first_name\";s:14:\"Татьяна\";s:9:\"last_name\";s:16:\"Федорова\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:26:\"tatiana.fedorova@yandex.ru\";s:7:\"address\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:7:\"country\";s:2:\"RU\";s:19:\"shipping_first_name\";s:14:\"Татьяна\";s:18:\"shipping_last_name\";s:16:\"Федерова\";s:16:\"shipping_company\";s:0:\"\";s:14:\"shipping_phone\";s:0:\"\";s:16:\"shipping_address\";s:52:\"ул. Большая Садовая, д. 78, кв. 5\";s:18:\"shipping_address_1\";s:52:\"ул. Большая Садовая, д. 78, кв. 5\";s:18:\"shipping_address_2\";s:0:\"\";s:13:\"shipping_city\";s:30:\"Ростов‑на‑Дону\";s:14:\"shipping_state\";s:35:\"Ростовская область\";s:17:\"shipping_postcode\";s:6:\"344002\";s:16:\"shipping_country\";s:2:\"RU\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:9:\"meta_data\";a:0:{}}\";s:22:\"shipping_for_package_0\";s:566:\"a:2:{s:12:\"package_hash\";s:40:\"wc_ship_62cafa41c4586d3afec4acc79d21b53a\";s:5:\"rates\";a:1:{s:15:\"free_shipping:1\";O:16:\"WC_Shipping_Rate\":2:{s:7:\"\0*\0data\";a:9:{s:2:\"id\";s:15:\"free_shipping:1\";s:9:\"method_id\";s:13:\"free_shipping\";s:11:\"instance_id\";i:1;s:5:\"label\";s:13:\"Free shipping\";s:4:\"cost\";s:1:\"0\";s:5:\"taxes\";a:0:{}s:10:\"tax_status\";s:7:\"taxable\";s:11:\"description\";s:0:\"\";s:13:\"delivery_time\";s:0:\"\";}s:12:\"\0*\0meta_data\";a:1:{s:12:\"Товары\";s:100:\"Кружка &times; 1, Свитер синий &times; 2, Футболка зеленая &times; 1\";}}}}\";s:25:\"previous_shipping_methods\";s:43:\"a:1:{i:0;a:1:{i:0;s:15:\"free_shipping:1\";}}\";s:23:\"chosen_shipping_methods\";s:33:\"a:1:{i:0;s:15:\"free_shipping:1\";}\";s:22:\"shipping_method_counts\";s:14:\"a:1:{i:0;i:1;}\";s:11:\"cart_totals\";s:402:\"a:15:{s:8:\"subtotal\";s:5:\"14496\";s:12:\"subtotal_tax\";d:0;s:14:\"shipping_total\";s:1:\"0\";s:12:\"shipping_tax\";d:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";d:0;s:12:\"discount_tax\";d:0;s:19:\"cart_contents_total\";s:5:\"14496\";s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:1:\"0\";s:7:\"fee_tax\";d:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:8:\"14496.00\";s:9:\"total_tax\";d:0;}\";s:4:\"cart\";s:1230:\"a:3:{s:32:\"93db85ed909c13838ff95ccfa94cebd9\";a:11:{s:3:\"key\";s:32:\"93db85ed909c13838ff95ccfa94cebd9\";s:10:\"product_id\";i:86;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:2499;s:17:\"line_subtotal_tax\";d:0;s:10:\"line_total\";d:2499;s:8:\"line_tax\";d:0;}s:32:\"68d30a9594728bc39aa24be94b319d21\";a:11:{s:3:\"key\";s:32:\"68d30a9594728bc39aa24be94b319d21\";s:10:\"product_id\";i:84;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:2;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:9998;s:17:\"line_subtotal_tax\";d:0;s:10:\"line_total\";d:9998;s:8:\"line_tax\";d:0;}s:32:\"fe9fc289c3ff0af142b6d3bead98a923\";a:11:{s:3:\"key\";s:32:\"fe9fc289c3ff0af142b6d3bead98a923\";s:10:\"product_id\";i:83;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:1999;s:17:\"line_subtotal_tax\";d:0;s:10:\"line_total\";d:1999;s:8:\"line_tax\";d:0;}}\";}',1758556670),
(102,'t_44a183b2537676d6c49a5dfab496ce','a:1:{s:8:\"customer\";s:785:\"a:28:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2025-08-26T22:42:26+00:00\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:20:\"adminAlpaca@shop.com\";s:7:\"address\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:7:\"country\";s:2:\"RU\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";s:14:\"shipping_phone\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:17:\"shipping_postcode\";s:0:\"\";s:16:\"shipping_country\";s:2:\"RU\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:9:\"meta_data\";a:0:{}}\";}',1756474298),
(122,'t_8bceb67186aa5942140eabdbca29d3','a:1:{s:8:\"customer\";s:738:\"a:28:{s:2:\"id\";s:1:\"0\";s:13:\"date_modified\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:7:\"country\";s:2:\"RU\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";s:14:\"shipping_phone\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:17:\"shipping_postcode\";s:0:\"\";s:16:\"shipping_country\";s:2:\"RU\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:9:\"meta_data\";a:0:{}}\";}',1756476049),
(123,'t_f5078feedd81d9f45a918455d21a55','a:1:{s:8:\"customer\";s:738:\"a:28:{s:2:\"id\";s:1:\"0\";s:13:\"date_modified\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:7:\"country\";s:2:\"RU\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";s:14:\"shipping_phone\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:17:\"shipping_postcode\";s:0:\"\";s:16:\"shipping_country\";s:2:\"RU\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:9:\"meta_data\";a:0:{}}\";}',1756476049),
(124,'t_37d2b8ac4c6f85d5d566e6077db9f4','a:1:{s:8:\"customer\";s:738:\"a:28:{s:2:\"id\";s:1:\"0\";s:13:\"date_modified\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:7:\"country\";s:2:\"RU\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";s:14:\"shipping_phone\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:17:\"shipping_postcode\";s:0:\"\";s:16:\"shipping_country\";s:2:\"RU\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:9:\"meta_data\";a:0:{}}\";}',1756476059),
(125,'t_fc9bc8c2ac5ae7fccbeb0782d13b16','a:1:{s:8:\"customer\";s:738:\"a:28:{s:2:\"id\";s:1:\"0\";s:13:\"date_modified\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:7:\"country\";s:2:\"RU\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";s:14:\"shipping_phone\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:17:\"shipping_postcode\";s:0:\"\";s:16:\"shipping_country\";s:2:\"RU\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:9:\"meta_data\";a:0:{}}\";}',1756476180),
(126,'1','a:1:{s:8:\"customer\";s:785:\"a:28:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2025-09-15T16:14:24+00:00\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:20:\"adminAlpaca@shop.com\";s:7:\"address\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:7:\"country\";s:2:\"RU\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";s:14:\"shipping_phone\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:17:\"shipping_postcode\";s:0:\"\";s:16:\"shipping_country\";s:2:\"RU\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:9:\"meta_data\";a:0:{}}\";}',1758557678),
(136,'t_16d9018fef771fba91a5f5090c6705','a:1:{s:8:\"customer\";s:942:\"a:28:{s:2:\"id\";s:1:\"5\";s:13:\"date_modified\";s:25:\"2025-08-26T22:58:39+00:00\";s:10:\"first_name\";s:8:\"Иван\";s:9:\"last_name\";s:12:\"Петров\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:21:\"ivan.petrov@yandex.ru\";s:7:\"address\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:7:\"country\";s:2:\"RU\";s:19:\"shipping_first_name\";s:8:\"Иван\";s:18:\"shipping_last_name\";s:12:\"Петров\";s:16:\"shipping_company\";s:0:\"\";s:14:\"shipping_phone\";s:0:\"\";s:16:\"shipping_address\";s:40:\"ул. Тверская, д. 12, кв. 45\";s:18:\"shipping_address_1\";s:40:\"ул. Тверская, д. 12, кв. 45\";s:18:\"shipping_address_2\";s:0:\"\";s:13:\"shipping_city\";s:12:\"Москва\";s:14:\"shipping_state\";s:12:\"Москва\";s:17:\"shipping_postcode\";s:6:\"125009\";s:16:\"shipping_country\";s:2:\"RU\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:9:\"meta_data\";a:0:{}}\";}',1758554458),
(145,'t_4cc3b32b3426dedc3ec1649ce8dd2d','a:1:{s:8:\"customer\";s:1037:\"a:28:{s:2:\"id\";s:1:\"6\";s:13:\"date_modified\";s:25:\"2025-08-26T23:00:26+00:00\";s:10:\"first_name\";s:8:\"Анна\";s:9:\"last_name\";s:16:\"Смирнова\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:23:\"anna.smirnova@gmail.com\";s:7:\"address\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:7:\"country\";s:2:\"RU\";s:19:\"shipping_first_name\";s:8:\"Анна\";s:18:\"shipping_last_name\";s:16:\"Смирнова\";s:16:\"shipping_company\";s:0:\"\";s:14:\"shipping_phone\";s:0:\"\";s:16:\"shipping_address\";s:49:\"Невский проспект, д. 90, кв. 12\";s:18:\"shipping_address_1\";s:49:\"Невский проспект, д. 90, кв. 12\";s:18:\"shipping_address_2\";s:28:\"подъезд 2, этаж 3\";s:13:\"shipping_city\";s:31:\"Санкт‑Петербург\";s:14:\"shipping_state\";s:31:\"Санкт‑Петербург\";s:17:\"shipping_postcode\";s:6:\"191186\";s:16:\"shipping_country\";s:2:\"RU\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:9:\"meta_data\";a:0:{}}\";}',1758554505),
(151,'t_063e0e30d03bfa8d4387608b2b6427','a:1:{s:8:\"customer\";s:1048:\"a:28:{s:2:\"id\";s:1:\"7\";s:13:\"date_modified\";s:25:\"2025-08-26T23:01:58+00:00\";s:10:\"first_name\";s:12:\"Сергей\";s:9:\"last_name\";s:12:\"Иванов\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:21:\"sergey.ivanov@mail.ru\";s:7:\"address\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:7:\"country\";s:2:\"RU\";s:19:\"shipping_first_name\";s:12:\"Сергей\";s:18:\"shipping_last_name\";s:12:\"Иванов\";s:16:\"shipping_company\";s:0:\"\";s:14:\"shipping_phone\";s:0:\"\";s:16:\"shipping_address\";s:54:\"ул. Красный проспект, д. 35, кв. 8\";s:18:\"shipping_address_1\";s:54:\"ул. Красный проспект, д. 35, кв. 8\";s:18:\"shipping_address_2\";s:28:\"подъезд 1, этаж 2\";s:13:\"shipping_city\";s:22:\"Новосибирск\";s:14:\"shipping_state\";s:41:\"Новосибирская область\";s:17:\"shipping_postcode\";s:6:\"630099\";s:16:\"shipping_country\";s:2:\"RU\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:9:\"meta_data\";a:0:{}}\";}',1758554664),
(171,'t_21e90cf2a7764c84c140b239f90736','a:1:{s:8:\"customer\";s:1002:\"a:28:{s:2:\"id\";s:1:\"8\";s:13:\"date_modified\";s:25:\"2025-08-26T23:03:15+00:00\";s:10:\"first_name\";s:10:\"Мария\";s:9:\"last_name\";s:18:\"Кузнецова\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:28:\"maria.kuznetsova@outlook.com\";s:7:\"address\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:7:\"country\";s:2:\"RU\";s:19:\"shipping_first_name\";s:10:\"Мария\";s:18:\"shipping_last_name\";s:18:\"Кузнецова\";s:16:\"shipping_company\";s:0:\"\";s:14:\"shipping_phone\";s:0:\"\";s:16:\"shipping_address\";s:38:\"ул. Вайнера, д. 16, кв. 27\";s:18:\"shipping_address_1\";s:38:\"ул. Вайнера, д. 16, кв. 27\";s:18:\"shipping_address_2\";s:0:\"\";s:13:\"shipping_city\";s:24:\"Екатеринбург\";s:14:\"shipping_state\";s:39:\"Свердловская область\";s:17:\"shipping_postcode\";s:6:\"620014\";s:16:\"shipping_country\";s:2:\"RU\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:9:\"meta_data\";a:0:{}}\";}',1758554748),
(177,'t_573f84a1b40491fd1cf3e502cd6085','a:1:{s:8:\"customer\";s:986:\"a:28:{s:2:\"id\";s:1:\"9\";s:13:\"date_modified\";s:25:\"2025-08-26T23:05:03+00:00\";s:10:\"first_name\";s:14:\"Дмитрий\";s:9:\"last_name\";s:14:\"Соколов\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:24:\"dmitry.sokolov@yandex.ru\";s:7:\"address\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:7:\"country\";s:2:\"RU\";s:19:\"shipping_first_name\";s:14:\"Дмитрий\";s:18:\"shipping_last_name\";s:14:\"Соколов\";s:16:\"shipping_company\";s:0:\"\";s:14:\"shipping_phone\";s:0:\"\";s:16:\"shipping_address\";s:38:\"ул. Баумана, д. 54, кв. 19\";s:18:\"shipping_address_1\";s:38:\"ул. Баумана, д. 54, кв. 19\";s:18:\"shipping_address_2\";s:0:\"\";s:13:\"shipping_city\";s:12:\"Казань\";s:14:\"shipping_state\";s:39:\"Республика Татарстан\";s:17:\"shipping_postcode\";s:6:\"420111\";s:16:\"shipping_country\";s:2:\"RU\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:9:\"meta_data\";a:0:{}}\";}',1758554807),
(186,'t_e8ed437856afe31b492d4b2674c6e9','a:1:{s:8:\"customer\";s:1052:\"a:28:{s:2:\"id\";s:2:\"10\";s:13:\"date_modified\";s:25:\"2025-08-26T23:06:02+00:00\";s:10:\"first_name\";s:18:\"Екатерина\";s:9:\"last_name\";s:12:\"Попова\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:26:\"ekaterina.popova@gmail.com\";s:7:\"address\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:7:\"country\";s:2:\"RU\";s:19:\"shipping_first_name\";s:18:\"Екатерина\";s:18:\"shipping_last_name\";s:12:\"Попова\";s:16:\"shipping_company\";s:0:\"\";s:14:\"shipping_phone\";s:0:\"\";s:16:\"shipping_address\";s:58:\"ул. Большая Покровская, д. 25, кв. 7\";s:18:\"shipping_address_1\";s:58:\"ул. Большая Покровская, д. 25, кв. 7\";s:18:\"shipping_address_2\";s:0:\"\";s:13:\"shipping_city\";s:29:\"Нижний Новгород\";s:14:\"shipping_state\";s:41:\"Нижегородская область\";s:17:\"shipping_postcode\";s:6:\"603005\";s:16:\"shipping_country\";s:2:\"RU\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:9:\"meta_data\";a:0:{}}\";}',1758556251),
(200,'t_1d71b72bde6f7973a82239eb023b5b','a:1:{s:8:\"customer\";s:989:\"a:28:{s:2:\"id\";s:2:\"11\";s:13:\"date_modified\";s:25:\"2025-08-26T23:06:51+00:00\";s:10:\"first_name\";s:14:\"Алексей\";s:9:\"last_name\";s:14:\"Морозов\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:22:\"alexey.morozov@mail.ru\";s:7:\"address\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:7:\"country\";s:2:\"RU\";s:19:\"shipping_first_name\";s:14:\"Алексей\";s:18:\"shipping_last_name\";s:14:\"Морозов\";s:16:\"shipping_company\";s:0:\"\";s:14:\"shipping_phone\";s:0:\"\";s:16:\"shipping_address\";s:38:\"пр-т Ленина, д. 59, кв. 14\";s:18:\"shipping_address_1\";s:38:\"пр-т Ленина, д. 59, кв. 14\";s:18:\"shipping_address_2\";s:0:\"\";s:13:\"shipping_city\";s:18:\"Челябинск\";s:14:\"shipping_state\";s:37:\"Челябинская область\";s:17:\"shipping_postcode\";s:6:\"454091\";s:16:\"shipping_country\";s:2:\"RU\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:9:\"meta_data\";a:0:{}}\";}',1758556557),
(211,'t_741ed59763e1b30cce378ba6983e97','a:1:{s:8:\"customer\";s:978:\"a:28:{s:2:\"id\";s:2:\"12\";s:13:\"date_modified\";s:25:\"2025-08-26T23:07:41+00:00\";s:10:\"first_name\";s:10:\"Ольга\";s:9:\"last_name\";s:18:\"Васильева\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:19:\"olga.vasileva@ya.ru\";s:7:\"address\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:7:\"country\";s:2:\"RU\";s:19:\"shipping_first_name\";s:10:\"Ольга\";s:18:\"shipping_last_name\";s:18:\"Васильева\";s:16:\"shipping_company\";s:0:\"\";s:14:\"shipping_phone\";s:0:\"\";s:16:\"shipping_address\";s:36:\"ул. Ленина, д. 10, кв. 30\";s:18:\"shipping_address_1\";s:36:\"ул. Ленина, д. 10, кв. 30\";s:18:\"shipping_address_2\";s:16:\"подъезд 2\";s:13:\"shipping_city\";s:8:\"Омск\";s:14:\"shipping_state\";s:27:\"Омская область\";s:17:\"shipping_postcode\";s:6:\"644024\";s:16:\"shipping_country\";s:2:\"RU\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:9:\"meta_data\";a:0:{}}\";}',1758556600),
(224,'t_236900c0deb247d9b7d3972d8a5c64','a:1:{s:8:\"customer\";s:1016:\"a:28:{s:2:\"id\";s:2:\"13\";s:13:\"date_modified\";s:25:\"2025-08-26T23:08:36+00:00\";s:10:\"first_name\";s:14:\"Николай\";s:9:\"last_name\";s:18:\"Пономарев\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:27:\"nikolay.ponomarev@gmail.com\";s:7:\"address\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:7:\"country\";s:2:\"RU\";s:19:\"shipping_first_name\";s:14:\"Николай\";s:18:\"shipping_last_name\";s:18:\"Пономарев\";s:16:\"shipping_company\";s:0:\"\";s:14:\"shipping_phone\";s:0:\"\";s:16:\"shipping_address\";s:50:\"ул. Ленинградская, д. 45, кв. 21\";s:18:\"shipping_address_1\";s:50:\"ул. Ленинградская, д. 45, кв. 21\";s:18:\"shipping_address_2\";s:0:\"\";s:13:\"shipping_city\";s:12:\"Самара\";s:14:\"shipping_state\";s:33:\"Самарская область\";s:17:\"shipping_postcode\";s:6:\"443080\";s:16:\"shipping_country\";s:2:\"RU\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:9:\"meta_data\";a:0:{}}\";}',1758556639),
(235,'t_c5ad3592a88b779fdf94541655b6cd','a:1:{s:8:\"customer\";s:1035:\"a:28:{s:2:\"id\";s:2:\"14\";s:13:\"date_modified\";s:25:\"2025-08-26T23:09:31+00:00\";s:10:\"first_name\";s:14:\"Татьяна\";s:9:\"last_name\";s:16:\"Федорова\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:26:\"tatiana.fedorova@yandex.ru\";s:7:\"address\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:7:\"country\";s:2:\"RU\";s:19:\"shipping_first_name\";s:14:\"Татьяна\";s:18:\"shipping_last_name\";s:16:\"Федерова\";s:16:\"shipping_company\";s:0:\"\";s:14:\"shipping_phone\";s:0:\"\";s:16:\"shipping_address\";s:52:\"ул. Большая Садовая, д. 78, кв. 5\";s:18:\"shipping_address_1\";s:52:\"ул. Большая Садовая, д. 78, кв. 5\";s:18:\"shipping_address_2\";s:0:\"\";s:13:\"shipping_city\";s:30:\"Ростов‑на‑Дону\";s:14:\"shipping_state\";s:35:\"Ростовская область\";s:17:\"shipping_postcode\";s:6:\"344002\";s:16:\"shipping_country\";s:2:\"RU\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:9:\"meta_data\";a:0:{}}\";}',1758556670),
(238,'t_4f6501bdefdc2eb8988695ab26593d','a:1:{s:8:\"customer\";s:978:\"a:28:{s:2:\"id\";s:2:\"12\";s:13:\"date_modified\";s:25:\"2025-08-26T23:07:41+00:00\";s:10:\"first_name\";s:10:\"Ольга\";s:9:\"last_name\";s:18:\"Васильева\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:19:\"olga.vasileva@ya.ru\";s:7:\"address\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:7:\"country\";s:2:\"RU\";s:19:\"shipping_first_name\";s:10:\"Ольга\";s:18:\"shipping_last_name\";s:18:\"Васильева\";s:16:\"shipping_company\";s:0:\"\";s:14:\"shipping_phone\";s:0:\"\";s:16:\"shipping_address\";s:36:\"ул. Ленина, д. 10, кв. 30\";s:18:\"shipping_address_1\";s:36:\"ул. Ленина, д. 10, кв. 30\";s:18:\"shipping_address_2\";s:16:\"подъезд 2\";s:13:\"shipping_city\";s:8:\"Омск\";s:14:\"shipping_state\";s:27:\"Омская область\";s:17:\"shipping_postcode\";s:6:\"644024\";s:16:\"shipping_country\";s:2:\"RU\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:9:\"meta_data\";a:0:{}}\";}',1758556706),
(240,'t_865c3b008be9f38bd1f636d8f6f4ab','a:1:{s:8:\"customer\";s:989:\"a:28:{s:2:\"id\";s:2:\"11\";s:13:\"date_modified\";s:25:\"2025-08-26T23:06:51+00:00\";s:10:\"first_name\";s:14:\"Алексей\";s:9:\"last_name\";s:14:\"Морозов\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:22:\"alexey.morozov@mail.ru\";s:7:\"address\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:7:\"country\";s:2:\"RU\";s:19:\"shipping_first_name\";s:14:\"Алексей\";s:18:\"shipping_last_name\";s:14:\"Морозов\";s:16:\"shipping_company\";s:0:\"\";s:14:\"shipping_phone\";s:0:\"\";s:16:\"shipping_address\";s:38:\"пр-т Ленина, д. 59, кв. 14\";s:18:\"shipping_address_1\";s:38:\"пр-т Ленина, д. 59, кв. 14\";s:18:\"shipping_address_2\";s:0:\"\";s:13:\"shipping_city\";s:18:\"Челябинск\";s:14:\"shipping_state\";s:37:\"Челябинская область\";s:17:\"shipping_postcode\";s:6:\"454091\";s:16:\"shipping_country\";s:2:\"RU\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:9:\"meta_data\";a:0:{}}\";}',1758556835);
/*!40000 ALTER TABLE `wp_woocommerce_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zone_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_id` bigint(20) unsigned NOT NULL,
  `location_code` varchar(200) NOT NULL,
  `location_type` varchar(40) NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `zone_id` (`zone_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_locations`
--

LOCK TABLES `wp_woocommerce_shipping_zone_locations` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_locations` DISABLE KEYS */;
INSERT INTO `wp_woocommerce_shipping_zone_locations` VALUES
(1,1,'RU','country');
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zone_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) unsigned NOT NULL,
  `instance_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `method_id` varchar(200) NOT NULL,
  `method_order` bigint(20) unsigned NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`instance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_methods`
--

LOCK TABLES `wp_woocommerce_shipping_zone_methods` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_methods` DISABLE KEYS */;
INSERT INTO `wp_woocommerce_shipping_zone_methods` VALUES
(1,1,'free_shipping',1,1);
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_name` varchar(200) NOT NULL,
  `zone_order` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`zone_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_shipping_zones`
--

LOCK TABLES `wp_woocommerce_shipping_zones` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zones` DISABLE KEYS */;
INSERT INTO `wp_woocommerce_shipping_zones` VALUES
(1,'Россия',0);
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

DROP TABLE IF EXISTS `wp_woocommerce_tax_rate_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `location_code` varchar(200) NOT NULL,
  `tax_rate_id` bigint(20) unsigned NOT NULL,
  `location_type` varchar(40) NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_tax_rate_locations`
--

LOCK TABLES `wp_woocommerce_tax_rate_locations` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rate_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rate_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

DROP TABLE IF EXISTS `wp_woocommerce_tax_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tax_rate_country` varchar(2) NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) NOT NULL DEFAULT '',
  `tax_rate` varchar(8) NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) unsigned NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT 0,
  `tax_rate_shipping` int(1) NOT NULL DEFAULT 1,
  `tax_rate_order` bigint(20) unsigned NOT NULL,
  `tax_rate_class` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_id`),
  KEY `tax_rate_country` (`tax_rate_country`),
  KEY `tax_rate_state` (`tax_rate_state`(2)),
  KEY `tax_rate_class` (`tax_rate_class`(10)),
  KEY `tax_rate_priority` (`tax_rate_priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_tax_rates`
--

LOCK TABLES `wp_woocommerce_tax_rates` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rates` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rates` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-17 10:01:07
