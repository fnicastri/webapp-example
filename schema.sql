# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.6.35)
# Database: directus
# Generation Time: 2017-10-06 15:53:29 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table about
# ------------------------------------------------------------

DROP TABLE IF EXISTS `about`;

CREATE TABLE `about` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `home_intro` text,
  `about_intro` text,
  `projects_intro` text,
  `resources_intro` text,
  `news_intro` text,
  `philosophy_quote` text,
  `philosophy_text` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `about` WRITE;
/*!40000 ALTER TABLE `about` DISABLE KEYS */;

INSERT INTO `about` (`id`, `home_intro`, `about_intro`, `projects_intro`, `resources_intro`, `news_intro`, `philosophy_quote`, `philosophy_text`)
VALUES
	(1,'Morbi ante quam, egestas at blandit nec, commodo eu lectus. Suspendisse scelerisque faucibus tellus, eu fringilla risus egestas quis. Vestibulum a metus sit amet metus pretium euismod. Donec venenatis feugiat felis, sed mattis mi fermentum ut. Quisque varius metus vel urna porta porttitor. Nullam elementum id est in imperdiet. Mauris non augue ornare, pulvinar nisi sit amet, egestas ante.','Morbi ante quam, egestas at blandit nec, commodo eu lectus. Suspendisse scelerisque faucibus tellus, eu fringilla risus egestas quis. Vestibulum a metus sit amet metus pretium euismod. Donec venenatis feugiat felis, sed mattis mi fermentum ut.','Morbi ante quam, egestas at blandit nec, commodo eu lectus. Suspendisse scelerisque faucibus tellus, eu fringilla risus egestas quis. Vestibulum a metus sit amet metus pretium euismod. Donec venenatis feugiat felis, sed mattis mi fermentum ut. Quisque varius metus vel urna porta porttitor. Nullam elementum id est in imperdiet.','Morbi ante quam, egestas at blandit nec, commodo eu lectus. Suspendisse scelerisque faucibus tellus, eu fringilla risus egestas quis. Vestibulum a metus sit amet metus pretium euismod. Donec venenatis feugiat felis, sed mattis mi fermentum ut. Quisque varius metus vel urna porta porttitor. Nullam elementum id est in imperdiet.','Morbi ante quam, egestas at blandit nec, commodo eu lectus. Suspendisse scelerisque faucibus tellus, eu fringilla risus egestas quis. Vestibulum a metus sit amet metus pretium euismod. Donec venenatis feugiat felis, sed mattis mi fermentum ut.','Morbi ante quam, egestas at blandit nec, commodo eu lectus. Suspendisse scelerisque faucibus tellus, eu fringilla risus egestas quis. Vestibulum a metus sit amet metus pretium euismod. Donec venenatis feugiat felis, sed mattis mi fermentum ut. Quisque varius metus vel urna porta porttitor. Nullam elementum id est in imperdiet.','Morbi ante quam, egestas at blandit nec, commodo eu lectus. Suspendisse scelerisque faucibus tellus, eu fringilla risus egestas quis. Vestibulum a metus sit amet metus pretium euismod. Donec venenatis feugiat felis, sed mattis mi fermentum ut. Quisque varius metus vel urna porta porttitor. Nullam elementum id est in imperdiet.\n\nAnte quam, egestas at blandit nec, commodo eu lectus. Suspendisse scelerisque faucibus tellus, eu fringilla risus egestas quis. Vestibulum a metus sit amet metus pretium euismod. Donec venenatis feugiat felis, sed mattis mi fermentum ut. Quisque varius metus vel urna porta porttitor. Nullam elementum id est in imperdiet.');

/*!40000 ALTER TABLE `about` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table directus_activity
# ------------------------------------------------------------

DROP TABLE IF EXISTS `directus_activity`;

CREATE TABLE `directus_activity` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(100) DEFAULT NULL,
  `action` varchar(100) NOT NULL,
  `identifier` varchar(100) DEFAULT NULL,
  `table_name` varchar(100) NOT NULL DEFAULT '',
  `row_id` int(11) unsigned DEFAULT '0',
  `user` int(11) unsigned NOT NULL DEFAULT '0',
  `data` text,
  `delta` text,
  `parent_id` int(11) unsigned DEFAULT NULL,
  `parent_table` varchar(100) DEFAULT NULL,
  `parent_changed` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Did the top-level record in the change set alter (scalar values/many-to-one relationships)? Or only the data within its related foreign collection records? (*toMany)',
  `datetime` datetime DEFAULT NULL,
  `logged_ip` varchar(20) DEFAULT NULL,
  `user_agent` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `directus_activity` WRITE;
/*!40000 ALTER TABLE `directus_activity` DISABLE KEYS */;

INSERT INTO `directus_activity` (`id`, `type`, `action`, `identifier`, `table_name`, `row_id`, `user`, `data`, `delta`, `parent_id`, `parent_table`, `parent_changed`, `datetime`, `logged_ip`, `user_agent`)
VALUES
	(1,'LOGIN','LOGIN',NULL,'directus_users',0,1,NULL,NULL,NULL,NULL,0,'2017-10-06 15:38:41','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36');

/*!40000 ALTER TABLE `directus_activity` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table directus_bookmarks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `directus_bookmarks`;

CREATE TABLE `directus_bookmarks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user` int(11) unsigned DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `icon_class` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `directus_bookmarks` WRITE;
/*!40000 ALTER TABLE `directus_bookmarks` DISABLE KEYS */;

INSERT INTO `directus_bookmarks` (`id`, `user`, `title`, `url`, `icon_class`, `active`, `section`)
VALUES
	(1,1,'Activity','activity','icon-bell',NULL,'other'),
	(2,1,'Files','files','icon-attach',NULL,'other'),
	(3,1,'Messages','messages','icon-chat',NULL,'other'),
	(4,1,'Users','users','icon-users',NULL,'other');

/*!40000 ALTER TABLE `directus_bookmarks` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table directus_columns
# ------------------------------------------------------------

DROP TABLE IF EXISTS `directus_columns`;

CREATE TABLE `directus_columns` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `data_type` varchar(64) DEFAULT NULL,
  `ui` varchar(64) DEFAULT NULL,
  `relationship_type` enum('MANYTOONE','MANYTOMANY','ONETOMANY') DEFAULT NULL,
  `related_table` varchar(64) DEFAULT NULL,
  `junction_table` varchar(64) DEFAULT NULL,
  `junction_key_left` varchar(64) DEFAULT NULL,
  `junction_key_right` varchar(64) DEFAULT NULL,
  `hidden_input` tinyint(1) NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `sort` int(11) DEFAULT NULL,
  `comment` varchar(1024) DEFAULT NULL,
  `options` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `table-column` (`table_name`,`column_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `directus_columns` WRITE;
/*!40000 ALTER TABLE `directus_columns` DISABLE KEYS */;

INSERT INTO `directus_columns` (`id`, `table_name`, `column_name`, `data_type`, `ui`, `relationship_type`, `related_table`, `junction_table`, `junction_key_left`, `junction_key_right`, `hidden_input`, `required`, `sort`, `comment`, `options`)
VALUES
	(1,'directus_users','group',NULL,'many_to_one','MANYTOONE','directus_groups',NULL,NULL,'group_id',0,0,NULL,'',NULL),
	(2,'directus_users','avatar_file_id','INT','single_file','MANYTOONE','directus_files',NULL,NULL,'avatar_file_id',0,0,NULL,'','{\"allowed_filetypes\":\"image/\"}'),
	(3,'resources','id',NULL,'primary_key',NULL,NULL,NULL,NULL,NULL,0,1,1,'',NULL),
	(4,'resources','active',NULL,'toggle',NULL,NULL,NULL,NULL,NULL,0,0,2,'',NULL),
	(5,'resources','sort',NULL,'sort',NULL,NULL,NULL,NULL,NULL,0,0,3,'',NULL),
	(6,'resources','title',NULL,'text_input',NULL,NULL,NULL,NULL,NULL,0,0,4,'',NULL),
	(7,'resources','all_visits',NULL,'toggle',NULL,NULL,NULL,NULL,NULL,0,0,5,'',NULL),
	(8,'resources','file','INT','single_file','MANYTOONE','directus_files',NULL,NULL,'file',0,0,6,'',NULL),
	(9,'about','slideshow','ALIAS','multiple_files','MANYTOMANY','directus_files','slideshow_images','about_id','file_id',0,0,9999,'','{\"id\":\"multiple_files\",\"add_button\":\"1\",\"choose_button\":\"1\",\"remove_button\":\"1\"}'),
	(10,'about','id',NULL,'primary_key',NULL,NULL,NULL,NULL,NULL,0,1,1,'',NULL),
	(11,'about','home_intro',NULL,'textarea',NULL,NULL,NULL,NULL,NULL,0,1,2,'',NULL),
	(12,'about','about_intro',NULL,'textarea',NULL,NULL,NULL,NULL,NULL,0,1,3,'',NULL),
	(13,'about','procedures_intro',NULL,'textarea',NULL,NULL,NULL,NULL,NULL,0,0,4,'',NULL),
	(14,'about','resources_intro',NULL,'textarea',NULL,NULL,NULL,NULL,NULL,0,1,5,'',NULL),
	(15,'about','news_intro',NULL,'textarea',NULL,NULL,NULL,NULL,NULL,0,1,6,'',NULL),
	(16,'about','philosophy_quote',NULL,'textarea',NULL,NULL,NULL,NULL,NULL,0,1,7,'',NULL),
	(17,'about','philosophy_text',NULL,'textarea',NULL,NULL,NULL,NULL,NULL,0,1,8,'',NULL),
	(18,'slideshow_images','id',NULL,'primary_key',NULL,NULL,NULL,NULL,NULL,0,1,1,'',NULL),
	(19,'slideshow_images','about_id',NULL,'numeric',NULL,NULL,NULL,NULL,NULL,0,0,2,'',NULL),
	(20,'slideshow_images','file_id',NULL,'numeric',NULL,NULL,NULL,NULL,NULL,0,0,3,'',NULL),
	(21,'project_types','slug',NULL,'slug',NULL,NULL,NULL,NULL,NULL,0,1,3,'Automatically created, this is used within the URL','{\"id\":\"slug\",\"readonly\":\"1\",\"size\":\"large\",\"mirrored_field\":\"title\"}'),
	(22,'project_types','id',NULL,'primary_key',NULL,NULL,NULL,NULL,NULL,0,1,0,'',NULL),
	(23,'project_types','sort',NULL,'sort',NULL,NULL,NULL,NULL,NULL,0,0,1,'',NULL),
	(24,'project_types','title',NULL,'text_input',NULL,NULL,NULL,NULL,NULL,0,1,2,'',NULL),
	(25,'project_types','surgical',NULL,'toggle',NULL,NULL,NULL,NULL,NULL,0,0,4,'',NULL),
	(26,'project_types','description',NULL,'textarea',NULL,NULL,NULL,NULL,NULL,0,0,5,'',NULL),
	(27,'project_types','projects','ALIAS','one_to_many','ONETOMANY','projects',NULL,NULL,'type',0,0,9999,'Any projects that should be showcased within this section','{\"id\":\"one_to_many\",\"visible_columns\":\"title\",\"result_limit\":\"100\",\"add_button\":\"1\",\"choose_button\":\"1\",\"remove_button\":\"1\",\"only_unassigned\":\"0\"}'),
	(28,'projects','id',NULL,'primary_key',NULL,NULL,NULL,NULL,NULL,0,1,0,'',NULL),
	(29,'projects','active',NULL,'toggle',NULL,NULL,NULL,NULL,NULL,0,0,1,'',NULL),
	(30,'projects','title',NULL,'text_input',NULL,NULL,NULL,NULL,NULL,0,1,2,'',NULL),
	(31,'projects','type','INT','many_to_one','MANYTOONE','project_types',NULL,NULL,'type',0,0,4,'','{\"id\":\"many_to_one\",\"readonly\":\"0\",\"visible_column\":\"title\",\"visible_column_template\":\"{{title}}\",\"visible_status_ids\":\"1,2\",\"placeholder_text\":\"\",\"allow_null\":\"0\",\"filter_type\":\"dropdown\",\"filter_column\":\"title\"}'),
	(32,'projects','surgical',NULL,'toggle',NULL,NULL,NULL,NULL,NULL,0,0,5,'',NULL),
	(33,'projects','description',NULL,'wysiwyg_full',NULL,NULL,NULL,NULL,NULL,0,0,11,'H1 for section breaks, H3 for sub-section breaks','{\"id\":\"wysiwyg\",\"readonly\":\"0\",\"height\":\"1000\",\"bold\":\"1\",\"italic\":\"1\",\"underline\":\"1\",\"strikethrough\":\"0\",\"rule\":\"0\",\"createlink\":\"1\",\"insertimage\":\"0\",\"embedVideo\":\"0\",\"embed_width\":\"300\",\"embed_height\":\"200\",\"html\":\"1\",\"orderedList\":\"0\",\"h1\":\"1\",\"h2\":\"0\",\"h3\":\"1\",\"h4\":\"0\",\"h5\":\"0\",\"h6\":\"0\",\"blockquote\":\"0\",\"ul\":\"1\",\"ol\":\"0\"}'),
	(34,'projects','hero_image','INT','single_file','MANYTOONE','directus_files',NULL,NULL,'hero_image',0,0,6,'',NULL),
	(35,'projects','project_length',NULL,'text_input',NULL,NULL,NULL,NULL,NULL,0,0,8,'',NULL),
	(36,'projects','normal_recovery',NULL,'text_input',NULL,NULL,NULL,NULL,NULL,0,0,9,'',NULL),
	(37,'projects','possible_side_effects',NULL,'text_input',NULL,NULL,NULL,NULL,NULL,0,0,10,'',NULL),
	(38,'project_types','image','INT','single_file','MANYTOONE','directus_files',NULL,NULL,'image',0,1,7,'PNG or SVG – Background must be removed',NULL),
	(39,'staff','id',NULL,'primary_key',NULL,NULL,NULL,NULL,NULL,0,1,1,'',NULL),
	(40,'staff','active',NULL,'toggle',NULL,NULL,NULL,NULL,NULL,0,0,2,'',NULL),
	(41,'staff','sort',NULL,'sort',NULL,NULL,NULL,NULL,NULL,0,0,3,'',NULL),
	(42,'staff','name',NULL,'text_input',NULL,NULL,NULL,NULL,NULL,0,0,4,'',NULL),
	(43,'staff','title',NULL,'text_input',NULL,NULL,NULL,NULL,NULL,0,0,5,'',NULL),
	(44,'staff','bio',NULL,'textarea',NULL,NULL,NULL,NULL,NULL,0,0,6,'',NULL),
	(45,'staff','doctor',NULL,'toggle',NULL,NULL,NULL,NULL,NULL,0,0,7,'',NULL),
	(46,'staff','image','INT','single_file','MANYTOONE','directus_files',NULL,NULL,'image',0,0,8,'',NULL),
	(47,'projects','slug',NULL,'slug',NULL,NULL,NULL,NULL,NULL,0,1,3,'','{\"id\":\"slug\",\"readonly\":\"1\",\"size\":\"large\",\"mirrored_field\":\"title\"}'),
	(48,'projects','intro',NULL,'textarea',NULL,NULL,NULL,NULL,NULL,0,0,7,'',NULL),
	(49,'project_milestones','id',NULL,'primary_key',NULL,NULL,NULL,NULL,NULL,0,1,1,'',NULL),
	(50,'project_milestones','sort',NULL,'sort',NULL,NULL,NULL,NULL,NULL,0,0,2,'',NULL),
	(51,'project_milestones','duration',NULL,'text_input',NULL,NULL,NULL,NULL,NULL,0,0,3,'',NULL),
	(52,'project_milestones','description',NULL,'textarea',NULL,NULL,NULL,NULL,NULL,0,0,4,'',NULL),
	(53,'projects','timeline','ALIAS','one_to_many','ONETOMANY','project_milestones',NULL,NULL,'project_id',0,0,9999,'','{\"id\":\"one_to_many\",\"visible_columns\":\"duration\",\"result_limit\":\"100\",\"add_button\":\"1\",\"choose_button\":\"0\",\"remove_button\":\"1\",\"only_unassigned\":\"1\"}'),
	(54,'project_milestones','project_id',NULL,'numeric',NULL,NULL,NULL,NULL,NULL,1,0,3,'',NULL),
	(56,'about','projects_intro',NULL,'textarea',NULL,NULL,NULL,NULL,NULL,0,1,4,'',NULL),
	(57,'faq','id',NULL,'primary_key',NULL,NULL,NULL,NULL,NULL,0,1,1,'',NULL),
	(58,'faq','active',NULL,'toggle',NULL,NULL,NULL,NULL,NULL,0,0,2,'',NULL),
	(59,'faq','sort',NULL,'sort',NULL,NULL,NULL,NULL,NULL,0,0,3,'',NULL),
	(60,'faq','question',NULL,'text_input',NULL,NULL,NULL,NULL,NULL,0,1,4,'',NULL),
	(61,'faq','answer',NULL,'textarea',NULL,NULL,NULL,NULL,NULL,0,1,5,'',NULL),
	(62,'news','id',NULL,'primary_key',NULL,NULL,NULL,NULL,NULL,0,1,1,'',NULL),
	(63,'news','active',NULL,'toggle',NULL,NULL,NULL,NULL,NULL,0,0,2,'',NULL),
	(64,'news','title',NULL,'text_input',NULL,NULL,NULL,NULL,NULL,0,0,3,'',NULL),
	(65,'news','publish_date',NULL,'datetime',NULL,NULL,NULL,NULL,NULL,0,0,4,'If this is in the future, the post will not go live until that date/time',NULL),
	(66,'news','intro',NULL,'textarea',NULL,NULL,NULL,NULL,NULL,0,0,5,'Visible on the listing page',NULL),
	(67,'news','body',NULL,'textarea',NULL,NULL,NULL,NULL,NULL,0,0,6,'Visible once the user clicks \"read more\"',NULL),
	(68,'projects','case_study',NULL,'toggle',NULL,NULL,NULL,NULL,NULL,0,0,6,'',NULL),
	(69,'projects','client',NULL,'text_input',NULL,NULL,NULL,NULL,NULL,0,0,8,'',NULL),
	(70,'projects','project_duration',NULL,'text_input',NULL,NULL,NULL,NULL,NULL,0,0,9,'',NULL),
	(71,'projects','technologies',NULL,'text_input',NULL,NULL,NULL,NULL,NULL,0,0,10,'',NULL),
	(72,'directus_groups','users','ALIAS','directus_users','ONETOMANY','directus_users',NULL,NULL,'group',0,0,NULL,NULL,NULL),
	(73,'directus_groups','permissions','ALIAS','directus_permissions','ONETOMANY','directus_privileges',NULL,NULL,'group_id',0,0,NULL,NULL,NULL);

