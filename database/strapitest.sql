-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 04, 2020 at 06:51 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `strapitest`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` longtext DEFAULT NULL,
  `subtitle` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `price` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `title_de` varchar(255) DEFAULT NULL,
  `subtitle_de` varchar(255) DEFAULT NULL,
  `description_de` longtext DEFAULT NULL,
  `title_es` varchar(255) DEFAULT NULL,
  `subtitle_es` varchar(255) DEFAULT NULL,
  `description_es` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `title`, `subtitle`, `description`, `price`, `created_at`, `updated_at`, `title_de`, `subtitle_de`, `description_de`, `title_es`, `subtitle_es`, `description_es`) VALUES
(1, 'test', 'test', 'test', 450, '2020-06-02 04:14:51', '2020-06-02 06:13:14', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Play cricket', 'Play cricket', 'Play cricket', 450, '2020-06-02 04:15:39', '2020-06-02 06:13:14', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'runnig', 'runnig', 'runnig', 450, '2020-06-02 04:16:04', '2020-06-02 06:13:14', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Developing', 'Developing', 'The manager to whom the position will report takes the lead in developing a job description, but other employees who are performing similar jobs can contribute to its development, too. Additionally, if the position is new and will relieve current employees of workload, they should be part of the discussion.', 450, '2020-06-02 04:23:59', '2020-06-02 06:13:14', 'Developing', 'Developing', 'Developing', 'Developing', 'Developing', 'Developing'),
(6, 'dance', 'dance', 'dance', 450, '2020-06-02 05:04:08', '2020-06-02 06:13:14', 'dance', 'dance', 'dance', 'dance', 'dance', 'dance'),
(7, 'test', 'test', 'test', 450, '2020-06-02 05:10:46', '2020-06-02 06:13:14', 'test', 'test', 'test', 'test', 'test', 'test'),
(8, 'singing', 'singing', 'singing', 450, '2020-06-02 05:15:30', '2020-06-02 06:13:14', 'singing', 'singing', 'singing', 'singing', 'singing', 'singing'),
(9, 'test', 'test', NULL, 450, '2020-06-02 05:21:29', '2020-06-02 06:13:14', NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'new activity', 'new activity', 'new activity', NULL, '2020-06-02 06:17:57', '2020-06-02 06:17:57', NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'new activity', 'new activity', NULL, NULL, '2020-06-02 06:19:33', '2020-06-02 06:19:33', NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'test', 'test', NULL, NULL, '2020-06-02 06:28:54', '2020-06-02 06:28:54', NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'final activity', 'final activity', 'final activity', NULL, '2020-06-02 06:46:49', '2020-06-02 06:46:49', NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'final activity', 'final activity', 'final activity', NULL, '2020-06-02 06:46:50', '2020-06-02 06:46:50', NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'new test', NULL, NULL, NULL, '2020-06-02 06:49:33', '2020-06-02 06:49:33', NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'test', NULL, NULL, NULL, '2020-06-02 06:50:18', '2020-06-02 06:50:18', NULL, NULL, NULL, NULL, NULL, NULL),
(17, NULL, NULL, NULL, NULL, '2020-06-02 07:03:05', '2020-06-02 07:03:05', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `core_store`
--

CREATE TABLE `core_store` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_store`
--

