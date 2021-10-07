-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2021 at 08:45 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `datadjango`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_interface_theme`
--

CREATE TABLE `admin_interface_theme` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_visible` tinyint(1) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `logo_visible` tinyint(1) NOT NULL,
  `css_header_background_color` varchar(10) NOT NULL,
  `title_color` varchar(10) NOT NULL,
  `css_header_text_color` varchar(10) NOT NULL,
  `css_header_link_color` varchar(10) NOT NULL,
  `css_header_link_hover_color` varchar(10) NOT NULL,
  `css_module_background_color` varchar(10) NOT NULL,
  `css_module_text_color` varchar(10) NOT NULL,
  `css_module_link_color` varchar(10) NOT NULL,
  `css_module_link_hover_color` varchar(10) NOT NULL,
  `css_module_rounded_corners` tinyint(1) NOT NULL,
  `css_generic_link_color` varchar(10) NOT NULL,
  `css_generic_link_hover_color` varchar(10) NOT NULL,
  `css_save_button_background_color` varchar(10) NOT NULL,
  `css_save_button_background_hover_color` varchar(10) NOT NULL,
  `css_save_button_text_color` varchar(10) NOT NULL,
  `css_delete_button_background_color` varchar(10) NOT NULL,
  `css_delete_button_background_hover_color` varchar(10) NOT NULL,
  `css_delete_button_text_color` varchar(10) NOT NULL,
  `css` longtext NOT NULL,
  `list_filter_dropdown` tinyint(1) NOT NULL,
  `related_modal_active` tinyint(1) NOT NULL,
  `related_modal_background_color` varchar(10) NOT NULL,
  `related_modal_rounded_corners` tinyint(1) NOT NULL,
  `logo_color` varchar(10) NOT NULL,
  `recent_actions_visible` tinyint(1) NOT NULL,
  `favicon` varchar(100) NOT NULL,
  `related_modal_background_opacity` varchar(5) NOT NULL,
  `env_name` varchar(50) NOT NULL,
  `env_visible_in_header` tinyint(1) NOT NULL,
  `env_color` varchar(10) NOT NULL,
  `env_visible_in_favicon` tinyint(1) NOT NULL,
  `related_modal_close_button_visible` tinyint(1) NOT NULL,
  `language_chooser_active` tinyint(1) NOT NULL,
  `language_chooser_display` varchar(10) NOT NULL,
  `list_filter_sticky` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_interface_theme`
--

INSERT INTO `admin_interface_theme` (`id`, `name`, `active`, `title`, `title_visible`, `logo`, `logo_visible`, `css_header_background_color`, `title_color`, `css_header_text_color`, `css_header_link_color`, `css_header_link_hover_color`, `css_module_background_color`, `css_module_text_color`, `css_module_link_color`, `css_module_link_hover_color`, `css_module_rounded_corners`, `css_generic_link_color`, `css_generic_link_hover_color`, `css_save_button_background_color`, `css_save_button_background_hover_color`, `css_save_button_text_color`, `css_delete_button_background_color`, `css_delete_button_background_hover_color`, `css_delete_button_text_color`, `css`, `list_filter_dropdown`, `related_modal_active`, `related_modal_background_color`, `related_modal_rounded_corners`, `logo_color`, `recent_actions_visible`, `favicon`, `related_modal_background_opacity`, `env_name`, `env_visible_in_header`, `env_color`, `env_visible_in_favicon`, `related_modal_close_button_visible`, `language_chooser_active`, `language_chooser_display`, `list_filter_sticky`) VALUES
(1, 'Django', 1, 'Django administration', 1, '', 1, '#0C4B33', '#F5DD5D', '#44B78B', '#FFFFFF', '#C9F0DD', '#44B78B', '#FFFFFF', '#FFFFFF', '#C9F0DD', 1, '#0C3C26', '#156641', '#0C4B33', '#0C3C26', '#FFFFFF', '#BA2121', '#A41515', '#FFFFFF', '', 1, 1, '#000000', 1, '#FFFFFF', 1, '', '0.3', '', 1, '#E74C3C', 1, 1, 1, 'code', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add article', 7, 'add_article'),
(26, 'Can change article', 7, 'change_article'),
(27, 'Can delete article', 7, 'delete_article'),
(28, 'Can view article', 7, 'view_article'),
(29, 'Can add category', 8, 'add_category'),
(30, 'Can change category', 8, 'change_category'),
(31, 'Can delete category', 8, 'delete_category'),
(32, 'Can view category', 8, 'view_category'),
(33, 'Can add comment', 9, 'add_comment'),
(34, 'Can change comment', 9, 'change_comment'),
(35, 'Can delete comment', 9, 'delete_comment'),
(36, 'Can view comment', 9, 'view_comment'),
(37, 'Can add author', 10, 'add_author'),
(38, 'Can change author', 10, 'change_author'),
(39, 'Can delete author', 10, 'delete_author'),
(40, 'Can view author', 10, 'view_author'),
(41, 'Can add customer', 11, 'add_customer'),
(42, 'Can change customer', 11, 'change_customer'),
(43, 'Can delete customer', 11, 'delete_customer'),
(44, 'Can view customer', 11, 'view_customer'),
(45, 'Can add user profile', 12, 'add_userprofile'),
(46, 'Can change user profile', 12, 'change_userprofile'),
(47, 'Can delete user profile', 12, 'delete_userprofile'),
(48, 'Can view user profile', 12, 'view_userprofile'),
(49, 'Can add Theme', 13, 'add_theme'),
(50, 'Can change Theme', 13, 'change_theme'),
(51, 'Can delete Theme', 13, 'delete_theme'),
(52, 'Can view Theme', 13, 'view_theme'),
(53, 'Can add subcategory', 14, 'add_subcategory'),
(54, 'Can change subcategory', 14, 'change_subcategory'),
(55, 'Can delete subcategory', 14, 'delete_subcategory'),
(56, 'Can view subcategory', 14, 'view_subcategory'),
(57, 'Can add shop cart', 15, 'add_shopcart'),
(58, 'Can change shop cart', 15, 'change_shopcart'),
(59, 'Can delete shop cart', 15, 'delete_shopcart'),
(60, 'Can view shop cart', 15, 'view_shopcart'),
(61, 'Can add order', 16, 'add_order'),
(62, 'Can change order', 16, 'change_order'),
(63, 'Can delete order', 16, 'delete_order'),
(64, 'Can view order', 16, 'view_order'),
(65, 'Can add billing address', 17, 'add_billingaddress'),
(66, 'Can change billing address', 17, 'change_billingaddress'),
(67, 'Can delete billing address', 17, 'delete_billingaddress'),
(68, 'Can view billing address', 17, 'view_billingaddress');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$1AeMr6yVajvT6bsu12NBUR$PSTDMUdnULhZDgk03Drm3Eg7zutNtSJLpEQ8cCyleAQ=', '2021-09-26 13:07:40.205576', 1, 'admin', '', '', '', 1, 1, '2021-09-26 13:07:16.865624');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-09-26 13:16:56.282206', '1', 'Beverages', 1, '[{\"added\": {}}]', 8, 1),
(2, '2021-09-26 13:17:04.581940', '2', 'Vegetables', 1, '[{\"added\": {}}]', 8, 1),
(3, '2021-09-26 13:17:12.405254', '3', 'Fruits', 1, '[{\"added\": {}}]', 8, 1),
(4, '2021-09-26 13:17:33.835062', '1', 'Apple', 1, '[{\"added\": {}}]', 14, 1),
(5, '2021-09-26 13:17:48.255637', '2', 'Fanta', 1, '[{\"added\": {}}]', 14, 1),
(6, '2021-09-26 13:18:01.979878', '3', '7up', 1, '[{\"added\": {}}]', 14, 1),
(7, '2021-09-26 13:18:20.594985', '4', 'Tomatao', 1, '[{\"added\": {}}]', 14, 1),
(8, '2021-09-26 13:18:53.021512', '1', 'admin', 1, '[{\"added\": {}}]', 10, 1),
(9, '2021-09-26 13:19:34.535759', '1', 'Meat & Fish', 1, '[{\"added\": {}}]', 7, 1),
(10, '2021-09-26 13:20:02.591103', '2', 'Meat & Fish', 1, '[{\"added\": {}}]', 7, 1),
(11, '2021-09-26 13:20:28.041099', '3', 'vtypesetting industry.', 1, '[{\"added\": {}}]', 7, 1),
(12, '2021-09-26 13:21:01.406327', '4', 'It was popularised in the', 1, '[{\"added\": {}}]', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(13, 'admin_interface', 'theme'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'frontend', 'article'),
(10, 'frontend', 'author'),
(17, 'frontend', 'billingaddress'),
(8, 'frontend', 'category'),
(9, 'frontend', 'comment'),
(11, 'frontend', 'customer'),
(16, 'frontend', 'order'),
(15, 'frontend', 'shopcart'),
(14, 'frontend', 'subcategory'),
(12, 'frontend', 'userprofile'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-09-26 13:06:05.702410'),
(2, 'auth', '0001_initial', '2021-09-26 13:06:16.736263'),
(3, 'admin', '0001_initial', '2021-09-26 13:06:18.837083'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-09-26 13:06:18.886250'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-09-26 13:06:18.943497'),
(6, 'admin_interface', '0001_initial', '2021-09-26 13:06:19.438336'),
(7, 'admin_interface', '0002_add_related_modal', '2021-09-26 13:06:20.384610'),
(8, 'admin_interface', '0003_add_logo_color', '2021-09-26 13:06:20.729300'),
(9, 'admin_interface', '0004_rename_title_color', '2021-09-26 13:06:20.854124'),
(10, 'admin_interface', '0005_add_recent_actions_visible', '2021-09-26 13:06:21.099278'),
(11, 'admin_interface', '0006_bytes_to_str', '2021-09-26 13:06:21.181540'),
(12, 'admin_interface', '0007_add_favicon', '2021-09-26 13:06:21.350607'),
(13, 'admin_interface', '0008_change_related_modal_background_opacity_type', '2021-09-26 13:06:21.628069'),
(14, 'admin_interface', '0009_add_enviroment', '2021-09-26 13:06:21.986178'),
(15, 'admin_interface', '0010_add_localization', '2021-09-26 13:06:22.060422'),
(16, 'admin_interface', '0011_add_environment_options', '2021-09-26 13:06:22.638996'),
(17, 'admin_interface', '0012_update_verbose_names', '2021-09-26 13:06:22.722418'),
(18, 'admin_interface', '0013_add_related_modal_close_button', '2021-09-26 13:06:22.885324'),
(19, 'admin_interface', '0014_name_unique', '2021-09-26 13:06:23.183130'),
(20, 'admin_interface', '0015_add_language_chooser_active', '2021-09-26 13:06:23.485783'),
(21, 'admin_interface', '0016_add_language_chooser_display', '2021-09-26 13:06:23.908614'),
(22, 'admin_interface', '0017_change_list_filter_dropdown', '2021-09-26 13:06:23.959679'),
(23, 'admin_interface', '0018_theme_list_filter_sticky', '2021-09-26 13:06:24.162692'),
(24, 'contenttypes', '0002_remove_content_type_name', '2021-09-26 13:06:25.104209'),
(25, 'auth', '0002_alter_permission_name_max_length', '2021-09-26 13:06:26.527442'),
(26, 'auth', '0003_alter_user_email_max_length', '2021-09-26 13:06:26.632684'),
(27, 'auth', '0004_alter_user_username_opts', '2021-09-26 13:06:26.695912'),
(28, 'auth', '0005_alter_user_last_login_null', '2021-09-26 13:06:28.052551'),
(29, 'auth', '0006_require_contenttypes_0002', '2021-09-26 13:06:28.093551'),
(30, 'auth', '0007_alter_validators_add_error_messages', '2021-09-26 13:06:28.193120'),
(31, 'auth', '0008_alter_user_username_max_length', '2021-09-26 13:06:28.378309'),
(32, 'auth', '0009_alter_user_last_name_max_length', '2021-09-26 13:06:28.519970'),
(33, 'auth', '0010_alter_group_name_max_length', '2021-09-26 13:06:28.689458'),
(34, 'auth', '0011_update_proxy_permissions', '2021-09-26 13:06:28.768121'),
(35, 'auth', '0012_alter_user_first_name_max_length', '2021-09-26 13:06:29.207084'),
(36, 'frontend', '0001_initial', '2021-09-26 13:06:36.892424'),
(37, 'frontend', '0002_article_price', '2021-09-26 13:06:37.085521'),
(38, 'frontend', '0003_article_old_price', '2021-09-26 13:06:37.214380'),
(39, 'frontend', '0004_article_status', '2021-09-26 13:06:37.512022'),
(40, 'frontend', '0005_customer', '2021-09-26 13:06:39.963725'),
(41, 'frontend', '0006_auto_20210115_1127', '2021-09-26 13:06:40.056313'),
(42, 'frontend', '0007_auto_20210115_1150', '2021-09-26 13:06:42.476701'),
(43, 'frontend', '0008_article_active', '2021-09-26 13:06:42.714504'),
(44, 'frontend', '0009_auto_20210115_1508', '2021-09-26 13:06:42.764645'),
(45, 'frontend', '0010_auto_20210115_1511', '2021-09-26 13:06:42.819514'),
(46, 'frontend', '0011_remove_article_status', '2021-09-26 13:06:42.957644'),
(47, 'frontend', '0012_auto_20210115_1752', '2021-09-26 13:06:43.039343'),
(48, 'frontend', '0013_article_hits', '2021-09-26 13:06:43.567677'),
(49, 'frontend', '0014_auto_20210127_1236', '2021-09-26 13:06:43.821792'),
(50, 'frontend', '0015_myappuser', '2021-09-26 13:06:44.173540'),
(51, 'frontend', '0016_auto_20210130_2258', '2021-09-26 13:06:46.060181'),
(52, 'frontend', '0017_auto_20210130_2305', '2021-09-26 13:06:46.101349'),
(53, 'sessions', '0001_initial', '2021-09-26 13:06:47.111663'),
(54, 'frontend', '0018_auto_20210926_1915', '2021-09-26 13:15:11.458852'),
(55, 'frontend', '0019_billingaddress_order_shopcart', '2021-09-26 13:25:31.475456');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `frontend_article`
--

CREATE TABLE `frontend_article` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `body` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `posted_on` datetime(6) NOT NULL,
  `updated_on` datetime(6) NOT NULL,
  `article_author_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `old_price` decimal(8,2) DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `hits` int(11) NOT NULL,
  `stock` int(10) UNSIGNED DEFAULT NULL CHECK (`stock` >= 0),
  `subcategory_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `frontend_article`
--

INSERT INTO `frontend_article` (`id`, `title`, `body`, `image`, `posted_on`, `updated_on`, `article_author_id`, `category_id`, `price`, `old_price`, `active`, `hits`, `stock`, `subcategory_id`) VALUES
(1, 'Meat & Fish', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. v<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry.</p>', 'Bisk_Club_Fit_Milk_Crackers_.png', '2021-09-26 13:19:34.514901', '2021-09-26 13:55:05.922190', 1, 1, '170.00', '150.00', 1, 2, 100, 1),
(2, 'Meat & Fish', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. <strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. <strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. <strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry.</p>', 'Danish_Special_Combo_Pack.png', '2021-09-26 13:20:02.577368', '2021-09-26 13:57:21.711126', 1, 1, '200.00', '140.00', 1, 1, 100, 2),
(3, 'vtypesetting industry.', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. <strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry.</p>', 'broccoli.jpg', '2021-09-26 13:20:28.025131', '2021-09-26 13:55:12.528461', 1, 2, '170.00', '150.00', 1, 1, 100, 4),
(4, 'It was popularised in the', '<p>unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset she</p>', 'cashews.jpg', '2021-09-26 13:21:01.393362', '2021-09-26 13:57:26.446704', 1, 2, '700.00', '150.00', 1, 1, 10, 4);

-- --------------------------------------------------------

--
-- Table structure for table `frontend_author`
--

CREATE TABLE `frontend_author` (
  `id` int(11) NOT NULL,
  `profile_picture` varchar(100) NOT NULL,
  `details` longtext NOT NULL,
  `name_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `frontend_author`