/*!40000 ALTER TABLE `directus_columns` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table directus_files
# ------------------------------------------------------------

DROP TABLE IF EXISTS `directus_files`;

CREATE TABLE `directus_files` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) DEFAULT '1',
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT '',
  `location` varchar(200) DEFAULT NULL,
  `caption` text,
  `type` varchar(255) DEFAULT '',
  `charset` varchar(50) DEFAULT '',
  `tags` varchar(255) DEFAULT '',
  `width` int(11) unsigned DEFAULT '0',
  `height` int(11) unsigned DEFAULT '0',
  `size` int(11) unsigned DEFAULT '0',
  `embed_id` varchar(200) DEFAULT NULL,
  `user` int(11) unsigned NOT NULL,
  `date_uploaded` datetime DEFAULT NULL,
  `storage_adapter` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `directus_files` WRITE;
/*!40000 ALTER TABLE `directus_files` DISABLE KEYS */;

INSERT INTO `directus_files` (`id`, `status`, `name`, `title`, `location`, `caption`, `type`, `charset`, `tags`, `width`, `height`, `size`, `embed_id`, `user`, `date_uploaded`, `storage_adapter`)
VALUES
	(1,1,'e11e240766218220e505656e21b20392.jpg','Office Image','','','image/jpeg','binary','',3872,2592,2607553,NULL,1,'2016-12-12 17:53:31','local'),
	(2,1,'f78e11de9a8d8239333bd89fdabd6641.jpg','Leadership Image','','','image/jpeg','binary','',800,838,137862,NULL,1,'2016-12-12 17:53:38','local'),
	(3,1,'ab54a5cc0265d4f6a024251eaaa3f63f.png','Example Screenshot','','','image/png','binary','',2000,1200,193965,NULL,1,'2016-12-12 21:12:50','local'),
	(4,1,'8e18b50e0ec4c4431c311ec309418659.svg','Service Illustration','','','image/svg+xml','binary','',302,302,3978,NULL,1,'2016-12-13 00:20:05','local');

/*!40000 ALTER TABLE `directus_files` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table directus_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `directus_groups`;

CREATE TABLE `directus_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `restrict_to_ip_whitelist` text,
  `nav_blacklist` varchar(500) DEFAULT NULL,
  `nav_override` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `directus_groups_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `directus_groups` WRITE;
/*!40000 ALTER TABLE `directus_groups` DISABLE KEYS */;

INSERT INTO `directus_groups` (`id`, `name`, `description`, `restrict_to_ip_whitelist`, `nav_blacklist`, `nav_override`)
VALUES
	(1,'Administrator','Full access to entire system',NULL,NULL,NULL),
	(2,'Users','Limited access to system',NULL,NULL,NULL);

/*!40000 ALTER TABLE `directus_groups` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table directus_messages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `directus_messages`;

CREATE TABLE `directus_messages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `from` int(11) unsigned DEFAULT NULL,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `attachment` varchar(512) DEFAULT NULL,
  `response_to` int(11) unsigned DEFAULT NULL,
  `comment_metadata` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table directus_messages_recipients
# ------------------------------------------------------------

DROP TABLE IF EXISTS `directus_messages_recipients`;

CREATE TABLE `directus_messages_recipients` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `message_id` int(11) unsigned NOT NULL,
  `recipient` int(11) unsigned NOT NULL,
  `read` tinyint(1) NOT NULL,
  `group` int(11) unsigned DEFAULT NULL,
  `archived` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table directus_preferences
# ------------------------------------------------------------

DROP TABLE IF EXISTS `directus_preferences`;

CREATE TABLE `directus_preferences` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user` int(11) unsigned DEFAULT NULL,
  `table_name` varchar(64) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `columns_visible` varchar(300) DEFAULT NULL,
  `sort` varchar(64) DEFAULT 'id',
  `sort_order` varchar(5) DEFAULT 'ASC',
  `status` varchar(64) DEFAULT NULL,
  `search_string` text,
  `list_view_options` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user` (`user`,`table_name`,`title`),
  UNIQUE KEY `pref_title_constraint` (`user`,`table_name`,`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `directus_preferences` WRITE;
/*!40000 ALTER TABLE `directus_preferences` DISABLE KEYS */;

INSERT INTO `directus_preferences` (`id`, `user`, `table_name`, `title`, `columns_visible`, `sort`, `sort_order`, `status`, `search_string`, `list_view_options`)
VALUES
	(1,1,'project_images',NULL,'about_id,file_id','id','ASC','1,2',NULL,'{\"spacing\":\"cozy\",\"currentView\":\"table\"}'),
	(2,1,'about',NULL,'home_intro,about_intro,projects_intro,resources_intro,news_intro','id','ASC','1,2',NULL,NULL),
	(3,1,'directus_bookmarks',NULL,'user,title,url,icon_class','id','ASC','1,2',NULL,NULL),
	(4,1,'directus_columns',NULL,'table_name,column_name,data_type,ui,relationship_type','sort','ASC','1,2',NULL,NULL),
	(5,1,'directus_files',NULL,'name,title,location,caption','date_uploaded','DESC','1,2',NULL,NULL),
	(6,1,'directus_groups',NULL,'name,description,restrict_to_ip_whitelist','id','ASC','1,2',NULL,NULL),
	(7,1,'directus_messages',NULL,'from,subject,message,datetime,attachment','id','ASC','1,2',NULL,NULL),
	(8,1,'directus_messages_recipients',NULL,'message_id,recipient,read,group','id','ASC','1,2',NULL,NULL),
	(9,1,'directus_preferences',NULL,'user,table_name,title,columns_visible','sort','ASC','1,2',NULL,NULL),
	(10,1,'directus_privileges',NULL,'table_name,allow_view,allow_add,allow_edit,allow_delete','id','ASC','1,2',NULL,NULL),
	(11,1,'directus_schema_migrations',NULL,'version','id','ASC','1,2',NULL,NULL),
	(12,1,'directus_settings',NULL,'collection,name,value','id','ASC','1,2',NULL,NULL),
	(13,1,'directus_tables',NULL,'hidden,single,default_status,footer,list_view','table_name','ASC','1,2',NULL,NULL),
	(14,1,'directus_ui',NULL,'table_name,column_name,ui_name,name,value','id','ASC','1,2',NULL,NULL),
	(15,1,'directus_users',NULL,'first_name,last_name,email,password','id','ASC','1,2',NULL,NULL),
	(16,1,'faq',NULL,'question,answer','sort','ASC','1,2',NULL,'{\"spacing\":\"cozy\",\"currentView\":\"table\"}'),
	(17,1,'news',NULL,'title,publish_date,intro,body','id','ASC','1,2',NULL,'{\"spacing\":\"cozy\",\"currentView\":\"table\"}'),
	(18,1,'project_milestones',NULL,'project_id,duration,description','sort','ASC','1,2',NULL,NULL),
	(19,1,'project_types',NULL,'title,description,slug,image','sort','ASC','1,2',NULL,NULL),
	(20,1,'projects',NULL,'title,slug,type,case_study','id','ASC','1,2',NULL,NULL),
	(21,1,'requests',NULL,'date_submitted,name,project,contact','id','ASC','1,2',NULL,'{\"spacing\":\"cozy\",\"currentView\":\"table\"}'),
	(22,1,'resources',NULL,'title,file','sort','ASC','1,2',NULL,'{\"spacing\":\"cozy\",\"currentView\":\"table\"}'),
	(23,1,'slideshow_images',NULL,'about_id,file_id','id','ASC','1,2',NULL,NULL),
	(24,1,'staff',NULL,'name,title,bio','sort','ASC','1,2',NULL,NULL),
	(25,1,'directus_activity',NULL,'type,action,identifier,table_name,row_id','id','ASC','1,2',NULL,NULL);

/*!40000 ALTER TABLE `directus_preferences` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table directus_privileges
# ------------------------------------------------------------

DROP TABLE IF EXISTS `directus_privileges`;

CREATE TABLE `directus_privileges` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `allow_view` tinyint(4) DEFAULT '0',
  `allow_add` tinyint(4) DEFAULT '0',
  `allow_edit` tinyint(4) DEFAULT '0',
  `allow_delete` tinyint(4) DEFAULT '0',
  `allow_alter` tinyint(4) DEFAULT '0',
  `group_id` int(11) unsigned NOT NULL,
  `read_field_blacklist` varchar(1000) CHARACTER SET latin1 DEFAULT NULL,
  `write_field_blacklist` varchar(1000) CHARACTER SET latin1 DEFAULT NULL,
  `nav_listed` tinyint(1) NOT NULL DEFAULT '1',
  `status_id` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `directus_privileges` WRITE;
/*!40000 ALTER TABLE `directus_privileges` DISABLE KEYS */;

INSERT INTO `directus_privileges` (`id`, `table_name`, `allow_view`, `allow_add`, `allow_edit`, `allow_delete`, `allow_alter`, `group_id`, `read_field_blacklist`, `write_field_blacklist`, `nav_listed`, `status_id`)
VALUES
	(1,'directus_activity',2,1,2,2,1,1,NULL,NULL,1,NULL),
	(2,'directus_columns',2,1,2,2,1,1,NULL,NULL,1,NULL),
	(3,'directus_groups',2,1,2,2,1,1,NULL,NULL,1,NULL),
	(4,'directus_files',2,1,2,2,1,1,NULL,NULL,1,NULL),
	(5,'directus_messages',2,1,2,2,1,1,NULL,NULL,1,NULL),
	(6,'directus_preferences',2,1,2,2,1,1,NULL,NULL,1,NULL),
	(7,'directus_privileges',2,1,2,2,1,1,NULL,NULL,1,NULL),
	(8,'directus_settings',2,1,2,2,1,1,NULL,NULL,1,NULL),
	(9,'directus_tables',2,1,2,2,1,1,NULL,NULL,1,NULL),
	(10,'directus_ui',2,1,2,2,1,1,NULL,NULL,1,NULL),
	(11,'directus_users',2,1,2,2,1,1,NULL,NULL,1,NULL),
	(12,'directus_messages_recipients',2,1,2,2,1,1,NULL,NULL,1,NULL),
	(13,'directus_bookmarks',2,1,2,2,1,1,NULL,NULL,1,NULL),
	(14,'about',2,1,2,2,1,1,NULL,NULL,1,NULL),
	(15,'news',2,1,2,2,1,1,NULL,NULL,1,NULL),
	(16,'faq',2,1,2,2,1,1,NULL,NULL,1,NULL),
	(17,'projects',2,1,2,2,1,1,NULL,NULL,1,NULL),
	(18,'project_types',2,1,2,2,1,1,NULL,NULL,1,NULL),
	(19,'resources',2,1,2,2,1,1,NULL,NULL,1,NULL),
	(20,'staff',2,1,2,2,1,1,NULL,NULL,1,NULL),
	(21,'slideshow_images',2,1,2,2,1,1,NULL,NULL,1,NULL),
	(22,'project_milestones',2,1,2,2,1,1,NULL,NULL,1,NULL),
	(23,'requests',2,1,2,2,1,1,NULL,NULL,1,NULL),
	(24,'project_images',2,1,2,2,1,1,NULL,NULL,1,NULL),
	(25,'directus_activity',2,1,2,2,1,2,NULL,NULL,1,NULL),
	(26,'directus_bookmarks',2,1,2,2,1,2,NULL,NULL,1,NULL),
	(27,'directus_columns',2,1,2,2,1,2,NULL,NULL,1,NULL),
	(28,'directus_files',2,1,2,2,1,2,NULL,NULL,1,NULL),
	(29,'directus_groups',2,1,2,2,1,2,NULL,NULL,1,NULL),
	(30,'directus_messages',2,1,2,2,1,2,NULL,NULL,1,NULL),
	(31,'directus_messages_recipients',2,1,2,2,1,2,NULL,NULL,1,NULL),
	(32,'directus_preferences',2,1,2,2,1,2,NULL,NULL,1,NULL),
	(33,'directus_privileges',2,1,2,2,1,2,NULL,NULL,1,NULL),
	(34,'directus_schema_migrations',2,1,2,2,1,2,NULL,NULL,1,NULL),
	(35,'directus_settings',2,1,2,2,1,2,NULL,NULL,1,NULL),
	(36,'directus_tables',2,1,2,2,1,2,NULL,NULL,1,NULL),
	(37,'directus_ui',2,1,2,2,1,2,NULL,NULL,1,NULL),
	(38,'directus_users',2,1,2,2,1,2,NULL,NULL,1,NULL),
	(39,'news',2,1,2,2,1,2,NULL,NULL,1,NULL),
	(40,'about',2,1,2,2,1,2,NULL,NULL,1,NULL),
	(41,'faq',2,1,2,2,1,2,NULL,NULL,1,NULL);

/*!40000 ALTER TABLE `directus_privileges` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table directus_schema_migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `directus_schema_migrations`;

CREATE TABLE `directus_schema_migrations` (
  `version` varchar(255) DEFAULT NULL,
  UNIQUE KEY `idx_directus_schema_migrations_version` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `directus_schema_migrations` WRITE;
/*!40000 ALTER TABLE `directus_schema_migrations` DISABLE KEYS */;

INSERT INTO `directus_schema_migrations` (`version`)
VALUES
	('20150203221946'),
	('20150203235646'),
	('20150204002341'),
	('20150204003426'),
	('20150204015251'),
	('20150204021255'),
	('20150204022237'),
	('20150204023325'),
	('20150204024327'),
	('20150204031412'),
	('20150204041007'),
	('20150204042025'),
	('20150204042725'),
	('20150226033750'),
	('20150705010917'),
	('20150705022037'),
	('20150705024605'),
	('20150705025217'),
	('20150706152311'),
	('20150706223858'),
	('20150720121526'),
	('20150723013904'),
	('20151010025831'),
	('20151221053654'),
	('20160121140100'),
	('20160226230144'),
	('20160422124055'),
	('20160610205828'),
	('20160611145718'),
	('20160611154201'),
	('20160627124603'),
	('20160718185828'),
	('20160720001010'),
	('20160728145005'),
	('20160806143210'),
	('20160818012556'),
	('20160818014107'),
	('20160818015422'),
	('20160818020832'),
	('20160826132455'),
	('20161019115703'),
	('20161027135703'),
	('20170110014122'),
	('20170125222528'),
	('20170209165022'),
	('20170209165644'),
	('20170214021022'),
	('20170221145122'),
	('20170224030303'),
	('20170304162938'),
	('20170305154928'),
	('20170305220945'),
	('20170309010203'),
	('20170316150303'),
	('20170316180303'),
	('20170317185243'),
	('20170407153544'),
	('20170507201455'),
	('20170523213643'),
	('20170630231929'),
	('20170704111001'),
	('20170718015422'),
	('20170802072245'),
	('20170805093920'),
	('20170808134123');

/*!40000 ALTER TABLE `directus_schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table directus_settings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `directus_settings`;

CREATE TABLE `directus_settings` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `collection` varchar(250) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `value` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Unique Collection and Name` (`collection`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `directus_settings` WRITE;
/*!40000 ALTER TABLE `directus_settings` DISABLE KEYS */;

INSERT INTO `directus_settings` (`id`, `collection`, `name`, `value`)
VALUES
	(1,'global','cms_user_auto_sign_out','60'),
	(2,'global','project_name','Directus Webapp Example'),
	(3,'global','project_url','http://example.getdirectus.com/'),
	(4,'global','rows_per_page','200'),
	(5,'files','thumbnail_quality','100'),
	(6,'files','thumbnail_size','200'),
	(7,'global','cms_thumbnail_url',''),
	(8,'files','file_naming','file_hash'),
	(9,'files','thumbnail_crop_enabled','1'),
	(10,'files','youtube_api_key',''),
	(11,'files','allowed_thumbnails',''),
	(12,'global','max_file_size','67108864'),
	(13,'global','google_api_key','');

/*!40000 ALTER TABLE `directus_settings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table directus_tables
# ------------------------------------------------------------

DROP TABLE IF EXISTS `directus_tables`;

CREATE TABLE `directus_tables` (
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `single` tinyint(1) NOT NULL DEFAULT '0',
  `default_status` tinyint(1) NOT NULL DEFAULT '1',
  `footer` tinyint(1) DEFAULT '0',
  `column_groupings` varchar(255) DEFAULT NULL,
  `primary_column` varchar(255) DEFAULT NULL,
  `user_create_column` varchar(64) DEFAULT NULL,
  `user_update_column` varchar(64) DEFAULT NULL,
  `date_create_column` varchar(64) DEFAULT NULL,
  `date_update_column` varchar(64) DEFAULT NULL,
  `filter_column_blacklist` text,
  `display_template` varchar(255) DEFAULT '',
  `preview_url` varchar(255) DEFAULT '',
  `sort_column` varchar(64) DEFAULT NULL,
  `status_column` varchar(64) DEFAULT NULL,
  `status_mapping` text,
  PRIMARY KEY (`table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `directus_tables` WRITE;
/*!40000 ALTER TABLE `directus_tables` DISABLE KEYS */;

INSERT INTO `directus_tables` (`table_name`, `hidden`, `single`, `default_status`, `footer`, `column_groupings`, `primary_column`, `user_create_column`, `user_update_column`, `date_create_column`, `date_update_column`, `filter_column_blacklist`, `display_template`, `preview_url`, `sort_column`, `status_column`, `status_mapping`)
VALUES
	('about',0,1,1,0,NULL,'',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL),
	('directus_bookmarks',1,0,1,0,NULL,NULL,'user',NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL),
	('directus_files',1,0,1,0,NULL,NULL,'user',NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL),
	('directus_messages_recipients',1,0,1,0,NULL,NULL,'recipient',NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL),
	('directus_preferences',1,0,1,0,NULL,NULL,'user',NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL),
	('directus_users',1,0,1,0,NULL,NULL,'id',NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL),
	('faq',0,0,1,0,NULL,'',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL),
	('news',0,0,1,0,NULL,'',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL),
	('projects',0,0,1,0,NULL,'',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL),
	('project_milestones',1,0,1,0,NULL,'',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL),
	('project_types',0,0,1,0,NULL,'',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL),
	('resources',0,0,1,0,NULL,'',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL),
	('slideshow_images',1,0,1,0,NULL,'id',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL),
	('staff',0,0,1,0,NULL,'',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL);

