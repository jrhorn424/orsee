-- MySQL dump 10.11
--
-- Host: localhost    Database: orsee_default
-- ------------------------------------------------------
-- Server version	5.0.67

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
-- Table structure for table `or_admin`
--

DROP TABLE IF EXISTS `or_admin`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `or_admin` (
  `admin_id` int(20) NOT NULL default '0',
  `fname` text,
  `lname` text,
  `email` text,
  `adminname` varchar(20) default NULL,
  `admin_type` varchar(250) default NULL,
  `password` varchar(100) default NULL,
  `experimenter_list` char(1) default 'y',
  `language` text,
  `get_calendar_mail` char(1) default 'y',
  `get_statistics_mail` char(1) default 'y',
  PRIMARY KEY  (`admin_id`),
  UNIQUE KEY `uindex` (`admin_id`),
  UNIQUE KEY `uindex2` (`adminname`),
  KEY `tindex` (`adminname`,`password`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `or_admin`
--

LOCK TABLES `or_admin` WRITE;
/*!40000 ALTER TABLE `or_admin` DISABLE KEYS */;
INSERT INTO `or_admin` VALUES (1285555869,'Orsee','Installer','installer@orsee.org','orsee_install','installer','cdUWMHi5ti/lQ','y','en','y','y');
/*!40000 ALTER TABLE `or_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `or_admin_log`
--

DROP TABLE IF EXISTS `or_admin_log`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `or_admin_log` (
  `log_id` int(20) NOT NULL auto_increment,
  `id` varchar(255) default NULL,
  `year` varchar(6) default NULL,
  `month` char(3) default NULL,
  `day` char(3) default NULL,
  `timestamp` int(20) default NULL,
  `action` varchar(200) default NULL,
  `target` varchar(255) default NULL,
  PRIMARY KEY  (`log_id`),
  UNIQUE KEY `uindex` (`log_id`),
  KEY `tindex1` (`action`),
  KEY `tindex2` (`year`,`month`)
) ENGINE=MyISAM AUTO_INCREMENT=2945 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `or_admin_log`
--

LOCK TABLES `or_admin_log` WRITE;
/*!40000 ALTER TABLE `or_admin_log` DISABLE KEYS */;
INSERT INTO `or_admin_log` VALUES (2943,'1285555869','2010','9','27',1285559147,'login',''),(2944,'1285555869','2010','9','27',1285559175,'logout','');
/*!40000 ALTER TABLE `or_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `or_admin_types`
--

DROP TABLE IF EXISTS `or_admin_types`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `or_admin_types` (
  `type_id` int(20) NOT NULL auto_increment,
  `type_name` varchar(250) default '',
  `rights` text,
  PRIMARY KEY  (`type_id`),
  UNIQUE KEY `uindex1` (`type_id`),
  UNIQUE KEY `uindex2` (`type_name`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `or_admin_types`
--

LOCK TABLES `or_admin_types` WRITE;
/*!40000 ALTER TABLE `or_admin_types` DISABLE KEYS */;
INSERT INTO `or_admin_types` VALUES (1,'nobody',''),(2,'visitor','download_download,experiment_show,experiment_show_participants,login,participants_show,statistics_participants_show,statistics_server_usage_show,statistics_system_show'),(3,'showup_updater','download_download,download_experiment_upload,experiment_edit_participants,experiment_show,experiment_show_participants,login,participants_show,statistics_participants_show,statistics_server_usage_show,statistics_system_show'),(4,'experimenter','download_download,download_experiment_delete,download_experiment_upload,experiment_assign_participants,experiment_edit,experiment_edit_participants,experiment_invitation_edit,experiment_invite_participants,experiment_show,experiment_show_participants,lab_space_delete,lab_space_edit,log_file_participant_actions_show,log_file_regular_tasks_show,login,participants_bulk_mail,participants_edit,participants_resubscribe,participants_show,participants_unsubscribe,regular_tasks_show,session_edit,session_empty_delete,session_send_reminder,statistics_participants_show,statistics_server_usage_show,statistics_system_show'),(5,'admin','default_text_edit,download_download,download_experiment_delete,download_experiment_upload,download_general_delete,download_general_upload,experiment_assign_participants,experiment_delete,experiment_edit,experiment_edit_participants,experiment_invitation_edit,experiment_invite_participants,experiment_restriction_override,experiment_show,experiment_show_participants,experimentclass_add,experimentclass_delete,experimentclass_edit,experimenttype_add,experimenttype_delete,experimenttype_edit,faq_add,faq_delete,faq_edit,field_of_studies_add,field_of_studies_delete,field_of_studies_edit,help_add,help_delete,help_edit,lab_space_delete,lab_space_edit,laboratory_add,laboratory_delete,laboratory_edit,lang_avail_edit,lang_lang_edit,lang_lang_export,lang_lang_import,lang_symbol_edit,log_file_experimenter_actions_delete,log_file_experimenter_actions_show,log_file_participant_actions_delete,log_file_participant_actions_show,log_file_regular_tasks_delete,log_file_regular_tasks_show,login,mail_edit,participants_bulk_mail,participants_edit,participants_resubscribe,participants_show,participants_unconfirmed_edit,participants_unsubscribe,profession_add,profession_delete,profession_edit,public_content_edit,regular_tasks_show,session_edit,session_empty_delete,session_nonempty_delete,session_send_reminder,statistics_participants_show,statistics_server_usage_show,statistics_system_show,subjectpool_add,subjectpool_delete,subjectpool_edit'),(6,'installer','admin_delete,admin_edit,admin_type_delete,admin_type_edit,default_text_edit,download_download,download_experiment_delete,download_experiment_upload,download_general_delete,download_general_upload,experiment_assign_participants,experiment_delete,experiment_edit,experiment_edit_participants,experiment_invitation_edit,experiment_invite_participants,experiment_restriction_override,experiment_show,experiment_show_participants,experimentclass_add,experimentclass_delete,experimentclass_edit,experimenttype_add,experimenttype_delete,experimenttype_edit,faq_add,faq_delete,faq_edit,field_of_studies_add,field_of_studies_delete,field_of_studies_edit,help_edit,import_data,lab_space_delete,lab_space_edit,laboratory_add,laboratory_delete,laboratory_edit,lang_avail_edit,lang_lang_add,lang_lang_delete,lang_lang_edit,lang_lang_export,lang_lang_import,lang_symbol_edit,log_file_experimenter_actions_delete,log_file_experimenter_actions_show,log_file_participant_actions_delete,log_file_participant_actions_show,log_file_regular_tasks_delete,log_file_regular_tasks_show,login,mail_edit,participants_bulk_mail,participants_edit,participants_resubscribe,participants_show,participants_unconfirmed_edit,participants_unsubscribe,profession_add,profession_delete,profession_edit,public_content_add,public_content_delete,public_content_edit,regular_tasks_edit,regular_tasks_run,regular_tasks_show,session_edit,session_empty_delete,session_nonempty_delete,session_send_reminder,settings_edit,statistics_participants_show,statistics_server_usage_show,statistics_system_show,subjectpool_add,subjectpool_delete,subjectpool_edit'),(7,'developer','admin_delete,admin_edit,admin_type_delete,admin_type_edit,default_text_add,default_text_delete,default_text_edit,download_download,download_experiment_delete,download_experiment_upload,download_general_delete,download_general_upload,experiment_assign_participants,experiment_delete,experiment_edit,experiment_edit_participants,experiment_invitation_edit,experiment_invite_participants,experiment_restriction_override,experiment_show,experiment_show_participants,experimentclass_add,experimentclass_delete,experimentclass_edit,experimenttype_add,experimenttype_delete,experimenttype_edit,faq_add,faq_delete,faq_edit,field_of_studies_add,field_of_studies_delete,field_of_studies_edit,help_add,help_delete,help_edit,import_data,lab_space_delete,lab_space_edit,laboratory_add,laboratory_delete,laboratory_edit,lang_avail_edit,lang_lang_add,lang_lang_delete,lang_lang_edit,lang_lang_export,lang_lang_import,lang_symbol_add,lang_symbol_delete,lang_symbol_edit,log_file_experimenter_actions_delete,log_file_experimenter_actions_show,log_file_participant_actions_delete,log_file_participant_actions_show,log_file_regular_tasks_delete,log_file_regular_tasks_show,login,mail_add,mail_delete,mail_edit,participants_bulk_mail,participants_edit,participants_resubscribe,participants_show,participants_unconfirmed_edit,participants_unsubscribe,profession_add,profession_delete,profession_edit,public_content_add,public_content_delete,public_content_edit,regular_tasks_add,regular_tasks_edit,regular_tasks_run,regular_tasks_show,session_edit,session_empty_delete,session_nonempty_delete,session_send_reminder,settings_edit,settings_option_add,statistics_participants_show,statistics_server_usage_show,statistics_system_show,subjectpool_add,subjectpool_delete,subjectpool_edit');
/*!40000 ALTER TABLE `or_admin_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `or_bulk_mail_texts`
--

DROP TABLE IF EXISTS `or_bulk_mail_texts`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `or_bulk_mail_texts` (
  `bulktext_id` int(20) NOT NULL auto_increment,
  `bulk_id` int(20) NOT NULL default '0',
  `lang` varchar(5) default '',
  `bulk_subject` varchar(250) default NULL,
  `bulk_text` text,
  PRIMARY KEY  (`bulktext_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `or_bulk_mail_texts`
--

LOCK TABLES `or_bulk_mail_texts` WRITE;
/*!40000 ALTER TABLE `or_bulk_mail_texts` DISABLE KEYS */;
/*!40000 ALTER TABLE `or_bulk_mail_texts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `or_cron_jobs`
--

DROP TABLE IF EXISTS `or_cron_jobs`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `or_cron_jobs` (
  `job_name` varchar(200) NOT NULL default '',
  `enabled` char(1) default 'n',
  `job_time` varchar(255) NOT NULL default '',
  `job_last_exec` varchar(200) default '0',
  PRIMARY KEY  (`job_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `or_cron_jobs`
--

LOCK TABLES `or_cron_jobs` WRITE;
/*!40000 ALTER TABLE `or_cron_jobs` DISABLE KEYS */;
INSERT INTO `or_cron_jobs` VALUES ('process_mail_queue','n','every_15_minutes','0'),('check_for_session_reminders','n','every_hour','0'),('run_webalizer','n','every_day_at_3','0'),('update_participants_history','n','every_hour','0'),('check_for_registration_end','n','every_hour','0'),('send_experiment_calendar','n','every_monday_at_8','0'),('send_participant_statistics','n','every_month_at_1st_at_8','0'),('check_for_participant_exclusion','n','every_day_at_8','0'),('check_for_noshow_warnings','n','every_day_at_8','0');
/*!40000 ALTER TABLE `or_cron_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `or_cron_log`
--

DROP TABLE IF EXISTS `or_cron_log`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `or_cron_log` (
  `log_id` int(20) NOT NULL auto_increment,
  `id` varchar(255) default NULL,
  `year` varchar(6) default NULL,
  `month` char(3) default NULL,
  `day` char(3) default NULL,
  `timestamp` int(20) default NULL,
  `action` varchar(200) default NULL,
  `target` varchar(255) default NULL,
  PRIMARY KEY  (`log_id`),
  UNIQUE KEY `uindex` (`log_id`),
  KEY `tindex1` (`action`),
  KEY `tindex2` (`year`,`month`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `or_cron_log`
--

LOCK TABLES `or_cron_log` WRITE;
/*!40000 ALTER TABLE `or_cron_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `or_cron_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `or_experiment_types`
--

DROP TABLE IF EXISTS `or_experiment_types`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `or_experiment_types` (
  `exptype_id` int(20) NOT NULL auto_increment,
  `exptype_name` varchar(200) default NULL,
  `exptype_description` text,
  `exptype_mapping` text,
  `enabled` char(1) default 'y',
  PRIMARY KEY  (`exptype_id`),
  UNIQUE KEY `uindex` (`exptype_id`),
  UNIQUE KEY `uindex2` (`exptype_name`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `or_experiment_types`
--

LOCK TABLES `or_experiment_types` WRITE;
/*!40000 ALTER TABLE `or_experiment_types` DISABLE KEYS */;
INSERT INTO `or_experiment_types` VALUES (1,'Laboratory','Normal laboratory experiments','laboratory','y'),(2,'Internet','Internet experiments and online surveys','internet','y');
/*!40000 ALTER TABLE `or_experiment_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `or_experiments`
--

DROP TABLE IF EXISTS `or_experiments`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `or_experiments` (
  `experiment_id` int(20) NOT NULL default '0',
  `experiment_name` text,
  `experiment_public_name` text,
  `experiment_type` varchar(100) default 'laboratory',
  `experiment_ext_type` varchar(200) default NULL,
  `experiment_class` varchar(100) default '0',
  `experiment_description` text,
  `experimenter_mail` text,
  `sender_mail` text,
  `experiment_public` char(1) default 'n',
  `style` varchar(20) default '',
  `experimenter` text,
  `access_restricted` char(1) default 'n',
  `experiment_finished` char(1) default 'n',
  `hide_in_stats` char(1) default 'n',
  `hide_in_cal` char(1) default 'n',
  `experiment_link_to_paper` text,
  PRIMARY KEY  (`experiment_id`),
  UNIQUE KEY `uindex` (`experiment_id`),
  KEY `tindex` (`experiment_finished`),
  KEY `tindex2` (`experimenter`(10))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `or_experiments`
--

LOCK TABLES `or_experiments` WRITE;
/*!40000 ALTER TABLE `or_experiments` DISABLE KEYS */;
/*!40000 ALTER TABLE `or_experiments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `or_faqs`
--

DROP TABLE IF EXISTS `or_faqs`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `or_faqs` (
  `faq_id` int(20) NOT NULL default '0',
  `evaluation` int(20) default '0',
  PRIMARY KEY  (`faq_id`),
  UNIQUE KEY `uindex` (`faq_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `or_faqs`
--

LOCK TABLES `or_faqs` WRITE;
/*!40000 ALTER TABLE `or_faqs` DISABLE KEYS */;
INSERT INTO `or_faqs` VALUES (1,24),(2,15),(3,8),(4,11),(5,11),(6,13),(7,8),(8,33);
/*!40000 ALTER TABLE `or_faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `or_http_sessions`
--

DROP TABLE IF EXISTS `or_http_sessions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `or_http_sessions` (
  `SessionID` varchar(255) NOT NULL default '',
  `LastUpdated` datetime NOT NULL default '0000-00-00 00:00:00',
  `DataValue` mediumtext,
  PRIMARY KEY  (`SessionID`),
  UNIQUE KEY `uindex` (`SessionID`(30)),
  KEY `LastUpdated` (`LastUpdated`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `or_http_sessions`
--

LOCK TABLES `or_http_sessions` WRITE;
/*!40000 ALTER TABLE `or_http_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `or_http_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `or_lab_space`
--

DROP TABLE IF EXISTS `or_lab_space`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `or_lab_space` (
  `space_id` int(20) NOT NULL default '0',
  `laboratory_id` varchar(255) default '',
  `space_start_year` int(11) default NULL,
  `space_start_month` int(11) default NULL,
  `space_start_day` int(11) default NULL,
  `space_start_hour` int(11) default NULL,
  `space_start_minute` int(11) default NULL,
  `space_stop_year` int(11) default NULL,
  `space_stop_month` int(11) default NULL,
  `space_stop_day` int(11) default NULL,
  `space_stop_hour` int(11) default NULL,
  `space_stop_minute` int(11) default NULL,
  `experimenter` varchar(255) default '',
  `reason` text,
  PRIMARY KEY  (`space_id`),
  KEY `tindex1` (`space_start_month`),
  KEY `tindex2` (`space_stop_month`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `or_lab_space`
--

LOCK TABLES `or_lab_space` WRITE;
/*!40000 ALTER TABLE `or_lab_space` DISABLE KEYS */;
/*!40000 ALTER TABLE `or_lab_space` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `or_lang`
--

DROP TABLE IF EXISTS `or_lang`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `or_lang` (
  `lang_id` bigint(30) NOT NULL default '0',
  `enabled` char(1) default 'y',
  `content_type` varchar(255) default NULL,
  `content_name` text,
  `en` text,
  `de` text,
  PRIMARY KEY  (`lang_id`),
  UNIQUE KEY `uindex` (`lang_id`),
  UNIQUE KEY `uindex2` (`content_type`,`content_name`(100))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `or_lang`
--

LOCK TABLES `or_lang` WRITE;
/*!40000 ALTER TABLE `or_lang` DISABLE KEYS */;
INSERT INTO `or_lang` VALUES (10000,'y','default_text','os_long_description','Please activate cookies and javascript. You cannot participate if your haven\\\'t activated them. <BR><BR>\r\n\r\nPlease note, that when you click on \\\"Start Experiment\\\", you have to finish it. You cannot start it again. It is not allowed to participate twice.<BR><BR>','Bitte stellen Sie sicher, dass Cookies und Javascript in Ihrem Browser aktiviert sind. Die Teilnahme am Experiment setzt die Aktivierung beider voraus. Wenn Sie beides aktiviert haben, laden Sie diese Seite neu.<BR><BR>\r\n\r\nBitte beachten Sie, dass Sie das Experiment vollständig absolvieren müssen, wenn Sie auf den Startlink unten geklickt haben. Sie können nicht noch einmal starten. Eine Mehrfachbeteiligung ist nicht möglich.<BR><BR>'),(10001,'y','default_text','os_short_description','To participate at this experiment you need approximately 15 minutes of time. You can earn between $4 and $15.','Für die Teilnahme an diesem Experiment brauchen Sie ungefähr 15 Minuten Zeit. Der Verdienst beträgt zwischen 5 und 15 Euro.'),(30002,'y','experiment_invitation_mail','393710653','Neues Experiment\nHallo #fname# #lname#!\r\n\r\nWie gehts?\r\n\r\nHiermit möchten wir Sie zu einem neuen Experiment einladen.\r\n\r\nEs stehen die folgenden Termine zur Auswahl:\r\n#sessionlist#\r\n\r\nWenn Sie teilnehmen möchten, können Sie sich unter dem folgenden Link anmelden:\r\n\r\n#link#\r\n\r\n(Wenn Sie in Ihrem E-Mail-Programm nicht direkt auf den Link klicken können, dann markieren Sie ihn einfach und kopieren ihn in die Zwischenalage, indem Sie rechts klicken und \\\"Kopieren\\\" wählen. Dann starten Sie Ihren Webbrowser und fügen die Adresse dort im Adressenfenster ein, indem Sie dort rechts klicken und \\\"Einfügen\\\" wählen.)','Neues Experiment\nHallo #fname# #lname#!\r\n\r\nWie gehts?\r\n\r\nHiermit möchten wir Sie zu einem neuen Experiment einladen.\r\n\r\nEs stehen die folgenden Termine zur Auswahl:\r\n#sessionlist#\r\n\r\nWenn Sie teilnehmen möchten, können Sie sich unter dem folgenden Link anmelden:\r\n\r\n#link#\r\n\r\n(Wenn Sie in Ihrem E-Mail-Programm nicht direkt auf den Link klicken können, dann markieren Sie ihn einfach und kopieren ihn in die Zwischenalage, indem Sie rechts klicken und \\\"Kopieren\\\" wählen. Dann starten Sie Ihren Webbrowser und fügen die Adresse dort im Adressenfenster ein, indem Sie dort rechts klicken und \\\"Einfügen\\\" wählen.)'),(40000,'y','experiment_type','1','laboratory experiments','Labor-Experimente'),(40001,'y','experiment_type','2','internet experiments','Internet-Experimente'),(100110,'y','lang','delete_experiment_type','Delete experiment type','Experimenttyp löschen'),(50000,'y','faq_answer','1','When you are invited for an experiment you can only participate in case you explicitly confirmed your participation. Confirmation is done by clicking on a link provided in the invitation email and picking one out of several dates of the experiment. After registering for a date you get an e-mail confirming your registration.\r\n<BR><BR>\r\nHowever, when you have registered for a certain date, you should come, of cause. Regarding the topic \\\"Cancel regsitration\\\" please read the corresponding FAQ.','Wenn wir Sie für ein Experiment einladen, können Sie an dem Experiment nur teilnehmen, wenn Sie ausdrücklich zusagen. Eine Zusage von Ihnen erfolgt durch Anklicken des Links in der Einladungsemail und die Auswahl eines unter verschiedenen freien Terminen. Nach der Zusage erhalten Sie noch einmal eine Bestätigungsmail mit den Daten des Termins.\r\n<BR><BR>\r\nNachdem Sie jedoch für einen Termin zugesagt haben, sollten Sie auch auf jeden Fall kommen. Zum Thema \\\"Abmeldung\\\" lesen Sie bitte die dementsprechende FAQ.'),(50001,'y','faq_answer','2','Anyone who is interested in participating in experiments can apply for a subject account. However, to participate in laboratory experiments, you should be able to come to our laboratories situated in Jena, Germany.\r\n','Jeder Interessierte kann sich für die Teilnahme an Experimenten registrieren. Um an Laborexperimenten teilzunehmen, sollte es Ihnen aber natürlich möglich sein, zu unseren Laboren in Jena zu kommen.'),(50002,'y','faq_answer','3','No, never do that. Your information is a crucial element of the experimental research. You will not be allowed to participate in an experiment if your record is found incorrect. In case you do not want to provide certain information just leave the field blank. Note, however, that providing information will increase the probablility to be invited.','Bitte vermeiden Sie falsche Informationen bei der Anmeldung. Diese Informationen sind für die wissenschaftliche Auswertung der Experimente entscheidend. Weiterhin werden Sie nicht zu Experimenten eingeladen, wenn wir herausfinden, dass die von Ihnen zur Verfügung gestellten Informationen nicht korrekt sind. Wenn Sie bestimmte Dinge nicht angeben wollen, lassen Sie die entsprechenden Felder einfach frei. Jedoch erhöht sich die Chance, für ein Experiment eingeladen zu werden, durch zusätzliche Informationen.'),(50003,'y','faq_answer','4','Nearly all experiments consist of several sessions. Of course, you can only register for one session for a certain experiment. If you are registered, the otrher sessions will disappear from the list.\r\n\r\n<BR>However: For every single experiment you will get an extra invitation e-mail, if you are invited.','Fast alle Experimente werden an verschiedenen Terminen durchgeführt. Natürlich kan man sich nur für einen Termin pro Experiment anmelden. Die anderen Termine verschwinden dann aus der Liste.\r\n\r\n<BR> Wie auch immer, man erhält für jedes Experiment, für das man sich anmelden kann, eine extra E-Mail. Im allgemeinen gilt also: Pro Einladungsmail ist eine Anmeldung möglich.'),(50004,'y','faq_answer','5','There is no feature which allows you to cancel your registration.<BR>\r\nYou have to check if you are available for an experiment BEFORE you register for it.<BR>\r\nHowever, if you become ill or are not able to attend due to some unforeseeable event, answer to your invitation e-mail and ask to be signed off AS SOON AS POSSIBLE. Please state your reasons in detail.','Eine Abmeldung für ein Experiment ist grundsätzlich nicht vorgesehen. <BR>Sie müssen prüfen, ob Sie für ein Experiment verfügbar sind, BEVOR Sie sich für einen Termin registrieren.<BR><BR>\r\nWenn Sie krank werden oder wegen aussergewöhnlichen Umständen nicht kommen können, antworten Sie bitte SO FRÜH WIE MÖGLICH auf Ihre Einladungs-E-Mail und legen Sie Ihre Gründe dar. Wir werden Sie dann abmelden.'),(50005,'y','faq_answer','6','For the most experiments we invite only a random subset out of all participants. We do that to ensure that not always only participants with instant access to their email participate at the experiments.<BR><bR>\r\nOn the other side, sometimes we invite only participants with certain characteristics, for instance people who have not participated in some former experiments.<BR><BR>\r\nThus it is possible that you see experiment sessions in the calendar but are not invited for them. However, if there are not enough participants registering for these sessions, we will send out invitations to more participants.','Für die meisten Experimente laden wir immer nur eine zufällige Auswahl aus allen Teilnehmern ein. Damit wollen wir sicherstellen, dass nicht immer die gleichen Teilnehmer, die am häufigsten ihre E-Mail lesen, sich zu den Experimenten anmelden.<BR><BR>\r\nAndererseits laden wir manchmal nur ganz bestimme Teilnehmer ein, z.B. nur solche, die an anderen Experimenten vorher nicht teilgenommen habern.\r\n<BR><BR>\r\nDaher kann es kommen, dass Sie im Kalender Experimente sehen, zu denen Sie jedoch leider nicht eingeladen sind. Wenn sich dort jedoch nicht genug Teilnehmer anmelden, kann es gut sein, dass wir noch  Einladungen an weitere Teilnehmer verschicken.'),(50006,'y','faq_answer','7','After counducting an experiment we need some time to update the participant database. As long as the experimenter has not filled in the participation data, there will be the three question marks as the \\\"show-up\\\" status for an experiment. When the data is there, the status will change to either \\\"yes\\\" or \\\"no\\\".','Nach einem Experiment brauchen wir etwas Zeit, um die Teilnahmedaten in die Datenbank einzutragen. Solange der Experimentator diese Daten noch nicht eingetragen hat, erscheinen die drei Fragezeichen als Teilnahmestatus hinter dem Experiment. Wurden die Daten dann eingetragen, ändert sich dieser zu \\\"ja\\\" oder \\\"nein\\\".'),(50007,'y','faq_answer','8','In principle we pay every participation at an experiment. The size of the payment depends on your decisions and the decisions of the other participants. For scientific reasons we don\\\'t give information about the exact range and expected mean of the payoff.\r\n<BR><BR>\r\nAdditionally to this payoff every participant who shows up in time gets a show-up fee of 2.50 Euro for experiments in the Goethegalerie, and 4.00 Euro for experiments in the institute lab.','Grundsätzlich gibt es für jedes Experiment eine Vergütung. Die Höhe der Vergütung hängt aber von Ihren Entscheidungen und den Entscheidungen der anderen Teilnehmer ab. Über den genauen\r\nErwartungswert und die Unter- und Obergrenze geben wir (aus wissenschaftlichen Gründen) jedoch keine Auskünfte. \r\n<BR><BR>\r\nZusätzlich zu dieser Vergütung erhält jeder Teilnehmer 2.50 Euro für\\\'s pünktliche Erscheinen, bei Experimenten im Institutslabor sogar 4 Euro.'),(60003,'y','faq_question','4','I have registered for an Experiment, but cannot register for all the other experiments, because they disappeared!','Ich habe mich für ein Experiment angemeldet, aber kann mich jetzt nicht mehr für die anderen anmelden, da diese verschwunden sind.'),(60004,'y','faq_question','5','How can I cancel my registration for an experiment?','Wie kann ich mich für ein Experiment wieder abmelden?'),(60005,'y','faq_question','6','I\\\'ve seen that there are Sessions with free places in the calendar. Why I cannot register for these sessions?','Im Kalender stehen Experimenttermine mit freien Plätzen. Warum kann ich mich dafür nicht anmelden?'),(60006,'y','faq_question','7','What is the meaning of the three question marks \\\"???\\\" after an experiment under \\\"Experiments you participated\\\"?','Was bedeuten die drei Fragezeichen \\\"???\\\" bei einem Experiment unter \\\"Alte Experimente\\\"?'),(60007,'y','faq_question','8','Do you pay me for participating in experiments? How much?','Wird die Teilnahme an den Experimenten vergütet? Und wieviel verdient man?'),(60000,'y','faq_question','1','Do I have to show up when I am invited to an experiment?','Muss ich auf jeden Fall erscheinen, wenn ich für ein Experiment eingeladen werde?'),(60001,'y','faq_question','2','Who can apply for a subject account?','Wer kann sich für die Teilnahme registrieren?'),(60002,'y','faq_question','3','Should I put in fake information when creating a subject account?','Soll ich falsche Informationen bei der Registrierung angeben?'),(70000,'y','field_of_studies','0','-','-'),(70001,'y','field_of_studies','1026776321','Business Administration','Betriebswirtschaftslehre'),(70002,'y','field_of_studies','1026776653','Economics','Volkswirtschaftslehre'),(70003,'y','field_of_studies','1026776859','Biology','Biologie'),(70004,'y','field_of_studies','1026776873','Chemistry','Chemie'),(70005,'y','field_of_studies','1026776917','Engineering','Ingenieurwissenschaften'),(70006,'y','field_of_studies','1026777019','Philosophy','Philosophie'),(70007,'y','field_of_studies','1026777042','Psychology','Psychologie'),(70008,'y','field_of_studies','1026777075','Physics','Physik'),(70009,'y','field_of_studies','1029588041','Law','Jura'),(70010,'y','field_of_studies','1034093642','History','Geschichte'),(70011,'y','field_of_studies','1034093704','English Language and Literature Studies (Britain/America)','Anglistik/Amerikanistik'),(70012,'y','field_of_studies','1034093846','Archaeology','Archäologie'),(70013,'y','field_of_studies','1034093891','German Language and Literature Studies','Germanistik'),(70014,'y','field_of_studies','1034093998','Biochemistry','Biochemie'),(70015,'y','field_of_studies','1034094011','Bioinformatics','Bioinformatik'),(70016,'y','field_of_studies','1034094105','Nutrition science','Ernährungswissenschaft'),(70017,'y','field_of_studies','1034094144','Educational science','Erziehungswissenschaft'),(70018,'y','field_of_studies','1034094168','Theology','Theologie'),(70019,'y','field_of_studies','1034094197','Geography','Geographie'),(70020,'y','field_of_studies','1034094243','Roman Languages and Literature Studies','Romanistik'),(70021,'y','field_of_studies','1034094282','Geology','Geologie'),(70022,'y','field_of_studies','1034094314','Philology','Philologie (lateinisch/griechisch)'),(70023,'y','field_of_studies','1034094353','Computer Science','Informatik'),(70024,'y','field_of_studies','1034094370','Commercial Information Technology','Wirtschaftsinformatik'),(70025,'y','field_of_studies','1034094406','Indogerman Languages','Indogermanistik'),(70026,'y','field_of_studies','1034094464','History of art','Kunstgeschichte'),(70027,'y','field_of_studies','1034094532','Mathematics','Mathematik'),(70028,'y','field_of_studies','1034094556','Media science','Medienwissenschaft'),(70029,'y','field_of_studies','1034094604','Musicology','Musikwissenschaft'),(70030,'y','field_of_studies','1034094671','Slavic Languages and Literature','Slawistik'),(70031,'y','field_of_studies','1034094702','Pharmaceutics','Pharmazie'),(70032,'y','field_of_studies','1034094754','Political Science','Politikwissenschaft'),(70033,'y','field_of_studies','1034094834','Sociology','Soziologie'),(70034,'y','field_of_studies','1034094865','Sports science','Sportwissenschaft '),(70035,'y','field_of_studies','1034094918','Prehistory and early history','Ur- und Frühgeschichte'),(70036,'y','field_of_studies','1034095015','Dentistry','Zahnmedizin'),(70037,'y','field_of_studies','1043883541','Medical technology','Medizintechnik'),(140002,'y','subjectpool','3','Birth year (en)','Birth year (de)'),(70039,'y','field_of_studies','1077147407','Anthropology','Anthropologie'),(80000,'y','help','assigned_subjects','Assigned subjects means: People who are allowed to participate in this experiment.','Assigned subjects means: People who are allowed to participate in this experiment.'),(80001,'y','help','email_sender_address','State here the (one!) email address to use as the sender of the system\'s emails to participants related to this experiment. If none is given, the system will use the default support email address.','State here the (one!) email address to use as the sender of the system\'s emails to participants related to this experiment. If none is given, the system will use the default support email address.'),(80002,'y','help','experimenter','State here the name(s) of the experimenter(s).','State here the name(s) of the experimenter(s).'),(80003,'y','help','experimenters_email','State here the address(es) of the experimenter(s) of this experiment. If you have more than one addresses, seperate them by commata. This address will be used for all the automatic (warning) messages sent by the system related to this experiment.\r\n\r\nHowever, if no address is given here, the sender e-mail address in the next field will be used.','State here the address(es) of the experimenter(s) of this experiment. If you have more than one addresses, seperate them by commata. This address will be used for all the automatic (warning) messages sent by the system related to this experiment.\r\n\r\nHowever, if no address is given here, the sender e-mail address in the next field will be used.'),(80006,'y','help','experiment_description','Please describe here your experiment in a few words for other people to have an idea about the topic. This is very useful for later experiments when one want to exclude or include participants on the basis of former experiment participation.','Please describe here your experiment in a few words for other people to have an idea about the topic. This is very useful for later experiments when one want to exclude or include participants on the basis of former experiment participation.'),(80007,'y','help','experiment_finished','Check this box if you have run all planned sessions. The only thing that will change is that this experiment is then listed under \"Finshed Experiments\" than under \"Current Experiments\". By dechecking the box you can move it back to \"Current Experiments\".','Check this box if you have run all planned sessions. The only thing that will change is that this experiment is then listed under \"Finshed Experiments\" than under \"Current Experiments\". By dechecking the box you can move it back to \"Current Experiments\".'),(80008,'y','help','experiment_hide_in_cal','Check this box, if the sessions of this experiment should not appear in the calendar in the public area. They are nevertheless shown on the internal calendar.','Check this box, if the sessions of this experiment should not appear in the calendar in the public area. They are nevertheless shown on the internal calendar.'),(80009,'y','help','experiment_hide_in_stats','If the sessions of this experiment should not be recognized in the computation of participants history (their show-ups and registrations), check this box. This is useful if you add old experiments which are not part of new rules.','If the sessions of this experiment should not be recognized in the computation of participants history (their show-ups and registrations), check this box. This is useful if you add old experiments which are not part of new rules.'),(80010,'y','help','experiment_name','State here the internal name of the experiment, i.e. the name of the paper. This name will only be used at the adminstration pages of the system.','State here the internal name of the experiment, i.e. the name of the paper. This name will only be used at the adminstration pages of the system.'),(80011,'y','help','experiment_public_name','State here the name of the experiment the participants shall see in the calendar and when registering for a session. Take a name like \"Experiment 21\" or so.','State here the name of the experiment the participants shall see in the calendar and when registering for a session. Take a name like \"Experiment 21\" or so.'),(80012,'y','help','experiment_type','The experiment type can be <I>laboratory</I>, <I>internet</I> or <I>online survey</I>. <I>Laboratory experiments</I> use \"sessions\" to organize the experiment, while <I>internet experiments</I> do not. <I>Internet experiments</I> have to be programmed and connected with this system. There will be an extra options dialog for them. <I>Online surveys</I> are included in this system. You will get a lot of dialogs to design, start, stop and evaluate them.','The experiment type can be <I>laboratory</I>, <I>internet</I> or <I>online survey</I>. <I>Laboratory experiments</I> use \"sessions\" to organize the experiment, while <I>internet experiments</I> do not. <I>Internet experiments</I> have to be programmed and connected with this system. There will be an extra options dialog for them. <I>Online surveys</I> are included in this system. You will get a lot of dialogs to design, start, stop and evaluate them.'),(80013,'y','help','experiment_type_mapping','The following is rather complicated:\r\n\r\nORSEE distinguishs between external and internal experiment types. \r\n\r\nInternal types are nothing else than types of experiment organization and conduction.\r\n\r\nExternal types are types for which participants agree to get invitations for.\r\n\r\nAn external type can be assigned to more than one internal types, and more than one internal types can be assigned to one external type.\r\n\r\nTwo examples: \r\n1. \"Video experiments\" are organized like laboratory experiments, so their internal type is \"laboratory\". However, we require participants to agree explicitely to be invited for laboratory experiments. So, we create a new external type, which links to the internal type \"laboratory\", additional to the external type \"(Normal) Laboratory experiments\".\r\n\r\n2. We have the two internal types of \"online-survey\" and \"internet\" experiments. Internally, these two types are treated differently. (Although the \"internet\" type is not implemented yet.) But to the participants, they are the same, because both are simply conducted over the internet. Thus, we create one external type \"Internet Experiments\", which links to both internal \"online-survey\" and \"internet\". Participants who agree to get invitations for \"Internet Expeirments\" will be considered in both types of internal experiments.\r\n\r\nI hope that\'s clear.','The following is rather complicated:\r\n\r\nORSEE distinguishs between external and internal experiment types. \r\n\r\nInternal types are nothing else than types of experiment organization and conduction.\r\n\r\nExternal types are types for which participants agree to get invitations for.\r\n\r\nAn external type can be assigned to more than one internal types, and more than one internal types can be assigned to one external type.\r\n\r\nTwo examples: \r\n1. \"Video experiments\" are organized like laboratory experiments, so their internal type is \"laboratory\". However, we require participants to agree explicitely to be invited for laboratory experiments. So, we create a new external type, which links to the internal type \"laboratory\", additional to the external type \"(Normal) Laboratory experiments\".\r\n\r\n2. We have the two internal types of \"online-survey\" and \"internet\" experiments. Internally, these two types are treated differently. (Although the \"internet\" type is not implemented yet.) But to the participants, they are the same, because both are simply conducted over the internet. Thus, we create one external type \"Internet Experiments\", which links to both internal \"online-survey\" and \"internet\". Participants who agree to get invitations for \"Internet Expeirments\" will be considered in both types of internal experiments.\r\n\r\nI hope that\'s clear.'),(80014,'y','help','invited_subjects','Invited subjects means: People who have got an invitation email by the system.','Invited subjects means: People who have got an invitation email by the system.'),(80015,'y','help','link_to_paper','If the paper of this experiment is already published in electronic form at the web, include here the full http://-link to it.','If the paper of this experiment is already published in electronic form at the web, include here the full http://-link to it.'),(80016,'y','help','needed_participants','State here the number of participants you exactly need for the experiment.','State here the number of participants you exactly need for the experiment.'),(80017,'y','help','registered_subjects','Registered subjects means: People who are registered to a session of this experiment.','Registered subjects means: People who are registered to a session of this experiment.'),(80018,'y','help','registration_end','State here the end of the registration time in hours before the session start. After the end of the registration time no further registration is possible, and the experimenter will get an email with the registration data. If neccessary, she can then extend the registration time.','State here the end of the registration time in hours before the session start. After the end of the registration time no further registration is possible, and the experimenter will get an email with the registration data. If neccessary, she can then extend the registration time.'),(80019,'y','help','reserve_participants','State here the number of participants you want to invite as reserve for this session. This ensures that you have enough participants if some cannot come. If you have too much participants in the session, normally the not participating individuals get a show-up fee.','State here the number of participants you want to invite as reserve for this session. This ensures that you have enough participants if some cannot come. If you have too much participants in the session, normally the not participating individuals get a show-up fee.'),(80020,'y','help','session_duration','Choose here the expected duration of the session. This value will be used for checking for overlapping sessions in the same laboratory and will be shown as the maximum duration of the session in the public area and in the emails.','Choose here the expected duration of the session. This value will be used for checking for overlapping sessions in the same laboratory and will be shown as the maximum duration of the session in the public area and in the emails.'),(80021,'y','help','session_finished','Check this box if you have run the session and updated the participants list with show-ups and no-shows and so on. After marking the session as finished it will be used for the calculation of the history of no-shows of the participants.','Check this box if you have run the session and updated the participants list with show-ups and no-shows and so on. After marking the session as finished it will be used for the calculation of the history of no-shows of the participants.'),(80022,'y','help','session_reminder','Please state here the time when the reminder emails should be sent to the registered subjects in number of hours before the session start.\r\n\r\nIf the session is not full at this moment, the system will only sent a warning message to the experimenter, and the reminder email can be send from the session\'s subject registration list page.\r\n\r\n\"00\" means disabling of this feature for this session.\r\n\r\nIf the reminder was already sent, you cannot change this option and have to send a new reminder email by hand from the sessions registration page.','Please state here the time when the reminder emails should be sent to the registered subjects in number of hours before the session start.\r\n\r\nIf the session is not full at this moment, the system will only sent a warning message to the experimenter, and the reminder email can be send from the session\'s subject registration list page.\r\n\r\n\"00\" means disabling of this feature for this session.\r\n\r\nIf the reminder was already sent, you cannot change this option and have to send a new reminder email by hand from the sessions registration page.'),(80023,'y','help','shortcut_counts','This shortcut means:\r\nRegistered Subjects (Needed Participants, Reserve Participants)','This shortcut means:\r\nRegistered Subjects (Needed Participants, Reserve Participants)'),(80024,'y','help','shownup_subjects','Shownup subjects means: People who were at the session in time. It means not, that they also participated.','Shownup subjects means: People who were at the session in time. It means not, that they also participated.'),(80025,'y','help','subjects_participated','Subjects participated are the people who not only showed up in a session, but also made decisions and earned money. So they are the shown-up subjects minus the people who were sended back home.','Subjects participated are the people who not only showed up in a session, but also made decisions and earned money. So they are the shown-up subjects minus the people who were sended back home.'),(80026,'y','help','upload_files','Sometimes it is useful to load your instructions up to the server.\r\n\r\nFirst: you can access them from everywhere in the world.\r\n\r\nSecond: Your colleagues may benefit from that by having an example for their own instructions.\r\n\r\nThird: Imagine, your session starts and you forgot your instructions ... (I\'ve heard that this happens sometimes.)\r\n\r\nYou can not only upload instructions. Every type of file is possible, for instance data files, experiment programs, presentations etc.','Sometimes it is useful to load your instructions up to the server.\r\n\r\nFirst: you can access them from everywhere in the world.\r\n\r\nSecond: Your colleagues may benefit from that by having an example for their own instructions.\r\n\r\nThird: Imagine, your session starts and you forgot your instructions ... (I\'ve heard that this happens sometimes.)\r\n\r\nYou can not only upload instructions. Every type of file is possible, for instance data files, experiment programs, presentations etc.'),(110001,'y','mail','admin_mail_footer','-------\r\nThis E-Mail was sent to you by the experiment participant recruitment system.\r\n\r\nLog in under\r\n\r\nhttp://stura.wiwi.hu-berlin.de/orsee/admin\r\n\r\nThe Online Recruitment System for Economic Experiments\r\nhttp://www.orsee.org\r\n\r\n-----','-------\r\nDiese E-Mail wurde an Sie automatisch aus dem Experiment-Teilnehmer-System verschickt.\r\n\r\nSie koennen sich einloggen unter:\r\n\r\nhttp://stura.wiwi.hu-berlin.de/orsee/admin\r\n\r\nDas Online-Rekrutierungs-System für Ökonomische Experimente\r\nhttp://www.orsee.org\r\n\r\n-----'),(110003,'y','mail','admin_registration_notice','The registration time expired for\r\n\r\nExperiment #experiment_name#\r\nSession #session_name#\r\n\r\nCurrent status: #status#\r\n\r\nRegistered participants: #registered#\r\n\r\nNeeded participants: #needed#\r\nReserve particpants: #reserve#','Die Registrierungszeit für die Session des folgenden Experimentes ist abgelaufen:\r\n\r\nName: #experiment_name#\r\nZeit: #session_name#\r\n\r\nDerzeitiger Status: #status#\r\n\r\nRegistrierte Teilnehmer: #registered#\r\n\r\nBenötigte Teilnehmer: #needed#\r\nReserve-Teilnehmer: #reserve#'),(110004,'y','mail','admin_session_reminder_notice','Session reminder emails were added to mail queue for\r\n\r\nExperiment: #experiment_name#\r\nSession: #session_name#\r\nParticipants: #nr_participants#\r\n\r\n#disclaimer#\r\n','Session-Erinnerungs-Mails wurden zur Email-Warteschlange hinzugefügt für\r\n\r\nExperiment: #experiment_name#\r\nSession: #session_name#\r\nTeilnehmer: #nr_participants#\r\n\r\n#disclaimer#'),(110005,'y','mail','default_invitation_internet','Hello #fname# #lname#!\r\n\r\nHerewith we want to invite you to participate at an internet experiment.\r\n\r\nThe experiment will run from #start_time# to #stop_time#!\r\n\r\nTo participate, please click on the following link:\r\n\r\n#link#\r\n\r\n(If you cannot click on the link, copy it to the clipboard by selecting it, rightclick and choosing \"Copy\", and then paste it into the address line in your browser by right clicking there and choosing \"Paste\".)','Hallo #fname# #lname#!\r\n\r\nHiermit möchten wir Sie zu einem Internet-Experiment einladen.\r\n\r\nDas Experiment wird vom #start_time# bis zum #stop_time# stattfinden.\r\n\r\nUm teilzunehmen, klicken Sie bitte auf den folgenden Link:\r\n\r\n#link#\r\n\r\n(Wenn Sie in Ihrem E-Mail-Programm nicht direkt auf den Link klicken können, dann markieren Sie ihn einfach und kopieren ihn in die Zwischenalage, indem Sie rechts klicken und \"Kopieren\" wählen. Dann starten Sie Ihren Webbrowser und fügen die Adresse dort im Adressenfenster ein, indem Sie dort rechts klicken und \"Einfügen\" wählen.)'),(110006,'y','mail','default_invitation_laboratory','Hello #fname# #lname#!\r\n\r\nHerewith we want to invite you to participate at a experiment in our laboratory.\r\n\r\nThe sessions are scheduled for the following times:\r\n#sessionlist#\r\n\r\nIf you want to participate, you can register by clicking on the following link:\r\n\r\n#link#\r\n\r\n(If you cannot click on the link, copy it to the clipboard by selecting it, rightclick and choosing \"Copy\", and then paste it into the address line in your browser by right clicking there and choosing \"Paste\".)','Hallo #fname# #lname#!\r\n\r\nHiermit möchten wir Sie zu einem neuen Experiment einladen.\r\n\r\nEs stehen die folgenden Termine zur Auswahl:\r\n#sessionlist#\r\n\r\nWenn Sie teilnehmen möchten, können Sie sich unter dem folgenden Link anmelden:\r\n\r\n#link#\r\n\r\n(Wenn Sie in Ihrem E-Mail-Programm nicht direkt auf den Link klicken können, dann markieren Sie ihn einfach und kopieren ihn in die Zwischenalage, indem Sie rechts klicken und \"Kopieren\" wählen. Dann starten Sie Ihren Webbrowser und fügen die Adresse dort im Adressenfenster ein, indem Sie dort rechts klicken und \"Einfügen\" wählen.)'),(110007,'y','mail','default_invitation_online-survey','Hello #fname# #lname#!\r\n\r\nHerewith we want to invite you to participate at an internet experiment.\r\n\r\nThe experiment will run from #start_time# to #stop_time#!\r\n\r\nTo participate in this time, please click on the following link:\r\n\r\n#link#\r\n\r\n(If you cannot click on the link, copy it to the clipboard by selecting it, rightclick and choosing \"Copy\", and then paste it into the address line in your browser by right clicking there and choosing \"Paste\".)','Hallo #fname# #lname#!\r\n\r\nHiermit möchten wir Sie zu einem Internet-Experiment einladen.\r\n\r\nDas Experiment wird vom #start_time# bis zum #stop_time# stattfinden.\r\n\r\nUm in diesem Zeitraum teilzunehmen, klicken Sie bitte auf den folgenden Link:\r\n\r\n#link#\r\n\r\n(Wenn Sie in Ihrem E-Mail-Programm nicht direkt auf den Link klicken können, dann markieren Sie ihn einfach und kopieren ihn in die Zwischenalage, indem Sie rechts klicken und \"Kopieren\" wählen. Dann starten Sie Ihren Webbrowser und fügen die Adresse dort im Adressenfenster ein, iem Sie dort rechts klicken und \"Einfügen\" wählen.)'),(110008,'y','mail','public_experiment_registration','Hello #fname# #lname#!\r\n\r\nYou have registered for the following experiment:\r\n\r\nName: #experiment#\r\nDate and Time: #session#\r\nLaboratory: #laboratory#\r\nLab location:\r\n#location#\r\n\r\nPlease arrive on schedule.\r\n\r\n\r\nSo long\r\n\r\nYour Experimenters','Hallo #fname# #lname#!\r\n\r\nSie haben sich fuer das folgende Experiment angemeldet:\r\n\r\nName: #experiment#\r\nDatum und Zeit: #session#\r\nLabor: #laboratory#\r\nOrt:\r\n#location#\r\n\r\n\r\nBitte erscheinen Sie puenktlich.\r\n\r\nVielen Dank und mit freundlichen Gruessen\r\n\r\nIhre Experimentatoren'),(110009,'y','mail','public_mail_footer','-------\r\nThis E-Mail was sent to you by the experiment participant recruitment system.\r\n\r\nIf you want to change or to delete your data, please follow the link:\r\n\r\n#edit_link#\r\n\r\nORSEE - The Online Recruitment System for Economic Experiments\r\nhttp://www.orsee.org\r\n\r\nExperiments\r\nhttp://stura.wiwi.hu-berlin.de/orsee\r\n\r\n-----','-------\r\nDiese E-Mail wurde an Sie automatisch aus dem Experiment-Teilnehmer-System verschickt.\r\n\r\nWenn Sie Ihre Daten ändern oder sich aus dem System austragen wollen,\r\nklicken Sie bitte auf den folgenden Link:\r\n\r\n#edit_link#\r\n\r\nORSEE - Das Online Rekrutierungs-System für Ökonomische Experimente\r\nhttp://www.orsee.org\r\n\r\nExperimente\r\nhttp://stura.wiwi.hu-berlin.de/orsee\r\n\r\n-----'),(100498,'y','lang','session_reminder_sent_at_time_specified','The session reminder was sent out at the time specified at the session\'s properties page.','Die Session-Erinnerung wurde zu der Zeit gesendet, die auf der Session-Eigenschaftenseite angegeben wurde.'),(110012,'y','mail','public_session_reminder','Hi #fname# #lname#!\r\n\r\nThis is just a reminder.\r\n\r\nYou have registered for the\r\nExperiment #experiment_name#\r\n\r\nat #session_date#\r\nin the Laboratory #lab_name#\r\n\r\nThe Laboratory is suited at\r\n#lab_address#\r\n\r\nPlease be in time.\r\n\r\nGreetings\r\n\r\nYour experimenters','Hallo #fname# #lname#!\r\n\r\nDies ist nur eine Erinnerungsmail.\r\n\r\nSie haben sich für das Experiment\r\n\r\n\"#experiment_name#\"\r\n\r\nregistriert\r\nund zwar für das Datum:\r\n\r\n#session_date#\r\n\r\nim Labor:\r\n\r\n#lab_name#\r\n\r\nDas Labor befindet sich:\r\n#lab_address#\r\n\r\nBitte kommen Sie pünktlich.\r\n\r\nVielen Dank\r\n\r\nIhre Experimentatoren'),(110013,'y','mail','public_system_registration','Hello #fname# #lname#!\r\n\r\nYou were registrated at the experiment participant recruitment system of the Max Planck Institute for Research into Economic Systems, Jena, Germany.\r\n\r\nYour Profile:\r\nFirstname: #lname#\r\nLastname: #fname#\r\nGender: #gender#\r\nMain field of studies: #field_of_studies#\r\nProfession: #profession#\r\nStudy start: #begin_of_studies#\r\nE-Mail-Address: #email#\r\nPhone number: #phone_number#\r\n\r\nYou will get invitations for:\r\n#invitations#\r\n\r\nTo confirm your registration, please click on the following link:\r\n\r\n#registration_link#\r\n\r\nWith kind regards\r\n\r\nExperimental Institute\r\nFaculty for Economics\r\nhttp://www.orsee.org\r\n\r\nExperiments:\r\nhttp://orsee.sourceforge.de/orsee','Hallo #fname# #lname#!\r\n\r\nSie haben sich in der Experiment-Teilnehmer-Datenbank der Fakultät für Wirtschaftswissenschaften, EconTown registriert.\r\n\r\nIhre Daten:\r\nNachname: #lname#\r\nVorname: #fname#\r\nGeschlecht: #gender#\r\nStudienfach: #field_of_studies#\r\nBeruf: #profession#\r\nStudienbeginn: #begin_of_studies#\r\nE-Mail-Adresse: #email#\r\nTelefon: #phone_number#\r\n\r\nSie erhalten Einladungen für:\r\n#invitations#\r\n\r\nUm Ihre Registrierung zu bestätigen, klicken Sie bitte auf den folgenden Link:\r\n\r\n#registration_link#\r\n\r\nMit freundlichen Grüssen\r\n\r\nInstitut für Experimente\r\nFakultät für Wirtschaftswissenschaften\r\nhttp://www.orsee.org\r\n\r\nExperimente:\r\nhttp://orsee.sourceforge.de/orsee'),(120000,'y','profession','0','-','-'),(120001,'y','profession','1030665783','House husband/Housewife','Hausmann/Hausfrau'),(120002,'y','profession','1043798985','Pupil','Schüler/in'),(120003,'y','profession','1043799010','Apprentice','Auszubildende/r'),(120004,'y','profession','1043799075','Employee','Angestellte/r'),(120005,'y','profession','1043799123','Public employee','Angestellte/r im öff. Dienst'),(120006,'y','profession','1043799177','Worker','Arbeiter/in'),(120007,'y','profession','1043799210','Officer','Beamte/r'),(120008,'y','profession','1043799260','Self-employed','Selbständig'),(120009,'y','profession','1043799314','Retiree','Rentner/in'),(120010,'y','profession','1043799349','Unemployed','Arbeitslos'),(120011,'y','profession','1043799382','Ph.D. student','Doktorand'),(120012,'y','profession','1043799402','Post-Doc','Post-Doc'),(130001,'y','public_content','contact','<center>\r\n<BR>\r\n<TABLE border=0>\r\n<TR><TD align=left>\r\nORSEE was written by<BR>\r\n<a href=\\\"http://ockenfels.uni-koeln.de/person.php?i=1\\\">Ben Greiner</a><br><br>\r\nE-Mail: <a href=\\\"mailto:bgreiner_at_uni-koeln.de\\\">bgreiner at uni-koeln.de</A>\r\n\r\n<BR><BR>\r\n<A HREF=\\\"http://ockenfels.uni-koeln.de\\\">University of Cologne<BR>\r\nDepartment of Economics</A><BR><BR>\r\nAlbertus-Magnus-Platz<BR>\r\n50923 KÖLN, GERMANY\r\n</TD></TR>\r\n</TABLE>\r\n\r\n</center>\r\n','<center>\r\n<BR>\r\n<TABLE border=0>\r\n<TR><TD align=left>\r\nORSEE wurde geschrieben von<BR>\r\n<a href=\\\"http://ockenfels.uni-koeln.de/person.php?i=1\\\">Ben Greiner</a><br><br>\r\nE-Mail: <a href=\\\"mailto:bgreiner_at_uni-koeln.de\\\">bgreiner at uni-koeln.de</A>\r\n\r\n<BR><BR>\r\n<A HREF=\\\"http://ockenfels.uni-koeln.de\\\">Universität zu Köln<BR>\r\nStaatswissenschaftliches Seminar</A><BR><BR>\r\nAlbertus-Magnus-Platz<BR>\r\n50923 KÖLN, GERMANY\r\n</TD></TR>\r\n</TABLE>\r\n\r\n</center>\r\n'),(130003,'y','public_content','impressum','<center>\r\n<BR><BR>\r\n<h4>Impressum (Anbieterkennzeichnung) - Ein Beispiel</h4>\r\n<BR>\r\n\r\n<TABLE width=100%>\r\n<TR><TD>\r\nDie nachstehenden Informationen enthalten die gesetzlich vorgesehenen Pflichtangaben zur Anbieterkennzeichnung, sowie wichtige\r\nrechtliche Hinweise zur Internetpräsenz des Recruitmentsystems des Institutes für Teilnehmerrekrutierung ( =\r\nhttp://www.orsee.org )<BR><BR>\r\n\r\n<B>Anbieter</B>\r\nAnbieter dieser Internetpräsenz ist im Rechtssinne die Fakultät für Wirtschaftswissenschaften\r\n<BR><BR>\r\n</TD></TR>\r\n<TR><TD>\r\n<TABLE width=100%>\r\n<TR><TD valign=top>\r\n      Adresse:\r\n</TD><TD>\r\n              Fakultät für Wirtschaftswissenschaften<BR>\r\n              Adam-Smith-Straße 4<BR>\r\n              12345 EconTown<BR>\r\nEconomy\r\n</TD></TR>\r\n<TR><TD>\r\n      Telefon:\r\n</TD><TD>\r\n              0 12 / 345678\r\n</TD></TR>\r\n<TR><TD>\r\n      Internet:\r\n</TD><TD>\r\n              http://www.orsee.net\r\n</TD></TR>\r\n<TR><TD>\r\n      E-Mail:\r\n</TD><TD>\r\n              experiments@orsee.org\r\n</TD></TR>\r\n</TABLE>\r\n</TD></TR>\r\n<TR><TD>\r\n<B>Vertreter</B><BR>\r\nDie Fakultät für Wirtschaftswissenschaften wird gesetzlich vertreten durch den Dekan, Prof. Dr.\r\nAdam Smith.\r\n<BR><BR>\r\n<B>Redaktionsverantwortliche(r)</B><BR>\r\nRedaktionsverantwortliche(r) für die Internetpräsenz der Fakultät für Wirtschaftswissenschaften ist:\r\nJack Modeling <BR><BR>\r\n\r\n<B>Rechtliche Hinweise zur Organisationsform</B><BR>\r\nDie Fakultät für Wirtschaftswissenschaften ist eine gemeinnützige Forschungseinrichtung, die in der Rechtsform eines eingetragenen Vereins organisiert\r\nist. <BR><BR>\r\n\r\n<B>Rechtliche Hinweise zur Haftung / Disclaimer</B><BR>\r\nDie Fakultät für Wirtschaftswissenschaften ist um Richtigkeit und Aktualität der auf dieser Internetpräsenz bereitgestellten Informationen bemüht.\r\nTrotzdem können Fehler und Unklarheiten nicht vollständig ausgeschlossen werden. Die Fakultät für Wirtschaftswissenschaften übernimmt deshalb\r\nkeine Gewähr für die Aktualität, Richtigkeit, Vollständigkeit oder Qualität der bereitgestellten Informationen. Für Schäden materieller oder\r\nimmaterieller Art. die durch die Nutzung oder Nichtnutzung der dargebotenen Informationen bzw. durch die Nutzung fehlerhafter und\r\nunvollständiger Informationen unmittelbar oder mittelbar verursacht werden, haftet die Fakultät für Wirtschaftswissenschaften nicht, sofern ihr nicht\r\nnachweislich vorsätzliches oder grob fahrlässiges Verschulden zur Last fällt. Gleiches gilt für kostenlos zum Download bereitgehaltene\r\nSoftware. Die Fakultät für Wirtschaftswissenschaften behält es sich vor, Teile des Internetangebots oder das gesamte Angebot ohne gesonderte\r\nAnkündigung zu verändern, zu ergänzen, zu löschen oder die Veröffentlichung zeitweise oder endgültig einzustellen.\r\n<BR><BR>\r\nDie Verantwortlichkeit für \\\"fremde Inhalte\\\", die beispielsweise durch direkte oder indirekte Verknüpfungen (z.B. sogenannte \\\"Links\\\") zu\r\nanderen Anbietern bereitgehalten werden, setzt unter anderem positive Kenntnis des rechtswidrigen bzw. strafbaren Inhaltes voraus.\r\n\\\"Fremde Inhalte\\\" sind in geeigneter Weise gekennzeichnet. Die Fakultät für Wirtschaftswissenschaften hat auf \\\"fremde Inhalte\\\" keinerlei Einfluss und\r\nmacht sich diese Inhalte auch nicht zu Eigen. Die Fakultät für Wirtschaftswissenschaften hat keine positive Kenntnis über rechtswidrige oder anstößige\r\nInhalte auf den verknüpften Seiten fremder Anbieter. Sollten auf den verknüpften Seiten fremder Anbietet dennoch rechtswidrige oder\r\nanstößige Inhalte enthalten sein, so distanziert sich die Fakultät für Wirtschaftswissenschaften von diesen Inhalten ausdrücklich.\r\n<BR><BR>\r\n<B>Rechtliche Hinweise zum Urheberrecht</B><BR>\r\nDas Layout der Homepage, die verwendeten Grafiken sowie die sonstigen Inhalte sind urheberrechtlich geschützt.\r\n<BR><bR>\r\n© Fakultät für Wirtschaftswissenschaften, EconTown, Economy. Alle Rechte vorbehalten\r\n\r\n</TD></TR></TABLE>\r\n</center>','<center>\r\n<BR><BR>\r\n<h4>Impressum (Anbieterkennzeichnung) - Ein Beispiel</h4>\r\n<BR>\r\n\r\n<TABLE width=100%>\r\n<TR><TD>\r\nDie nachstehenden Informationen enthalten die gesetzlich vorgesehenen Pflichtangaben zur Anbieterkennzeichnung, sowie wichtige\r\nrechtliche Hinweise zur Internetpräsenz des Recruitmentsystems des Institutes für Teilnehmerrekrutierung ( =\r\nhttp://www.orsee.org )<BR><BR>\r\n\r\n<B>Anbieter</B>\r\nAnbieter dieser Internetpräsenz ist im Rechtssinne die Fakultät für Wirtschaftswissenschaften\r\n<BR><BR>\r\n</TD></TR>\r\n<TR><TD>\r\n<TABLE width=100%>\r\n<TR><TD valign=top>\r\n      Adresse:\r\n</TD><TD>\r\n              Fakultät für Wirtschaftswissenschaften<BR>\r\n              Adam-Smith-Straße 4<BR>\r\n              12345 EconTown<BR>\r\nEconomy\r\n</TD></TR>\r\n<TR><TD>\r\n      Telefon:\r\n</TD><TD>\r\n              0 12 / 345678\r\n</TD></TR>\r\n<TR><TD>\r\n      Internet:\r\n</TD><TD>\r\n              http://www.orsee.net\r\n</TD></TR>\r\n<TR><TD>\r\n      E-Mail:\r\n</TD><TD>\r\n              experiments@orsee.org\r\n</TD></TR>\r\n</TABLE>\r\n</TD></TR>\r\n<TR><TD>\r\n<B>Vertreter</B><BR>\r\nDie Fakultät für Wirtschaftswissenschaften wird gesetzlich vertreten durch den Dekan, Prof. Dr.\r\nAdam Smith.\r\n<BR><BR>\r\n<B>Redaktionsverantwortliche(r)</B><BR>\r\nRedaktionsverantwortliche(r) für die Internetpräsenz der Fakultät für Wirtschaftswissenschaften ist:\r\nJack Modeling <BR><BR>\r\n\r\n<B>Rechtliche Hinweise zur Organisationsform</B><BR>\r\nDie Fakultät für Wirtschaftswissenschaften ist eine gemeinnützige Forschungseinrichtung, die in der Rechtsform eines eingetragenen Vereins organisiert\r\nist. <BR><BR>\r\n\r\n<B>Rechtliche Hinweise zur Haftung / Disclaimer</B><BR>\r\nDie Fakultät für Wirtschaftswissenschaften ist um Richtigkeit und Aktualität der auf dieser Internetpräsenz bereitgestellten Informationen bemüht.\r\nTrotzdem können Fehler und Unklarheiten nicht vollständig ausgeschlossen werden. Die Fakultät für Wirtschaftswissenschaften übernimmt deshalb\r\nkeine Gewähr für die Aktualität, Richtigkeit, Vollständigkeit oder Qualität der bereitgestellten Informationen. Für Schäden materieller oder\r\nimmaterieller Art. die durch die Nutzung oder Nichtnutzung der dargebotenen Informationen bzw. durch die Nutzung fehlerhafter und\r\nunvollständiger Informationen unmittelbar oder mittelbar verursacht werden, haftet die Fakultät für Wirtschaftswissenschaften nicht, sofern ihr nicht\r\nnachweislich vorsätzliches oder grob fahrlässiges Verschulden zur Last fällt. Gleiches gilt für kostenlos zum Download bereitgehaltene\r\nSoftware. Die Fakultät für Wirtschaftswissenschaften behält es sich vor, Teile des Internetangebots oder das gesamte Angebot ohne gesonderte\r\nAnkündigung zu verändern, zu ergänzen, zu löschen oder die Veröffentlichung zeitweise oder endgültig einzustellen.\r\n<BR><BR>\r\nDie Verantwortlichkeit für \\\"fremde Inhalte\\\", die beispielsweise durch direkte oder indirekte Verknüpfungen (z.B. sogenannte \\\"Links\\\") zu\r\nanderen Anbietern bereitgehalten werden, setzt unter anderem positive Kenntnis des rechtswidrigen bzw. strafbaren Inhaltes voraus.\r\n\\\"Fremde Inhalte\\\" sind in geeigneter Weise gekennzeichnet. Die Fakultät für Wirtschaftswissenschaften hat auf \\\"fremde Inhalte\\\" keinerlei Einfluss und\r\nmacht sich diese Inhalte auch nicht zu Eigen. Die Fakultät für Wirtschaftswissenschaften hat keine positive Kenntnis über rechtswidrige oder anstößige\r\nInhalte auf den verknüpften Seiten fremder Anbieter. Sollten auf den verknüpften Seiten fremder Anbietet dennoch rechtswidrige oder\r\nanstößige Inhalte enthalten sein, so distanziert sich die Fakultät für Wirtschaftswissenschaften von diesen Inhalten ausdrücklich.\r\n<BR><BR>\r\n<B>Rechtliche Hinweise zum Urheberrecht</B><BR>\r\nDas Layout der Homepage, die verwendeten Grafiken sowie die sonstigen Inhalte sind urheberrechtlich geschützt.\r\n<BR><bR>\r\n© Fakultät für Wirtschaftswissenschaften, EconTown, Economy. Alle Rechte vorbehalten\r\n\r\n</TD></TR></TABLE>\r\n</center>'),(100103,'y','lang','delete_admin','Delete administrator','Administrator löschen'),(100015,'y','lang','admin_deleted','Admin deleted','Administrator gelöscht'),(100389,'y','lang','password_changed','Password changed.','Passwort geändert.'),(100278,'y','lang','is_experimenter','Is experimenter?','Ist Experimentator?'),(80004,'y','help','experimenter_list','Administrators marked as experimenters may be connected with experiments and receive the appropriate emails. Only experimenters will be listed at the experiment\'s edit page.','Administratoren, die als Experimentator markiert sind, können Eigner von Experimenten sein und deren Emails empfangen. Nur als Experimentatoren gekennzeichnete Administratoren werden auf der Experiment-Bearbeitungsseite gelistet.'),(100612,'y','lang','y','yes','ja'),(100328,'y','lang','n','no','nein'),(130004,'y','public_content','mainpage_welcome','<BR><BR><BR>\r\n<h4 class=\\\"title1\\\">Welcome on the experiment server</h4><BR>\r\nof the Online Recruitment System for Economic Experiments (ORSEE)\r\n<BR><BR>\r\n<TABLE width=60%>\r\n<TR><TD>\r\nThis is just a test installation. You may check out the functions provided by ORSEE.<BR><BR>\r\n\r\nOn real system we would write here:<BR>\r\nAt this site you can register for laboratory experiments, which will be conducted in EconTown, as well as for internet experiments.<BR><BR>\r\nFor the participation at the experiments we follow some rules, which you should read before. Please also have a look at our privacy policy. To register you will have to accept both of them.\r\n</TD></TR></TABLE>\r\n<BR>\r\n<BR>','<BR><BR><BR>\r\n<h4 class=\\\"title1\\\">Willkommen auf dem Experimentserver</h4><BR>\r\ndes Online-Rekrutierungssystems für Ökonomische Experimente (ORSEE)\r\n<BR><BR>\r\n<TABLE width=60%>\r\n<TR><TD>\r\nDies ist nur eine Testinstallation. Sie können hier die Funktionen von ORSEE ausprobieren.<BR><BR>\r\n\r\nHier könnte auch stehen:<BR>\r\nSie können sich bei uns sowohl für Laborexperimente, die in EconTown durchgeführt werden, als auch für\r\nInternet-Experimente registrieren.<BR><BR>\r\nFür die Teilnahme und Durchführung von Experimenten haben wir Regeln aufgestellt, über die Sie sich\r\n bitte vorher informieren. Bitte beachten Sie ebenfalls unsere Datenschutzbestimmungen. Bei einer Registrierung müssen Sie beides akzeptieren.\r\n\r\n</TD></TR></TABLE>\r\n<BR>\r\n<BR>'),(130005,'y','public_content','privacy_policy','Teilnehmerdatenbank<BR>\r\n<UL>\r\n<LI>Die im sogenannten \\\"Recruitment System\\\" des Institutes erfassten Daten dienen ausschliesslich der Organisation von wissenschaftlichen Experimenten. Diese Daten werden nicht an Dritte weitergegeben. Wir benutzen die Daten zu den folgenden Zwecken:\r\n<UL>\r\n<LI>um die Teilnehmer über neue Labor- oder Internetexperimente zu informieren und dazu einzuladen</LI>\r\n<LI>um eine wissenschaftlich motivierte Auswahl von Teilnehmern für bestimmte Experimente durchzuführen</LI>\r\n<LI>um das Erscheinen bzw. Nicht-Erscheinen der angemeldeten Teilnehmer bei Experimenten zu überprüfen</LI>\r\n</UL></LI>\r\n<LI>Es gibt keine Verknüpfung zwischen den im Experiment generierten Daten und den Daten im \\\"Recruitment System\\\".</LI>\r\n<LI>Jeder Teilnehmer kann jederzeit bestimmen, dass er keine weiteren Einladungen zu Experimenten erhalten will.</LI>\r\n<LI>Auf Verlangen eines Teilnehmer werden seine erfassten Daten uneingeschränkt gelöscht. Hierfür ist eine formlose schriftliche und unterschriebene Löschungsaufforderung zu schicken an die Fakultät für Wirtschaftswissenschaften, Recruitment System, Adam-Smith-Str. 4, 12345 EconTown, Economy.</LI>\r\n</UL>\r\n<BR>\r\nExperimente<BR>\r\n<UL>\r\n<LI>Bei der Durchführung von Experimenten werden durch die dabei zu treffenden Entscheidungen der Teilnehmer Daten generiert.</LI>\r\n<LI>Diese Daten werden wissenschaftlich durch die Fakultät für Wirtschaftswissenschaften ausgewertet. Dabei werden die Entscheidungsdaten anonymisiert und können keiner Person zugeordnet werden. Die Teilnahme an den Experimenten ist in diesem Sinne anonym.</LI>\r\n<LI>Die generierten, anonymisierten Daten werden für die Erstellung von wissenschaftlichen Forschungsarbeiten und Vorträgen benutzt. Diese Arbeiten werden veröffentlicht.</LI>\r\n</UL>\r\n<BR>\r\nVideoexperimente<BR>\r\n<UL>\r\n<LI>Bei der Durchführung von Videoexperimenten werden von den Teilnehmern\r\nTon und Bildaufzeichungen erstellt. Die Videodaten werden wissenschaftlich durch die Fakultät für Wirtschaftswissenschaften ausgewertet. Insbesondere werden Transskripte der Konversation erstellt. Die Fakultät für Wirtschaftswissenschaften\r\nerhält das Recht, ausgewählte Sequenzen im Rahmen von Präsentationen\r\nzu publizieren.</LI>\r\n<LI>Diese Aufzeichnungen werden anonymisiert und können bei der Auswertung\r\nnicht den persönlichen Daten der Teilnehmer zugeordnet werden.</LI>\r\n</UL>','Teilnehmerdatenbank<BR>\r\n<UL>\r\n<LI>Die im sogenannten \\\"Recruitment System\\\" des Institutes erfassten Daten dienen ausschliesslich der Organisation von wissenschaftlichen Experimenten. Diese Daten werden nicht an Dritte weitergegeben. Wir benutzen die Daten zu den folgenden Zwecken:\r\n<UL>\r\n<LI>um die Teilnehmer über neue Labor- oder Internetexperimente zu informieren und dazu einzuladen</LI>\r\n<LI>um eine wissenschaftlich motivierte Auswahl von Teilnehmern für bestimmte Experimente durchzuführen</LI>\r\n<LI>um das Erscheinen bzw. Nicht-Erscheinen der angemeldeten Teilnehmer bei Experimenten zu überprüfen</LI>\r\n</UL></LI>\r\n<LI>Es gibt keine Verknüpfung zwischen den im Experiment generierten Daten und den Daten im \\\"Recruitment System\\\".</LI>\r\n<LI>Jeder Teilnehmer kann jederzeit bestimmen, dass er keine weiteren Einladungen zu Experimenten erhalten will.</LI>\r\n<LI>Auf Verlangen eines Teilnehmer werden seine erfassten Daten uneingeschränkt gelöscht. Hierfür ist eine formlose schriftliche und unterschriebene Löschungsaufforderung zu schicken an die Fakultät für Wirtschaftswissenschaften, Recruitment System, Adam-Smith-Str. 4, 12345 EconTown, Economy.</LI>\r\n</UL>\r\n<BR>\r\nExperimente<BR>\r\n<UL>\r\n<LI>Bei der Durchführung von Experimenten werden durch die dabei zu treffenden Entscheidungen der Teilnehmer Daten generiert.</LI>\r\n<LI>Diese Daten werden wissenschaftlich durch die Fakultät für Wirtschaftswissenschaften ausgewertet. Dabei werden die Entscheidungsdaten anonymisiert und können keiner Person zugeordnet werden. Die Teilnahme an den Experimenten ist in diesem Sinne anonym.</LI>\r\n<LI>Die generierten, anonymisierten Daten werden für die Erstellung von wissenschaftlichen Forschungsarbeiten und Vorträgen benutzt. Diese Arbeiten werden veröffentlicht.</LI>\r\n</UL>\r\n<BR>\r\nVideoexperimente<BR>\r\n<UL>\r\n<LI>Bei der Durchführung von Videoexperimenten werden von den Teilnehmern\r\nTon und Bildaufzeichungen erstellt. Die Videodaten werden wissenschaftlich durch die Fakultät für Wirtschaftswissenschaften ausgewertet. Insbesondere werden Transskripte der Konversation erstellt. Die Fakultät für Wirtschaftswissenschaften\r\nerhält das Recht, ausgewählte Sequenzen im Rahmen von Präsentationen\r\nzu publizieren.</LI>\r\n<LI>Diese Aufzeichnungen werden anonymisiert und können bei der Auswertung\r\nnicht den persönlichen Daten der Teilnehmer zugeordnet werden.</LI>\r\n</UL>'),(130006,'y','public_content','rules','Laboratory Experiments<BR><BR>\r\n\r\nIn order to participate in experiments conducted by researchers of the Faculty of Economics in EconTown, a person has to register online (http://www.orsee.org) and hand in this form signed to the Faculty. The signature can be done at the time of the first participation at an laboratory experiment.<BR><BR>\r\nBy registering for laboratory experiments, you indicate your intention of taking part in experiments conducted by researchers of the Faculty.<BR><BR>\r\nRules for laboratory experiments\r\n<UL>\r\n<LI>For each experiment, a certain number of registered persons will get an invitation email. Only the invited persons have the right to take part in the experiment.</LI>\r\n<LI>In case you get an email which invites you to participate in a particular experiment, you have to answer positively to this email in order to be able to take part in the experiment. By doing so, you indicate your commitment to participate.</LI>\r\n<LI>For each experiment, an excess number of participants will be invited. The first invited persons arriving at the experiment\\\'s location will participate. Participants who are invited and may not participate in the experiment due to capacity constraints or other failures are compensated with the show up payment.</LI>\r\n<LI>Every participant who is invited to an experiment and showed up in time will at least be compensated  by a show up payment of € 2.50.</LI>\r\n<LI>Usually, participation will be compensated in cash. The amount depends on the participant\\\'s and other participants\\\' decisions during the experiment.</LI>\r\n<LI>During an experiment, each participant will have to act upon the rules stated by the experimentalists in the instructions.</LI>\r\n<LI>To ensure that only those people who have been invited and who positively answered to the invitation email take part in the experiment, participants are asked to carry an identity paper (with a picture on it) with them. A participant who does not carry an identity paper will not receive the show up payment and might not participate.</LI>\r\n<LI>People who give their agreement to take part in a particular experiment have to keep in mind that if they do not turn up or turn up late then the experiment might be cancelled because of a lack of participants.</LI>\r\n</UL><BR>\r\nTherefore, by registering for laboratory experiments, you agree with the following statements:<BR><BR>\r\nI have been informed that if I do not turn up or turn up late for an experiment I have been enrolled for, this may lead to the experiment having to be cancelled. I am aware that I can be made liable for costs incurred from cancelled experiments if I do not inform the Faculty at least 24 hours ahead if I am not able to attend the experiment or provide any plausible reason for not being able to inform the Faculty in time or show up due to some unforeseeable incident.<BR><BR>\r\nMoreover, each time you do not turn up for an experiment you have been enrolled for without informing the experimentalists on time or providing any plausible reason, a distinctive mark will be added to your reputation score (see your personal data on the web site once you have registered online). The more distinctive marks you have the lower your chances to be invited for future experiments. Once your reputation score contains three distinctive marks, you will not be invited anymore to take part in experiments conducted by researchers of the Faculty.<BR><BR> \r\nIn terms of insurance coverage, the rooms of the Faculty are protected under a statutory liability insurance police of civil law content. The Faculty of Economics will assume liability in the event of any damage that occurs through its own fault. No liability without fault clause is included herein. \r\n<BR><BR>\r\nInternet Experiments<BR><BR>\r\nThe rules for Internet experiments will be announced at the registration page for the specific experiment.\r\n','Laborexperimente<BR><BR>\r\n\r\nUm an Experimenten teilzunehmen, die von Wissenschaftlern der Fakultät für Wirtschaftswissenschaften, EconTown durchgeführt werden, müssen Sie sich online registrieren (http://www.orsee.org) und ein unterschriebenes Exemplar dieses Formulars der Fakultät zur Verfügung stellen. Die Unterschrift kann auch bei der Teilnahme an dem ersten Experiment nach Registrierung geleistet werden.<BR><BR>Die Registrierung für Laborexperimente ist eine Absichtserklärung zur Teilnahme an den von den Wissenschaftlern der Fakultät durchgeführten Experimenten.<BR><BR>\r\n\r\nRegeln für Laborexperimente\r\n<UL>\r\n<LI>Für jedes Experiment erhält eine bestimmte Zahl registrierter Personen eine Einladung per E-mail. Nur eingeladene Personen sind zur Teilnahme am Experiment berechtigt.</LI>\r\n<LI>Nach Erhalt einer Einladung per E-Mail zu einem bestimmten Experiment muss eine positive Rückantwort durch den Teilnehmer erfolgen, um bei diesem Experiment angemeldet zu sein. Diese Antwort ist eine verbindliche Zusage, an diesem Experiment teilzunehmen.</LI>\r\n<LI>Für jedes Experiment werden mehr Teilnehmer eingeladen als benötigt. Es nehmen diejenigen am Experiment teil, die zuerst im Labor erscheinen. Teilnehmer, die eingeladen wurden und rechtzeitig anwesend sind, aber aus Kapazitäts- bzw. anderen Gründen nicht teilnehmen können, erhalten für ihr Erscheinen eine Entschädigung.</LI>\r\n<LI>Jeder für ein Experiment eingeladene und rechtzeitig anwesende Teilnehmer erhält zumindest eine Entschädigungszahlung von € 2,50.</LI>\r\n<LI>Die Teilnehmer werden üblicherweise bar bezahlt. Die Höhe des ausgezahlten Betrages hängt von den eigenen Entscheidungen bzw. von den Entscheidungen der anderen Experimentteilnehmer ab.</LI>\r\n<LI>Während eines Experiments muss sich jeder Teilnehmer an die von den Experimentatoren in den Instruktionen festgelegten Regeln halten.</LI>\r\n<LI>Um sicherzustellen, dass nur eingeladene und ordnungsgemäß per E-mail angemeldete Teilnehmer am Experiment teilnehmen, muss sich jeder Teilnehmer ausweisen (Dokument mit Bild). Kann sich ein Teilnehmer nicht ausweisen, erhält er keine Entschädigung für sein Erscheinen und kann eventuell auch nicht am Experiment teilnehmen.</LI>\r\n<LI>Teilnehmer, die ihre Bereitschaft zur Teilnahme an einem bestimmten Experiment erklärt haben und nicht bzw. zu spät erscheinen, müssen sich der Tatsache bewusst sein, dass sie damit die Durchführung des Experiments wegen Mangel an Teilnehmern gefährden. </LI>\r\n</UL><BR>\r\nMit Ihrer Anmeldung für Laborexperimente erklären Sie sich mit folgenden Aussagen einverstanden:<BR><BR>\r\nIch bin darüber informiert worden, dass mein Nichterscheinen bzw. mein zu spätes Erscheinen zum Experiment, für dass ich mich angemeldet habe, zur Absage des Experiments führen kann. Ich bin mir bewusst, dass ich für Kosten, die durch abgesagte Experimente entstehen, haftbar gemacht werden kann, wenn ich der Fakultät nicht mindestens 24 Stunden vor Durchführung des Experiments über meine Nichtteilnahme informiere bzw. nicht erklären bzw. belegen kann, weshalb eine rechtzeitige Information der Fakultät bzw. rechtzeitiges Erscheinen nicht möglich war.<BR><BR>\r\nBei jedem Nichterscheinen nach Anmeldung für ein Experiment - ohne rechtzeitige Absage bei dem Experimentverantwortlichen oder Angabe von plausiblen Gründen - erhält das persönliche Konto des Teilnehmers einen Minuspunkt (siehe Personendaten auf der Web-Site nach der online Anmeldung). Je mehr Minuspunkte ein Teilnehmer hat, umso geringer sind seine Chancen, für weitere Experimente eingeladen zu werden. Sobald das Konto eines Teilnehmers drei Minuspunkte enthält, wird er nicht wieder zu einem von Wissenschaftlern der Fakultät durchgeführten Experiment eingeladen. <BR><BR>\r\nDer Versicherungsschutz in den Räumen der Fakultät besteht bezüglich der gesetzlichen Haftpflicht privatrechtlichen Inhalts. Die Fakultät für Wirtschaftswissenschaften haftet für alle Schäden, die vom Institut zu vertreten sind. Eine verschuldensunabhängige Haftung besteht nicht.<BR><BR>\r\nInternetexperimente<BR><BR>\r\nDie Regeln für Internetexperimente werden auf der Registrierungs-Seite des jeweiligen Experimentes beschrieben.'),(20001,'y','experimentclass','1099753596','Public Good Game','Öffentliches Gut Spiel'),(20002,'y','experimentclass','1099753611','Dictator Game','Diktator Spiel'),(20003,'y','experimentclass','1099753621','Ultimatum Game','Ultimatum Spiel'),(20004,'y','experimentclass','1099753635','Market Game','Markt Spiel'),(20005,'y','experimentclass','1099753667','Individual Decision Experiment','Einzelentscheidungs-Experiment'),(30000,'y','experiment_invitation_mail','108471125','Experiment\nHello #fname# #lname#!\r\n\r\nHerewith we want to invite you to participate at a experiment in our laboratory.\r\n\r\nThe sessions are scheduled for the following times:\r\n#sessionlist#\r\n\r\nIf you want to participate, you can register by clicking on the following link:\r\n\r\n#link#\r\n\r\n(If you cannot click on the link, copy it to the clipboard by selecting it, rightclick and choosing \\\"Copy\\\", and then paste it into the address line in your browser by right clicking there and choosing \\\"Paste\\\".)','Experiment\nHallo #fname# #lname#!\r\n\r\nHiermit möchten wir Sie zu einem neuen Experiment einladen.\r\n\r\nEs stehen die folgenden Termine zur Auswahl:\r\n#sessionlist#\r\n\r\nWenn Sie teilnehmen möchten, können Sie sich unter dem folgenden Link anmelden:\r\n\r\n#link#\r\n\r\n(Wenn Sie in Ihrem E-Mail-Programm nicht direkt auf den Link klicken können, dann markieren Sie ihn einfach und kopieren ihn in die Zwischenalage, indem Sie rechts klicken und \\\"Kopieren\\\" wählen. Dann starten Sie Ihren Webbrowser und fügen die Adresse dort im Adressenfenster ein, indem Sie dort rechts klicken und \\\"Einfügen\\\" wählen.)'),(140000,'y','subjectpool','1','',''),(100458,'y','lang','replace_experimenttype_with','Replace this experiment type in participants\' subscriptions and experiments\' properties with the experiment type','Ersetze diesen Experimenttyp in den Abonnements der Teilnehmer und den Eigenschaften der Experimente mit dem Experimenttype'),(100000,'y','lang','action','Action','Aktion'),(100001,'y','lang','add','Add','Hinzufügen'),(100003,'y','lang','add_default_mail','Add default mail','E-Mail-Vorlage hinzufügen'),(100004,'y','lang','add_default_text','Add default text','Textvorlage hinzufügen'),(100006,'y','lang','add_faq','Add FAQ','FAQ hinzufügen'),(100007,'y','lang','add_field_of_studies','Add field of studies','Studienfach hinzufügen'),(100008,'y','lang','add_help','Add help','Hilfe hinzufügen'),(100009,'y','lang','add_language','Add language','Sprache hinzufügen'),(100010,'y','lang','add_participant','Add participant','Teilnehmer hinzufügen'),(100011,'y','lang','add_profession','Add profession','Beruf hinzufügen'),(100012,'y','lang','add_public_content','Add public content','Öffentliche Inhalte hinzufügen'),(100013,'y','lang','add_symbol','Add symbol','Symbol hinzufügen'),(100014,'y','lang','admin_area','Admin Area','Admin-Bereich'),(100016,'y','lang','admin_login_page','Admin login page','Admin Anmeldeseite'),(100020,'y','lang','already_confirmed_error','You have already confirmed your registration!','Sie haben Ihre Registrierung bereits bestätigt!'),(100021,'y','lang','already_registered_but_not_confirmed','You have already registered, but not confirmed your registration.','Sie sind bereits registriert, haben Ihre Registrierung aber noch nicht bestätigt.'),(100022,'y','lang','and','AND','UND'),(100023,'y','lang','answer','Answer','Antwort'),(100024,'y','lang','answer_in_xxxlang','Answer in','Antwort in'),(100025,'y','lang','anyone','anyone','irgendein'),(100026,'y','lang','assigned','assigned','zugeordnet'),(100027,'y','lang','assigned_internal_experiment_types','Assigned internal experiment types','Zugeordnete interne Experiment-Typen'),(100028,'y','lang','assigned_subjects','Assigned Subjects','Zugeordnete Teilnehmer'),(100029,'y','lang','assigned_subjects_not_yet_registered','Assigned subjects not yet registered','Zugeordnete Teilnehmer, die noch nicht für eine Session registriert sind'),(100030,'y','lang','assign_all_participants_in_list','Assign all participants in list','Ordne alle Teilnehmer in der Liste zu'),(100031,'y','lang','assign_only_marked_participants','Assign only marked participants','Ordne nur die markierten Teilnehmer zu'),(100032,'y','lang','assign_subjects','Assign subjects','Teilnehmer zuordnen'),(100033,'y','lang','at_end','At end','Am Ende'),(100034,'y','lang','at_least_one_exptype_has_to_be_selected','At least one experiment type has to be selected for invitations.','Wenigstens ein Experimenttyp muss für Einladungen ausgewählt werden.'),(100035,'y','lang','at_minimum_one_exptype_mapping_required','At minimum one experiment type mapping is required.','Sie müssen mindestens eine Experiment-Typ-Zuordnung angeben.'),(100036,'y','lang','at_start','At start','Am Anfang'),(100039,'y','lang','available_for_participants','Available for participants?','Verfügbar für Teilnehmer?'),(100040,'y','lang','available_in_public_area','Available in public area?','Verfügbar im öff. Bereich?'),(100041,'y','lang','back','Back','Zurück'),(100042,'y','lang','back_to_mail_page','Back to mail page','Zurück zur Mail-Seite'),(100043,'y','lang','basic_data','Basic Data','Basisdaten'),(100044,'y','lang','begin_of_studies','Begin of studies','Studienbeginn'),(100045,'y','lang','body_of_message','Body of message','Text der Nachricht'),(100046,'y','lang','both','both','beide'),(100047,'y','lang','calendar','Calendar','Kalender'),(100048,'y','lang','can_request_invitations_for','Can request invitations for','Können Einladungen anfordern für'),(100049,'y','lang','change','Change','Ändern'),(100050,'y','lang','changes_saved','Changes saved!','Änderungen gespeichert!'),(100051,'y','lang','change_my_password','Change my password','Mein Passwort ändern'),(100052,'y','lang','check_for_free_places_in_session','Check for free places in session','Kontrolliere auf freie Plätze in der Session'),(100053,'y','lang','city','City','Ort'),(100055,'y','lang','click_here_to_go_to_session_xxx','Click here to go to session','Hier klicken zum wechseln zur Session'),(100056,'y','lang','click_to_experiment_registrations','Click here to see your experiment registrations','Klicken Sie hier, um Ihre Experimentanmeldungen zu sehen'),(100057,'y','lang','complete','complete','voll'),(100058,'y','lang','confirmation_error','You are not registered or your registration was already deleted! Please register again!','Anmeldungsfehler! Sie sind nicht registriert oder Ihre Registrierung wurde gelöscht. Bitte registrieren Sie sich noch einmal.'),(100059,'y','lang','confirmation_message_mailed_again','The confirmation message was mailed again to you.','Die Bestätigungs-E-Mail wurde noch einmal an Sie verschickt.'),(100060,'y','lang','confirm_registration','Confirm registration','Anmeldung bestätigen'),(100061,'y','lang','contact','Contact','Kontakt'),(100062,'y','lang','content_name','Content name','Bezeichnung'),(100065,'y','lang','count','Count','Anzahl'),(100066,'y','lang','country','Country','Land'),(100067,'y','lang','create_new','Create new','Neu'),(100068,'y','lang','create_new_laboratory','Create new laboratory','Neuen Labor erstellen'),(100069,'y','lang','cron_job_time_every_12_hours','Every 12 hours','Alle 12 Stunden'),(100070,'y','lang','cron_job_time_every_15_minutes','Every 15 minutes','Alle 15 Minuten'),(100071,'y','lang','cron_job_time_every_2_hours','Every 2 hours','Alle 2 Stunden'),(100072,'y','lang','cron_job_time_every_30_minutes','Every 30 minutes','Alle 30 Minuten'),(100073,'y','lang','cron_job_time_every_5_minutes','Every 5 minutes','Alle 5 Minuten'),(100074,'y','lang','cron_job_time_every_6_hours','Every 6 hours','Alle 6 Stunden'),(100075,'y','lang','cron_job_time_every_day_at_15','Every day at 3 pm','Jeden Tag um 15 Uhr'),(100076,'y','lang','cron_job_time_every_day_at_22','Every day at 10 pm.','Jeden Tag um 22 Uhr'),(100077,'y','lang','cron_job_time_every_day_at_3','Every day at 3 am','Jeden Tag um 3 Uhr'),(100078,'y','lang','cron_job_time_every_day_at_8','Every day at 8 am','Jeden Tag um 8 Uhr'),(100079,'y','lang','cron_job_time_every_hour','Every hour','Jede Stunde'),(100080,'y','lang','cron_job_time_every_monday_at_8','Every Monday at 8 am','Jeden Montag um 8 Uhr'),(100081,'y','lang','cron_job_time_every_month_at_15th_at_8','Every 15th of month at 8 am','Jeden 15. des Monats um 8 Uhr'),(100082,'y','lang','cron_job_time_every_month_at_1st_at_8','Every 1st of month at 8 am','Jeden 1. des Monats um 8 Uhr'),(100083,'y','lang','cron_job_time_every_thursday_at_8','Every Thursday at 8 am','Jeden Donnerstag um 8 Uhr'),(100084,'y','lang','current_experiments','Current experiments','Aktuelle Experimente'),(100085,'y','lang','current_month','CURRENT MONTH','AKTUELLER MONAT'),(100086,'y','lang','database','Database','Datenbank'),(100087,'y','lang','database_error','Technical error! No data saved!','Technischer Fehler! Keine Daten gespeichert!'),(100088,'y','lang','dataform','data form','Datenformular'),(100090,'y','lang','data_for_exptype','Settings for experiment type','Einstellungen für Experiment-Typ'),(100091,'y','lang','data_for_subpool','Data for subpool','Untergruppen-Daten'),(100092,'y','lang','date','Date','Datum'),(100093,'y','lang','date_and_time','Date and Time','Datum und Zeit'),(100096,'y','lang','default_mails','Default mails','E-Mail-Vorlagen'),(100097,'y','lang','default_mail_deleted','Default mail deleted','E-Mail-Vorlage gelöscht'),(100098,'y','lang','default_texts','Default texts','Textvorlagen'),(100099,'y','lang','default_text_deleted','Default text deleted','Textvorlage gelöscht'),(100100,'y','lang','default_values','Default values','Vorgabewerte'),(100101,'y','lang','def_expmail_subject','Experiment','Experiment'),(100102,'y','lang','delete','Delete','Löschen'),(100105,'y','lang','delete_assigned_subjects','Delete assigned subjects','Zugeordnete Teilnehmer löschen'),(100106,'y','lang','delete_default_mail','Delete default mail','E-Mail-Vorlage löschen'),(100107,'y','lang','delete_default_text','Delete default text','Textvorlage löschen'),(100108,'y','lang','delete_download','Delete uploaded file','Hochgeladene Datei löschen'),(100109,'y','lang','delete_experiment','Delete Experiment','Experiment löschen'),(100111,'y','lang','delete_faq','Delete FAQ','FAQ löschen'),(100112,'y','lang','delete_field_of_studies','Delete field of studies','Studienfach löschen'),(100113,'y','lang','delete_help','Delete help','Hilfe löschen'),(100114,'y','lang','delete_laboratory','Delete laboratory','Labor löschen'),(100115,'y','lang','delete_lab_reservation','Delete laboratory time reservation','Laborreservierung löschen'),(100116,'y','lang','delete_language','Delete language','Sprache löschen'),(100118,'y','lang','delete_participant','Delete participant','Teilnehmer löschen'),(100119,'y','lang','delete_participant_data','Delete participant data','Teilnehmer ausgetragen'),(100120,'y','lang','delete_profession','Delete profession','Beruf löschen'),(100121,'y','lang','delete_public_content','Delete public content','Inhalte löschen'),(100122,'y','lang','delete_session','Delete session','Session löschen'),(100123,'y','lang','delete_subpool','Delete Sub-subjectpool','Sub-Subjectpool löschen'),(100124,'y','lang','delete_symbol','Delete language symbol','Sprachsymbol löschen'),(100125,'y','lang','description','Description','Beschreibung'),(100126,'y','lang','downloads','Downloads','Downloads'),(100127,'y','lang','downloads_for_experiments','Downloads for experiments','Downloads für Experimente'),(100128,'y','lang','download_decision_data','Download decision data','Entscheidungsdaten herunterladen'),(100129,'y','lang','download_deleted','Uploaded file deleted','Hochgeladene Datei gelöscht'),(100130,'y','lang','download_paper','Download paper','Artikel herunterladen'),(100131,'y','lang','download_participant_data','Download participant data','Teilnehmerdaten herunterladen'),(100132,'y','lang','do_you_agree_privacy','Do you agree with the rules and the privacy policy?','Sind Sie mit den Regeln und den Datenschutzbestimmungen einverstanden?'),(100133,'y','lang','do_you_really_want_to_delete','Do you really want to delete?','Möchten Sie wirklich löschen?'),(100135,'y','lang','do_you_really_want_to_unsubscribe','Do you really want to unsubscribe?','Möchten Sie sich wirklich austragen?'),(100136,'y','lang','e-mail-address','E-Mail-Address','E-Mail-Adresse'),(100137,'y','lang','edit','Edit','Bearbeiten'),(100138,'y','lang','edit_administrators','Edit administrators','Administratoren bearbeiten'),(100140,'y','lang','edit_basic_data','Edit basic data','Basisdaten bearbeiten'),(100141,'y','lang','edit_cronjob','Edit regular task (cronjob)','Regelmäßige Aufgabe (cronjob) bearbeiten'),(100142,'y','lang','edit_default_mail','Edit default mail','E-Mail-Vorlage bearbeiten'),(100143,'y','lang','edit_default_text','Edit default text','Textvorlage bearbeiten'),(100144,'y','lang','edit_default_values','Edit default values','Vorgabewerte bearbeiten'),(100145,'y','lang','edit_experiment','Edit experiment','Experiment bearbeiten'),(100147,'y','lang','edit_faq','Edit FAQ','FAQ bearbeiten'),(100148,'y','lang','edit_field_of_studies','Edit field of studies','Studienfach bearbeiten'),(100149,'y','lang','edit_general_settings','Edit General Settings','Allgemeine Einstellungen bearbeiten'),(100150,'y','lang','edit_help','Edit help','Hilfe bearbeiten'),(100151,'y','lang','edit_laboratory','Edit laboratory','Labor bearbeiten'),(100152,'y','lang','edit_language','Edit language','Sprache bearbeiten'),(100153,'y','lang','edit_os_data_form','Edit survey personal data form','Formular für persönliche Daten bearbeiten'),(100154,'y','lang','edit_os_properties','Edit Online Surveys Properties','Online Survey Eigenschaften bearbeiten'),(100155,'y','lang','edit_participant','Edit participant','Teilnehmer bearbeiten'),(100156,'y','lang','edit_participants','Edit participants','Teilnehmer bearbeiten'),(100157,'y','lang','edit_participant_data','Edit your data','Meine Daten bearbeiten'),(100158,'y','lang','edit_profession','Edit profession','Beruf bearbeiten'),(100160,'y','lang','edit_public_content','Edit public content','Inhalte bearbeiten'),(100161,'y','lang','edit_session','Edit session','Session bearbeiten'),(100162,'y','lang','edit_symbol','Edit symbol','Symbol bearbeiten'),(100163,'y','lang','edit_unsubscribed_participants','Edit unsubscribed participants','Ausgetragene Teilnehmer bearbeiten'),(100164,'y','lang','edit_words_for','Edit words for','Wörter bearbeiten für'),(100159,'y','lang','edit_profile_for','Edit profile for','Profil bearbeiten für '),(100166,'y','lang','email','E-Mail','E-Mail'),(100167,'y','lang','email_address_not_ok','The e-mail-address seems not to be valid!','Die E-Mail-Adresse scheint nicht gültig zu sein.'),(100528,'y','lang','subject_for_registration_notice','Registration time expired for Exp.','Registrierungszeit abgelaufen für Experiment'),(100169,'y','lang','email_sender_address','E-mail sender address','Absenderadresse für E-Mails'),(100170,'y','lang','email_session_reminder_subject','Experiment reminder','Experiment-Erinnerung'),(100171,'y','lang','enabled?','Enabled?','Aktiviert?'),(100172,'y','lang','enough_participants_needed','when as much participants registered as needed, else manually','wenn die benötigte Anzahl an Teilnehmern erreicht, sonst manuell'),(100173,'y','lang','enough_participants_needed_plus_reserve','when as much part. registered as needed plus reserve, else manually','wenn die ben. Anzahl an Teilnehmern inkl. Reserve erreicht, sonst manuell'),(100175,'y','lang','error_already_registered','You are already registered for a session of this experiment!','Sie sind bereits für einen Termin dieses Experiments angemeldet.'),(100178,'y','lang','error_do_not_use_username_as password','Please do not use your username as password!','Bitte benutzen Sie nicht Ihren Benutzernamen als Passwort!'),(100183,'y','lang','error_not_uploaded','Error! File not uploaded!','Fehler! Datei nicht hochgeladen!'),(100186,'y','lang','error_no_valid_sender_mail','The sender email address seems not to be valid','Die Absenderadresse scheint nicht korrekt zu sein.'),(100187,'y','lang','error_old_password_wrong','The given old password is wrong.','Das eingegebene alte Passwort ist falsch.'),(100188,'y','lang','error_password_not_changed','Password NOT changed due to an error!','Das Passwort wurde aufgrund eines Fehlers nicht geändert!'),(100189,'y','lang','error_password_or_username','Username or password wrong. Please note that case matters. Try again.','Sie haben entweder den Benutzernamen oder das Passwort falsch angegeben. Beachten Sie bitte, dass Groß- und Kleinschreibung zählt. Versuchen Sie es noch einmal'),(100190,'y','lang','error_password_repetition_does_not_match','The password repetition does not match the password.','Die Passwort-Wiederholung stimmt nicht mit dem Passwort überein.'),(100191,'y','lang','error_please_fill_in_all_fields','One or more fields were empty. Please fill in all fields!','Es wurden nicht alle Felder ausgefüllt. Bitte füllen Sie alle Felder aus!'),(100192,'y','lang','error_registration_expired','Sorry. Registration period has already expired.','Die Anmeldungszeit ist bereits abgelaufen.'),(100193,'y','lang','error_session_complete','Sorry. Session is already full.','Dieser Termin ist bereits voll belegt.'),(100194,'y','lang','error_session_id_register','Error ! Experiment unknown. This interfere has been logged.','Fehler! Experiment unbekannt. Diese Störung wurde protkolliert.'),(100195,'y','lang','error_sorry_you_are_deleted','Sorry. Your account has been deleted.','Ihr Account wurde gelöscht.'),(100196,'y','lang','error_sorry_you_are_excluded','Sorry. You have been excluded from the experiment participation.','Sie wurden von der Experimentteilnahme ausgeschlossen.'),(100198,'y','lang','error_you_have_to_give_internal_name','YOu have to give an internal name for the experiment.','Sie müssen einen internen Namen für das Experiment angeben.'),(100199,'y','lang','error_you_have_to_give_public_name','You have to give a public name for the experiment','Sie müssen einen öffentlichen Namen für das Experiment angeben.'),(100200,'y','lang','excel_import','Excel import','Als Excel-Datei importieren'),(100201,'y','lang','exclude_or_unsubscribe_participant','Do you want only to unsubscribe the participant or to unsubscribe and mark him as excluded?','Möchten Sie den Teilnehmer nur austragen oder ihn gleichzeitig auch als'),(100202,'y','lang','experience','Experience','Erfahrung'),(100203,'y','lang','experiment','Experiment','Experiment'),(100204,'y','lang','experimenter','Experimenter','Experimentator'),(100205,'y','lang','experimenter_actions','Experimenter actions','Experimentatoren-Aktionen'),(100206,'y','lang','experimentmail_how_to_rebuild_default','To rebuild the default invitation mail, clear the message body window below and click on save.','Um den Standard-E-Mail-Text wiederherzustellen, löschen Sie den gesamten Text und klicken Sie auf speichern.'),(100207,'y','lang','experiments','Experiments','Experimente'),(100208,'y','lang','experiments_already_registered_for','Experiments you are already registered for:','Experimente, für die Sie bereits angemeldet sind:'),(100209,'y','lang','experiments_without_dedicated_sessions','Experiments without scheduled sessions','Experimente ohne festgelegte Termine'),(100210,'y','lang','experiments_with_dedicated_sessions','Experiments with scheduled sessions','Experimente mit festgelegten Terminen'),(100211,'y','lang','experiments_you_are_invited_for','Experiments you are invited for:','Experimente, zu denen Sie eingeladen sind:'),(100212,'y','lang','experiments_you_participated','Experiments you participated:','Alte Experimente'),(100215,'y','lang','experiment_calendar','Experiment calendar','Experimentkalender'),(100217,'y','lang','experiment_deleted','Experiment deleted.','Experiment gelöscht.'),(100218,'y','lang','experiment_duration','Duration of experiment','Dauer des Experimentes'),(100219,'y','lang','experiment_finished','Experiment finished','Experiment abgeschlossen'),(100220,'y','lang','experiment_finished?','Experiment finished?','Experiment abgeschlossen?'),(100221,'y','lang','experiment_link_to_paper','Link to paper','Link zum Artikel'),(100222,'y','lang','experiment_not_finished','Experiment not finished','Experiment nicht abgeschlossen'),(100223,'y','lang','experiment_participations','Experiment participations','Experiment-Teilnahmen'),(100224,'y','lang','experiment_registration','Experiment registration','Experimentanmeldung'),(100225,'y','lang','experiment_types','Experiment types','Experiment-Typen'),(100226,'y','lang','expired','expired','abgelaufen'),(100228,'y','lang','faqs','FAQs','FAQs'),(100229,'y','lang','faq_deleted','FAQ deleted','FAQ gelöscht'),(100230,'y','lang','faq_long','Frequently Asked Questions','Oft gestellte Fragen'),(100231,'y','lang','field_of_studies_deleted','Field of studies deleted!','Studienfach gelöscht!'),(100232,'y','lang','file','File','Datei'),(100233,'y','lang','files','Files','Dateien'),(100234,'y','lang','file_uploaded','File uploaded!','Datei hochgeladen!'),(100235,'y','lang','finished','finished','beendet'),(100236,'y','lang','finished_experiments','Finished experiments','Alte Experimente'),(100237,'y','lang','firstname','Firstname','Vorname'),(100238,'y','lang','first_line_is_lab_name_rest_is_address','The first line in this field is considered as the Laboratory name, all other lines are considerd as the Laboratory address.','Die erste Zeile in diesem Feld wird als Name des Labors angesehen, die anderen Zeilen werden als Adresse des Labors genommen.'),(100239,'y','lang','for_questions_contact_xxx','For questions please contact','Für Fragen wenden Sie sich bitte an'),(100240,'y','lang','for_session_time_reservation_please_use_experiments','For reservation of lab time for experiment sessions please use the experiment page!','Zur Reservierung von laborzeiten für Experimentsessions benutzen Sie bitte die Experimentseite!'),(100241,'y','lang','free_places','Free places','Freie Plätze'),(100242,'y','lang','free_places_in_session_xxx','Free places in session','Freie Plätze in Session'),(100243,'y','lang','free_registration','Free registration','Freie Teilnahme'),(100244,'y','lang','from','from','vom'),(100245,'y','lang','from_this_older_than_4_weeks_xxx','From this: older than 4 weeks','Von diesen: älter als 4 Wochen'),(100246,'y','lang','gender','Gender','Geschlecht'),(100247,'y','lang','gender_?','unknown','unbekannt'),(100248,'y','lang','gender_f','female','weiblich'),(100249,'y','lang','gender_f_abbr','f','w'),(100250,'y','lang','gender_m','male','männlich'),(100251,'y','lang','gender_m_abbr','m','m'),(100252,'y','lang','general_downloads','General Downloads','Allgemeine Downloads'),(100253,'y','lang','general_settings','General Settings','Allgemeine Einstellungen'),(100255,'y','lang','give_either_profession_or_study','Please give EITHER a field of studies OR a profession.','Bitte geben Sie ENTWEDER ein Studienfach ODER einen Beruf an.'),(100256,'y','lang','help','Help','Hilfe'),(100257,'y','lang','help_deleted','Help deleted','Hilfe gelöscht'),(100258,'y','lang','hide_in_cal?','Hide in public calendar?','In öffentlichem Kalender verbergen?'),(100259,'y','lang','hide_in_stats?','Hide in participant statistics?','Bei Teilnehmer-Statistiken ignorieren?'),(100260,'y','lang','id','Id','Nr.'),(100261,'y','lang','if_you_have_questions_write_to','If you have related questions, please write to','Wenn Sie eine Frage dazu haben, wenden Sie sich bitte an'),(100264,'y','lang','impressum','Impressum','Impressum'),(100265,'y','lang','in','in','in'),(100266,'y','lang','installed_languages','Installed languages','Installierte Sprachen'),(100267,'y','lang','instructions','Instructions','Instruktionen'),(100268,'y','lang','internal_name','Internal name','Interner Name'),(100269,'y','lang','internet','Internet','Internet'),(100270,'y','lang','internet_experiments','Internet experiments','Internetexperimente'),(100271,'y','lang','invitations','Invitations','Einladungen'),(100272,'y','lang','invited','invited','eingeladen'),(100273,'y','lang','invited_abbr','inv','eing.'),(100274,'y','lang','invited_subjects','Invited Subjects','Eingeladene Teilnehmer'),(100275,'y','lang','invited_subjects_not_yet_registered','Invited subjects not yet registered','Eingeladene Teilnehmer, die noch für keine Session registriert sind'),(100276,'y','lang','inv_mails_in_mail_queue','Mails in mail queue','Mails in Warteschlange'),(100277,'y','lang','in_any_case_dont_ask','in any case, don\'t ask','auf jeden Fall, frage nicht nach'),(100279,'y','lang','i_want_invitations_for','I want invitations for','Ich möchte Einladungen für'),(100280,'y','lang','i_want_to_delete_my_data','I want to unsubscribe from invitation list!','Ich möchte keine Einladungen mehr erhalten!'),(100281,'y','lang','laboratories','Laboratories','Labore'),(100282,'y','lang','laboratory','Laboratory','Labor'),(100283,'y','lang','laboratory_address','Laboratory address','Adresse des Labors'),(100284,'y','lang','laboratory_addresses','Laboratory addresses','Adressen der Labore'),(100285,'y','lang','laboratory_deleted','Laboratory deleted!','Labor gelöscht!'),(100286,'y','lang','lab_lists_are_ordered_by_this_name','All lists of laboratories will be ordered by this name.','Alle Auflistungen der Labore werden nach diesem Namen geordnet.'),(100287,'y','lang','lab_reservation_deleted','Laboratory time reservation deleted','Laborreservierung gelöscht.'),(100288,'y','lang','lang','en','de'),(100289,'y','lang','language','Language','Sprache'),(100290,'y','lang','languages','Languages','Sprachen'),(100293,'y','lang','language_deleted','Language deleted','Sprache gelöscht'),(100297,'y','lang','language_shortcut','Language shortcut','Sprachkürzel'),(100299,'y','lang','lang_name','English','Deutsch'),(100300,'y','lang','lastname','Lastname','Nachname'),(100301,'y','lang','last_execution','Last execution','Letzte Ausführung'),(100302,'y','lang','LATER','DOWN','WEITER'),(100303,'y','lang','limit_to_randomly_drawn','and the maximum number of participants is','limitere auf eine Zufallsauswahl an Teilnehmern von'),(100304,'y','lang','location','Location','Ort'),(100305,'y','lang','login','Login','Anmeldung'),(100306,'y','lang','login_name','User name','Benutzername'),(100307,'y','lang','logout','Logout','Abmeldung'),(100308,'y','lang','log_files','Log files','Log-Dateien'),(100309,'y','lang','mail_have_got_it_already','Send mail also to people who have already got it but have not participated in former sessions and not yet registered for further sessions','Schicke die E-Mail auch an die Leute, die bereits eine bekommen haben, aber weder an früheren Sessions teilgenommen haben noch für künftige Sessions angemeldet sind.'),(100310,'y','lang','mail_preview','Mail preview','E-Mail-Vorschau'),(100311,'y','lang','mail_text_saved','Mail text saved.','E-Mail-Text gespeichert.'),(100312,'y','lang','mail_to_not_got_one','Send mail to all who have not got one yet','Sende die E-Mail an alle, die noch keine bekommen haben'),(100313,'y','lang','mainpage','Main','Main'),(100314,'y','lang','mainpage_of_this_experiment','Mainpage of this experiment','Hauptseite dieses Experimentes'),(100315,'y','lang','merge_subject_pool_with','and merge the subjects from this pool with the following sub pool:','Verbinde diese Untergruppe mit'),(100316,'y','lang','message','Note','Nachricht'),(100317,'y','lang','message_with_edit_link_mailed','An email with a link to edit your data was just mailed to you.','Eine E-Mail mit einem Link zur Bearbeitungsseite Ihrer Daten wurde an Sie geschickt.'),(100318,'y','lang','missing_answer_in_language','Missing answer in language','Es fehlt die Antwort in der Sprache'),(100319,'y','lang','missing_language','Missing language','Fehlende Sprache'),(100320,'y','lang','missing_question_in_language','Missing question in language','Es fehlt die Frage in der Sprache'),(100321,'y','lang','month','Month','Monat'),(100322,'y','lang','month_names','January,February,March,April,May,June,July,August,September,October,November,December','Januar,Februar,März,April,Mai,Juni,Juli,August,September,Oktober,November,Dezember'),(100323,'y','lang','my_data','My Data','Meine Daten'),(100324,'y','lang','my_experiments','My Experiments','Meine Experimente'),(100325,'y','lang','my_profile','My Profile','Mein Profil'),(100326,'y','lang','my_registrations','My registrations','Meine Anmeldungen'),(100329,'y','lang','name','Name','Name'),(100330,'y','lang','name_for_cronjob_required','Name as identifier for cron job required!','Es muss ein Name für den Cronjob zur Identifikation angegeben werden!'),(100331,'y','lang','name_for_exptype_required','A name for the experiment type is mandatory. Please fill in.','Sie müssen einen Namen für den Experiment-Typ angeben.'),(100332,'y','lang','name_for_subpool_required','Name for subpool required!','Sie müssen der Untergruppe einen Namen geben!'),(100333,'y','lang','needed_participants','Needed participants','Benötigte Teilnehmer'),(100334,'y','lang','never','never','niemals'),(100336,'y','lang','new_password','New password','Neues Password'),(100337,'y','lang','new_query','New query','Neue Abfrage'),(100338,'y','lang','next','next','nächste'),(100339,'y','lang','no','No.','Nein.'),(100340,'y','lang','noshows_by_count','No-shows by count','No-shows nach Anzahl'),(100341,'y','lang','noshows_by_month','No-shows by month','No-shows nach Monat'),(100342,'y','lang','noshowup','No-shows','N. ersch.'),(100343,'y','lang','not','not','nicht'),(100344,'y','lang','not_enough_participants','Not enough participants!','Nicht genügend Teilnehmer!'),(100345,'y','lang','not_enough_reserve','Not enough reserve!','Nicht genügend Reserve!'),(100346,'y','lang','not_shown_up','Not shown up:','Nicht erschienen:'),(100347,'y','lang','no_emp','NO!!!','NEIN!!!'),(100348,'y','lang','no_help_available_for_topic','Sorry, no help available for this topic','Keine Hilfe verfügbar für dieses Thema.'),(100349,'y','lang','no_items_found','No items found.','Keine Einträge gefunden.'),(100350,'y','lang','no_session','no session','Keine Session.'),(100351,'y','lang','no_session_selected','No session selected!','Keine Session ausgewählt!'),(100352,'y','lang','no_sorry','No, I was nuts!','Nein, lieber doch nicht!'),(100353,'y','lang','no_topic_choosed','No help topic choosed!','Kein Hilfethema gewählt!'),(100354,'y','lang','old_password','Old password','Altes Password'),(100355,'y','lang','online-survey','Online-Survey','Online-Survey'),(100356,'y','lang','only','only','nur'),(100357,'y','lang','only_assigned_part_ny_reg_shownup_part_showed','Only assigned participants who have not registered, shownup or participated yet are shown.','Es werden nur Teilnehmer die noch nicht zugesagt oder teilgenommen haben angezeigt.'),(100358,'y','lang','only_ny_assigned_part_showed','Only not yet assigned participants are showed.','Nur noch nicht zugeordnete Teilnehmer werden angezeigt.'),(100359,'y','lang','optional_fields_follow','The following fields are optional. However, the more fields you fill in, the higher is the probability that we invite you due to specific characteristics.','Die folgenden Felder sind optional. Je mehr dieser Felder Sie jedoch ausfüllen, umso höher ist die Wahrscheinlichkeit, dass wir Sie zu bestimmten Experimenten einladen.'),(100360,'y','lang','options','Options','Optionen'),(100361,'y','lang','or','OR','ODER'),(100362,'y','lang','order_questions','Order questions','Fragen sortieren'),(100363,'y','lang','os_personal_data_form','Personal data form in survey','Formular für persönliche Daten'),(100364,'y','lang','os_properties','Online Survey Properties','Online Survey Eigenschaften'),(100089,'y','lang','data_files','Data files','Daten'),(100365,'y','lang','other','Other','Andere'),(100367,'y','lang','overlapping_sessions','The time of this session clashs with another laboratory reservation','Die Zeit dieser Session überschneidet sich mit der einer anderen Laborreservierung'),(100368,'y','lang','overview','Overview','Überblick'),(100369,'y','lang','paper','Paper','Paper'),(100370,'y','lang','participants','Participants','Teilnehmer'),(100371,'y','lang','participants_assigned_to_this_experiment','participants assigned to this experiment','Diesem Experiment zugeordnete Teilnehmer'),(100372,'y','lang','participants_from_subject_pool','Participants from subject pool','Teilnehmer aus Subjectpool'),(100373,'y','lang','participants_have_participated_on','subjects who have participated on ONE of the following marked experiments','Teilnehmer, die an MINDESTENS EINEM der folgenden markierten Experimente teilgenommen haben'),(100374,'y','lang','participants_participated_all','subjects who have participated on ALL of the following marked experiments','Teilnehmer, die an ALLEN der folgenden markierten Experimente teilgenommen haben'),(100376,'y','lang','participants_were_assigned_to','participants were assigned to one of the following experiments','Teilnehmer, die zu einem der folgenden Experimente zugeordnet wurden'),(100377,'y','lang','participant_actions','Participant actions','Teilnehmer-Aktionen'),(100380,'y','lang','participant_resubscribed','Participant resubscribed.','Teilnehmer wieder eingetragen.'),(100381,'y','lang','participant_statistics','Participant statistics','Teilnehmer-Statistiken'),(100382,'y','lang','participant_unsubscribed','Participant unsubscribed!','Teilnehmer ausgetragen!'),(100383,'y','lang','participant_unsubscribed_and_excluded','Participant unsubscribed and excluded.','Teilnehmer ausgetragen und ausgeschlossen.'),(100384,'y','lang','participated','participated','teilgenommen'),(100385,'y','lang','participated_abbr','part','teilg.'),(100386,'y','lang','part_statistics_for_lab_experiments','History for laboratory experiments','Statistik für Labor-Experimente'),(100387,'y','lang','part_statistics_for_online_surveys','History for online surveys','Statistik für Online-Surveys'),(100388,'y','lang','password','Password','Passwort'),(100390,'y','lang','password_changed_log_in_again','Password changed. Please log in again.','Das Passwort wurde geändert. Bitte loggen Sie sich neu ein.'),(100391,'y','lang','persons','persons','Personen'),(100392,'y','lang','phone_number','Phone number','Telefon'),(100393,'y','lang','phone_number_remark','This allows us to contact<BR>you immediately i.e. when<BR>a session is cancelled.','Eine Angabe erlaubt es uns,<BR>Sie schnell zu erreichen,<BR>wenn z.B. ein Experiment<BR>abgesagt werden muss o.ä.'),(100394,'y','lang','please_change_your_selection','Please change your selection!','Bitte ändern Sie Ihre Auswahl!'),(100395,'y','lang','please_check_availability_before_register','Please check your availability for a date BEFORE you register for it. A checkout is in principle not possible, except for good reasons like illness etc.','Bitte stellen Sie sicher, dass Sie zu einem Termin kommen können, BEVOR Sie sich dafür anmelden. Eine Abmeldung ist grundsätzlich nicht vorgesehen, es sei denn es liegen triftige Gründe wie z.B. Krankheit vor. Siehe dazu auch unsere FAQ.'),(100397,'y','lang','please_choose_subgroup','Please choose the appropriate link!','Bitte klicken Sie auf den auf Sie zutreffenden Link!'),(100398,'y','lang','position','Position','Position'),(100400,'y','lang','preferences','Preferences','Einstellungen'),(100401,'y','lang','presentations','Presentations','Präsentationen'),(100402,'y','lang','presented_in_random_order','presented in random order','nach Zufallsreihenfolge abgefragt'),(100403,'y','lang','presented_ordered_by_number','presented ordered by number','nach Nummer sortiert abgefragt'),(100404,'y','lang','previous','previous','frühere'),(100405,'y','lang','print','PRINT','DRUCKEN'),(100406,'y','lang','print_version','PRINT VERSION','DRUCKVERSION'),(100407,'y','lang','privacy_policy','Privacy policy','Datenschutz'),(100408,'y','lang','profession','Profession','Beruf'),(100409,'y','lang','professions','Professions','Berufe'),(100410,'y','lang','profession_deleted','Profession deleted','Beruf gelöscht'),(100411,'y','lang','programs','Programs','Programme'),(100412,'y','lang','public_content','Public content','Öffentliche Inhalte'),(100413,'y','lang','public_content_deleted','Public content deleted','Inhalte gelöscht'),(100414,'y','lang','public_exptype_description','Public experiment type description (\" ... experiments \")','Experimenttyp-Beschreibung (\"...-Experimente\")'),(100415,'y','lang','public_name','Public name','Öffentlicher (Code)Name'),(100416,'y','lang','query','Query','Abfrage'),(100417,'y','lang','query_select_all','Select all ...','Wähle alle aus ...'),(100418,'y','lang','question','Question','Frage'),(100419,'y','lang','questions','Questions','Fragen'),(100420,'y','lang','question_in_xxxlang','Question in','Frage in'),(100421,'y','lang','ran_cronjob_xxx','Ran cron job','Ausgeführter cronjob:'),(100422,'y','lang','really_delete_experiment','Do you really want to delete this experiment including corresponding sessions, mails, assignments, questions, items, default answers, results, dataforms, public content, and participant data?','Möchten Sie das Experiment inklusive der dazugehörigen Sessions, E-Mails, Zuordnungen, Fragen, Items, Voreinstellungen, Resultate, Datenformulare, Inhalte und Teilnehmerdaten wirklich löschen?'),(100423,'y','lang','really_delete_session','Do you really want to delete this session including corresponding assignments of participants?','Möchten Sie die Session inklusive der dazugehörigen Teilnehmerzuordnungen wirklich löschen?'),(100424,'y','lang','really_delete_subpool?','Do you really want to delete the sub subject pool?','Möchten Sie wirklich die Untergruppe löschen?'),(100425,'y','lang','really_resubscribe_participant','Do you really want to resubscribe this participant?','Wollen Sie diesen Teilnehmer wirklich wieder eintragen?'),(100428,'y','lang','receives_periodical_participant_statistics','Receives periodical participant statistics?','Regelmässige Teilnehmerstatistik per Mail?'),(100427,'y','lang','receives_periodical_calendar','Receives periodical calendar?','Regelmässig Kalender per Mail?'),(100430,'y','lang','recipients_email_address','Recipients email address','E-Mail-Adresse des Teilnehmers'),(100431,'y','lang','register','Register','Anmelden'),(100432,'y','lang','registered','registered','angemeldet'),(100433,'y','lang','registered_but_not_confirmed_xxx','Registered but not confirmed','Registriert, aber nicht bestätigt'),(100434,'y','lang','registered_for','Registered for:','Registriert für:'),(100435,'y','lang','registered_for_xxx_experiments_xxx','Registered for','Registriert für'),(100437,'y','lang','registered_subjects','Registered Subjects','Angemeldete Teilnehmer'),(100438,'y','lang','register_marked_for_session','Register the marked subjects for the following session','Die markieten Teilnehmer für die folgende Session anmelden'),(100439,'y','lang','register_new_experiment','Register new experiment','Neues Experiment einrichten'),(100440,'y','lang','register_sub_for_session','Register subject for session','Teilnehmer registrieren für Session'),(100441,'y','lang','registration_confirmed','Your registration was confirmed.','Ihre Registrierung wurde bestätigt.'),(100442,'y','lang','registration_email_subject','Registration for experiments','Anmeldung fuer Experimente'),(100443,'y','lang','registration_end_hours_before','Registration end (hours before start)','Anmeldungsende (Stunden vor Experimentbeginn)'),(100444,'y','lang','registration_form','Registration form','Anmeldungsformular'),(100445,'y','lang','registration_page_options','Registration page options','Optionen für Anmeldeseite'),(100446,'y','lang','registration_page_type','Registration page type','Typ der Anmeldeseite'),(100447,'y','lang','registration_until','registration until','Anmeldung bis'),(100448,'y','lang','regular_tasks','Regular tasks (cron)','Regelmäßige Aufgaben (cron)'),(100449,'y','lang','reg_time_extended_but_notice_sent','You changed the registration time. At the time when this new registration time expires, you\'ll get a new status message.','Sie haben die Registrierungsperiode verändert. Zum Zeitpunkt des Endes der neuen Registrierungsperiode werden Sie eine aktualisierte Status-Nachricht erhalten.'),(100450,'y','lang','remarks','Remarks','Bemerkungen'),(100451,'y','lang','reminder_not_sent_part_needed','The reminder message was not sent so far, because there are not enough participants (without reserve). You may send the reminder manually via the session\'s edit page.','Die Erinnerungs-Mail wurde noch nicht versendet, da nicht genügend benötigte Teilnehmer (ohne Reserve) registriert sind. Sie können die Erinnerungsmail jedoch manuell über die Session-Seite versenden.'),(100452,'y','lang','reminder_not_sent_part_reserve','The reminder message was not sent so far, because there are not enough particpants (including reserve). You may send the reminder manually via the session\'s edit page.','Die Erinnerungs-Mail wurde noch nicht versendet, da nicht genügend benötigte Teilnehmer (inklusive Reserve) registriert sind. Sie können die Erinnerung jedoch manuell über die Session-Seite versenden.'),(100453,'y','lang','removed_from_invitation_list','You were removed from our invitation mailing list.','Sie wurden von unserem Einladungs-Emailverteiler ausgetragen.'),(100454,'y','lang','remove_all_participants_in_list','Remove all participants in list','Entferne alle Teilnehmer in der Liste'),(100455,'y','lang','remove_only_marked_participants','Remove only marked participants','Entferne nur die markierten Teilnehmer'),(100456,'y','lang','remove_participants_from_exp','Remove participants from this experiment','Teilnehmer von diesem Experiment entfernen'),(100457,'y','lang','repeat_new_password','Repeat new password','Neues Password wiederholen'),(100459,'y','lang','reserve_lab_space','Reserve laboratory time','Zeit des Labors reservieren'),(100460,'y','lang','reserve_participants','Reserve participants','Reserve-Teilnehmer'),(100461,'y','lang','reset_query_form','Reset query form','Formular zurücksetzen'),(100462,'y','lang','restrict','Restrict','Beschränke'),(100464,'y','lang','restrict_stats_to_this_pool','Restrict statistics below to this subpool','Weitere Statistik auf diesen Subject Pool beschränken'),(100465,'y','lang','resubscribe','Resubscribe','Wieder eintragen'),(100466,'y','lang','resubscribe_participant','Resubscribe participant','Teilnehmer wieder eintragen'),(100467,'y','lang','rights','Rights','Rechte'),(100468,'y','lang','rules','Rules','Regeln'),(100469,'y','lang','rules_abbr','R!','R!'),(100470,'y','lang','rules_signed','Rules signed?','Regeln unterschrieben?'),(100471,'y','lang','run_now','Run now','Jetzt ausführen'),(100472,'y','lang','save','Save','Speichern'),(100473,'y','lang','save_mail_text_only','Save mail text only','Nur den Text speichern'),(100474,'y','lang','search','Search','Suche'),(100475,'y','lang','search_and_show','SEARCH AND SHOW','SUCHEN UND ZEIGEN'),(100476,'y','lang','select_all','All','Alle'),(100477,'y','lang','select_none','None','Nichts'),(100478,'y','lang','send','Send','Verschicken'),(100480,'y','lang','send_invitations','Send invitations','Einladungen verschicken'),(100482,'y','lang','send_reminder_on','Send reminder','Sende Erinnerungsmail'),(100483,'y','lang','send_to_all','Send to all','An alle verschicken'),(100484,'y','lang','server_usage_statistics','Server usage statistics','Server-Zugriffsstatistiken'),(100485,'y','lang','session','Session','Session'),(100486,'y','lang','sessions','Sessions','Sessions'),(100487,'y','lang','session_deleted','Session deleted','Session gelöscht.'),(100488,'y','lang','session_finished','Session finished','Session abgeschlossen'),(100489,'y','lang','session_finished?','Session finished?','Session abgeschlossen?'),(100491,'y','lang','session_reminder_already_sent','Session reminder already sent.','Erinnerungsnachricht bereits gesendet.'),(100492,'y','lang','session_reminder_changed_but_notice_sent','You have changed the session reminder time, but the reminder email was already sent. You have to send a new reminder by hand using the mail option at the  sessions registration page.','Sie haben die Zeit der Erinnerungsnachricht verändert, aber diese wurde bereits gesendet. Sie müssen jetzt eine neue Nachricht per Hand senden. Sie können dafür die Registrierungsseite dieser Session benutzen.'),(100493,'y','lang','session_reminder_hours_before','Session reminder (hours before start)','Terminerinnerung (Stunden vor Start)'),(100503,'y','lang','session_time_changed','You changed the session time. Please don\'t forget to inform the participants already registered for this session.','Die Zeit der Session wurde geändert. Bitte vergessen Sie nicht, die bereits registrierten Teilnehmer darüber zu informieren.'),(100504,'y','lang','settings','Settings','Einstellungen'),(100505,'y','lang','share_in_percent','Share in %','Anteil in %'),(100507,'y','lang','shownup','shown-up','Erschienen'),(100508,'y','lang','shownup_abbr','sh-up','ersch.'),(100509,'y','lang','shownup_subjects','Shown-up subjects','Erschienene Teilnehmer'),(100510,'y','lang','showup?','Showup?','Erschienen?'),(100511,'y','lang','show_at_registration_page?','Show this subject pool in the list at the registration page?','Diese Teilnehmergruppe auf der Registrierungsseite auflisten?'),(100512,'y','lang','show_files','Show files','Zeige Dateien'),(100513,'y','lang','show_my_rights','Show my rights','Meine Rechte zeigen'),(100514,'y','lang','SOONER','UP','FRÜHER'),(100515,'y','lang','start_date_and_time','Start date and time','Startzeit'),(100517,'y','lang','statistics','Statistics','Statistik'),(100518,'y','lang','statistics_below_restricted_to_subpool','Statistics below are restricted to subjectpool','Die weiteren Statistiken sind beschränkt auf den Subjectpool'),(100519,'y','lang','stop_date_and_time','Stop date and time','Endzeit'),(100520,'y','lang','street','Street','Strasse'),(100521,'y','lang','student','student','Student'),(100522,'y','lang','studies','Main field of studies','Studienfach'),(100523,'y','lang','subject','Subject','Betreff'),(100524,'y','lang','subjects','Subjects','Teilnehmer'),(100525,'y','lang','subjects_number_exceeded','Subjects number exceeded!','Teilnehmeranzahl überschritten!'),(100526,'y','lang','subjects_participated','Participated','Teilgenommen'),(100527,'y','lang','subject_for_edit_link_mail','Experimentdatabase: Your Data','Experimente: Ihre Daten'),(100530,'y','lang','subject_for_session_reminder_ok_notice','Session reminders sent for','Session-Erinnerungen gesendet für '),(100531,'y','lang','submit','Submit','Abschicken'),(100532,'y','lang','subpool','Subpool','Subject Pool'),(100533,'y','lang','subpool_deleted_part_moved_to','Subpool deleted. Participants of this subpool merged with subpool','Untergruppe gelöscht. Die Teilnehmer dieser Untergruppe wurden der folgenden Untergruppe zugefügt'),(100534,'y','lang','subscriptions','Subscriptions','Einladungen'),(100535,'y','lang','sub_subjectpools','Sub-subjectpools','Teilnehmer-Untergruppen'),(100536,'y','lang','successfully_registered','You have been successfully registered to our system. Please confirm your registration by clicking on the link in the e-mail just sent out to your address. Have fun!','Sie haben sich erfolgreich in unserem System registriert. Sie werden eine E-Mail an die angegebene Adresse erhalten. Bitte bestätigen Sie Ihre Registrierung, indem Sie auf den Link in dieser E-Mail klicken. Nach der Bestätigung werden Sie Einladungen zu neuen Experimenten erhalten. Viel Spass!'),(100537,'y','lang','successfully_registered_to_experiment_xxx','You have been successfully registered to experiment','Sie haben sich erfolgreich angemeldet für das Experiment'),(100538,'y','lang','symbols','Symbols','Symbole'),(100539,'y','lang','symbol_deleted','Language symbol deleted.','Sprachsymbol gelöscht.'),(100540,'y','lang','symbol_name','Symbol name','Name des Symbols'),(100541,'y','lang','symbol_name_comment','Please use only small letters and underscore (_). Example: \"my_item\".','Bitte benutzen Sie nur Kleinbuchstaben und den Unterstrich (_). Beispiel: \"my_item\".'),(100542,'y','lang','system_statistics','System statistics','System-Statistiken'),(100543,'y','lang','target','Target','Ziel'),(100544,'y','lang','temp_participant_deleted','Registration deleted.','Registrierung gelöscht.'),(100545,'y','lang','test_whole_online_survey','Test whole online survey','Gesamten Online-Survey testen'),(100546,'y','lang','thanks_for_registration','Thank you for your registration! Have fun!','Vielen Dank für Ihre Anmeldung! Viel Spass!'),(100547,'y','lang','this_faq_answered_my_question','This FAQ answered my question!','Diese Antwort beantwortete meine Frage!'),(100548,'y','lang','this_faq_answered_questions_of_xxx','This FAQ answered the question of','Diese FAQ beantwortete die Frage von'),(100549,'y','lang','this_reservation_type_is_for_maintenence_purposes','Reservations on this page should be only for maintenance times, software testing and so on.','Reservierungen auf dieser Seite sollten nur für Wartungszeiten oder Softwaretests benutzt werden.'),(100550,'y','lang','this_will_be_confirmed_by_an_email','This will be confirmed by an email.','Eine Bestätigung erhalten Sie per E-Mail.'),(100551,'y','lang','three_questionmarks','???','???'),(100552,'y','lang','time','Time','Zeit'),(100553,'y','lang','time_needed_in_seconds','Time needed (in seconds):','Benötigte Zeit (in Sekunden)'),(100554,'y','lang','to','to','bis'),(100555,'y','lang','too_much_participants_to_register','This are too much participants to register.','Das sind zu viele Teilnehmer anzumelden.'),(100556,'y','lang','to_subpool','to subpool','zum Subpool'),(100557,'y','lang','type','Type','Typ'),(100559,'y','lang','unrestrict','Unrestrict','Unbeschränkt'),(100560,'y','lang','unsubscribe','Unsubscribe','Austragen'),(100561,'y','lang','unsubscribe_participant','Unsubscribe participant','Teilnehmer austragen'),(100563,'y','lang','upload','Upload','Hochladen'),(100564,'y','lang','upload_category','Category','Kategorie'),(100565,'y','lang','upload_experiment_files_in_exp_sec','Please upload files for a certain experiment at the experiment\'s page.','Bitte laden Sie Dateien für ein bestimmtes Experiment auf der jeweiligen Experimentseite hoch.'),(100566,'y','lang','upload_file','Upload file','Datei hochladen'),(100567,'y','lang','upload_file_for_experiment','Upload file for experiment','Datei für Experiment hochladen'),(100568,'y','lang','upload_general_file','Upload general file','Lade allgemeine Datei hoch'),(100569,'y','lang','upload_name','Name for upload file','Bezeichnung für Datei'),(100570,'y','lang','usage_statistics_for','Usage statistics for ORSEE on','Benutzerstatistiken für ORSEE auf'),(100571,'y','lang','user','User','Benutzer'),(100572,'y','lang','username','Username','Benutzername'),(100574,'y','lang','was_excluded_by_experimenter','This participant was excluded by an experimenter','Dieser Teilnehmer wurde von einem Experimentator ausgeschlossen.'),(100575,'y','lang','weekdays_abbr','Mo,Tu,We,Th,Fr,Sa,Su','Mo,Di,Mi,Do,Fr,Sa,So'),(100576,'y','lang','when_executed?','When executed?','Wann ausgeführt?'),(100577,'y','lang','where','where','wo'),(100578,'y','lang','where_field_of_studies_is','where field of studies is','wo das Studienfach ist'),(100579,'y','lang','where_gender_is','where gender is','deren Geschlecht ist'),(100580,'y','lang','where_nr_noshowups_is','who have a number of no-show-ups','deren Anzahl an Nichterscheinen'),(100581,'y','lang','where_nr_participations_is','who have a number of registrations','deren Anzahl an Registrierungen'),(100582,'y','lang','where_profession_is','where profession is','wo der Beruf ist'),(100583,'y','lang','where_study_start_in_year','where begin of studies was in year','deren Studienbeginn war im Jahr'),(100584,'y','lang','whole_year','WHOLE YEAR','GANZES JAHR'),(100585,'y','lang','who_are_in_subjectpool','where subjectpool is','deren Subjectpool ist'),(100586,'y','lang','window_size','Window size','Fenstergröße'),(100587,'y','lang','withdraw_restriction','Withdraw restriction','Beschränkung aufheben'),(100588,'y','lang','without','without','ohne'),(100589,'y','lang','working','working','berufstätig'),(100590,'y','lang','write_message_to_all_listed','Write e-mail to all persons listed','E-Mail an alle aufgelisteten Personen schreiben'),(100592,'y','lang','xxx_current_experiments','current experiments','aktuelle Experimente'),(100593,'y','lang','xxx_e-mail_messages_sent','e-mail messages sent.','E-Mails verschickt'),(100594,'y','lang','xxx_finished_experiments','finished experiments','abgeschlossene Experimente'),(100595,'y','lang','xxx_inv_mails_added_to_mail_queue','invitation mails added to mail queue.','Einladungsmails wurden in Mail-Warteschlange eingefügt.'),(100596,'y','lang','xxx_inv_mails_for_this_exp_still_in_queue','invitations mails for this experiment still in mail queue. You will have to wait until these mails have been sent out.','Einladungsmails für dieses Experiment noch in der Warteschlange. Sie müssen warten, bis diese E-Mails verschickt wurden.'),(100601,'y','lang','xxx_participants_assigned','participants assigned to this experiment.','Teilnehmer zugeordnet'),(100602,'y','lang','xxx_participants_in_result_set','participants in result set','Teilnehmer im Ergebnis'),(100603,'y','lang','xxx_participants_registered','participants registered','Teilnehmer registriert'),(100604,'y','lang','xxx_participants_removed','participants removed from this experiment.','Teilnehmer entfernt'),(100605,'y','lang','xxx_part_in_db_for_xxx_exp','possible participants in database for','mögliche Teilnehmer in Datenbank für'),(100607,'y','lang','xxx_sessions_registered','Sessions registered','eingetragene Sessions'),(100609,'y','lang','xxx_subjects_moved_to_session_xxx','subjects moved to session','Teilnehmer verschoben zu Session'),(100610,'y','lang','xxx_subjects_registered_to_session_xxx','subjects registered to session','Teilnehmer registriert für Session'),(100611,'y','lang','xxx_subjects_removed_from_registration','subjects removed from registration','Teilnehmer aus der Anmeldung entfernt'),(100613,'y','lang','yes','Yes.','Ja.'),(100614,'y','lang','yes_delete','Yes, delete','Ja, löschen'),(100615,'y','lang','yes_i_want','Yes, I want','Ja, ich will'),(100616,'y','lang','yes_resubscribe','Yes, resubscribe.','Ja, wieder eintragen.'),(100617,'y','lang','yes_unsubscribe','Yes, unsubscribe','Ja, nur austragen'),(100618,'y','lang','yes_unsubscribe_and_exclude','Yes, unsubscribe and exclude','Ja, austragen und ausschliessen!'),(100619,'y','lang','your_email_address_exists','Your e-mail-address exists in our system! You should already receive invitations from us!','Ihre E-Mail-Adresse existiert bereits in unserem System. Sie sollten bereits Einladungen von uns erhalten.'),(100620,'y','lang','you_have_already_voted_faq','You have already voted for this FAQ!','Sie haben bereits für diese FAQ gestimmt!'),(100621,'y','lang','you_have_to_email_address','You have to fill in your e-mail-address!','Sie müssen Ihre E-Mail-Adresse angeben!'),(100622,'y','lang','you_have_to_fname','You have to give your first name.','Sie müssen Ihren Vornamen angeben.'),(100623,'y','lang','you_have_to_give_a_password','You have to give a password and to confirm it!','Sie müssen ein Passwort angeben und es bestätigen!'),(100624,'y','lang','you_have_to_give_a_username','You have to give a username !','Sie müssen einen Benutzernamen angeben!'),(100625,'y','lang','you_have_to_give_content_name','You have to give a name for the content!','Sie müssen einen Namen für den Inhalt angeben!'),(100626,'y','lang','you_have_to_give_email_address','You have to give an e-mail-address!','Sie müssen eine E-Mail-Adresse angeben!'),(100627,'y','lang','you_have_to_lname','You have to give your last name.','Sie müssen Ihren Nachnamen angeben.'),(100628,'y','lang','you_will_be_invited_to','Your will be invited to','Sie werden eingeladen für'),(100629,'y','lang','zip','ZIP','PLZ'),(30001,'y','experiment_invitation_mail','1269445285','Experiment\nHallo #fname# #lname#!\r\n\r\nHiermit möchten wir Sie zu einem neuen Experiment einladen.\r\n\r\nEs stehen die folgenden Termine zur Auswahl:\r\n#sessionlist#\r\n\r\nWenn Sie teilnehmen möchten, können Sie sich unter dem folgenden Link anmelden:\r\n\r\n#link#\r\n\r\n(Wenn Sie in Ihrem E-Mail-Programm nicht direkt auf den Link klicken können, dann markieren Sie ihn einfach und kopieren ihn in die Zwischenalage, indem Sie rechts klicken und \\\"Kopieren\\\" wählen. Dann starten Sie Ihren Webbrowser und fügen die Adresse dort im Adressenfenster ein, indem Sie dort rechts klicken und \\\"Einfügen\\\" wählen.)','Experiment\nHallo #fname# #lname#!\r\n\r\nHiermit möchten wir Sie zu einem neuen Experiment einladen.\r\n\r\nEs stehen die folgenden Termine zur Auswahl:\r\n#sessionlist#\r\n\r\nWenn Sie teilnehmen möchten, können Sie sich unter dem folgenden Link anmelden:\r\n\r\n#link#\r\n\r\n(Wenn Sie in Ihrem E-Mail-Programm nicht direkt auf den Link klicken können, dann markieren Sie ihn einfach und kopieren ihn in die Zwischenalage, indem Sie rechts klicken und \\\"Kopieren\\\" wählen. Dann starten Sie Ihren Webbrowser und fügen die Adresse dort im Adressenfenster ein, indem Sie dort rechts klicken und \\\"Einfügen\\\" wählen.)'),(100516,'y','lang','start_time_must_be_earlier_than_stop_time','Start time must be earlier than stop time','Die Startzeit muss kleiner als die Endzeit sein.'),(100254,'y','lang','get_emails','Get emails','Bekommen Emails'),(100176,'y','lang','error_at_least_one_experimenter_mail_required','At least one experimenter should get e-mails for this experiment.','Wenigstens ein Experimentator sollte die Emails für dieses Experiment empfangen.'),(100177,'y','lang','error_at_least_one_experimenter_required','At least one experimenter must be responsible for this experiment.','Wenigstens ein Experimentator muss für dieses Experiment verantwortlich sein.'),(100500,'y','lang','session_reminder_state__sent','sent.','gesendet.'),(100499,'y','lang','session_reminder_state__checked_but_not_sent','checked, but not sent.','gecheckt, aber nicht gesendet.'),(100501,'y','lang','session_reminder_state__waiting','waiting ...','abwartend ...'),(100490,'y','lang','session_reminder','Session reminder','Session-Erinnerung'),(100496,'y','lang','session_reminder_send_again','Send session reminder email again','Sende Erinnerungsmail noch einmal'),(100494,'y','lang','session_reminder_not_sent_at_time_specified','The session reminder email was not sent out at the specified time because there were not enough registered participants. Now you may send the reminder yourself.','Die Erinnerungsmail wurde nicht gesendet, da noch nicht genügend Teilnehmer zu dieser Zeit angemeldet waren. Sie können die Erinnerung jetzt selbst senden.'),(100495,'y','lang','session_reminder_send','Send session remainder email','Sende Session-Erinnerungsmail'),(100502,'y','lang','session_reminder_will_be_sent_at_time_specified','The session reminder email will be sent at the time specified at the session\'s properties page.','Die Session-Erinnerungsmail wird zu dem auf der Eigenschaften-Seite der Session angegebenen Zeitpunkt versendet werden.'),(100497,'y','lang','session_reminder_send_now','Don\'t wait, send reminder now','Nicht warten, Erinnerungsmail jetzt senden'),(100426,'y','lang','really_send_session_reminder_now','Really send session reminder email now?','Session-Erinnerungsmail jetzt wirklich senden?'),(100608,'y','lang','xxx_session_reminder_emails_sent_out','session reminder emails were sent out to participants of this session.','Session-Erinnerungsmails wurden für diese Session verschickt.'),(100529,'y','lang','subject_for_session_reminder_error_notice','Session reminders NOT sent for','Session-Erinnerungen NICHT gesendet für'),(100379,'y','lang','participant_list_filename','Participant list','Teilnehmerliste'),(110000,'y','mail','admin_calendar_mailtext','This is the current experiment calendar ...\r\n\r\n','Dies ist der aktuelle Experimentkalender ...\r\n\r\n'),(110002,'y','mail','admin_participant_statistics_mailtext','The current participant statistics for this month ...\r\n\r\n','Die aktuellen Teilnehmer-Statistiken für diesen Monat ...\r\n\r\n'),(100335,'y','lang','new_administrator','new administrator','neuen Administrator'),(100291,'y','lang','language_based_on','Language based on','Sprache basiert auf'),(100296,'y','lang','language_name_in_lang','Name of language in this language','Name der Sprache in dieser Sprache'),(100185,'y','lang','error_no_language_shortcut','Please provide a shortcut for the language consisting of 2 letters.','Bitte geben Sie ein zweibuchstabiges Kürzel für die Sprache an.'),(100180,'y','lang','error_language_shortcut_exists','A language with the provided shortcut already exists.','Eine Sprache mit dem angegeben Kürzel existiert bereits.'),(100184,'y','lang','error_no_language_name','Please prove the name of the language in this language.','Bitte geben Sie den Namen dier Sprache in dieser Sprache an.'),(100292,'y','lang','language_created','Language created.','Sprache installiert.'),(100295,'y','lang','language_items_copied_from_base_language','Language items copied from base language','Ausdrücke kopiert van Basissprache'),(100064,'y','lang','copy_users_of_this_lang_to','Assign the following language to users of the deleted language','Weise Benutzern dieser Sprache die folgende Sprache zu'),(100298,'y','lang','language_to_be_deleted_cannot_be_language_to_substitute','The language to assign cannot be the language to delete.','Die neu zugewiesene Sprache kann nicht gleich der zu löschenden Sprache sein.'),(100562,'y','lang','updated_language_settings','Updated language settings for persons.','Sprachen für Personen aktualisiert.'),(100214,'y','lang','experiment_access_restricted','Experiment access restricted?','Experimentzugriff beschränkt?'),(80005,'y','help','experiment_access_restricted','When the access to an experiment is restricted, only administrators classified as experimenters for an experiment may change or access the data of the experiment.','Wenn der Zugriff auf ein Experiment beschränkt wird, können nur Administratoren, die als Experimentatoren für ein Experiment eingetragen sind, Daten dieses Experimentes verändern bzw. darauf zugreifen.'),(100179,'y','lang','error_experiment_access_restricted','Sorry, access to this experiment is restricted to it\'s experimenters.','Der Zugriff auf dieses Experiment ist leider beschränkt auf dessen Experimentatoren.'),(100366,'y','lang','overlapping_lab_reservation','The time of this reservation clashs with another laboratory reservation','Die Zeit dieser Reservierung überschneidet sich mit einer anderen Laborreservierung'),(110011,'y','mail','public_participant_exclusion','Hello #fname# #lname#!\r\n\r\nYou did not show up for #number_noshowup# experimental sessions, although you registered for them.\r\n\r\nWe will not invite you for further experiments.\r\n\r\nWith kind regards\r\n\r\nYour experimenters\r\n','Hallo #fname# #lname#!\r\n\r\nSie sind zu #number_noshowup# Experimenten, zu denen Sie sich angemeldet haben, nicht erschienen.\r\n\r\nWir werden Sie in Zukunft nicht mehr zu Experimenten einladen.\r\n\r\nMit freundlichen Grüssen\r\n\r\nIhre Experimentatoren\r\n'),(100378,'y','lang','participant_exclusion_mail_subject','Exclusion from the experiment recruitment system','Löschung aus dem Experiment-Teilnehmer-System'),(100038,'y','lang','automatic_exclusion_by_system_due_to_noshows','Automatic exclusion by the system due to noshows:','Automatischer Ausschluss durch das System wegen No-Shows:'),(100168,'y','lang','email_noshow_warning_subject','Not shown up at experimental session','Nicht zum Experiment erschienen'),(110010,'y','mail','public_noshow_warning','Hi #fname# #lname#!\r\n\r\nYou were registered for the\r\nExperiment #experiment_name# at #session_date#\r\nin the Laboratory #lab_name#, but you did not show up.\r\n\r\nPlease note, that after #max_noshows# we will exclude you from further participations at experiments.\r\n\r\nGreetings\r\n\r\nYour experimenters','Hallo #fname# #lname#!\r\n\r\nSie hatten sich für das Experiment \"#experiment_name#\" für den Termin #session_date# im Labor #lab_name# registriert, sind jedoch nicht erschienen.\r\n\r\nBitte beachten Sie, dass wir Sie nach #max_noshows#maligem Nicht-Erscheinen von zukünftigen Experimentteilnahmen ausschliessen werden.\r\n\r\nMit freundlichen Grüßen\r\n\r\nIhre Experimentatoren\r\n'),(100094,'y','lang','day','day','Tag'),(100095,'y','lang','days','days','Tage'),(100117,'y','lang','delete_log_entries_older_than','Delete log entries older than','Lösche Protokolleinträge die älter sind als'),(100600,'y','lang','xxx_log_entries_deleted','log entries deleted.','Protokolleinträge gelöscht.'),(130002,'y','public_content','error_temporary_disabled','The experiment recruitment system is closed for a short period of time due to maintenance work.\r\n<BR><BR>\r\nPlease visit us again soon.','Das Teilnehmer-System ist aufgrund von Wartungsarbeiten für eine kurze Zeit geschlossen.\r\n<BR><BR>\r\nBitte versuchen Sie es später noch einmal.'),(100481,'y','lang','send_mail_to_listed_participants','Send bulk mail to listed participants','Sende E-Mail an aufgelistete Teilnehmer'),(100479,'y','lang','send_bulk_mail','Send bulk mail','Sende Massenmail'),(100429,'y','lang','recipients','Recipients','Empfänger'),(100591,'y','lang','xxx_bulk_mails_sent_to_mail_queue','bulk mails sent to mail queue.','Emails an Email-Warteschlange gesendet.'),(100139,'y','lang','edit_admin_type','Edit admin type','Adminstratorentyp bearbeiten'),(100037,'y','lang','authorization','Authorization','Recht'),(100399,'y','lang','precondition_rights','Precondition rights','Voraussetzungen'),(100017,'y','lang','admin_types','Admin types','Benutzertypen'),(100174,'y','lang','error_admintype_name_required','You have to provide a name for the administrator type.','Sie müssen einen Namen für den Administratorentyp angeben.'),(100573,'y','lang','warning','Warning:','Achtung:'),(100606,'y','lang','xxx_right_requires_right_xxx','requires authorization','erfordert Recht'),(100182,'y','lang','error_not_authorized_to_access_this_function','Sorry, you are not authorized to access this function. You may want to contact your system\'s administrator.','Sie sind leider nicht berechtigt, diese Funktion auszuführen. Bei Fragen wenden Sie sich bitte an den Systemadministrator.'),(100558,'y','lang','type_to_be_deleted_cannot_be_type_to_substitute','The type to assign cannot be the type to delete.','Der neu zugewiesene Typ kann nicht gleich dem zu ersetzenden Typ sein.'),(100018,'y','lang','admin_type_deleted','Administrator type deleted','Admistratorentyp gelöscht'),(100104,'y','lang','delete_admin_type','Delete admin type','Administratorentyp löschen'),(100063,'y','lang','copy_admins_of_this_type_to','Assign the following type to admins having the deleted type','Weise Administratoren dieses Typs den folgenden Typ zu'),(100019,'y','lang','all_entries','All entries','Alle Einträge'),(100227,'y','lang','export_language','Export language','Sprache exportieren'),(100294,'y','lang','language_export_explanation','You may download the ORSEE language file by using the link. Only language symbols, default email texts, default texts and help texts will be exported.','Die ORSEE-Sprachdatei zu dieser Sprache können Sie unter dem folgenden Link herunterladen. Es werden nur Sprachsymbole, E-Mail-Vorlagen, Textvorlagen und Hilfetexte exportiert.'),(100263,'y','lang','import_language','Import language file','Sprachdatei importieren'),(20000,'y','experimentclass','0','-','-'),(100054,'y','lang','class','Class','Klasse'),(100463,'y','lang','restrict_list_to_experiments_of_class','Show only experiments of class','Nur Experimente anzeigen der Klasse'),(100506,'y','lang','show','Show','Zeigen'),(100375,'y','lang','participants_participated_expclass','participants who participated at an experiment of one of the following experiment classes','Teilnehmer, die an einem Experiment der folgenden Experimentklassen teilgenommen haben'),(100197,'y','lang','error_uploaded_file_not_orsee_lang_file','Error: The uploaded file seems not to be an ORSEE language file.','Fehler: Die hochgeladene Datei scheint keine ORSEE-Sprachdatei zu sein.'),(100599,'y','lang','xxx_language_items_updated','language items updated.','Sprachsymbole importiert.'),(100598,'y','lang','xxx_language_items_in_file_ignored','language items unchanged or ignored','Sprachsymbole nicht verändert oder ignoriert'),(100396,'y','lang','please_check_language_symbols','You should check the language symbols now.','Sie sollten jetzt die Sprachsymbole noch einmal überprüfen.'),(130000,'y','public_content','admin_mainpage','<h4 class=\"title1\">Welcome to the experiment server</h4><BR>\r\nof the Online Recruitment System for Economic Experiments (ORSEE)\r\n<BR><BR>\r\n<TABLE width=60%>\r\n<TR><TD>\r\nThis is just a test installation. You may change the content of this welcome page under Options/Public Content/admin_mainpage.\r\n\r\n</TD></TR></TABLE>\r\n<BR>\r\n<BR>','<h4 class=\"title1\">Willkommen auf den Administrationsseiten</h4><BR>\r\ndes Online-Rekrutierungssystems für Ökonomische Experimente (ORSEE)\r\n<BR><BR>\r\n<TABLE width=60%>\r\n<TR><TD>\r\nDies ist nur eine Testinstallation, stellt aber den Admin Bereich des Software vor. Sie können den Inhalt dieser Willkommensseite unter Options/Public Content/admin_mainpage ändern.\r\n\r\n</TD></TR></TABLE>\r\n<BR>\r\n<BR>'),(100327,'y','lang','my_rights','My Rights','Meine Rechte'),(100165,'y','lang','edit_your_profile','Edit my data','Meine Daten bearbeiten'),(100262,'y','lang','import_data_from_old_versions','Import data from old ORSEE versions','Daten aus alten ORSEE-Versionen importieren'),(100213,'y','lang','experimenttype_deleted_partexp_moved_to','Experiment type deleted. For participants and experiments replaced by','Experimenttype gelöscht. Bei Teilnehmern und Experimenten ersetzt durch'),(100181,'y','lang','error_not_allowed_to_login','Sorry, you are not allowed to login into the administration area.','Sie sind leider nicht berechtigt, sich im Administrationsbereich einzuloggen.'),(100597,'y','lang','xxx_language_items_created','language items created.','Sprachsymbole neu angelegt.'),(100005,'y','lang','add_experiment_class','Add experiment class','Experiment-Klasse hinzufügen'),(100216,'y','lang','experiment_classes','Experiment classes','Experiment-Klassen'),(100146,'y','lang','edit_experiment_class','Edit experiment class','Experiment-Klasse bearbeiten'),(100134,'y','lang','do_you_really_want_to_register_for experiment','Do you really want to register for the following experiment?','Wollen sie sich wirklich für das folgende Experiment verbindlich anmelden?'),(90000,'y','laboratory','my_lab','Institute\\\'s Laboratory\r\nin the institute','Institutslabor\r\nim Institut'),(100002,'y','lang','address','Address','Adresse'),(100436,'y','lang','registered_participant_for','Registered participant for session','Teilnehmer wurde registriert für Session'),(30003,'y','experiment_invitation_mail','1223065885','Experiment\nHello #fname# #lname#!\r\n\r\nHerewith we want to invite you to participate at a experiment in our laboratory.\r\n\r\nThe sessions are scheduled for the following times:\r\n#sessionlist#\r\n\r\nIf you want to participate, you can register by clicking on the following link:\r\n\r\n#link#\r\n\r\n(If you cannot click on the link, copy it to the clipboard by selecting it, rightclick and choosing \\\"Copy\\\", and then paste it into the address line in your browser by right clicking there and choosing \\\"Paste\\\".)','Experiment\nHallo #fname# #lname#!\r\n\r\nHiermit möchten wir Sie zu einem neuen Experiment einladen.\r\n\r\nEs stehen die folgenden Termine zur Auswahl:\r\n#sessionlist#\r\n\r\nWenn Sie teilnehmen möchten, können Sie sich unter dem folgenden Link anmelden:\r\n\r\n#link#\r\n\r\n(Wenn Sie in Ihrem E-Mail-Programm nicht direkt auf den Link klicken können, dann markieren Sie ihn einfach und kopieren ihn in die Zwischenalage, indem Sie rechts klicken und \\\"Kopieren\\\" wählen. Dann starten Sie Ihren Webbrowser und fügen die Adresse dort im Adressenfenster ein, indem Sie dort rechts klicken und \\\"Einfügen\\\" wählen.)'),(30004,'y','experiment_invitation_mail','1090628885','Experiment\nHello #fname# #lname#!\r\n\r\nHerewith we want to invite you to participate at a experiment in our laboratory.\r\n\r\nThe sessions are scheduled for the following times:\r\n#sessionlist#\r\n\r\nIf you want to participate, you can register by clicking on the following link:\r\n\r\n#link#\r\n\r\n(If you cannot click on the link, copy it to the clipboard by selecting it, rightclick and choosing \\\"Copy\\\", and then paste it into the address line in your browser by right clicking there and choosing \\\"Paste\\\".)','Experiment\nHello #fname# #lname#!\r\n\r\nHerewith we want to invite you to participate at a experiment in our laboratory.\r\n\r\nThe sessions are scheduled for the following times:\r\n#sessionlist#\r\n\r\nIf you want to participate, you can register by clicking on the following link:\r\n\r\n#link#\r\n\r\n(If you cannot click on the link, copy it to the clipboard by selecting it, rightclick and choosing \\\"Copy\\\", and then paste it into the address line in your browser by right clicking there and choosing \\\"Paste\\\".)'),(30015,'y','experiment_invitation_mail','1072705118','Experiment\nHello #fname# #lname#!\r\n\r\nHerewith we want to invite you to participate at a experiment in our laboratory.\r\n\r\nThe sessions are scheduled for the following times:\r\n#sessionlist#\r\n\r\nIf you want to participate, you can register by clicking on the following link:\r\n\r\n#link#\r\n\r\n(If you cannot click on the link, copy it to the clipboard by selecting it, rightclick and choosing \\\"Copy\\\", and then paste it into the address line in your browser by right clicking there and choosing \\\"Paste\\\".)','Experiment\nHallo #fname# #lname#!\r\n#sessionlist#\r\nHiermit möchten wir Sie zu einem neuen Experiment einladen.\r\n\r\nEs stehen die folgenden Termine zur Auswahl:\r\n#sessionlist#\r\n\r\nWenn Sie teilnehmen möchten, können Sie sich unter dem folgenden Link anmelden:\r\n\r\n#link#\r\n#sessionlist#\r\n(Wenn Sie in Ihrem E-Mail-Programm nicht direkt auf den Link klicken können, dann markieren Sie ihn einfach und kopieren ihn in die Zwischenalage, indem Sie rechts klicken und \\\"Kopieren\\\" wählen. Dann starten Sie Ihren Webbrowser und fügen die Adresse dort im Adressenfenster ein, indem Sie dort rechts klicken und \\\"Einfügen\\\" wählen.)'),(100630,'y','lang','you_have_to_phone_number','You have to fill in your phone number.','Sie muessen Ihre Telefonnummer angeben.'),(100631,'y','lang','you_have_to_gender','Please fill in your gender.','Bitte geben Sie Ihr Geschlecht an.'),(100632,'y','lang','you_have_to_profession','Please fill in your profession.','Bitte geben Sie Ihren Beruf an.'),(100633,'y','lang','you_have_to_field_of_studies','Please select your field of studies.','Bitte geben Sie Ihr Studienfach an.'),(100634,'y','lang','you_have_to_begin_of_studies','Please select the year in which you started studying.','Bitte geben Sie Ihren Studienbeginn an.'),(30013,'y','experiment_invitation_mail','1501346721','Experiment\nHello #fname# #lname#!\r\n\r\nHerewith we want to invite you to participate at a experiment in our laboratory.\r\n\r\nThe sessions are scheduled for the following times:\r\n#sessionlist#\r\n\r\nIf you want to participate, you can register by clicking on the following link:\r\n\r\n#link#\r\n\r\n(If you cannot click on the link, copy it to the clipboard by selecting it, rightclick and choosing \\\"Copy\\\", and then paste it into the address line in your browser by right clicking there and choosing \\\"Paste\\\".)','Experiment\nHello #fname# #lname#!\r\n\r\nHerewith we want to invite you to participate at a experiment in our laboratory.\r\n\r\nThe sessions are scheduled for the following times:\r\n#sessionlist#\r\n\r\nIf you want to participate, you can register by clicking on the following link:\r\n\r\n#link#\r\n\r\n(If you cannot click on the link, copy it to the clipboard by selecting it, rightclick and choosing \\\"Copy\\\", and then paste it into the address line in your browser by right clicking there and choosing \\\"Paste\\\".)'),(40002,'y','experiment_type','3','Survey','Survey'),(30014,'y','experiment_invitation_mail','1316882547','Experiment\nHello #fname# #lname#!\r\n\r\nHerewith we want to invite you to participate at a experiment in our laboratory.\r\n\r\nThe sessions are scheduled for the following times:\r\n#sessionlist#\r\n\r\nIf you want to participate, you can register by clicking on the following link:\r\n\r\n#link#\r\n\r\n(If you cannot click on the link, copy it to the clipboard by selecting it, rightclick and choosing \\\"Copy\\\", and then paste it into the address line in your browser by right clicking there and choosing \\\"Paste\\\".)','Experiment\nHallo #fname# #lname#!\r\n\r\nHiermit möchten wir Sie zu einem neuen Experiment einladen.\r\n\r\nEs stehen die folgenden Termine zur Auswahl:\r\n#sessionlist#\r\n\r\nWenn Sie teilnehmen möchten, können Sie sich unter dem folgenden Link anmelden:\r\n\r\n#link#\r\n\r\n(Wenn Sie in Ihrem E-Mail-Programm nicht direkt auf den Link klicken können, dann markieren Sie ihn einfach und kopieren ihn in die Zwischenalage, indem Sie rechts klicken und \\\"Kopieren\\\" wählen. Dann starten Sie Ihren Webbrowser und fügen die Adresse dort im Adressenfenster ein, indem Sie dort rechts klicken und \\\"Einfügen\\\" wählen.)'),(30016,'y','experiment_invitation_mail','1049962084','Experiment\nHello #fname# #lname#!\r\n\r\nHerewith we want to invite you to participate at a experiment in our laboratory.\r\n\r\nThe sessions are scheduled for the following times:\r\n#sessionlist#\r\n\r\nIf you want to participate, you can register by clicking on the following link:\r\n\r\n#link#\r\n\r\n(If you cannot click on the link, copy it to the clipboard by selecting it, rightclick and choosing \"Copy\", and then paste it into the address line in your browser by right clicking there and choosing \"Paste\".)','Experiment\nHallo #fname# #lname#!\r\n\r\nHiermit möchten wir Sie zu einem neuen Experiment einladen.\r\n\r\nEs stehen die folgenden Termine zur Auswahl:\r\n#sessionlist#\r\n\r\nWenn Sie teilnehmen möchten, können Sie sich unter dem folgenden Link anmelden:\r\n\r\n#link#\r\n\r\n(Wenn Sie in Ihrem E-Mail-Programm nicht direkt auf den Link klicken können, dann markieren Sie ihn einfach und kopieren ihn in die Zwischenalage, indem Sie rechts klicken und \"Kopieren\" wählen. Dann starten Sie Ihren Webbrowser und fügen die Adresse dort im Adressenfenster ein, indem Sie dort rechts klicken und \"Einfügen\" wählen.)'),(30017,'y','experiment_invitation_mail','1960885971','Experiment\nHello #fname# #lname#!\r\n\r\nHerewith we want to invite you to participate at a experiment in our laboratory.\r\n\r\nThe sessions are scheduled for the following times:\r\n#sessionlist#\r\n\r\nIf you want to participate, you can register by clicking on the following link:\r\n\r\n#link#\r\n\r\n(If you cannot click on the link, copy it to the clipboard by selecting it, rightclick and choosing \"Copy\", and then paste it into the address line in your browser by right clicking there and choosing \"Paste\".)','Experiment\nHallo #fname# #lname#!\r\n\r\nHiermit möchten wir Sie zu einem neuen Experiment einladen.\r\n\r\nEs stehen die folgenden Termine zur Auswahl:\r\n#sessionlist#\r\n\r\nWenn Sie teilnehmen möchten, können Sie sich unter dem folgenden Link anmelden:\r\n\r\n#link#\r\n\r\n(Wenn Sie in Ihrem E-Mail-Programm nicht direkt auf den Link klicken können, dann markieren Sie ihn einfach und kopieren ihn in die Zwischenalage, indem Sie rechts klicken und \"Kopieren\" wählen. Dann starten Sie Ihren Webbrowser und fügen die Adresse dort im Adressenfenster ein, indem Sie dort rechts klicken und \"Einfügen\" wählen.)'),(30018,'y','experiment_invitation_mail','1487409210','Experiment\nHello #fname# #lname#!\r\n\r\nHerewith we want to invite you to participate at a experiment in our laboratory.\r\n\r\nThe sessions are scheduled for the following times:\r\n#sessionlist#\r\n\r\nIf you want to participate, you can register by clicking on the following link:\r\n\r\n#link#\r\n\r\n(If you cannot click on the link, copy it to the clipboard by selecting it, rightclick and choosing \"Copy\", and then paste it into the address line in your browser by right clicking there and choosing \"Paste\".)','Experiment\nHallo #fname# #lname#!\r\n\r\nHiermit möchten wir Sie zu einem neuen Experiment einladen.\r\n\r\nEs stehen die folgenden Termine zur Auswahl:\r\n#sessionlist#\r\n\r\nWenn Sie teilnehmen möchten, können Sie sich unter dem folgenden Link anmelden:\r\n\r\n#link#\r\n\r\n(Wenn Sie in Ihrem E-Mail-Programm nicht direkt auf den Link klicken können, dann markieren Sie ihn einfach und kopieren ihn in die Zwischenalage, indem Sie rechts klicken und \"Kopieren\" wählen. Dann starten Sie Ihren Webbrowser und fügen die Adresse dort im Adressenfenster ein, indem Sie dort rechts klicken und \"Einfügen\" wählen.)'),(30019,'y','experiment_invitation_mail','2021135999','Experiment\nHello #fname# #lname#!\r\n\r\nHerewith we want to invite you to participate at a experiment in our laboratory.\r\n\r\nThe sessions are scheduled for the following times:\r\n#sessionlist#\r\n\r\nIf you want to participate, you can register by clicking on the following link:\r\n\r\n#link#\r\n\r\n(If you cannot click on the link, copy it to the clipboard by selecting it, rightclick and choosing \"Copy\", and then paste it into the address line in your browser by right clicking there and choosing \"Paste\".)','Experiment\nHello #fname# #lname#!\r\n\r\nHerewith we want to invite you to participate at a experiment in our laboratory.\r\n\r\nThe sessions are scheduled for the following times:\r\n#sessionlist#\r\n\r\nIf you want to participate, you can register by clicking on the following link:\r\n\r\n#link#\r\n\r\n(If you cannot click on the link, copy it to the clipboard by selecting it, rightclick and choosing \"Copy\", and then paste it into the address line in your browser by right clicking there and choosing \"Paste\".)'),(30020,'y','experiment_invitation_mail','1319928007','Experiment\nHello #fname# #lname#!\r\n\r\nHerewith we want to invite you to participate at a experiment in our laboratory.\r\n\r\nThe sessions are scheduled for the following times:\r\n#sessionlist#\r\n\r\nIf you want to participate, you can register by clicking on the following link:\r\n\r\n#link#\r\n\r\n(If you cannot click on the link, copy it to the clipboard by selecting it, rightclick and choosing \"Copy\", and then paste it into the address line in your browser by right clicking there and choosing \"Paste\".)','Experiment\nHello #fname# #lname#!\r\n\r\nHerewith we want to invite you to participate at a experiment in our laboratory.\r\n\r\nThe sessions are scheduled for the following times:\r\n#sessionlist#\r\n\r\nIf you want to participate, you can register by clicking on the following link:\r\n\r\n#link#\r\n\r\n(If you cannot click on the link, copy it to the clipboard by selecting it, rightclick and choosing \"Copy\", and then paste it into the address line in your browser by right clicking there and choosing \"Paste\".)'),(30021,'y','experiment_invitation_mail','1012559021','Experiment\nHello #fname# #lname#!\r\n\r\nHerewith we want to invite you to participate at a experiment in our laboratory.\r\n\r\nThe sessions are scheduled for the following times:\r\n#sessionlist#\r\n\r\nIf you want to participate, you can register by clicking on the following link:\r\n\r\n#link#\r\n\r\n(If you cannot click on the link, copy it to the clipboard by selecting it, rightclick and choosing \"Copy\", and then paste it into the address line in your browser by right clicking there and choosing \"Paste\".)','Experiment\nHello #fname# #lname#!\r\n\r\nHerewith we want to invite you to participate at a experiment in our laboratory.\r\n\r\nThe sessions are scheduled for the following times:\r\n#sessionlist#\r\n\r\nIf you want to participate, you can register by clicking on the following link:\r\n\r\n#link#\r\n\r\n(If you cannot click on the link, copy it to the clipboard by selecting it, rightclick and choosing \"Copy\", and then paste it into the address line in your browser by right clicking there and choosing \"Paste\".)'),(30022,'y','experiment_invitation_mail','372554470','Experiment\nHello #fname# #lname#!\r\n\r\nHerewith we want to invite you to participate at a experiment in our laboratory.\r\n\r\nThe sessions are scheduled for the following times:\r\n#sessionlist#\r\n\r\nIf you want to participate, you can register by clicking on the following link:\r\n\r\n#link#\r\n\r\n(If you cannot click on the link, copy it to the clipboard by selecting it, rightclick and choosing \"Copy\", and then paste it into the address line in your browser by right clicking there and choosing \"Paste\".)','Experiment\nHello #fname# #lname#!\r\n\r\nHerewith we want to invite you to participate at a experiment in our laboratory.\r\n\r\nThe sessions are scheduled for the following times:\r\n#sessionlist#\r\n\r\nIf you want to participate, you can register by clicking on the following link:\r\n\r\n#link#\r\n\r\n(If you cannot click on the link, copy it to the clipboard by selecting it, rightclick and choosing \"Copy\", and then paste it into the address line in your browser by right clicking there and choosing \"Paste\".)'),(30023,'y','experiment_invitation_mail','1412853098','Experiment\nHello #fname# #lname#!\r\n\r\nHerewith we want to invite you to participate at a experiment in our laboratory.\r\n\r\nThe sessions are scheduled for the following times:\r\n#sessionlist#\r\n\r\nIf you want to participate, you can register by clicking on the following link:\r\n\r\n#link#\r\n\r\n(If you cannot click on the link, copy it to the clipboard by selecting it, rightclick and choosing \"Copy\", and then paste it into the address line in your browser by right clicking there and choosing \"Paste\".)','Experiment\nHello #fname# #lname#!\r\n\r\nHerewith we want to invite you to participate at a experiment in our laboratory.\r\n\r\nThe sessions are scheduled for the following times:\r\n#sessionlist#\r\n\r\nIf you want to participate, you can register by clicking on the following link:\r\n\r\n#link#\r\n\r\n(If you cannot click on the link, copy it to the clipboard by selecting it, rightclick and choosing \"Copy\", and then paste it into the address line in your browser by right clicking there and choosing \"Paste\".)'),(30028,'y','experiment_invitation_mail','1950584572','Experiment\nHello #fname# #lname#!\r\n\r\nHerewith we want to invite you to participate at a experiment in our laboratory.\r\n\r\nThe sessions are scheduled for the following times:\r\n#sessionlist#\r\n\r\nIf you want to participate, you can register by clicking on the following link:\r\n\r\n#link#\r\n\r\n(If you cannot click on the link, copy it to the clipboard by selecting it, rightclick and choosing \"Copy\", and then paste it into the address line in your browser by right clicking there and choosing \"Paste\".)','Experiment\nHallo #fname# #lname#!\r\n\r\nHiermit möchten wir Sie zu einem neuen Experiment einladen.\r\n\r\nEs stehen die folgenden Termine zur Auswahl:\r\n#sessionlist#\r\n\r\nWenn Sie teilnehmen möchten, können Sie sich unter dem folgenden Link anmelden:\r\n\r\n#link#\r\n\r\n(Wenn Sie in Ihrem E-Mail-Programm nicht direkt auf den Link klicken können, dann markieren Sie ihn einfach und kopieren ihn in die Zwischenalage, indem Sie rechts klicken und \"Kopieren\" wählen. Dann starten Sie Ihren Webbrowser und fügen die Adresse dort im Adressenfenster ein, indem Sie dort rechts klicken und \"Einfügen\" wählen.)'),(30025,'y','experiment_invitation_mail','1052387776','Experiment\nHello #fname# #lname#!\r\n\r\nHerewith we want to invite you to participate at a experiment in our laboratory.\r\n\r\nThe sessions are scheduled for the following times:\r\n#sessionlist#\r\n\r\nIf you want to participate, you can register by clicking on the following link:\r\n\r\n#link#\r\n\r\n(If you cannot click on the link, copy it to the clipboard by selecting it, rightclick and choosing \"Copy\", and then paste it into the address line in your browser by right clicking there and choosing \"Paste\".)','Experiment\nHello #fname# #lname#!\r\n\r\nHerewith we want to invite you to participate at a experiment in our laboratory.\r\n\r\nThe sessions are scheduled for the following times:\r\n#sessionlist#\r\n\r\nIf you want to participate, you can register by clicking on the following link:\r\n\r\n#link#\r\n\r\n(If you cannot click on the link, copy it to the clipboard by selecting it, rightclick and choosing \"Copy\", and then paste it into the address line in your browser by right clicking there and choosing \"Paste\".)'),(140001,'y','subjectpool','2','good','dont know'),(30026,'y','experiment_invitation_mail','11395745','Experiment\nHello #fname# #lname#!\r\n\r\nHerewith we want to invite you to participate at a experiment in our laboratory.\r\n\r\nThe sessions are scheduled for the following times:\r\n#sessionlist#\r\n\r\nIf you want to participate, you can register by clicking on the following link:\r\n\r\n#link#\r\n\r\n(If you cannot click on the link, copy it to the clipboard by selecting it, rightclick and choosing \"Copy\", and then paste it into the address line in your browser by right clicking there and choosing \"Paste\".)','Experiment\nHello #fname# #lname#!\r\n\r\nHerewith we want to invite you to participate at a experiment in our laboratory.\r\n\r\nThe sessions are scheduled for the following times:\r\n#sessionlist#\r\n\r\nIf you want to participate, you can register by clicking on the following link:\r\n\r\n#link#\r\n\r\n(If you cannot click on the link, copy it to the clipboard by selecting it, rightclick and choosing \"Copy\", and then paste it into the address line in your browser by right clicking there and choosing \"Paste\".)'),(30027,'y','experiment_invitation_mail','151303098','Experiment\nHello #fname# #lname#!\r\n\r\nHerewith we want to invite you to participate at a experiment in our laboratory.\r\n\r\nThe sessions are scheduled for the following times:\r\n#sessionlist#\r\n\r\nIf you want to participate, you can register by clicking on the following link:\r\n\r\n#link#\r\n\r\n(If you cannot click on the link, copy it to the clipboard by selecting it, rightclick and choosing \"Copy\", and then paste it into the address line in your browser by right clicking there and choosing \"Paste\".)','Experiment\nHello #fname# #lname#!\r\n\r\nHerewith we want to invite you to participate at a experiment in our laboratory.\r\n\r\nThe sessions are scheduled for the following times:\r\n#sessionlist#\r\n\r\nIf you want to participate, you can register by clicking on the following link:\r\n\r\n#link#\r\n\r\n(If you cannot click on the link, copy it to the clipboard by selecting it, rightclick and choosing \"Copy\", and then paste it into the address line in your browser by right clicking there and choosing \"Paste\".)'),(30029,'y','experiment_invitation_mail','988343169','Experiment\nHello #fname# #lname#!\r\n\r\nHerewith we want to invite you to participate at a experiment in our laboratory.\r\n\r\nThe sessions are scheduled for the following times:\r\n#sessionlist#\r\n\r\nIf you want to participate, you can register by clicking on the following link:\r\n\r\n#link#\r\n\r\n(If you cannot click on the link, copy it to the clipboard by selecting it, rightclick and choosing \"Copy\", and then paste it into the address line in your browser by right clicking there and choosing \"Paste\".)','Experiment\nHallo #fname# #lname#!\r\n\r\nHiermit möchten wir Sie zu einem neuen Experiment einladen.\r\n\r\nEs stehen die folgenden Termine zur Auswahl:\r\n#sessionlist#\r\n\r\nWenn Sie teilnehmen möchten, können Sie sich unter dem folgenden Link anmelden:\r\n\r\n#link#\r\n\r\n(Wenn Sie in Ihrem E-Mail-Programm nicht direkt auf den Link klicken können, dann markieren Sie ihn einfach und kopieren ihn in die Zwischenalage, indem Sie rechts klicken und \"Kopieren\" wählen. Dann starten Sie Ihren Webbrowser und fügen die Adresse dort im Adressenfenster ein, indem Sie dort rechts klicken und \"Einfügen\" wählen.)'),(30030,'y','experiment_invitation_mail','669305581','Experiment\nHello #fname# #lname#!\r\n\r\nHerewith we want to invite you to participate at a experiment in our laboratory.\r\n\r\nThe sessions are scheduled for the following times:\r\n#sessionlist#\r\n\r\nIf you want to participate, you can register by clicking on the following link:\r\n\r\n#link#\r\n\r\n(If you cannot click on the link, copy it to the clipboard by selecting it, rightclick and choosing \"Copy\", and then paste it into the address line in your browser by right clicking there and choosing \"Paste\".)','Experiment\nHallo #fname# #lname#!\r\n\r\nHiermit möchten wir Sie zu einem neuen Experiment einladen.\r\n\r\nEs stehen die folgenden Termine zur Auswahl:\r\n#sessionlist#\r\n\r\nWenn Sie teilnehmen möchten, können Sie sich unter dem folgenden Link anmelden:\r\n\r\n#link#\r\n\r\n(Wenn Sie in Ihrem E-Mail-Programm nicht direkt auf den Link klicken können, dann markieren Sie ihn einfach und kopieren ihn in die Zwischenalage, indem Sie rechts klicken und \"Kopieren\" wählen. Dann starten Sie Ihren Webbrowser und fügen die Adresse dort im Adressenfenster ein, indem Sie dort rechts klicken und \"Einfügen\" wählen.)'),(30031,'y','experiment_invitation_mail','673720870','Experiment\nHello #fname# #lname#!\r\n\r\nHerewith we want to invite you to participate at a experiment in our laboratory.\r\n\r\nThe sessions are scheduled for the following times:\r\n#sessionlist#\r\n\r\nIf you want to participate, you can register by clicking on the following link:\r\n\r\n#link#\r\n\r\n(If you cannot click on the link, copy it to the clipboard by selecting it, rightclick and choosing \"Copy\", and then paste it into the address line in your browser by right clicking there and choosing \"Paste\".)','Experiment\nHallo #fname# #lname#!\r\n\r\nHiermit möchten wir Sie zu einem neuen Experiment einladen.\r\n\r\nEs stehen die folgenden Termine zur Auswahl:\r\n#sessionlist#\r\n\r\nWenn Sie teilnehmen möchten, können Sie sich unter dem folgenden Link anmelden:\r\n\r\n#link#\r\n\r\n(Wenn Sie in Ihrem E-Mail-Programm nicht direkt auf den Link klicken können, dann markieren Sie ihn einfach und kopieren ihn in die Zwischenalage, indem Sie rechts klicken und \"Kopieren\" wählen. Dann starten Sie Ihren Webbrowser und fügen die Adresse dort im Adressenfenster ein, indem Sie dort rechts klicken und \"Einfügen\" wählen.)'),(30032,'y','experiment_invitation_mail','1630249119','Experiment\nHello niuzhen&#65281;\r\nHerewith we want to invite you to participate at a experiment in our laboratory.\r\n\r\nThe sessions are scheduled for the following times:\r\n#sessionlist#\r\n\r\nIf you want to participate, you can register by clicking on the following link:\r\n\r\n#link#\r\n\r\n(If you cannot click on the link, copy it to the clipboard by selecting it, rightclick and choosing \"Copy\", and then paste it into the address line in your browser by right clicking there and choosing \"Paste\".)','Experiment\nHallo #fname# #lname#!\r\n\r\nHiermit möchten wir Sie zu einem neuen Experiment einladen.\r\n\r\nEs stehen die folgenden Termine zur Auswahl:\r\n#sessionlist#\r\n\r\nWenn Sie teilnehmen möchten, können Sie sich unter dem folgenden Link anmelden:\r\n\r\n#link#\r\n\r\n(Wenn Sie in Ihrem E-Mail-Programm nicht direkt auf den Link klicken können, dann markieren Sie ihn einfach und kopieren ihn in die Zwischenalage, indem Sie rechts klicken und \"Kopieren\" wählen. Dann starten Sie Ihren Webbrowser und fügen die Adresse dort im Adressenfenster ein, indem Sie dort rechts klicken und \"Einfügen\" wählen.)'),(30033,'y','experiment_invitation_mail','1069228480','Experiment\nHello #fname# #lname#!\r\n\r\nHerewith we want to invite you to participate at a experiment in our laboratory.\r\n\r\nThe sessions are scheduled for the following times:\r\n#sessionlist#\r\n\r\nIf you want to participate, you can register by clicking on the following link:\r\n\r\n#link#\r\n\r\n(If you cannot click on the link, copy it to the clipboard by selecting it, rightclick and choosing \"Copy\", and then paste it into the address line in your browser by right clicking there and choosing \"Paste\".)','Experiment\nHallo #fname# #lname#!\r\n\r\nHiermit möchten wir Sie zu einem neuen Experiment einladen.\r\n\r\nEs stehen die folgenden Termine zur Auswahl:\r\n#sessionlist#\r\n\r\nWenn Sie teilnehmen möchten, können Sie sich unter dem folgenden Link anmelden:\r\n\r\n#link#\r\n\r\n(Wenn Sie in Ihrem E-Mail-Programm nicht direkt auf den Link klicken können, dann markieren Sie ihn einfach und kopieren ihn in die Zwischenalage, indem Sie rechts klicken und \"Kopieren\" wählen. Dann starten Sie Ihren Webbrowser und fügen die Adresse dort im Adressenfenster ein, indem Sie dort rechts klicken und \"Einfügen\" wählen.)'),(30034,'y','experiment_invitation_mail','1241276594','Experiment\nHello #fname# #lname#!\r\n\r\nHerewith we want to invite you to participate at a experiment in our laboratory.\r\n\r\nThe sessions are scheduled for the following times:\r\n#sessionlist#\r\n\r\nIf you want to participate, you can register by clicking on the following link:\r\n\r\n#link#\r\n\r\n(If you cannot click on the link, copy it to the clipboard by selecting it, rightclick and choosing \"Copy\", and then paste it into the address line in your browser by right clicking there and choosing \"Paste\".)','Experiment\nHallo #fname# #lname#!\r\n\r\nHiermit möchten wir Sie zu einem neuen Experiment einladen.\r\n\r\nEs stehen die folgenden Termine zur Auswahl:\r\n#sessionlist#\r\n\r\nWenn Sie teilnehmen möchten, können Sie sich unter dem folgenden Link anmelden:\r\n\r\n#link#\r\n\r\n(Wenn Sie in Ihrem E-Mail-Programm nicht direkt auf den Link klicken können, dann markieren Sie ihn einfach und kopieren ihn in die Zwischenalage, indem Sie rechts klicken und \"Kopieren\" wählen. Dann starten Sie Ihren Webbrowser und fügen die Adresse dort im Adressenfenster ein, indem Sie dort rechts klicken und \"Einfügen\" wählen.)'),(30035,'y','experiment_invitation_mail','1698040095','Experiment\nHello #fname# #lname#!\r\n\r\nHerewith we want to invite you to participate at a experiment in our laboratory.\r\n\r\nThe sessions are scheduled for the following times:\r\n#sessionlist#\r\n\r\nIf you want to participate, you can register by clicking on the following link:\r\n\r\n#link#\r\n\r\n(If you cannot click on the link, copy it to the clipboard by selecting it, rightclick and choosing \"Copy\", and then paste it into the address line in your browser by right clicking there and choosing \"Paste\".)','Experiment\nHallo #fname# #lname#!\r\n\r\nHiermit möchten wir Sie zu einem neuen Experiment einladen.\r\n\r\nEs stehen die folgenden Termine zur Auswahl:\r\n#sessionlist#\r\n\r\nWenn Sie teilnehmen möchten, können Sie sich unter dem folgenden Link anmelden:\r\n\r\n#link#\r\n\r\n(Wenn Sie in Ihrem E-Mail-Programm nicht direkt auf den Link klicken können, dann markieren Sie ihn einfach und kopieren ihn in die Zwischenalage, indem Sie rechts klicken und \"Kopieren\" wählen. Dann starten Sie Ihren Webbrowser und fügen die Adresse dort im Adressenfenster ein, indem Sie dort rechts klicken und \"Einfügen\" wählen.)'),(30036,'y','experiment_invitation_mail','1530845088','Experiment\nHello #fname# #lname#!\r\n\r\nHerewith we want to invite you to participate at a experiment in our laboratory.\r\n\r\nThe sessions are scheduled for the following times:\r\n#sessionlist#\r\n\r\nIf you want to participate, you can register by clicking on the following link:\r\n\r\n#link#\r\n\r\n(If you cannot click on the link, copy it to the clipboard by selecting it, rightclick and choosing \"Copy\", and then paste it into the address line in your browser by right clicking there and choosing \"Paste\".)','Experiment\nHallo #fname# #lname#!\r\n\r\nHiermit möchten wir Sie zu einem neuen Experiment einladen.\r\n\r\nEs stehen die folgenden Termine zur Auswahl:\r\n#sessionlist#\r\n\r\nWenn Sie teilnehmen möchten, können Sie sich unter dem folgenden Link anmelden:\r\n\r\n#link#\r\n\r\n(Wenn Sie in Ihrem E-Mail-Programm nicht direkt auf den Link klicken können, dann markieren Sie ihn einfach und kopieren ihn in die Zwischenalage, indem Sie rechts klicken und \"Kopieren\" wählen. Dann starten Sie Ihren Webbrowser und fügen die Adresse dort im Adressenfenster ein, indem Sie dort rechts klicken und \"Einfügen\" wählen.)'),(140003,'y','subjectpool','4','extra subpool','extra subpool'),(30037,'y','experiment_invitation_mail','437753292','Experiment\nHello #fname# #lname#!\r\n\r\nHerewith we want to invite you to participate at a experiment in our laboratory.\r\n\r\nThe sessions are scheduled for the following times:\r\n#sessionlist#\r\n\r\nIf you want to participate, you can register by clicking on the following link:\r\n\r\n#link#\r\n\r\n(If you cannot click on the link, copy it to the clipboard by selecting it, rightclick and choosing \"Copy\", and then paste it into the address line in your browser by right clicking there and choosing \"Paste\".)','Experiment\nHallo #fname# #lname#!\r\n\r\nHiermit möchten wir Sie zu einem neuen Experiment einladen.\r\n\r\nEs stehen die folgenden Termine zur Auswahl:\r\n#sessionlist#\r\n\r\nWenn Sie teilnehmen möchten, können Sie sich unter dem folgenden Link anmelden:\r\n\r\n#link#\r\n\r\n(Wenn Sie in Ihrem E-Mail-Programm nicht direkt auf den Link klicken können, dann markieren Sie ihn einfach und kopieren ihn in die Zwischenalage, indem Sie rechts klicken und \"Kopieren\" wählen. Dann starten Sie Ihren Webbrowser und fügen die Adresse dort im Adressenfenster ein, indem Sie dort rechts klicken und \"Einfügen\" wählen.)');
/*!40000 ALTER TABLE `or_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `or_mail_queue`
--

DROP TABLE IF EXISTS `or_mail_queue`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `or_mail_queue` (
  `mail_id` int(20) NOT NULL auto_increment,
  `timestamp` int(20) default NULL,
  `mail_type` varchar(255) default '',
  `mail_recipient` varchar(255) default '',
  `experiment_id` varchar(255) default '',
  `session_id` varchar(255) default '',
  `bulk_id` varchar(255) default '',
  `error` varchar(255) default '',
  PRIMARY KEY  (`mail_id`)
) ENGINE=MyISAM AUTO_INCREMENT=275 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `or_mail_queue`
--

LOCK TABLES `or_mail_queue` WRITE;
/*!40000 ALTER TABLE `or_mail_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `or_mail_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `or_options`
--

DROP TABLE IF EXISTS `or_options`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `or_options` (
  `option_id` int(30) NOT NULL default '0',
  `option_type` varchar(200) default '',
  `option_name` text,
  `option_value` text,
  PRIMARY KEY  (`option_id`),
  UNIQUE KEY `uindex` (`option_id`),
  UNIQUE KEY `uindex2` (`option_type`(10),`option_name`(40))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `or_options`
--

LOCK TABLES `or_options` WRITE;
/*!40000 ALTER TABLE `or_options` DISABLE KEYS */;
INSERT INTO `or_options` VALUES (1077506199,'general','upload_max_size','500000'),(1077506249,'general','upload_categories','instructions,data_files,programs,paper,presentations,other'),(1077507275,'general','support_mail','experiments@orsee.org'),(1077507876,'general','default_area','ORSEE'),(1077508651,'general','admin_standard_language','en'),(1077508670,'general','public_standard_language','en'),(1077509803,'default','lab_participants_max','30'),(1077509822,'default','lab_participants_default','24'),(1077509993,'default','reserve_participants_max','5'),(1077510009,'default','reserve_participants_default','3'),(1077510140,'default','session_duration_hour_max','4'),(1077510166,'default','session_duration_hour_default','1'),(1077510336,'default','session_duration_minute_default','30'),(1077510365,'default','session_duration_minute_steps','15'),(1077510534,'default','session_start_years_backward','2'),(1077510552,'default','session_start_years_forward','5'),(1077510675,'default','session_reminder_hours_default','48'),(1077510687,'default','session_reminder_hours_max','120'),(1077510705,'default','session_reminder_hours_steps','12'),(1077510846,'default','session_reminder_send_on_default','enough_participants_needed'),(1077511075,'default','session_registration_end_hours_default','72'),(1077511094,'default','session_registration_end_hours_max','240'),(1077511121,'default','session_registration_end_hours_steps','12'),(1077511438,'general','subpool_default_registration_id','1'),(1077511597,'default','begin_of_studies_years_backward','10'),(1077511617,'default','begin_of_studies_years_forward','1'),(1077512717,'general','orsee_admin_style','orsee'),(1078339287,'default','query_random_subset_default_size','100'),(1078373886,'default','query_experiment_list_nr_columns','3'),(1078371534,'default','query_number_exp_limited_view','10'),(1079220715,'default','calendar_pdf_table_fontsize','8'),(1079220731,'default','calendar_pdf_title_fontsize','12'),(1079220901,'default','participant_list_pdf_table_fontsize','10'),(1079220924,'default','participant_list_pdf_title_fontsize','12'),(1079828862,'general','stats_plots_gd_version','1'),(1079829505,'default','stats_type','both'),(1083289176,'general','stop_public_site','n'),(1083423014,'default','default_admin_type','experimenter'),(1083259056,'general','automatic_exclusion_inform','y'),(1083276956,'general','send_noshow_warnings','y'),(1079879346,'default','laboratory_opening_time_hour','8'),(1079879364,'default','laboratory_opening_time_minute','0'),(1079879390,'default','laboratory_closing_time_hour','20'),(1079879404,'default','laboratory_closing_time_minute','0'),(1079917304,'general','http_log_file_location','/var/log/apache2/access_log'),(1080360316,'general','mail_queue_number_send_per_time','50'),(1080446598,'default','stats_logs_results_per_page','50'),(1080782035,'general','email_sendmail_type','direct'),(1080782351,'general','email_sendmail_path','/usr/sbin/sendmail'),(1083259022,'general','automatic_exclusion_noshows','3'),(1083259005,'general','automatic_exclusion','y'),(1083199247,'general','allow_experiment_restriction','y'),(1081725060,'general','language_enabled_public','de,en'),(1081725371,'general','language_enabled_participants','de,en'),(1082933717,'default','experimenter_list_nr_columns','3'),(1083195991,'general','orsee_public_style','orsee'),(1084500528,'default','query_experiment_classes_list_nr_columns','3'),(1099712910,'general','public_calendar_hide_exp_name','y'),(1099713826,'general','emailed_calendar_included_months','2');
/*!40000 ALTER TABLE `or_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `or_os_data_form`
--

DROP TABLE IF EXISTS `or_os_data_form`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `or_os_data_form` (
  `experiment_id` int(20) NOT NULL default '0',
  `position` char(1) default 's',
  `text_above` mediumtext,
  `to_subpool_id` int(20) default '1',
  `show_fname` char(1) default 'y',
  `show_lname` char(1) default 'y',
  `show_email` char(1) default 'y',
  `show_gender` char(1) default 'y',
  `show_address` char(1) default 'y',
  `show_phone` char(1) default 'y',
  `show_work` char(1) default 'y',
  `show_add_to_pool` char(1) default 'y',
  `require_fname` char(1) default 'n',
  `require_lname` char(1) default 'n',
  `require_email` char(1) default 'n',
  `require_gender` char(1) default 'n',
  `require_address` char(1) default 'n',
  `require_phone` char(1) default 'n',
  `require_work` char(1) default 'n',
  PRIMARY KEY  (`experiment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `or_os_data_form`
--

LOCK TABLES `or_os_data_form` WRITE;
/*!40000 ALTER TABLE `or_os_data_form` DISABLE KEYS */;
/*!40000 ALTER TABLE `or_os_data_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `or_os_items_checkbox`
--

DROP TABLE IF EXISTS `or_os_items_checkbox`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `or_os_items_checkbox` (
  `item_id` int(20) NOT NULL default '0',
  `question_id` int(20) NOT NULL default '0',
  `item_name` varchar(50) default '',
  `text_before` mediumtext,
  `text_after` mediumtext,
  `prevalue` text,
  `required` char(1) default 'n',
  `item_order` int(11) default '0',
  `random_order` int(11) default '0',
  PRIMARY KEY  (`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `or_os_items_checkbox`
--

LOCK TABLES `or_os_items_checkbox` WRITE;
/*!40000 ALTER TABLE `or_os_items_checkbox` DISABLE KEYS */;
/*!40000 ALTER TABLE `or_os_items_checkbox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `or_os_items_radio`
--

DROP TABLE IF EXISTS `or_os_items_radio`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `or_os_items_radio` (
  `item_id` int(20) NOT NULL default '0',
  `question_id` int(20) NOT NULL default '0',
  `item_name` varchar(50) default '',
  `text_before` mediumtext,
  `text_after` mediumtext,
  `prevalue` text,
  `required` char(1) default 'n',
  `item_order` int(11) default '0',
  `random_order` int(11) default '0',
  PRIMARY KEY  (`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `or_os_items_radio`
--

LOCK TABLES `or_os_items_radio` WRITE;
/*!40000 ALTER TABLE `or_os_items_radio` DISABLE KEYS */;
/*!40000 ALTER TABLE `or_os_items_radio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `or_os_items_select_numbers`
--

DROP TABLE IF EXISTS `or_os_items_select_numbers`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `or_os_items_select_numbers` (
  `item_id` int(20) NOT NULL default '0',
  `question_id` int(20) NOT NULL default '0',
  `item_name` varchar(50) default '',
  `text_before` mediumtext,
  `text_after` mediumtext,
  `prevalue` text,
  `required` char(1) default 'n',
  `num_start` int(11) default NULL,
  `num_end` int(11) default NULL,
  `num_step` int(11) default NULL,
  `item_order` int(11) default '0',
  `random_order` int(11) default '0',
  PRIMARY KEY  (`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `or_os_items_select_numbers`
--

LOCK TABLES `or_os_items_select_numbers` WRITE;
/*!40000 ALTER TABLE `or_os_items_select_numbers` DISABLE KEYS */;
/*!40000 ALTER TABLE `or_os_items_select_numbers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `or_os_items_select_text`
--

DROP TABLE IF EXISTS `or_os_items_select_text`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `or_os_items_select_text` (
  `item_id` int(20) NOT NULL default '0',
  `question_id` int(20) NOT NULL default '0',
  `item_name` varchar(50) default '',
  `text_before` mediumtext,
  `text_after` mediumtext,
  `prevalue` text,
  `required` char(1) default 'n',
  `item_order` int(11) default '0',
  `random_order` int(11) default '0',
  PRIMARY KEY  (`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `or_os_items_select_text`
--

LOCK TABLES `or_os_items_select_text` WRITE;
/*!40000 ALTER TABLE `or_os_items_select_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `or_os_items_select_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `or_os_items_textarea`
--

DROP TABLE IF EXISTS `or_os_items_textarea`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `or_os_items_textarea` (
  `item_id` int(20) NOT NULL default '0',
  `question_id` int(20) NOT NULL default '0',
  `item_name` varchar(50) default '',
  `text_before` mediumtext,
  `text_after` mediumtext,
  `prevalue` mediumtext,
  `required` char(1) default 'n',
  `width` int(11) default '0',
  `height` int(11) default '0',
  `item_order` int(11) default '0',
  `random_order` int(11) default '0',
  PRIMARY KEY  (`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `or_os_items_textarea`
--

LOCK TABLES `or_os_items_textarea` WRITE;
/*!40000 ALTER TABLE `or_os_items_textarea` DISABLE KEYS */;
/*!40000 ALTER TABLE `or_os_items_textarea` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `or_os_items_textline`
--

DROP TABLE IF EXISTS `or_os_items_textline`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `or_os_items_textline` (
  `item_id` int(20) NOT NULL default '0',
  `question_id` int(20) NOT NULL default '0',
  `item_name` varchar(50) default '',
  `text_before` mediumtext,
  `text_after` mediumtext,
  `size` int(11) default '0',
  `max_length` int(11) default '0',
  `prevalue` text,
  `required` char(1) default 'n',
  `item_order` int(11) default '0',
  `random_order` int(11) default '0',
  PRIMARY KEY  (`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `or_os_items_textline`
--

LOCK TABLES `or_os_items_textline` WRITE;
/*!40000 ALTER TABLE `or_os_items_textline` DISABLE KEYS */;
/*!40000 ALTER TABLE `or_os_items_textline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `or_os_page_content`
--

DROP TABLE IF EXISTS `or_os_page_content`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `or_os_page_content` (
  `page_id` int(20) NOT NULL default '0',
  `experiment_id` int(20) default '0',
  `page_name` text,
  `page_content` mediumtext,
  PRIMARY KEY  (`page_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `or_os_page_content`
--

LOCK TABLES `or_os_page_content` WRITE;
/*!40000 ALTER TABLE `or_os_page_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `or_os_page_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `or_os_playerdata`
--

DROP TABLE IF EXISTS `or_os_playerdata`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `or_os_playerdata` (
  `playerdata_id` int(30) NOT NULL auto_increment,
  `timestamp` int(30) default NULL,
  `participant_id` int(20) default NULL,
  `experiment_id` int(20) default NULL,
  `sid` text,
  `free_reg` char(1) default 'n',
  `finished` char(1) default 'n',
  `timestamp_end` int(30) default '0',
  `remote_host` text,
  `remote_addr` text,
  `user_agent` text,
  PRIMARY KEY  (`playerdata_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `or_os_playerdata`
--

LOCK TABLES `or_os_playerdata` WRITE;
/*!40000 ALTER TABLE `or_os_playerdata` DISABLE KEYS */;
/*!40000 ALTER TABLE `or_os_playerdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `or_os_pre_answers`
--

DROP TABLE IF EXISTS `or_os_pre_answers`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `or_os_pre_answers` (
  `answer_id` int(20) NOT NULL default '0',
  `question_id` int(20) NOT NULL default '0',
  `answer_shown` text,
  `answer_data` text,
  `answer_order` int(11) default '0',
  `random_order` int(11) default '0',
  PRIMARY KEY  (`answer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `or_os_pre_answers`
--

LOCK TABLES `or_os_pre_answers` WRITE;
/*!40000 ALTER TABLE `or_os_pre_answers` DISABLE KEYS */;
/*!40000 ALTER TABLE `or_os_pre_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `or_os_properties`
--

DROP TABLE IF EXISTS `or_os_properties`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `or_os_properties` (
  `experiment_id` int(20) NOT NULL default '0',
  `start_year` int(11) default NULL,
  `start_month` int(11) default NULL,
  `start_day` int(11) default NULL,
  `start_hour` int(11) default NULL,
  `start_minute` int(11) default NULL,
  `stop_year` int(11) default NULL,
  `stop_month` int(11) default NULL,
  `stop_day` int(11) default NULL,
  `stop_hour` int(11) default NULL,
  `stop_minute` int(11) default NULL,
  `style` varchar(20) default NULL,
  `window_size_x` int(11) default '0',
  `window_size_y` int(11) default '0',
  `free_registration` char(1) default 'n',
  `show_in_public` char(1) default 'n',
  `data_form` char(1) default 'n',
  `more_data` char(1) default 'n',
  `introduction` char(1) default 'n',
  `instructions` char(1) default 'n',
  `final_page` char(1) default 'n',
  `button_text` text,
  `public_description` mediumtext,
  `long_description` mediumtext,
  PRIMARY KEY  (`experiment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `or_os_properties`
--

LOCK TABLES `or_os_properties` WRITE;
/*!40000 ALTER TABLE `or_os_properties` DISABLE KEYS */;
/*!40000 ALTER TABLE `or_os_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `or_os_questions`
--

DROP TABLE IF EXISTS `or_os_questions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `or_os_questions` (
  `question_id` int(20) NOT NULL default '0',
  `experiment_id` int(20) NOT NULL default '0',
  `question_name` text,
  `question_order` int(11) default '0',
  `random_order` int(11) default '0',
  `question_type` varchar(20) default NULL,
  `question_text` mediumtext,
  PRIMARY KEY  (`question_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `or_os_questions`
--

LOCK TABLES `or_os_questions` WRITE;
/*!40000 ALTER TABLE `or_os_questions` DISABLE KEYS */;
/*!40000 ALTER TABLE `or_os_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `or_os_results`
--

DROP TABLE IF EXISTS `or_os_results`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `or_os_results` (
  `result_id` int(30) NOT NULL auto_increment,
  `timestamp` int(30) default NULL,
  `playerdata_id` int(30) default NULL,
  `participant_id` int(20) default NULL,
  `experiment_id` int(20) default NULL,
  `question_id` int(20) default NULL,
  `item_id` int(20) default NULL,
  `answer_id` int(20) default NULL,
  `answer` text,
  `answer_long` mediumtext,
  PRIMARY KEY  (`result_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `or_os_results`
--

LOCK TABLES `or_os_results` WRITE;
/*!40000 ALTER TABLE `or_os_results` DISABLE KEYS */;
/*!40000 ALTER TABLE `or_os_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `or_participants`
--

DROP TABLE IF EXISTS `or_participants`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `or_participants` (
  `participant_id` int(15) NOT NULL default '0',
  `participant_id_crypt` text,
  `creation_time` int(20) default '0',
  `subpool_id` int(15) NOT NULL default '1',
  `email` text,
  `phone_number` varchar(30) default NULL,
  `lname` text,
  `fname` text,
  `begin_of_studies` text,
  `subscriptions` varchar(255) default '',
  `field_of_studies` int(20) default '0',
  `profession` int(20) default '0',
  `address_street` text,
  `address_zip` text,
  `address_city` text,
  `address_country` text,
  `deleted` char(1) default 'n',
  `excluded` char(1) default 'n',
  `gender` char(1) default '?',
  `number_reg` int(15) default '0',
  `number_noshowup` int(15) default '0',
  `language` varchar(5) default '',
  `remarks` text,
  `rules_signed` char(1) default 'n',
  PRIMARY KEY  (`participant_id`),
  UNIQUE KEY `uindex` (`participant_id`),
  UNIQUE KEY `uindex2` (`participant_id_crypt`(100)),
  KEY `tindex` (`subpool_id`),
  KEY `tindex2` (`begin_of_studies`(4)),
  KEY `tindex5` (`field_of_studies`),
  KEY `tindex6` (`profession`),
  KEY `tindex7` (`deleted`),
  KEY `tindex8` (`excluded`),
  KEY `tindex9` (`gender`),
  KEY `tindex10` (`number_reg`),
  KEY `tindex11` (`number_noshowup`),
  KEY `tindex12` (`rules_signed`),
  KEY `tindex3` (`email`(200)),
  KEY `tindex4` (`subscriptions`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `or_participants`
--

LOCK TABLES `or_participants` WRITE;
/*!40000 ALTER TABLE `or_participants` DISABLE KEYS */;
/*!40000 ALTER TABLE `or_participants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `or_participants_log`
--

DROP TABLE IF EXISTS `or_participants_log`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `or_participants_log` (
  `log_id` int(20) NOT NULL auto_increment,
  `id` varchar(255) default NULL,
  `action` varchar(10) default NULL,
  `target` varchar(255) default '',
  `year` varchar(6) default NULL,
  `month` char(3) default NULL,
  `day` char(3) default NULL,
  `timestamp` int(20) default NULL,
  PRIMARY KEY  (`log_id`),
  UNIQUE KEY `uindex` (`log_id`),
  KEY `tindex1` (`action`),
  KEY `tindex2` (`year`,`month`)
) ENGINE=MyISAM AUTO_INCREMENT=317 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `or_participants_log`
--

LOCK TABLES `or_participants_log` WRITE;
/*!40000 ALTER TABLE `or_participants_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `or_participants_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `or_participants_os`
--

DROP TABLE IF EXISTS `or_participants_os`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `or_participants_os` (
  `participant_id` int(15) NOT NULL default '0',
  `participant_id_crypt` text,
  `creation_time` int(20) default '0',
  `subpool_id` int(15) NOT NULL default '1',
  `email` text,
  `phone_number` varchar(30) default NULL,
  `lname` text,
  `fname` text,
  `begin_of_studies` text,
  `subscriptions` varchar(255) default '',
  `field_of_studies` int(20) default '0',
  `profession` int(20) default '0',
  `address_street` text,
  `address_zip` text,
  `address_city` text,
  `address_country` text,
  `deleted` char(1) default 'n',
  `excluded` char(1) default 'n',
  `gender` char(1) default '?',
  `number_reg` int(15) default '0',
  `number_noshowup` int(15) default '0',
  `language` varchar(5) default '',
  `remarks` text,
  `rules_signed` char(1) default 'n',
  PRIMARY KEY  (`participant_id`),
  UNIQUE KEY `uindex` (`participant_id`),
  UNIQUE KEY `uindex2` (`participant_id_crypt`(100)),
  KEY `tindex` (`subpool_id`),
  KEY `tindex2` (`begin_of_studies`(4)),
  KEY `tindex5` (`field_of_studies`),
  KEY `tindex6` (`profession`),
  KEY `tindex7` (`deleted`),
  KEY `tindex8` (`excluded`),
  KEY `tindex9` (`gender`),
  KEY `tindex10` (`number_reg`),
  KEY `tindex11` (`number_noshowup`),
  KEY `tindex12` (`rules_signed`),
  KEY `tindex3` (`email`(200)),
  KEY `tindex4` (`subscriptions`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `or_participants_os`
--

LOCK TABLES `or_participants_os` WRITE;
/*!40000 ALTER TABLE `or_participants_os` DISABLE KEYS */;
/*!40000 ALTER TABLE `or_participants_os` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `or_participants_temp`
--

DROP TABLE IF EXISTS `or_participants_temp`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `or_participants_temp` (
  `participant_id` int(15) NOT NULL default '0',
  `participant_id_crypt` text,
  `creation_time` int(20) default '0',
  `subpool_id` int(15) NOT NULL default '1',
  `email` text,
  `phone_number` varchar(30) default NULL,
  `lname` text,
  `fname` text,
  `begin_of_studies` text,
  `subscriptions` varchar(255) default '',
  `field_of_studies` int(20) default '0',
  `profession` int(20) default '0',
  `address_street` text,
  `address_zip` text,
  `address_city` text,
  `address_country` text,
  `deleted` char(1) default 'n',
  `excluded` char(1) default 'n',
  `gender` char(1) default '?',
  `number_reg` int(15) default '0',
  `number_noshowup` int(15) default '0',
  `language` varchar(5) default '',
  `remarks` text,
  `rules_signed` char(1) default 'n',
  PRIMARY KEY  (`participant_id`),
  UNIQUE KEY `uindex` (`participant_id`),
  UNIQUE KEY `uindex2` (`participant_id_crypt`(100)),
  KEY `tindex` (`subpool_id`),
  KEY `tindex2` (`begin_of_studies`(4)),
  KEY `tindex5` (`field_of_studies`),
  KEY `tindex6` (`profession`),
  KEY `tindex7` (`deleted`),
  KEY `tindex8` (`excluded`),
  KEY `tindex9` (`gender`),
  KEY `tindex10` (`number_reg`),
  KEY `tindex11` (`number_noshowup`),
  KEY `tindex12` (`rules_signed`),
  KEY `tindex3` (`email`(200)),
  KEY `tindex4` (`subscriptions`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `or_participants_temp`
--

LOCK TABLES `or_participants_temp` WRITE;
/*!40000 ALTER TABLE `or_participants_temp` DISABLE KEYS */;
/*!40000 ALTER TABLE `or_participants_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `or_participate_at`
--

DROP TABLE IF EXISTS `or_participate_at`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `or_participate_at` (
  `participate_id` int(20) NOT NULL auto_increment,
  `participant_id` int(20) default NULL,
  `experiment_id` int(20) default NULL,
  `invited` char(1) default 'n',
  `registered` char(1) default 'n',
  `shownup` char(1) default 'n',
  `participated` char(1) default 'n',
  `session_id` int(20) default '0',
  PRIMARY KEY  (`participate_id`),
  UNIQUE KEY `uindex` (`participate_id`),
  UNIQUE KEY `uindex2` (`participant_id`,`experiment_id`),
  KEY `tindex` (`session_id`),
  KEY `tindex2` (`experiment_id`),
  KEY `tindex3` (`participant_id`),
  KEY `tindex4` (`session_id`,`registered`),
  KEY `tindex5` (`experiment_id`,`invited`),
  KEY `tindex6` (`experiment_id`,`shownup`),
  KEY `tindex7` (`experiment_id`,`participated`),
  KEY `tindex8` (`session_id`,`participated`)
) ENGINE=MyISAM AUTO_INCREMENT=529 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `or_participate_at`
--

LOCK TABLES `or_participate_at` WRITE;
/*!40000 ALTER TABLE `or_participate_at` DISABLE KEYS */;
/*!40000 ALTER TABLE `or_participate_at` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `or_sessions`
--

DROP TABLE IF EXISTS `or_sessions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `or_sessions` (
  `session_id` int(20) NOT NULL default '0',
  `session_id_crypt` text,
  `experiment_id` int(20) NOT NULL default '0',
  `session_start_year` int(11) default NULL,
  `session_start_month` int(11) default NULL,
  `session_start_day` int(11) default NULL,
  `session_start_hour` int(11) default NULL,
  `session_start_minute` int(11) default NULL,
  `session_duration_hour` int(20) default '0',
  `session_duration_minute` int(20) default '0',
  `session_reminder_hours` int(11) default '0',
  `send_reminder_on` varchar(255) default 'enough_participants_needed',
  `reminder_checked` char(1) default 'n',
  `reminder_sent` char(1) default 'n',
  `noshow_warning_sent` char(1) default 'n',
  `registration_end_hours` int(11) default '0',
  `reg_notice_sent` char(1) default 'n',
  `part_needed` int(10) default '0',
  `part_reserve` int(10) default '0',
  `session_remarks` text,
  `laboratory_id` varchar(255) default '',
  `session_finished` char(1) default 'n',
  PRIMARY KEY  (`session_id`),
  UNIQUE KEY `uindex` (`session_id`),
  UNIQUE KEY `uindex3` (`experiment_id`,`session_id`),
  UNIQUE KEY `uindex2` (`session_id_crypt`(100)),
  KEY `tindex` (`experiment_id`),
  KEY `tindex2` (`session_start_year`,`session_start_month`,`session_start_day`,`session_start_hour`,`session_start_minute`),
  KEY `tindex3` (`laboratory_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `or_sessions`
--

LOCK TABLES `or_sessions` WRITE;
/*!40000 ALTER TABLE `or_sessions` DISABLE KEYS */;
INSERT INTO `or_sessions` VALUES (0,NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,0,'enough_participants_needed','n','n','n',0,'n',0,0,'no session','','n');
/*!40000 ALTER TABLE `or_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `or_subpools`
--

DROP TABLE IF EXISTS `or_subpools`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `or_subpools` (
  `subpool_id` int(20) NOT NULL auto_increment,
  `subpool_name` text,
  `subpool_description` text,
  `subpool_type` char(1) default 's',
  `experiment_types` varchar(255) default '',
  `show_at_registration_page` char(1) default 'n',
  PRIMARY KEY  (`subpool_id`),
  UNIQUE KEY `uindex` (`subpool_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `or_subpools`
--

LOCK TABLES `or_subpools` WRITE;
/*!40000 ALTER TABLE `or_subpools` DISABLE KEYS */;
INSERT INTO `or_subpools` VALUES (1,'not specified','Default subpool.','s','Laboratory,Internet','y');
/*!40000 ALTER TABLE `or_subpools` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `or_uploads`
--

DROP TABLE IF EXISTS `or_uploads`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `or_uploads` (
  `upload_id` int(20) NOT NULL default '0',
  `experiment_id` int(20) NOT NULL default '0',
  `upload_type` varchar(255) default '',
  `upload_name` text,
  `upload_mimetype` varchar(255) default '',
  `upload_filesize` text,
  `upload_suffix` text,
  PRIMARY KEY  (`upload_id`),
  UNIQUE KEY `tidx` (`upload_id`),
  UNIQUE KEY `uindex` (`upload_id`),
  KEY `tindex` (`experiment_id`),
  KEY `tindex2` (`upload_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `or_uploads`
--

LOCK TABLES `or_uploads` WRITE;
/*!40000 ALTER TABLE `or_uploads` DISABLE KEYS */;
/*!40000 ALTER TABLE `or_uploads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `or_uploads_data`
--

DROP TABLE IF EXISTS `or_uploads_data`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `or_uploads_data` (
  `upload_id` int(20) NOT NULL default '0',
  `upload_data` mediumblob,
  PRIMARY KEY  (`upload_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `or_uploads_data`
--

LOCK TABLES `or_uploads_data` WRITE;
/*!40000 ALTER TABLE `or_uploads_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `or_uploads_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2010-09-27  3:47:03
