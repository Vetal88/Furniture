-- MySQL dump 10.13  Distrib 5.7.19, for Win64 (x86_64)
--
-- Host: localhost    Database: furniture
-- ------------------------------------------------------
-- Server version	5.7.19

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
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `articles_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (5,'LOREM IPSUM IS SIMPLY','<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,</p>','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','article-1','articles/March2018/8Rnk2WVLFXO6PNADPzPi.jpg','article1','article1','2018-03-29 21:00:00','2018-03-30 08:26:58'),(6,'LOREM IPSUM IS SIMPLY2','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','article-2','articles/March2018/BHUq1XLZRBldUFYc8na6.jpg','article2','article2','2018-03-03 22:00:00','2018-03-30 08:26:48'),(9,'LOREM IPSUM IS SIMPLY3','<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,</p>','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','article-3','articles/March2018/W978NgDYfqfO1KGD2FZk.jpg','article3','article1','2018-03-03 22:00:00','2018-03-30 08:27:17'),(10,'LOREM IPSUM IS SIMPLY4','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','article-4','articles/March2018/S5N9zd6P8pctEORm9Wdy.jpg','article4','article2','2018-03-03 22:00:00','2018-03-30 08:27:29'),(15,'LOREM IPSUM IS SIMPLY5','<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,</p>','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','article-5','articles/March2018/ANz8RzNhiiXxAvCt3U0u.jpg','article5','article1','2018-03-03 22:00:00','2018-03-30 08:27:39'),(16,'LOREM IPSUM IS SIMPLY6','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','article-6','articles/March2018/Z5UqmgLTI7CYETTPSDuA.jpg','article6','article2','2018-03-03 22:00:00','2018-03-30 08:27:51'),(17,'text','<p>Reading is the best way to improve your vocabulary! The context of articles, stories, and conversations helps you figure out and understand the meaning of English words in the text that are new to you. Reading also provides repetition of vocabulary words you have already learned to help you remember them. Reading comprehension is easier if you already know the keywords in the reading. This is one reason that new vocabulary is presented and practiced at the beginning of each USA Learns unit. You learn the meaning and practice the pronunciation of the most important words that you will later read in video scripts and reading lessons.</p>','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur augue tortor, placerat sit amet enim fermentum, commodo viverra mauris.','test','articles/March2018/m6cdoUEyxgwdPcea4KJA.jpg','test','test','2018-03-30 09:07:35','2018-04-02 09:58:15');
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_parent_id_foreign` (`parent_id`),
  CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `category_name_unique` (`name`),
  UNIQUE KEY `category_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Kitchens','kitchens','1','2018-03-12 22:00:00','2018-03-12 22:00:00'),(2,'Сlosets','closets','1','2018-03-12 22:00:00','2018-03-12 22:00:00'),(7,'Bedrooms','bedrooms','1','2018-03-12 22:00:00','2018-03-12 22:00:00'),(8,'Beds','beds','1','2018-03-12 22:00:00','2018-03-12 22:00:00'),(9,'Tables and chairs','tables-chairs','1','2018-03-12 22:00:00','2018-03-12 22:00:00'),(10,'test','test','1','2018-03-21 15:13:34','2018-03-21 15:13:34');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_product`
--

DROP TABLE IF EXISTS `category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned DEFAULT NULL,
  `category_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_product_product_id_foreign` (`product_id`),
  KEY `category_product_category_id_foreign` (`category_id`),
  CONSTRAINT `category_product_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  CONSTRAINT `category_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_product`
--

