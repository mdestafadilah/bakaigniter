-- MySQL dump 10.13  Distrib 5.5.37, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: bpmppt
-- ------------------------------------------------------
-- Server version	5.5.37-0ubuntu0.14.04.1

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
-- Table structure for table `baka_auth_login_attempts`
--

DROP TABLE IF EXISTS `baka_auth_login_attempts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baka_auth_login_attempts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `login` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `baka_auth_overrides`
--

DROP TABLE IF EXISTS `baka_auth_overrides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baka_auth_overrides` (
  `user_id` int(10) unsigned NOT NULL,
  `permission_id` smallint(5) unsigned NOT NULL,
  `allow` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`permission_id`),
  KEY `user_id1_idx` (`user_id`),
  KEY `permissions_id1_idx` (`permission_id`),
  CONSTRAINT `permission_id1` FOREIGN KEY (`permission_id`) REFERENCES `baka_auth_permissions` (`permission_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `user_id1` FOREIGN KEY (`user_id`) REFERENCES `baka_auth_users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `baka_auth_permissions`
--

DROP TABLE IF EXISTS `baka_auth_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baka_auth_permissions` (
  `permission_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `parent` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permission` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(160) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`permission_id`),
  UNIQUE KEY `permission_UNIQUE` (`permission`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baka_auth_permissions`
--