--

INSERT INTO `frontend_author` (`id`, `profile_picture`, `details`, `name_id`) VALUES
(1, 'Bisk_Club_Orange_Cream_Biscuit_.png', 'well', 1);

-- --------------------------------------------------------

--
-- Table structure for table `frontend_billingaddress`
--

CREATE TABLE `frontend_billingaddress` (
  `id` int(11) NOT NULL,
  `address` varchar(264) NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `city` varchar(30) NOT NULL,
  `country` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `frontend_billingaddress`
--

INSERT INTO `frontend_billingaddress` (`id`, `address`, `zipcode`, `city`, `country`, `user_id`) VALUES
(1, 'Dhaka', '1213', 'Dhaka', 'BD', 1);

-- --------------------------------------------------------

--
-- Table structure for table `frontend_category`
--

CREATE TABLE `frontend_category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `frontend_category`
--

INSERT INTO `frontend_category` (`id`, `name`) VALUES
(1, 'Beverages'),
(2, 'Vegetables'),
(3, 'Fruits');

-- --------------------------------------------------------

--
-- Table structure for table `frontend_comment`
--

CREATE TABLE `frontend_comment` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `post_comment` longtext NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `frontend_customer`
--

CREATE TABLE `frontend_customer` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `notes` longtext DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `posted_on` datetime(6) NOT NULL,
  `updated_on` datetime(6) NOT NULL,
  `customer_id_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `frontend_order`
--

CREATE TABLE `frontend_order` (
  `id` int(11) NOT NULL,
  `ordered` tinyint(1) NOT NULL,
  `created` datetime(6) NOT NULL,
  `paymentId` varchar(264) DEFAULT NULL,
  `orderId` varchar(200) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `frontend_order`
--

INSERT INTO `frontend_order` (`id`, `ordered`, `created`, `paymentId`, `orderId`, `user_id`) VALUES
(1, 0, '2021-09-26 13:53:50.926868', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `frontend_order_orderitems`
--

CREATE TABLE `frontend_order_orderitems` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `shopcart_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `frontend_order_orderitems`
--

INSERT INTO `frontend_order_orderitems` (`id`, `order_id`, `shopcart_id`) VALUES
(5, 1, 5),
(6, 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `frontend_shopcart`
--

CREATE TABLE `frontend_shopcart` (
  `id` int(11) NOT NULL,
  `purchased` tinyint(1) NOT NULL,
  `quantity` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `frontend_shopcart`
--

INSERT INTO `frontend_shopcart` (`id`, `purchased`, `quantity`, `article_id`, `user_id`) VALUES
(5, 0, 1, 2, 1),
(6, 0, 1, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `frontend_subcategory`
--

CREATE TABLE `frontend_subcategory` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `frontend_subcategory`
--

INSERT INTO `frontend_subcategory` (`id`, `name`, `category_id`) VALUES
(1, 'Apple', 3),
(2, 'Fanta', 1),
(3, '7up', 1),
(4, 'Tomatao', 2);

-- --------------------------------------------------------

--
-- Table structure for table `frontend_userprofile`
--

CREATE TABLE `frontend_userprofile` (
  `id` int(11) NOT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_interface_theme`
--
ALTER TABLE `admin_interface_theme`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_interface_theme_name_30bda70f_uniq` (`name`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `frontend_article`
--
ALTER TABLE `frontend_article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `frontend_article_article_author_id_a69c1a79_fk_frontend_` (`article_author_id`),
  ADD KEY `frontend_article_category_id_65e7698a_fk_frontend_category_id` (`category_id`),
  ADD KEY `frontend_article_subcategory_id_42bd1ca3_fk_frontend_` (`subcategory_id`);

--
-- Indexes for table `frontend_author`
--
ALTER TABLE `frontend_author`
  ADD PRIMARY KEY (`id`),
  ADD KEY `frontend_author_name_id_52244a0d_fk_auth_user_id` (`name_id`);

--
-- Indexes for table `frontend_billingaddress`
--
ALTER TABLE `frontend_billingaddress`
  ADD PRIMARY KEY (`id`),
  ADD KEY `frontend_billingaddress_user_id_e69c31a1_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `frontend_category`
--
ALTER TABLE `frontend_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `frontend_comment`
--
ALTER TABLE `frontend_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `frontend_comment_post_id_3802dc2a_fk_frontend_article_id` (`post_id`);

--
-- Indexes for table `frontend_customer`
--
ALTER TABLE `frontend_customer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `frontend_customer_customer_id_id_0dcc53a9_fk_auth_user_id` (`customer_id_id`);

--
-- Indexes for table `frontend_order`
--
ALTER TABLE `frontend_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `frontend_order_user_id_d6d9e577_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `frontend_order_orderitems`
--
ALTER TABLE `frontend_order_orderitems`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `frontend_order_orderitems_order_id_shopcart_id_5bfdbb44_uniq` (`order_id`,`shopcart_id`),
  ADD KEY `frontend_order_order_shopcart_id_68aa7875_fk_frontend_` (`shopcart_id`);

--
-- Indexes for table `frontend_shopcart`
--
ALTER TABLE `frontend_shopcart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `frontend_shopcart_article_id_941f2384_fk_frontend_article_id` (`article_id`),
  ADD KEY `frontend_shopcart_user_id_b97cd64c_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `frontend_subcategory`
--
ALTER TABLE `frontend_subcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `frontend_subcategory_category_id_61ef5216_fk_frontend_` (`category_id`);

--
-- Indexes for table `frontend_userprofile`
--
ALTER TABLE `frontend_userprofile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_interface_theme`
--
ALTER TABLE `admin_interface_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `frontend_article`
--
ALTER TABLE `frontend_article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `frontend_author`
--
ALTER TABLE `frontend_author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `frontend_billingaddress`
--
ALTER TABLE `frontend_billingaddress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `frontend_category`
--
ALTER TABLE `frontend_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `frontend_comment`
--
ALTER TABLE `frontend_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `frontend_customer`
--
ALTER TABLE `frontend_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `frontend_order`
--
ALTER TABLE `frontend_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `frontend_order_orderitems`
--
ALTER TABLE `frontend_order_orderitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `frontend_shopcart`
--
ALTER TABLE `frontend_shopcart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `frontend_subcategory`
--
ALTER TABLE `frontend_subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `frontend_userprofile`
--
ALTER TABLE `frontend_userprofile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `frontend_article`
--
ALTER TABLE `frontend_article`
  ADD CONSTRAINT `frontend_article_article_author_id_a69c1a79_fk_frontend_` FOREIGN KEY (`article_author_id`) REFERENCES `frontend_author` (`id`),
  ADD CONSTRAINT `frontend_article_category_id_65e7698a_fk_frontend_category_id` FOREIGN KEY (`category_id`) REFERENCES `frontend_category` (`id`),
  ADD CONSTRAINT `frontend_article_subcategory_id_42bd1ca3_fk_frontend_` FOREIGN KEY (`subcategory_id`) REFERENCES `frontend_subcategory` (`id`);

--
-- Constraints for table `frontend_author`
--
ALTER TABLE `frontend_author`
  ADD CONSTRAINT `frontend_author_name_id_52244a0d_fk_auth_user_id` FOREIGN KEY (`name_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `frontend_billingaddress`
--
ALTER TABLE `frontend_billingaddress`
  ADD CONSTRAINT `frontend_billingaddress_user_id_e69c31a1_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `frontend_comment`
--
ALTER TABLE `frontend_comment`
  ADD CONSTRAINT `frontend_comment_post_id_3802dc2a_fk_frontend_article_id` FOREIGN KEY (`post_id`) REFERENCES `frontend_article` (`id`);

--
-- Constraints for table `frontend_customer`
--
ALTER TABLE `frontend_customer`
  ADD CONSTRAINT `frontend_customer_customer_id_id_0dcc53a9_fk_auth_user_id` FOREIGN KEY (`customer_id_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `frontend_order`
--
ALTER TABLE `frontend_order`
  ADD CONSTRAINT `frontend_order_user_id_d6d9e577_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `frontend_order_orderitems`
--
ALTER TABLE `frontend_order_orderitems`
  ADD CONSTRAINT `frontend_order_order_shopcart_id_68aa7875_fk_frontend_` FOREIGN KEY (`shopcart_id`) REFERENCES `frontend_shopcart` (`id`),
  ADD CONSTRAINT `frontend_order_orderitems_order_id_56a56841_fk_frontend_order_id` FOREIGN KEY (`order_id`) REFERENCES `frontend_order` (`id`);

--
-- Constraints for table `frontend_shopcart`
--
ALTER TABLE `frontend_shopcart`
  ADD CONSTRAINT `frontend_shopcart_article_id_941f2384_fk_frontend_article_id` FOREIGN KEY (`article_id`) REFERENCES `frontend_article` (`id`),
  ADD CONSTRAINT `frontend_shopcart_user_id_b97cd64c_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `frontend_subcategory`
--
ALTER TABLE `frontend_subcategory`
  ADD CONSTRAINT `frontend_subcategory_category_id_61ef5216_fk_frontend_` FOREIGN KEY (`category_id`) REFERENCES `frontend_category` (`id`);

--
-- Constraints for table `frontend_userprofile`
--
ALTER TABLE `frontend_userprofile`
  ADD CONSTRAINT `frontend_userprofile_user_id_75ccc3ab_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