/*!40000 ALTER TABLE `directus_tables` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table directus_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `directus_users`;

CREATE TABLE `directus_users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) DEFAULT '1',
  `first_name` varchar(50) DEFAULT '',
  `last_name` varchar(50) DEFAULT '',
  `email` varchar(128) NOT NULL DEFAULT '',
  `password` varchar(255) DEFAULT '',
  `salt` varchar(255) DEFAULT '',
  `token` varchar(128) DEFAULT NULL,
  `access_token` varchar(255) DEFAULT '',
  `reset_token` varchar(255) DEFAULT '',
  `reset_expiration` datetime DEFAULT NULL,
  `position` varchar(500) DEFAULT '',
  `email_messages` tinyint(1) DEFAULT '1',
  `last_login` datetime DEFAULT NULL,
  `last_access` datetime DEFAULT NULL,
  `last_page` varchar(255) DEFAULT '',
  `ip` varchar(50) DEFAULT '',
  `group` int(11) unsigned DEFAULT NULL,
  `avatar` varchar(500) DEFAULT NULL,
  `avatar_file_id` int(11) unsigned DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `country` char(2) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `language` varchar(8) DEFAULT 'en',
  `timezone` varchar(32) DEFAULT 'America/New_York',
  `invite_token` varchar(255) DEFAULT NULL,
  `invite_date` datetime DEFAULT NULL,
  `invite_accepted` tinyint(1) DEFAULT NULL,
  `invite_sender` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `directus_users_email_unique` (`email`),
  UNIQUE KEY `directus_users_token_unique` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `directus_users` WRITE;
/*!40000 ALTER TABLE `directus_users` DISABLE KEYS */;

