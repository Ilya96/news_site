-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: news
-- ------------------------------------------------------
-- Server version	8.0.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add news',7,'add_news'),(26,'Can change news',7,'change_news'),(27,'Can delete news',7,'delete_news'),(28,'Can view news',7,'view_news'),(29,'Can add Категории',8,'add_category'),(30,'Can change Категории',8,'change_category'),(31,'Can delete Категории',8,'delete_category'),(32,'Can view Категории',8,'view_category');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$216000$OKdWkP9uZGqG$un0oxHu6nV1yC3ZieJltFVWQOGHFUE7t0pJtBxR2eMg=','2021-02-06 05:27:33.518669',1,'ilya','','','',1,1,'2021-02-06 05:25:15.510776');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-02-06 07:29:43.279908','7','Новость из админки',1,'[{\"added\": {}}]',7,1),(2,'2021-02-06 11:04:48.429040','1','Category object (1)',1,'[{\"added\": {}}]',8,1),(3,'2021-02-06 11:05:14.948557','1','Category object (1)',3,'',8,1),(4,'2021-02-06 11:06:24.037509','2','Category object (2)',1,'[{\"added\": {}}]',8,1),(5,'2021-02-06 11:06:36.517222','3','Category object (3)',1,'[{\"added\": {}}]',8,1),(6,'2021-02-06 11:06:48.118886','4','Category object (4)',1,'[{\"added\": {}}]',8,1),(7,'2021-02-06 11:06:54.296239','5','Category object (5)',1,'[{\"added\": {}}]',8,1),(8,'2021-02-06 11:19:12.125441','7','Новость из админки',2,'[{\"changed\": {\"fields\": [\"Category\"]}}]',7,1),(9,'2021-02-06 11:19:20.050894','5','New 5',2,'[{\"changed\": {\"fields\": [\"Category\"]}}]',7,1),(10,'2021-02-06 11:19:24.365141','4','New 4',2,'[{\"changed\": {\"fields\": [\"Category\"]}}]',7,1),(11,'2021-02-06 11:19:33.873685','3','New 3',2,'[{\"changed\": {\"fields\": [\"Category\"]}}]',7,1),(12,'2021-02-06 11:19:37.820910','2','New 2',2,'[{\"changed\": {\"fields\": [\"Category\"]}}]',7,1),(13,'2021-02-06 11:19:45.505350','1','Новость 1',2,'[{\"changed\": {\"fields\": [\"Category\"]}}]',7,1),(14,'2021-02-06 11:27:17.766218','7','Новость из админки',2,'[{\"changed\": {\"fields\": [\"\\u041e\\u043f\\u0443\\u0431\\u043b\\u0438\\u043a\\u043e\\u0432\\u0430\\u043d\\u043e\"]}}]',7,1),(15,'2021-02-06 11:27:17.784219','3','New 3',2,'[{\"changed\": {\"fields\": [\"\\u041e\\u043f\\u0443\\u0431\\u043b\\u0438\\u043a\\u043e\\u0432\\u0430\\u043d\\u043e\"]}}]',7,1),(16,'2021-02-06 17:59:16.251858','7','Новость из админки',2,'[{\"changed\": {\"fields\": [\"\\u041a\\u043e\\u043d\\u0442\\u0435\\u043d\\u0442\"]}}]',7,1),(17,'2021-02-06 17:59:24.228314','5','New 5',2,'[{\"changed\": {\"fields\": [\"\\u041a\\u043e\\u043d\\u0442\\u0435\\u043d\\u0442\"]}}]',7,1),(18,'2021-02-06 17:59:30.202656','4','New 4',2,'[{\"changed\": {\"fields\": [\"\\u041a\\u043e\\u043d\\u0442\\u0435\\u043d\\u0442\"]}}]',7,1),(19,'2021-02-06 17:59:35.119937','3','New 3',2,'[{\"changed\": {\"fields\": [\"\\u041a\\u043e\\u043d\\u0442\\u0435\\u043d\\u0442\"]}}]',7,1),(20,'2021-02-06 17:59:41.146282','2','New 2',2,'[{\"changed\": {\"fields\": [\"\\u041a\\u043e\\u043d\\u0442\\u0435\\u043d\\u0442\"]}}]',7,1),(21,'2021-02-06 17:59:45.053505','1','Новость 1',2,'[{\"changed\": {\"fields\": [\"\\u041a\\u043e\\u043d\\u0442\\u0435\\u043d\\u0442\"]}}]',7,1),(22,'2021-02-06 18:53:07.459672','2','New 2',2,'[{\"changed\": {\"fields\": [\"\\u0424\\u043e\\u0442\\u043e\"]}}]',7,1),(23,'2021-02-10 10:01:54.990796','2','New 2',2,'[{\"changed\": {\"fields\": [\"\\u041e\\u043f\\u0443\\u0431\\u043b\\u0438\\u043a\\u043e\\u0432\\u0430\\u043d\\u043e\"]}}]',7,1),(24,'2021-02-10 10:01:55.012797','13','Новость из формы 6',2,'[{\"changed\": {\"fields\": [\"\\u041e\\u043f\\u0443\\u0431\\u043b\\u0438\\u043a\\u043e\\u0432\\u0430\\u043d\\u043e\"]}}]',7,1),(25,'2021-02-10 10:22:05.795050','2','New 2',2,'[{\"changed\": {\"fields\": [\"\\u041e\\u043f\\u0443\\u0431\\u043b\\u0438\\u043a\\u043e\\u0432\\u0430\\u043d\\u043e\"]}}]',7,1),(26,'2021-02-10 10:22:05.813051','3','New 3',2,'[{\"changed\": {\"fields\": [\"\\u041e\\u043f\\u0443\\u0431\\u043b\\u0438\\u043a\\u043e\\u0432\\u0430\\u043d\\u043e\"]}}]',7,1),(27,'2021-02-10 10:22:05.832052','7','Новость из админки',2,'[{\"changed\": {\"fields\": [\"\\u041e\\u043f\\u0443\\u0431\\u043b\\u0438\\u043a\\u043e\\u0432\\u0430\\u043d\\u043e\"]}}]',7,1),(28,'2021-02-10 10:22:05.849053','13','Новость из формы 6',2,'[{\"changed\": {\"fields\": [\"\\u041e\\u043f\\u0443\\u0431\\u043b\\u0438\\u043a\\u043e\\u0432\\u0430\\u043d\\u043e\"]}}]',7,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(8,'news','category'),(7,'news','news'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-02-04 10:38:13.540876'),(2,'auth','0001_initial','2021-02-04 10:38:13.934899'),(3,'admin','0001_initial','2021-02-04 10:38:15.547991'),(4,'admin','0002_logentry_remove_auto_add','2021-02-04 10:38:15.869009'),(5,'admin','0003_logentry_add_action_flag_choices','2021-02-04 10:38:15.887010'),(6,'contenttypes','0002_remove_content_type_name','2021-02-04 10:38:16.151025'),(7,'auth','0002_alter_permission_name_max_length','2021-02-04 10:38:16.310035'),(8,'auth','0003_alter_user_email_max_length','2021-02-04 10:38:16.385039'),(9,'auth','0004_alter_user_username_opts','2021-02-04 10:38:16.412040'),(10,'auth','0005_alter_user_last_login_null','2021-02-04 10:38:16.543048'),(11,'auth','0006_require_contenttypes_0002','2021-02-04 10:38:16.553048'),(12,'auth','0007_alter_validators_add_error_messages','2021-02-04 10:38:16.571049'),(13,'auth','0008_alter_user_username_max_length','2021-02-04 10:38:16.726058'),(14,'auth','0009_alter_user_last_name_max_length','2021-02-04 10:38:16.885067'),(15,'auth','0010_alter_group_name_max_length','2021-02-04 10:38:16.945071'),(16,'auth','0011_update_proxy_permissions','2021-02-04 10:38:16.970072'),(17,'auth','0012_alter_user_first_name_max_length','2021-02-04 10:38:17.131081'),(18,'news','0001_initial','2021-02-04 10:38:17.204086'),(19,'sessions','0001_initial','2021-02-04 10:38:17.276090'),(20,'news','0002_auto_20210206_1033','2021-02-06 07:37:17.727901'),(21,'news','0003_auto_20210206_1144','2021-02-06 08:46:51.053601'),(22,'news','0004_auto_20210211_2000','2021-02-11 17:00:33.007213');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('x9vsq48vczvz7kexjtdz2hlkqod4xs3u','.eJxVjLsOwjAMAP8lM4rcuHVSRvZ-Q2UnDimgVupjQvw7itQB1rvTvc3Ix17GY9N1nJK5msZcfplwfOpcRXrwfF9sXOZ9ncTWxJ52s8OS9HU7279B4a3UbU8OWwzq1UmLgBmkE4wIQDlqJpY-aghOoUcPjBJ8pI5A2wANkPl8AcjuNwc:1l8G85:aRW8UAc9rsBUZqhscgPjoKiXyRd59zbYTMKaF3RsghU','2021-02-20 05:27:33.528670');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_category`
--

DROP TABLE IF EXISTS `news_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `news_category_title_175a164c` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_category`
--

LOCK TABLES `news_category` WRITE;
/*!40000 ALTER TABLE `news_category` DISABLE KEYS */;
INSERT INTO `news_category` VALUES (6,'Искусство'),(2,'Культура'),(5,'Наука'),(4,'Политика'),(3,'Спорт');
/*!40000 ALTER TABLE `news_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_news`
--

DROP TABLE IF EXISTS `news_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `content` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `views` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `news_news_category_id_f060a768_fk_news_category_id` (`category_id`),
  CONSTRAINT `news_news_category_id_f060a768_fk_news_category_id` FOREIGN KEY (`category_id`) REFERENCES `news_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_news`
--

LOCK TABLES `news_news` WRITE;
/*!40000 ALTER TABLE `news_news` DISABLE KEYS */;
INSERT INTO `news_news` VALUES (1,'Новость 1','Актеры: Марк Пеллегрино, Патрик Фишлер, Роберт Форстер, Анджело Бадаламенти, Дэн Хедайя, Наоми Уоттс, Энн Миллер, Джастин Теру, Брент Бриско, Лаура Хэрринг\r\nРежиссеры: Дэвид Линч\r\n\r\nПовествование фильма «Малхолланд Драйв 2001»\r\nЗагадочная девушка, страдающая потерей памяти после автомобильной аварии, выбирает себе имя Рита с рекламного плаката к фильму с Ритой Хейворт и пытается с новым именем начать в Голливуде новую жизнь. Но тайны прошлого неотступно преследуют ее. Кто были те двое мужчин, что сидели в одной машине с ней и погибли в аварии? Почему полиция подозревает, что она была похищена ими? И случайно ли в ее жизни появляется новая подруга, начинающая актриса Бетти?\r\nАктеры: Армин Мюллер-Шталь, Риф Хаттон, Деннис Хейсбёрт, Стивен Шуб, Джереми Робертс, Гретхен Мол, Джанет МакЛахлан, Крэйг Бирко, Винсент Д\'Онофрио, Леон Риппи\r\nРежиссеры: Йозеф Руснак\r\n\r\nПовествование фильма «Тринадцатый этаж 1999»\r\nНа тринадцатом этаже компьютерной корпорации была разработана совершенная модель виртуальной реальности, создание которой повлекло за собой цепь таинственных убийств. Разгадать загадку можно, лишь погрузившись в иное измерение, где может быть ответ на многие вопросы, а может быть - страшная нереальность...','2021-02-04 19:31:09.841282','2021-02-06 17:59:45.052505','',1,5,8),(2,'New 2','Актеры: Марк Пеллегрино, Патрик Фишлер, Роберт Форстер, Анджело Бадаламенти, Дэн Хедайя, Наоми Уоттс, Энн Миллер, Джастин Теру, Брент Бриско, Лаура Хэрринг\r\nРежиссеры: Дэвид Линч\r\n\r\nПовествование фильма «Малхолланд Драйв 2001»\r\nЗагадочная девушка, страдающая потерей памяти после автомобильной аварии, выбирает себе имя Рита с рекламного плаката к фильму с Ритой Хейворт и пытается с новым именем начать в Голливуде новую жизнь. Но тайны прошлого неотступно преследуют ее. Кто были те двое мужчин, что сидели в одной машине с ней и погибли в аварии? Почему полиция подозревает, что она была похищена ими? И случайно ли в ее жизни появляется новая подруга, начинающая актриса Бетти?\r\nАктеры: Армин Мюллер-Шталь, Риф Хаттон, Деннис Хейсбёрт, Стивен Шуб, Джереми Робертс, Гретхен Мол, Джанет МакЛахлан, Крэйг Бирко, Винсент Д\'Онофрио, Леон Риппи\r\nРежиссеры: Йозеф Руснак\r\n\r\nПовествование фильма «Тринадцатый этаж 1999»\r\nНа тринадцатом этаже компьютерной корпорации была разработана совершенная модель виртуальной реальности, создание которой повлекло за собой цепь таинственных убийств. Разгадать загадку можно, лишь погрузившись в иное измерение, где может быть ответ на многие вопросы, а может быть - страшная нереальность...','2021-02-05 08:13:47.645073','2021-02-10 10:22:05.786049','photos/2021/53/02/06/21/Снимок.PNG',1,2,9),(3,'New 3','Актеры: Марк Пеллегрино, Патрик Фишлер, Роберт Форстер, Анджело Бадаламенти, Дэн Хедайя, Наоми Уоттс, Энн Миллер, Джастин Теру, Брент Бриско, Лаура Хэрринг\r\nРежиссеры: Дэвид Линч\r\n\r\nПовествование фильма «Малхолланд Драйв 2001»\r\nЗагадочная девушка, страдающая потерей памяти после автомобильной аварии, выбирает себе имя Рита с рекламного плаката к фильму с Ритой Хейворт и пытается с новым именем начать в Голливуде новую жизнь. Но тайны прошлого неотступно преследуют ее. Кто были те двое мужчин, что сидели в одной машине с ней и погибли в аварии? Почему полиция подозревает, что она была похищена ими? И случайно ли в ее жизни появляется новая подруга, начинающая актриса Бетти?\r\nАктеры: Армин Мюллер-Шталь, Риф Хаттон, Деннис Хейсбёрт, Стивен Шуб, Джереми Робертс, Гретхен Мол, Джанет МакЛахлан, Крэйг Бирко, Винсент Д\'Онофрио, Леон Риппи\r\nРежиссеры: Йозеф Руснак\r\n\r\nПовествование фильма «Тринадцатый этаж 1999»\r\nНа тринадцатом этаже компьютерной корпорации была разработана совершенная модель виртуальной реальности, создание которой повлекло за собой цепь таинственных убийств. Разгадать загадку можно, лишь погрузившись в иное измерение, где может быть ответ на многие вопросы, а может быть - страшная нереальность...','2021-02-05 10:34:51.055185','2021-02-10 10:22:05.803050','',1,3,10),(4,'New 4','Актеры: Марк Пеллегрино, Патрик Фишлер, Роберт Форстер, Анджело Бадаламенти, Дэн Хедайя, Наоми Уоттс, Энн Миллер, Джастин Теру, Брент Бриско, Лаура Хэрринг\r\nРежиссеры: Дэвид Линч\r\n\r\nПовествование фильма «Малхолланд Драйв 2001»\r\nЗагадочная девушка, страдающая потерей памяти после автомобильной аварии, выбирает себе имя Рита с рекламного плаката к фильму с Ритой Хейворт и пытается с новым именем начать в Голливуде новую жизнь. Но тайны прошлого неотступно преследуют ее. Кто были те двое мужчин, что сидели в одной машине с ней и погибли в аварии? Почему полиция подозревает, что она была похищена ими? И случайно ли в ее жизни появляется новая подруга, начинающая актриса Бетти?\r\nАктеры: Армин Мюллер-Шталь, Риф Хаттон, Деннис Хейсбёрт, Стивен Шуб, Джереми Робертс, Гретхен Мол, Джанет МакЛахлан, Крэйг Бирко, Винсент Д\'Онофрио, Леон Риппи\r\nРежиссеры: Йозеф Руснак\r\n\r\nПовествование фильма «Тринадцатый этаж 1999»\r\nНа тринадцатом этаже компьютерной корпорации была разработана совершенная модель виртуальной реальности, создание которой повлекло за собой цепь таинственных убийств. Разгадать загадку можно, лишь погрузившись в иное измерение, где может быть ответ на многие вопросы, а может быть - страшная нереальность...','2021-02-05 10:48:43.489797','2021-02-06 17:59:30.200656','',1,4,4),(5,'New 5','Актеры: Марк Пеллегрино, Патрик Фишлер, Роберт Форстер, Анджело Бадаламенти, Дэн Хедайя, Наоми Уоттс, Энн Миллер, Джастин Теру, Брент Бриско, Лаура Хэрринг\r\nРежиссеры: Дэвид Линч\r\n\r\nПовествование фильма «Малхолланд Драйв 2001»\r\nЗагадочная девушка, страдающая потерей памяти после автомобильной аварии, выбирает себе имя Рита с рекламного плаката к фильму с Ритой Хейворт и пытается с новым именем начать в Голливуде новую жизнь. Но тайны прошлого неотступно преследуют ее. Кто были те двое мужчин, что сидели в одной машине с ней и погибли в аварии? Почему полиция подозревает, что она была похищена ими? И случайно ли в ее жизни появляется новая подруга, начинающая актриса Бетти?\r\nАктеры: Армин Мюллер-Шталь, Риф Хаттон, Деннис Хейсбёрт, Стивен Шуб, Джереми Робертс, Гретхен Мол, Джанет МакЛахлан, Крэйг Бирко, Винсент Д\'Онофрио, Леон Риппи\r\nРежиссеры: Йозеф Руснак\r\n\r\nПовествование фильма «Тринадцатый этаж 1999»\r\nНа тринадцатом этаже компьютерной корпорации была разработана совершенная модель виртуальной реальности, создание которой повлекло за собой цепь таинственных убийств. Разгадать загадку можно, лишь погрузившись в иное измерение, где может быть ответ на многие вопросы, а может быть - страшная нереальность...','2021-02-05 10:51:23.322939','2021-02-06 17:59:24.226314','',1,5,3),(7,'Новость из админки','Актеры: Марк Пеллегрино, Патрик Фишлер, Роберт Форстер, Анджело Бадаламенти, Дэн Хедайя, Наоми Уоттс, Энн Миллер, Джастин Теру, Брент Бриско, Лаура Хэрринг\r\nРежиссеры: Дэвид Линч\r\n\r\nПовествование фильма «Малхолланд Драйв 2001»\r\nЗагадочная девушка, страдающая потерей памяти после автомобильной аварии, выбирает себе имя Рита с рекламного плаката к фильму с Ритой Хейворт и пытается с новым именем начать в Голливуде новую жизнь. Но тайны прошлого неотступно преследуют ее. Кто были те двое мужчин, что сидели в одной машине с ней и погибли в аварии? Почему полиция подозревает, что она была похищена ими? И случайно ли в ее жизни появляется новая подруга, начинающая актриса Бетти?\r\nАктеры: Армин Мюллер-Шталь, Риф Хаттон, Деннис Хейсбёрт, Стивен Шуб, Джереми Робертс, Гретхен Мол, Джанет МакЛахлан, Крэйг Бирко, Винсент Д\'Онофрио, Леон Риппи\r\nРежиссеры: Йозеф Руснак\r\n\r\nПовествование фильма «Тринадцатый этаж 1999»\r\nНа тринадцатом этаже компьютерной корпорации была разработана совершенная модель виртуальной реальности, создание которой повлекло за собой цепь таинственных убийств. Разгадать загадку можно, лишь погрузившись в иное измерение, где может быть ответ на многие вопросы, а может быть - страшная нереальность...','2021-02-06 07:29:43.269907','2021-02-10 10:22:05.822051','photos/2021/29/02/06/21/Безымянный.png',1,2,2),(8,'Новость из формы','\'add\'add\'add\'add\'add\'add\'add\'add\'add\'add\'add\'add\'add\'add\'add\'add\'add\'add\'add\'add\'add\'add\'add\'add\'add\'add\'add\'add\'add\'add\'add\'add\'add\'add\'add\'add\'add\'add\'add\'add\'add\'add\'add\'add\'add\'add\'add\'add\'add\'add\'add\'add\'add\'add\'add\'add\'add\'add\'add\'add\'add\'add\'add\'add\'add\'add\'add\'add','2021-02-08 20:58:51.151195','2021-02-08 20:58:51.151195','',1,3,1),(9,'Новость из формы 2','\'title\': forms.TextInput(attrs={\'class\': \'form-control\'})\r\n            \'title\': forms.TextInput(attrs={\'class\': \'form-control\'})\r\n            \'title\': forms.TextInput(attrs={\'class\': \'form-control\'})\r\n            \'title\': forms.TextInput(attrs={\'class\': \'form-control\'})\r\n            \'title\': forms.TextInput(attrs={\'class\': \'form-control\'})\r\n            \'title\': forms.TextInput(attrs={\'class\': \'form-control\'})\r\n            \'title\': forms.TextInput(attrs={\'class\': \'form-control\'})\r\n            \'title\': forms.TextInput(attrs={\'class\': \'form-control\'})\r\n            \'title\': forms.TextInput(attrs={\'class\': \'form-control\'})\r\n            \'title\': forms.TextInput(attrs={\'class\': \'form-control\'})\r\n            \'title\': forms.TextInput(attrs={\'class\': \'form-control\'})\r\n            \'title\': forms.TextInput(attrs={\'class\': \'form-control\'})\r\n            \'title\': forms.TextInput(attrs={\'class\': \'form-control\'})\r\n            \'title\': forms.TextInput(attrs={\'class\': \'form-control\'})\r\n            \'title\': forms.TextInput(attrs={\'class\': \'form-control\'})\r\n            \'title\': forms.TextInput(attrs={\'class\': \'form-control\'})\r\n            \'title\': forms.TextInput(attrs={\'class\': \'form-control\'})\r\n            \'title\': forms.TextInput(attrs={\'class\': \'form-control\'})\r\n            \'title\': forms.TextInput(attrs={\'class\': \'form-control\'})\r\n            \'title\': forms.TextInput(attrs={\'class\': \'form-control\'})\r\n            \'title\': forms.TextInput(attrs={\'class\': \'form-control\'})\r\n            \'title\': forms.TextInput(attrs={\'class\': \'form-control\'})','2021-02-08 21:15:26.920150','2021-02-08 21:15:26.920150','',1,4,7),(10,'Новость из формы 3','????????????????????????????????????','2021-02-09 09:38:15.575872','2021-02-09 09:38:15.575872','',1,4,11),(11,'Новость из формы 4','!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!','2021-02-09 09:38:48.559758','2021-02-09 09:38:48.559758','',1,3,6),(12,'Новость из формы 5','%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%','2021-02-09 09:40:00.597879','2021-02-09 09:40:00.597879','',1,3,5),(13,'Новость из формы 6','нрррр','2021-02-09 19:57:55.168033','2021-02-10 10:22:05.839052','',1,2,0);
/*!40000 ALTER TABLE `news_news` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-15 13:58:35