LOCK TABLES `category_product` WRITE;
/*!40000 ALTER TABLE `category_product` DISABLE KEYS */;
INSERT INTO `category_product` VALUES (2,8,1,'2018-03-12 22:00:00','2018-03-13 22:00:00'),(3,9,2,'2018-03-12 22:00:00','2018-03-13 22:00:00'),(6,4,1,'2018-03-26 10:54:15','2018-03-26 10:54:15'),(7,4,7,'2018-03-26 10:54:15','2018-03-26 10:54:15'),(19,7,2,'2018-03-27 08:29:00','2018-03-27 08:29:00');
/*!40000 ALTER TABLE `category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) DEFAULT NULL,
  `parcent_off` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `coupons_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupons`
--

LOCK TABLES `coupons` WRITE;
/*!40000 ALTER TABLE `coupons` DISABLE KEYS */;
INSERT INTO `coupons` VALUES (3,'min','fixed',30,NULL,'2018-03-21 10:51:49','2018-03-21 10:51:49'),(5,'min23','fixed',NULL,50,'2018-03-21 10:51:49','2018-03-21 10:51:49');
/*!40000 ALTER TABLE `coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_rows`
--

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` VALUES (1,1,'id','number','ID',1,0,0,0,0,0,'',1),(2,1,'author_id','text','Author',1,0,1,1,0,1,'',2),(3,1,'category_id','text','Category',1,0,1,1,1,0,'',3),(4,1,'title','text','Title',1,1,1,1,1,1,'',4),(5,1,'excerpt','text_area','excerpt',1,0,1,1,1,1,'',5),(6,1,'body','rich_text_box','Body',1,0,1,1,1,1,'',6),(7,1,'image','image','Post Image',0,1,1,1,1,1,'{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}',7),(8,1,'slug','text','slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}',8),(9,1,'meta_description','text_area','meta_description',1,0,1,1,1,1,'',9),(10,1,'meta_keywords','text_area','meta_keywords',1,0,1,1,1,1,'',10),(11,1,'status','select_dropdown','status',1,1,1,1,1,1,'{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}',11),(12,1,'created_at','timestamp','created_at',0,1,1,0,0,0,'',12),(13,1,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',13),(14,2,'id','number','id',1,0,0,0,0,0,'',1),(15,2,'author_id','text','author_id',1,0,0,0,0,0,'',2),(16,2,'title','text','title',1,1,1,1,1,1,'',3),(17,2,'excerpt','text_area','excerpt',1,0,1,1,1,1,'',4),(18,2,'body','rich_text_box','body',1,0,1,1,1,1,'',5),(19,2,'slug','text','slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\"}}',6),(20,2,'meta_description','text','meta_description',1,0,1,1,1,1,'',7),(21,2,'meta_keywords','text','meta_keywords',1,0,1,1,1,1,'',8),(22,2,'status','select_dropdown','status',1,1,1,1,1,1,'{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}',9),(23,2,'created_at','timestamp','created_at',1,1,1,0,0,0,'',10),(24,2,'updated_at','timestamp','updated_at',1,0,0,0,0,0,'',11),(25,2,'image','image','image',0,1,1,1,1,1,'',12),(26,3,'id','number','id',1,0,0,0,0,0,'',1),(27,3,'name','text','name',1,1,1,1,1,1,'',2),(28,3,'email','text','email',1,1,1,1,1,1,'',3),(29,3,'password','password','password',0,0,0,1,1,0,'',4),(30,3,'user_belongsto_role_relationship','relationship','Role',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}',10),(31,3,'remember_token','text','remember_token',0,0,0,0,0,0,'',5),(32,3,'created_at','timestamp','created_at',0,1,1,0,0,0,'',6),(33,3,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',7),(34,3,'avatar','image','avatar',0,1,1,1,1,1,'',8),(35,5,'id','number','id',1,0,0,0,0,0,'',1),(36,5,'name','text','name',1,1,1,1,1,1,'',2),(37,5,'created_at','timestamp','created_at',0,0,0,0,0,0,'',3),(38,5,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',4),(39,4,'id','number','id',1,0,0,0,0,0,'',1),(40,4,'parent_id','select_dropdown','parent_id',0,0,1,1,1,1,'{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',2),(41,4,'order','text','order',1,1,1,1,1,1,'{\"default\":1}',3),(42,4,'name','text','name',1,1,1,1,1,1,'',4),(43,4,'slug','text','slug',1,1,1,1,1,1,'{\"slugify\":{\"origin\":\"name\"}}',5),(44,4,'created_at','timestamp','created_at',0,0,1,0,0,0,'',6),(45,4,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',7),(46,6,'id','number','id',1,0,0,0,0,0,'',1),(47,6,'name','text','Name',1,1,1,1,1,1,'',2),(48,6,'created_at','timestamp','created_at',0,0,0,0,0,0,'',3),(49,6,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',4),(50,6,'display_name','text','Display Name',1,1,1,1,1,1,'',5),(51,1,'seo_title','text','seo_title',0,1,1,1,1,1,'',14),(52,1,'featured','checkbox','featured',1,1,1,1,1,1,'',15),(53,3,'role_id','text','role_id',1,1,1,1,1,1,'',9),(54,7,'id','hidden','id',1,1,1,1,1,1,NULL,1),(55,7,'name','text','name',1,1,1,1,1,1,NULL,2),(56,7,'slug','text','slug',1,1,1,1,1,1,NULL,3),(57,7,'details','text','details',0,1,1,1,1,1,NULL,4),(58,7,'price','number','price',1,1,1,1,1,1,NULL,5),(59,7,'description','rich_text_box','description',1,1,1,1,1,1,NULL,6),(60,7,'featured','checkbox','featured',1,1,1,1,1,1,'{\"on\":\"Yes\",\"off\":\"No\"}',7),(61,7,'image','image','image',0,1,1,1,1,1,'{\"thumbnails\":[{\"name\":\"medium\",\"crop\":{\"width\":\"600\",\"height\":\"477\"}},{\"name\":\"small\",\"crop\":{\"width\":\"300\",\"height\":\"230\"}},{\"name\":\"long\",\"crop\":{\"width\":\"600\",\"height\":\"226\"}},{\"name\":\"cropped\",\"crop\":{\"width\":\"285\",\"height\":\"290\"}}]}',8),(62,7,'images','multiple_images','images',0,1,1,1,1,1,'{\"thumbnails\":[{\"name\":\"cropped\",\"crop\":{\"width\":\"850\",\"height\":\"995\"}},{\"name\":\"medium\",\"crop\":{\"width\":\"1280\",\"height\":\"1024\"}}]}',9),(63,7,'created_at','timestamp','created_at',0,0,0,0,0,0,NULL,10),(64,7,'updated_at','timestamp','updated_at',0,0,0,0,0,0,NULL,11),(65,8,'id','hidden','Id',1,1,1,1,1,0,NULL,1),(66,8,'name','text','Name',1,1,1,1,1,1,NULL,2),(67,8,'slug','text','Slug',1,1,1,1,1,1,NULL,3),(68,8,'parent_id','number','Parent Id',0,1,1,1,1,1,NULL,4),(69,8,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,5),(70,8,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,6),(71,9,'id','hidden','Id',1,1,1,1,1,0,NULL,1),(72,9,'code','text','Code',1,1,1,1,1,1,NULL,2),(73,9,'type','select_dropdown','type',1,1,1,1,1,1,'{\"default\":\"fixed\",\"options\":{\"fixed\":\"Fixed Value\",\"parcent\":\"Parcent Off\"}}',3),(74,9,'value','text','value',0,1,1,1,1,1,'{\"null\":\"\"}',4),(75,9,'parcent_off','number','parcent_off',0,1,1,1,1,1,'{\"null\":\"\"}',5),(76,9,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,6),(77,9,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),(78,10,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),(79,10,'product_id','number','Product Id',0,1,1,1,1,1,NULL,2),(80,10,'category_id','number','Category Id',0,1,1,1,1,1,NULL,3),(81,10,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,4),(82,10,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,5),(83,7,'color','radio_btn','color',0,1,1,1,1,1,'{\"default\":\"black\",\"options\":{\"red\":\"red\",\"blue\":\"blue\"}}',8),(84,11,'id','hidden','Id',1,1,1,1,1,1,NULL,1),(85,11,'user_id','number','User Id',0,1,1,1,0,0,NULL,2),(86,11,'billing_email','text','Billing Email',1,1,1,1,0,0,NULL,3),(87,11,'billing_name','text','Billing Name',1,1,1,1,0,0,NULL,4),(88,11,'billing_address','text','Billing Address',1,1,1,1,0,0,NULL,5),(89,11,'billing_city','text','Billing City',1,1,1,1,0,0,NULL,6),(90,11,'billing_province','text','Billing Province',1,1,1,1,0,0,NULL,7),(91,11,'billing_postalcode','text','Billing Postalcode',1,1,1,1,0,0,NULL,8),(92,11,'billing_phone','text','Billing Phone',1,1,1,1,1,1,NULL,9),(93,11,'billing_name_on_card','text','Billing Name On Card',1,1,1,1,0,0,NULL,10),(94,11,'billing_discount','number','Billing Discount',1,1,1,1,0,0,NULL,11),(95,11,'billing_discount_code','text','Billing Discount Code',0,1,1,1,0,0,NULL,12),(96,11,'billing_subtotal','number','Billing Subtotal',1,1,1,1,0,0,NULL,13),(97,11,'billing_tax','number','Billing Tax',1,1,1,1,0,0,NULL,14),(98,11,'billing_total','number','Billing Total',1,1,1,1,0,0,NULL,15),(99,11,'payment_gateway','text','Payment Gateway',1,1,1,1,0,0,NULL,16),(100,11,'shipped','checkbox','shipped',1,1,1,1,0,0,'{\"on\":\"Yes\",\"off\":\"No\"}',17),(101,11,'error','text','error',0,1,1,0,0,0,NULL,18),(102,11,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,19),(103,11,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,20),(104,12,'id','hidden','Id',1,1,1,1,1,0,NULL,1),(105,12,'title','text','title',1,1,1,1,1,0,NULL,2),(106,12,'text','rich_text_box','text',1,1,1,1,1,0,NULL,3),(107,12,'excerpt','text','excerpt',1,1,1,1,1,0,NULL,4),(108,12,'slug','text','slug',1,1,1,1,1,0,NULL,5),(109,12,'image','image','image',1,1,1,1,1,0,'{\"thumbnails\":[{\"name\":\"small\",\"crop\":{\"width\":\"600\",\"height\":\"300\"}},{\"name\":\"medium\",\"crop\":{\"width\":\"1140\",\"height\":\"350\"}}]}',6),(110,12,'keywords','text','keywords',0,1,1,1,1,0,NULL,7),(111,12,'meta_desc','text','meta_desc',0,1,1,1,1,1,NULL,8),(112,12,'created_at','timestamp','created_at',0,0,0,0,0,0,NULL,9),(113,12,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,10);
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_types`
--

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
INSERT INTO `data_types` VALUES (1,'posts','posts','Post','Posts','voyager-news','TCG\\Voyager\\Models\\Post','TCG\\Voyager\\Policies\\PostPolicy','','',1,0,'2018-03-06 09:58:27','2018-03-06 09:58:27'),(2,'pages','pages','Page','Pages','voyager-file-text','TCG\\Voyager\\Models\\Page',NULL,'','',1,0,'2018-03-06 09:58:27','2018-03-06 09:58:27'),(3,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User','TCG\\Voyager\\Policies\\UserPolicy','','',1,0,'2018-03-06 09:58:27','2018-03-06 09:58:27'),(4,'categories','categories','Category','Categories','voyager-categories','TCG\\Voyager\\Models\\Category',NULL,'','',1,0,'2018-03-06 09:58:27','2018-03-06 09:58:27'),(5,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu',NULL,'','',1,0,'2018-03-06 09:58:27','2018-03-06 09:58:27'),(6,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role',NULL,'','',1,0,'2018-03-06 09:58:27','2018-03-06 09:58:27'),(7,'products','products','Product','Products','voyager-bag','App\\Product',NULL,'\\App\\Http\\Controllers\\Voyager\\ProductsController',NULL,1,1,'2018-03-21 14:51:42','2018-03-26 10:27:45'),(8,'category','category','Category','Categories','voyager-categories','App\\Category',NULL,NULL,NULL,1,0,'2018-03-21 15:12:17','2018-03-21 15:12:17'),(9,'coupons','coupons','Coupon','Coupons','voyager-dollar','App\\Coupon',NULL,NULL,NULL,1,0,'2018-03-21 15:20:19','2018-03-21 15:20:19'),(10,'category_product','category-product','Category Product','Category Products','voyager-tag','App\\CategoryProduct',NULL,NULL,NULL,1,1,'2018-03-21 15:26:23','2018-03-21 15:27:21'),(11,'orders','orders','Order','Orders',NULL,'App\\Order',NULL,'\\App\\Http\\Controllers\\Voyager\\OrderController',NULL,1,1,'2018-03-27 12:27:44','2018-03-27 12:37:00'),(12,'articles','articles','Article','Articles','voyager-news','App\\Article',NULL,NULL,NULL,1,1,'2018-03-30 08:02:46','2018-03-30 08:10:05');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (1,1,'Dashboard','','_self','voyager-boat',NULL,NULL,1,'2018-03-06 09:58:27','2018-03-27 12:29:37','voyager.dashboard',NULL),(2,1,'Media','','_self','voyager-images',NULL,NULL,10,'2018-03-06 09:58:27','2018-03-30 08:05:23','voyager.media.index',NULL),(3,1,'Posts','','_self','voyager-news',NULL,NULL,11,'2018-03-06 09:58:27','2018-03-30 08:05:23','voyager.posts.index',NULL),(4,1,'Users','','_self','voyager-person',NULL,NULL,9,'2018-03-06 09:58:27','2018-03-30 08:05:23','voyager.users.index',NULL),(5,1,'Categories','','_self','voyager-categories',NULL,NULL,13,'2018-03-06 09:58:27','2018-03-30 08:05:23','voyager.categories.index',NULL),(6,1,'Pages','','_self','voyager-file-text',NULL,NULL,12,'2018-03-06 09:58:27','2018-03-30 08:05:23','voyager.pages.index',NULL),(7,1,'Roles','','_self','voyager-lock',NULL,NULL,8,'2018-03-06 09:58:27','2018-03-30 08:05:23','voyager.roles.index',NULL),(8,1,'Tools','','_self','voyager-tools',NULL,NULL,14,'2018-03-06 09:58:27','2018-03-30 08:05:23',NULL,NULL),(9,1,'Menu Builder','','_self','voyager-list',NULL,8,1,'2018-03-06 09:58:27','2018-03-21 15:00:17','voyager.menus.index',NULL),(10,1,'Database','','_self','voyager-data',NULL,8,2,'2018-03-06 09:58:27','2018-03-21 15:00:17','voyager.database.index',NULL),(11,1,'Compass','','_self','voyager-compass',NULL,8,3,'2018-03-06 09:58:27','2018-03-21 15:00:17','voyager.compass.index',NULL),(12,1,'Settings','','_self','voyager-settings',NULL,NULL,15,'2018-03-06 09:58:27','2018-03-30 08:05:23','voyager.settings.index',NULL),(13,1,'Hooks','','_self','voyager-hook',NULL,8,4,'2018-03-06 09:58:27','2018-03-21 15:00:17','voyager.hooks',NULL),(14,2,'Home','/','_self','voyager-home','#000000',NULL,15,'2018-03-12 14:44:26','2018-03-12 14:44:26',NULL,''),(15,2,'Shop','/shop','_self','voyager-bag','#80ff00',NULL,16,'2018-03-12 14:45:19','2018-03-13 12:43:58',NULL,''),(16,2,'Blog','/article','_self','voyager-book','#000000',NULL,17,'2018-03-12 14:45:48','2018-03-30 07:36:55',NULL,''),(17,2,'Contact','/contacts','_self','voyager-telephone','#000000',NULL,18,'2018-03-12 14:46:03','2018-04-02 09:14:00',NULL,''),(18,1,'Products','/admin/products','_self','voyager-bag',NULL,NULL,2,'2018-03-21 14:51:42','2018-03-27 12:29:37',NULL,NULL),(19,1,'Categories','/admin/category','_self','voyager-categories',NULL,NULL,3,'2018-03-21 15:12:18','2018-03-27 12:29:37',NULL,NULL),(20,1,'Coupons','/admin/coupons','_self','voyager-dollar',NULL,NULL,5,'2018-03-21 15:20:19','2018-03-27 12:29:37',NULL,NULL),(21,1,'Category Products','/admin/category-product','_self','voyager-tag',NULL,NULL,4,'2018-03-21 15:26:23','2018-03-27 12:29:37',NULL,NULL),(22,3,'twitter','https://twitter.com/','_self',NULL,'#000000',NULL,2,'2018-03-21 15:40:06','2018-03-21 16:01:27',NULL,''),(23,3,'gmail','https://www.linkedin.com/','_self',NULL,'#000000',NULL,3,'2018-03-21 15:41:29','2018-03-21 16:01:54',NULL,''),(24,3,'facebook','https://www.facebook.com/','_self',NULL,'#000000',NULL,1,'2018-03-21 15:41:59','2018-03-21 15:42:04',NULL,''),(25,1,'Orders','/admin/orders','_self','voyager-file-text','#000000',NULL,6,'2018-03-27 12:27:44','2018-03-27 12:34:22',NULL,''),(26,1,'Articles','/admin/articles','_self',NULL,NULL,NULL,7,'2018-03-30 08:02:46','2018-03-30 08:05:23',NULL,NULL);
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'admin','2018-03-06 09:58:27','2018-03-06 09:58:27'),(2,'Main','2018-03-12 14:43:49','2018-03-30 11:23:43'),(3,'footer','2018-03-21 15:38:12','2018-03-21 15:38:12');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (56,'2014_10_12_000000_create_users_table',1),(57,'2014_10_12_100000_create_password_resets_table',1),(58,'2016_01_01_000000_add_voyager_user_fields',1),(59,'2016_01_01_000000_create_data_types_table',1),(60,'2016_01_01_000000_create_pages_table',1),(61,'2016_01_01_000000_create_posts_table',1),(62,'2016_02_15_204651_create_categories_table',1),(63,'2016_05_19_173453_create_menu_table',1),(64,'2016_10_21_190000_create_roles_table',1),(65,'2016_10_21_190000_create_settings_table',1),(66,'2016_11_30_135954_create_permission_table',1),(67,'2016_11_30_141208_create_permission_role_table',1),(68,'2016_12_26_201236_data_types__add__server_side',1),(69,'2017_01_13_000000_add_route_to_menu_items_table',1),(70,'2017_01_14_005015_create_translations_table',1),(71,'2017_01_15_000000_add_permission_group_id_to_permissions_table',1),(72,'2017_01_15_000000_create_permission_groups_table',1),(73,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',1),(74,'2017_03_06_000000_add_controller_to_data_types_table',1),(75,'2017_04_11_000000_alter_post_nullable_fields_table',1),(76,'2017_04_21_000000_add_order_to_data_rows_table',1),(77,'2017_07_05_210000_add_policyname_to_data_types_table',1),(78,'2017_08_05_000000_add_group_to_settings_table',1),(79,'2018_03_02_160604_create_products_table',1),(80,'2018_03_12_122854_create_orders_table',2),(81,'2018_03_12_123936_order_product',3),(82,'2018_03_12_165558_create_category_table',4),(83,'2018_03_12_165714_create_category_product_table',4),(84,'2018_03_13_112052_add_parent_id_category_table',5),(85,'2018_03_21_121507_create_coupons_table',6),(86,'2018_03_21_125041_create_coupons_table',7),(87,'2018_03_26_104151_add_color_product_table',8),(88,'2018_03_30_101232_create_articless_table',9);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_product`
--

DROP TABLE IF EXISTS `order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned DEFAULT NULL,
  `product_id` int(10) unsigned DEFAULT NULL,
  `quantity` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_product_order_id_foreign` (`order_id`),
  KEY `order_product_product_id_foreign` (`product_id`),
  CONSTRAINT `order_product_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `order_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_product`
--

LOCK TABLES `order_product` WRITE;
/*!40000 ALTER TABLE `order_product` DISABLE KEYS */;
INSERT INTO `order_product` VALUES (1,1,9,1,'2018-03-27 12:13:54','2018-03-27 12:13:54'),(2,2,5,1,'2018-03-27 12:16:51','2018-03-27 12:16:51'),(3,2,1,1,'2018-03-27 12:16:51','2018-03-27 12:16:51'),(4,3,7,2,'2018-03-27 12:21:14','2018-03-27 12:21:14'),(5,4,4,1,'2018-03-28 07:51:56','2018-03-28 07:51:56'),(6,5,1,1,'2018-03-28 07:53:18','2018-03-28 07:53:18'),(7,6,6,1,'2018-03-28 07:54:29','2018-03-28 07:54:29'),(8,7,6,1,'2018-03-28 07:55:18','2018-03-28 07:55:18'),(9,8,6,1,'2018-03-28 07:56:03','2018-03-28 07:56:03'),(10,9,5,1,'2018-03-28 08:03:38','2018-03-28 08:03:38'),(11,10,5,1,'2018-03-28 08:06:39','2018-03-28 08:06:39'),(12,11,5,1,'2018-03-28 08:08:03','2018-03-28 08:08:03'),(13,12,5,1,'2018-03-28 08:09:53','2018-03-28 08:09:53'),(14,13,1,1,'2018-03-28 08:12:00','2018-03-28 08:12:00'),(15,14,6,1,'2018-03-28 08:32:06','2018-03-28 08:32:06'),(16,15,6,1,'2018-03-28 08:33:21','2018-03-28 08:33:21'),(17,16,6,1,'2018-03-28 08:34:28','2018-03-28 08:34:28'),(18,17,8,1,'2018-03-28 08:41:34','2018-03-28 08:41:34'),(19,18,7,1,'2018-03-28 08:55:28','2018-03-28 08:55:28'),(20,19,8,1,'2018-03-28 08:58:18','2018-03-28 08:58:18'),(21,20,1,1,'2018-04-03 06:31:06','2018-04-03 06:31:06');
/*!40000 ALTER TABLE `order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `billing_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_postalcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_name_on_card` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_discount` int(11) NOT NULL DEFAULT '0',
  `billing_discount_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_subtotal` int(11) NOT NULL,
  `billing_tax` int(11) NOT NULL,
  `billing_total` int(11) NOT NULL,
  `payment_gateway` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'stripe',
  `shipped` tinyint(1) NOT NULL DEFAULT '0',
  `error` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_user_id_foreign` (`user_id`),
  CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,NULL,'vetal_88@hotmail.com','dental','werwerwer','werwer','werwerwer','werwerwer','werwerwe','rwrwr',0,'0',9000,0,9000,'stripe',0,NULL,'2018-03-27 12:13:54','2018-03-27 12:13:54'),(2,NULL,'admin@admin.com','two','wegwegweg','wegweg','weg','wegwg','wegweg','test two',30,'min22',79970,0,79970,'stripe',0,NULL,'2018-03-27 12:16:51','2018-03-27 12:16:51'),(3,1,'test@wegwwgw.com','wefwef','wefwef','wef','wfwef','wefwef','wefwef','test111',0,'0',140000,0,140000,'stripe',0,NULL,'2018-03-27 12:21:14','2018-03-27 12:21:14'),(4,NULL,'vetal_88@hotmail.com','ewfwefwef','wefwef','wef','wef','wef','wefwef','wefwef',0,'0',100,0,100,'stripe',0,NULL,'2018-03-28 07:51:56','2018-03-28 07:51:56'),(5,NULL,'admin@admin.com','werwer','werwer','wer','wer','wer','wer','wer',0,'0',30000,0,30000,'stripe',0,NULL,'2018-03-28 07:53:18','2018-03-28 07:53:18'),(6,NULL,'test@wegwwgw.com','23r23r2r','werwerer','wer','werwer','werwer','wer','r3t2t2',0,'0',60000,0,60000,'stripe',0,NULL,'2018-03-28 07:54:29','2018-03-28 07:54:29'),(7,NULL,'vetal_88@hotmail.com','wefwefwefwefwef','wf','wef','wef','wef','wef','wefwefwe',0,'0',60000,0,60000,'stripe',0,NULL,'2018-03-28 07:55:18','2018-03-28 07:55:18'),(8,NULL,'vetal_88@hotmail.com','wefwefwefwefwef','wf','wef','wef','wef','wef','wefwefwe',0,'0',60000,0,60000,'stripe',0,NULL,'2018-03-28 07:56:03','2018-03-28 07:56:03'),(9,NULL,'vetal_88@hotmail.com','wefwefwef','wefewfwf','wefwe','wefwef','wefwef','wefwef','wwfef',0,'0',50000,0,50000,'stripe',0,NULL,'2018-03-28 08:03:38','2018-03-28 08:03:38'),(10,NULL,'vetal_88@hotmail.com','wfeefwefe','wefwef','wefwef','wefwef','wfwefwef','wefwef','wefwefwefwe',0,'0',50000,0,50000,'stripe',0,NULL,'2018-03-28 08:06:39','2018-03-28 08:06:39'),(11,NULL,'vetal_88@hotmail.com','wfeefwefe','wefwef','wefwef','wefwef','wfwefwef','wefwef','wefwefwefwe',0,'0',50000,0,50000,'stripe',0,NULL,'2018-03-28 08:08:03','2018-03-28 08:08:03'),(12,NULL,'vetal_88@hotmail.com','wefwf','wefwefwef','wefwef','wefwef','wef','wefwef','wefwefewf',0,'0',50000,0,50000,'stripe',0,NULL,'2018-03-28 08:09:53','2018-03-28 08:09:53'),(13,NULL,'admin@admin.com','dental','test','ewf','fwef','wef','wef','234234',0,'0',30000,0,30000,'stripe',0,NULL,'2018-03-28 08:12:00','2018-03-28 08:12:00'),(14,NULL,'vetal_88@hotmail.com','dental','test','Киев','Украина','0222','wefwef','color',0,'0',60000,0,60000,'stripe',0,NULL,'2018-03-28 08:32:06','2018-03-28 08:32:06'),(15,NULL,'vetal_88@hotmail.com','dental','test','Киев','Украина','0222','wefwef','color',0,'0',60000,0,60000,'stripe',0,NULL,'2018-03-28 08:33:21','2018-03-28 08:33:21'),(16,NULL,'vetal_88@hotmail.com','dental','test','Киев','Украина','0222','wefwef','color',0,'0',60000,0,60000,'stripe',0,NULL,'2018-03-28 08:34:28','2018-03-28 08:34:28'),(17,NULL,'vetal_88@hotmail.com','dental','test','Киев','Украина','0222','wef','wefwef',0,'0',8000,0,8000,'stripe',0,NULL,'2018-03-28 08:41:34','2018-03-28 08:41:34'),(18,NULL,'vetal_88@hotmail.com','dentalwqdwqd','test','Киев','Украина','0222','wefwef','wqdqwdwdqw',0,'0',70000,0,70000,'stripe',0,NULL,'2018-03-28 08:55:28','2018-03-28 08:55:28'),(19,NULL,'wefwefwef@fwef.com','ewfwf','wefwef','wef','wef','wef','wef','wef',0,'0',8000,0,8000,'stripe',0,NULL,'2018-03-28 08:58:18','2018-03-28 08:58:18'),(20,1,'vetal_88@hotmail.com','gergreg','regreg','ergre','regreg','ergerg','reg','erfe',0,'0',30000,0,30000,'stripe',0,NULL,'2018-04-03 06:31:06','2018-04-03 06:31:06');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_groups`
--

DROP TABLE IF EXISTS `permission_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permission_groups_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_groups`
--

LOCK TABLES `permission_groups` WRITE;
/*!40000 ALTER TABLE `permission_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `permission_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(63,1),(64,1),(65,1),(66,1),(67,1),(68,1),(69,1),(70,1);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission_group_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'browse_admin',NULL,'2018-03-06 09:58:27','2018-03-06 09:58:27',NULL),(2,'browse_database',NULL,'2018-03-06 09:58:27','2018-03-06 09:58:27',NULL),(3,'browse_media',NULL,'2018-03-06 09:58:27','2018-03-06 09:58:27',NULL),(4,'browse_compass',NULL,'2018-03-06 09:58:27','2018-03-06 09:58:27',NULL),(5,'browse_menus','menus','2018-03-06 09:58:27','2018-03-06 09:58:27',NULL),(6,'read_menus','menus','2018-03-06 09:58:27','2018-03-06 09:58:27',NULL),(7,'edit_menus','menus','2018-03-06 09:58:27','2018-03-06 09:58:27',NULL),(8,'add_menus','menus','2018-03-06 09:58:27','2018-03-06 09:58:27',NULL),(9,'delete_menus','menus','2018-03-06 09:58:27','2018-03-06 09:58:27',NULL),(10,'browse_pages','pages','2018-03-06 09:58:27','2018-03-06 09:58:27',NULL),(11,'read_pages','pages','2018-03-06 09:58:27','2018-03-06 09:58:27',NULL),(12,'edit_pages','pages','2018-03-06 09:58:27','2018-03-06 09:58:27',NULL),(13,'add_pages','pages','2018-03-06 09:58:27','2018-03-06 09:58:27',NULL),(14,'delete_pages','pages','2018-03-06 09:58:27','2018-03-06 09:58:27',NULL),(15,'browse_roles','roles','2018-03-06 09:58:27','2018-03-06 09:58:27',NULL),(16,'read_roles','roles','2018-03-06 09:58:27','2018-03-06 09:58:27',NULL),(17,'edit_roles','roles','2018-03-06 09:58:27','2018-03-06 09:58:27',NULL),(18,'add_roles','roles','2018-03-06 09:58:27','2018-03-06 09:58:27',NULL),(19,'delete_roles','roles','2018-03-06 09:58:27','2018-03-06 09:58:27',NULL),(20,'browse_users','users','2018-03-06 09:58:27','2018-03-06 09:58:27',NULL),(21,'read_users','users','2018-03-06 09:58:27','2018-03-06 09:58:27',NULL),(22,'edit_users','users','2018-03-06 09:58:27','2018-03-06 09:58:27',NULL),(23,'add_users','users','2018-03-06 09:58:27','2018-03-06 09:58:27',NULL),(24,'delete_users','users','2018-03-06 09:58:27','2018-03-06 09:58:27',NULL),(25,'browse_posts','posts','2018-03-06 09:58:27','2018-03-06 09:58:27',NULL),(26,'read_posts','posts','2018-03-06 09:58:27','2018-03-06 09:58:27',NULL),(27,'edit_posts','posts','2018-03-06 09:58:27','2018-03-06 09:58:27',NULL),(28,'add_posts','posts','2018-03-06 09:58:27','2018-03-06 09:58:27',NULL),(29,'delete_posts','posts','2018-03-06 09:58:27','2018-03-06 09:58:27',NULL),(30,'browse_categories','categories','2018-03-06 09:58:27','2018-03-06 09:58:27',NULL),(31,'read_categories','categories','2018-03-06 09:58:27','2018-03-06 09:58:27',NULL),(32,'edit_categories','categories','2018-03-06 09:58:27','2018-03-06 09:58:27',NULL),(33,'add_categories','categories','2018-03-06 09:58:27','2018-03-06 09:58:27',NULL),(34,'delete_categories','categories','2018-03-06 09:58:27','2018-03-06 09:58:27',NULL),(35,'browse_settings','settings','2018-03-06 09:58:27','2018-03-06 09:58:27',NULL),(36,'read_settings','settings','2018-03-06 09:58:27','2018-03-06 09:58:27',NULL),(37,'edit_settings','settings','2018-03-06 09:58:27','2018-03-06 09:58:27',NULL),(38,'add_settings','settings','2018-03-06 09:58:27','2018-03-06 09:58:27',NULL),(39,'delete_settings','settings','2018-03-06 09:58:27','2018-03-06 09:58:27',NULL),(40,'browse_hooks',NULL,'2018-03-06 09:58:27','2018-03-06 09:58:27',NULL),(41,'browse_products','products','2018-03-21 14:51:42','2018-03-21 14:51:42',NULL),(42,'read_products','products','2018-03-21 14:51:42','2018-03-21 14:51:42',NULL),(43,'edit_products','products','2018-03-21 14:51:42','2018-03-21 14:51:42',NULL),(44,'add_products','products','2018-03-21 14:51:42','2018-03-21 14:51:42',NULL),(45,'delete_products','products','2018-03-21 14:51:42','2018-03-21 14:51:42',NULL),(46,'browse_category','category','2018-03-21 15:12:18','2018-03-21 15:12:18',NULL),(47,'read_category','category','2018-03-21 15:12:18','2018-03-21 15:12:18',NULL),(48,'edit_category','category','2018-03-21 15:12:18','2018-03-21 15:12:18',NULL),(49,'add_category','category','2018-03-21 15:12:18','2018-03-21 15:12:18',NULL),(50,'delete_category','category','2018-03-21 15:12:18','2018-03-21 15:12:18',NULL),(51,'browse_coupons','coupons','2018-03-21 15:20:19','2018-03-21 15:20:19',NULL),(52,'read_coupons','coupons','2018-03-21 15:20:19','2018-03-21 15:20:19',NULL),(53,'edit_coupons','coupons','2018-03-21 15:20:19','2018-03-21 15:20:19',NULL),(54,'add_coupons','coupons','2018-03-21 15:20:19','2018-03-21 15:20:19',NULL),(55,'delete_coupons','coupons','2018-03-21 15:20:19','2018-03-21 15:20:19',NULL),(56,'browse_category_product','category_product','2018-03-21 15:26:23','2018-03-21 15:26:23',NULL),(57,'read_category_product','category_product','2018-03-21 15:26:23','2018-03-21 15:26:23',NULL),(58,'edit_category_product','category_product','2018-03-21 15:26:23','2018-03-21 15:26:23',NULL),(59,'add_category_product','category_product','2018-03-21 15:26:23','2018-03-21 15:26:23',NULL),(60,'delete_category_product','category_product','2018-03-21 15:26:23','2018-03-21 15:26:23',NULL),(61,'browse_orders','orders','2018-03-27 12:27:44','2018-03-27 12:27:44',NULL),(62,'read_orders','orders','2018-03-27 12:27:44','2018-03-27 12:27:44',NULL),(63,'edit_orders','orders','2018-03-27 12:27:44','2018-03-27 12:27:44',NULL),(64,'add_orders','orders','2018-03-27 12:27:44','2018-03-27 12:27:44',NULL),(65,'delete_orders','orders','2018-03-27 12:27:44','2018-03-27 12:27:44',NULL),(66,'browse_articles','articles','2018-03-30 08:02:46','2018-03-30 08:02:46',NULL),(67,'read_articles','articles','2018-03-30 08:02:46','2018-03-30 08:02:46',NULL),(68,'edit_articles','articles','2018-03-30 08:02:46','2018-03-30 08:02:46',NULL),(69,'add_articles','articles','2018-03-30 08:02:46','2018-03-30 08:02:46',NULL),(70,'delete_articles','articles','2018-03-30 08:02:46','2018-03-30 08:02:46',NULL);
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,1,NULL,'prod1',NULL,NULL,'<p>gewgwegweg</p>','posts/March2018/pbRRw8kKeytJZp6ZDMCE.jpg','prod1',NULL,NULL,'PUBLISHED',0,'2018-03-06 10:05:10','2018-03-06 10:05:10');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `images` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_name_unique` (`name`),
  UNIQUE KEY `products_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Kitchen Oskar Kentucky Alba','Kitchen-1','Integer sit amet interdum lorem. In tincidunt, risus in molestie tempusInteger sit amet interdum lorem. In tincidunt, risus in molestie tempus',30000,'Aliquam nec tellus odio. Ut quis condimentum lorem. Nullam porttitor magna vitae tincidunt efficitur. Integer pulvinar eros varius egestas molestie. Donec venenatis consequat mauris in dignissim. Morbi faucibus dignissim nibh, iaculis vulputate tortor porta at. Maecenas posuere sit amet est vel vehicula. Suspendisse ac lectus lorem. Cras vel semper risus. Nulla id risus dapibus, euismod neque quis, laoreet ante. Ut a maximus turpis. Nulla mollis dolor erat, vitae consequat lectus consequat sollicitudin. Vivamus in libero sit amet erat pulvinar consectetur id a justo. Donec bibendum dapibus ipsum porta molestie. Phasellus vehicula et orci a viverra.',1,NULL,'products/March2018/spjyxltVRA9i9RrljqCy.jpg','[\"products\\/March2018\\/Rs391ATVEGeZqY1QEikA.jpg\",\"products\\/March2018\\/PT0pb1WYa7e9j8KEdUs5.jpg\",\"products\\/March2018\\/xobJoDOGdQRssycMUYQm.jpg\",\"products\\/March2018\\/zC7jylw10EZHQowinLfb.jpg\"]',NULL,'2018-03-23 12:47:31'),(4,'Kitchen','Kitchen-2','Integer sit amet interdum lorem. In tincidunt, risus in molestie tempusInteger sit amet interdum lorem. In tincidunt, risus in molestie tempus',100,'<p>Aliquam nec tellus odio. Ut quis condimentum lorem. Nullam porttitor magna vitae tincidunt efficitur. Integer pulvinar eros varius egestas molestie. Donec venenatis consequat mauris in dignissim. Morbi faucibus dignissim nibh, iaculis vulputate tortor porta at. Maecenas posuere sit amet est vel vehicula. Suspendisse ac lectus lorem. Cras vel semper risus. Nulla id risus dapibus, euismod neque quis, laoreet ante. Ut a maximus turpis. Nulla mollis dolor erat, vitae consequat lectus consequat sollicitudin. Vivamus in libero sit amet erat pulvinar consectetur id a justo. Donec bibendum dapibus ipsum porta molestie. Phasellus vehicula et orci a viverra.</p>',1,NULL,'products/March2018/TBeLhe3OFo3VRMYutkcc.jpg','[\"products\\/March2018\\/3fLcXsqsoebigLk5QB9R.jpg\",\"products\\/March2018\\/gHEmKMy0yiXQZlVlc6um.jpg\",\"products\\/March2018\\/yk0psdh2PVFVKvzXR5XZ.jpg\",\"products\\/March2018\\/vKtYCGBJJhbqfx0Unir2.jpg\"]',NULL,'2018-03-26 10:53:40'),(5,'Kitchen old','Kitchen-3','Integer sit amet interdum lorem. In tincidunt, risus in molestie tempus',50000,'Aliquam nec tellus odio. Ut quis condimentum lorem. Nullam porttitor magna vitae tincidunt efficitur. Integer pulvinar eros varius egestas molestie. Donec venenatis consequat mauris in dignissim. Morbi faucibus dignissim nibh, iaculis vulputate tortor porta at. Maecenas posuere sit amet est vel vehicula. Suspendisse ac lectus lorem.',1,NULL,'products/March2018/k4aoGW7NlMz46BeCxAhB.jpg','[\"products\\/March2018\\/Jz7E5XTpeky90Jb2EVEQ.jpg\",\"products\\/March2018\\/iykAKDlF19Pi8N32agTQ.jpg\",\"products\\/March2018\\/QN7j39I2PXqfi8HTTmDA.jpg\",\"products\\/March2018\\/DNFP4pYpHOLPIXeshBFg.jpg\"]',NULL,'2018-03-23 12:53:12'),(6,'Kitchen old2Voyager','Kitchen-4','Integer sit amet interdum lorem. In tincidunt, risus in molestie tempus',60000,'<p>Aliquam nec tellus odio. Ut quis condimentum lorem. Nullam porttitor magna vitae tincidunt efficitur. Integer pulvinar eros varius egestas molestie. Donec venenatis consequat mauris in dignissim. Morbi faucibus dignissim nibh, iaculis vulputate tortor porta at. Maecenas posuere sit amet est vel vehicula. Suspendisse ac lectus lorem. Cras vel semper risus. Nulla id risus dapibus, euismod neque quis, laoreet ante. Ut a maximus turpis. Nulla mollis dolor erat, vitae consequat lectus consequat sollicitudin. Vivamus in libero sit amet erat pulvinar consectetur id a justo. Donec bibendum dapibus ipsum porta molestie. Phasellus vehicula et orci a viverra.</p>',1,'brown','products/March2018/HJHGs1gZHuX8jw1wU7UZ.jpg','[\"products\\/March2018\\/P0mdKzH7rxt2fqaetJnY.jpg\",\"products\\/March2018\\/Gsh49byQDD7rOJpDqdH8.jpg\",\"products\\/March2018\\/pD83i8XGQzAFbtVcZuuc.jpg\",\"products\\/April2018\\/3U6El3GTJ4qWwMSy96ww.jpg\"]','2018-03-11 22:00:00','2018-04-02 12:40:29'),(7,'Kitchen old22','Kitchen-5','Integer sit amet interdum lorem. In tincidunt, risus in molestie tempus',70000,'<p>Aliquam nec tellus odio. Ut quis condimentum lorem. Nullam porttitor magna vitae tincidunt efficitur. Integer pulvinar eros varius egestas molestie. Donec venenatis consequat mauris in dignissim. Morbi faucibus dignissim nibh, iaculis vulputate tortor porta at. Maecenas posuere sit amet est vel vehicula. Suspendisse ac lectus lorem. Cras vel semper risus. Nulla id risus dapibus, euismod neque quis, laoreet ante. Ut a maximus turpis. Nulla mollis dolor erat, vitae consequat lectus consequat sollicitudin. Vivamus in libero sit amet erat pulvinar consectetur id a justo. Donec bibendum dapibus ipsum porta molestie. Phasellus vehicula et orci a viverra.</p>',1,'blue','products/March2018/1sklWCOh6Ee0hTPOiCZF.jpg','[\"products\\/March2018\\/7uUxgfHzK0ksH1qJ2e6q.jpg\",\"products\\/March2018\\/eEnTPDEdL0z4zgjnIfTc.jpg\",\"products\\/March2018\\/edHZGsyhSGDogGfyhHU5.jpg\",\"products\\/March2018\\/gHWxb5R5uHXmSCptRm5N.jpg\"]','2018-03-11 22:00:00','2018-03-27 08:29:00'),(8,'Kitchen old7','Kitchen-7','Integer sit amet interdum lorem. In tincidunt, risus in molestie tempus',8000,'Aliquam nec tellus odio. Ut quis condimentum lorem. Nullam porttitor magna vitae tincidunt efficitur. Integer pulvinar eros varius egestas molestie. Donec venenatis consequat mauris in dignissim. Morbi faucibus dignissim nibh, iaculis vulputate tortor porta at. Maecenas posuere sit amet est vel vehicula. Suspendisse ac lectus lorem. Cras vel semper risus. Nulla id risus dapibus, euismod neque quis, laoreet ante. Ut a maximus turpis. Nulla mollis dolor erat, vitae consequat lectus consequat sollicitudin. Vivamus in libero sit amet erat pulvinar consectetur id a justo. Donec bibendum dapibus ipsum porta molestie. Phasellus vehicula et orci a viverra.',1,NULL,'products/March2018/wthujuT8KbaS1Bb0GN8R.jpg','[\"products\\/March2018\\/e7GIWeKpqeiOMdfGJvZo.jpg\",\"products\\/March2018\\/8Ufj0Qt7DxceU8zGsqIM.jpg\",\"products\\/March2018\\/tW2zb8qxD8eSuxgS19nz.jpg\",\"products\\/March2018\\/v3EgkwXkRbw2JoZ4E05y.jpg\"]','2018-03-11 22:00:00','2018-03-23 11:20:11'),(9,'Kitchen old8','Kitchen-8','Integer sit amet interdum lorem. In tincidunt, risus in molestie tempus',9000,'Aliquam nec tellus odio. Ut quis condimentum lorem. Nullam porttitor magna vitae tincidunt efficitur. Integer pulvinar eros varius egestas molestie. Donec venenatis consequat mauris in dignissim. Morbi faucibus dignissim nibh, iaculis vulputate tortor porta at. Maecenas posuere sit amet est vel vehicula. Suspendisse ac lectus lorem. Cras vel semper risus. Nulla id risus dapibus, euismod neque quis, laoreet ante. Ut a maximus turpis. Nulla mollis dolor erat, vitae consequat lectus consequat sollicitudin. Vivamus in libero sit amet erat pulvinar consectetur id a justo. Donec bibendum dapibus ipsum porta molestie. Phasellus vehicula et orci a viverra.',1,NULL,'products/March2018/UU5o8ETY90EhmdHZYU5n.jpg','[\"products\\/March2018\\/kwhJH5o8e1a6dNYv7xPe.jpg\",\"products\\/March2018\\/WWNlHYrqyMvE0CfN5LAW.jpg\",\"products\\/March2018\\/vjDuMTMJTS4ODzPI72rB.jpg\",\"products\\/March2018\\/kePFj0DAmmI9glSl6YFY.jpg\"]','2018-03-11 22:00:00','2018-03-23 11:39:00'),(10,'Kitchen old9','Kitchen-9','Integer sit amet interdum lorem. In tincidunt, risus in molestie tempus',10000,'Aliquam nec tellus odio. Ut quis condimentum lorem. Nullam porttitor magna vitae tincidunt efficitur. Integer pulvinar eros varius egestas molestie. Donec venenatis consequat mauris in dignissim. Morbi faucibus dignissim nibh, iaculis vulputate tortor porta at. Maecenas posuere sit amet est vel vehicula. Suspendisse ac lectus lorem. Cras vel semper risus. Nulla id risus dapibus, euismod neque quis, laoreet ante. Ut a maximus turpis. Nulla mollis dolor erat, vitae consequat lectus consequat sollicitudin. Vivamus in libero sit amet erat pulvinar consectetur id a justo. Donec bibendum dapibus ipsum porta molestie. Phasellus vehicula et orci a viverra.',1,NULL,'products/March2018/nSSwpsFDi2RQ3RADind6.jpg','[\"products\\/March2018\\/FTdoopDVJeAwq3859sX4.jpg\",\"products\\/March2018\\/2TWIpbdK4S5LuyxxtWOJ.jpg\",\"products\\/March2018\\/p7qGFMMz3MftFE8LYtCP.jpg\",\"products\\/March2018\\/pMxnNf8J0SE31LYKr2IS.jpg\"]','2018-03-11 22:00:00','2018-03-23 12:22:32'),(11,'Kitchen old10','Kitchen-10','Integer sit amet interdum lorem. In tincidunt, risus in molestie tempus',12000,'Aliquam nec tellus odio. Ut quis condimentum lorem. Nullam porttitor magna vitae tincidunt efficitur. Integer pulvinar eros varius egestas molestie. Donec venenatis consequat mauris in dignissim. Morbi faucibus dignissim nibh, iaculis vulputate tortor porta at. Maecenas posuere sit amet est vel vehicula. Suspendisse ac lectus lorem. Cras vel semper risus. Nulla id risus dapibus, euismod neque quis, laoreet ante. Ut a maximus turpis. Nulla mollis dolor erat, vitae consequat lectus consequat sollicitudin. Vivamus in libero sit amet erat pulvinar consectetur id a justo. Donec bibendum dapibus ipsum porta molestie. Phasellus vehicula et orci a viverra.',1,NULL,'products/March2018/wrWEvNxgxLGbU7NIgWtr.png','[\"products\\/March2018\\/YBdMEamatFk1B217Wk43.png\",\"products\\/March2018\\/wlxG5B95fs4H7DHkuV3c.png\",\"products\\/March2018\\/GFF1thUId2vKhxeqfZah.png\",\"products\\/March2018\\/OEF8ZRIOAu8PJFZX7fwm.png\"]','2018-03-11 22:00:00','2018-03-23 12:25:49'),(13,'Kitchen old11','Kitchen-11','Integer sit amet interdum lorem. In tincidunt, risus in molestie tempus',13000,'Aliquam nec tellus odio. Ut quis condimentum lorem. Nullam porttitor magna vitae tincidunt efficitur. Integer pulvinar eros varius egestas molestie. Donec venenatis consequat mauris in dignissim. Morbi faucibus dignissim nibh, iaculis vulputate tortor porta at. Maecenas posuere sit amet est vel vehicula. Suspendisse ac lectus lorem. Cras vel semper risus. Nulla id risus dapibus, euismod neque quis, laoreet ante. Ut a maximus turpis. Nulla mollis dolor erat, vitae consequat lectus consequat sollicitudin. Vivamus in libero sit amet erat pulvinar consectetur id a justo. Donec bibendum dapibus ipsum porta molestie. Phasellus vehicula et orci a viverra.',1,NULL,'products/March2018/ymC12yXn0U3rB8FkueEZ.jpg','[\"products\\/March2018\\/rKTz7otkpkpOCyQVpoWT.jpg\",\"products\\/March2018\\/QNL9DYDcD7f0dPzmdOGa.jpg\",\"products\\/March2018\\/33GazuiioWoYR3uN9tG0.jpg\",\"products\\/March2018\\/qN0iAryRjki9RMzBSBV2.jpg\"]','2018-03-11 22:00:00','2018-03-23 12:33:25');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Administrator','2018-03-06 09:58:27','2018-03-06 09:58:27'),(2,'user','Normal User','2018-03-06 09:58:27','2018-03-06 09:58:27');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'site.title','Site Title','Site Title','','text',1,'Site'),(2,'site.description','Site Description','Site Description','','text',2,'Site'),(3,'site.logo','Site Logo','','','image',3,'Site'),(4,'site.google_analytics_tracking_id','Google Analytics Tracking ID','','','text',4,'Site'),(5,'admin.bg_image','Admin Background Image','','','image',5,'Admin'),(6,'admin.title','Admin Title','Furniture','','text',1,'Admin'),(7,'admin.description','Admin Description','Welcome to the admin .','','text',2,'Admin'),(8,'admin.loader','Admin Loader','','','image',3,'Admin'),(9,'admin.icon_image','Admin Icon Image','','','image',4,'Admin'),(10,'admin.google_analytics_client_id','Google Analytics Client ID (used for admin dashboard)','','','text',1,'Admin');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'Admin','admin@admin.com','users/default.png','$2y$10$ev7.7lloSyaaYL57kmxWkeoHNUYDsXb.Kp46cuHWfbv.1wuT589Pi','TD7xeen9cxmvV0Ix2LL1kewSPhmHuMztnlgbOfJcwUDSmup7MWOI0mYWMh64','2018-03-06 09:58:51','2018-03-06 09:58:51');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-14 19:38:54