INSERT INTO `directus_users` (`id`, `status`, `first_name`, `last_name`, `email`, `password`, `salt`, `token`, `access_token`, `reset_token`, `reset_expiration`, `position`, `email_messages`, `last_login`, `last_access`, `last_page`, `ip`, `group`, `avatar`, `avatar_file_id`, `location`, `phone`, `address`, `city`, `state`, `country`, `zip`, `language`, `timezone`, `invite_token`, `invite_date`, `invite_accepted`, `invite_sender`)
VALUES
	(1,1,'Admin','User','admin@getdirectus.com','$2y$12$b0SdpGnKZdStArHW4s14OuJSajXpICj0nxacGRB1FXjdm4vPukvZq','vdSHA85qIUCdRUww','0ONOA0uFvWnCZzgW','33b4fd46d8a812e495a83598337daf67064559a3','','2016-10-28 02:21:51','RANGER',0,'2017-10-06 15:38:41','2017-10-06 15:44:09','{\"path\":\"tables\",\"route\":\"tables\"}','::1',1,'//www.gravatar.com/avatar/3a9a5bf6a6400f3487b17684c72b99b0?s=200&d=identicon&r=g',NULL,'Brooklyn, NY','+1 (234) 567-8910','123 Example Road','Brooklyn','NY',NULL,'11211','en','America/New_York',NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `directus_users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table faq
# ------------------------------------------------------------

DROP TABLE IF EXISTS `faq`;

CREATE TABLE `faq` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) DEFAULT '1',
  `sort` int(11) DEFAULT NULL,
  `question` varchar(200) DEFAULT NULL,
  `answer` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `faq` WRITE;
/*!40000 ALTER TABLE `faq` DISABLE KEYS */;

INSERT INTO `faq` (`id`, `active`, `sort`, `question`, `answer`)
VALUES
	(1,1,6,'Morbi ante quam, egestas at blandit nec, commodo?','Nunc fringilla purus purus, nec tincidunt diam fermentum nec. Quisque nec congue lectus. Maecenas suscipit maximus sapien, luctus venenatis tellus accumsan et. '),
	(2,1,5,'Vestibulum sed lacinia magna?','Sed sit amet pharetra metus. Aenean scelerisque, sem in blandit rutrum, dolor nisi maximus ipsum, ut laoreet lorem dui vitae quam. Sed bibendum odio ultricies elit maximus, non vehicula ex lacinia.'),
	(3,1,0,'Donec tempor risus dictum?','Ut congue turpis at nisl sollicitudin, sed eleifend purus aliquam. Suspendisse potenti. Proin ac nisl vel dolor posuere feugiat a sed nibh. Proin hendrerit quis nisl a dignissim. Maecenas volutpat, mi sit amet gravida rutrum, dui nibh cursus leo, et consectetur ante leo non urna. Nulla pretium eu orci et eleifend.'),
	(4,1,1,'Aenean tincidunt eget augue sed egestas?','Sed at est ligula. Mauris consectetur, ante eget facilisis suscipit, diam urna commodo risus, a commodo metus libero at metus. Nam nisl tellus, gravida eget magna quis, posuere lobortis magna. In sodales orci et magna elementum blandit.'),
	(5,1,2,'Quisque nec congue lectus?','Nullam elementum id est in imperdiet. Mauris non augue ornare, pulvinar nisi sit amet, egestas ante. Vivamus neque mauris, iaculis maximus magna eget, commodo molestie massa. Donec tempor risus dictum, congue lorem vitae, sodales lacus. Pellentesque mi libero, venenatis et consequat eget, ornare id justo.'),
	(6,1,3,'Maecenas suscipit maximus sapien?','Lorem ipsum dolor sit amet, consectetur adipiscing elit. In vel mauris at lacus tincidunt ornare. Mauris placerat leo ex, in fermentum sapien fermentum non. Etiam quis feugiat orci. Nam ut ex varius nisl sagittis tempus quis a sapien. Curabitur vel velit nisl. Etiam eu diam rhoncus, cursus justo eget, molestie sem.'),
	(7,1,4,'Pellentesque in ex sodales?','Maecenas volutpat, mi sit amet gravida rutrum, dui nibh cursus leo, et consectetur ante leo non urna. Nulla pretium eu orci et eleifend.');

/*!40000 ALTER TABLE `faq` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table news
# ------------------------------------------------------------

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `title` varchar(200) DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `intro` text,
  `body` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;

INSERT INTO `news` (`id`, `active`, `title`, `publish_date`, `intro`, `body`)
VALUES
	(1,1,'Proin ac Nisl Vel Dolor Posuere','2016-12-12 12:35:59','Aenean tincidunt eget augue sed egestas. Sed sit amet pharetra metus. Aenean scelerisque, sem in blandit rutrum, dolor nisi maximus ipsum, ut laoreet lorem dui vitae quam. Sed bibendum odio ultricies elit maximus, non vehicula ex lacinia. Ut condimentum sodales ultrices. Phasellus eu metus urna. Etiam sit amet mollis mauris, nec pharetra enim. Aenean iaculis lacus non tellus blandit pharetra. Proin sit amet justo eget ante sagittis tristique. Vestibulum luctus ipsum nisl, nec porttitor eros tristique sit amet.','Nunc fringilla purus purus, nec tincidunt diam fermentum nec. Quisque nec congue lectus. Maecenas suscipit maximus sapien, luctus venenatis tellus accumsan et. Pellentesque in ex sodales, aliquam leo nec, finibus nulla. Duis varius, augue sit amet molestie finibus, diam ante fermentum mi, sit amet vehicula nibh purus ut nunc. Ut congue turpis at nisl sollicitudin, sed eleifend purus aliquam. Suspendisse potenti. Proin ac nisl vel dolor posuere feugiat a sed nibh. Proin hendrerit quis nisl a dignissim. Maecenas volutpat, mi sit amet gravida rutrum, dui nibh cursus leo, et consectetur ante leo non urna. Nulla pretium eu orci et eleifend.'),
	(2,1,'Suspendisse Scelerisque Faucibus Tellus','2016-12-10 12:35:59','In vel mauris at lacus tincidunt ornare. Mauris placerat leo ex, in fermentum sapien fermentum non. Etiam quis feugiat orci. Nam ut ex varius nisl sagittis tempus quis a sapien. Curabitur vel velit nisl. Etiam eu diam rhoncus, cursus justo eget, molestie sem. Integer eget luctus augue, vitae consectetur nunc. Fusce faucibus sapien elit, sit amet aliquam lorem suscipit in. Etiam condimentum metus libero, eu elementum justo fermentum vel. Nulla in est at neque euismod fringilla. Nunc sit amet ullamcorper massa.','Aenean id accumsan magna. Vivamus felis nisl, dapibus sed hendrerit at, tempus sit amet sem. Vestibulum sed lacinia magna. Aenean at magna vitae diam egestas luctus non nec sapien. Sed at est ligula. Mauris consectetur, ante eget facilisis suscipit, diam urna commodo risus, a commodo metus libero at metus. Nam nisl tellus, gravida eget magna quis, posuere lobortis magna. In sodales orci et magna elementum blandit.\n\nMorbi ante quam, egestas at blandit nec, commodo eu lectus. Suspendisse scelerisque faucibus tellus, eu fringilla risus egestas quis. Vestibulum a metus sit amet metus pretium euismod. Donec venenatis feugiat felis, sed mattis mi fermentum ut. Quisque varius metus vel urna porta porttitor. Nullam elementum id est in imperdiet. Mauris non augue ornare, pulvinar nisi sit amet, egestas ante. Vivamus neque mauris, iaculis maximus magna eget, commodo molestie massa. Donec tempor risus dictum, congue lorem vitae, sodales lacus. Pellentesque mi libero, venenatis et consequat eget, ornare id justo. Sed nunc sapien, malesuada ut sagittis ac, dapibus at arcu. Nunc tristique sapien blandit fermentum mattis. Nulla a turpis sapien. Donec non orci at felis rutrum mollis. Nulla quis suscipit ligula, ullamcorper fermentum leo. Proin justo sem, condimentum at tellus in, egestas eleifend odio.'),
	(3,1,'Mauris Placerat Leo Ex','2016-12-04 12:35:59','Lorem ipsum dolor sit amet, consectetur adipiscing elit. In vel mauris at lacus tincidunt ornare. Mauris placerat leo ex, in fermentum sapien fermentum non. Etiam quis feugiat orci. Nam ut ex varius nisl sagittis tempus quis a sapien. Curabitur vel velit nisl. Etiam eu diam rhoncus, cursus justo eget, molestie sem.',''),
	(4,1,'Commodo eu Lectus','2016-11-21 12:35:59','Accumsan magna. Vivamus felis nisl, dapibus sed hendrerit at, tempus sit amet sem. Vestibulum sed lacinia magna. Aenean at magna vitae diam egestas luctus non nec sapien. Sed at est ligula. Mauris consectetur, ante eget facilisis suscipit, diam urna commodo risus, a commodo metus libero at metus. Nam nisl tellus, gravida eget magna quis, posuere lobortis magna. In sodales orci et magna elementum blandit.','Morbi ante quam, egestas at blandit nec, commodo eu lectus. Suspendisse scelerisque faucibus tellus, eu fringilla risus egestas quis. Vestibulum a metus sit amet metus pretium euismod. Donec venenatis feugiat felis, sed mattis mi fermentum ut. Quisque varius metus vel urna porta porttitor. Nullam elementum id est in imperdiet. Mauris non augue ornare, pulvinar nisi sit amet, egestas ante. Vivamus neque mauris, iaculis maximus magna eget, commodo molestie massa. Donec tempor risus dictum, congue lorem vitae, sodales lacus. Pellentesque mi libero, venenatis et consequat eget, ornare id justo. Sed nunc sapien, malesuada ut sagittis ac, dapibus at arcu. Nunc tristique sapien blandit fermentum mattis. Nulla a turpis sapien. Donec non orci at felis rutrum mollis. Nulla quis suscipit ligula, ullamcorper fermentum leo. Proin justo sem, condimentum at tellus in, egestas eleifend odio.'),
	(5,1,'Proin ac Nisl Vel Dolor Posuere','2015-12-12 12:35:59','Aenean tincidunt eget augue sed egestas. Sed sit amet pharetra metus. Aenean scelerisque, sem in blandit rutrum, dolor nisi maximus ipsum, ut laoreet lorem dui vitae quam. Sed bibendum odio ultricies elit maximus, non vehicula ex lacinia. Ut condimentum sodales ultrices. Phasellus eu metus urna. Etiam sit amet mollis mauris, nec pharetra enim. Aenean iaculis lacus non tellus blandit pharetra. Proin sit amet justo eget ante sagittis tristique. Vestibulum luctus ipsum nisl, nec porttitor eros tristique sit amet.','Nunc fringilla purus purus, nec tincidunt diam fermentum nec. Quisque nec congue lectus. Maecenas suscipit maximus sapien, luctus venenatis tellus accumsan et. Pellentesque in ex sodales, aliquam leo nec, finibus nulla. Duis varius, augue sit amet molestie finibus, diam ante fermentum mi, sit amet vehicula nibh purus ut nunc. Ut congue turpis at nisl sollicitudin, sed eleifend purus aliquam. Suspendisse potenti. Proin ac nisl vel dolor posuere feugiat a sed nibh. Proin hendrerit quis nisl a dignissim. Maecenas volutpat, mi sit amet gravida rutrum, dui nibh cursus leo, et consectetur ante leo non urna. Nulla pretium eu orci et eleifend.'),
	(6,1,'Mauris Placerat Leo Ex','2015-11-04 12:35:59','Lorem ipsum dolor sit amet, consectetur adipiscing elit. In vel mauris at lacus tincidunt ornare. Mauris placerat leo ex, in fermentum sapien fermentum non. Etiam quis feugiat orci. Nam ut ex varius nisl sagittis tempus quis a sapien. Curabitur vel velit nisl. Etiam eu diam rhoncus, cursus justo eget, molestie sem.',''),
	(7,1,'Suspendisse Scelerisque Faucibus Tellus','2014-08-09 12:35:59','In vel mauris at lacus tincidunt ornare. Mauris placerat leo ex, in fermentum sapien fermentum non. Etiam quis feugiat orci. Nam ut ex varius nisl sagittis tempus quis a sapien. Curabitur vel velit nisl. Etiam eu diam rhoncus, cursus justo eget, molestie sem. Integer eget luctus augue, vitae consectetur nunc. Fusce faucibus sapien elit, sit amet aliquam lorem suscipit in. Etiam condimentum metus libero, eu elementum justo fermentum vel. Nulla in est at neque euismod fringilla. Nunc sit amet ullamcorper massa.','Aenean id accumsan magna. Vivamus felis nisl, dapibus sed hendrerit at, tempus sit amet sem. Vestibulum sed lacinia magna. Aenean at magna vitae diam egestas luctus non nec sapien. Sed at est ligula. Mauris consectetur, ante eget facilisis suscipit, diam urna commodo risus, a commodo metus libero at metus. Nam nisl tellus, gravida eget magna quis, posuere lobortis magna. In sodales orci et magna elementum blandit.\n\nMorbi ante quam, egestas at blandit nec, commodo eu lectus. Suspendisse scelerisque faucibus tellus, eu fringilla risus egestas quis. Vestibulum a metus sit amet metus pretium euismod. Donec venenatis feugiat felis, sed mattis mi fermentum ut. Quisque varius metus vel urna porta porttitor. Nullam elementum id est in imperdiet. Mauris non augue ornare, pulvinar nisi sit amet, egestas ante. Vivamus neque mauris, iaculis maximus magna eget, commodo molestie massa. Donec tempor risus dictum, congue lorem vitae, sodales lacus. Pellentesque mi libero, venenatis et consequat eget, ornare id justo. Sed nunc sapien, malesuada ut sagittis ac, dapibus at arcu. Nunc tristique sapien blandit fermentum mattis. Nulla a turpis sapien. Donec non orci at felis rutrum mollis. Nulla quis suscipit ligula, ullamcorper fermentum leo. Proin justo sem, condimentum at tellus in, egestas eleifend odio.');

/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table project_images
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project_images`;

CREATE TABLE `project_images` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `about_id` int(11) DEFAULT NULL,
  `file_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `project_images` WRITE;
/*!40000 ALTER TABLE `project_images` DISABLE KEYS */;

INSERT INTO `project_images` (`id`, `about_id`, `file_id`)
VALUES
	(1,1,1),
	(2,1,1),
	(3,1,1);

/*!40000 ALTER TABLE `project_images` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table project_milestones
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project_milestones`;

CREATE TABLE `project_milestones` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sort` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `duration` varchar(20) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `project_milestones` WRITE;
/*!40000 ALTER TABLE `project_milestones` DISABLE KEYS */;

INSERT INTO `project_milestones` (`id`, `sort`, `project_id`, `duration`, `description`)
VALUES
	(1,1,1,'Week 3','Vestibulum a metus sit amet metus pretium euismod. Donec venenatis feugiat felis, sed mattis mi fermentum ut. Quisque varius metus vel urna porta porttitor. Nullam elementum id est in imperdiet.'),
	(2,2,1,'Week 2','Vestibulum a metus sit amet metus pretium euismod. Donec venenatis feugiat felis, sed mattis mi fermentum ut. Quisque varius metus vel urna porta porttitor. Nullam elementum id est in imperdiet.'),
	(3,3,1,'Week 3','Vestibulum a metus sit amet metus pretium euismod. Donec venenatis feugiat felis, sed mattis mi fermentum ut. Quisque varius metus vel urna porta porttitor. Nullam elementum id est in imperdiet.');

/*!40000 ALTER TABLE `project_milestones` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table project_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project_types`;

CREATE TABLE `project_types` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sort` int(11) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `description` text,
  `slug` varchar(100) DEFAULT NULL,
  `image` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `project_types` WRITE;
/*!40000 ALTER TABLE `project_types` DISABLE KEYS */;

INSERT INTO `project_types` (`id`, `sort`, `title`, `description`, `slug`, `image`)
VALUES
	(1,0,'Interface Design','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi elementum, felis a ornare suscipit, justo quam mollis justo, sit amet lacinia sapien magna ut ante. Curabitur sed viverra justo, at rhoncus quam. Nullam vitae iaculis tellus, non viverra metus. Cras elementum tortor vitae faucibus cursus. Mauris eget libero urna. In in dolor nec enim venenatis accumsan vitae cursus augue. Vestibulum eget est mi. Suspendisse molestie pellentesque bibendum.','design',4),
	(2,1,'App Development','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi elementum, felis a ornare suscipit, justo quam mollis justo, sit amet lacinia sapien magna ut ante. Curabitur sed viverra justo, at rhoncus quam. Nullam vitae iaculis tellus, non viverra metus. Cras elementum tortor vitae faucibus cursus. Mauris eget libero urna. In in dolor nec enim venenatis accumsan vitae cursus augue. Vestibulum eget est mi. Suspendisse molestie pellentesque bibendum.','dev',4),
	(3,2,'Database Architecture','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi elementum, felis a ornare suscipit, justo quam mollis justo, sit amet lacinia sapien magna ut ante. Curabitur sed viverra justo, at rhoncus quam. Nullam vitae iaculis tellus, non viverra metus. Cras elementum tortor vitae faucibus cursus. Mauris eget libero urna. In in dolor nec enim venenatis accumsan vitae cursus augue. Vestibulum eget est mi. Suspendisse molestie pellentesque bibendum.','database',4),
	(4,3,'Content Management','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi elementum, felis a ornare suscipit, justo quam mollis justo, sit amet lacinia sapien magna ut ante. Curabitur sed viverra justo, at rhoncus quam. Nullam vitae iaculis tellus, non viverra metus. Cras elementum tortor vitae faucibus cursus. Mauris eget libero urna. In in dolor nec enim venenatis accumsan vitae cursus augue. Vestibulum eget est mi. Suspendisse molestie pellentesque bibendum.','cms',4),
	(5,4,'Wireframing','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi elementum, felis a ornare suscipit, justo quam mollis justo, sit amet lacinia sapien magna ut ante. Curabitur sed viverra justo, at rhoncus quam. Nullam vitae iaculis tellus, non viverra metus. Cras elementum tortor vitae faucibus cursus. Mauris eget libero urna. In in dolor nec enim venenatis accumsan vitae cursus augue. Vestibulum eget est mi. Suspendisse molestie pellentesque bibendum.','wireframe',4),
	(6,5,'Consulting','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi elementum, felis a ornare suscipit, justo quam mollis justo, sit amet lacinia sapien magna ut ante. Curabitur sed viverra justo, at rhoncus quam. Nullam vitae iaculis tellus, non viverra metus. Cras elementum tortor vitae faucibus cursus. Mauris eget libero urna. In in dolor nec enim venenatis accumsan vitae cursus augue. Vestibulum eget est mi. Suspendisse molestie pellentesque bibendum.','consult',4);

/*!40000 ALTER TABLE `project_types` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table projects
# ------------------------------------------------------------

DROP TABLE IF EXISTS `projects`;

CREATE TABLE `projects` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) DEFAULT '1',
  `title` varchar(200) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `case_study` tinyint(1) NOT NULL DEFAULT '0',
  `intro` text,
  `client` varchar(200) DEFAULT NULL,
  `project_duration` varchar(200) DEFAULT NULL,
  `technologies` varchar(200) DEFAULT NULL,
  `description` text,
  `hero_image` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;

INSERT INTO `projects` (`id`, `active`, `title`, `slug`, `type`, `case_study`, `intro`, `client`, `project_duration`, `technologies`, `description`, `hero_image`)
VALUES
	(1,1,'Project Title','project-title',1,1,'Morbi ante quam, egestas at blandit nec, commodo eu lectus. Suspendisse scelerisque faucibus tellus, eu fringilla risus egestas quis. Vestibulum a metus sit amet metus pretium euismod. Donec venenatis feugiat felis, sed mattis mi fermentum ut. Quisque varius metus vel urna porta porttitor.','Client Name','3 Months','Python, HTML, SASS, CSS, and Directus','<h1>Our Approach</h1><div><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ac turpis finibus, tempor sem id, tempus magna. Suspendisse porttitor lacinia elit eu dapibus. Etiam metus nunc, convallis ac eros vel, commodo vulputate lectus. Sed euismod augue id sodales volutpat. Nullam ornare, nibh in vehicula tristique, arcu odio dapibus nunc, sed maximus est nunc ac purus. <br><br>Suspendisse non turpis rutrum, vestibulum dolor sed, interdum ipsum. In consequat tempor felis, a commodo purus. Sed et dictum odio, vitae dictum augue. Phasellus eu vehicula orci.&nbsp;</span>Vivamus et maximus dui. Sed sit amet nisl at lectus vehicula vehicula eu tempor quam. Etiam at sapien felis. Nullam ut consequat massa, sed ultricies nisi. Duis nec elit feugiat, pharetra ex scelerisque, vehicula lorem. Cras ultricies faucibus eleifend. Duis efficitur nunc quis tristique sagittis. Aliquam gravida urna quis augue suscipit, ac elementum nisl convallis. Proin at sollicitudin ante.<br></div><div><br></div><div>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam finibus malesuada leo, a efficitur tellus interdum non. Nulla scelerisque nisi vel rutrum rutrum. In vel odio ut quam dignissim iaculis. Mauris tristique scelerisque massa in ullamcorper. Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat. Curabitur et diam laoreet risus aliquam consequat ut ut nunc. Vivamus iaculis augue eu rhoncus tempor. Praesent ex elit, tincidunt pulvinar sodales ac, semper vel libero. Cras facilisis sed lacus congue placerat.</div><div><br></div><h1>Problems Solved</h1><div><div>Nulla scelerisque nisi vel rutrum rutrum. In vel odio ut quam dignissim iaculis. Mauris tristique scelerisque massa in ullamcorper. Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat. Curabitur et diam laoreet risus aliquam consequat ut ut nunc. Vivamus iaculis augue eu rhoncus tempor. Praesent ex elit, tincidunt pulvinar sodales ac, semper vel libero. Cras facilisis sed lacus congue placerat.</div></div><div><br></div><div><br></div><h3>Team &amp; Collaborators</h3><div>Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat.<br></div><div><br></div><ul><li>Person One</li><li>Person&nbsp;Two</li><li>Person&nbsp;Three</li></ul>',3),
	(2,1,'Project Title','project-title',1,1,'Morbi ante quam, egestas at blandit nec, commodo eu lectus. Suspendisse scelerisque faucibus tellus, eu fringilla risus egestas quis. Vestibulum a metus sit amet metus pretium euismod. Donec venenatis feugiat felis, sed mattis mi fermentum ut. Quisque varius metus vel urna porta porttitor.','Client Name','3 Months','Python, HTML, SASS, CSS, and Directus','<h1>Our Approach</h1><div><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ac turpis finibus, tempor sem id, tempus magna. Suspendisse porttitor lacinia elit eu dapibus. Etiam metus nunc, convallis ac eros vel, commodo vulputate lectus. Sed euismod augue id sodales volutpat. Nullam ornare, nibh in vehicula tristique, arcu odio dapibus nunc, sed maximus est nunc ac purus. <br><br>Suspendisse non turpis rutrum, vestibulum dolor sed, interdum ipsum. In consequat tempor felis, a commodo purus. Sed et dictum odio, vitae dictum augue. Phasellus eu vehicula orci.&nbsp;</span>Vivamus et maximus dui. Sed sit amet nisl at lectus vehicula vehicula eu tempor quam. Etiam at sapien felis. Nullam ut consequat massa, sed ultricies nisi. Duis nec elit feugiat, pharetra ex scelerisque, vehicula lorem. Cras ultricies faucibus eleifend. Duis efficitur nunc quis tristique sagittis. Aliquam gravida urna quis augue suscipit, ac elementum nisl convallis. Proin at sollicitudin ante.<br></div><div><br></div><div>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam finibus malesuada leo, a efficitur tellus interdum non. Nulla scelerisque nisi vel rutrum rutrum. In vel odio ut quam dignissim iaculis. Mauris tristique scelerisque massa in ullamcorper. Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat. Curabitur et diam laoreet risus aliquam consequat ut ut nunc. Vivamus iaculis augue eu rhoncus tempor. Praesent ex elit, tincidunt pulvinar sodales ac, semper vel libero. Cras facilisis sed lacus congue placerat.</div><div><br></div><h1>Problems Solved</h1><div><div>Nulla scelerisque nisi vel rutrum rutrum. In vel odio ut quam dignissim iaculis. Mauris tristique scelerisque massa in ullamcorper. Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat. Curabitur et diam laoreet risus aliquam consequat ut ut nunc. Vivamus iaculis augue eu rhoncus tempor. Praesent ex elit, tincidunt pulvinar sodales ac, semper vel libero. Cras facilisis sed lacus congue placerat.</div></div><div><br></div><div><br></div><h3>Team &amp; Collaborators</h3><div>Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat.<br></div><div><br></div><ul><li>Person One</li><li>Person&nbsp;Two</li><li>Person&nbsp;Three</li></ul>',3),
	(3,1,'Project Title','project-title',1,1,'Morbi ante quam, egestas at blandit nec, commodo eu lectus. Suspendisse scelerisque faucibus tellus, eu fringilla risus egestas quis. Vestibulum a metus sit amet metus pretium euismod. Donec venenatis feugiat felis, sed mattis mi fermentum ut. Quisque varius metus vel urna porta porttitor.','Client Name','3 Months','Python, HTML, SASS, CSS, and Directus','<h1>Our Approach</h1><div><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ac turpis finibus, tempor sem id, tempus magna. Suspendisse porttitor lacinia elit eu dapibus. Etiam metus nunc, convallis ac eros vel, commodo vulputate lectus. Sed euismod augue id sodales volutpat. Nullam ornare, nibh in vehicula tristique, arcu odio dapibus nunc, sed maximus est nunc ac purus. <br><br>Suspendisse non turpis rutrum, vestibulum dolor sed, interdum ipsum. In consequat tempor felis, a commodo purus. Sed et dictum odio, vitae dictum augue. Phasellus eu vehicula orci.&nbsp;</span>Vivamus et maximus dui. Sed sit amet nisl at lectus vehicula vehicula eu tempor quam. Etiam at sapien felis. Nullam ut consequat massa, sed ultricies nisi. Duis nec elit feugiat, pharetra ex scelerisque, vehicula lorem. Cras ultricies faucibus eleifend. Duis efficitur nunc quis tristique sagittis. Aliquam gravida urna quis augue suscipit, ac elementum nisl convallis. Proin at sollicitudin ante.<br></div><div><br></div><div>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam finibus malesuada leo, a efficitur tellus interdum non. Nulla scelerisque nisi vel rutrum rutrum. In vel odio ut quam dignissim iaculis. Mauris tristique scelerisque massa in ullamcorper. Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat. Curabitur et diam laoreet risus aliquam consequat ut ut nunc. Vivamus iaculis augue eu rhoncus tempor. Praesent ex elit, tincidunt pulvinar sodales ac, semper vel libero. Cras facilisis sed lacus congue placerat.</div><div><br></div><h1>Problems Solved</h1><div><div>Nulla scelerisque nisi vel rutrum rutrum. In vel odio ut quam dignissim iaculis. Mauris tristique scelerisque massa in ullamcorper. Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat. Curabitur et diam laoreet risus aliquam consequat ut ut nunc. Vivamus iaculis augue eu rhoncus tempor. Praesent ex elit, tincidunt pulvinar sodales ac, semper vel libero. Cras facilisis sed lacus congue placerat.</div></div><div><br></div><div><br></div><h3>Team &amp; Collaborators</h3><div>Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat.<br></div><div><br></div><ul><li>Person One</li><li>Person&nbsp;Two</li><li>Person&nbsp;Three</li></ul>',3),
	(4,1,'Project Title','project-title',1,1,'Morbi ante quam, egestas at blandit nec, commodo eu lectus. Suspendisse scelerisque faucibus tellus, eu fringilla risus egestas quis. Vestibulum a metus sit amet metus pretium euismod. Donec venenatis feugiat felis, sed mattis mi fermentum ut. Quisque varius metus vel urna porta porttitor.','Client Name','3 Months','Python, HTML, SASS, CSS, and Directus','<h1>Our Approach</h1><div><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ac turpis finibus, tempor sem id, tempus magna. Suspendisse porttitor lacinia elit eu dapibus. Etiam metus nunc, convallis ac eros vel, commodo vulputate lectus. Sed euismod augue id sodales volutpat. Nullam ornare, nibh in vehicula tristique, arcu odio dapibus nunc, sed maximus est nunc ac purus. <br><br>Suspendisse non turpis rutrum, vestibulum dolor sed, interdum ipsum. In consequat tempor felis, a commodo purus. Sed et dictum odio, vitae dictum augue. Phasellus eu vehicula orci.&nbsp;</span>Vivamus et maximus dui. Sed sit amet nisl at lectus vehicula vehicula eu tempor quam. Etiam at sapien felis. Nullam ut consequat massa, sed ultricies nisi. Duis nec elit feugiat, pharetra ex scelerisque, vehicula lorem. Cras ultricies faucibus eleifend. Duis efficitur nunc quis tristique sagittis. Aliquam gravida urna quis augue suscipit, ac elementum nisl convallis. Proin at sollicitudin ante.<br></div><div><br></div><div>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam finibus malesuada leo, a efficitur tellus interdum non. Nulla scelerisque nisi vel rutrum rutrum. In vel odio ut quam dignissim iaculis. Mauris tristique scelerisque massa in ullamcorper. Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat. Curabitur et diam laoreet risus aliquam consequat ut ut nunc. Vivamus iaculis augue eu rhoncus tempor. Praesent ex elit, tincidunt pulvinar sodales ac, semper vel libero. Cras facilisis sed lacus congue placerat.</div><div><br></div><h1>Problems Solved</h1><div><div>Nulla scelerisque nisi vel rutrum rutrum. In vel odio ut quam dignissim iaculis. Mauris tristique scelerisque massa in ullamcorper. Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat. Curabitur et diam laoreet risus aliquam consequat ut ut nunc. Vivamus iaculis augue eu rhoncus tempor. Praesent ex elit, tincidunt pulvinar sodales ac, semper vel libero. Cras facilisis sed lacus congue placerat.</div></div><div><br></div><div><br></div><h3>Team &amp; Collaborators</h3><div>Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat.<br></div><div><br></div><ul><li>Person One</li><li>Person&nbsp;Two</li><li>Person&nbsp;Three</li></ul>',3),
	(5,1,'Project Title','project-title',1,1,'Morbi ante quam, egestas at blandit nec, commodo eu lectus. Suspendisse scelerisque faucibus tellus, eu fringilla risus egestas quis. Vestibulum a metus sit amet metus pretium euismod. Donec venenatis feugiat felis, sed mattis mi fermentum ut. Quisque varius metus vel urna porta porttitor.','Client Name','3 Months','Python, HTML, SASS, CSS, and Directus','<h1>Our Approach</h1><div><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ac turpis finibus, tempor sem id, tempus magna. Suspendisse porttitor lacinia elit eu dapibus. Etiam metus nunc, convallis ac eros vel, commodo vulputate lectus. Sed euismod augue id sodales volutpat. Nullam ornare, nibh in vehicula tristique, arcu odio dapibus nunc, sed maximus est nunc ac purus. <br><br>Suspendisse non turpis rutrum, vestibulum dolor sed, interdum ipsum. In consequat tempor felis, a commodo purus. Sed et dictum odio, vitae dictum augue. Phasellus eu vehicula orci.&nbsp;</span>Vivamus et maximus dui. Sed sit amet nisl at lectus vehicula vehicula eu tempor quam. Etiam at sapien felis. Nullam ut consequat massa, sed ultricies nisi. Duis nec elit feugiat, pharetra ex scelerisque, vehicula lorem. Cras ultricies faucibus eleifend. Duis efficitur nunc quis tristique sagittis. Aliquam gravida urna quis augue suscipit, ac elementum nisl convallis. Proin at sollicitudin ante.<br></div><div><br></div><div>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam finibus malesuada leo, a efficitur tellus interdum non. Nulla scelerisque nisi vel rutrum rutrum. In vel odio ut quam dignissim iaculis. Mauris tristique scelerisque massa in ullamcorper. Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat. Curabitur et diam laoreet risus aliquam consequat ut ut nunc. Vivamus iaculis augue eu rhoncus tempor. Praesent ex elit, tincidunt pulvinar sodales ac, semper vel libero. Cras facilisis sed lacus congue placerat.</div><div><br></div><h1>Problems Solved</h1><div><div>Nulla scelerisque nisi vel rutrum rutrum. In vel odio ut quam dignissim iaculis. Mauris tristique scelerisque massa in ullamcorper. Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat. Curabitur et diam laoreet risus aliquam consequat ut ut nunc. Vivamus iaculis augue eu rhoncus tempor. Praesent ex elit, tincidunt pulvinar sodales ac, semper vel libero. Cras facilisis sed lacus congue placerat.</div></div><div><br></div><div><br></div><h3>Team &amp; Collaborators</h3><div>Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat.<br></div><div><br></div><ul><li>Person One</li><li>Person&nbsp;Two</li><li>Person&nbsp;Three</li></ul>',3),
	(6,1,'Project Title','project-title',2,1,'Morbi ante quam, egestas at blandit nec, commodo eu lectus. Suspendisse scelerisque faucibus tellus, eu fringilla risus egestas quis. Vestibulum a metus sit amet metus pretium euismod. Donec venenatis feugiat felis, sed mattis mi fermentum ut. Quisque varius metus vel urna porta porttitor.','Client Name','3 Months','Python, HTML, SASS, CSS, and Directus','<h1>Our Approach</h1><div><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ac turpis finibus, tempor sem id, tempus magna. Suspendisse porttitor lacinia elit eu dapibus. Etiam metus nunc, convallis ac eros vel, commodo vulputate lectus. Sed euismod augue id sodales volutpat. Nullam ornare, nibh in vehicula tristique, arcu odio dapibus nunc, sed maximus est nunc ac purus. <br><br>Suspendisse non turpis rutrum, vestibulum dolor sed, interdum ipsum. In consequat tempor felis, a commodo purus. Sed et dictum odio, vitae dictum augue. Phasellus eu vehicula orci.&nbsp;</span>Vivamus et maximus dui. Sed sit amet nisl at lectus vehicula vehicula eu tempor quam. Etiam at sapien felis. Nullam ut consequat massa, sed ultricies nisi. Duis nec elit feugiat, pharetra ex scelerisque, vehicula lorem. Cras ultricies faucibus eleifend. Duis efficitur nunc quis tristique sagittis. Aliquam gravida urna quis augue suscipit, ac elementum nisl convallis. Proin at sollicitudin ante.<br></div><div><br></div><div>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam finibus malesuada leo, a efficitur tellus interdum non. Nulla scelerisque nisi vel rutrum rutrum. In vel odio ut quam dignissim iaculis. Mauris tristique scelerisque massa in ullamcorper. Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat. Curabitur et diam laoreet risus aliquam consequat ut ut nunc. Vivamus iaculis augue eu rhoncus tempor. Praesent ex elit, tincidunt pulvinar sodales ac, semper vel libero. Cras facilisis sed lacus congue placerat.</div><div><br></div><h1>Problems Solved</h1><div><div>Nulla scelerisque nisi vel rutrum rutrum. In vel odio ut quam dignissim iaculis. Mauris tristique scelerisque massa in ullamcorper. Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat. Curabitur et diam laoreet risus aliquam consequat ut ut nunc. Vivamus iaculis augue eu rhoncus tempor. Praesent ex elit, tincidunt pulvinar sodales ac, semper vel libero. Cras facilisis sed lacus congue placerat.</div></div><div><br></div><div><br></div><h3>Team &amp; Collaborators</h3><div>Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat.<br></div><div><br></div><ul><li>Person One</li><li>Person&nbsp;Two</li><li>Person&nbsp;Three</li></ul>',3),
	(7,1,'Project Title','project-title',2,1,'Morbi ante quam, egestas at blandit nec, commodo eu lectus. Suspendisse scelerisque faucibus tellus, eu fringilla risus egestas quis. Vestibulum a metus sit amet metus pretium euismod. Donec venenatis feugiat felis, sed mattis mi fermentum ut. Quisque varius metus vel urna porta porttitor.','Client Name','3 Months','Python, HTML, SASS, CSS, and Directus','<h1>Our Approach</h1><div><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ac turpis finibus, tempor sem id, tempus magna. Suspendisse porttitor lacinia elit eu dapibus. Etiam metus nunc, convallis ac eros vel, commodo vulputate lectus. Sed euismod augue id sodales volutpat. Nullam ornare, nibh in vehicula tristique, arcu odio dapibus nunc, sed maximus est nunc ac purus. <br><br>Suspendisse non turpis rutrum, vestibulum dolor sed, interdum ipsum. In consequat tempor felis, a commodo purus. Sed et dictum odio, vitae dictum augue. Phasellus eu vehicula orci.&nbsp;</span>Vivamus et maximus dui. Sed sit amet nisl at lectus vehicula vehicula eu tempor quam. Etiam at sapien felis. Nullam ut consequat massa, sed ultricies nisi. Duis nec elit feugiat, pharetra ex scelerisque, vehicula lorem. Cras ultricies faucibus eleifend. Duis efficitur nunc quis tristique sagittis. Aliquam gravida urna quis augue suscipit, ac elementum nisl convallis. Proin at sollicitudin ante.<br></div><div><br></div><div>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam finibus malesuada leo, a efficitur tellus interdum non. Nulla scelerisque nisi vel rutrum rutrum. In vel odio ut quam dignissim iaculis. Mauris tristique scelerisque massa in ullamcorper. Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat. Curabitur et diam laoreet risus aliquam consequat ut ut nunc. Vivamus iaculis augue eu rhoncus tempor. Praesent ex elit, tincidunt pulvinar sodales ac, semper vel libero. Cras facilisis sed lacus congue placerat.</div><div><br></div><h1>Problems Solved</h1><div><div>Nulla scelerisque nisi vel rutrum rutrum. In vel odio ut quam dignissim iaculis. Mauris tristique scelerisque massa in ullamcorper. Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat. Curabitur et diam laoreet risus aliquam consequat ut ut nunc. Vivamus iaculis augue eu rhoncus tempor. Praesent ex elit, tincidunt pulvinar sodales ac, semper vel libero. Cras facilisis sed lacus congue placerat.</div></div><div><br></div><div><br></div><h3>Team &amp; Collaborators</h3><div>Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat.<br></div><div><br></div><ul><li>Person One</li><li>Person&nbsp;Two</li><li>Person&nbsp;Three</li></ul>',3),
	(8,1,'Project Title','project-title',2,1,'Morbi ante quam, egestas at blandit nec, commodo eu lectus. Suspendisse scelerisque faucibus tellus, eu fringilla risus egestas quis. Vestibulum a metus sit amet metus pretium euismod. Donec venenatis feugiat felis, sed mattis mi fermentum ut. Quisque varius metus vel urna porta porttitor.','Client Name','3 Months','Python, HTML, SASS, CSS, and Directus','<h1>Our Approach</h1><div><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ac turpis finibus, tempor sem id, tempus magna. Suspendisse porttitor lacinia elit eu dapibus. Etiam metus nunc, convallis ac eros vel, commodo vulputate lectus. Sed euismod augue id sodales volutpat. Nullam ornare, nibh in vehicula tristique, arcu odio dapibus nunc, sed maximus est nunc ac purus. <br><br>Suspendisse non turpis rutrum, vestibulum dolor sed, interdum ipsum. In consequat tempor felis, a commodo purus. Sed et dictum odio, vitae dictum augue. Phasellus eu vehicula orci.&nbsp;</span>Vivamus et maximus dui. Sed sit amet nisl at lectus vehicula vehicula eu tempor quam. Etiam at sapien felis. Nullam ut consequat massa, sed ultricies nisi. Duis nec elit feugiat, pharetra ex scelerisque, vehicula lorem. Cras ultricies faucibus eleifend. Duis efficitur nunc quis tristique sagittis. Aliquam gravida urna quis augue suscipit, ac elementum nisl convallis. Proin at sollicitudin ante.<br></div><div><br></div><div>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam finibus malesuada leo, a efficitur tellus interdum non. Nulla scelerisque nisi vel rutrum rutrum. In vel odio ut quam dignissim iaculis. Mauris tristique scelerisque massa in ullamcorper. Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat. Curabitur et diam laoreet risus aliquam consequat ut ut nunc. Vivamus iaculis augue eu rhoncus tempor. Praesent ex elit, tincidunt pulvinar sodales ac, semper vel libero. Cras facilisis sed lacus congue placerat.</div><div><br></div><h1>Problems Solved</h1><div><div>Nulla scelerisque nisi vel rutrum rutrum. In vel odio ut quam dignissim iaculis. Mauris tristique scelerisque massa in ullamcorper. Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat. Curabitur et diam laoreet risus aliquam consequat ut ut nunc. Vivamus iaculis augue eu rhoncus tempor. Praesent ex elit, tincidunt pulvinar sodales ac, semper vel libero. Cras facilisis sed lacus congue placerat.</div></div><div><br></div><div><br></div><h3>Team &amp; Collaborators</h3><div>Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat.<br></div><div><br></div><ul><li>Person One</li><li>Person&nbsp;Two</li><li>Person&nbsp;Three</li></ul>',3),
	(9,1,'Project Title','project-title',2,1,'Morbi ante quam, egestas at blandit nec, commodo eu lectus. Suspendisse scelerisque faucibus tellus, eu fringilla risus egestas quis. Vestibulum a metus sit amet metus pretium euismod. Donec venenatis feugiat felis, sed mattis mi fermentum ut. Quisque varius metus vel urna porta porttitor.','Client Name','3 Months','Python, HTML, SASS, CSS, and Directus','<h1>Our Approach</h1><div><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ac turpis finibus, tempor sem id, tempus magna. Suspendisse porttitor lacinia elit eu dapibus. Etiam metus nunc, convallis ac eros vel, commodo vulputate lectus. Sed euismod augue id sodales volutpat. Nullam ornare, nibh in vehicula tristique, arcu odio dapibus nunc, sed maximus est nunc ac purus. <br><br>Suspendisse non turpis rutrum, vestibulum dolor sed, interdum ipsum. In consequat tempor felis, a commodo purus. Sed et dictum odio, vitae dictum augue. Phasellus eu vehicula orci.&nbsp;</span>Vivamus et maximus dui. Sed sit amet nisl at lectus vehicula vehicula eu tempor quam. Etiam at sapien felis. Nullam ut consequat massa, sed ultricies nisi. Duis nec elit feugiat, pharetra ex scelerisque, vehicula lorem. Cras ultricies faucibus eleifend. Duis efficitur nunc quis tristique sagittis. Aliquam gravida urna quis augue suscipit, ac elementum nisl convallis. Proin at sollicitudin ante.<br></div><div><br></div><div>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam finibus malesuada leo, a efficitur tellus interdum non. Nulla scelerisque nisi vel rutrum rutrum. In vel odio ut quam dignissim iaculis. Mauris tristique scelerisque massa in ullamcorper. Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat. Curabitur et diam laoreet risus aliquam consequat ut ut nunc. Vivamus iaculis augue eu rhoncus tempor. Praesent ex elit, tincidunt pulvinar sodales ac, semper vel libero. Cras facilisis sed lacus congue placerat.</div><div><br></div><h1>Problems Solved</h1><div><div>Nulla scelerisque nisi vel rutrum rutrum. In vel odio ut quam dignissim iaculis. Mauris tristique scelerisque massa in ullamcorper. Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat. Curabitur et diam laoreet risus aliquam consequat ut ut nunc. Vivamus iaculis augue eu rhoncus tempor. Praesent ex elit, tincidunt pulvinar sodales ac, semper vel libero. Cras facilisis sed lacus congue placerat.</div></div><div><br></div><div><br></div><h3>Team &amp; Collaborators</h3><div>Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat.<br></div><div><br></div><ul><li>Person One</li><li>Person&nbsp;Two</li><li>Person&nbsp;Three</li></ul>',3),
	(10,1,'Project Title','project-title',2,1,'Morbi ante quam, egestas at blandit nec, commodo eu lectus. Suspendisse scelerisque faucibus tellus, eu fringilla risus egestas quis. Vestibulum a metus sit amet metus pretium euismod. Donec venenatis feugiat felis, sed mattis mi fermentum ut. Quisque varius metus vel urna porta porttitor.','Client Name','3 Months','Python, HTML, SASS, CSS, and Directus','<h1>Our Approach</h1><div><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ac turpis finibus, tempor sem id, tempus magna. Suspendisse porttitor lacinia elit eu dapibus. Etiam metus nunc, convallis ac eros vel, commodo vulputate lectus. Sed euismod augue id sodales volutpat. Nullam ornare, nibh in vehicula tristique, arcu odio dapibus nunc, sed maximus est nunc ac purus. <br><br>Suspendisse non turpis rutrum, vestibulum dolor sed, interdum ipsum. In consequat tempor felis, a commodo purus. Sed et dictum odio, vitae dictum augue. Phasellus eu vehicula orci.&nbsp;</span>Vivamus et maximus dui. Sed sit amet nisl at lectus vehicula vehicula eu tempor quam. Etiam at sapien felis. Nullam ut consequat massa, sed ultricies nisi. Duis nec elit feugiat, pharetra ex scelerisque, vehicula lorem. Cras ultricies faucibus eleifend. Duis efficitur nunc quis tristique sagittis. Aliquam gravida urna quis augue suscipit, ac elementum nisl convallis. Proin at sollicitudin ante.<br></div><div><br></div><div>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam finibus malesuada leo, a efficitur tellus interdum non. Nulla scelerisque nisi vel rutrum rutrum. In vel odio ut quam dignissim iaculis. Mauris tristique scelerisque massa in ullamcorper. Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat. Curabitur et diam laoreet risus aliquam consequat ut ut nunc. Vivamus iaculis augue eu rhoncus tempor. Praesent ex elit, tincidunt pulvinar sodales ac, semper vel libero. Cras facilisis sed lacus congue placerat.</div><div><br></div><h1>Problems Solved</h1><div><div>Nulla scelerisque nisi vel rutrum rutrum. In vel odio ut quam dignissim iaculis. Mauris tristique scelerisque massa in ullamcorper. Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat. Curabitur et diam laoreet risus aliquam consequat ut ut nunc. Vivamus iaculis augue eu rhoncus tempor. Praesent ex elit, tincidunt pulvinar sodales ac, semper vel libero. Cras facilisis sed lacus congue placerat.</div></div><div><br></div><div><br></div><h3>Team &amp; Collaborators</h3><div>Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat.<br></div><div><br></div><ul><li>Person One</li><li>Person&nbsp;Two</li><li>Person&nbsp;Three</li></ul>',3),
	(11,1,'Project Title','project-title',2,1,'Morbi ante quam, egestas at blandit nec, commodo eu lectus. Suspendisse scelerisque faucibus tellus, eu fringilla risus egestas quis. Vestibulum a metus sit amet metus pretium euismod. Donec venenatis feugiat felis, sed mattis mi fermentum ut. Quisque varius metus vel urna porta porttitor.','Client Name','3 Months','Python, HTML, SASS, CSS, and Directus','<h1>Our Approach</h1><div><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ac turpis finibus, tempor sem id, tempus magna. Suspendisse porttitor lacinia elit eu dapibus. Etiam metus nunc, convallis ac eros vel, commodo vulputate lectus. Sed euismod augue id sodales volutpat. Nullam ornare, nibh in vehicula tristique, arcu odio dapibus nunc, sed maximus est nunc ac purus. <br><br>Suspendisse non turpis rutrum, vestibulum dolor sed, interdum ipsum. In consequat tempor felis, a commodo purus. Sed et dictum odio, vitae dictum augue. Phasellus eu vehicula orci.&nbsp;</span>Vivamus et maximus dui. Sed sit amet nisl at lectus vehicula vehicula eu tempor quam. Etiam at sapien felis. Nullam ut consequat massa, sed ultricies nisi. Duis nec elit feugiat, pharetra ex scelerisque, vehicula lorem. Cras ultricies faucibus eleifend. Duis efficitur nunc quis tristique sagittis. Aliquam gravida urna quis augue suscipit, ac elementum nisl convallis. Proin at sollicitudin ante.<br></div><div><br></div><div>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam finibus malesuada leo, a efficitur tellus interdum non. Nulla scelerisque nisi vel rutrum rutrum. In vel odio ut quam dignissim iaculis. Mauris tristique scelerisque massa in ullamcorper. Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat. Curabitur et diam laoreet risus aliquam consequat ut ut nunc. Vivamus iaculis augue eu rhoncus tempor. Praesent ex elit, tincidunt pulvinar sodales ac, semper vel libero. Cras facilisis sed lacus congue placerat.</div><div><br></div><h1>Problems Solved</h1><div><div>Nulla scelerisque nisi vel rutrum rutrum. In vel odio ut quam dignissim iaculis. Mauris tristique scelerisque massa in ullamcorper. Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat. Curabitur et diam laoreet risus aliquam consequat ut ut nunc. Vivamus iaculis augue eu rhoncus tempor. Praesent ex elit, tincidunt pulvinar sodales ac, semper vel libero. Cras facilisis sed lacus congue placerat.</div></div><div><br></div><div><br></div><h3>Team &amp; Collaborators</h3><div>Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat.<br></div><div><br></div><ul><li>Person One</li><li>Person&nbsp;Two</li><li>Person&nbsp;Three</li></ul>',3),
	(12,1,'Project Title','project-title',3,1,'Morbi ante quam, egestas at blandit nec, commodo eu lectus. Suspendisse scelerisque faucibus tellus, eu fringilla risus egestas quis. Vestibulum a metus sit amet metus pretium euismod. Donec venenatis feugiat felis, sed mattis mi fermentum ut. Quisque varius metus vel urna porta porttitor.','Client Name','3 Months','Python, HTML, SASS, CSS, and Directus','<h1>Our Approach</h1><div><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ac turpis finibus, tempor sem id, tempus magna. Suspendisse porttitor lacinia elit eu dapibus. Etiam metus nunc, convallis ac eros vel, commodo vulputate lectus. Sed euismod augue id sodales volutpat. Nullam ornare, nibh in vehicula tristique, arcu odio dapibus nunc, sed maximus est nunc ac purus. <br><br>Suspendisse non turpis rutrum, vestibulum dolor sed, interdum ipsum. In consequat tempor felis, a commodo purus. Sed et dictum odio, vitae dictum augue. Phasellus eu vehicula orci.&nbsp;</span>Vivamus et maximus dui. Sed sit amet nisl at lectus vehicula vehicula eu tempor quam. Etiam at sapien felis. Nullam ut consequat massa, sed ultricies nisi. Duis nec elit feugiat, pharetra ex scelerisque, vehicula lorem. Cras ultricies faucibus eleifend. Duis efficitur nunc quis tristique sagittis. Aliquam gravida urna quis augue suscipit, ac elementum nisl convallis. Proin at sollicitudin ante.<br></div><div><br></div><div>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam finibus malesuada leo, a efficitur tellus interdum non. Nulla scelerisque nisi vel rutrum rutrum. In vel odio ut quam dignissim iaculis. Mauris tristique scelerisque massa in ullamcorper. Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat. Curabitur et diam laoreet risus aliquam consequat ut ut nunc. Vivamus iaculis augue eu rhoncus tempor. Praesent ex elit, tincidunt pulvinar sodales ac, semper vel libero. Cras facilisis sed lacus congue placerat.</div><div><br></div><h1>Problems Solved</h1><div><div>Nulla scelerisque nisi vel rutrum rutrum. In vel odio ut quam dignissim iaculis. Mauris tristique scelerisque massa in ullamcorper. Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat. Curabitur et diam laoreet risus aliquam consequat ut ut nunc. Vivamus iaculis augue eu rhoncus tempor. Praesent ex elit, tincidunt pulvinar sodales ac, semper vel libero. Cras facilisis sed lacus congue placerat.</div></div><div><br></div><div><br></div><h3>Team &amp; Collaborators</h3><div>Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat.<br></div><div><br></div><ul><li>Person One</li><li>Person&nbsp;Two</li><li>Person&nbsp;Three</li></ul>',3),
	(13,1,'Project Title','project-title',3,1,'Morbi ante quam, egestas at blandit nec, commodo eu lectus. Suspendisse scelerisque faucibus tellus, eu fringilla risus egestas quis. Vestibulum a metus sit amet metus pretium euismod. Donec venenatis feugiat felis, sed mattis mi fermentum ut. Quisque varius metus vel urna porta porttitor.','Client Name','3 Months','Python, HTML, SASS, CSS, and Directus','<h1>Our Approach</h1><div><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ac turpis finibus, tempor sem id, tempus magna. Suspendisse porttitor lacinia elit eu dapibus. Etiam metus nunc, convallis ac eros vel, commodo vulputate lectus. Sed euismod augue id sodales volutpat. Nullam ornare, nibh in vehicula tristique, arcu odio dapibus nunc, sed maximus est nunc ac purus. <br><br>Suspendisse non turpis rutrum, vestibulum dolor sed, interdum ipsum. In consequat tempor felis, a commodo purus. Sed et dictum odio, vitae dictum augue. Phasellus eu vehicula orci.&nbsp;</span>Vivamus et maximus dui. Sed sit amet nisl at lectus vehicula vehicula eu tempor quam. Etiam at sapien felis. Nullam ut consequat massa, sed ultricies nisi. Duis nec elit feugiat, pharetra ex scelerisque, vehicula lorem. Cras ultricies faucibus eleifend. Duis efficitur nunc quis tristique sagittis. Aliquam gravida urna quis augue suscipit, ac elementum nisl convallis. Proin at sollicitudin ante.<br></div><div><br></div><div>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam finibus malesuada leo, a efficitur tellus interdum non. Nulla scelerisque nisi vel rutrum rutrum. In vel odio ut quam dignissim iaculis. Mauris tristique scelerisque massa in ullamcorper. Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat. Curabitur et diam laoreet risus aliquam consequat ut ut nunc. Vivamus iaculis augue eu rhoncus tempor. Praesent ex elit, tincidunt pulvinar sodales ac, semper vel libero. Cras facilisis sed lacus congue placerat.</div><div><br></div><h1>Problems Solved</h1><div><div>Nulla scelerisque nisi vel rutrum rutrum. In vel odio ut quam dignissim iaculis. Mauris tristique scelerisque massa in ullamcorper. Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat. Curabitur et diam laoreet risus aliquam consequat ut ut nunc. Vivamus iaculis augue eu rhoncus tempor. Praesent ex elit, tincidunt pulvinar sodales ac, semper vel libero. Cras facilisis sed lacus congue placerat.</div></div><div><br></div><div><br></div><h3>Team &amp; Collaborators</h3><div>Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat.<br></div><div><br></div><ul><li>Person One</li><li>Person&nbsp;Two</li><li>Person&nbsp;Three</li></ul>',3),
	(14,1,'Project Title','project-title',3,1,'Morbi ante quam, egestas at blandit nec, commodo eu lectus. Suspendisse scelerisque faucibus tellus, eu fringilla risus egestas quis. Vestibulum a metus sit amet metus pretium euismod. Donec venenatis feugiat felis, sed mattis mi fermentum ut. Quisque varius metus vel urna porta porttitor.','Client Name','3 Months','Python, HTML, SASS, CSS, and Directus','<h1>Our Approach</h1><div><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ac turpis finibus, tempor sem id, tempus magna. Suspendisse porttitor lacinia elit eu dapibus. Etiam metus nunc, convallis ac eros vel, commodo vulputate lectus. Sed euismod augue id sodales volutpat. Nullam ornare, nibh in vehicula tristique, arcu odio dapibus nunc, sed maximus est nunc ac purus. <br><br>Suspendisse non turpis rutrum, vestibulum dolor sed, interdum ipsum. In consequat tempor felis, a commodo purus. Sed et dictum odio, vitae dictum augue. Phasellus eu vehicula orci.&nbsp;</span>Vivamus et maximus dui. Sed sit amet nisl at lectus vehicula vehicula eu tempor quam. Etiam at sapien felis. Nullam ut consequat massa, sed ultricies nisi. Duis nec elit feugiat, pharetra ex scelerisque, vehicula lorem. Cras ultricies faucibus eleifend. Duis efficitur nunc quis tristique sagittis. Aliquam gravida urna quis augue suscipit, ac elementum nisl convallis. Proin at sollicitudin ante.<br></div><div><br></div><div>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam finibus malesuada leo, a efficitur tellus interdum non. Nulla scelerisque nisi vel rutrum rutrum. In vel odio ut quam dignissim iaculis. Mauris tristique scelerisque massa in ullamcorper. Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat. Curabitur et diam laoreet risus aliquam consequat ut ut nunc. Vivamus iaculis augue eu rhoncus tempor. Praesent ex elit, tincidunt pulvinar sodales ac, semper vel libero. Cras facilisis sed lacus congue placerat.</div><div><br></div><h1>Problems Solved</h1><div><div>Nulla scelerisque nisi vel rutrum rutrum. In vel odio ut quam dignissim iaculis. Mauris tristique scelerisque massa in ullamcorper. Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat. Curabitur et diam laoreet risus aliquam consequat ut ut nunc. Vivamus iaculis augue eu rhoncus tempor. Praesent ex elit, tincidunt pulvinar sodales ac, semper vel libero. Cras facilisis sed lacus congue placerat.</div></div><div><br></div><div><br></div><h3>Team &amp; Collaborators</h3><div>Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat.<br></div><div><br></div><ul><li>Person One</li><li>Person&nbsp;Two</li><li>Person&nbsp;Three</li></ul>',3),
	(15,1,'Project Title','project-title',3,1,'Morbi ante quam, egestas at blandit nec, commodo eu lectus. Suspendisse scelerisque faucibus tellus, eu fringilla risus egestas quis. Vestibulum a metus sit amet metus pretium euismod. Donec venenatis feugiat felis, sed mattis mi fermentum ut. Quisque varius metus vel urna porta porttitor.','Client Name','3 Months','Python, HTML, SASS, CSS, and Directus','<h1>Our Approach</h1><div><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ac turpis finibus, tempor sem id, tempus magna. Suspendisse porttitor lacinia elit eu dapibus. Etiam metus nunc, convallis ac eros vel, commodo vulputate lectus. Sed euismod augue id sodales volutpat. Nullam ornare, nibh in vehicula tristique, arcu odio dapibus nunc, sed maximus est nunc ac purus. <br><br>Suspendisse non turpis rutrum, vestibulum dolor sed, interdum ipsum. In consequat tempor felis, a commodo purus. Sed et dictum odio, vitae dictum augue. Phasellus eu vehicula orci.&nbsp;</span>Vivamus et maximus dui. Sed sit amet nisl at lectus vehicula vehicula eu tempor quam. Etiam at sapien felis. Nullam ut consequat massa, sed ultricies nisi. Duis nec elit feugiat, pharetra ex scelerisque, vehicula lorem. Cras ultricies faucibus eleifend. Duis efficitur nunc quis tristique sagittis. Aliquam gravida urna quis augue suscipit, ac elementum nisl convallis. Proin at sollicitudin ante.<br></div><div><br></div><div>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam finibus malesuada leo, a efficitur tellus interdum non. Nulla scelerisque nisi vel rutrum rutrum. In vel odio ut quam dignissim iaculis. Mauris tristique scelerisque massa in ullamcorper. Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat. Curabitur et diam laoreet risus aliquam consequat ut ut nunc. Vivamus iaculis augue eu rhoncus tempor. Praesent ex elit, tincidunt pulvinar sodales ac, semper vel libero. Cras facilisis sed lacus congue placerat.</div><div><br></div><h1>Problems Solved</h1><div><div>Nulla scelerisque nisi vel rutrum rutrum. In vel odio ut quam dignissim iaculis. Mauris tristique scelerisque massa in ullamcorper. Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat. Curabitur et diam laoreet risus aliquam consequat ut ut nunc. Vivamus iaculis augue eu rhoncus tempor. Praesent ex elit, tincidunt pulvinar sodales ac, semper vel libero. Cras facilisis sed lacus congue placerat.</div></div><div><br></div><div><br></div><h3>Team &amp; Collaborators</h3><div>Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat.<br></div><div><br></div><ul><li>Person One</li><li>Person&nbsp;Two</li><li>Person&nbsp;Three</li></ul>',3),
	(16,1,'Project Title','project-title',4,1,'Morbi ante quam, egestas at blandit nec, commodo eu lectus. Suspendisse scelerisque faucibus tellus, eu fringilla risus egestas quis. Vestibulum a metus sit amet metus pretium euismod. Donec venenatis feugiat felis, sed mattis mi fermentum ut. Quisque varius metus vel urna porta porttitor.','Client Name','3 Months','Python, HTML, SASS, CSS, and Directus','<h1>Our Approach</h1><div><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ac turpis finibus, tempor sem id, tempus magna. Suspendisse porttitor lacinia elit eu dapibus. Etiam metus nunc, convallis ac eros vel, commodo vulputate lectus. Sed euismod augue id sodales volutpat. Nullam ornare, nibh in vehicula tristique, arcu odio dapibus nunc, sed maximus est nunc ac purus. <br><br>Suspendisse non turpis rutrum, vestibulum dolor sed, interdum ipsum. In consequat tempor felis, a commodo purus. Sed et dictum odio, vitae dictum augue. Phasellus eu vehicula orci.&nbsp;</span>Vivamus et maximus dui. Sed sit amet nisl at lectus vehicula vehicula eu tempor quam. Etiam at sapien felis. Nullam ut consequat massa, sed ultricies nisi. Duis nec elit feugiat, pharetra ex scelerisque, vehicula lorem. Cras ultricies faucibus eleifend. Duis efficitur nunc quis tristique sagittis. Aliquam gravida urna quis augue suscipit, ac elementum nisl convallis. Proin at sollicitudin ante.<br></div><div><br></div><div>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam finibus malesuada leo, a efficitur tellus interdum non. Nulla scelerisque nisi vel rutrum rutrum. In vel odio ut quam dignissim iaculis. Mauris tristique scelerisque massa in ullamcorper. Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat. Curabitur et diam laoreet risus aliquam consequat ut ut nunc. Vivamus iaculis augue eu rhoncus tempor. Praesent ex elit, tincidunt pulvinar sodales ac, semper vel libero. Cras facilisis sed lacus congue placerat.</div><div><br></div><h1>Problems Solved</h1><div><div>Nulla scelerisque nisi vel rutrum rutrum. In vel odio ut quam dignissim iaculis. Mauris tristique scelerisque massa in ullamcorper. Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat. Curabitur et diam laoreet risus aliquam consequat ut ut nunc. Vivamus iaculis augue eu rhoncus tempor. Praesent ex elit, tincidunt pulvinar sodales ac, semper vel libero. Cras facilisis sed lacus congue placerat.</div></div><div><br></div><div><br></div><h3>Team &amp; Collaborators</h3><div>Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat.<br></div><div><br></div><ul><li>Person One</li><li>Person&nbsp;Two</li><li>Person&nbsp;Three</li></ul>',3),
	(17,1,'Project Title','project-title',4,1,'Morbi ante quam, egestas at blandit nec, commodo eu lectus. Suspendisse scelerisque faucibus tellus, eu fringilla risus egestas quis. Vestibulum a metus sit amet metus pretium euismod. Donec venenatis feugiat felis, sed mattis mi fermentum ut. Quisque varius metus vel urna porta porttitor.','Client Name','3 Months','Python, HTML, SASS, CSS, and Directus','<h1>Our Approach</h1><div><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ac turpis finibus, tempor sem id, tempus magna. Suspendisse porttitor lacinia elit eu dapibus. Etiam metus nunc, convallis ac eros vel, commodo vulputate lectus. Sed euismod augue id sodales volutpat. Nullam ornare, nibh in vehicula tristique, arcu odio dapibus nunc, sed maximus est nunc ac purus. <br><br>Suspendisse non turpis rutrum, vestibulum dolor sed, interdum ipsum. In consequat tempor felis, a commodo purus. Sed et dictum odio, vitae dictum augue. Phasellus eu vehicula orci.&nbsp;</span>Vivamus et maximus dui. Sed sit amet nisl at lectus vehicula vehicula eu tempor quam. Etiam at sapien felis. Nullam ut consequat massa, sed ultricies nisi. Duis nec elit feugiat, pharetra ex scelerisque, vehicula lorem. Cras ultricies faucibus eleifend. Duis efficitur nunc quis tristique sagittis. Aliquam gravida urna quis augue suscipit, ac elementum nisl convallis. Proin at sollicitudin ante.<br></div><div><br></div><div>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam finibus malesuada leo, a efficitur tellus interdum non. Nulla scelerisque nisi vel rutrum rutrum. In vel odio ut quam dignissim iaculis. Mauris tristique scelerisque massa in ullamcorper. Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat. Curabitur et diam laoreet risus aliquam consequat ut ut nunc. Vivamus iaculis augue eu rhoncus tempor. Praesent ex elit, tincidunt pulvinar sodales ac, semper vel libero. Cras facilisis sed lacus congue placerat.</div><div><br></div><h1>Problems Solved</h1><div><div>Nulla scelerisque nisi vel rutrum rutrum. In vel odio ut quam dignissim iaculis. Mauris tristique scelerisque massa in ullamcorper. Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat. Curabitur et diam laoreet risus aliquam consequat ut ut nunc. Vivamus iaculis augue eu rhoncus tempor. Praesent ex elit, tincidunt pulvinar sodales ac, semper vel libero. Cras facilisis sed lacus congue placerat.</div></div><div><br></div><div><br></div><h3>Team &amp; Collaborators</h3><div>Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat.<br></div><div><br></div><ul><li>Person One</li><li>Person&nbsp;Two</li><li>Person&nbsp;Three</li></ul>',3),
	(18,1,'Project Title','project-title',4,1,'Morbi ante quam, egestas at blandit nec, commodo eu lectus. Suspendisse scelerisque faucibus tellus, eu fringilla risus egestas quis. Vestibulum a metus sit amet metus pretium euismod. Donec venenatis feugiat felis, sed mattis mi fermentum ut. Quisque varius metus vel urna porta porttitor.','Client Name','3 Months','Python, HTML, SASS, CSS, and Directus','<h1>Our Approach</h1><div><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ac turpis finibus, tempor sem id, tempus magna. Suspendisse porttitor lacinia elit eu dapibus. Etiam metus nunc, convallis ac eros vel, commodo vulputate lectus. Sed euismod augue id sodales volutpat. Nullam ornare, nibh in vehicula tristique, arcu odio dapibus nunc, sed maximus est nunc ac purus. <br><br>Suspendisse non turpis rutrum, vestibulum dolor sed, interdum ipsum. In consequat tempor felis, a commodo purus. Sed et dictum odio, vitae dictum augue. Phasellus eu vehicula orci.&nbsp;</span>Vivamus et maximus dui. Sed sit amet nisl at lectus vehicula vehicula eu tempor quam. Etiam at sapien felis. Nullam ut consequat massa, sed ultricies nisi. Duis nec elit feugiat, pharetra ex scelerisque, vehicula lorem. Cras ultricies faucibus eleifend. Duis efficitur nunc quis tristique sagittis. Aliquam gravida urna quis augue suscipit, ac elementum nisl convallis. Proin at sollicitudin ante.<br></div><div><br></div><div>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam finibus malesuada leo, a efficitur tellus interdum non. Nulla scelerisque nisi vel rutrum rutrum. In vel odio ut quam dignissim iaculis. Mauris tristique scelerisque massa in ullamcorper. Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat. Curabitur et diam laoreet risus aliquam consequat ut ut nunc. Vivamus iaculis augue eu rhoncus tempor. Praesent ex elit, tincidunt pulvinar sodales ac, semper vel libero. Cras facilisis sed lacus congue placerat.</div><div><br></div><h1>Problems Solved</h1><div><div>Nulla scelerisque nisi vel rutrum rutrum. In vel odio ut quam dignissim iaculis. Mauris tristique scelerisque massa in ullamcorper. Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat. Curabitur et diam laoreet risus aliquam consequat ut ut nunc. Vivamus iaculis augue eu rhoncus tempor. Praesent ex elit, tincidunt pulvinar sodales ac, semper vel libero. Cras facilisis sed lacus congue placerat.</div></div><div><br></div><div><br></div><h3>Team &amp; Collaborators</h3><div>Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat.<br></div><div><br></div><ul><li>Person One</li><li>Person&nbsp;Two</li><li>Person&nbsp;Three</li></ul>',3),
	(19,1,'Project Title','project-title',4,1,'Morbi ante quam, egestas at blandit nec, commodo eu lectus. Suspendisse scelerisque faucibus tellus, eu fringilla risus egestas quis. Vestibulum a metus sit amet metus pretium euismod. Donec venenatis feugiat felis, sed mattis mi fermentum ut. Quisque varius metus vel urna porta porttitor.','Client Name','3 Months','Python, HTML, SASS, CSS, and Directus','<h1>Our Approach</h1><div><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ac turpis finibus, tempor sem id, tempus magna. Suspendisse porttitor lacinia elit eu dapibus. Etiam metus nunc, convallis ac eros vel, commodo vulputate lectus. Sed euismod augue id sodales volutpat. Nullam ornare, nibh in vehicula tristique, arcu odio dapibus nunc, sed maximus est nunc ac purus. <br><br>Suspendisse non turpis rutrum, vestibulum dolor sed, interdum ipsum. In consequat tempor felis, a commodo purus. Sed et dictum odio, vitae dictum augue. Phasellus eu vehicula orci.&nbsp;</span>Vivamus et maximus dui. Sed sit amet nisl at lectus vehicula vehicula eu tempor quam. Etiam at sapien felis. Nullam ut consequat massa, sed ultricies nisi. Duis nec elit feugiat, pharetra ex scelerisque, vehicula lorem. Cras ultricies faucibus eleifend. Duis efficitur nunc quis tristique sagittis. Aliquam gravida urna quis augue suscipit, ac elementum nisl convallis. Proin at sollicitudin ante.<br></div><div><br></div><div>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam finibus malesuada leo, a efficitur tellus interdum non. Nulla scelerisque nisi vel rutrum rutrum. In vel odio ut quam dignissim iaculis. Mauris tristique scelerisque massa in ullamcorper. Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat. Curabitur et diam laoreet risus aliquam consequat ut ut nunc. Vivamus iaculis augue eu rhoncus tempor. Praesent ex elit, tincidunt pulvinar sodales ac, semper vel libero. Cras facilisis sed lacus congue placerat.</div><div><br></div><h1>Problems Solved</h1><div><div>Nulla scelerisque nisi vel rutrum rutrum. In vel odio ut quam dignissim iaculis. Mauris tristique scelerisque massa in ullamcorper. Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat. Curabitur et diam laoreet risus aliquam consequat ut ut nunc. Vivamus iaculis augue eu rhoncus tempor. Praesent ex elit, tincidunt pulvinar sodales ac, semper vel libero. Cras facilisis sed lacus congue placerat.</div></div><div><br></div><div><br></div><h3>Team &amp; Collaborators</h3><div>Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat.<br></div><div><br></div><ul><li>Person One</li><li>Person&nbsp;Two</li><li>Person&nbsp;Three</li></ul>',3),
	(20,1,'Project Title','project-title',4,1,'Morbi ante quam, egestas at blandit nec, commodo eu lectus. Suspendisse scelerisque faucibus tellus, eu fringilla risus egestas quis. Vestibulum a metus sit amet metus pretium euismod. Donec venenatis feugiat felis, sed mattis mi fermentum ut. Quisque varius metus vel urna porta porttitor.','Client Name','3 Months','Python, HTML, SASS, CSS, and Directus','<h1>Our Approach</h1><div><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ac turpis finibus, tempor sem id, tempus magna. Suspendisse porttitor lacinia elit eu dapibus. Etiam metus nunc, convallis ac eros vel, commodo vulputate lectus. Sed euismod augue id sodales volutpat. Nullam ornare, nibh in vehicula tristique, arcu odio dapibus nunc, sed maximus est nunc ac purus. <br><br>Suspendisse non turpis rutrum, vestibulum dolor sed, interdum ipsum. In consequat tempor felis, a commodo purus. Sed et dictum odio, vitae dictum augue. Phasellus eu vehicula orci.&nbsp;</span>Vivamus et maximus dui. Sed sit amet nisl at lectus vehicula vehicula eu tempor quam. Etiam at sapien felis. Nullam ut consequat massa, sed ultricies nisi. Duis nec elit feugiat, pharetra ex scelerisque, vehicula lorem. Cras ultricies faucibus eleifend. Duis efficitur nunc quis tristique sagittis. Aliquam gravida urna quis augue suscipit, ac elementum nisl convallis. Proin at sollicitudin ante.<br></div><div><br></div><div>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam finibus malesuada leo, a efficitur tellus interdum non. Nulla scelerisque nisi vel rutrum rutrum. In vel odio ut quam dignissim iaculis. Mauris tristique scelerisque massa in ullamcorper. Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat. Curabitur et diam laoreet risus aliquam consequat ut ut nunc. Vivamus iaculis augue eu rhoncus tempor. Praesent ex elit, tincidunt pulvinar sodales ac, semper vel libero. Cras facilisis sed lacus congue placerat.</div><div><br></div><h1>Problems Solved</h1><div><div>Nulla scelerisque nisi vel rutrum rutrum. In vel odio ut quam dignissim iaculis. Mauris tristique scelerisque massa in ullamcorper. Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat. Curabitur et diam laoreet risus aliquam consequat ut ut nunc. Vivamus iaculis augue eu rhoncus tempor. Praesent ex elit, tincidunt pulvinar sodales ac, semper vel libero. Cras facilisis sed lacus congue placerat.</div></div><div><br></div><div><br></div><h3>Team &amp; Collaborators</h3><div>Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat.<br></div><div><br></div><ul><li>Person One</li><li>Person&nbsp;Two</li><li>Person&nbsp;Three</li></ul>',3),
	(21,1,'Project Title','project-title',4,1,'Morbi ante quam, egestas at blandit nec, commodo eu lectus. Suspendisse scelerisque faucibus tellus, eu fringilla risus egestas quis. Vestibulum a metus sit amet metus pretium euismod. Donec venenatis feugiat felis, sed mattis mi fermentum ut. Quisque varius metus vel urna porta porttitor.','Client Name','3 Months','Python, HTML, SASS, CSS, and Directus','<h1>Our Approach</h1><div><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ac turpis finibus, tempor sem id, tempus magna. Suspendisse porttitor lacinia elit eu dapibus. Etiam metus nunc, convallis ac eros vel, commodo vulputate lectus. Sed euismod augue id sodales volutpat. Nullam ornare, nibh in vehicula tristique, arcu odio dapibus nunc, sed maximus est nunc ac purus. <br><br>Suspendisse non turpis rutrum, vestibulum dolor sed, interdum ipsum. In consequat tempor felis, a commodo purus. Sed et dictum odio, vitae dictum augue. Phasellus eu vehicula orci.&nbsp;</span>Vivamus et maximus dui. Sed sit amet nisl at lectus vehicula vehicula eu tempor quam. Etiam at sapien felis. Nullam ut consequat massa, sed ultricies nisi. Duis nec elit feugiat, pharetra ex scelerisque, vehicula lorem. Cras ultricies faucibus eleifend. Duis efficitur nunc quis tristique sagittis. Aliquam gravida urna quis augue suscipit, ac elementum nisl convallis. Proin at sollicitudin ante.<br></div><div><br></div><div>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam finibus malesuada leo, a efficitur tellus interdum non. Nulla scelerisque nisi vel rutrum rutrum. In vel odio ut quam dignissim iaculis. Mauris tristique scelerisque massa in ullamcorper. Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat. Curabitur et diam laoreet risus aliquam consequat ut ut nunc. Vivamus iaculis augue eu rhoncus tempor. Praesent ex elit, tincidunt pulvinar sodales ac, semper vel libero. Cras facilisis sed lacus congue placerat.</div><div><br></div><h1>Problems Solved</h1><div><div>Nulla scelerisque nisi vel rutrum rutrum. In vel odio ut quam dignissim iaculis. Mauris tristique scelerisque massa in ullamcorper. Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat. Curabitur et diam laoreet risus aliquam consequat ut ut nunc. Vivamus iaculis augue eu rhoncus tempor. Praesent ex elit, tincidunt pulvinar sodales ac, semper vel libero. Cras facilisis sed lacus congue placerat.</div></div><div><br></div><div><br></div><h3>Team &amp; Collaborators</h3><div>Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat.<br></div><div><br></div><ul><li>Person One</li><li>Person&nbsp;Two</li><li>Person&nbsp;Three</li></ul>',3),
	(22,1,'Project Title','project-title',5,1,'Morbi ante quam, egestas at blandit nec, commodo eu lectus. Suspendisse scelerisque faucibus tellus, eu fringilla risus egestas quis. Vestibulum a metus sit amet metus pretium euismod. Donec venenatis feugiat felis, sed mattis mi fermentum ut. Quisque varius metus vel urna porta porttitor.','Client Name','3 Months','Python, HTML, SASS, CSS, and Directus','<h1>Our Approach</h1><div><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ac turpis finibus, tempor sem id, tempus magna. Suspendisse porttitor lacinia elit eu dapibus. Etiam metus nunc, convallis ac eros vel, commodo vulputate lectus. Sed euismod augue id sodales volutpat. Nullam ornare, nibh in vehicula tristique, arcu odio dapibus nunc, sed maximus est nunc ac purus. <br><br>Suspendisse non turpis rutrum, vestibulum dolor sed, interdum ipsum. In consequat tempor felis, a commodo purus. Sed et dictum odio, vitae dictum augue. Phasellus eu vehicula orci.&nbsp;</span>Vivamus et maximus dui. Sed sit amet nisl at lectus vehicula vehicula eu tempor quam. Etiam at sapien felis. Nullam ut consequat massa, sed ultricies nisi. Duis nec elit feugiat, pharetra ex scelerisque, vehicula lorem. Cras ultricies faucibus eleifend. Duis efficitur nunc quis tristique sagittis. Aliquam gravida urna quis augue suscipit, ac elementum nisl convallis. Proin at sollicitudin ante.<br></div><div><br></div><div>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam finibus malesuada leo, a efficitur tellus interdum non. Nulla scelerisque nisi vel rutrum rutrum. In vel odio ut quam dignissim iaculis. Mauris tristique scelerisque massa in ullamcorper. Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat. Curabitur et diam laoreet risus aliquam consequat ut ut nunc. Vivamus iaculis augue eu rhoncus tempor. Praesent ex elit, tincidunt pulvinar sodales ac, semper vel libero. Cras facilisis sed lacus congue placerat.</div><div><br></div><h1>Problems Solved</h1><div><div>Nulla scelerisque nisi vel rutrum rutrum. In vel odio ut quam dignissim iaculis. Mauris tristique scelerisque massa in ullamcorper. Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat. Curabitur et diam laoreet risus aliquam consequat ut ut nunc. Vivamus iaculis augue eu rhoncus tempor. Praesent ex elit, tincidunt pulvinar sodales ac, semper vel libero. Cras facilisis sed lacus congue placerat.</div></div><div><br></div><div><br></div><h3>Team &amp; Collaborators</h3><div>Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat.<br></div><div><br></div><ul><li>Person One</li><li>Person&nbsp;Two</li><li>Person&nbsp;Three</li></ul>',3),
	(23,1,'Project Title','project-title',5,1,'Morbi ante quam, egestas at blandit nec, commodo eu lectus. Suspendisse scelerisque faucibus tellus, eu fringilla risus egestas quis. Vestibulum a metus sit amet metus pretium euismod. Donec venenatis feugiat felis, sed mattis mi fermentum ut. Quisque varius metus vel urna porta porttitor.','Client Name','3 Months','Python, HTML, SASS, CSS, and Directus','<h1>Our Approach</h1><div><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ac turpis finibus, tempor sem id, tempus magna. Suspendisse porttitor lacinia elit eu dapibus. Etiam metus nunc, convallis ac eros vel, commodo vulputate lectus. Sed euismod augue id sodales volutpat. Nullam ornare, nibh in vehicula tristique, arcu odio dapibus nunc, sed maximus est nunc ac purus. <br><br>Suspendisse non turpis rutrum, vestibulum dolor sed, interdum ipsum. In consequat tempor felis, a commodo purus. Sed et dictum odio, vitae dictum augue. Phasellus eu vehicula orci.&nbsp;</span>Vivamus et maximus dui. Sed sit amet nisl at lectus vehicula vehicula eu tempor quam. Etiam at sapien felis. Nullam ut consequat massa, sed ultricies nisi. Duis nec elit feugiat, pharetra ex scelerisque, vehicula lorem. Cras ultricies faucibus eleifend. Duis efficitur nunc quis tristique sagittis. Aliquam gravida urna quis augue suscipit, ac elementum nisl convallis. Proin at sollicitudin ante.<br></div><div><br></div><div>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam finibus malesuada leo, a efficitur tellus interdum non. Nulla scelerisque nisi vel rutrum rutrum. In vel odio ut quam dignissim iaculis. Mauris tristique scelerisque massa in ullamcorper. Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat. Curabitur et diam laoreet risus aliquam consequat ut ut nunc. Vivamus iaculis augue eu rhoncus tempor. Praesent ex elit, tincidunt pulvinar sodales ac, semper vel libero. Cras facilisis sed lacus congue placerat.</div><div><br></div><h1>Problems Solved</h1><div><div>Nulla scelerisque nisi vel rutrum rutrum. In vel odio ut quam dignissim iaculis. Mauris tristique scelerisque massa in ullamcorper. Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat. Curabitur et diam laoreet risus aliquam consequat ut ut nunc. Vivamus iaculis augue eu rhoncus tempor. Praesent ex elit, tincidunt pulvinar sodales ac, semper vel libero. Cras facilisis sed lacus congue placerat.</div></div><div><br></div><div><br></div><h3>Team &amp; Collaborators</h3><div>Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat.<br></div><div><br></div><ul><li>Person One</li><li>Person&nbsp;Two</li><li>Person&nbsp;Three</li></ul>',3),
	(24,1,'Project Title','project-title',5,1,'Morbi ante quam, egestas at blandit nec, commodo eu lectus. Suspendisse scelerisque faucibus tellus, eu fringilla risus egestas quis. Vestibulum a metus sit amet metus pretium euismod. Donec venenatis feugiat felis, sed mattis mi fermentum ut. Quisque varius metus vel urna porta porttitor.','Client Name','3 Months','Python, HTML, SASS, CSS, and Directus','<h1>Our Approach</h1><div><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ac turpis finibus, tempor sem id, tempus magna. Suspendisse porttitor lacinia elit eu dapibus. Etiam metus nunc, convallis ac eros vel, commodo vulputate lectus. Sed euismod augue id sodales volutpat. Nullam ornare, nibh in vehicula tristique, arcu odio dapibus nunc, sed maximus est nunc ac purus. <br><br>Suspendisse non turpis rutrum, vestibulum dolor sed, interdum ipsum. In consequat tempor felis, a commodo purus. Sed et dictum odio, vitae dictum augue. Phasellus eu vehicula orci.&nbsp;</span>Vivamus et maximus dui. Sed sit amet nisl at lectus vehicula vehicula eu tempor quam. Etiam at sapien felis. Nullam ut consequat massa, sed ultricies nisi. Duis nec elit feugiat, pharetra ex scelerisque, vehicula lorem. Cras ultricies faucibus eleifend. Duis efficitur nunc quis tristique sagittis. Aliquam gravida urna quis augue suscipit, ac elementum nisl convallis. Proin at sollicitudin ante.<br></div><div><br></div><div>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam finibus malesuada leo, a efficitur tellus interdum non. Nulla scelerisque nisi vel rutrum rutrum. In vel odio ut quam dignissim iaculis. Mauris tristique scelerisque massa in ullamcorper. Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat. Curabitur et diam laoreet risus aliquam consequat ut ut nunc. Vivamus iaculis augue eu rhoncus tempor. Praesent ex elit, tincidunt pulvinar sodales ac, semper vel libero. Cras facilisis sed lacus congue placerat.</div><div><br></div><h1>Problems Solved</h1><div><div>Nulla scelerisque nisi vel rutrum rutrum. In vel odio ut quam dignissim iaculis. Mauris tristique scelerisque massa in ullamcorper. Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat. Curabitur et diam laoreet risus aliquam consequat ut ut nunc. Vivamus iaculis augue eu rhoncus tempor. Praesent ex elit, tincidunt pulvinar sodales ac, semper vel libero. Cras facilisis sed lacus congue placerat.</div></div><div><br></div><div><br></div><h3>Team &amp; Collaborators</h3><div>Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat.<br></div><div><br></div><ul><li>Person One</li><li>Person&nbsp;Two</li><li>Person&nbsp;Three</li></ul>',3),
	(25,1,'Project Title','project-title',5,1,'Morbi ante quam, egestas at blandit nec, commodo eu lectus. Suspendisse scelerisque faucibus tellus, eu fringilla risus egestas quis. Vestibulum a metus sit amet metus pretium euismod. Donec venenatis feugiat felis, sed mattis mi fermentum ut. Quisque varius metus vel urna porta porttitor.','Client Name','3 Months','Python, HTML, SASS, CSS, and Directus','<h1>Our Approach</h1><div><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ac turpis finibus, tempor sem id, tempus magna. Suspendisse porttitor lacinia elit eu dapibus. Etiam metus nunc, convallis ac eros vel, commodo vulputate lectus. Sed euismod augue id sodales volutpat. Nullam ornare, nibh in vehicula tristique, arcu odio dapibus nunc, sed maximus est nunc ac purus. <br><br>Suspendisse non turpis rutrum, vestibulum dolor sed, interdum ipsum. In consequat tempor felis, a commodo purus. Sed et dictum odio, vitae dictum augue. Phasellus eu vehicula orci.&nbsp;</span>Vivamus et maximus dui. Sed sit amet nisl at lectus vehicula vehicula eu tempor quam. Etiam at sapien felis. Nullam ut consequat massa, sed ultricies nisi. Duis nec elit feugiat, pharetra ex scelerisque, vehicula lorem. Cras ultricies faucibus eleifend. Duis efficitur nunc quis tristique sagittis. Aliquam gravida urna quis augue suscipit, ac elementum nisl convallis. Proin at sollicitudin ante.<br></div><div><br></div><div>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam finibus malesuada leo, a efficitur tellus interdum non. Nulla scelerisque nisi vel rutrum rutrum. In vel odio ut quam dignissim iaculis. Mauris tristique scelerisque massa in ullamcorper. Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat. Curabitur et diam laoreet risus aliquam consequat ut ut nunc. Vivamus iaculis augue eu rhoncus tempor. Praesent ex elit, tincidunt pulvinar sodales ac, semper vel libero. Cras facilisis sed lacus congue placerat.</div><div><br></div><h1>Problems Solved</h1><div><div>Nulla scelerisque nisi vel rutrum rutrum. In vel odio ut quam dignissim iaculis. Mauris tristique scelerisque massa in ullamcorper. Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat. Curabitur et diam laoreet risus aliquam consequat ut ut nunc. Vivamus iaculis augue eu rhoncus tempor. Praesent ex elit, tincidunt pulvinar sodales ac, semper vel libero. Cras facilisis sed lacus congue placerat.</div></div><div><br></div><div><br></div><h3>Team &amp; Collaborators</h3><div>Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat.<br></div><div><br></div><ul><li>Person One</li><li>Person&nbsp;Two</li><li>Person&nbsp;Three</li></ul>',3),
	(26,1,'Project Title','project-title',5,1,'Morbi ante quam, egestas at blandit nec, commodo eu lectus. Suspendisse scelerisque faucibus tellus, eu fringilla risus egestas quis. Vestibulum a metus sit amet metus pretium euismod. Donec venenatis feugiat felis, sed mattis mi fermentum ut. Quisque varius metus vel urna porta porttitor.','Client Name','3 Months','Python, HTML, SASS, CSS, and Directus','<h1>Our Approach</h1><div><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ac turpis finibus, tempor sem id, tempus magna. Suspendisse porttitor lacinia elit eu dapibus. Etiam metus nunc, convallis ac eros vel, commodo vulputate lectus. Sed euismod augue id sodales volutpat. Nullam ornare, nibh in vehicula tristique, arcu odio dapibus nunc, sed maximus est nunc ac purus. <br><br>Suspendisse non turpis rutrum, vestibulum dolor sed, interdum ipsum. In consequat tempor felis, a commodo purus. Sed et dictum odio, vitae dictum augue. Phasellus eu vehicula orci.&nbsp;</span>Vivamus et maximus dui. Sed sit amet nisl at lectus vehicula vehicula eu tempor quam. Etiam at sapien felis. Nullam ut consequat massa, sed ultricies nisi. Duis nec elit feugiat, pharetra ex scelerisque, vehicula lorem. Cras ultricies faucibus eleifend. Duis efficitur nunc quis tristique sagittis. Aliquam gravida urna quis augue suscipit, ac elementum nisl convallis. Proin at sollicitudin ante.<br></div><div><br></div><div>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam finibus malesuada leo, a efficitur tellus interdum non. Nulla scelerisque nisi vel rutrum rutrum. In vel odio ut quam dignissim iaculis. Mauris tristique scelerisque massa in ullamcorper. Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat. Curabitur et diam laoreet risus aliquam consequat ut ut nunc. Vivamus iaculis augue eu rhoncus tempor. Praesent ex elit, tincidunt pulvinar sodales ac, semper vel libero. Cras facilisis sed lacus congue placerat.</div><div><br></div><h1>Problems Solved</h1><div><div>Nulla scelerisque nisi vel rutrum rutrum. In vel odio ut quam dignissim iaculis. Mauris tristique scelerisque massa in ullamcorper. Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat. Curabitur et diam laoreet risus aliquam consequat ut ut nunc. Vivamus iaculis augue eu rhoncus tempor. Praesent ex elit, tincidunt pulvinar sodales ac, semper vel libero. Cras facilisis sed lacus congue placerat.</div></div><div><br></div><div><br></div><h3>Team &amp; Collaborators</h3><div>Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat.<br></div><div><br></div><ul><li>Person One</li><li>Person&nbsp;Two</li><li>Person&nbsp;Three</li></ul>',3),
	(27,1,'Project Title','project-title',6,1,'Morbi ante quam, egestas at blandit nec, commodo eu lectus. Suspendisse scelerisque faucibus tellus, eu fringilla risus egestas quis. Vestibulum a metus sit amet metus pretium euismod. Donec venenatis feugiat felis, sed mattis mi fermentum ut. Quisque varius metus vel urna porta porttitor.','Client Name','3 Months','Python, HTML, SASS, CSS, and Directus','<h1>Our Approach</h1><div><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ac turpis finibus, tempor sem id, tempus magna. Suspendisse porttitor lacinia elit eu dapibus. Etiam metus nunc, convallis ac eros vel, commodo vulputate lectus. Sed euismod augue id sodales volutpat. Nullam ornare, nibh in vehicula tristique, arcu odio dapibus nunc, sed maximus est nunc ac purus. <br><br>Suspendisse non turpis rutrum, vestibulum dolor sed, interdum ipsum. In consequat tempor felis, a commodo purus. Sed et dictum odio, vitae dictum augue. Phasellus eu vehicula orci.&nbsp;</span>Vivamus et maximus dui. Sed sit amet nisl at lectus vehicula vehicula eu tempor quam. Etiam at sapien felis. Nullam ut consequat massa, sed ultricies nisi. Duis nec elit feugiat, pharetra ex scelerisque, vehicula lorem. Cras ultricies faucibus eleifend. Duis efficitur nunc quis tristique sagittis. Aliquam gravida urna quis augue suscipit, ac elementum nisl convallis. Proin at sollicitudin ante.<br></div><div><br></div><div>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam finibus malesuada leo, a efficitur tellus interdum non. Nulla scelerisque nisi vel rutrum rutrum. In vel odio ut quam dignissim iaculis. Mauris tristique scelerisque massa in ullamcorper. Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat. Curabitur et diam laoreet risus aliquam consequat ut ut nunc. Vivamus iaculis augue eu rhoncus tempor. Praesent ex elit, tincidunt pulvinar sodales ac, semper vel libero. Cras facilisis sed lacus congue placerat.</div><div><br></div><h1>Problems Solved</h1><div><div>Nulla scelerisque nisi vel rutrum rutrum. In vel odio ut quam dignissim iaculis. Mauris tristique scelerisque massa in ullamcorper. Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat. Curabitur et diam laoreet risus aliquam consequat ut ut nunc. Vivamus iaculis augue eu rhoncus tempor. Praesent ex elit, tincidunt pulvinar sodales ac, semper vel libero. Cras facilisis sed lacus congue placerat.</div></div><div><br></div><div><br></div><h3>Team &amp; Collaborators</h3><div>Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat.<br></div><div><br></div><ul><li>Person One</li><li>Person&nbsp;Two</li><li>Person&nbsp;Three</li></ul>',3),
	(28,1,'Project Title','project-title',6,1,'Morbi ante quam, egestas at blandit nec, commodo eu lectus. Suspendisse scelerisque faucibus tellus, eu fringilla risus egestas quis. Vestibulum a metus sit amet metus pretium euismod. Donec venenatis feugiat felis, sed mattis mi fermentum ut. Quisque varius metus vel urna porta porttitor.','Client Name','3 Months','Python, HTML, SASS, CSS, and Directus','<h1>Our Approach</h1><div><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ac turpis finibus, tempor sem id, tempus magna. Suspendisse porttitor lacinia elit eu dapibus. Etiam metus nunc, convallis ac eros vel, commodo vulputate lectus. Sed euismod augue id sodales volutpat. Nullam ornare, nibh in vehicula tristique, arcu odio dapibus nunc, sed maximus est nunc ac purus. <br><br>Suspendisse non turpis rutrum, vestibulum dolor sed, interdum ipsum. In consequat tempor felis, a commodo purus. Sed et dictum odio, vitae dictum augue. Phasellus eu vehicula orci.&nbsp;</span>Vivamus et maximus dui. Sed sit amet nisl at lectus vehicula vehicula eu tempor quam. Etiam at sapien felis. Nullam ut consequat massa, sed ultricies nisi. Duis nec elit feugiat, pharetra ex scelerisque, vehicula lorem. Cras ultricies faucibus eleifend. Duis efficitur nunc quis tristique sagittis. Aliquam gravida urna quis augue suscipit, ac elementum nisl convallis. Proin at sollicitudin ante.<br></div><div><br></div><div>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam finibus malesuada leo, a efficitur tellus interdum non. Nulla scelerisque nisi vel rutrum rutrum. In vel odio ut quam dignissim iaculis. Mauris tristique scelerisque massa in ullamcorper. Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat. Curabitur et diam laoreet risus aliquam consequat ut ut nunc. Vivamus iaculis augue eu rhoncus tempor. Praesent ex elit, tincidunt pulvinar sodales ac, semper vel libero. Cras facilisis sed lacus congue placerat.</div><div><br></div><h1>Problems Solved</h1><div><div>Nulla scelerisque nisi vel rutrum rutrum. In vel odio ut quam dignissim iaculis. Mauris tristique scelerisque massa in ullamcorper. Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat. Curabitur et diam laoreet risus aliquam consequat ut ut nunc. Vivamus iaculis augue eu rhoncus tempor. Praesent ex elit, tincidunt pulvinar sodales ac, semper vel libero. Cras facilisis sed lacus congue placerat.</div></div><div><br></div><div><br></div><h3>Team &amp; Collaborators</h3><div>Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat.<br></div><div><br></div><ul><li>Person One</li><li>Person&nbsp;Two</li><li>Person&nbsp;Three</li></ul>',3),
	(29,1,'Project Title','project-title',6,1,'Morbi ante quam, egestas at blandit nec, commodo eu lectus. Suspendisse scelerisque faucibus tellus, eu fringilla risus egestas quis. Vestibulum a metus sit amet metus pretium euismod. Donec venenatis feugiat felis, sed mattis mi fermentum ut. Quisque varius metus vel urna porta porttitor.','Client Name','3 Months','Python, HTML, SASS, CSS, and Directus','<h1>Our Approach</h1><div><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ac turpis finibus, tempor sem id, tempus magna. Suspendisse porttitor lacinia elit eu dapibus. Etiam metus nunc, convallis ac eros vel, commodo vulputate lectus. Sed euismod augue id sodales volutpat. Nullam ornare, nibh in vehicula tristique, arcu odio dapibus nunc, sed maximus est nunc ac purus. <br><br>Suspendisse non turpis rutrum, vestibulum dolor sed, interdum ipsum. In consequat tempor felis, a commodo purus. Sed et dictum odio, vitae dictum augue. Phasellus eu vehicula orci.&nbsp;</span>Vivamus et maximus dui. Sed sit amet nisl at lectus vehicula vehicula eu tempor quam. Etiam at sapien felis. Nullam ut consequat massa, sed ultricies nisi. Duis nec elit feugiat, pharetra ex scelerisque, vehicula lorem. Cras ultricies faucibus eleifend. Duis efficitur nunc quis tristique sagittis. Aliquam gravida urna quis augue suscipit, ac elementum nisl convallis. Proin at sollicitudin ante.<br></div><div><br></div><div>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam finibus malesuada leo, a efficitur tellus interdum non. Nulla scelerisque nisi vel rutrum rutrum. In vel odio ut quam dignissim iaculis. Mauris tristique scelerisque massa in ullamcorper. Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat. Curabitur et diam laoreet risus aliquam consequat ut ut nunc. Vivamus iaculis augue eu rhoncus tempor. Praesent ex elit, tincidunt pulvinar sodales ac, semper vel libero. Cras facilisis sed lacus congue placerat.</div><div><br></div><h1>Problems Solved</h1><div><div>Nulla scelerisque nisi vel rutrum rutrum. In vel odio ut quam dignissim iaculis. Mauris tristique scelerisque massa in ullamcorper. Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat. Curabitur et diam laoreet risus aliquam consequat ut ut nunc. Vivamus iaculis augue eu rhoncus tempor. Praesent ex elit, tincidunt pulvinar sodales ac, semper vel libero. Cras facilisis sed lacus congue placerat.</div></div><div><br></div><div><br></div><h3>Team &amp; Collaborators</h3><div>Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat.<br></div><div><br></div><ul><li>Person One</li><li>Person&nbsp;Two</li><li>Person&nbsp;Three</li></ul>',3),
	(30,1,'Project Title','project-title',6,1,'Morbi ante quam, egestas at blandit nec, commodo eu lectus. Suspendisse scelerisque faucibus tellus, eu fringilla risus egestas quis. Vestibulum a metus sit amet metus pretium euismod. Donec venenatis feugiat felis, sed mattis mi fermentum ut. Quisque varius metus vel urna porta porttitor.','Client Name','3 Months','Python, HTML, SASS, CSS, and Directus','<h1>Our Approach</h1><div><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ac turpis finibus, tempor sem id, tempus magna. Suspendisse porttitor lacinia elit eu dapibus. Etiam metus nunc, convallis ac eros vel, commodo vulputate lectus. Sed euismod augue id sodales volutpat. Nullam ornare, nibh in vehicula tristique, arcu odio dapibus nunc, sed maximus est nunc ac purus. <br><br>Suspendisse non turpis rutrum, vestibulum dolor sed, interdum ipsum. In consequat tempor felis, a commodo purus. Sed et dictum odio, vitae dictum augue. Phasellus eu vehicula orci.&nbsp;</span>Vivamus et maximus dui. Sed sit amet nisl at lectus vehicula vehicula eu tempor quam. Etiam at sapien felis. Nullam ut consequat massa, sed ultricies nisi. Duis nec elit feugiat, pharetra ex scelerisque, vehicula lorem. Cras ultricies faucibus eleifend. Duis efficitur nunc quis tristique sagittis. Aliquam gravida urna quis augue suscipit, ac elementum nisl convallis. Proin at sollicitudin ante.<br></div><div><br></div><div>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam finibus malesuada leo, a efficitur tellus interdum non. Nulla scelerisque nisi vel rutrum rutrum. In vel odio ut quam dignissim iaculis. Mauris tristique scelerisque massa in ullamcorper. Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat. Curabitur et diam laoreet risus aliquam consequat ut ut nunc. Vivamus iaculis augue eu rhoncus tempor. Praesent ex elit, tincidunt pulvinar sodales ac, semper vel libero. Cras facilisis sed lacus congue placerat.</div><div><br></div><h1>Problems Solved</h1><div><div>Nulla scelerisque nisi vel rutrum rutrum. In vel odio ut quam dignissim iaculis. Mauris tristique scelerisque massa in ullamcorper. Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat. Curabitur et diam laoreet risus aliquam consequat ut ut nunc. Vivamus iaculis augue eu rhoncus tempor. Praesent ex elit, tincidunt pulvinar sodales ac, semper vel libero. Cras facilisis sed lacus congue placerat.</div></div><div><br></div><div><br></div><h3>Team &amp; Collaborators</h3><div>Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat.<br></div><div><br></div><ul><li>Person One</li><li>Person&nbsp;Two</li><li>Person&nbsp;Three</li></ul>',3),
	(31,1,'Project Title','project-title',6,1,'Morbi ante quam, egestas at blandit nec, commodo eu lectus. Suspendisse scelerisque faucibus tellus, eu fringilla risus egestas quis. Vestibulum a metus sit amet metus pretium euismod. Donec venenatis feugiat felis, sed mattis mi fermentum ut. Quisque varius metus vel urna porta porttitor.','Client Name','3 Months','Python, HTML, SASS, CSS, and Directus','<h1>Our Approach</h1><div><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ac turpis finibus, tempor sem id, tempus magna. Suspendisse porttitor lacinia elit eu dapibus. Etiam metus nunc, convallis ac eros vel, commodo vulputate lectus. Sed euismod augue id sodales volutpat. Nullam ornare, nibh in vehicula tristique, arcu odio dapibus nunc, sed maximus est nunc ac purus. <br><br>Suspendisse non turpis rutrum, vestibulum dolor sed, interdum ipsum. In consequat tempor felis, a commodo purus. Sed et dictum odio, vitae dictum augue. Phasellus eu vehicula orci.&nbsp;</span>Vivamus et maximus dui. Sed sit amet nisl at lectus vehicula vehicula eu tempor quam. Etiam at sapien felis. Nullam ut consequat massa, sed ultricies nisi. Duis nec elit feugiat, pharetra ex scelerisque, vehicula lorem. Cras ultricies faucibus eleifend. Duis efficitur nunc quis tristique sagittis. Aliquam gravida urna quis augue suscipit, ac elementum nisl convallis. Proin at sollicitudin ante.<br></div><div><br></div><div>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam finibus malesuada leo, a efficitur tellus interdum non. Nulla scelerisque nisi vel rutrum rutrum. In vel odio ut quam dignissim iaculis. Mauris tristique scelerisque massa in ullamcorper. Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat. Curabitur et diam laoreet risus aliquam consequat ut ut nunc. Vivamus iaculis augue eu rhoncus tempor. Praesent ex elit, tincidunt pulvinar sodales ac, semper vel libero. Cras facilisis sed lacus congue placerat.</div><div><br></div><h1>Problems Solved</h1><div><div>Nulla scelerisque nisi vel rutrum rutrum. In vel odio ut quam dignissim iaculis. Mauris tristique scelerisque massa in ullamcorper. Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat. Curabitur et diam laoreet risus aliquam consequat ut ut nunc. Vivamus iaculis augue eu rhoncus tempor. Praesent ex elit, tincidunt pulvinar sodales ac, semper vel libero. Cras facilisis sed lacus congue placerat.</div></div><div><br></div><div><br></div><h3>Team &amp; Collaborators</h3><div>Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat.<br></div><div><br></div><ul><li>Person One</li><li>Person&nbsp;Two</li><li>Person&nbsp;Three</li></ul>',3),
	(32,1,'Project Title','project-title',6,1,'Morbi ante quam, egestas at blandit nec, commodo eu lectus. Suspendisse scelerisque faucibus tellus, eu fringilla risus egestas quis. Vestibulum a metus sit amet metus pretium euismod. Donec venenatis feugiat felis, sed mattis mi fermentum ut. Quisque varius metus vel urna porta porttitor.','Client Name','3 Months','Python, HTML, SASS, CSS, and Directus','<h1>Our Approach</h1><div><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ac turpis finibus, tempor sem id, tempus magna. Suspendisse porttitor lacinia elit eu dapibus. Etiam metus nunc, convallis ac eros vel, commodo vulputate lectus. Sed euismod augue id sodales volutpat. Nullam ornare, nibh in vehicula tristique, arcu odio dapibus nunc, sed maximus est nunc ac purus. <br><br>Suspendisse non turpis rutrum, vestibulum dolor sed, interdum ipsum. In consequat tempor felis, a commodo purus. Sed et dictum odio, vitae dictum augue. Phasellus eu vehicula orci.&nbsp;</span>Vivamus et maximus dui. Sed sit amet nisl at lectus vehicula vehicula eu tempor quam. Etiam at sapien felis. Nullam ut consequat massa, sed ultricies nisi. Duis nec elit feugiat, pharetra ex scelerisque, vehicula lorem. Cras ultricies faucibus eleifend. Duis efficitur nunc quis tristique sagittis. Aliquam gravida urna quis augue suscipit, ac elementum nisl convallis. Proin at sollicitudin ante.<br></div><div><br></div><div>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam finibus malesuada leo, a efficitur tellus interdum non. Nulla scelerisque nisi vel rutrum rutrum. In vel odio ut quam dignissim iaculis. Mauris tristique scelerisque massa in ullamcorper. Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat. Curabitur et diam laoreet risus aliquam consequat ut ut nunc. Vivamus iaculis augue eu rhoncus tempor. Praesent ex elit, tincidunt pulvinar sodales ac, semper vel libero. Cras facilisis sed lacus congue placerat.</div><div><br></div><h1>Problems Solved</h1><div><div>Nulla scelerisque nisi vel rutrum rutrum. In vel odio ut quam dignissim iaculis. Mauris tristique scelerisque massa in ullamcorper. Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat. Curabitur et diam laoreet risus aliquam consequat ut ut nunc. Vivamus iaculis augue eu rhoncus tempor. Praesent ex elit, tincidunt pulvinar sodales ac, semper vel libero. Cras facilisis sed lacus congue placerat.</div></div><div><br></div><div><br></div><h3>Team &amp; Collaborators</h3><div>Fusce non consequat purus. Phasellus luctus metus mollis massa fermentum, et congue libero eleifend. Nulla placerat nisl in metus tempor, ut condimentum mi euismod. Suspendisse tristique neque ac rutrum vulputate. Nunc sit amet diam augue. Mauris ac velit arcu. Ut viverra ornare volutpat.<br></div><div><br></div><ul><li>Person One</li><li>Person&nbsp;Two</li><li>Person&nbsp;Three</li></ul>',3);

/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table requests
# ------------------------------------------------------------

DROP TABLE IF EXISTS `requests`;

CREATE TABLE `requests` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `date_submitted` datetime DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `project` int(11) DEFAULT NULL,
  `contact` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table resources
# ------------------------------------------------------------

DROP TABLE IF EXISTS `resources`;

CREATE TABLE `resources` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) DEFAULT '1',
  `sort` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `file` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `resources` WRITE;
/*!40000 ALTER TABLE `resources` DISABLE KEYS */;

INSERT INTO `resources` (`id`, `active`, `sort`, `title`, `file`)
VALUES
	(1,1,1,'Press Package',1),
	(2,1,2,'Brand Style Guide',1),
	(3,1,3,'One-Sheet',1),
	(4,1,4,'Client List',1);

/*!40000 ALTER TABLE `resources` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table slideshow_images
# ------------------------------------------------------------

DROP TABLE IF EXISTS `slideshow_images`;

CREATE TABLE `slideshow_images` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `about_id` int(11) DEFAULT NULL,
  `file_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `slideshow_images` WRITE;
/*!40000 ALTER TABLE `slideshow_images` DISABLE KEYS */;

INSERT INTO `slideshow_images` (`id`, `about_id`, `file_id`)
VALUES
	(1,1,1),
	(2,1,1),
	(3,1,1);

/*!40000 ALTER TABLE `slideshow_images` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table staff
# ------------------------------------------------------------

DROP TABLE IF EXISTS `staff`;

CREATE TABLE `staff` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) DEFAULT '1',
  `sort` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `bio` text,
  `image` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;

INSERT INTO `staff` (`id`, `active`, `sort`, `name`, `title`, `bio`, `image`)
VALUES
	(1,1,0,'Ben Haynes','Founding Partner, Director of Technology','Mauris placerat leo ex, in fermentum sapien fermentum non. Etiam quis feugiat orci. Nam ut ex varius nisl sagittis tempus quis a sapien. Curabitur vel velit nisl. Etiam eu diam rhoncus, cursus justo eget, molestie sem. Integer eget luctus augue, vitae consectetur nunc. Fusce faucibus sapien elit, sit amet aliquam lorem suscipit in. Etiam condimentum metus libero, eu elementum justo fermentum vel. Nulla in est at neque euismod fringilla. Nunc sit amet ullamcorper massa.',2),
	(2,1,1,'Ben Haynes','Partner, Director of Innovation','Mauris placerat leo ex, in fermentum sapien fermentum non. Etiam quis feugiat orci. Nam ut ex varius nisl sagittis tempus quis a sapien. Curabitur vel velit nisl. Etiam eu diam rhoncus, cursus justo eget, molestie sem. Integer eget luctus augue, vitae consectetur nunc. Fusce faucibus sapien elit, sit amet aliquam lorem suscipit in. Etiam condimentum metus libero, eu elementum justo fermentum vel. Nulla in est at neque euismod fringilla. Nunc sit amet ullamcorper massa.',2),
	(3,1,2,'Ben Haynes','Partner, Creative Director','Mauris placerat leo ex, in fermentum sapien fermentum non. Etiam quis feugiat orci. Nam ut ex varius nisl sagittis tempus quis a sapien. Curabitur vel velit nisl. Etiam eu diam rhoncus, cursus justo eget, molestie sem. Integer eget luctus augue, vitae consectetur nunc. Fusce faucibus sapien elit, sit amet aliquam lorem suscipit in. Etiam condimentum metus libero, eu elementum justo fermentum vel. Nulla in est at neque euismod fringilla. Nunc sit amet ullamcorper massa.',2);

/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
