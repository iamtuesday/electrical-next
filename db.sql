-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: mac_cleaning
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `admin_permissions`
--

DROP TABLE IF EXISTS `admin_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_permissions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `properties` json DEFAULT NULL,
  `conditions` json DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_permissions_created_by_id_fk` (`created_by_id`),
  KEY `admin_permissions_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `admin_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `admin_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_permissions`
--

LOCK TABLES `admin_permissions` WRITE;
/*!40000 ALTER TABLE `admin_permissions` DISABLE KEYS */;
INSERT INTO `admin_permissions` VALUES (1,'plugin::content-manager.explorer.create','plugin::ezforms.submission','{\"fields\": [\"score\", \"formName\", \"data\"]}','[]','2022-12-08 11:08:48.427000','2022-12-08 11:08:48.427000',NULL,NULL),(2,'plugin::content-manager.explorer.create','plugin::ezforms.recipient','{\"fields\": [\"name\", \"email\", \"number\"]}','[]','2022-12-08 11:08:48.436000','2022-12-08 11:08:48.436000',NULL,NULL),(3,'plugin::content-manager.explorer.read','plugin::ezforms.submission','{\"fields\": [\"score\", \"formName\", \"data\"]}','[]','2022-12-08 11:08:48.442000','2022-12-08 11:08:48.442000',NULL,NULL),(4,'plugin::content-manager.explorer.read','plugin::ezforms.recipient','{\"fields\": [\"name\", \"email\", \"number\"]}','[]','2022-12-08 11:08:48.451000','2022-12-08 11:08:48.451000',NULL,NULL),(5,'plugin::content-manager.explorer.update','plugin::ezforms.submission','{\"fields\": [\"score\", \"formName\", \"data\"]}','[]','2022-12-08 11:08:48.457000','2022-12-08 11:08:48.457000',NULL,NULL),(6,'plugin::content-manager.explorer.update','plugin::ezforms.recipient','{\"fields\": [\"name\", \"email\", \"number\"]}','[]','2022-12-08 11:08:48.463000','2022-12-08 11:08:48.463000',NULL,NULL),(7,'plugin::content-manager.explorer.delete','plugin::ezforms.submission','{}','[]','2022-12-08 11:08:48.470000','2022-12-08 11:08:48.470000',NULL,NULL),(8,'plugin::content-manager.explorer.delete','plugin::ezforms.recipient','{}','[]','2022-12-08 11:08:48.476000','2022-12-08 11:08:48.476000',NULL,NULL),(9,'plugin::upload.read',NULL,'{}','[]','2022-12-08 11:08:48.482000','2022-12-08 11:08:48.482000',NULL,NULL),(10,'plugin::upload.assets.create',NULL,'{}','[]','2022-12-08 11:08:48.490000','2022-12-08 11:08:48.490000',NULL,NULL),(11,'plugin::upload.assets.update',NULL,'{}','[]','2022-12-08 11:08:48.500000','2022-12-08 11:08:48.500000',NULL,NULL),(12,'plugin::upload.assets.download',NULL,'{}','[]','2022-12-08 11:08:48.507000','2022-12-08 11:08:48.507000',NULL,NULL),(13,'plugin::upload.assets.copy-link',NULL,'{}','[]','2022-12-08 11:08:48.516000','2022-12-08 11:08:48.516000',NULL,NULL),(14,'plugin::content-manager.explorer.create','plugin::ezforms.submission','{\"fields\": [\"score\", \"formName\", \"data\"]}','[\"admin::is-creator\"]','2022-12-08 11:08:48.528000','2022-12-08 11:08:48.528000',NULL,NULL),(15,'plugin::content-manager.explorer.create','plugin::ezforms.recipient','{\"fields\": [\"name\", \"email\", \"number\"]}','[\"admin::is-creator\"]','2022-12-08 11:08:48.537000','2022-12-08 11:08:48.537000',NULL,NULL),(16,'plugin::content-manager.explorer.read','plugin::ezforms.submission','{\"fields\": [\"score\", \"formName\", \"data\"]}','[\"admin::is-creator\"]','2022-12-08 11:08:48.547000','2022-12-08 11:08:48.547000',NULL,NULL),(17,'plugin::content-manager.explorer.read','plugin::ezforms.recipient','{\"fields\": [\"name\", \"email\", \"number\"]}','[\"admin::is-creator\"]','2022-12-08 11:08:48.554000','2022-12-08 11:08:48.554000',NULL,NULL),(18,'plugin::content-manager.explorer.update','plugin::ezforms.submission','{\"fields\": [\"score\", \"formName\", \"data\"]}','[\"admin::is-creator\"]','2022-12-08 11:08:48.562000','2022-12-08 11:08:48.562000',NULL,NULL),(19,'plugin::content-manager.explorer.update','plugin::ezforms.recipient','{\"fields\": [\"name\", \"email\", \"number\"]}','[\"admin::is-creator\"]','2022-12-08 11:08:48.570000','2022-12-08 11:08:48.570000',NULL,NULL),(20,'plugin::content-manager.explorer.delete','plugin::ezforms.submission','{}','[\"admin::is-creator\"]','2022-12-08 11:08:48.578000','2022-12-08 11:08:48.578000',NULL,NULL),(21,'plugin::content-manager.explorer.delete','plugin::ezforms.recipient','{}','[\"admin::is-creator\"]','2022-12-08 11:08:48.584000','2022-12-08 11:08:48.584000',NULL,NULL),(22,'plugin::upload.read',NULL,'{}','[\"admin::is-creator\"]','2022-12-08 11:08:48.592000','2022-12-08 11:08:48.592000',NULL,NULL),(23,'plugin::upload.assets.create',NULL,'{}','[]','2022-12-08 11:08:48.602000','2022-12-08 11:08:48.602000',NULL,NULL),(24,'plugin::upload.assets.update',NULL,'{}','[\"admin::is-creator\"]','2022-12-08 11:08:48.610000','2022-12-08 11:08:48.610000',NULL,NULL),(25,'plugin::upload.assets.download',NULL,'{}','[]','2022-12-08 11:08:48.617000','2022-12-08 11:08:48.617000',NULL,NULL),(26,'plugin::upload.assets.copy-link',NULL,'{}','[]','2022-12-08 11:08:48.638000','2022-12-08 11:08:48.638000',NULL,NULL),(27,'plugin::content-manager.explorer.create','plugin::ezforms.submission','{\"fields\": [\"score\", \"formName\", \"data\"]}','[]','2022-12-08 11:08:48.693000','2022-12-08 11:08:48.693000',NULL,NULL),(28,'plugin::content-manager.explorer.create','plugin::ezforms.recipient','{\"fields\": [\"name\", \"email\", \"number\"]}','[]','2022-12-08 11:08:48.701000','2022-12-08 11:08:48.701000',NULL,NULL),(29,'plugin::content-manager.explorer.create','plugin::users-permissions.user','{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\"]}','[]','2022-12-08 11:08:48.707000','2022-12-08 11:08:48.707000',NULL,NULL),(30,'plugin::content-manager.explorer.read','plugin::ezforms.submission','{\"fields\": [\"score\", \"formName\", \"data\"]}','[]','2022-12-08 11:08:48.712000','2022-12-08 11:08:48.712000',NULL,NULL),(31,'plugin::content-manager.explorer.read','plugin::ezforms.recipient','{\"fields\": [\"name\", \"email\", \"number\"]}','[]','2022-12-08 11:08:48.719000','2022-12-08 11:08:48.719000',NULL,NULL),(32,'plugin::content-manager.explorer.read','plugin::users-permissions.user','{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\"]}','[]','2022-12-08 11:08:48.724000','2022-12-08 11:08:48.724000',NULL,NULL),(33,'plugin::content-manager.explorer.update','plugin::ezforms.submission','{\"fields\": [\"score\", \"formName\", \"data\"]}','[]','2022-12-08 11:08:48.730000','2022-12-08 11:08:48.730000',NULL,NULL),(34,'plugin::content-manager.explorer.update','plugin::ezforms.recipient','{\"fields\": [\"name\", \"email\", \"number\"]}','[]','2022-12-08 11:08:48.736000','2022-12-08 11:08:48.736000',NULL,NULL),(35,'plugin::content-manager.explorer.update','plugin::users-permissions.user','{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\"]}','[]','2022-12-08 11:08:48.741000','2022-12-08 11:08:48.741000',NULL,NULL),(36,'plugin::content-manager.explorer.delete','plugin::ezforms.submission','{}','[]','2022-12-08 11:08:48.747000','2022-12-08 11:08:48.747000',NULL,NULL),(37,'plugin::content-manager.explorer.delete','plugin::ezforms.recipient','{}','[]','2022-12-08 11:08:48.752000','2022-12-08 11:08:48.752000',NULL,NULL),(38,'plugin::content-manager.explorer.delete','plugin::users-permissions.user','{}','[]','2022-12-08 11:08:48.757000','2022-12-08 11:08:48.757000',NULL,NULL),(39,'plugin::content-manager.single-types.configure-view',NULL,'{}','[]','2022-12-08 11:08:48.763000','2022-12-08 11:08:48.763000',NULL,NULL),(40,'plugin::content-manager.collection-types.configure-view',NULL,'{}','[]','2022-12-08 11:08:48.769000','2022-12-08 11:08:48.769000',NULL,NULL),(41,'plugin::content-manager.components.configure-layout',NULL,'{}','[]','2022-12-08 11:08:48.774000','2022-12-08 11:08:48.774000',NULL,NULL),(42,'plugin::content-type-builder.read',NULL,'{}','[]','2022-12-08 11:08:48.779000','2022-12-08 11:08:48.779000',NULL,NULL),(43,'plugin::email.settings.read',NULL,'{}','[]','2022-12-08 11:08:48.785000','2022-12-08 11:08:48.785000',NULL,NULL),(44,'plugin::upload.read',NULL,'{}','[]','2022-12-08 11:08:48.791000','2022-12-08 11:08:48.791000',NULL,NULL),(45,'plugin::upload.assets.create',NULL,'{}','[]','2022-12-08 11:08:48.799000','2022-12-08 11:08:48.799000',NULL,NULL),(46,'plugin::upload.assets.update',NULL,'{}','[]','2022-12-08 11:08:48.808000','2022-12-08 11:08:48.808000',NULL,NULL),(47,'plugin::upload.assets.download',NULL,'{}','[]','2022-12-08 11:08:48.814000','2022-12-08 11:08:48.814000',NULL,NULL),(48,'plugin::upload.assets.copy-link',NULL,'{}','[]','2022-12-08 11:08:48.820000','2022-12-08 11:08:48.820000',NULL,NULL),(49,'plugin::upload.settings.read',NULL,'{}','[]','2022-12-08 11:08:48.825000','2022-12-08 11:08:48.825000',NULL,NULL),(50,'plugin::i18n.locale.create',NULL,'{}','[]','2022-12-08 11:08:48.830000','2022-12-08 11:08:48.830000',NULL,NULL),(51,'plugin::i18n.locale.read',NULL,'{}','[]','2022-12-08 11:08:48.836000','2022-12-08 11:08:48.836000',NULL,NULL),(52,'plugin::i18n.locale.update',NULL,'{}','[]','2022-12-08 11:08:48.841000','2022-12-08 11:08:48.841000',NULL,NULL),(53,'plugin::i18n.locale.delete',NULL,'{}','[]','2022-12-08 11:08:48.846000','2022-12-08 11:08:48.846000',NULL,NULL),(54,'plugin::users-permissions.roles.create',NULL,'{}','[]','2022-12-08 11:08:48.851000','2022-12-08 11:08:48.851000',NULL,NULL),(55,'plugin::users-permissions.roles.read',NULL,'{}','[]','2022-12-08 11:08:48.859000','2022-12-08 11:08:48.859000',NULL,NULL),(56,'plugin::users-permissions.roles.update',NULL,'{}','[]','2022-12-08 11:08:48.867000','2022-12-08 11:08:48.867000',NULL,NULL),(57,'plugin::users-permissions.roles.delete',NULL,'{}','[]','2022-12-08 11:08:48.872000','2022-12-08 11:08:48.872000',NULL,NULL),(58,'plugin::users-permissions.providers.read',NULL,'{}','[]','2022-12-08 11:08:48.887000','2022-12-08 11:08:48.887000',NULL,NULL),(59,'plugin::users-permissions.providers.update',NULL,'{}','[]','2022-12-08 11:08:48.896000','2022-12-08 11:08:48.896000',NULL,NULL),(60,'plugin::users-permissions.email-templates.read',NULL,'{}','[]','2022-12-08 11:08:48.902000','2022-12-08 11:08:48.902000',NULL,NULL),(61,'plugin::users-permissions.email-templates.update',NULL,'{}','[]','2022-12-08 11:08:48.908000','2022-12-08 11:08:48.908000',NULL,NULL),(62,'plugin::users-permissions.advanced-settings.read',NULL,'{}','[]','2022-12-08 11:08:48.913000','2022-12-08 11:08:48.913000',NULL,NULL),(63,'plugin::users-permissions.advanced-settings.update',NULL,'{}','[]','2022-12-08 11:08:48.919000','2022-12-08 11:08:48.919000',NULL,NULL),(64,'admin::marketplace.read',NULL,'{}','[]','2022-12-08 11:08:48.924000','2022-12-08 11:08:48.924000',NULL,NULL),(65,'admin::marketplace.plugins.install',NULL,'{}','[]','2022-12-08 11:08:48.930000','2022-12-08 11:08:48.930000',NULL,NULL),(66,'admin::marketplace.plugins.uninstall',NULL,'{}','[]','2022-12-08 11:08:48.935000','2022-12-08 11:08:48.935000',NULL,NULL),(67,'admin::webhooks.create',NULL,'{}','[]','2022-12-08 11:08:48.940000','2022-12-08 11:08:48.940000',NULL,NULL),(68,'admin::webhooks.read',NULL,'{}','[]','2022-12-08 11:08:48.945000','2022-12-08 11:08:48.945000',NULL,NULL),(69,'admin::webhooks.update',NULL,'{}','[]','2022-12-08 11:08:48.950000','2022-12-08 11:08:48.950000',NULL,NULL),(70,'admin::webhooks.delete',NULL,'{}','[]','2022-12-08 11:08:48.960000','2022-12-08 11:08:48.960000',NULL,NULL),(71,'admin::users.create',NULL,'{}','[]','2022-12-08 11:08:48.966000','2022-12-08 11:08:48.966000',NULL,NULL),(72,'admin::users.read',NULL,'{}','[]','2022-12-08 11:08:48.973000','2022-12-08 11:08:48.973000',NULL,NULL),(73,'admin::users.update',NULL,'{}','[]','2022-12-08 11:08:48.978000','2022-12-08 11:08:48.978000',NULL,NULL),(74,'admin::users.delete',NULL,'{}','[]','2022-12-08 11:08:48.984000','2022-12-08 11:08:48.984000',NULL,NULL),(75,'admin::roles.create',NULL,'{}','[]','2022-12-08 11:08:48.990000','2022-12-08 11:08:48.990000',NULL,NULL),(76,'admin::roles.read',NULL,'{}','[]','2022-12-08 11:08:48.999000','2022-12-08 11:08:48.999000',NULL,NULL),(77,'admin::roles.update',NULL,'{}','[]','2022-12-08 11:08:49.004000','2022-12-08 11:08:49.004000',NULL,NULL),(78,'admin::roles.delete',NULL,'{}','[]','2022-12-08 11:08:49.009000','2022-12-08 11:08:49.009000',NULL,NULL),(79,'admin::api-tokens.access',NULL,'{}','[]','2022-12-08 11:08:49.014000','2022-12-08 11:08:49.014000',NULL,NULL),(80,'admin::api-tokens.create',NULL,'{}','[]','2022-12-08 11:08:49.018000','2022-12-08 11:08:49.018000',NULL,NULL),(81,'admin::api-tokens.read',NULL,'{}','[]','2022-12-08 11:08:49.025000','2022-12-08 11:08:49.025000',NULL,NULL),(82,'admin::api-tokens.update',NULL,'{}','[]','2022-12-08 11:08:49.031000','2022-12-08 11:08:49.031000',NULL,NULL),(83,'admin::api-tokens.regenerate',NULL,'{}','[]','2022-12-08 11:08:49.036000','2022-12-08 11:08:49.036000',NULL,NULL),(84,'admin::api-tokens.delete',NULL,'{}','[]','2022-12-08 11:08:49.043000','2022-12-08 11:08:49.043000',NULL,NULL),(85,'admin::project-settings.update',NULL,'{}','[]','2022-12-08 11:08:49.049000','2022-12-08 11:08:49.049000',NULL,NULL),(86,'admin::project-settings.read',NULL,'{}','[]','2022-12-08 11:08:49.055000','2022-12-08 11:08:49.055000',NULL,NULL),(90,'plugin::content-manager.explorer.delete','api::general.general','{}','[]','2022-12-08 11:10:28.381000','2022-12-08 11:10:28.381000',NULL,NULL),(91,'plugin::content-manager.explorer.publish','api::general.general','{}','[]','2022-12-08 11:10:28.385000','2022-12-08 11:10:28.385000',NULL,NULL),(114,'plugin::content-manager.explorer.delete','api::form.form','{}','[]','2022-12-08 17:05:27.751000','2022-12-08 17:05:27.751000',NULL,NULL),(115,'plugin::content-manager.explorer.delete','api::home.home','{}','[]','2022-12-08 17:05:27.763000','2022-12-08 17:05:27.763000',NULL,NULL),(120,'plugin::content-manager.explorer.publish','api::form.form','{}','[]','2022-12-08 17:05:27.838000','2022-12-08 17:05:27.838000',NULL,NULL),(121,'plugin::content-manager.explorer.publish','api::home.home','{}','[]','2022-12-08 17:05:27.849000','2022-12-08 17:05:27.849000',NULL,NULL),(128,'plugin::content-manager.explorer.create','api::general.general','{\"fields\": [\"logo\", \"email\", \"address\", \"url_map\", \"phone\", \"facebook_id\", \"pixel_facebook\", \"tag_manager\", \"cellphone\", \"message_getbuton\", \"menu.label\", \"menu.url\", \"socials_networks.type\", \"socials_networks.url\", \"lbl_solar_energy\", \"lbl_contact_us\", \"lbl_see_service\", \"lbl_read_more\", \"schedule\", \"lbl_get_estimate\", \"footer_titles.lbl_address\", \"footer_titles.lbl_email\", \"footer_titles.lbl_phone\", \"footer_titles.lbl_follow\", \"footer_titles.lbl_copyright\"]}','[]','2022-12-08 18:13:31.800000','2022-12-08 18:13:31.800000',NULL,NULL),(129,'plugin::content-manager.explorer.read','api::general.general','{\"fields\": [\"logo\", \"email\", \"address\", \"url_map\", \"phone\", \"facebook_id\", \"pixel_facebook\", \"tag_manager\", \"cellphone\", \"message_getbuton\", \"menu.label\", \"menu.url\", \"socials_networks.type\", \"socials_networks.url\", \"lbl_solar_energy\", \"lbl_contact_us\", \"lbl_see_service\", \"lbl_read_more\", \"schedule\", \"lbl_get_estimate\", \"footer_titles.lbl_address\", \"footer_titles.lbl_email\", \"footer_titles.lbl_phone\", \"footer_titles.lbl_follow\", \"footer_titles.lbl_copyright\"]}','[]','2022-12-08 18:13:31.812000','2022-12-08 18:13:31.812000',NULL,NULL),(130,'plugin::content-manager.explorer.update','api::general.general','{\"fields\": [\"logo\", \"email\", \"address\", \"url_map\", \"phone\", \"facebook_id\", \"pixel_facebook\", \"tag_manager\", \"cellphone\", \"message_getbuton\", \"menu.label\", \"menu.url\", \"socials_networks.type\", \"socials_networks.url\", \"lbl_solar_energy\", \"lbl_contact_us\", \"lbl_see_service\", \"lbl_read_more\", \"schedule\", \"lbl_get_estimate\", \"footer_titles.lbl_address\", \"footer_titles.lbl_email\", \"footer_titles.lbl_phone\", \"footer_titles.lbl_follow\", \"footer_titles.lbl_copyright\"]}','[]','2022-12-08 18:13:31.823000','2022-12-08 18:13:31.823000',NULL,NULL),(143,'plugin::content-manager.explorer.create','api::home.home','{\"fields\": [\"banner_prin.bg\", \"banner_prin.bg_mob\", \"banner_prin.title\", \"banner_prin.content\", \"banner_prin.subtitle\", \"services.title\", \"services.subtitle\", \"services.content\", \"service_list.image\", \"service_list.title\", \"service_list.content\", \"service_list.slug\", \"service_list.icon\", \"characteristics.title\", \"characteristics.Subtitle\", \"about.img\", \"about.img_mob\", \"about.title\", \"about.subtitle\", \"about.content\", \"about.card.icon\", \"about.card.content\", \"about.img_two\", \"review.title\", \"review.subtitle\", \"review.card.stars\", \"review.card.content\", \"review.card.name\", \"review.card.avatar\", \"review.bg\", \"review.bg_mob\", \"gallery.title\", \"gallery.subtitle\", \"gallery.content\", \"gallery.items.img\", \"gallery.items.img_zoom\", \"how_we_work.title\", \"how_we_work.subtitle\", \"how_we_work.card.icon\", \"how_we_work.card.title\", \"how_we_work.card.content\", \"seo.metaTitle\", \"seo.metaDescription\", \"seo.metaImage\", \"seo.metaSocial.socialNetwork\", \"seo.metaSocial.title\", \"seo.metaSocial.description\", \"seo.metaSocial.image\", \"seo.keywords\", \"seo.metaRobots\", \"seo.structuredData\", \"seo.metaViewport\", \"seo.canonicalURL\"]}','[]','2022-12-09 09:18:19.320000','2022-12-09 09:18:19.320000',NULL,NULL),(144,'plugin::content-manager.explorer.read','api::home.home','{\"fields\": [\"banner_prin.bg\", \"banner_prin.bg_mob\", \"banner_prin.title\", \"banner_prin.content\", \"banner_prin.subtitle\", \"services.title\", \"services.subtitle\", \"services.content\", \"service_list.image\", \"service_list.title\", \"service_list.content\", \"service_list.slug\", \"service_list.icon\", \"characteristics.title\", \"characteristics.Subtitle\", \"about.img\", \"about.img_mob\", \"about.title\", \"about.subtitle\", \"about.content\", \"about.card.icon\", \"about.card.content\", \"about.img_two\", \"review.title\", \"review.subtitle\", \"review.card.stars\", \"review.card.content\", \"review.card.name\", \"review.card.avatar\", \"review.bg\", \"review.bg_mob\", \"gallery.title\", \"gallery.subtitle\", \"gallery.content\", \"gallery.items.img\", \"gallery.items.img_zoom\", \"how_we_work.title\", \"how_we_work.subtitle\", \"how_we_work.card.icon\", \"how_we_work.card.title\", \"how_we_work.card.content\", \"seo.metaTitle\", \"seo.metaDescription\", \"seo.metaImage\", \"seo.metaSocial.socialNetwork\", \"seo.metaSocial.title\", \"seo.metaSocial.description\", \"seo.metaSocial.image\", \"seo.keywords\", \"seo.metaRobots\", \"seo.structuredData\", \"seo.metaViewport\", \"seo.canonicalURL\"]}','[]','2022-12-09 09:18:19.327000','2022-12-09 09:18:19.327000',NULL,NULL),(145,'plugin::content-manager.explorer.update','api::home.home','{\"fields\": [\"banner_prin.bg\", \"banner_prin.bg_mob\", \"banner_prin.title\", \"banner_prin.content\", \"banner_prin.subtitle\", \"services.title\", \"services.subtitle\", \"services.content\", \"service_list.image\", \"service_list.title\", \"service_list.content\", \"service_list.slug\", \"service_list.icon\", \"characteristics.title\", \"characteristics.Subtitle\", \"about.img\", \"about.img_mob\", \"about.title\", \"about.subtitle\", \"about.content\", \"about.card.icon\", \"about.card.content\", \"about.img_two\", \"review.title\", \"review.subtitle\", \"review.card.stars\", \"review.card.content\", \"review.card.name\", \"review.card.avatar\", \"review.bg\", \"review.bg_mob\", \"gallery.title\", \"gallery.subtitle\", \"gallery.content\", \"gallery.items.img\", \"gallery.items.img_zoom\", \"how_we_work.title\", \"how_we_work.subtitle\", \"how_we_work.card.icon\", \"how_we_work.card.title\", \"how_we_work.card.content\", \"seo.metaTitle\", \"seo.metaDescription\", \"seo.metaImage\", \"seo.metaSocial.socialNetwork\", \"seo.metaSocial.title\", \"seo.metaSocial.description\", \"seo.metaSocial.image\", \"seo.keywords\", \"seo.metaRobots\", \"seo.structuredData\", \"seo.metaViewport\", \"seo.canonicalURL\"]}','[]','2022-12-09 09:18:19.335000','2022-12-09 09:18:19.335000',NULL,NULL),(149,'plugin::content-manager.explorer.create','api::form.form','{\"fields\": [\"messages.mail_sent_ok\", \"messages.mail_sent_ng\", \"messages.validation_error\", \"messages.spam\", \"messages.accept_terms\", \"messages.invalid_required\", \"messages.invalid_too_long\", \"messages.invalid_too_short\", \"messages.upload_failed\", \"messages.upload_file_type_invalid\", \"messages.upload_file_too_large\", \"messages.upload_failed_php_error\", \"messages.invalid_date\", \"messages.date_too_early\", \"messages.date_too_late\", \"messages.invalid_number\", \"messages.number_too_small\", \"messages.number_too_large\", \"messages.quiz_answer_not_correct\", \"messages.invalid_email\", \"messages.invalid_url\", \"messages.invalid_tel\", \"submit.url\", \"submit.label\", \"name.name\", \"name.placeholder\", \"name.label\", \"phone.name\", \"phone.placeholder\", \"phone.label\", \"email.name\", \"email.placeholder\", \"email.label\", \"service.name\", \"service.placeholder\", \"service.label\", \"message.name\", \"message.placeholder\", \"message.label\", \"info.title\", \"info.subtitle\", \"info.content\", \"info.card.icon\", \"info.card.type\", \"info.card.value\", \"seo.metaTitle\", \"seo.metaDescription\", \"seo.metaImage\", \"seo.metaSocial.socialNetwork\", \"seo.metaSocial.title\", \"seo.metaSocial.description\", \"seo.metaSocial.image\", \"seo.keywords\", \"seo.metaRobots\", \"seo.structuredData\", \"seo.metaViewport\", \"seo.canonicalURL\"]}','[]','2022-12-12 18:02:09.369000','2022-12-12 18:02:09.369000',NULL,NULL),(150,'plugin::content-manager.explorer.read','api::form.form','{\"fields\": [\"messages.mail_sent_ok\", \"messages.mail_sent_ng\", \"messages.validation_error\", \"messages.spam\", \"messages.accept_terms\", \"messages.invalid_required\", \"messages.invalid_too_long\", \"messages.invalid_too_short\", \"messages.upload_failed\", \"messages.upload_file_type_invalid\", \"messages.upload_file_too_large\", \"messages.upload_failed_php_error\", \"messages.invalid_date\", \"messages.date_too_early\", \"messages.date_too_late\", \"messages.invalid_number\", \"messages.number_too_small\", \"messages.number_too_large\", \"messages.quiz_answer_not_correct\", \"messages.invalid_email\", \"messages.invalid_url\", \"messages.invalid_tel\", \"submit.url\", \"submit.label\", \"name.name\", \"name.placeholder\", \"name.label\", \"phone.name\", \"phone.placeholder\", \"phone.label\", \"email.name\", \"email.placeholder\", \"email.label\", \"service.name\", \"service.placeholder\", \"service.label\", \"message.name\", \"message.placeholder\", \"message.label\", \"info.title\", \"info.subtitle\", \"info.content\", \"info.card.icon\", \"info.card.type\", \"info.card.value\", \"seo.metaTitle\", \"seo.metaDescription\", \"seo.metaImage\", \"seo.metaSocial.socialNetwork\", \"seo.metaSocial.title\", \"seo.metaSocial.description\", \"seo.metaSocial.image\", \"seo.keywords\", \"seo.metaRobots\", \"seo.structuredData\", \"seo.metaViewport\", \"seo.canonicalURL\"]}','[]','2022-12-12 18:02:09.382000','2022-12-12 18:02:09.382000',NULL,NULL),(151,'plugin::content-manager.explorer.update','api::form.form','{\"fields\": [\"messages.mail_sent_ok\", \"messages.mail_sent_ng\", \"messages.validation_error\", \"messages.spam\", \"messages.accept_terms\", \"messages.invalid_required\", \"messages.invalid_too_long\", \"messages.invalid_too_short\", \"messages.upload_failed\", \"messages.upload_file_type_invalid\", \"messages.upload_file_too_large\", \"messages.upload_failed_php_error\", \"messages.invalid_date\", \"messages.date_too_early\", \"messages.date_too_late\", \"messages.invalid_number\", \"messages.number_too_small\", \"messages.number_too_large\", \"messages.quiz_answer_not_correct\", \"messages.invalid_email\", \"messages.invalid_url\", \"messages.invalid_tel\", \"submit.url\", \"submit.label\", \"name.name\", \"name.placeholder\", \"name.label\", \"phone.name\", \"phone.placeholder\", \"phone.label\", \"email.name\", \"email.placeholder\", \"email.label\", \"service.name\", \"service.placeholder\", \"service.label\", \"message.name\", \"message.placeholder\", \"message.label\", \"info.title\", \"info.subtitle\", \"info.content\", \"info.card.icon\", \"info.card.type\", \"info.card.value\", \"seo.metaTitle\", \"seo.metaDescription\", \"seo.metaImage\", \"seo.metaSocial.socialNetwork\", \"seo.metaSocial.title\", \"seo.metaSocial.description\", \"seo.metaSocial.image\", \"seo.keywords\", \"seo.metaRobots\", \"seo.structuredData\", \"seo.metaViewport\", \"seo.canonicalURL\"]}','[]','2022-12-12 18:02:09.394000','2022-12-12 18:02:09.394000',NULL,NULL);
/*!40000 ALTER TABLE `admin_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_permissions_role_links`
--

DROP TABLE IF EXISTS `admin_permissions_role_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_permissions_role_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `permission_id` int unsigned DEFAULT NULL,
  `role_id` int unsigned DEFAULT NULL,
  `permission_order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_role_links_unique` (`permission_id`,`role_id`),
  KEY `admin_permissions_role_links_fk` (`permission_id`),
  KEY `admin_permissions_role_links_inv_fk` (`role_id`),
  KEY `admin_permissions_role_links_order_inv_fk` (`permission_order`),
  CONSTRAINT `admin_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `admin_permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `admin_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_permissions_role_links`
--

LOCK TABLES `admin_permissions_role_links` WRITE;
/*!40000 ALTER TABLE `admin_permissions_role_links` DISABLE KEYS */;
INSERT INTO `admin_permissions_role_links` VALUES (1,1,2,1),(2,2,2,2),(3,3,2,3),(4,4,2,4),(5,5,2,5),(6,6,2,6),(7,7,2,7),(8,8,2,8),(9,9,2,9),(10,10,2,10),(11,11,2,11),(12,12,2,12),(13,13,2,13),(14,14,3,1),(15,15,3,2),(16,16,3,3),(17,17,3,4),(18,18,3,5),(19,19,3,6),(20,20,3,7),(21,21,3,8),(22,22,3,9),(23,23,3,10),(24,24,3,11),(25,25,3,12),(26,26,3,13),(27,27,1,1),(28,28,1,2),(29,29,1,3),(30,30,1,4),(31,31,1,5),(32,32,1,6),(33,33,1,7),(34,34,1,8),(35,35,1,9),(36,36,1,10),(37,37,1,11),(38,38,1,12),(39,39,1,13),(40,40,1,14),(41,41,1,15),(42,42,1,16),(43,43,1,17),(44,44,1,18),(45,45,1,19),(46,46,1,20),(47,47,1,21),(48,48,1,22),(49,49,1,23),(50,50,1,24),(51,51,1,25),(52,52,1,26),(53,53,1,27),(54,54,1,28),(55,55,1,29),(56,56,1,30),(57,57,1,31),(58,58,1,32),(59,59,1,33),(60,60,1,34),(61,61,1,35),(62,62,1,36),(63,63,1,37),(64,64,1,38),(65,65,1,39),(66,66,1,40),(67,67,1,41),(68,68,1,42),(69,69,1,43),(70,70,1,44),(71,71,1,45),(72,72,1,46),(73,73,1,47),(74,74,1,48),(75,75,1,49),(76,76,1,50),(77,77,1,51),(78,78,1,52),(79,79,1,53),(80,80,1,54),(81,81,1,55),(82,82,1,56),(83,83,1,57),(84,84,1,58),(85,85,1,59),(86,86,1,60),(90,90,1,64),(91,91,1,65),(114,114,1,88),(115,115,1,89),(120,120,1,94),(121,121,1,95),(128,128,1,99),(129,129,1,100),(130,130,1,101),(143,143,1,108),(144,144,1,109),(145,145,1,110),(149,149,1,111),(150,150,1,112),(151,151,1,113);
/*!40000 ALTER TABLE `admin_permissions_role_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_roles`
--

DROP TABLE IF EXISTS `admin_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_roles_created_by_id_fk` (`created_by_id`),
  KEY `admin_roles_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `admin_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `admin_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_roles`
--

LOCK TABLES `admin_roles` WRITE;
/*!40000 ALTER TABLE `admin_roles` DISABLE KEYS */;
INSERT INTO `admin_roles` VALUES (1,'Super Admin','strapi-super-admin','Super Admins can access and manage all features and settings.','2022-12-08 11:08:48.400000','2022-12-08 11:08:48.400000',NULL,NULL),(2,'Editor','strapi-editor','Editors can manage and publish contents including those of other users.','2022-12-08 11:08:48.411000','2022-12-08 11:08:48.411000',NULL,NULL),(3,'Author','strapi-author','Authors can manage the content they have created.','2022-12-08 11:08:48.417000','2022-12-08 11:08:48.417000',NULL,NULL);
/*!40000 ALTER TABLE `admin_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `registration_token` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `prefered_language` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_users_created_by_id_fk` (`created_by_id`),
  KEY `admin_users_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `admin_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `admin_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'Roy','Cerdan',NULL,'science.kshmr@gmail.com','$2a$10$8wcT1BWugE8mrmL7TQWIXeaY/3JvDQ4L7tJG2UUSvhW9Pv/CYd81q',NULL,NULL,1,0,NULL,'2022-12-08 11:09:21.512000','2022-12-08 11:09:21.512000',NULL,NULL);
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users_roles_links`
--

DROP TABLE IF EXISTS `admin_users_roles_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_users_roles_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned DEFAULT NULL,
  `role_id` int unsigned DEFAULT NULL,
  `role_order` int unsigned DEFAULT NULL,
  `user_order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_roles_links_unique` (`user_id`,`role_id`),
  KEY `admin_users_roles_links_fk` (`user_id`),
  KEY `admin_users_roles_links_inv_fk` (`role_id`),
  KEY `admin_users_roles_links_order_fk` (`role_order`),
  KEY `admin_users_roles_links_order_inv_fk` (`user_order`),
  CONSTRAINT `admin_users_roles_links_fk` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `admin_users_roles_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users_roles_links`
--

LOCK TABLES `admin_users_roles_links` WRITE;
/*!40000 ALTER TABLE `admin_users_roles_links` DISABLE KEYS */;
INSERT INTO `admin_users_roles_links` VALUES (1,1,1,1,1);
/*!40000 ALTER TABLE `admin_users_roles_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_home_about_homes`
--

DROP TABLE IF EXISTS `components_home_about_homes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_home_about_homes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `content` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_home_about_homes`
--

LOCK TABLES `components_home_about_homes` WRITE;
/*!40000 ALTER TABLE `components_home_about_homes` DISABLE KEYS */;
INSERT INTO `components_home_about_homes` VALUES (1,'Get to know us a little more','About Us','Our main objective is to provide exceptional cleaning services. We use \nquality cleaning products that are eco-friendly and harmless to everybody.\nWe guarantee an unforgetable experience, contact us now!');
/*!40000 ALTER TABLE `components_home_about_homes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_home_about_homes_components`
--

DROP TABLE IF EXISTS `components_home_about_homes_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_home_about_homes_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `components_home_about_homes_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  KEY `components_home_about_homes_field_index` (`field`),
  KEY `components_home_about_homes_component_type_index` (`component_type`),
  KEY `components_home_about_homes_entity_fk` (`entity_id`),
  CONSTRAINT `components_home_about_homes_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_home_about_homes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_home_about_homes_components`
--

LOCK TABLES `components_home_about_homes_components` WRITE;
/*!40000 ALTER TABLE `components_home_about_homes_components` DISABLE KEYS */;
INSERT INTO `components_home_about_homes_components` VALUES (1,1,1,'singles.about-card','card',1),(2,1,2,'singles.about-card','card',2);
/*!40000 ALTER TABLE `components_home_about_homes_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_home_banner_middles`
--

DROP TABLE IF EXISTS `components_home_banner_middles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_home_banner_middles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `content` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_home_banner_middles`
--

LOCK TABLES `components_home_banner_middles` WRITE;
/*!40000 ALTER TABLE `components_home_banner_middles` DISABLE KEYS */;
/*!40000 ALTER TABLE `components_home_banner_middles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_home_banners`
--

DROP TABLE IF EXISTS `components_home_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_home_banners` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` longtext,
  `subtitle` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_home_banners`
--

LOCK TABLES `components_home_banners` WRITE;
/*!40000 ALTER TABLE `components_home_banners` DISABLE KEYS */;
INSERT INTO `components_home_banners` VALUES (1,'Cleaning services in  Santa Cruz, CA','The secret to having a happy home life is to keep it tidy, although your busy schedule frequently gets in the way. Contact us now to help you with your cleaning problems, we always deliver a quality service.','We are your best cleaning option');
/*!40000 ALTER TABLE `components_home_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_home_characteristic_lists`
--

DROP TABLE IF EXISTS `components_home_characteristic_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_home_characteristic_lists` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `content` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_home_characteristic_lists`
--

LOCK TABLES `components_home_characteristic_lists` WRITE;
/*!40000 ALTER TABLE `components_home_characteristic_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `components_home_characteristic_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_home_characteristics`
--

DROP TABLE IF EXISTS `components_home_characteristics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_home_characteristics` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_home_characteristics`
--

LOCK TABLES `components_home_characteristics` WRITE;
/*!40000 ALTER TABLE `components_home_characteristics` DISABLE KEYS */;
INSERT INTO `components_home_characteristics` VALUES (1,'317+','Business Cleaned'),(2,'99%','Satisfaction Rate'),(3,'103+','Homes Cleaned'),(4,'20+','Cleaning Staff');
/*!40000 ALTER TABLE `components_home_characteristics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_home_galleries`
--

DROP TABLE IF EXISTS `components_home_galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_home_galleries` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_home_galleries`
--

LOCK TABLES `components_home_galleries` WRITE;
/*!40000 ALTER TABLE `components_home_galleries` DISABLE KEYS */;
INSERT INTO `components_home_galleries` VALUES (1),(2),(3),(4);
/*!40000 ALTER TABLE `components_home_galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_home_h_o_ww_ew_orks`
--

DROP TABLE IF EXISTS `components_home_h_o_ww_ew_orks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_home_h_o_ww_ew_orks` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_home_h_o_ww_ew_orks`
--

LOCK TABLES `components_home_h_o_ww_ew_orks` WRITE;
/*!40000 ALTER TABLE `components_home_h_o_ww_ew_orks` DISABLE KEYS */;
INSERT INTO `components_home_h_o_ww_ew_orks` VALUES (1,'We follow these three   <br> steps to provide our services','How we work');
/*!40000 ALTER TABLE `components_home_h_o_ww_ew_orks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_home_h_o_ww_ew_orks_components`
--

DROP TABLE IF EXISTS `components_home_h_o_ww_ew_orks_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_home_h_o_ww_ew_orks_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `components_home_h_o_ww_ew_orks_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  KEY `components_home_h_o_ww_ew_orks_field_index` (`field`),
  KEY `components_home_h_o_ww_ew_orks_component_type_index` (`component_type`),
  KEY `components_home_h_o_ww_ew_orks_entity_fk` (`entity_id`),
  CONSTRAINT `components_home_h_o_ww_ew_orks_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_home_h_o_ww_ew_orks` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_home_h_o_ww_ew_orks_components`
--

LOCK TABLES `components_home_h_o_ww_ew_orks_components` WRITE;
/*!40000 ALTER TABLE `components_home_h_o_ww_ew_orks_components` DISABLE KEYS */;
INSERT INTO `components_home_h_o_ww_ew_orks_components` VALUES (1,1,1,'singles.service-area-list','card',1),(2,1,2,'singles.service-area-list','card',2),(3,1,3,'singles.service-area-list','card',3);
/*!40000 ALTER TABLE `components_home_h_o_ww_ew_orks_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_home_home_careers`
--

DROP TABLE IF EXISTS `components_home_home_careers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_home_home_careers` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `content` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_home_home_careers`
--

LOCK TABLES `components_home_home_careers` WRITE;
/*!40000 ALTER TABLE `components_home_home_careers` DISABLE KEYS */;
/*!40000 ALTER TABLE `components_home_home_careers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_home_home_careers_components`
--

DROP TABLE IF EXISTS `components_home_home_careers_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_home_home_careers_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `components_home_home_careers_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  KEY `components_home_home_careers_field_index` (`field`),
  KEY `components_home_home_careers_component_type_index` (`component_type`),
  KEY `components_home_home_careers_entity_fk` (`entity_id`),
  CONSTRAINT `components_home_home_careers_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_home_home_careers` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_home_home_careers_components`
--

LOCK TABLES `components_home_home_careers_components` WRITE;
/*!40000 ALTER TABLE `components_home_home_careers_components` DISABLE KEYS */;
/*!40000 ALTER TABLE `components_home_home_careers_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_home_home_projects`
--

DROP TABLE IF EXISTS `components_home_home_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_home_home_projects` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` longtext,
  `content` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_home_home_projects`
--

LOCK TABLES `components_home_home_projects` WRITE;
/*!40000 ALTER TABLE `components_home_home_projects` DISABLE KEYS */;
INSERT INTO `components_home_home_projects` VALUES (1,'Cleaning and maintenance  service','Gallery',NULL);
/*!40000 ALTER TABLE `components_home_home_projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_home_home_projects_components`
--

DROP TABLE IF EXISTS `components_home_home_projects_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_home_home_projects_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `components_home_home_projects_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  KEY `components_home_home_projects_field_index` (`field`),
  KEY `components_home_home_projects_component_type_index` (`component_type`),
  KEY `components_home_home_projects_entity_fk` (`entity_id`),
  CONSTRAINT `components_home_home_projects_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_home_home_projects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_home_home_projects_components`
--

LOCK TABLES `components_home_home_projects_components` WRITE;
/*!40000 ALTER TABLE `components_home_home_projects_components` DISABLE KEYS */;
INSERT INTO `components_home_home_projects_components` VALUES (1,1,1,'home.gallery','items',1),(2,1,2,'home.gallery','items',2),(3,1,3,'home.gallery','items',3),(4,1,4,'home.gallery','items',4);
/*!40000 ALTER TABLE `components_home_home_projects_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_home_home_reviews`
--

DROP TABLE IF EXISTS `components_home_home_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_home_home_reviews` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_home_home_reviews`
--

LOCK TABLES `components_home_home_reviews` WRITE;
/*!40000 ALTER TABLE `components_home_home_reviews` DISABLE KEYS */;
INSERT INTO `components_home_home_reviews` VALUES (1,'Recent online evaluations <br>  we\'ve received','Reviews');
/*!40000 ALTER TABLE `components_home_home_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_home_home_reviews_components`
--

DROP TABLE IF EXISTS `components_home_home_reviews_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_home_home_reviews_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `components_home_home_reviews_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  KEY `components_home_home_reviews_field_index` (`field`),
  KEY `components_home_home_reviews_component_type_index` (`component_type`),
  KEY `components_home_home_reviews_entity_fk` (`entity_id`),
  CONSTRAINT `components_home_home_reviews_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_home_home_reviews` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_home_home_reviews_components`
--

LOCK TABLES `components_home_home_reviews_components` WRITE;
/*!40000 ALTER TABLE `components_home_home_reviews_components` DISABLE KEYS */;
INSERT INTO `components_home_home_reviews_components` VALUES (1,1,1,'singles.review-card','card',1),(2,1,2,'singles.review-card','card',2);
/*!40000 ALTER TABLE `components_home_home_reviews_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_home_last_banners`
--

DROP TABLE IF EXISTS `components_home_last_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_home_last_banners` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `content` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_home_last_banners`
--

LOCK TABLES `components_home_last_banners` WRITE;
/*!40000 ALTER TABLE `components_home_last_banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `components_home_last_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_home_service_areas`
--

DROP TABLE IF EXISTS `components_home_service_areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_home_service_areas` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `map` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_home_service_areas`
--

LOCK TABLES `components_home_service_areas` WRITE;
/*!40000 ALTER TABLE `components_home_service_areas` DISABLE KEYS */;
/*!40000 ALTER TABLE `components_home_service_areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_home_service_areas_components`
--

DROP TABLE IF EXISTS `components_home_service_areas_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_home_service_areas_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `components_home_service_areas_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  KEY `components_home_service_areas_field_index` (`field`),
  KEY `components_home_service_areas_component_type_index` (`component_type`),
  KEY `components_home_service_areas_entity_fk` (`entity_id`),
  CONSTRAINT `components_home_service_areas_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_home_service_areas` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_home_service_areas_components`
--

LOCK TABLES `components_home_service_areas_components` WRITE;
/*!40000 ALTER TABLE `components_home_service_areas_components` DISABLE KEYS */;
/*!40000 ALTER TABLE `components_home_service_areas_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_home_service_homes`
--

DROP TABLE IF EXISTS `components_home_service_homes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_home_service_homes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `content` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_home_service_homes`
--

LOCK TABLES `components_home_service_homes` WRITE;
/*!40000 ALTER TABLE `components_home_service_homes` DISABLE KEYS */;
INSERT INTO `components_home_service_homes` VALUES (1,'Professional Cleaning Services','Commercial Services','Our cleaners have the knowledge, experience, and ability to leave your \nhome sparkling clean and in perfect shape. We will clean up your space and leave it dust-free, and you won\'t have to lift a finger. ');
/*!40000 ALTER TABLE `components_home_service_homes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_shared_meta_socials`
--

DROP TABLE IF EXISTS `components_shared_meta_socials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_shared_meta_socials` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `social_network` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_shared_meta_socials`
--

LOCK TABLES `components_shared_meta_socials` WRITE;
/*!40000 ALTER TABLE `components_shared_meta_socials` DISABLE KEYS */;
INSERT INTO `components_shared_meta_socials` VALUES (1,'Facebook','Mac Cleaning','Our sales team will be happy to assist you and answer.'),(2,'Twitter','Mac Cleaning','Our sales team will be happy to assist you and answer.');
/*!40000 ALTER TABLE `components_shared_meta_socials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_shared_seos`
--

DROP TABLE IF EXISTS `components_shared_seos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_shared_seos` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `keywords` longtext,
  `meta_robots` varchar(255) DEFAULT NULL,
  `structured_data` json DEFAULT NULL,
  `meta_viewport` varchar(255) DEFAULT NULL,
  `canonical_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_shared_seos`
--

LOCK TABLES `components_shared_seos` WRITE;
/*!40000 ALTER TABLE `components_shared_seos` DISABLE KEYS */;
INSERT INTO `components_shared_seos` VALUES (1,'Mac Cleaning','The secret to having a happy home life is to keep it tidy, although your busy schedule frequently gets in the way. ',NULL,NULL,NULL,'Mac Cleaning','https://translate.google.com/?hl=es'),(2,'Contact - Mac Cleaning','We are a company with extensive experience and we want you to be part of our team and discover a new world of opportunities that Solar Energy has for you.',NULL,NULL,NULL,'Mac Cleaning','https://translate.google.com/?hl=es');
/*!40000 ALTER TABLE `components_shared_seos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_shared_seos_components`
--

DROP TABLE IF EXISTS `components_shared_seos_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_shared_seos_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `components_shared_seos_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  KEY `components_shared_seos_field_index` (`field`),
  KEY `components_shared_seos_component_type_index` (`component_type`),
  KEY `components_shared_seos_entity_fk` (`entity_id`),
  CONSTRAINT `components_shared_seos_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_shared_seos` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_shared_seos_components`
--

LOCK TABLES `components_shared_seos_components` WRITE;
/*!40000 ALTER TABLE `components_shared_seos_components` DISABLE KEYS */;
INSERT INTO `components_shared_seos_components` VALUES (1,1,1,'shared.meta-social','metaSocial',1),(11,2,2,'shared.meta-social','metaSocial',1);
/*!40000 ALTER TABLE `components_shared_seos_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_singles_about_cards`
--

DROP TABLE IF EXISTS `components_singles_about_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_singles_about_cards` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `content` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_singles_about_cards`
--

LOCK TABLES `components_singles_about_cards` WRITE;
/*!40000 ALTER TABLE `components_singles_about_cards` DISABLE KEYS */;
INSERT INTO `components_singles_about_cards` VALUES (1,'We\'ve been serving around Santa Cruz, CA for many years. Get in touch with us\nto give you more details about our locations. '),(2,'We always listen to the expectations and needs of our clients. That’s why \nwe always provide a healthy enviroment for your family and pets.h');
/*!40000 ALTER TABLE `components_singles_about_cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_singles_about_sliders`
--

DROP TABLE IF EXISTS `components_singles_about_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_singles_about_sliders` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_singles_about_sliders`
--

LOCK TABLES `components_singles_about_sliders` WRITE;
/*!40000 ALTER TABLE `components_singles_about_sliders` DISABLE KEYS */;
/*!40000 ALTER TABLE `components_singles_about_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_singles_banners`
--

DROP TABLE IF EXISTS `components_singles_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_singles_banners` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `subtitle` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_singles_banners`
--

LOCK TABLES `components_singles_banners` WRITE;
/*!40000 ALTER TABLE `components_singles_banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `components_singles_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_singles_careers_lists`
--

DROP TABLE IF EXISTS `components_singles_careers_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_singles_careers_lists` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `item` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_singles_careers_lists`
--

LOCK TABLES `components_singles_careers_lists` WRITE;
/*!40000 ALTER TABLE `components_singles_careers_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `components_singles_careers_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_singles_contact_infos`
--

DROP TABLE IF EXISTS `components_singles_contact_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_singles_contact_infos` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `content` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_singles_contact_infos`
--

LOCK TABLES `components_singles_contact_infos` WRITE;
/*!40000 ALTER TABLE `components_singles_contact_infos` DISABLE KEYS */;
INSERT INTO `components_singles_contact_infos` VALUES (1,'Message Us Anytime','Commercial Services','Let us know your questions and feedback! <br>\nPlease fill out this contact form and we will reach out to you in a few hours. \n');
/*!40000 ALTER TABLE `components_singles_contact_infos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_singles_contact_infos_components`
--

DROP TABLE IF EXISTS `components_singles_contact_infos_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_singles_contact_infos_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `components_singles_contact_infos_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  KEY `components_singles_contact_infos_field_index` (`field`),
  KEY `components_singles_contact_infos_component_type_index` (`component_type`),
  KEY `components_singles_contact_infos_entity_fk` (`entity_id`),
  CONSTRAINT `components_singles_contact_infos_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_singles_contact_infos` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_singles_contact_infos_components`
--

LOCK TABLES `components_singles_contact_infos_components` WRITE;
/*!40000 ALTER TABLE `components_singles_contact_infos_components` DISABLE KEYS */;
INSERT INTO `components_singles_contact_infos_components` VALUES (1,1,1,'singles.form-prin','card',1),(2,1,2,'singles.form-prin','card',2),(3,1,3,'singles.form-prin','card',3);
/*!40000 ALTER TABLE `components_singles_contact_infos_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_singles_footer_infos`
--

DROP TABLE IF EXISTS `components_singles_footer_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_singles_footer_infos` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `lbl_address` varchar(255) DEFAULT NULL,
  `lbl_email` varchar(255) DEFAULT NULL,
  `lbl_phone` varchar(255) DEFAULT NULL,
  `lbl_follow` varchar(255) DEFAULT NULL,
  `lbl_copyright` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_singles_footer_infos`
--

LOCK TABLES `components_singles_footer_infos` WRITE;
/*!40000 ALTER TABLE `components_singles_footer_infos` DISABLE KEYS */;
INSERT INTO `components_singles_footer_infos` VALUES (1,'Address','Email','Phone number','Follow Us','All Right Reserved');
/*!40000 ALTER TABLE `components_singles_footer_infos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_singles_form_informations`
--

DROP TABLE IF EXISTS `components_singles_form_informations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_singles_form_informations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `content` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_singles_form_informations`
--

LOCK TABLES `components_singles_form_informations` WRITE;
/*!40000 ALTER TABLE `components_singles_form_informations` DISABLE KEYS */;
/*!40000 ALTER TABLE `components_singles_form_informations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_singles_form_prins`
--

DROP TABLE IF EXISTS `components_singles_form_prins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_singles_form_prins` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_singles_form_prins`
--

LOCK TABLES `components_singles_form_prins` WRITE;
/*!40000 ALTER TABLE `components_singles_form_prins` DISABLE KEYS */;
INSERT INTO `components_singles_form_prins` VALUES (1,'Phone Number :','(831) 566-1308'),(2,'Email Address : ','customer@mac-cleaning.us'),(3,'Location : ','Santa Cruz, CA 95061');
/*!40000 ALTER TABLE `components_singles_form_prins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_singles_home_careers_lists`
--

DROP TABLE IF EXISTS `components_singles_home_careers_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_singles_home_careers_lists` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_singles_home_careers_lists`
--

LOCK TABLES `components_singles_home_careers_lists` WRITE;
/*!40000 ALTER TABLE `components_singles_home_careers_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `components_singles_home_careers_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_singles_input_forms`
--

DROP TABLE IF EXISTS `components_singles_input_forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_singles_input_forms` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `placeholder` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_singles_input_forms`
--

LOCK TABLES `components_singles_input_forms` WRITE;
/*!40000 ALTER TABLE `components_singles_input_forms` DISABLE KEYS */;
INSERT INTO `components_singles_input_forms` VALUES (1,'name','Full name','Full Name'),(2,'phone','Phone Number','Phone Number'),(3,'email','E-mail','E-mail'),(4,'service','Service','Service'),(5,'message','Message','Message'),(6,NULL,NULL,NULL),(7,NULL,NULL,NULL);
/*!40000 ALTER TABLE `components_singles_input_forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_singles_menus`
--

DROP TABLE IF EXISTS `components_singles_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_singles_menus` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_singles_menus`
--

LOCK TABLES `components_singles_menus` WRITE;
/*!40000 ALTER TABLE `components_singles_menus` DISABLE KEYS */;
INSERT INTO `components_singles_menus` VALUES (1,'Home','/'),(2,'Services','services'),(3,'How we work','how'),(4,'Reviews','reviews'),(5,'Gallery','gallery'),(6,'About Us','about');
/*!40000 ALTER TABLE `components_singles_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_singles_messages`
--

DROP TABLE IF EXISTS `components_singles_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_singles_messages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `mail_sent_ok` varchar(255) DEFAULT NULL,
  `mail_sent_ng` varchar(255) DEFAULT NULL,
  `validation_error` varchar(255) DEFAULT NULL,
  `spam` varchar(255) DEFAULT NULL,
  `accept_terms` varchar(255) DEFAULT NULL,
  `invalid_required` varchar(255) DEFAULT NULL,
  `invalid_too_long` varchar(255) DEFAULT NULL,
  `invalid_too_short` varchar(255) DEFAULT NULL,
  `upload_failed` varchar(255) DEFAULT NULL,
  `upload_file_type_invalid` varchar(255) DEFAULT NULL,
  `upload_file_too_large` varchar(255) DEFAULT NULL,
  `upload_failed_php_error` varchar(255) DEFAULT NULL,
  `invalid_date` varchar(255) DEFAULT NULL,
  `date_too_early` varchar(255) DEFAULT NULL,
  `date_too_late` varchar(255) DEFAULT NULL,
  `invalid_number` varchar(255) DEFAULT NULL,
  `number_too_small` varchar(255) DEFAULT NULL,
  `number_too_large` varchar(255) DEFAULT NULL,
  `quiz_answer_not_correct` varchar(255) DEFAULT NULL,
  `invalid_email` varchar(255) DEFAULT NULL,
  `invalid_url` varchar(255) DEFAULT NULL,
  `invalid_tel` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_singles_messages`
--

LOCK TABLES `components_singles_messages` WRITE;
/*!40000 ALTER TABLE `components_singles_messages` DISABLE KEYS */;
INSERT INTO `components_singles_messages` VALUES (1,'Thank you for your message. It has been sent.','There was an error trying to send your message. Please try again later.','One or more fields have an error. Please check and try again.','There was an error trying to send your message. Please try again later.','You must accept the terms and conditions before sending your message.','Please fill out this field.','This field has a too long input.','This field has a too short input.','There was an unknown error uploading the file.',NULL,'The uploaded file is too large.','There was an error uploading the file.','Please enter a date in YYYY-MM-DD format.','This field has a too early date.','This field has a too late date','Please enter a number.','This field has a too small number.','This field has a too large number.','The answer to the quiz is incorrect.','Please enter an email address.','Please enter a URL.','Please enter a telephone number.');
/*!40000 ALTER TABLE `components_singles_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_singles_review_cards`
--

DROP TABLE IF EXISTS `components_singles_review_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_singles_review_cards` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `content` longtext,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_singles_review_cards`
--

LOCK TABLES `components_singles_review_cards` WRITE;
/*!40000 ALTER TABLE `components_singles_review_cards` DISABLE KEYS */;
INSERT INTO `components_singles_review_cards` VALUES (1,'Mac Cleaning\'s team was very professional with their work. They arrived on time and were ready to work. I was very surprised with the result because \nI\'ve never seen my house so shiny. ','Lauren Maldonado'),(2,'Cleaning is always a nightmare for me. I don\'t have enough time to clean but thanks to Mac Cleaning\'s services, I can rest every weekend and hang out with my friends. ','Valery Stewart');
/*!40000 ALTER TABLE `components_singles_review_cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_singles_service_area_lists`
--

DROP TABLE IF EXISTS `components_singles_service_area_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_singles_service_area_lists` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_singles_service_area_lists`
--

LOCK TABLES `components_singles_service_area_lists` WRITE;
/*!40000 ALTER TABLE `components_singles_service_area_lists` DISABLE KEYS */;
INSERT INTO `components_singles_service_area_lists` VALUES (1,'Contact us','Send us an email and let us know how we can help. We always provide accurate information. '),(2,'Get an estimate  ','Save money and time! \nWe\'ll give you a free estimate according to the  requested service. '),(3,'Service completed','You will be given the opportunity to provide feedback via our contact form after the cleaning service.h');
/*!40000 ALTER TABLE `components_singles_service_area_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_singles_service_lists`
--

DROP TABLE IF EXISTS `components_singles_service_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_singles_service_lists` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` longtext,
  `slug` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_singles_service_lists`
--

LOCK TABLES `components_singles_service_lists` WRITE;
/*!40000 ALTER TABLE `components_singles_service_lists` DISABLE KEYS */;
INSERT INTO `components_singles_service_lists` VALUES (1,'Office Cleaning','We can transform your dingy office into a spotless area. \nWith the help of our cleaning service, your building will be free of dust, \nfilth, and offensive odors.\n',NULL),(2,'House Cleaning','Spend your valuable time relaxing in a sparkling, inviting place that has\nbeen expertly cleaned by our team rather than sweeping, scrubbing, and mopping.\n',NULL),(3,'Clinic Cleaning','In hospital settings, infection prevention and control depend on a clean  and secure environment. We adhere to the highest standards of hygiene.',NULL);
/*!40000 ALTER TABLE `components_singles_service_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_singles_social_networks`
--

DROP TABLE IF EXISTS `components_singles_social_networks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_singles_social_networks` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_singles_social_networks`
--

LOCK TABLES `components_singles_social_networks` WRITE;
/*!40000 ALTER TABLE `components_singles_social_networks` DISABLE KEYS */;
INSERT INTO `components_singles_social_networks` VALUES (1,'Instagram',NULL),(2,'Facebook',NULL);
/*!40000 ALTER TABLE `components_singles_social_networks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_singles_submit_forms`
--

DROP TABLE IF EXISTS `components_singles_submit_forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_singles_submit_forms` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_singles_submit_forms`
--

LOCK TABLES `components_singles_submit_forms` WRITE;
/*!40000 ALTER TABLE `components_singles_submit_forms` DISABLE KEYS */;
INSERT INTO `components_singles_submit_forms` VALUES (1,'http://localhost:1337/api/ezforms/submit','Send');
/*!40000 ALTER TABLE `components_singles_submit_forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezforms_recipient`
--

DROP TABLE IF EXISTS `ezforms_recipient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ezforms_recipient` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezforms_recipient_created_by_id_fk` (`created_by_id`),
  KEY `ezforms_recipient_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `ezforms_recipient_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `ezforms_recipient_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezforms_recipient`
--

LOCK TABLES `ezforms_recipient` WRITE;
/*!40000 ALTER TABLE `ezforms_recipient` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezforms_recipient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezforms_submission`
--

DROP TABLE IF EXISTS `ezforms_submission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ezforms_submission` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `score` varchar(255) DEFAULT NULL,
  `form_name` varchar(255) DEFAULT NULL,
  `data` json DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezforms_submission_created_by_id_fk` (`created_by_id`),
  KEY `ezforms_submission_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `ezforms_submission_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `ezforms_submission_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezforms_submission`
--

LOCK TABLES `ezforms_submission` WRITE;
/*!40000 ALTER TABLE `ezforms_submission` DISABLE KEYS */;
INSERT INTO `ezforms_submission` VALUES (27,'-1','Form','{\"name\": \"Roy Cerdan\", \"email\": \"customer@navamovingservices.us\", \"phone\": \"2622355444\", \"message\": \"\", \"service\": \"office-cleaning\"}','2022-12-10 12:21:02.320000','2022-12-10 12:21:02.320000',NULL,NULL),(28,'-1','Form','{\"name\": \"Roy Cerdan\", \"email\": \"customer@navamovingservices.us\", \"phone\": \"2622355444\", \"message\": \"\", \"service\": \"house-cleaning\"}','2022-12-10 12:21:22.225000','2022-12-10 12:21:22.225000',NULL,NULL),(29,'-1','Form','{\"name\": \"Roy Cerdan\", \"email\": \"customer@navamovingservices.us\", \"phone\": \"2622355444\", \"message\": \"\", \"service\": \"Service\"}','2022-12-12 11:32:48.270000','2022-12-12 11:32:48.270000',NULL,NULL),(30,'-1','Form','{\"name\": \"Roy Cerdan\", \"email\": \"customer@navamovingservices.us\", \"phone\": \"2622355444\", \"message\": \"\", \"service\": \"office-cleaning\"}','2022-12-12 14:59:41.939000','2022-12-12 14:59:41.939000',NULL,NULL),(31,'-1','Form','{\"name\": \"Roy Cerdan\", \"email\": \"customer@navamovingservices.us\", \"phone\": \"2622355444\", \"message\": \"\", \"service\": \"office-cleaning\"}','2022-12-12 16:59:01.473000','2022-12-12 16:59:01.473000',NULL,NULL),(32,'-1','Form','{\"name\": \"Roy Cerdan\", \"email\": \"customer@navamovingservices.us\", \"phone\": \"2622355444\", \"message\": \"\", \"service\": \"office-cleaning\"}','2022-12-12 17:32:53.232000','2022-12-12 17:32:53.232000',NULL,NULL);
/*!40000 ALTER TABLE `ezforms_submission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `files` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `alternative_text` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int DEFAULT NULL,
  `height` int DEFAULT NULL,
  `formats` json DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) DEFAULT NULL,
  `size` decimal(10,2) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `preview_url` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `provider_metadata` json DEFAULT NULL,
  `folder_path` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `upload_files_folder_path_index` (`folder_path`),
  KEY `files_created_by_id_fk` (`created_by_id`),
  KEY `files_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `files_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `files_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
INSERT INTO `files` VALUES (1,'Group 8567 (1).png',NULL,NULL,96,93,NULL,'Group_8567_1_70fb2b2150','.png','image/png',1.62,'https://amgwebsites.s3.amazonaws.com/Group_8567_1_70fb2b2150.png',NULL,'aws-s3',NULL,'/','2022-12-08 17:31:35.201000','2022-12-08 17:31:35.201000',1,1),(2,'image 4.png',NULL,NULL,194,105,NULL,'image_4_140530f1eb','.png','image/png',18.42,'https://amgwebsites.s3.amazonaws.com/image_4_140530f1eb.png',NULL,'aws-s3',NULL,'/','2022-12-08 17:57:51.272000','2022-12-08 17:57:51.272000',1,1),(3,'Rectangle 2202.png',NULL,NULL,2851,1202,'{\"large\": {\"ext\": \".png\", \"url\": \"https://amgwebsites.s3.amazonaws.com/large_Rectangle_2202_ac1d7d8f22.png\", \"hash\": \"large_Rectangle_2202_ac1d7d8f22\", \"mime\": \"image/png\", \"name\": \"large_Rectangle 2202.png\", \"path\": null, \"size\": 989.42, \"width\": 1000, \"height\": 422}, \"small\": {\"ext\": \".png\", \"url\": \"https://amgwebsites.s3.amazonaws.com/small_Rectangle_2202_ac1d7d8f22.png\", \"hash\": \"small_Rectangle_2202_ac1d7d8f22\", \"mime\": \"image/png\", \"name\": \"small_Rectangle 2202.png\", \"path\": null, \"size\": 266.44, \"width\": 500, \"height\": 211}, \"medium\": {\"ext\": \".png\", \"url\": \"https://amgwebsites.s3.amazonaws.com/medium_Rectangle_2202_ac1d7d8f22.png\", \"hash\": \"medium_Rectangle_2202_ac1d7d8f22\", \"mime\": \"image/png\", \"name\": \"medium_Rectangle 2202.png\", \"path\": null, \"size\": 571.92, \"width\": 750, \"height\": 316}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"https://amgwebsites.s3.amazonaws.com/thumbnail_Rectangle_2202_ac1d7d8f22.png\", \"hash\": \"thumbnail_Rectangle_2202_ac1d7d8f22\", \"mime\": \"image/png\", \"name\": \"thumbnail_Rectangle 2202.png\", \"path\": null, \"size\": 71.16, \"width\": 245, \"height\": 103}}','Rectangle_2202_ac1d7d8f22','.png','image/png',4439.14,'https://amgwebsites.s3.amazonaws.com/Rectangle_2202_ac1d7d8f22.png',NULL,'aws-s3',NULL,'/','2022-12-09 09:10:17.404000','2022-12-09 09:10:17.404000',1,1),(4,'Rectangle 2214.png',NULL,NULL,563,866,'{\"small\": {\"ext\": \".png\", \"url\": \"https://amgwebsites.s3.amazonaws.com/small_Rectangle_2214_296f2e2362.png\", \"hash\": \"small_Rectangle_2214_296f2e2362\", \"mime\": \"image/png\", \"name\": \"small_Rectangle 2214.png\", \"path\": null, \"size\": 343.3, \"width\": 325, \"height\": 500}, \"medium\": {\"ext\": \".png\", \"url\": \"https://amgwebsites.s3.amazonaws.com/medium_Rectangle_2214_296f2e2362.png\", \"hash\": \"medium_Rectangle_2214_296f2e2362\", \"mime\": \"image/png\", \"name\": \"medium_Rectangle 2214.png\", \"path\": null, \"size\": 741.03, \"width\": 488, \"height\": 750}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"https://amgwebsites.s3.amazonaws.com/thumbnail_Rectangle_2214_296f2e2362.png\", \"hash\": \"thumbnail_Rectangle_2214_296f2e2362\", \"mime\": \"image/png\", \"name\": \"thumbnail_Rectangle 2214.png\", \"path\": null, \"size\": 40.65, \"width\": 101, \"height\": 156}}','Rectangle_2214_296f2e2362','.png','image/png',691.23,'https://amgwebsites.s3.amazonaws.com/Rectangle_2214_296f2e2362.png',NULL,'aws-s3',NULL,'/','2022-12-09 09:10:26.340000','2022-12-09 09:10:26.340000',1,1),(5,'Rectangle 2205 (2) (1).png',NULL,NULL,452,224,'{\"thumbnail\": {\"ext\": \".png\", \"url\": \"https://amgwebsites.s3.amazonaws.com/thumbnail_Rectangle_2205_2_1_b45ac29e6d.png\", \"hash\": \"thumbnail_Rectangle_2205_2_1_b45ac29e6d\", \"mime\": \"image/png\", \"name\": \"thumbnail_Rectangle 2205 (2) (1).png\", \"path\": null, \"size\": 71.45, \"width\": 245, \"height\": 121}}','Rectangle_2205_2_1_b45ac29e6d','.png','image/png',56.49,'https://amgwebsites.s3.amazonaws.com/Rectangle_2205_2_1_b45ac29e6d.png',NULL,'aws-s3',NULL,'/','2022-12-09 09:13:14.457000','2022-12-09 09:13:14.457000',1,1),(6,'Group 8564.png',NULL,NULL,58,64,NULL,'Group_8564_30be3aeb65','.png','image/png',0.93,'https://amgwebsites.s3.amazonaws.com/Group_8564_30be3aeb65.png',NULL,'aws-s3',NULL,'/','2022-12-09 09:13:14.482000','2022-12-09 09:13:14.482000',1,1),(7,'Group 8563.png',NULL,NULL,61,57,NULL,'Group_8563_69b9da7471','.png','image/png',1.06,'https://amgwebsites.s3.amazonaws.com/Group_8563_69b9da7471.png',NULL,'aws-s3',NULL,'/','2022-12-09 09:13:14.501000','2022-12-09 09:13:14.501000',1,1),(8,'Group (3).png',NULL,NULL,57,64,NULL,'Group_3_0eac09b926','.png','image/png',0.91,'https://amgwebsites.s3.amazonaws.com/Group_3_0eac09b926.png',NULL,'aws-s3',NULL,'/','2022-12-09 09:13:14.503000','2022-12-09 09:13:14.503000',1,1),(9,'Rectangle 2205 (1) (1).png',NULL,NULL,452,224,'{\"thumbnail\": {\"ext\": \".png\", \"url\": \"https://amgwebsites.s3.amazonaws.com/thumbnail_Rectangle_2205_1_1_cbf0ec7730.png\", \"hash\": \"thumbnail_Rectangle_2205_1_1_cbf0ec7730\", \"mime\": \"image/png\", \"name\": \"thumbnail_Rectangle 2205 (1) (1).png\", \"path\": null, \"size\": 67.64, \"width\": 245, \"height\": 121}}','Rectangle_2205_1_1_cbf0ec7730','.png','image/png',62.26,'https://amgwebsites.s3.amazonaws.com/Rectangle_2205_1_1_cbf0ec7730.png',NULL,'aws-s3',NULL,'/','2022-12-09 09:13:14.842000','2022-12-09 09:13:14.842000',1,1),(10,'Rectangle 2205 (3).png',NULL,NULL,452,224,'{\"thumbnail\": {\"ext\": \".png\", \"url\": \"https://amgwebsites.s3.amazonaws.com/thumbnail_Rectangle_2205_3_082da86bd4.png\", \"hash\": \"thumbnail_Rectangle_2205_3_082da86bd4\", \"mime\": \"image/png\", \"name\": \"thumbnail_Rectangle 2205 (3).png\", \"path\": null, \"size\": 70.04, \"width\": 245, \"height\": 121}}','Rectangle_2205_3_082da86bd4','.png','image/png',57.64,'https://amgwebsites.s3.amazonaws.com/Rectangle_2205_3_082da86bd4.png',NULL,'aws-s3',NULL,'/','2022-12-09 09:13:14.852000','2022-12-09 09:13:14.852000',1,1),(11,'Rectangle 2228 (1).png',NULL,NULL,333,558,'{\"small\": {\"ext\": \".png\", \"url\": \"https://amgwebsites.s3.amazonaws.com/small_Rectangle_2228_1_8540357889.png\", \"hash\": \"small_Rectangle_2228_1_8540357889\", \"mime\": \"image/png\", \"name\": \"small_Rectangle 2228 (1).png\", \"path\": null, \"size\": 259.34, \"width\": 298, \"height\": 500}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"https://amgwebsites.s3.amazonaws.com/thumbnail_Rectangle_2228_1_8540357889.png\", \"hash\": \"thumbnail_Rectangle_2228_1_8540357889\", \"mime\": \"image/png\", \"name\": \"thumbnail_Rectangle 2228 (1).png\", \"path\": null, \"size\": 35.01, \"width\": 93, \"height\": 156}}','Rectangle_2228_1_8540357889','.png','image/png',75.23,'https://amgwebsites.s3.amazonaws.com/Rectangle_2228_1_8540357889.png',NULL,'aws-s3',NULL,'/','2022-12-09 09:16:10.350000','2022-12-09 09:16:10.350000',1,1),(12,'Rectangle 2229 (1).png',NULL,NULL,333,558,'{\"small\": {\"ext\": \".png\", \"url\": \"https://amgwebsites.s3.amazonaws.com/small_Rectangle_2229_1_856d2d84c6.png\", \"hash\": \"small_Rectangle_2229_1_856d2d84c6\", \"mime\": \"image/png\", \"name\": \"small_Rectangle 2229 (1).png\", \"path\": null, \"size\": 249.09, \"width\": 298, \"height\": 500}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"https://amgwebsites.s3.amazonaws.com/thumbnail_Rectangle_2229_1_856d2d84c6.png\", \"hash\": \"thumbnail_Rectangle_2229_1_856d2d84c6\", \"mime\": \"image/png\", \"name\": \"thumbnail_Rectangle 2229 (1).png\", \"path\": null, \"size\": 31.8, \"width\": 93, \"height\": 156}}','Rectangle_2229_1_856d2d84c6','.png','image/png',79.01,'https://amgwebsites.s3.amazonaws.com/Rectangle_2229_1_856d2d84c6.png',NULL,'aws-s3',NULL,'/','2022-12-09 09:16:10.426000','2022-12-09 09:16:10.426000',1,1),(13,'Rectangle 2230.png',NULL,NULL,392,291,'{\"thumbnail\": {\"ext\": \".png\", \"url\": \"https://amgwebsites.s3.amazonaws.com/thumbnail_Rectangle_2230_03676ad040.png\", \"hash\": \"thumbnail_Rectangle_2230_03676ad040\", \"mime\": \"image/png\", \"name\": \"thumbnail_Rectangle 2230.png\", \"path\": null, \"size\": 87.21, \"width\": 210, \"height\": 156}}','Rectangle_2230_03676ad040','.png','image/png',171.02,'https://amgwebsites.s3.amazonaws.com/Rectangle_2230_03676ad040.png',NULL,'aws-s3',NULL,'/','2022-12-09 09:16:49.544000','2022-12-09 09:16:49.544000',1,1),(14,'Group (4).png',NULL,NULL,42,36,NULL,'Group_4_369bd6e530','.png','image/png',0.67,'https://amgwebsites.s3.amazonaws.com/Group_4_369bd6e530.png',NULL,'aws-s3',NULL,'/','2022-12-09 09:19:40.430000','2022-12-09 09:19:40.430000',1,1),(15,'Vector (5).png',NULL,NULL,30,40,NULL,'Vector_5_3f64943199','.png','image/png',0.61,'https://amgwebsites.s3.amazonaws.com/Vector_5_3f64943199.png',NULL,'aws-s3',NULL,'/','2022-12-09 09:19:40.582000','2022-12-09 09:19:40.582000',1,1),(16,'Group 8401.png',NULL,NULL,120,20,NULL,'Group_8401_a10c5cee4d','.png','image/png',0.51,'https://amgwebsites.s3.amazonaws.com/Group_8401_a10c5cee4d.png',NULL,'aws-s3',NULL,'/','2022-12-09 09:20:32.232000','2022-12-09 09:20:32.232000',1,1),(17,'Rectangle 2243 (2).png',NULL,NULL,110,110,NULL,'Rectangle_2243_2_ca271f4579','.png','image/png',27.88,'https://amgwebsites.s3.amazonaws.com/Rectangle_2243_2_ca271f4579.png',NULL,'aws-s3',NULL,'/','2022-12-09 09:21:23.114000','2022-12-09 09:21:23.114000',1,1),(18,'Rectangle 2244 (2).png',NULL,NULL,110,110,NULL,'Rectangle_2244_2_a508213857','.png','image/png',21.51,'https://amgwebsites.s3.amazonaws.com/Rectangle_2244_2_a508213857.png',NULL,'aws-s3',NULL,'/','2022-12-09 09:21:23.436000','2022-12-09 09:21:23.436000',1,1),(19,'maid-service-hiring 3 (1).png',NULL,NULL,376,613,'{\"small\": {\"ext\": \".png\", \"url\": \"https://amgwebsites.s3.amazonaws.com/small_maid_service_hiring_3_1_9c33a932bc.png\", \"hash\": \"small_maid_service_hiring_3_1_9c33a932bc\", \"mime\": \"image/png\", \"name\": \"small_maid-service-hiring 3 (1).png\", \"path\": null, \"size\": 284.42, \"width\": 307, \"height\": 500}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"https://amgwebsites.s3.amazonaws.com/thumbnail_maid_service_hiring_3_1_9c33a932bc.png\", \"hash\": \"thumbnail_maid_service_hiring_3_1_9c33a932bc\", \"mime\": \"image/png\", \"name\": \"thumbnail_maid-service-hiring 3 (1).png\", \"path\": null, \"size\": 38.24, \"width\": 96, \"height\": 156}}','maid_service_hiring_3_1_9c33a932bc','.png','image/png',83.87,'https://amgwebsites.s3.amazonaws.com/maid_service_hiring_3_1_9c33a932bc.png',NULL,'aws-s3',NULL,'/','2022-12-09 09:22:20.336000','2022-12-09 09:22:20.336000',1,1),(20,'maid-service-hiring 2 (1).png',NULL,NULL,1900,813,'{\"large\": {\"ext\": \".png\", \"url\": \"https://amgwebsites.s3.amazonaws.com/large_maid_service_hiring_2_1_cb4060afb7.png\", \"hash\": \"large_maid_service_hiring_2_1_cb4060afb7\", \"mime\": \"image/png\", \"name\": \"large_maid-service-hiring 2 (1).png\", \"path\": null, \"size\": 863.29, \"width\": 1000, \"height\": 428}, \"small\": {\"ext\": \".png\", \"url\": \"https://amgwebsites.s3.amazonaws.com/small_maid_service_hiring_2_1_cb4060afb7.png\", \"hash\": \"small_maid_service_hiring_2_1_cb4060afb7\", \"mime\": \"image/png\", \"name\": \"small_maid-service-hiring 2 (1).png\", \"path\": null, \"size\": 243.04, \"width\": 500, \"height\": 214}, \"medium\": {\"ext\": \".png\", \"url\": \"https://amgwebsites.s3.amazonaws.com/medium_maid_service_hiring_2_1_cb4060afb7.png\", \"hash\": \"medium_maid_service_hiring_2_1_cb4060afb7\", \"mime\": \"image/png\", \"name\": \"medium_maid-service-hiring 2 (1).png\", \"path\": null, \"size\": 507.97, \"width\": 750, \"height\": 321}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"https://amgwebsites.s3.amazonaws.com/thumbnail_maid_service_hiring_2_1_cb4060afb7.png\", \"hash\": \"thumbnail_maid_service_hiring_2_1_cb4060afb7\", \"mime\": \"image/png\", \"name\": \"thumbnail_maid-service-hiring 2 (1).png\", \"path\": null, \"size\": 66.68, \"width\": 245, \"height\": 105}}','maid_service_hiring_2_1_cb4060afb7','.png','image/png',587.91,'https://amgwebsites.s3.amazonaws.com/maid_service_hiring_2_1_cb4060afb7.png',NULL,'aws-s3',NULL,'/','2022-12-09 09:22:21.143000','2022-12-09 09:22:21.143000',1,1),(21,'Group (6).png',NULL,NULL,57,54,NULL,'Group_6_02399d8f2e','.png','image/png',0.87,'https://amgwebsites.s3.amazonaws.com/Group_6_02399d8f2e.png',NULL,'aws-s3',NULL,'/','2022-12-09 09:23:50.186000','2022-12-09 09:23:50.186000',1,1),(22,'Vector (6).png',NULL,NULL,49,49,NULL,'Vector_6_461824b536','.png','image/png',0.77,'https://amgwebsites.s3.amazonaws.com/Vector_6_461824b536.png',NULL,'aws-s3',NULL,'/','2022-12-09 09:23:50.456000','2022-12-09 09:23:50.456000',1,1),(23,'Group (5).png',NULL,NULL,54,56,NULL,'Group_5_47a90de836','.png','image/png',0.91,'https://amgwebsites.s3.amazonaws.com/Group_5_47a90de836.png',NULL,'aws-s3',NULL,'/','2022-12-09 09:23:50.467000','2022-12-09 09:23:50.467000',1,1),(24,'Rectangle 2197 (1).png',NULL,NULL,280,363,'{\"thumbnail\": {\"ext\": \".png\", \"url\": \"https://amgwebsites.s3.amazonaws.com/thumbnail_Rectangle_2197_1_3eac48a0c2.png\", \"hash\": \"thumbnail_Rectangle_2197_1_3eac48a0c2\", \"mime\": \"image/png\", \"name\": \"thumbnail_Rectangle 2197 (1).png\", \"path\": null, \"size\": 39.76, \"width\": 120, \"height\": 156}}','Rectangle_2197_1_3eac48a0c2','.png','image/png',49.71,'https://amgwebsites.s3.amazonaws.com/Rectangle_2197_1_3eac48a0c2.png',NULL,'aws-s3',NULL,'/','2022-12-09 09:25:53.670000','2022-12-09 09:25:53.670000',1,1),(25,'Rectangle 2205 (4) (1).png',NULL,NULL,362,470,'{\"thumbnail\": {\"ext\": \".png\", \"url\": \"https://amgwebsites.s3.amazonaws.com/thumbnail_Rectangle_2205_4_1_89074777a9.png\", \"hash\": \"thumbnail_Rectangle_2205_4_1_89074777a9\", \"mime\": \"image/png\", \"name\": \"thumbnail_Rectangle 2205 (4) (1).png\", \"path\": null, \"size\": 45.02, \"width\": 120, \"height\": 156}}','Rectangle_2205_4_1_89074777a9','.png','image/png',67.96,'https://amgwebsites.s3.amazonaws.com/Rectangle_2205_4_1_89074777a9.png',NULL,'aws-s3',NULL,'/','2022-12-09 09:25:53.990000','2022-12-09 09:25:53.990000',1,1),(26,'Rectangle 2206 (1).png',NULL,NULL,362,470,'{\"thumbnail\": {\"ext\": \".png\", \"url\": \"https://amgwebsites.s3.amazonaws.com/thumbnail_Rectangle_2206_1_47d50c2db5.png\", \"hash\": \"thumbnail_Rectangle_2206_1_47d50c2db5\", \"mime\": \"image/png\", \"name\": \"thumbnail_Rectangle 2206 (1).png\", \"path\": null, \"size\": 46.45, \"width\": 120, \"height\": 156}}','Rectangle_2206_1_47d50c2db5','.png','image/png',83.84,'https://amgwebsites.s3.amazonaws.com/Rectangle_2206_1_47d50c2db5.png',NULL,'aws-s3',NULL,'/','2022-12-09 09:25:54.067000','2022-12-09 09:25:54.067000',1,1),(27,'Rectangle 2204 (1).png',NULL,NULL,362,470,'{\"thumbnail\": {\"ext\": \".png\", \"url\": \"https://amgwebsites.s3.amazonaws.com/thumbnail_Rectangle_2204_1_b69c5472fc.png\", \"hash\": \"thumbnail_Rectangle_2204_1_b69c5472fc\", \"mime\": \"image/png\", \"name\": \"thumbnail_Rectangle 2204 (1).png\", \"path\": null, \"size\": 44.07, \"width\": 120, \"height\": 156}}','Rectangle_2204_1_b69c5472fc','.png','image/png',68.75,'https://amgwebsites.s3.amazonaws.com/Rectangle_2204_1_b69c5472fc.png',NULL,'aws-s3',NULL,'/','2022-12-09 09:25:54.110000','2022-12-09 09:25:54.110000',1,1),(28,'Rectangle 2197 (2) (1).png',NULL,NULL,463,601,'{\"small\": {\"ext\": \".png\", \"url\": \"https://amgwebsites.s3.amazonaws.com/small_Rectangle_2197_2_1_4e8c981989.png\", \"hash\": \"small_Rectangle_2197_2_1_4e8c981989\", \"mime\": \"image/png\", \"name\": \"small_Rectangle 2197 (2) (1).png\", \"path\": null, \"size\": 314.77, \"width\": 385, \"height\": 500}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"https://amgwebsites.s3.amazonaws.com/thumbnail_Rectangle_2197_2_1_4e8c981989.png\", \"hash\": \"thumbnail_Rectangle_2197_2_1_4e8c981989\", \"mime\": \"image/png\", \"name\": \"thumbnail_Rectangle 2197 (2) (1).png\", \"path\": null, \"size\": 39.18, \"width\": 120, \"height\": 156}}','Rectangle_2197_2_1_4e8c981989','.png','image/png',116.78,'https://amgwebsites.s3.amazonaws.com/Rectangle_2197_2_1_4e8c981989.png',NULL,'aws-s3',NULL,'/','2022-12-09 09:26:23.788000','2022-12-09 09:26:23.788000',1,1),(29,'Rectangle 2205 (5) (1).png',NULL,NULL,452,224,'{\"thumbnail\": {\"ext\": \".png\", \"url\": \"https://amgwebsites.s3.amazonaws.com/thumbnail_Rectangle_2205_5_1_7ed25aa0ae.png\", \"hash\": \"thumbnail_Rectangle_2205_5_1_7ed25aa0ae\", \"mime\": \"image/png\", \"name\": \"thumbnail_Rectangle 2205 (5) (1).png\", \"path\": null, \"size\": 70.04, \"width\": 245, \"height\": 121}}','Rectangle_2205_5_1_7ed25aa0ae','.png','image/png',57.64,'https://amgwebsites.s3.amazonaws.com/Rectangle_2205_5_1_7ed25aa0ae.png',NULL,'aws-s3',NULL,'/','2022-12-09 12:39:37.972000','2022-12-09 12:53:18.088000',1,1),(30,'Vector (8).png',NULL,NULL,25,22,NULL,'Vector_8_f1722006b8','.png','image/png',0.27,'https://amgwebsites.s3.amazonaws.com/Vector_8_f1722006b8.png',NULL,'aws-s3',NULL,'/','2022-12-10 09:58:57.189000','2022-12-10 09:58:57.189000',1,1),(31,'Group 8482.png',NULL,NULL,20,23,NULL,'Group_8482_ed3f29eef7','.png','image/png',0.39,'https://amgwebsites.s3.amazonaws.com/Group_8482_ed3f29eef7.png',NULL,'aws-s3',NULL,'/','2022-12-10 09:58:57.469000','2022-12-10 09:58:57.469000',1,1),(32,'Group 8484.png',NULL,NULL,23,23,NULL,'Group_8484_42ed251110','.png','image/png',0.46,'https://amgwebsites.s3.amazonaws.com/Group_8484_42ed251110.png',NULL,'aws-s3',NULL,'/','2022-12-10 09:58:57.497000','2022-12-10 09:58:57.497000',1,1);
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files_folder_links`
--

DROP TABLE IF EXISTS `files_folder_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `files_folder_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `file_id` int unsigned DEFAULT NULL,
  `folder_id` int unsigned DEFAULT NULL,
  `file_order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `files_folder_links_unique` (`file_id`,`folder_id`),
  KEY `files_folder_links_fk` (`file_id`),
  KEY `files_folder_links_inv_fk` (`folder_id`),
  KEY `files_folder_links_order_inv_fk` (`file_order`),
  CONSTRAINT `files_folder_links_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE,
  CONSTRAINT `files_folder_links_inv_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files_folder_links`
--

LOCK TABLES `files_folder_links` WRITE;
/*!40000 ALTER TABLE `files_folder_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `files_folder_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files_related_morphs`
--

DROP TABLE IF EXISTS `files_related_morphs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `files_related_morphs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `file_id` int unsigned DEFAULT NULL,
  `related_id` int unsigned DEFAULT NULL,
  `related_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `files_related_morphs_fk` (`file_id`),
  CONSTRAINT `files_related_morphs_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=416 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files_related_morphs`
--

LOCK TABLES `files_related_morphs` WRITE;
/*!40000 ALTER TABLE `files_related_morphs` DISABLE KEYS */;
INSERT INTO `files_related_morphs` VALUES (368,3,1,'home.banner','bg',1),(369,4,1,'home.banner','bg_mob',1),(370,29,1,'singles.service-list','image',1),(371,7,1,'singles.service-list','icon',1),(372,9,2,'singles.service-list','image',1),(373,6,2,'singles.service-list','icon',1),(374,5,3,'singles.service-list','image',1),(375,8,3,'singles.service-list','icon',1),(376,15,1,'singles.about-card','icon',1),(377,14,2,'singles.about-card','icon',1),(378,11,1,'home.about-home','img',1),(379,13,1,'home.about-home','img_mob',1),(380,12,1,'home.about-home','img_two',1),(381,16,1,'singles.review-card','stars',1),(382,18,1,'singles.review-card','avatar',1),(383,16,2,'singles.review-card','stars',1),(384,17,2,'singles.review-card','avatar',1),(385,20,1,'home.home-reviews','bg',1),(386,19,1,'home.home-reviews','bg_mob',1),(387,24,1,'home.gallery','img',1),(388,28,1,'home.gallery','img_zoom',1),(389,27,2,'home.gallery','img',1),(390,28,2,'home.gallery','img_zoom',1),(391,26,3,'home.gallery','img',1),(392,26,3,'home.gallery','img_zoom',1),(393,25,4,'home.gallery','img',1),(394,28,4,'home.gallery','img_zoom',1),(395,22,1,'singles.service-area-list','icon',1),(396,23,2,'singles.service-area-list','icon',1),(397,21,3,'singles.service-area-list','icon',1),(398,19,1,'shared.meta-social','image',1),(399,2,1,'shared.seo','metaImage',1),(410,2,1,'api::general.general','logo',1),(411,32,1,'singles.form-prin','icon',1),(412,30,2,'singles.form-prin','icon',1),(413,31,3,'singles.form-prin','icon',1),(414,27,2,'shared.meta-social','image',1),(415,2,2,'shared.seo','metaImage',1);
/*!40000 ALTER TABLE `files_related_morphs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms`
--

DROP TABLE IF EXISTS `forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forms` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `forms_created_by_id_fk` (`created_by_id`),
  KEY `forms_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `forms_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `forms_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms`
--

LOCK TABLES `forms` WRITE;
/*!40000 ALTER TABLE `forms` DISABLE KEYS */;
INSERT INTO `forms` VALUES (1,'2022-12-10 09:55:00.741000','2022-12-12 18:03:07.808000','2022-12-10 09:55:02.771000',1,1);
/*!40000 ALTER TABLE `forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms_components`
--

DROP TABLE IF EXISTS `forms_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forms_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `forms_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  KEY `forms_field_index` (`field`),
  KEY `forms_component_type_index` (`component_type`),
  KEY `forms_entity_fk` (`entity_id`),
  CONSTRAINT `forms_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `forms` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_components`
--

LOCK TABLES `forms_components` WRITE;
/*!40000 ALTER TABLE `forms_components` DISABLE KEYS */;
INSERT INTO `forms_components` VALUES (1,1,1,'singles.messages','messages',NULL),(3,1,1,'singles.submit-form','submit',NULL),(4,1,1,'singles.input-form','name',NULL),(5,1,2,'singles.input-form','phone',NULL),(6,1,3,'singles.input-form','email',NULL),(7,1,4,'singles.input-form','service',NULL),(8,1,5,'singles.input-form','message',NULL),(9,1,6,'singles.input-form','position',NULL),(10,1,7,'singles.input-form','file',NULL),(11,1,1,'singles.contact-info','info',NULL),(28,1,2,'shared.seo','seo',NULL);
/*!40000 ALTER TABLE `forms_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generals`
--

DROP TABLE IF EXISTS `generals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `generals` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `url_map` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `facebook_id` varchar(255) DEFAULT NULL,
  `pixel_facebook` varchar(255) DEFAULT NULL,
  `tag_manager` varchar(255) DEFAULT NULL,
  `cellphone` varchar(255) DEFAULT NULL,
  `message_getbuton` varchar(255) DEFAULT NULL,
  `lbl_solar_energy` varchar(255) DEFAULT NULL,
  `lbl_contact_us` varchar(255) DEFAULT NULL,
  `lbl_see_service` varchar(255) DEFAULT NULL,
  `lbl_read_more` varchar(255) DEFAULT NULL,
  `schedule` varchar(255) DEFAULT NULL,
  `lbl_get_estimate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `generals_created_by_id_fk` (`created_by_id`),
  KEY `generals_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `generals_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `generals_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generals`
--

LOCK TABLES `generals` WRITE;
/*!40000 ALTER TABLE `generals` DISABLE KEYS */;
INSERT INTO `generals` VALUES (1,'2022-12-08 17:31:38.265000','2022-12-12 15:20:10.399000','2022-12-08 17:32:42.053000',1,1,'science.kshmr@gmail.com','Oakland, CA 94601',NULL,'(510) 934-2390','ff','ff','ff','2623445444','Get Button','Solar Energy','Contact Us','See Service','Read more','Monday to Sunday 07:30 am - 04:30 pm','Get a free estimate.');
/*!40000 ALTER TABLE `generals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generals_components`
--

DROP TABLE IF EXISTS `generals_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `generals_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `generals_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  KEY `generals_field_index` (`field`),
  KEY `generals_component_type_index` (`component_type`),
  KEY `generals_entity_fk` (`entity_id`),
  CONSTRAINT `generals_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `generals` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generals_components`
--

LOCK TABLES `generals_components` WRITE;
/*!40000 ALTER TABLE `generals_components` DISABLE KEYS */;
INSERT INTO `generals_components` VALUES (1,1,1,'singles.menu','menu',1),(2,1,1,'singles.social-networks','socials_networks',1),(3,1,2,'singles.menu','menu',3),(4,1,3,'singles.menu','menu',4),(5,1,4,'singles.menu','menu',6),(6,1,5,'singles.menu','menu',7),(7,1,6,'singles.menu','menu',8),(27,1,1,'singles.footer-info','footer_titles',9),(51,1,2,'singles.social-networks','socials_networks',2);
/*!40000 ALTER TABLE `generals_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `homes`
--

DROP TABLE IF EXISTS `homes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `homes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `homes_created_by_id_fk` (`created_by_id`),
  KEY `homes_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `homes_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `homes_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homes`
--

LOCK TABLES `homes` WRITE;
/*!40000 ALTER TABLE `homes` DISABLE KEYS */;
INSERT INTO `homes` VALUES (1,'2022-12-09 09:17:37.001000','2022-12-09 17:22:31.467000','2022-12-09 09:29:32.601000',1,1);
/*!40000 ALTER TABLE `homes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `homes_components`
--

DROP TABLE IF EXISTS `homes_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `homes_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `homes_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  KEY `homes_field_index` (`field`),
  KEY `homes_component_type_index` (`component_type`),
  KEY `homes_entity_fk` (`entity_id`),
  CONSTRAINT `homes_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `homes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homes_components`
--

LOCK TABLES `homes_components` WRITE;
/*!40000 ALTER TABLE `homes_components` DISABLE KEYS */;
INSERT INTO `homes_components` VALUES (1,1,1,'home.banner','banner_prin',11),(2,1,1,'home.service-home','services',12),(3,1,1,'singles.service-list','service_list',1),(4,1,2,'singles.service-list','service_list',2),(5,1,3,'singles.service-list','service_list',4),(6,1,1,'home.characteristic','characteristics',1),(7,1,2,'home.characteristic','characteristics',2),(8,1,3,'home.characteristic','characteristics',3),(9,1,4,'home.characteristic','characteristics',4),(10,1,1,'home.about-home','about',13),(11,1,1,'home.home-reviews','review',14),(45,1,1,'home.h-o-ww-ew-ork','how_we_work',10),(57,1,1,'home.home-projects','gallery',8),(59,1,1,'shared.seo','seo',9);
/*!40000 ALTER TABLE `homes_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i18n_locale`
--

DROP TABLE IF EXISTS `i18n_locale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `i18n_locale` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `i18n_locale_created_by_id_fk` (`created_by_id`),
  KEY `i18n_locale_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `i18n_locale_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `i18n_locale_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i18n_locale`
--

LOCK TABLES `i18n_locale` WRITE;
/*!40000 ALTER TABLE `i18n_locale` DISABLE KEYS */;
INSERT INTO `i18n_locale` VALUES (1,'English (en)','en','2022-12-08 11:08:48.201000','2022-12-08 11:08:48.201000',NULL,NULL);
/*!40000 ALTER TABLE `i18n_locale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_api_token_permissions`
--

DROP TABLE IF EXISTS `strapi_api_token_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_api_token_permissions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `strapi_api_token_permissions_created_by_id_fk` (`created_by_id`),
  KEY `strapi_api_token_permissions_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `strapi_api_token_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `strapi_api_token_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_api_token_permissions`
--

LOCK TABLES `strapi_api_token_permissions` WRITE;
/*!40000 ALTER TABLE `strapi_api_token_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_api_token_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_api_token_permissions_token_links`
--

DROP TABLE IF EXISTS `strapi_api_token_permissions_token_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_api_token_permissions_token_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `api_token_permission_id` int unsigned DEFAULT NULL,
  `api_token_id` int unsigned DEFAULT NULL,
  `api_token_permission_order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `strapi_api_token_permissions_token_links_unique` (`api_token_permission_id`,`api_token_id`),
  KEY `strapi_api_token_permissions_token_links_fk` (`api_token_permission_id`),
  KEY `strapi_api_token_permissions_token_links_inv_fk` (`api_token_id`),
  KEY `strapi_api_token_permissions_token_links_order_inv_fk` (`api_token_permission_order`),
  CONSTRAINT `strapi_api_token_permissions_token_links_fk` FOREIGN KEY (`api_token_permission_id`) REFERENCES `strapi_api_token_permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `strapi_api_token_permissions_token_links_inv_fk` FOREIGN KEY (`api_token_id`) REFERENCES `strapi_api_tokens` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_api_token_permissions_token_links`
--

LOCK TABLES `strapi_api_token_permissions_token_links` WRITE;
/*!40000 ALTER TABLE `strapi_api_token_permissions_token_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_api_token_permissions_token_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_api_tokens`
--

DROP TABLE IF EXISTS `strapi_api_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_api_tokens` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `access_key` varchar(255) DEFAULT NULL,
  `last_used_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `lifespan` bigint DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `strapi_api_tokens_created_by_id_fk` (`created_by_id`),
  KEY `strapi_api_tokens_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `strapi_api_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `strapi_api_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_api_tokens`
--

LOCK TABLES `strapi_api_tokens` WRITE;
/*!40000 ALTER TABLE `strapi_api_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_api_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_core_store_settings`
--

DROP TABLE IF EXISTS `strapi_core_store_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_core_store_settings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_core_store_settings`
--

LOCK TABLES `strapi_core_store_settings` WRITE;
/*!40000 ALTER TABLE `strapi_core_store_settings` DISABLE KEYS */;
INSERT INTO `strapi_core_store_settings` VALUES (1,'strapi_content_types_schema','{\"admin::permission\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"admin::permission\",\"plugin\":\"admin\",\"globalId\":\"AdminPermission\"},\"admin::user\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"admin::user\",\"plugin\":\"admin\",\"globalId\":\"AdminUser\"},\"admin::role\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"admin::role\",\"plugin\":\"admin\",\"globalId\":\"AdminRole\"},\"admin::api-token\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"api-token\",\"connection\":\"default\",\"uid\":\"admin::api-token\",\"plugin\":\"admin\",\"globalId\":\"AdminApiToken\"},\"admin::api-token-permission\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"api-token-permission\",\"connection\":\"default\",\"uid\":\"admin::api-token-permission\",\"plugin\":\"admin\",\"globalId\":\"AdminApiTokenPermission\"},\"plugin::upload.file\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"min\":1,\"required\":true,\"private\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"indexes\":[{\"name\":\"upload_files_folder_path_index\",\"columns\":[\"folder_path\"],\"type\":null}],\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"min\":1,\"required\":true,\"private\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"file\",\"connection\":\"default\",\"uid\":\"plugin::upload.file\",\"plugin\":\"upload\",\"globalId\":\"UploadFile\"},\"plugin::upload.folder\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"min\":1,\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"indexes\":[{\"name\":\"upload_folders_path_id_index\",\"columns\":[\"path_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_path_index\",\"columns\":[\"path\"],\"type\":\"unique\"}],\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"min\":1,\"required\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"folder\",\"connection\":\"default\",\"uid\":\"plugin::upload.folder\",\"plugin\":\"upload\",\"globalId\":\"UploadFolder\"},\"plugin::ezforms.submission\":{\"info\":{\"tableName\":\"submission\",\"singularName\":\"submission\",\"pluralName\":\"submissions\",\"displayName\":\"Form Submissions\",\"description\":\"A Place for all your form submissions\",\"kind\":\"collectionType\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":true},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"score\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"formName\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"data\":{\"type\":\"json\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"info\":{\"tableName\":\"submission\",\"singularName\":\"submission\",\"pluralName\":\"submissions\",\"displayName\":\"Form Submissions\",\"description\":\"A Place for all your form submissions\",\"kind\":\"collectionType\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":true},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"score\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"formName\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"data\":{\"type\":\"json\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"submission\",\"connection\":\"default\",\"uid\":\"plugin::ezforms.submission\",\"plugin\":\"ezforms\",\"collectionName\":\"ezforms_submission\",\"globalId\":\"EzformsSubmission\"},\"plugin::ezforms.recipient\":{\"info\":{\"tableName\":\"recipients\",\"singularName\":\"recipient\",\"pluralName\":\"recipients\",\"displayName\":\"Notification Recipients\",\"description\":\"List of Notification Recipients\",\"kind\":\"collectionType\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":true},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"email\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"number\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"info\":{\"tableName\":\"recipients\",\"singularName\":\"recipient\",\"pluralName\":\"recipients\",\"displayName\":\"Notification Recipients\",\"description\":\"List of Notification Recipients\",\"kind\":\"collectionType\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":true},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"email\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"number\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"recipient\",\"connection\":\"default\",\"uid\":\"plugin::ezforms.recipient\",\"plugin\":\"ezforms\",\"collectionName\":\"ezforms_recipient\",\"globalId\":\"EzformsRecipient\"},\"plugin::i18n.locale\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"locale\",\"connection\":\"default\",\"uid\":\"plugin::i18n.locale\",\"plugin\":\"i18n\",\"collectionName\":\"i18n_locale\",\"globalId\":\"I18NLocale\"},\"plugin::users-permissions.permission\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.permission\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsPermission\"},\"plugin::users-permissions.role\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.role\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsRole\"},\"plugin::users-permissions.user\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"config\":{\"attributes\":{\"resetPasswordToken\":{\"hidden\":true},\"confirmationToken\":{\"hidden\":true},\"provider\":{\"hidden\":true}}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.user\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsUser\"},\"api::form.form\":{\"kind\":\"singleType\",\"collectionName\":\"forms\",\"info\":{\"singularName\":\"form\",\"pluralName\":\"forms\",\"displayName\":\"Contact\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"messages\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"singles.messages\"},\"submit\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"singles.submit-form\"},\"name\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"singles.input-form\"},\"phone\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"singles.input-form\"},\"email\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"singles.input-form\"},\"service\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"singles.input-form\"},\"message\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"singles.input-form\"},\"info\":{\"displayName\":\"ContactInfo\",\"type\":\"component\",\"repeatable\":false,\"component\":\"singles.contact-info\"},\"seo\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"shared.seo\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"forms\",\"info\":{\"singularName\":\"form\",\"pluralName\":\"forms\",\"displayName\":\"Contact\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"messages\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"singles.messages\"},\"submit\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"singles.submit-form\"},\"name\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"singles.input-form\"},\"phone\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"singles.input-form\"},\"email\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"singles.input-form\"},\"service\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"singles.input-form\"},\"message\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"singles.input-form\"},\"info\":{\"displayName\":\"ContactInfo\",\"type\":\"component\",\"repeatable\":false,\"component\":\"singles.contact-info\"},\"seo\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"shared.seo\"}},\"kind\":\"singleType\"},\"modelType\":\"contentType\",\"modelName\":\"form\",\"connection\":\"default\",\"uid\":\"api::form.form\",\"apiName\":\"form\",\"globalId\":\"Form\",\"actions\":{},\"lifecycles\":{}},\"api::general.general\":{\"kind\":\"singleType\",\"collectionName\":\"generals\",\"info\":{\"singularName\":\"general\",\"pluralName\":\"generals\",\"displayName\":\"General\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"logo\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]},\"email\":{\"type\":\"email\"},\"address\":{\"type\":\"string\"},\"url_map\":{\"type\":\"string\"},\"phone\":{\"type\":\"string\"},\"facebook_id\":{\"type\":\"string\"},\"pixel_facebook\":{\"type\":\"string\"},\"tag_manager\":{\"type\":\"string\"},\"cellphone\":{\"type\":\"string\"},\"message_getbuton\":{\"type\":\"string\"},\"menu\":{\"displayName\":\"Menu\",\"type\":\"component\",\"repeatable\":true,\"component\":\"singles.menu\"},\"socials_networks\":{\"displayName\":\"SocialNetworks\",\"type\":\"component\",\"repeatable\":true,\"component\":\"singles.social-networks\"},\"lbl_solar_energy\":{\"type\":\"string\"},\"lbl_contact_us\":{\"type\":\"string\"},\"lbl_see_service\":{\"type\":\"string\"},\"lbl_read_more\":{\"type\":\"string\"},\"schedule\":{\"type\":\"string\"},\"lbl_get_estimate\":{\"type\":\"string\"},\"footer_titles\":{\"displayName\":\"FooterInfo\",\"type\":\"component\",\"repeatable\":false,\"component\":\"singles.footer-info\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"generals\",\"info\":{\"singularName\":\"general\",\"pluralName\":\"generals\",\"displayName\":\"General\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"logo\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]},\"email\":{\"type\":\"email\"},\"address\":{\"type\":\"string\"},\"url_map\":{\"type\":\"string\"},\"phone\":{\"type\":\"string\"},\"facebook_id\":{\"type\":\"string\"},\"pixel_facebook\":{\"type\":\"string\"},\"tag_manager\":{\"type\":\"string\"},\"cellphone\":{\"type\":\"string\"},\"message_getbuton\":{\"type\":\"string\"},\"menu\":{\"displayName\":\"Menu\",\"type\":\"component\",\"repeatable\":true,\"component\":\"singles.menu\"},\"socials_networks\":{\"displayName\":\"SocialNetworks\",\"type\":\"component\",\"repeatable\":true,\"component\":\"singles.social-networks\"},\"lbl_solar_energy\":{\"type\":\"string\"},\"lbl_contact_us\":{\"type\":\"string\"},\"lbl_see_service\":{\"type\":\"string\"},\"lbl_read_more\":{\"type\":\"string\"},\"schedule\":{\"type\":\"string\"},\"lbl_get_estimate\":{\"type\":\"string\"},\"footer_titles\":{\"displayName\":\"FooterInfo\",\"type\":\"component\",\"repeatable\":false,\"component\":\"singles.footer-info\"}},\"kind\":\"singleType\"},\"modelType\":\"contentType\",\"modelName\":\"general\",\"connection\":\"default\",\"uid\":\"api::general.general\",\"apiName\":\"general\",\"globalId\":\"General\",\"actions\":{},\"lifecycles\":{}},\"api::home.home\":{\"kind\":\"singleType\",\"collectionName\":\"homes\",\"info\":{\"singularName\":\"home\",\"pluralName\":\"homes\",\"displayName\":\"Home\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"banner_prin\":{\"displayName\":\"Banner\",\"type\":\"component\",\"repeatable\":false,\"component\":\"home.banner\"},\"services\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"home.service-home\"},\"service_list\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"singles.service-list\"},\"characteristics\":{\"displayName\":\"Characteristic\",\"type\":\"component\",\"repeatable\":true,\"component\":\"home.characteristic\"},\"about\":{\"displayName\":\"AboutHome\",\"type\":\"component\",\"repeatable\":false,\"component\":\"home.about-home\"},\"review\":{\"displayName\":\"HomeReviews\",\"type\":\"component\",\"repeatable\":false,\"component\":\"home.home-reviews\"},\"gallery\":{\"displayName\":\"HomeProjects\",\"type\":\"component\",\"repeatable\":false,\"component\":\"home.home-projects\"},\"how_we_work\":{\"displayName\":\"hOWwEwORK\",\"type\":\"component\",\"repeatable\":false,\"component\":\"home.h-o-ww-ew-ork\"},\"seo\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"shared.seo\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"homes\",\"info\":{\"singularName\":\"home\",\"pluralName\":\"homes\",\"displayName\":\"Home\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"banner_prin\":{\"displayName\":\"Banner\",\"type\":\"component\",\"repeatable\":false,\"component\":\"home.banner\"},\"services\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"home.service-home\"},\"service_list\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"singles.service-list\"},\"characteristics\":{\"displayName\":\"Characteristic\",\"type\":\"component\",\"repeatable\":true,\"component\":\"home.characteristic\"},\"about\":{\"displayName\":\"AboutHome\",\"type\":\"component\",\"repeatable\":false,\"component\":\"home.about-home\"},\"review\":{\"displayName\":\"HomeReviews\",\"type\":\"component\",\"repeatable\":false,\"component\":\"home.home-reviews\"},\"gallery\":{\"displayName\":\"HomeProjects\",\"type\":\"component\",\"repeatable\":false,\"component\":\"home.home-projects\"},\"how_we_work\":{\"displayName\":\"hOWwEwORK\",\"type\":\"component\",\"repeatable\":false,\"component\":\"home.h-o-ww-ew-ork\"},\"seo\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"shared.seo\"}},\"kind\":\"singleType\"},\"modelType\":\"contentType\",\"modelName\":\"home\",\"connection\":\"default\",\"uid\":\"api::home.home\",\"apiName\":\"home\",\"globalId\":\"Home\",\"actions\":{},\"lifecycles\":{}}}','object',NULL,NULL),(2,'plugin_content_manager_configuration_content_types::admin::permission','{\"uid\":\"admin::permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"subject\":{\"edit\":{\"label\":\"subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subject\",\"searchable\":true,\"sortable\":true}},\"properties\":{\"edit\":{\"label\":\"properties\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"properties\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"subject\",\"size\":6}],[{\"name\":\"properties\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}],[{\"name\":\"role\",\"size\":6}]]}}','object',NULL,NULL),(3,'plugin_content_manager_configuration_content_types::admin::role','{\"uid\":\"admin::role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6},{\"name\":\"users\",\"size\":6}],[{\"name\":\"permissions\",\"size\":6}]]}}','object',NULL,NULL),(4,'plugin_content_manager_configuration_content_types::admin::api-token','{\"uid\":\"admin::api-token\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"lastUsedAt\":{\"edit\":{\"label\":\"lastUsedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastUsedAt\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"expiresAt\":{\"edit\":{\"label\":\"expiresAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"expiresAt\",\"searchable\":true,\"sortable\":true}},\"lifespan\":{\"edit\":{\"label\":\"lifespan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lifespan\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"accessKey\",\"size\":6}],[{\"name\":\"lastUsedAt\",\"size\":6},{\"name\":\"permissions\",\"size\":6}],[{\"name\":\"expiresAt\",\"size\":6},{\"name\":\"lifespan\",\"size\":4}]]}}','object',NULL,NULL),(5,'plugin_content_manager_configuration_content_types::plugin::upload.folder','{\"uid\":\"plugin::upload.folder\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"pathId\":{\"edit\":{\"label\":\"pathId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"pathId\",\"searchable\":true,\"sortable\":true}},\"parent\":{\"edit\":{\"label\":\"parent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"parent\",\"searchable\":true,\"sortable\":true}},\"children\":{\"edit\":{\"label\":\"children\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"children\",\"searchable\":false,\"sortable\":false}},\"files\":{\"edit\":{\"label\":\"files\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"files\",\"searchable\":false,\"sortable\":false}},\"path\":{\"edit\":{\"label\":\"path\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"path\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"pathId\",\"parent\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"pathId\",\"size\":4}],[{\"name\":\"parent\",\"size\":6},{\"name\":\"children\",\"size\":6}],[{\"name\":\"files\",\"size\":6},{\"name\":\"path\",\"size\":6}]]}}','object',NULL,NULL),(6,'plugin_content_manager_configuration_content_types::plugin::ezforms.submission','{\"uid\":\"plugin::ezforms.submission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"score\",\"defaultSortBy\":\"score\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"score\":{\"edit\":{\"label\":\"score\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"score\",\"searchable\":true,\"sortable\":true}},\"formName\":{\"edit\":{\"label\":\"formName\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"formName\",\"searchable\":true,\"sortable\":true}},\"data\":{\"edit\":{\"label\":\"data\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"data\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"score\",\"formName\",\"createdAt\"],\"edit\":[[{\"name\":\"score\",\"size\":6},{\"name\":\"formName\",\"size\":6}],[{\"name\":\"data\",\"size\":12}]]}}','object',NULL,NULL),(7,'plugin_content_manager_configuration_content_types::plugin::ezforms.recipient','{\"uid\":\"plugin::ezforms.recipient\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"number\":{\"edit\":{\"label\":\"number\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"number\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"email\",\"number\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"number\",\"size\":6}]]}}','object',NULL,NULL),(8,'plugin_content_manager_configuration_content_types::plugin::i18n.locale','{\"uid\":\"plugin::i18n.locale\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"createdAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}]]}}','object',NULL,NULL),(9,'plugin_content_manager_configuration_content_types::plugin::upload.file','{\"uid\":\"plugin::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"alternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"alternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"previewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"previewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider_metadata\",\"searchable\":false,\"sortable\":false}},\"folder\":{\"edit\":{\"label\":\"folder\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"folder\",\"searchable\":true,\"sortable\":true}},\"folderPath\":{\"edit\":{\"label\":\"folderPath\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"folderPath\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}],[{\"name\":\"folder\",\"size\":6},{\"name\":\"folderPath\",\"size\":6}]]}}','object',NULL,NULL),(10,'plugin_content_manager_configuration_content_types::plugin::users-permissions.permission','{\"uid\":\"plugin::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"role\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"role\",\"size\":6}]]}}','object',NULL,NULL),(11,'plugin_content_manager_configuration_content_types::admin::user','{\"uid\":\"admin::user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"registrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"registrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"isActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"preferedLanguage\":{\"edit\":{\"label\":\"preferedLanguage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"preferedLanguage\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"resetPasswordToken\",\"size\":6}],[{\"name\":\"registrationToken\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"roles\",\"size\":6},{\"name\":\"blocked\",\"size\":4}],[{\"name\":\"preferedLanguage\",\"size\":6}]]}}','object',NULL,NULL),(12,'plugin_content_manager_configuration_content_types::admin::api-token-permission','{\"uid\":\"admin::api-token-permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"token\":{\"edit\":{\"label\":\"token\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"token\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"token\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"token\",\"size\":6}]]}}','object',NULL,NULL),(13,'plugin_content_manager_configuration_content_types::plugin::users-permissions.role','{\"uid\":\"plugin::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"permissions\",\"size\":6}],[{\"name\":\"users\",\"size\":6}]]}}','object',NULL,NULL),(14,'plugin_content_manager_configuration_content_types::plugin::users-permissions.user','{\"uid\":\"plugin::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"confirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"confirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"role\",\"size\":6}]]}}','object',NULL,NULL),(15,'plugin_upload_settings','{\"sizeOptimization\":true,\"responsiveDimensions\":true,\"autoOrientation\":false}','object',NULL,NULL),(16,'plugin_upload_metrics','{\"weeklySchedule\":\"28 15 11 * * 4\",\"lastWeeklyUpdate\":1670516128066}','object',NULL,NULL),(17,'plugin_i18n_default_locale','\"en\"','string',NULL,NULL),(18,'plugin_users-permissions_grant','{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/instagram/callback\",\"scope\":[\"user_profile\"]},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"enabled\":false,\"icon\":\"linkedin\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"enabled\":false,\"icon\":\"aws\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"api/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]},\"reddit\":{\"enabled\":false,\"icon\":\"reddit\",\"key\":\"\",\"secret\":\"\",\"state\":true,\"callback\":\"api/auth/reddit/callback\",\"scope\":[\"identity\"]},\"auth0\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my-tenant.eu\",\"callback\":\"api/auth/auth0/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]},\"cas\":{\"enabled\":false,\"icon\":\"book\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/cas/callback\",\"scope\":[\"openid email\"],\"subdomain\":\"my.subdomain.com/cas\"}}','object',NULL,NULL),(19,'plugin_users-permissions_email','{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}','object',NULL,NULL),(20,'plugin_users-permissions_advanced','{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}','object',NULL,NULL),(21,'core_admin_auth','{\"providers\":{\"autoRegister\":false,\"defaultRole\":null}}','object',NULL,NULL),(22,'plugin_content_manager_configuration_content_types::api::general.general','{\"uid\":\"api::general.general\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"logo\":{\"edit\":{\"label\":\"logo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"logo\",\"searchable\":false,\"sortable\":false}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"address\":{\"edit\":{\"label\":\"address\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"address\",\"searchable\":true,\"sortable\":true}},\"url_map\":{\"edit\":{\"label\":\"url_map\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"url_map\",\"searchable\":true,\"sortable\":true}},\"phone\":{\"edit\":{\"label\":\"phone\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"phone\",\"searchable\":true,\"sortable\":true}},\"facebook_id\":{\"edit\":{\"label\":\"facebook_id\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"facebook_id\",\"searchable\":true,\"sortable\":true}},\"pixel_facebook\":{\"edit\":{\"label\":\"pixel_facebook\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"pixel_facebook\",\"searchable\":true,\"sortable\":true}},\"tag_manager\":{\"edit\":{\"label\":\"tag_manager\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"tag_manager\",\"searchable\":true,\"sortable\":true}},\"cellphone\":{\"edit\":{\"label\":\"cellphone\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"cellphone\",\"searchable\":true,\"sortable\":true}},\"message_getbuton\":{\"edit\":{\"label\":\"message_getbuton\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"message_getbuton\",\"searchable\":true,\"sortable\":true}},\"menu\":{\"edit\":{\"label\":\"menu\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"menu\",\"searchable\":false,\"sortable\":false}},\"socials_networks\":{\"edit\":{\"label\":\"socials_networks\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"socials_networks\",\"searchable\":false,\"sortable\":false}},\"lbl_solar_energy\":{\"edit\":{\"label\":\"lbl_solar_energy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lbl_solar_energy\",\"searchable\":true,\"sortable\":true}},\"lbl_contact_us\":{\"edit\":{\"label\":\"lbl_contact_us\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lbl_contact_us\",\"searchable\":true,\"sortable\":true}},\"lbl_see_service\":{\"edit\":{\"label\":\"lbl_see_service\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lbl_see_service\",\"searchable\":true,\"sortable\":true}},\"lbl_read_more\":{\"edit\":{\"label\":\"lbl_read_more\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lbl_read_more\",\"searchable\":true,\"sortable\":true}},\"schedule\":{\"edit\":{\"label\":\"schedule\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"schedule\",\"searchable\":true,\"sortable\":true}},\"lbl_get_estimate\":{\"edit\":{\"label\":\"lbl_get_estimate\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lbl_get_estimate\",\"searchable\":true,\"sortable\":true}},\"footer_titles\":{\"edit\":{\"label\":\"footer_titles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"footer_titles\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"logo\",\"createdAt\",\"updatedAt\"],\"edit\":[[{\"name\":\"logo\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"address\",\"size\":6},{\"name\":\"url_map\",\"size\":6}],[{\"name\":\"phone\",\"size\":6},{\"name\":\"facebook_id\",\"size\":6}],[{\"name\":\"pixel_facebook\",\"size\":6},{\"name\":\"tag_manager\",\"size\":6}],[{\"name\":\"cellphone\",\"size\":6},{\"name\":\"message_getbuton\",\"size\":6}],[{\"name\":\"menu\",\"size\":12}],[{\"name\":\"socials_networks\",\"size\":12}],[{\"name\":\"lbl_solar_energy\",\"size\":6},{\"name\":\"lbl_contact_us\",\"size\":6}],[{\"name\":\"lbl_see_service\",\"size\":6},{\"name\":\"lbl_read_more\",\"size\":6}],[{\"name\":\"schedule\",\"size\":6},{\"name\":\"lbl_get_estimate\",\"size\":6}],[{\"name\":\"footer_titles\",\"size\":12}]]}}','object',NULL,NULL),(24,'plugin_content_manager_configuration_components::home.about-home','{\"uid\":\"home.about-home\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"img\":{\"edit\":{\"label\":\"img\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"img\",\"searchable\":false,\"sortable\":false}},\"img_mob\":{\"edit\":{\"label\":\"img_mob\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"img_mob\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"subtitle\":{\"edit\":{\"label\":\"subtitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subtitle\",\"searchable\":true,\"sortable\":true}},\"content\":{\"edit\":{\"label\":\"content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"content\",\"searchable\":false,\"sortable\":false}},\"card\":{\"edit\":{\"label\":\"card\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"card\",\"searchable\":false,\"sortable\":false}},\"img_two\":{\"edit\":{\"label\":\"img_two\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"img_two\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"img\",\"img_mob\",\"title\"],\"edit\":[[{\"name\":\"img\",\"size\":6},{\"name\":\"img_mob\",\"size\":6}],[{\"name\":\"title\",\"size\":6},{\"name\":\"subtitle\",\"size\":6}],[{\"name\":\"content\",\"size\":12}],[{\"name\":\"card\",\"size\":12}],[{\"name\":\"img_two\",\"size\":6}]]},\"isComponent\":true}','object',NULL,NULL),(25,'plugin_content_manager_configuration_components::home.banner','{\"uid\":\"home.banner\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"bg\":{\"edit\":{\"label\":\"bg\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"bg\",\"searchable\":false,\"sortable\":false}},\"bg_mob\":{\"edit\":{\"label\":\"bg_mob\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"bg_mob\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"content\":{\"edit\":{\"label\":\"content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"content\",\"searchable\":true,\"sortable\":true}},\"subtitle\":{\"edit\":{\"label\":\"subtitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subtitle\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"bg\",\"bg_mob\",\"title\"],\"edit\":[[{\"name\":\"bg\",\"size\":6},{\"name\":\"bg_mob\",\"size\":6}],[{\"name\":\"title\",\"size\":6},{\"name\":\"content\",\"size\":6}],[{\"name\":\"subtitle\",\"size\":6}]]},\"isComponent\":true}','object',NULL,NULL),(26,'plugin_content_manager_configuration_components::home.characteristic','{\"uid\":\"home.characteristic\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"Subtitle\":{\"edit\":{\"label\":\"Subtitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Subtitle\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"Subtitle\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"Subtitle\",\"size\":6}]]},\"isComponent\":true}','object',NULL,NULL),(27,'plugin_content_manager_configuration_components::home.characteristic-list','{\"uid\":\"home.characteristic-list\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"icon\":{\"edit\":{\"label\":\"icon\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"icon\",\"searchable\":false,\"sortable\":false}},\"content\":{\"edit\":{\"label\":\"content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"content\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"icon\",\"content\"],\"edit\":[[{\"name\":\"icon\",\"size\":6},{\"name\":\"content\",\"size\":6}]]},\"isComponent\":true}','object',NULL,NULL),(29,'plugin_content_manager_configuration_components::home.banner-middle','{\"uid\":\"home.banner-middle\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"content\":{\"edit\":{\"label\":\"content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"content\",\"searchable\":false,\"sortable\":false}},\"bg\":{\"edit\":{\"label\":\"bg\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"bg\",\"searchable\":false,\"sortable\":false}},\"bg_img\":{\"edit\":{\"label\":\"bg_img\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"bg_img\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"bg\",\"bg_img\"],\"edit\":[[{\"name\":\"content\",\"size\":12}],[{\"name\":\"bg\",\"size\":6},{\"name\":\"bg_img\",\"size\":6}]]},\"isComponent\":true}','object',NULL,NULL),(31,'plugin_content_manager_configuration_components::home.gallery','{\"uid\":\"home.gallery\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"img\":{\"edit\":{\"label\":\"img\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"img\",\"searchable\":false,\"sortable\":false}},\"img_zoom\":{\"edit\":{\"label\":\"img_zoom\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"img_zoom\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"img\",\"img_zoom\"],\"edit\":[[{\"name\":\"img\",\"size\":6},{\"name\":\"img_zoom\",\"size\":6}]]},\"isComponent\":true}','object',NULL,NULL),(32,'plugin_content_manager_configuration_components::singles.about-card','{\"uid\":\"singles.about-card\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"icon\":{\"edit\":{\"label\":\"icon\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"icon\",\"searchable\":false,\"sortable\":false}},\"content\":{\"edit\":{\"label\":\"content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"content\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"icon\",\"content\"],\"edit\":[[{\"name\":\"icon\",\"size\":6},{\"name\":\"content\",\"size\":6}]]},\"isComponent\":true}','object',NULL,NULL),(34,'plugin_content_manager_configuration_components::home.home-projects','{\"uid\":\"home.home-projects\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"subtitle\":{\"edit\":{\"label\":\"subtitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subtitle\",\"searchable\":true,\"sortable\":true}},\"content\":{\"edit\":{\"label\":\"content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"content\",\"searchable\":true,\"sortable\":true}},\"items\":{\"edit\":{\"label\":\"items\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"items\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"title\",\"subtitle\",\"content\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"subtitle\",\"size\":6}],[{\"name\":\"content\",\"size\":6}],[{\"name\":\"items\",\"size\":12}]]},\"isComponent\":true}','object',NULL,NULL),(35,'plugin_content_manager_configuration_components::home.home-reviews','{\"uid\":\"home.home-reviews\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"subtitle\":{\"edit\":{\"label\":\"subtitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subtitle\",\"searchable\":true,\"sortable\":true}},\"card\":{\"edit\":{\"label\":\"card\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"card\",\"searchable\":false,\"sortable\":false}},\"bg\":{\"edit\":{\"label\":\"bg\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"bg\",\"searchable\":false,\"sortable\":false}},\"bg_mob\":{\"edit\":{\"label\":\"bg_mob\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"bg_mob\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"title\",\"subtitle\",\"card\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"subtitle\",\"size\":6}],[{\"name\":\"card\",\"size\":12}],[{\"name\":\"bg\",\"size\":6},{\"name\":\"bg_mob\",\"size\":6}]]},\"isComponent\":true}','object',NULL,NULL),(36,'plugin_content_manager_configuration_components::home.service-area','{\"uid\":\"home.service-area\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"bg\":{\"edit\":{\"label\":\"bg\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"bg\",\"searchable\":false,\"sortable\":false}},\"bg_mob\":{\"edit\":{\"label\":\"bg_mob\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"bg_mob\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"list\":{\"edit\":{\"label\":\"list\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"list\",\"searchable\":false,\"sortable\":false}},\"map\":{\"edit\":{\"label\":\"map\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"map\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"bg\",\"bg_mob\",\"title\"],\"edit\":[[{\"name\":\"bg\",\"size\":6},{\"name\":\"bg_mob\",\"size\":6}],[{\"name\":\"title\",\"size\":6}],[{\"name\":\"list\",\"size\":12}],[{\"name\":\"map\",\"size\":12}]]},\"isComponent\":true}','object',NULL,NULL),(37,'plugin_content_manager_configuration_components::home.service-home','{\"uid\":\"home.service-home\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"subtitle\":{\"edit\":{\"label\":\"subtitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subtitle\",\"searchable\":true,\"sortable\":true}},\"content\":{\"edit\":{\"label\":\"content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"content\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"subtitle\",\"content\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"subtitle\",\"size\":6}],[{\"name\":\"content\",\"size\":6}]]},\"isComponent\":true}','object',NULL,NULL),(38,'plugin_content_manager_configuration_components::shared.meta-social','{\"uid\":\"shared.meta-social\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"socialNetwork\":{\"edit\":{\"label\":\"socialNetwork\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"socialNetwork\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"socialNetwork\",\"title\",\"description\"],\"edit\":[[{\"name\":\"socialNetwork\",\"size\":6},{\"name\":\"title\",\"size\":6}],[{\"name\":\"description\",\"size\":6},{\"name\":\"image\",\"size\":6}]]},\"isComponent\":true}','object',NULL,NULL),(39,'plugin_content_manager_configuration_components::home.home-careers','{\"uid\":\"home.home-careers\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"subtitle\":{\"edit\":{\"label\":\"subtitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subtitle\",\"searchable\":true,\"sortable\":true}},\"content\":{\"edit\":{\"label\":\"content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"content\",\"searchable\":true,\"sortable\":true}},\"list\":{\"edit\":{\"label\":\"list\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"list\",\"searchable\":false,\"sortable\":false}},\"img\":{\"edit\":{\"label\":\"img\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"img\",\"searchable\":false,\"sortable\":false}},\"img_two\":{\"edit\":{\"label\":\"img_two\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"img_two\",\"searchable\":false,\"sortable\":false}},\"img_mob\":{\"edit\":{\"label\":\"img_mob\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"img_mob\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"title\",\"subtitle\",\"content\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"subtitle\",\"size\":6}],[{\"name\":\"content\",\"size\":6}],[{\"name\":\"list\",\"size\":12}],[{\"name\":\"img\",\"size\":6},{\"name\":\"img_two\",\"size\":6}],[{\"name\":\"img_mob\",\"size\":6}]]},\"isComponent\":true}','object',NULL,NULL),(40,'plugin_content_manager_configuration_components::home.last-banner','{\"uid\":\"home.last-banner\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"content\":{\"edit\":{\"label\":\"content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"content\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"content\"],\"edit\":[[{\"name\":\"content\",\"size\":6}]]},\"isComponent\":true}','object',NULL,NULL),(41,'plugin_content_manager_configuration_components::singles.input-form','{\"uid\":\"singles.input-form\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"placeholder\":{\"edit\":{\"label\":\"placeholder\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"placeholder\",\"searchable\":true,\"sortable\":true}},\"label\":{\"edit\":{\"label\":\"label\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"label\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"placeholder\",\"label\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"placeholder\",\"size\":6}],[{\"name\":\"label\",\"size\":6}]]},\"isComponent\":true}','object',NULL,NULL),(42,'plugin_content_manager_configuration_components::singles.about-slider','{\"uid\":\"singles.about-slider\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"icon\":{\"edit\":{\"label\":\"icon\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"icon\",\"searchable\":false,\"sortable\":false}},\"img\":{\"edit\":{\"label\":\"img\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"img\",\"searchable\":false,\"sortable\":false}},\"content\":{\"edit\":{\"label\":\"content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"content\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"icon\",\"img\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"icon\",\"size\":6}],[{\"name\":\"img\",\"size\":6},{\"name\":\"content\",\"size\":6}]]},\"isComponent\":true}','object',NULL,NULL),(43,'plugin_content_manager_configuration_components::shared.seo','{\"uid\":\"shared.seo\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"metaTitle\",\"defaultSortBy\":\"metaTitle\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"metaTitle\":{\"edit\":{\"label\":\"metaTitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"metaTitle\",\"searchable\":true,\"sortable\":true}},\"metaDescription\":{\"edit\":{\"label\":\"metaDescription\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"metaDescription\",\"searchable\":true,\"sortable\":true}},\"metaImage\":{\"edit\":{\"label\":\"metaImage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"metaImage\",\"searchable\":false,\"sortable\":false}},\"metaSocial\":{\"edit\":{\"label\":\"metaSocial\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"metaSocial\",\"searchable\":false,\"sortable\":false}},\"keywords\":{\"edit\":{\"label\":\"keywords\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"keywords\",\"searchable\":true,\"sortable\":true}},\"metaRobots\":{\"edit\":{\"label\":\"metaRobots\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"metaRobots\",\"searchable\":true,\"sortable\":true}},\"structuredData\":{\"edit\":{\"label\":\"structuredData\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"structuredData\",\"searchable\":false,\"sortable\":false}},\"metaViewport\":{\"edit\":{\"label\":\"metaViewport\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"metaViewport\",\"searchable\":true,\"sortable\":true}},\"canonicalURL\":{\"edit\":{\"label\":\"canonicalURL\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"canonicalURL\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"metaTitle\",\"metaDescription\",\"metaImage\"],\"edit\":[[{\"name\":\"metaTitle\",\"size\":6},{\"name\":\"metaDescription\",\"size\":6}],[{\"name\":\"metaImage\",\"size\":6}],[{\"name\":\"metaSocial\",\"size\":12}],[{\"name\":\"keywords\",\"size\":6},{\"name\":\"metaRobots\",\"size\":6}],[{\"name\":\"structuredData\",\"size\":12}],[{\"name\":\"metaViewport\",\"size\":6},{\"name\":\"canonicalURL\",\"size\":6}]]},\"isComponent\":true}','object',NULL,NULL),(44,'plugin_content_manager_configuration_components::singles.banner','{\"uid\":\"singles.banner\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"subtitle\",\"defaultSortBy\":\"subtitle\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"bg\":{\"edit\":{\"label\":\"bg\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"bg\",\"searchable\":false,\"sortable\":false}},\"bg_mob\":{\"edit\":{\"label\":\"bg_mob\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"bg_mob\",\"searchable\":false,\"sortable\":false}},\"subtitle\":{\"edit\":{\"label\":\"subtitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subtitle\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"bg\",\"bg_mob\",\"subtitle\"],\"edit\":[[{\"name\":\"bg\",\"size\":6},{\"name\":\"bg_mob\",\"size\":6}],[{\"name\":\"subtitle\",\"size\":6},{\"name\":\"title\",\"size\":6}]]},\"isComponent\":true}','object',NULL,NULL),(45,'plugin_content_manager_configuration_components::singles.messages','{\"uid\":\"singles.messages\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"mail_sent_ok\",\"defaultSortBy\":\"mail_sent_ok\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"mail_sent_ok\":{\"edit\":{\"label\":\"mail_sent_ok\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"mail_sent_ok\",\"searchable\":true,\"sortable\":true}},\"mail_sent_ng\":{\"edit\":{\"label\":\"mail_sent_ng\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"mail_sent_ng\",\"searchable\":true,\"sortable\":true}},\"validation_error\":{\"edit\":{\"label\":\"validation_error\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"validation_error\",\"searchable\":true,\"sortable\":true}},\"spam\":{\"edit\":{\"label\":\"spam\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"spam\",\"searchable\":true,\"sortable\":true}},\"accept_terms\":{\"edit\":{\"label\":\"accept_terms\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accept_terms\",\"searchable\":true,\"sortable\":true}},\"invalid_required\":{\"edit\":{\"label\":\"invalid_required\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"invalid_required\",\"searchable\":true,\"sortable\":true}},\"invalid_too_long\":{\"edit\":{\"label\":\"invalid_too_long\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"invalid_too_long\",\"searchable\":true,\"sortable\":true}},\"invalid_too_short\":{\"edit\":{\"label\":\"invalid_too_short\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"invalid_too_short\",\"searchable\":true,\"sortable\":true}},\"upload_failed\":{\"edit\":{\"label\":\"upload_failed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"upload_failed\",\"searchable\":true,\"sortable\":true}},\"upload_file_type_invalid\":{\"edit\":{\"label\":\"upload_file_type_invalid\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"upload_file_type_invalid\",\"searchable\":true,\"sortable\":true}},\"upload_file_too_large\":{\"edit\":{\"label\":\"upload_file_too_large\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"upload_file_too_large\",\"searchable\":true,\"sortable\":true}},\"upload_failed_php_error\":{\"edit\":{\"label\":\"upload_failed_php_error\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"upload_failed_php_error\",\"searchable\":true,\"sortable\":true}},\"invalid_date\":{\"edit\":{\"label\":\"invalid_date\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"invalid_date\",\"searchable\":true,\"sortable\":true}},\"date_too_early\":{\"edit\":{\"label\":\"date_too_early\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"date_too_early\",\"searchable\":true,\"sortable\":true}},\"date_too_late\":{\"edit\":{\"label\":\"date_too_late\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"date_too_late\",\"searchable\":true,\"sortable\":true}},\"invalid_number\":{\"edit\":{\"label\":\"invalid_number\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"invalid_number\",\"searchable\":true,\"sortable\":true}},\"number_too_small\":{\"edit\":{\"label\":\"number_too_small\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"number_too_small\",\"searchable\":true,\"sortable\":true}},\"number_too_large\":{\"edit\":{\"label\":\"number_too_large\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"number_too_large\",\"searchable\":true,\"sortable\":true}},\"quiz_answer_not_correct\":{\"edit\":{\"label\":\"quiz_answer_not_correct\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"quiz_answer_not_correct\",\"searchable\":true,\"sortable\":true}},\"invalid_email\":{\"edit\":{\"label\":\"invalid_email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"invalid_email\",\"searchable\":true,\"sortable\":true}},\"invalid_url\":{\"edit\":{\"label\":\"invalid_url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"invalid_url\",\"searchable\":true,\"sortable\":true}},\"invalid_tel\":{\"edit\":{\"label\":\"invalid_tel\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"invalid_tel\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"mail_sent_ok\",\"mail_sent_ng\",\"validation_error\"],\"edit\":[[{\"name\":\"mail_sent_ok\",\"size\":6},{\"name\":\"mail_sent_ng\",\"size\":6}],[{\"name\":\"validation_error\",\"size\":6},{\"name\":\"spam\",\"size\":6}],[{\"name\":\"accept_terms\",\"size\":6},{\"name\":\"invalid_required\",\"size\":6}],[{\"name\":\"invalid_too_long\",\"size\":6},{\"name\":\"invalid_too_short\",\"size\":6}],[{\"name\":\"upload_failed\",\"size\":6},{\"name\":\"upload_file_type_invalid\",\"size\":6}],[{\"name\":\"upload_file_too_large\",\"size\":6},{\"name\":\"upload_failed_php_error\",\"size\":6}],[{\"name\":\"invalid_date\",\"size\":6},{\"name\":\"date_too_early\",\"size\":6}],[{\"name\":\"date_too_late\",\"size\":6},{\"name\":\"invalid_number\",\"size\":6}],[{\"name\":\"number_too_small\",\"size\":6},{\"name\":\"number_too_large\",\"size\":6}],[{\"name\":\"quiz_answer_not_correct\",\"size\":6},{\"name\":\"invalid_email\",\"size\":6}],[{\"name\":\"invalid_url\",\"size\":6},{\"name\":\"invalid_tel\",\"size\":6}]]},\"isComponent\":true}','object',NULL,NULL),(46,'plugin_content_manager_configuration_components::singles.careers-list','{\"uid\":\"singles.careers-list\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"item\",\"defaultSortBy\":\"item\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"item\":{\"edit\":{\"label\":\"item\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"item\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"item\"],\"edit\":[[{\"name\":\"item\",\"size\":6}]]},\"isComponent\":true}','object',NULL,NULL),(47,'plugin_content_manager_configuration_components::singles.form-information','{\"uid\":\"singles.form-information\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"subtitle\":{\"edit\":{\"label\":\"subtitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subtitle\",\"searchable\":true,\"sortable\":true}},\"content\":{\"edit\":{\"label\":\"content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"content\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"subtitle\",\"content\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"subtitle\",\"size\":6}],[{\"name\":\"content\",\"size\":6}]]},\"isComponent\":true}','object',NULL,NULL),(48,'plugin_content_manager_configuration_components::singles.form-prin','{\"uid\":\"singles.form-prin\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"type\",\"defaultSortBy\":\"type\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"icon\":{\"edit\":{\"label\":\"icon\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"icon\",\"searchable\":false,\"sortable\":false}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"value\":{\"edit\":{\"label\":\"value\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"value\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"icon\",\"type\",\"value\"],\"edit\":[[{\"name\":\"icon\",\"size\":6},{\"name\":\"type\",\"size\":6}],[{\"name\":\"value\",\"size\":6}]]},\"isComponent\":true}','object',NULL,NULL),(49,'plugin_content_manager_configuration_components::singles.home-careers-list','{\"uid\":\"singles.home-careers-list\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"icon\":{\"edit\":{\"label\":\"icon\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"icon\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"title\",\"icon\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"icon\",\"size\":6}]]},\"isComponent\":true}','object',NULL,NULL),(50,'plugin_content_manager_configuration_components::singles.menu','{\"uid\":\"singles.menu\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"label\",\"defaultSortBy\":\"label\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"label\":{\"edit\":{\"label\":\"label\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"label\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"url\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"label\",\"url\"],\"edit\":[[{\"name\":\"label\",\"size\":6},{\"name\":\"url\",\"size\":6}]]},\"isComponent\":true}','object',NULL,NULL),(51,'plugin_content_manager_configuration_components::singles.service-area-list','{\"uid\":\"singles.service-area-list\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"icon\":{\"edit\":{\"label\":\"icon\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"icon\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"content\":{\"edit\":{\"label\":\"content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"content\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"icon\",\"title\",\"content\"],\"edit\":[[{\"name\":\"icon\",\"size\":6},{\"name\":\"title\",\"size\":6}],[{\"name\":\"content\",\"size\":6}]]},\"isComponent\":true}','object',NULL,NULL),(52,'plugin_content_manager_configuration_components::singles.service-list','{\"uid\":\"singles.service-list\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"content\":{\"edit\":{\"label\":\"content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"content\",\"searchable\":true,\"sortable\":true}},\"slug\":{\"edit\":{\"label\":\"slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"slug\",\"searchable\":true,\"sortable\":true}},\"icon\":{\"edit\":{\"label\":\"icon\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"icon\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"icon\",\"title\",\"content\"],\"edit\":[[{\"name\":\"icon\",\"size\":6},{\"name\":\"title\",\"size\":6}],[{\"name\":\"content\",\"size\":6}],[{\"name\":\"slug\",\"size\":6},{\"name\":\"image\",\"size\":6}]]},\"isComponent\":true}','object',NULL,NULL),(53,'plugin_content_manager_configuration_components::singles.social-networks','{\"uid\":\"singles.social-networks\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"url\",\"defaultSortBy\":\"url\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"url\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"type\",\"url\"],\"edit\":[[{\"name\":\"type\",\"size\":6},{\"name\":\"url\",\"size\":6}]]},\"isComponent\":true}','object',NULL,NULL),(54,'plugin_content_manager_configuration_components::singles.submit-form','{\"uid\":\"singles.submit-form\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"url\",\"defaultSortBy\":\"url\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"url\":{\"edit\":{\"label\":\"url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"url\",\"searchable\":true,\"sortable\":true}},\"label\":{\"edit\":{\"label\":\"label\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"label\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"url\",\"label\"],\"edit\":[[{\"name\":\"url\",\"size\":6},{\"name\":\"label\",\"size\":6}]]},\"isComponent\":true}','object',NULL,NULL),(61,'plugin_content_manager_configuration_content_types::api::form.form','{\"uid\":\"api::form.form\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"messages\":{\"edit\":{\"label\":\"messages\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"messages\",\"searchable\":false,\"sortable\":false}},\"submit\":{\"edit\":{\"label\":\"submit\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"submit\",\"searchable\":false,\"sortable\":false}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":false,\"sortable\":false}},\"phone\":{\"edit\":{\"label\":\"phone\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"phone\",\"searchable\":false,\"sortable\":false}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":false,\"sortable\":false}},\"service\":{\"edit\":{\"label\":\"service\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"service\",\"searchable\":false,\"sortable\":false}},\"message\":{\"edit\":{\"label\":\"message\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"message\",\"searchable\":false,\"sortable\":false}},\"info\":{\"edit\":{\"label\":\"info\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"info\",\"searchable\":false,\"sortable\":false}},\"seo\":{\"edit\":{\"label\":\"seo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"seo\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"messages\",\"submit\",\"name\"],\"edit\":[[{\"name\":\"messages\",\"size\":12}],[{\"name\":\"submit\",\"size\":12}],[{\"name\":\"name\",\"size\":12}],[{\"name\":\"phone\",\"size\":12}],[{\"name\":\"email\",\"size\":12}],[{\"name\":\"service\",\"size\":12}],[{\"name\":\"message\",\"size\":12}],[{\"name\":\"info\",\"size\":12}],[{\"name\":\"seo\",\"size\":12}]]}}','object',NULL,NULL),(62,'plugin_content_manager_configuration_content_types::api::home.home','{\"uid\":\"api::home.home\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"banner_prin\":{\"edit\":{\"label\":\"banner_prin\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"banner_prin\",\"searchable\":false,\"sortable\":false}},\"services\":{\"edit\":{\"label\":\"services\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"services\",\"searchable\":false,\"sortable\":false}},\"service_list\":{\"edit\":{\"label\":\"service_list\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"service_list\",\"searchable\":false,\"sortable\":false}},\"characteristics\":{\"edit\":{\"label\":\"characteristics\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"characteristics\",\"searchable\":false,\"sortable\":false}},\"about\":{\"edit\":{\"label\":\"about\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"about\",\"searchable\":false,\"sortable\":false}},\"review\":{\"edit\":{\"label\":\"review\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"review\",\"searchable\":false,\"sortable\":false}},\"gallery\":{\"edit\":{\"label\":\"gallery\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"gallery\",\"searchable\":false,\"sortable\":false}},\"how_we_work\":{\"edit\":{\"label\":\"how_we_work\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"how_we_work\",\"searchable\":false,\"sortable\":false}},\"seo\":{\"edit\":{\"label\":\"seo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"seo\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"banner_prin\",\"service_list\",\"services\"],\"edit\":[[{\"name\":\"banner_prin\",\"size\":12}],[{\"name\":\"service_list\",\"size\":12}],[{\"name\":\"characteristics\",\"size\":12}],[{\"name\":\"about\",\"size\":12}],[{\"name\":\"review\",\"size\":12}],[{\"name\":\"services\",\"size\":12}],[{\"name\":\"how_we_work\",\"size\":12}],[{\"name\":\"gallery\",\"size\":12}],[{\"name\":\"seo\",\"size\":12}]]}}','object',NULL,NULL),(66,'plugin_content_manager_configuration_components::singles.footer-info','{\"uid\":\"singles.footer-info\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"lbl_address\",\"defaultSortBy\":\"lbl_address\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"lbl_address\":{\"edit\":{\"label\":\"lbl_address\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lbl_address\",\"searchable\":true,\"sortable\":true}},\"lbl_email\":{\"edit\":{\"label\":\"lbl_email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lbl_email\",\"searchable\":true,\"sortable\":true}},\"lbl_phone\":{\"edit\":{\"label\":\"lbl_phone\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lbl_phone\",\"searchable\":true,\"sortable\":true}},\"lbl_follow\":{\"edit\":{\"label\":\"lbl_follow\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lbl_follow\",\"searchable\":true,\"sortable\":true}},\"lbl_copyright\":{\"edit\":{\"label\":\"lbl_copyright\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lbl_copyright\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"lbl_address\",\"lbl_email\",\"lbl_phone\"],\"edit\":[[{\"name\":\"lbl_address\",\"size\":6},{\"name\":\"lbl_email\",\"size\":6}],[{\"name\":\"lbl_phone\",\"size\":6},{\"name\":\"lbl_follow\",\"size\":6}],[{\"name\":\"lbl_copyright\",\"size\":6}]]},\"isComponent\":true}','object',NULL,NULL),(67,'plugin_content_manager_configuration_components::singles.review-card','{\"uid\":\"singles.review-card\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"stars\":{\"edit\":{\"label\":\"stars\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"stars\",\"searchable\":false,\"sortable\":false}},\"content\":{\"edit\":{\"label\":\"content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"content\",\"searchable\":false,\"sortable\":false}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"avatar\":{\"edit\":{\"label\":\"avatar\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"avatar\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"stars\",\"name\",\"avatar\"],\"edit\":[[{\"name\":\"stars\",\"size\":6}],[{\"name\":\"content\",\"size\":12}],[{\"name\":\"name\",\"size\":6},{\"name\":\"avatar\",\"size\":6}]]},\"isComponent\":true}','object',NULL,NULL),(68,'plugin_content_manager_configuration_components::home.h-o-ww-ew-ork','{\"uid\":\"home.h-o-ww-ew-ork\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"subtitle\":{\"edit\":{\"label\":\"subtitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subtitle\",\"searchable\":true,\"sortable\":true}},\"card\":{\"edit\":{\"label\":\"card\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"card\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"title\",\"subtitle\",\"card\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"subtitle\",\"size\":6}],[{\"name\":\"card\",\"size\":12}]]},\"isComponent\":true}','object',NULL,NULL),(69,'plugin_content_manager_configuration_components::singles.contact-info','{\"uid\":\"singles.contact-info\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"subtitle\":{\"edit\":{\"label\":\"subtitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subtitle\",\"searchable\":true,\"sortable\":true}},\"content\":{\"edit\":{\"label\":\"content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"content\",\"searchable\":true,\"sortable\":true}},\"card\":{\"edit\":{\"label\":\"card\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"card\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"title\",\"subtitle\",\"content\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"subtitle\",\"size\":6}],[{\"name\":\"content\",\"size\":6}],[{\"name\":\"card\",\"size\":12}]]},\"isComponent\":true}','object',NULL,NULL);
/*!40000 ALTER TABLE `strapi_core_store_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_database_schema`
--

DROP TABLE IF EXISTS `strapi_database_schema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_database_schema` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `schema` json DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_database_schema`
--

LOCK TABLES `strapi_database_schema` WRITE;
/*!40000 ALTER TABLE `strapi_database_schema` DISABLE KEYS */;
INSERT INTO `strapi_database_schema` VALUES (27,'{\"tables\": [{\"name\": \"strapi_core_store_settings\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"key\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"value\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"environment\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"tag\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"strapi_webhooks\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"url\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"headers\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"events\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"enabled\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"admin_permissions\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"action\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"subject\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"properties\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"conditions\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"admin_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"admin_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"admin_users\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"firstname\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"lastname\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"username\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"email\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"password\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"reset_password_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"registration_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"is_active\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"blocked\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"prefered_language\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_users_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"admin_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"admin_users_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"admin_roles\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"code\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"admin_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"admin_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_api_tokens\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"access_key\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"last_used_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"expires_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"lifespan\", \"type\": \"bigInteger\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_api_tokens_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"strapi_api_tokens_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"strapi_api_tokens_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_api_tokens_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_api_token_permissions\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"action\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_api_token_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"strapi_api_token_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"strapi_api_token_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_api_token_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"files\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"alternative_text\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"caption\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"width\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"height\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"formats\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"hash\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"ext\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"mime\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [10, 2], \"name\": \"size\", \"type\": \"decimal\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"url\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"preview_url\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"provider\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"provider_metadata\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"folder_path\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"upload_files_folder_path_index\", \"type\": null, \"columns\": [\"folder_path\"]}, {\"name\": \"files_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"files_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"files_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"files_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"upload_folders\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"path_id\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"path\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"upload_folders_path_id_index\", \"type\": \"unique\", \"columns\": [\"path_id\"]}, {\"name\": \"upload_folders_path_index\", \"type\": \"unique\", \"columns\": [\"path\"]}, {\"name\": \"upload_folders_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"upload_folders_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"upload_folders_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"upload_folders_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"ezforms_submission\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"score\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"form_name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"data\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"ezforms_submission_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"ezforms_submission_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"ezforms_submission_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"ezforms_submission_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"ezforms_recipient\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"email\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"number\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"ezforms_recipient_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"ezforms_recipient_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"ezforms_recipient_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"ezforms_recipient_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"i18n_locale\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"code\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"i18n_locale_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"i18n_locale_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"i18n_locale_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"i18n_locale_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_permissions\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"action\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"up_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"up_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_roles\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"up_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"up_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_users\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"username\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"email\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"provider\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"password\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"reset_password_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"confirmation_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"confirmed\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"blocked\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_users_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"up_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"up_users_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"forms\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"forms_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"forms_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"forms_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"forms_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"generals\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"email\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"address\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"url_map\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"phone\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"facebook_id\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"pixel_facebook\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"tag_manager\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"cellphone\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"message_getbuton\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"lbl_solar_energy\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"lbl_contact_us\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"lbl_see_service\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"lbl_read_more\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"schedule\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"lbl_get_estimate\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"generals_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"generals_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"generals_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"generals_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"homes\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"homes_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"homes_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"homes_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"homes_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_home_about_homes\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"subtitle\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"content\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_home_banner_middles\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [\"longtext\"], \"name\": \"content\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_home_banners\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"content\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"subtitle\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_home_characteristic_lists\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [\"longtext\"], \"name\": \"content\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_home_characteristics\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"subtitle\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_home_galleries\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_home_h_o_ww_ew_orks\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"subtitle\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_home_home_careers\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"subtitle\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"content\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_home_home_projects\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"subtitle\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"content\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_home_home_reviews\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"subtitle\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_home_last_banners\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [\"longtext\"], \"name\": \"content\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_home_service_areas\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"map\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_home_service_homes\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"subtitle\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"content\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_shared_meta_socials\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"social_network\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_shared_seos\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"meta_title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"meta_description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"keywords\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"meta_robots\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"structured_data\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"meta_viewport\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"canonical_url\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_singles_about_cards\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [\"longtext\"], \"name\": \"content\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_singles_about_sliders\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"content\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_singles_banners\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"subtitle\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_singles_careers_lists\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"item\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_singles_contact_infos\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"subtitle\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"content\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_singles_footer_infos\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"lbl_address\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"lbl_email\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"lbl_phone\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"lbl_follow\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"lbl_copyright\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_singles_form_informations\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"subtitle\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"content\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_singles_form_prins\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"value\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_singles_home_careers_lists\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_singles_input_forms\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"placeholder\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"label\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_singles_menus\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"label\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"url\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_singles_messages\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"mail_sent_ok\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"mail_sent_ng\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"validation_error\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"spam\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"accept_terms\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"invalid_required\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"invalid_too_long\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"invalid_too_short\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"upload_failed\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"upload_file_type_invalid\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"upload_file_too_large\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"upload_failed_php_error\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"invalid_date\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"date_too_early\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"date_too_late\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"invalid_number\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"number_too_small\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"number_too_large\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"quiz_answer_not_correct\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"invalid_email\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"invalid_url\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"invalid_tel\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_singles_review_cards\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [\"longtext\"], \"name\": \"content\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_singles_service_area_lists\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"content\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_singles_service_lists\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"content\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"slug\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_singles_social_networks\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"url\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_singles_submit_forms\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"url\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"label\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"admin_permissions_role_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"permission_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"permission_order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_permissions_role_links_fk\", \"columns\": [\"permission_id\"]}, {\"name\": \"admin_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"]}, {\"name\": \"admin_permissions_role_links_unique\", \"type\": \"unique\", \"columns\": [\"permission_id\", \"role_id\"]}, {\"name\": \"admin_permissions_role_links_order_inv_fk\", \"columns\": [\"permission_order\"]}], \"foreignKeys\": [{\"name\": \"admin_permissions_role_links_fk\", \"columns\": [\"permission_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_permissions\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"admin_users_roles_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"user_order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_users_roles_links_fk\", \"columns\": [\"user_id\"]}, {\"name\": \"admin_users_roles_links_inv_fk\", \"columns\": [\"role_id\"]}, {\"name\": \"admin_users_roles_links_unique\", \"type\": \"unique\", \"columns\": [\"user_id\", \"role_id\"]}, {\"name\": \"admin_users_roles_links_order_fk\", \"columns\": [\"role_order\"]}, {\"name\": \"admin_users_roles_links_order_inv_fk\", \"columns\": [\"user_order\"]}], \"foreignKeys\": [{\"name\": \"admin_users_roles_links_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_users_roles_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_api_token_permissions_token_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"api_token_permission_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"api_token_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"api_token_permission_order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_api_token_permissions_token_links_fk\", \"columns\": [\"api_token_permission_id\"]}, {\"name\": \"strapi_api_token_permissions_token_links_inv_fk\", \"columns\": [\"api_token_id\"]}, {\"name\": \"strapi_api_token_permissions_token_links_unique\", \"type\": \"unique\", \"columns\": [\"api_token_permission_id\", \"api_token_id\"]}, {\"name\": \"strapi_api_token_permissions_token_links_order_inv_fk\", \"columns\": [\"api_token_permission_order\"]}], \"foreignKeys\": [{\"name\": \"strapi_api_token_permissions_token_links_fk\", \"columns\": [\"api_token_permission_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"strapi_api_token_permissions\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_api_token_permissions_token_links_inv_fk\", \"columns\": [\"api_token_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"strapi_api_tokens\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"files_related_morphs\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"file_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"related_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"related_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"files_related_morphs_fk\", \"columns\": [\"file_id\"]}], \"foreignKeys\": [{\"name\": \"files_related_morphs_fk\", \"columns\": [\"file_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"files\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"files_folder_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"file_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"folder_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"file_order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"files_folder_links_fk\", \"columns\": [\"file_id\"]}, {\"name\": \"files_folder_links_inv_fk\", \"columns\": [\"folder_id\"]}, {\"name\": \"files_folder_links_unique\", \"type\": \"unique\", \"columns\": [\"file_id\", \"folder_id\"]}, {\"name\": \"files_folder_links_order_inv_fk\", \"columns\": [\"file_order\"]}], \"foreignKeys\": [{\"name\": \"files_folder_links_fk\", \"columns\": [\"file_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"files\", \"referencedColumns\": [\"id\"]}, {\"name\": \"files_folder_links_inv_fk\", \"columns\": [\"folder_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"upload_folders\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"upload_folders_parent_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"folder_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"inv_folder_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"folder_order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"upload_folders_parent_links_fk\", \"columns\": [\"folder_id\"]}, {\"name\": \"upload_folders_parent_links_inv_fk\", \"columns\": [\"inv_folder_id\"]}, {\"name\": \"upload_folders_parent_links_unique\", \"type\": \"unique\", \"columns\": [\"folder_id\", \"inv_folder_id\"]}, {\"name\": \"upload_folders_parent_links_order_inv_fk\", \"columns\": [\"folder_order\"]}], \"foreignKeys\": [{\"name\": \"upload_folders_parent_links_fk\", \"columns\": [\"folder_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"upload_folders\", \"referencedColumns\": [\"id\"]}, {\"name\": \"upload_folders_parent_links_inv_fk\", \"columns\": [\"inv_folder_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"upload_folders\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_permissions_role_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"permission_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"permission_order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_permissions_role_links_fk\", \"columns\": [\"permission_id\"]}, {\"name\": \"up_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"]}, {\"name\": \"up_permissions_role_links_unique\", \"type\": \"unique\", \"columns\": [\"permission_id\", \"role_id\"]}, {\"name\": \"up_permissions_role_links_order_inv_fk\", \"columns\": [\"permission_order\"]}], \"foreignKeys\": [{\"name\": \"up_permissions_role_links_fk\", \"columns\": [\"permission_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_permissions\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_users_role_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"user_order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_users_role_links_fk\", \"columns\": [\"user_id\"]}, {\"name\": \"up_users_role_links_inv_fk\", \"columns\": [\"role_id\"]}, {\"name\": \"up_users_role_links_unique\", \"type\": \"unique\", \"columns\": [\"user_id\", \"role_id\"]}, {\"name\": \"up_users_role_links_order_inv_fk\", \"columns\": [\"user_order\"]}], \"foreignKeys\": [{\"name\": \"up_users_role_links_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_users_role_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"forms_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"forms_field_index\", \"type\": null, \"columns\": [\"field\"]}, {\"name\": \"forms_component_type_index\", \"type\": null, \"columns\": [\"component_type\"]}, {\"name\": \"forms_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"forms_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"forms_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"forms\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"generals_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"generals_field_index\", \"type\": null, \"columns\": [\"field\"]}, {\"name\": \"generals_component_type_index\", \"type\": null, \"columns\": [\"component_type\"]}, {\"name\": \"generals_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"generals_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"generals_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"generals\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"homes_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"homes_field_index\", \"type\": null, \"columns\": [\"field\"]}, {\"name\": \"homes_component_type_index\", \"type\": null, \"columns\": [\"component_type\"]}, {\"name\": \"homes_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"homes_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"homes_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"homes\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_home_about_homes_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"components_home_about_homes_field_index\", \"type\": null, \"columns\": [\"field\"]}, {\"name\": \"components_home_about_homes_component_type_index\", \"type\": null, \"columns\": [\"component_type\"]}, {\"name\": \"components_home_about_homes_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"components_home_about_homes_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"components_home_about_homes_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"components_home_about_homes\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_home_h_o_ww_ew_orks_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"components_home_h_o_ww_ew_orks_field_index\", \"type\": null, \"columns\": [\"field\"]}, {\"name\": \"components_home_h_o_ww_ew_orks_component_type_index\", \"type\": null, \"columns\": [\"component_type\"]}, {\"name\": \"components_home_h_o_ww_ew_orks_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"components_home_h_o_ww_ew_orks_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"components_home_h_o_ww_ew_orks_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"components_home_h_o_ww_ew_orks\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_home_home_careers_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"components_home_home_careers_field_index\", \"type\": null, \"columns\": [\"field\"]}, {\"name\": \"components_home_home_careers_component_type_index\", \"type\": null, \"columns\": [\"component_type\"]}, {\"name\": \"components_home_home_careers_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"components_home_home_careers_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"components_home_home_careers_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"components_home_home_careers\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_home_home_projects_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"components_home_home_projects_field_index\", \"type\": null, \"columns\": [\"field\"]}, {\"name\": \"components_home_home_projects_component_type_index\", \"type\": null, \"columns\": [\"component_type\"]}, {\"name\": \"components_home_home_projects_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"components_home_home_projects_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"components_home_home_projects_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"components_home_home_projects\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_home_home_reviews_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"components_home_home_reviews_field_index\", \"type\": null, \"columns\": [\"field\"]}, {\"name\": \"components_home_home_reviews_component_type_index\", \"type\": null, \"columns\": [\"component_type\"]}, {\"name\": \"components_home_home_reviews_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"components_home_home_reviews_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"components_home_home_reviews_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"components_home_home_reviews\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_home_service_areas_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"components_home_service_areas_field_index\", \"type\": null, \"columns\": [\"field\"]}, {\"name\": \"components_home_service_areas_component_type_index\", \"type\": null, \"columns\": [\"component_type\"]}, {\"name\": \"components_home_service_areas_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"components_home_service_areas_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"components_home_service_areas_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"components_home_service_areas\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_shared_seos_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"components_shared_seos_field_index\", \"type\": null, \"columns\": [\"field\"]}, {\"name\": \"components_shared_seos_component_type_index\", \"type\": null, \"columns\": [\"component_type\"]}, {\"name\": \"components_shared_seos_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"components_shared_seos_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"components_shared_seos_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"components_shared_seos\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_singles_contact_infos_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"components_singles_contact_infos_field_index\", \"type\": null, \"columns\": [\"field\"]}, {\"name\": \"components_singles_contact_infos_component_type_index\", \"type\": null, \"columns\": [\"component_type\"]}, {\"name\": \"components_singles_contact_infos_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"components_singles_contact_infos_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"components_singles_contact_infos_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"components_singles_contact_infos\", \"referencedColumns\": [\"id\"]}]}]}','2022-12-12 18:10:12','ee40baf54eb3b713cd0096349e89153d');
/*!40000 ALTER TABLE `strapi_database_schema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_migrations`
--

DROP TABLE IF EXISTS `strapi_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_migrations`
--

LOCK TABLES `strapi_migrations` WRITE;
/*!40000 ALTER TABLE `strapi_migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_webhooks`
--

DROP TABLE IF EXISTS `strapi_webhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_webhooks` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext,
  `headers` json DEFAULT NULL,
  `events` json DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_webhooks`
--

LOCK TABLES `strapi_webhooks` WRITE;
/*!40000 ALTER TABLE `strapi_webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_webhooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `up_permissions`
--

DROP TABLE IF EXISTS `up_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `up_permissions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `up_permissions_created_by_id_fk` (`created_by_id`),
  KEY `up_permissions_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `up_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `up_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `up_permissions`
--

LOCK TABLES `up_permissions` WRITE;
/*!40000 ALTER TABLE `up_permissions` DISABLE KEYS */;
INSERT INTO `up_permissions` VALUES (1,'plugin::users-permissions.user.me','2022-12-08 11:08:48.306000','2022-12-08 11:08:48.306000',NULL,NULL),(2,'plugin::users-permissions.auth.changePassword','2022-12-08 11:08:48.306000','2022-12-08 11:08:48.306000',NULL,NULL),(3,'plugin::users-permissions.auth.callback','2022-12-08 11:08:48.317000','2022-12-08 11:08:48.317000',NULL,NULL),(4,'plugin::users-permissions.auth.connect','2022-12-08 11:08:48.317000','2022-12-08 11:08:48.317000',NULL,NULL),(5,'plugin::users-permissions.auth.forgotPassword','2022-12-08 11:08:48.317000','2022-12-08 11:08:48.317000',NULL,NULL),(6,'plugin::users-permissions.auth.resetPassword','2022-12-08 11:08:48.317000','2022-12-08 11:08:48.317000',NULL,NULL),(7,'plugin::users-permissions.auth.register','2022-12-08 11:08:48.317000','2022-12-08 11:08:48.317000',NULL,NULL),(8,'plugin::users-permissions.auth.emailConfirmation','2022-12-08 11:08:48.317000','2022-12-08 11:08:48.317000',NULL,NULL),(9,'plugin::users-permissions.auth.sendEmailConfirmation','2022-12-08 11:08:48.317000','2022-12-08 11:08:48.317000',NULL,NULL),(10,'plugin::ezforms.submitController.index','2022-12-08 13:55:09.261000','2022-12-08 13:55:09.261000',NULL,NULL),(11,'api::general.general.find','2022-12-08 17:31:08.662000','2022-12-08 17:31:08.662000',NULL,NULL),(12,'api::home.home.find','2022-12-09 09:28:50.399000','2022-12-09 09:28:50.399000',NULL,NULL),(13,'api::form.form.find','2022-12-10 09:54:47.630000','2022-12-10 09:54:47.630000',NULL,NULL);
/*!40000 ALTER TABLE `up_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `up_permissions_role_links`
--

DROP TABLE IF EXISTS `up_permissions_role_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `up_permissions_role_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `permission_id` int unsigned DEFAULT NULL,
  `role_id` int unsigned DEFAULT NULL,
  `permission_order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `up_permissions_role_links_unique` (`permission_id`,`role_id`),
  KEY `up_permissions_role_links_fk` (`permission_id`),
  KEY `up_permissions_role_links_inv_fk` (`role_id`),
  KEY `up_permissions_role_links_order_inv_fk` (`permission_order`),
  CONSTRAINT `up_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `up_permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `up_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `up_permissions_role_links`
--

LOCK TABLES `up_permissions_role_links` WRITE;
/*!40000 ALTER TABLE `up_permissions_role_links` DISABLE KEYS */;
INSERT INTO `up_permissions_role_links` VALUES (1,1,1,1),(2,2,1,1),(3,3,2,1),(4,4,2,1),(5,5,2,1),(6,6,2,1),(7,7,2,1),(8,8,2,1),(9,9,2,1),(10,10,2,2),(11,11,2,3),(12,12,2,4),(13,13,2,5);
/*!40000 ALTER TABLE `up_permissions_role_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `up_roles`
--

DROP TABLE IF EXISTS `up_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `up_roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `up_roles_created_by_id_fk` (`created_by_id`),
  KEY `up_roles_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `up_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `up_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `up_roles`
--

LOCK TABLES `up_roles` WRITE;
/*!40000 ALTER TABLE `up_roles` DISABLE KEYS */;
INSERT INTO `up_roles` VALUES (1,'Authenticated','Default role given to authenticated user.','authenticated','2022-12-08 11:08:48.287000','2022-12-08 11:08:48.287000',NULL,NULL),(2,'Public','Default role given to unauthenticated user.','public','2022-12-08 11:08:48.294000','2022-12-10 09:54:47.615000',NULL,NULL);
/*!40000 ALTER TABLE `up_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `up_users`
--

DROP TABLE IF EXISTS `up_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `up_users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `up_users_created_by_id_fk` (`created_by_id`),
  KEY `up_users_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `up_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `up_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `up_users`
--

LOCK TABLES `up_users` WRITE;
/*!40000 ALTER TABLE `up_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `up_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `up_users_role_links`
--

DROP TABLE IF EXISTS `up_users_role_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `up_users_role_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned DEFAULT NULL,
  `role_id` int unsigned DEFAULT NULL,
  `user_order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `up_users_role_links_unique` (`user_id`,`role_id`),
  KEY `up_users_role_links_fk` (`user_id`),
  KEY `up_users_role_links_inv_fk` (`role_id`),
  KEY `up_users_role_links_order_inv_fk` (`user_order`),
  CONSTRAINT `up_users_role_links_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `up_users_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `up_users_role_links`
--

LOCK TABLES `up_users_role_links` WRITE;
/*!40000 ALTER TABLE `up_users_role_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `up_users_role_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload_folders`
--

DROP TABLE IF EXISTS `upload_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `upload_folders` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `path_id` int DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `upload_folders_path_id_index` (`path_id`),
  UNIQUE KEY `upload_folders_path_index` (`path`),
  KEY `upload_folders_created_by_id_fk` (`created_by_id`),
  KEY `upload_folders_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `upload_folders_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `upload_folders_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload_folders`
--

LOCK TABLES `upload_folders` WRITE;
/*!40000 ALTER TABLE `upload_folders` DISABLE KEYS */;
/*!40000 ALTER TABLE `upload_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload_folders_parent_links`
--

DROP TABLE IF EXISTS `upload_folders_parent_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `upload_folders_parent_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `folder_id` int unsigned DEFAULT NULL,
  `inv_folder_id` int unsigned DEFAULT NULL,
  `folder_order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `upload_folders_parent_links_unique` (`folder_id`,`inv_folder_id`),
  KEY `upload_folders_parent_links_fk` (`folder_id`),
  KEY `upload_folders_parent_links_inv_fk` (`inv_folder_id`),
  KEY `upload_folders_parent_links_order_inv_fk` (`folder_order`),
  CONSTRAINT `upload_folders_parent_links_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `upload_folders_parent_links_inv_fk` FOREIGN KEY (`inv_folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload_folders_parent_links`
--

LOCK TABLES `upload_folders_parent_links` WRITE;
/*!40000 ALTER TABLE `upload_folders_parent_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `upload_folders_parent_links` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-12 18:16:03