INSERT INTO `core_store` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(1, 'db_model_strapi_webhooks', '{\"name\":{\"type\":\"string\"},\"url\":{\"type\":\"text\"},\"headers\":{\"type\":\"json\"},\"events\":{\"type\":\"json\"},\"enabled\":{\"type\":\"boolean\"}}', 'object', NULL, NULL),
(2, 'db_model_activities', '{\"title\":{\"type\":\"text\"},\"subtitle\":{\"type\":\"text\"},\"description\":{\"type\":\"richtext\"},\"pictures\":{\"collection\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\",\"files\",\"videos\"],\"plugin\":\"upload\",\"required\":false},\"price\":{\"type\":\"float\"},\"title_de\":{\"type\":\"string\"},\"subtitle_de\":{\"type\":\"string\"},\"title_es\":{\"type\":\"string\"},\"subtitle_es\":{\"type\":\"string\"},\"description_es\":{\"type\":\"richtext\"},\"description_de\":{\"type\":\"richtext\"},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}', 'object', NULL, NULL),
(3, 'db_model_users-permissions_permission', '{\"type\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"controller\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"enabled\":{\"type\":\"boolean\",\"required\":true,\"configurable\":false},\"policy\":{\"type\":\"string\",\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"permissions\",\"plugin\":\"users-permissions\",\"configurable\":false}}', 'object', NULL, NULL),
(4, 'db_model_upload_file', '{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"collection\":\"*\",\"filter\":\"field\",\"configurable\":false},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}', 'object', NULL, NULL),
(5, 'db_model_core_store', '{\"key\":{\"type\":\"string\"},\"value\":{\"type\":\"text\"},\"type\":{\"type\":\"string\"},\"environment\":{\"type\":\"string\"},\"tag\":{\"type\":\"string\"}}', 'object', NULL, NULL),
(6, 'db_model_users-permissions_user', '{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"users\",\"plugin\":\"users-permissions\",\"configurable\":false},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}', 'object', NULL, NULL),
(7, 'db_model_users-permissions_role', '{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"collection\":\"permission\",\"via\":\"role\",\"plugin\":\"users-permissions\",\"configurable\":false,\"isVirtual\":true},\"users\":{\"collection\":\"user\",\"via\":\"role\",\"configurable\":false,\"plugin\":\"users-permissions\",\"isVirtual\":true}}', 'object', NULL, NULL),
(8, 'db_model_strapi_administrator', '{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true,\"required\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false}}', 'object', NULL, NULL),
(9, 'db_model_upload_file_morph', '{\"upload_file_id\":{\"type\":\"integer\"},\"related_id\":{\"type\":\"integer\"},\"related_type\":{\"type\":\"text\"},\"field\":{\"type\":\"text\"},\"order\":{\"type\":\"integer\"}}', 'object', NULL, NULL),
(10, 'plugin_upload_settings', '{\"sizeOptimization\":true,\"responsiveDimensions\":true}', 'object', 'development', ''),
(11, 'plugin_users-permissions_grant', '{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/instagram/callback\"},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitch/callback\",\"scope\":[\"user:read:email\"]}}', 'object', '', ''),
(12, 'plugin_content_manager_configuration_content_types::application::activities.activities', '{\"uid\":\"application::activities.activities\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}},\"subtitle\":{\"edit\":{\"label\":\"Subtitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Subtitle\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":false,\"sortable\":false}},\"pictures\":{\"edit\":{\"label\":\"Pictures\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Pictures\",\"searchable\":false,\"sortable\":false}},\"price\":{\"edit\":{\"label\":\"Price\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Price\",\"searchable\":true,\"sortable\":true}},\"title_de\":{\"edit\":{\"label\":\"Title_de\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title_de\",\"searchable\":true,\"sortable\":true}},\"subtitle_de\":{\"edit\":{\"label\":\"Subtitle_de\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Subtitle_de\",\"searchable\":true,\"sortable\":true}},\"title_es\":{\"edit\":{\"label\":\"Title_es\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title_es\",\"searchable\":true,\"sortable\":true}},\"subtitle_es\":{\"edit\":{\"label\":\"Subtitle_es\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Subtitle_es\",\"searchable\":true,\"sortable\":true}},\"description_es\":{\"edit\":{\"label\":\"Description_es\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description_es\",\"searchable\":false,\"sortable\":false}},\"description_de\":{\"edit\":{\"label\":\"Description_de\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description_de\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"subtitle\",\"pictures\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"subtitle\",\"size\":6}],[{\"name\":\"description\",\"size\":12}],[{\"name\":\"pictures\",\"size\":6},{\"name\":\"price\",\"size\":4}],[{\"name\":\"title_de\",\"size\":6},{\"name\":\"subtitle_de\",\"size\":6}],[{\"name\":\"title_es\",\"size\":6}],[{\"name\":\"subtitle_es\",\"size\":6}],[{\"name\":\"description_es\",\"size\":12}],[{\"name\":\"description_de\",\"size\":12}]],\"editRelations\":[]}}', 'object', '', ''),
(13, 'plugin_content_manager_configuration_content_types::plugins::upload.file', '{\"uid\":\"plugins::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"AlternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"AlternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"Caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"Width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"Height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"Formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"Hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"Ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"Mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"Size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"Url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"PreviewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PreviewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"Provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider_metadata\",\"searchable\":false,\"sortable\":false}},\"related\":{\"edit\":{\"label\":\"Related\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"Related\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"editRelations\":[\"related\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}]]}}', 'object', '', ''),
(14, 'plugin_content_manager_configuration_content_types::plugins::users-permissions.permission', '{\"uid\":\"plugins::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"type\",\"defaultSortBy\":\"type\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"controller\":{\"edit\":{\"label\":\"Controller\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Controller\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"enabled\":{\"edit\":{\"label\":\"Enabled\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Enabled\",\"searchable\":true,\"sortable\":true}},\"policy\":{\"edit\":{\"label\":\"Policy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Policy\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"type\",\"controller\",\"action\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"type\",\"size\":6},{\"name\":\"controller\",\"size\":6}],[{\"name\":\"action\",\"size\":6},{\"name\":\"enabled\",\"size\":4}],[{\"name\":\"policy\",\"size\":6}]]}}', 'object', '', ''),
(15, 'plugin_content_manager_configuration_content_types::plugins::users-permissions.role', '{\"uid\":\"plugins::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"type\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"editRelations\":[\"permissions\",\"users\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6}]]}}', 'object', '', ''),
(16, 'plugin_content_manager_configuration_content_types::strapi::administrator', '{\"uid\":\"strapi::administrator\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"blocked\"],\"editRelations\":[],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"blocked\",\"size\":4}]]}}', 'object', '', ''),
(17, 'plugin_content_manager_configuration_content_types::plugins::users-permissions.user', '{\"uid\":\"plugins::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"Confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4}]]}}', 'object', '', ''),
(18, 'plugin_users-permissions_email', '{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}', 'object', '', ''),
(19, 'plugin_users-permissions_advanced', '{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_confirmation_redirection\":\"/admin/admin\",\"email_reset_password\":\"/admin/admin\",\"default_role\":\"authenticated\"}', 'object', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `strapi_administrator`
--

CREATE TABLE `strapi_administrator` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `strapi_administrator`
--

INSERT INTO `strapi_administrator` (`id`, `username`, `email`, `password`, `resetPasswordToken`, `blocked`) VALUES
(1, 'testuser', 'test@gmail.com', '$2a$10$Ji40anjmR/4/3VxjdJn2peH3GO9urAQQNVUe3J3BAwb/M1KN1tLFK', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_webhooks`
--

CREATE TABLE `strapi_webhooks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext DEFAULT NULL,
  `headers` longtext DEFAULT NULL,
  `events` longtext DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `upload_file`
--

CREATE TABLE `upload_file` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `alternativeText` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `formats` longtext DEFAULT NULL,
  `hash` varchar(255) NOT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) NOT NULL,
  `size` decimal(10,2) NOT NULL,
  `url` varchar(255) NOT NULL,
  `previewUrl` varchar(255) DEFAULT NULL,
  `provider` varchar(255) NOT NULL,
  `provider_metadata` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `upload_file_morph`
--

CREATE TABLE `upload_file_morph` (
  `id` int(10) UNSIGNED NOT NULL,
  `upload_file_id` int(11) DEFAULT NULL,
  `related_id` int(11) DEFAULT NULL,
  `related_type` longtext DEFAULT NULL,
  `field` longtext DEFAULT NULL,
  `order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users-permissions_permission`
--

CREATE TABLE `users-permissions_permission` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `controller` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `policy` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users-permissions_permission`
--

INSERT INTO `users-permissions_permission` (`id`, `type`, `controller`, `action`, `enabled`, `policy`, `role`) VALUES
(1, 'application', 'activities', 'count', 0, '', 1),
(2, 'application', 'activities', 'count', 1, '', 2),
(3, 'application', 'activities', 'create', 0, '', 1),
(4, 'application', 'activities', 'create', 1, '', 2),
(5, 'application', 'activities', 'delete', 0, '', 1),
(6, 'application', 'activities', 'delete', 1, '', 2),
(7, 'application', 'activities', 'find', 0, '', 1),
(8, 'application', 'activities', 'find', 1, '', 2),
(9, 'application', 'activities', 'findone', 0, '', 1),
(10, 'application', 'activities', 'findone', 1, '', 2),
(11, 'application', 'activities', 'update', 0, '', 1),
(12, 'application', 'activities', 'update', 1, '', 2),
(13, 'content-manager', 'components', 'findcomponent', 0, '', 1),
(14, 'content-manager', 'components', 'findcomponent', 0, '', 2),
(15, 'content-manager', 'components', 'listcomponents', 0, '', 1),
(16, 'content-manager', 'components', 'listcomponents', 0, '', 2),
(17, 'content-manager', 'components', 'updatecomponent', 0, '', 1),
(18, 'content-manager', 'components', 'updatecomponent', 0, '', 2),
(19, 'content-manager', 'contentmanager', 'checkuidavailability', 0, '', 1),
(20, 'content-manager', 'contentmanager', 'checkuidavailability', 0, '', 2),
(21, 'content-manager', 'contentmanager', 'count', 0, '', 1),
(22, 'content-manager', 'contentmanager', 'count', 0, '', 2),
(23, 'content-manager', 'contentmanager', 'create', 0, '', 1),
(24, 'content-manager', 'contentmanager', 'create', 0, '', 2),
(25, 'content-manager', 'contentmanager', 'delete', 0, '', 1),
(26, 'content-manager', 'contentmanager', 'delete', 0, '', 2),
(27, 'content-manager', 'contentmanager', 'deletemany', 0, '', 1),
(28, 'content-manager', 'contentmanager', 'deletemany', 0, '', 2),
(29, 'content-manager', 'contentmanager', 'find', 0, '', 1),
(30, 'content-manager', 'contentmanager', 'find', 0, '', 2),
(31, 'content-manager', 'contentmanager', 'findone', 0, '', 1),
(32, 'content-manager', 'contentmanager', 'findone', 0, '', 2),
(33, 'content-manager', 'contentmanager', 'generateuid', 0, '', 1),
(34, 'content-manager', 'contentmanager', 'generateuid', 0, '', 2),
(35, 'content-manager', 'contentmanager', 'update', 0, '', 1),
(36, 'content-manager', 'contentmanager', 'update', 0, '', 2),
(37, 'content-manager', 'contenttypes', 'findcontenttype', 0, '', 1),
(38, 'content-manager', 'contenttypes', 'findcontenttype', 0, '', 2),
(39, 'content-manager', 'contenttypes', 'listcontenttypes', 0, '', 1),
(40, 'content-manager', 'contenttypes', 'listcontenttypes', 0, '', 2),
(41, 'content-manager', 'contenttypes', 'updatecontenttype', 0, '', 1),
(42, 'content-manager', 'contenttypes', 'updatecontenttype', 0, '', 2),
(43, 'content-type-builder', 'builder', 'getreservednames', 0, '', 1),
(44, 'content-type-builder', 'builder', 'getreservednames', 0, '', 2),
(45, 'content-type-builder', 'componentcategories', 'deletecategory', 0, '', 1),
(46, 'content-type-builder', 'componentcategories', 'deletecategory', 0, '', 2),
(47, 'content-type-builder', 'componentcategories', 'editcategory', 0, '', 1),
(48, 'content-type-builder', 'componentcategories', 'editcategory', 0, '', 2),
(49, 'content-type-builder', 'components', 'createcomponent', 0, '', 1),
(50, 'content-type-builder', 'components', 'createcomponent', 0, '', 2),
(51, 'content-type-builder', 'components', 'deletecomponent', 0, '', 1),
(52, 'content-type-builder', 'components', 'deletecomponent', 0, '', 2),
(53, 'content-type-builder', 'components', 'getcomponent', 0, '', 1),
(54, 'content-type-builder', 'components', 'getcomponent', 0, '', 2),
(55, 'content-type-builder', 'components', 'getcomponents', 0, '', 1),
(56, 'content-type-builder', 'components', 'getcomponents', 0, '', 2),
(57, 'content-type-builder', 'components', 'updatecomponent', 0, '', 1),
(58, 'content-type-builder', 'components', 'updatecomponent', 0, '', 2),
(59, 'content-type-builder', 'connections', 'getconnections', 0, '', 1),
(60, 'content-type-builder', 'connections', 'getconnections', 0, '', 2),
(61, 'content-type-builder', 'contenttypes', 'createcontenttype', 0, '', 1),
(62, 'content-type-builder', 'contenttypes', 'createcontenttype', 0, '', 2),
(63, 'content-type-builder', 'contenttypes', 'deletecontenttype', 0, '', 1),
(64, 'content-type-builder', 'contenttypes', 'deletecontenttype', 0, '', 2),
(65, 'content-type-builder', 'contenttypes', 'getcontenttype', 0, '', 1),
(66, 'content-type-builder', 'contenttypes', 'getcontenttype', 0, '', 2),
(67, 'content-type-builder', 'contenttypes', 'getcontenttypes', 0, '', 1),
(68, 'content-type-builder', 'contenttypes', 'getcontenttypes', 0, '', 2),
(69, 'content-type-builder', 'contenttypes', 'updatecontenttype', 0, '', 1),
(70, 'content-type-builder', 'contenttypes', 'updatecontenttype', 0, '', 2),
(71, 'email', 'email', 'send', 0, '', 1),
(72, 'email', 'email', 'send', 1, '', 2),
(73, 'upload', 'proxy', 'uploadproxy', 0, '', 1),
(74, 'upload', 'proxy', 'uploadproxy', 0, '', 2),
(75, 'upload', 'upload', 'count', 0, '', 1),
(76, 'upload', 'upload', 'count', 0, '', 2),
(77, 'upload', 'upload', 'destroy', 0, '', 1),
(78, 'upload', 'upload', 'destroy', 0, '', 2),
(79, 'upload', 'upload', 'find', 0, '', 1),
(80, 'upload', 'upload', 'find', 0, '', 2),
(81, 'upload', 'upload', 'findone', 0, '', 1),
(82, 'upload', 'upload', 'findone', 0, '', 2),
(83, 'upload', 'upload', 'getsettings', 0, '', 1),
(84, 'upload', 'upload', 'getsettings', 0, '', 2),
(85, 'upload', 'upload', 'search', 0, '', 1),
(86, 'upload', 'upload', 'search', 0, '', 2),
(87, 'upload', 'upload', 'updatesettings', 0, '', 1),
(88, 'upload', 'upload', 'updatesettings', 0, '', 2),
(89, 'upload', 'upload', 'upload', 0, '', 1),
(90, 'upload', 'upload', 'upload', 0, '', 2),
(91, 'users-permissions', 'auth', 'callback', 0, '', 1),
(92, 'users-permissions', 'auth', 'callback', 1, '', 2),
(93, 'users-permissions', 'auth', 'connect', 1, '', 1),
(94, 'users-permissions', 'auth', 'connect', 1, '', 2),
(95, 'users-permissions', 'auth', 'emailconfirmation', 0, '', 1),
(96, 'users-permissions', 'auth', 'emailconfirmation', 1, '', 2),
(97, 'users-permissions', 'auth', 'forgotpassword', 0, '', 1),
(98, 'users-permissions', 'auth', 'forgotpassword', 1, '', 2),
(99, 'users-permissions', 'auth', 'register', 0, '', 1),
(100, 'users-permissions', 'auth', 'register', 1, '', 2),
(101, 'users-permissions', 'auth', 'resetpassword', 0, '', 1),
(102, 'users-permissions', 'auth', 'resetpassword', 0, '', 2),
(103, 'users-permissions', 'auth', 'sendemailconfirmation', 0, '', 1),
(104, 'users-permissions', 'auth', 'sendemailconfirmation', 0, '', 2),
(105, 'users-permissions', 'user', 'count', 0, '', 1),
(106, 'users-permissions', 'user', 'count', 0, '', 2),
(107, 'users-permissions', 'user', 'create', 0, '', 1),
(108, 'users-permissions', 'user', 'create', 0, '', 2),
(109, 'users-permissions', 'user', 'destroy', 0, '', 1),
(110, 'users-permissions', 'user', 'destroy', 0, '', 2),
(111, 'users-permissions', 'user', 'destroyall', 0, '', 1),
(112, 'users-permissions', 'user', 'destroyall', 0, '', 2),
(113, 'users-permissions', 'user', 'find', 0, '', 1),
(114, 'users-permissions', 'user', 'find', 0, '', 2),
(115, 'users-permissions', 'user', 'findone', 0, '', 1),
(116, 'users-permissions', 'user', 'findone', 0, '', 2),
(117, 'users-permissions', 'user', 'me', 1, '', 1),
(118, 'users-permissions', 'user', 'me', 1, '', 2),
(119, 'users-permissions', 'user', 'update', 0, '', 1),
(120, 'users-permissions', 'user', 'update', 0, '', 2),
(121, 'users-permissions', 'userspermissions', 'createrole', 0, '', 1),
(122, 'users-permissions', 'userspermissions', 'createrole', 0, '', 2),
(123, 'users-permissions', 'userspermissions', 'deleteprovider', 0, '', 1),
(124, 'users-permissions', 'userspermissions', 'deleteprovider', 0, '', 2),
(125, 'users-permissions', 'userspermissions', 'deleterole', 0, '', 1),
(126, 'users-permissions', 'userspermissions', 'deleterole', 0, '', 2),
(127, 'users-permissions', 'userspermissions', 'getadvancedsettings', 0, '', 1),
(128, 'users-permissions', 'userspermissions', 'getadvancedsettings', 0, '', 2),
(129, 'users-permissions', 'userspermissions', 'getemailtemplate', 0, '', 1),
(130, 'users-permissions', 'userspermissions', 'getemailtemplate', 0, '', 2),
(131, 'users-permissions', 'userspermissions', 'getpermissions', 0, '', 1),
(132, 'users-permissions', 'userspermissions', 'getpermissions', 0, '', 2),
(133, 'users-permissions', 'userspermissions', 'getpolicies', 0, '', 1),
(134, 'users-permissions', 'userspermissions', 'getpolicies', 0, '', 2),
(135, 'users-permissions', 'userspermissions', 'getproviders', 0, '', 1),
(136, 'users-permissions', 'userspermissions', 'getproviders', 0, '', 2),
(137, 'users-permissions', 'userspermissions', 'getrole', 0, '', 1),
(138, 'users-permissions', 'userspermissions', 'getrole', 0, '', 2),
(139, 'users-permissions', 'userspermissions', 'getroles', 0, '', 1),
(140, 'users-permissions', 'userspermissions', 'getroles', 0, '', 2),
(141, 'users-permissions', 'userspermissions', 'getroutes', 0, '', 1),
(142, 'users-permissions', 'userspermissions', 'getroutes', 0, '', 2),
(143, 'users-permissions', 'userspermissions', 'index', 0, '', 1),
(144, 'users-permissions', 'userspermissions', 'index', 0, '', 2),
(145, 'users-permissions', 'userspermissions', 'init', 1, '', 1),
(146, 'users-permissions', 'userspermissions', 'init', 1, '', 2),
(147, 'users-permissions', 'userspermissions', 'searchusers', 0, '', 1),
(148, 'users-permissions', 'userspermissions', 'searchusers', 0, '', 2),
(149, 'users-permissions', 'userspermissions', 'updateadvancedsettings', 0, '', 1),
(150, 'users-permissions', 'userspermissions', 'updateadvancedsettings', 0, '', 2),
(151, 'users-permissions', 'userspermissions', 'updateemailtemplate', 0, '', 1),
(152, 'users-permissions', 'userspermissions', 'updateemailtemplate', 0, '', 2),
(153, 'users-permissions', 'userspermissions', 'updateproviders', 0, '', 1),
(154, 'users-permissions', 'userspermissions', 'updateproviders', 0, '', 2),
(155, 'users-permissions', 'userspermissions', 'updaterole', 0, '', 1),
(156, 'users-permissions', 'userspermissions', 'updaterole', 0, '', 2),
(161, 'application', 'activities', 'activities_price', 0, '', 1),
(162, 'application', 'activities', 'activities_price', 1, '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users-permissions_role`
--

CREATE TABLE `users-permissions_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users-permissions_role`
--

INSERT INTO `users-permissions_role` (`id`, `name`, `description`, `type`) VALUES
(1, 'Authenticated', 'Default role given to authenticated user.', 'authenticated'),
(2, 'Public', 'Default role given to unauthenticated user.', 'public');

-- --------------------------------------------------------

--
-- Table structure for table `users-permissions_user`
--

CREATE TABLE `users-permissions_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_store`
--
ALTER TABLE `core_store`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_administrator`
--
ALTER TABLE `strapi_administrator`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_administrator_username_unique` (`username`);

--
-- Indexes for table `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upload_file`
--
ALTER TABLE `upload_file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upload_file_morph`
--
ALTER TABLE `upload_file_morph`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users-permissions_permission`
--
ALTER TABLE `users-permissions_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users-permissions_role`
--
ALTER TABLE `users-permissions_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users-permissions_role_type_unique` (`type`);

--
-- Indexes for table `users-permissions_user`
--
ALTER TABLE `users-permissions_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users-permissions_user_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `core_store`
--
ALTER TABLE `core_store`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `strapi_administrator`
--
ALTER TABLE `strapi_administrator`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `upload_file`
--
ALTER TABLE `upload_file`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `upload_file_morph`
--
ALTER TABLE `upload_file_morph`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users-permissions_permission`
--
ALTER TABLE `users-permissions_permission`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `users-permissions_role`
--
ALTER TABLE `users-permissions_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users-permissions_user`
--
ALTER TABLE `users-permissions_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