LOCK TABLES `baka_auth_permissions` WRITE;
/*!40000 ALTER TABLE `baka_auth_permissions` DISABLE KEYS */;
INSERT INTO `baka_auth_permissions` VALUES
(1,'Dokumen','doc_manage','Mengelola Dokumen perijinan',1),
(2,'Dokumen','doc_edit','Mengubah Dokumen perijinan yang sudah ada',1),
(3,'Aplikasi','internal_application_manage','Mengelola pengaturan Aplikasi',1),
(4,'Aplikasi','internal_security_manage','Mengelola pengaturan Keamanan',1),
(5,'Pengguna','users_manage','Mengelola semua pengguna',1),
(6,'Pengguna','users_add','Menambahkan pengguna',1),
(7,'Pengguna','users_view','Melihat data pengguna',1),
(8,'Pengguna','users_edit_self','Mengubah data pengguna',1),
(9,'Pengguna','users_edit_other','Mengubah data pengguna lain',1),
(10,'Pengguna','perms_manage','Mengelola wewenang pengguna',1),
(11,'Pengguna','roles_manage','Mengelola Kelompok pengguna',1),
(12,'System','sys_manage','Mengelola internal Sistem',1),
(13,'System','sys_backstore_manage','Mengelola backup & restore sistem',1),
(14,'System','sys_logs_manage','Memantau Aktifitas internal sistem',1);
/*!40000 ALTER TABLE `baka_auth_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `baka_auth_role_permissions`
--

DROP TABLE IF EXISTS `baka_auth_role_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baka_auth_role_permissions` (
  `role_id` tinyint(3) unsigned NOT NULL,
  `permission_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`permission_id`),
  KEY `role_id2_idx` (`role_id`),
  KEY `permission_id2_idx` (`permission_id`),
  CONSTRAINT `permission_id2` FOREIGN KEY (`permission_id`) REFERENCES `baka_auth_permissions` (`permission_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `role_id2` FOREIGN KEY (`role_id`) REFERENCES `baka_auth_roles` (`role_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baka_auth_role_permissions`
--

LOCK TABLES `baka_auth_role_permissions` WRITE;
/*!40000 ALTER TABLE `baka_auth_role_permissions` DISABLE KEYS */;
INSERT INTO `baka_auth_role_permissions` VALUES
(1,1),
(1,2),
(1,3),
(1,4),
(1,5),
(1,6),
(1,7),
(1,8),
(1,9),
(1,10),
(1,11),
(1,12),
(1,13),
(1,14),
(2,1),
(2,2);
/*!40000 ALTER TABLE `baka_auth_role_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `baka_auth_roles`
--

DROP TABLE IF EXISTS `baka_auth_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baka_auth_roles` (
  `role_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `role` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `full` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `can_delete` tinyint(1) NOT NULL DEFAULT '1',
  `actived` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `role_UNIQUE` (`role`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baka_auth_roles`
--

LOCK TABLES `baka_auth_roles` WRITE;
/*!40000 ALTER TABLE `baka_auth_roles` DISABLE KEYS */;
INSERT INTO `baka_auth_roles` VALUES
(1,'admin','Administrator','-',0,0,1),
(2,'pengguna','Pengguna','-',1,0,1);
/*!40000 ALTER TABLE `baka_auth_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `baka_auth_user_autologin`
--

DROP TABLE IF EXISTS `baka_auth_user_autologin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baka_auth_user_autologin` (
  `key_id` char(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_agent` varchar(150) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `last_ip` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`key_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `baka_auth_user_roles`
--

DROP TABLE IF EXISTS `baka_auth_user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baka_auth_user_roles` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_id2_idx` (`user_id`),
  KEY `role_id1_idx` (`role_id`),
  CONSTRAINT `role_id1` FOREIGN KEY (`role_id`) REFERENCES `baka_auth_roles` (`role_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `user_id2` FOREIGN KEY (`user_id`) REFERENCES `baka_auth_users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baka_auth_user_roles`
--

LOCK TABLES `baka_auth_user_roles` WRITE;
/*!40000 ALTER TABLE `baka_auth_user_roles` DISABLE KEYS */;
INSERT INTO `baka_auth_user_roles` VALUES
(1,1),
(1,2),
(2,2);
/*!40000 ALTER TABLE `baka_auth_user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `baka_auth_usermeta`
--

DROP TABLE IF EXISTS `baka_auth_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baka_auth_usermeta` (
  `meta_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `meta_key` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `baka_auth_users`
--

DROP TABLE IF EXISTS `baka_auth_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baka_auth_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `display` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT '1',
  `banned` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `ban_reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `new_password_key` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `new_password_requested` datetime DEFAULT NULL,
  `new_email` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `new_email_key` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `last_ip` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `last_login` datetime DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `log` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baka_auth_users`
--

LOCK TABLES `baka_auth_users` WRITE;
/*!40000 ALTER TABLE `baka_auth_users` DISABLE KEYS */;
INSERT INTO `baka_auth_users` VALUES
(1,'admin','$2a$08$LhuaYcUIVOy1tt7CJjyNh.2ECzQcJoeW44d/DSNVRUoFNriUtAyse','administrator@bpmppt.com','Admin Istrator',1,0,0,NULL,NULL,NULL,NULL,NULL,'127.0.0.1','2014-06-20 03:23:44','2013-10-31 22:07:55','2014-06-19 19:23:44',NULL),
(2,'pengguna','$2a$08$N4sHvUfnm.BKvJxNf6oJEeOqME6J79wZRCBB1cugbDpxAhL7z3dWO','pengguna@bpmppt.com','Pengguna Biasa',1,0,0,NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','2013-11-04 18:29:46','2014-05-26 16:28:41',NULL);
/*!40000 ALTER TABLE `baka_auth_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `baka_ci_sessions`
--

DROP TABLE IF EXISTS `baka_ci_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baka_ci_sessions` (
  `session_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0',
  `ip_address` varchar(16) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0',
  `user_agent` varchar(150) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `baka_system_opt`
--

DROP TABLE IF EXISTS `baka_system_opt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baka_system_opt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `opt_key` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `opt_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `opt_key_UNIQUE` (`opt_key`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baka_system_opt`
--

LOCK TABLES `baka_system_opt` WRITE;
/*!40000 ALTER TABLE `baka_system_opt` DISABLE KEYS */;
INSERT INTO `baka_system_opt` VALUES
(1,'app_data_show_limit','7'),
(2,'app_date_format','j F Y'),
(3,'app_datetime_format','j F Y\\,\\  H:i:s'),
(4,'app_fieldset_email','0'),
(5,'auth_username_length_min','4'),
(6,'auth_username_length_max','20'),
(7,'auth_password_length_min','4'),
(8,'auth_password_length_max','20'),
(9,'auth_allow_registration','1'),
(10,'auth_captcha_registration','1'),
(11,'auth_email_activation','0'),
(12,'auth_email_act_expire','172800'),
(13,'auth_use_username','1'),
(14,'auth_login_by_username','1'),
(15,'auth_login_by_email','1'),
(16,'auth_login_record_ip','1'),
(17,'auth_login_count_attempts','1'),
(18,'auth_login_max_attempts','4'),
(19,'auth_login_attempt_expire','259200'),
(20,'auth_use_recaptcha','0'),
(21,'auth_recaptcha_public_key',NULL),
(22,'auth_recaptcha_private_key',NULL),
(23,'auth_username_blacklist','admin, administrator, mod, moderator, root'),
(24,'auth_username_blacklist_prepend','the, sys, system, site, super'),
(25,'auth_username_exceptions',NULL),
(26,'email_protocol','0'),
(27,'email_mailpath',''),
(28,'email_smtp_host',''),
(29,'email_smtp_user',''),
(30,'email_smtp_pass',''),
(31,'email_smtp_port',''),
(32,'email_smtp_timeout','30'),
(33,'email_wordwrap','0'),
(34,'email_mailtype','0'),
(35,'email_priority','2'),
(36,'welcome_title','Selamat Datang di BPMPPT App'),
(37,'welcome_login','<p>Aplikasi © Badan Penanaman Modal dan Pelayanan Perijinan Terpadu Kabupaten Pekalongan</p><p>Silahkan login untuk dapat menggunakan aplikasi ini.</p>'),
(38,'welcome_register','<p>Aplikasi © Badan Penanaman Modal dan Pelayanan Perijinan Terpadu Kabupaten Pekalongan</p><p>Silahkan login untuk dapat menggunakan aplikasi ini.</p>'),
(39,'welcome_forgot','<p>Aplikasi © Badan Penanaman Modal dan Pelayanan Perijinan Terpadu Kabupaten Pekalongan</p><p>Silahkan login untuk dapat menggunakan aplikasi ini.</p>'),
(40,'welcome_resend','<p>Aplikasi © Badan Penanaman Modal dan Pelayanan Perijinan Terpadu Kabupaten Pekalongan</p><p>Silahkan login untuk dapat menggunakan aplikasi ini.</p>');
/*!40000 ALTER TABLE `baka_system_opt` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-06-20  2:42:15
