-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 04, 2018 at 02:25 AM
-- Server version: 5.6.34-log
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dl_vegariano`
--

-- --------------------------------------------------------

--
-- Table structure for table `dl_commentmeta`
--

CREATE TABLE `dl_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dl_comments`
--

CREATE TABLE `dl_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `dl_comments`
--

INSERT INTO `dl_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un comentarista de WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-09-04 23:50:31', '2018-09-04 23:50:31', 'Hola, esto es un comentario.\nPara empezar a moderar, editar y borrar comentarios, por favor, visita la pantalla de comentarios en el escritorio.\nLos avatares de los comentaristas provienen de <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dl_links`
--

CREATE TABLE `dl_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dl_options`
--

CREATE TABLE `dl_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `dl_options`
--

INSERT INTO `dl_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8080', 'yes'),
(2, 'home', 'http://localhost:8080', 'yes'),
(3, 'blogname', 'Quilicura | Vegariano', 'yes'),
(4, 'blogdescription', 'Un Sitio Para Nuestros Vecinos', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'elemon20@hotmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:110:{s:8:\"cards/?$\";s:25:\"index.php?post_type=cards\";s:38:\"cards/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=cards&feed=$matches[1]\";s:33:\"cards/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=cards&feed=$matches[1]\";s:25:\"cards/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=cards&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:33:\"cards/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"cards/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"cards/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"cards/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"cards/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"cards/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"cards/([^/]+)/embed/?$\";s:38:\"index.php?cards=$matches[1]&embed=true\";s:26:\"cards/([^/]+)/trackback/?$\";s:32:\"index.php?cards=$matches[1]&tb=1\";s:46:\"cards/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?cards=$matches[1]&feed=$matches[2]\";s:41:\"cards/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?cards=$matches[1]&feed=$matches[2]\";s:34:\"cards/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?cards=$matches[1]&paged=$matches[2]\";s:41:\"cards/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?cards=$matches[1]&cpage=$matches[2]\";s:30:\"cards/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?cards=$matches[1]&page=$matches[2]\";s:22:\"cards/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"cards/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"cards/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"cards/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"cards/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"cards/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'vegariano', 'yes'),
(41, 'stylesheet', 'vegariano', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '39', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'dl_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'es_ES', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:3:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}i:3;a:3:{s:5:\"title\";s:8:\"Entradas\";s:6:\"number\";i:2;s:9:\"show_date\";b:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"widget_footer\";a:0:{}s:14:\"sidebar-widget\";a:2:{i:0;s:13:\"custom_html-2\";i:1;s:14:\"recent-posts-3\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:698:\"<div class=\"embed-responsive embed-responsive-16by9 mt-4\"><iframe class=\"embed-responsive-item\" src=\"https://www.youtube.com/embed/koN1dKFz98o\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe></div>\r\n<div class=\"embed-responsive embed-responsive-16by9 mt-4\"><iframe class=\"embed-responsive-item\" src=\"https://www.youtube.com/embed/-wGV11UEweU\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe></div>\r\n<div class=\"mt-4\"><p><a href=\"https://play.google.com/store/apps/details?id=com.goodbarber.planvapp\" target=\"_blank\" rel=\"noopener\"><img src=\"http://vegetarianoshoy.org/wp-content/uploads/2018/04/Banner-Plan-V-Final.gif\" alt=\"\"></a></p>\r\n</div>\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'cron', 'a:5:{i:1538621433;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1538653833;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1538697082;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1538703031;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(113, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1536112016;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(125, 'can_compress_scripts', '0', 'no'),
(142, 'current_theme', 'Vegariano.', 'yes'),
(143, 'theme_mods_vegariano', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:11:\"header-menu\";i:3;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:5;}', 'yes'),
(144, 'theme_switched', '', 'yes'),
(189, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(309, '_transient_timeout_plugin_slugs', '1538674860', 'no'),
(310, '_transient_plugin_slugs', 'a:4:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:19:\"akismet/akismet.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:9:\"hello.php\";}', 'no'),
(311, 'recently_activated', 'a:1:{s:31:\"wp-google-maps/wpGoogleMaps.php\";i:1538585653;}', 'yes'),
(318, 'acf_version', '5.7.7', 'yes'),
(329, 'category_children', 'a:0:{}', 'yes'),
(366, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.0.4\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1538520138;s:7:\"version\";s:5:\"5.0.4\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(375, '_site_transient_timeout_browser_c91c259fd5f3fa8303f885fec872baad', '1539142971', 'no'),
(376, '_site_transient_browser_c91c259fd5f3fa8303f885fec872baad', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"69.0.3497.100\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(405, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"es_ES\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-4.9.8.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1538611364;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}', 'no'),
(409, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1538611368;s:7:\"checked\";a:4:{s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.7\";s:13:\"twentysixteen\";s:3:\"1.5\";s:9:\"vegariano\";s:6:\"1.0.0.\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(410, 'WPGMZA_OTHER_SETTINGS', 'a:19:{s:30:\"wpgmza_settings_map_streetview\";s:3:\"yes\";s:24:\"wpgmza_settings_map_zoom\";s:3:\"yes\";s:23:\"wpgmza_settings_map_pan\";s:3:\"yes\";s:24:\"wpgmza_settings_map_type\";s:3:\"yes\";s:27:\"wpgmza_settings_marker_pull\";s:1:\"0\";s:18:\"wpgmza_maps_engine\";s:11:\"open-layers\";s:30:\"wpgmza_maps_engine_dialog_done\";b:1;s:31:\"privacy_policy_notice_dismissed\";b:1;s:24:\"wpgmza_gdpr_company_name\";s:21:\"Quilicura | Vegariano\";s:29:\"wpgmza_gdpr_retention_purpose\";s:81:\"displaying map tiles, geocoding addresses and calculating and display directions.\";s:32:\"wpgmza_gdpr_notice_override_text\";s:0:\"\";s:32:\"wpgmza_load_engine_api_condition\";s:14:\"where-required\";s:15:\"use_fontawesome\";s:3:\"4.*\";s:34:\"wpgmza_settings_map_open_marker_by\";s:1:\"1\";s:18:\"wpgmza_api_version\";s:5:\"3.exp\";s:17:\"wpgmza_custom_css\";s:0:\"\";s:16:\"wpgmza_custom_js\";s:0:\"\";s:28:\"wpgmza_settings_access_level\";s:14:\"manage_options\";s:26:\"wpgmza_store_locator_radii\";s:31:\"1,5,10,25,50,75,100,150,200,300\";}', 'yes'),
(411, 'wpgmza_temp_api', 'AIzaSyChPphumyabdfggISDNBuGOlGVBgEvZnGE', 'yes'),
(412, 'wpgmza_xml_location', '{uploads_dir}/wp-google-maps/', 'yes'),
(413, 'wpgmza_xml_url', '{uploads_url}/wp-google-maps/', 'yes'),
(414, 'wpgmza_db_version', '7.10.37', 'yes'),
(415, 'wpgmaps_current_version', '7.10.37', 'yes'),
(416, 'WPGM_V6_FIRST_TIME', '1', 'yes'),
(417, 'widget_wpgmza_map_widget', 'a:2:{i:2;a:2:{s:9:\"selection\";s:1:\"1\";s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(418, 'WPGMZA_FIRST_TIME', '7.10.37', 'yes'),
(419, 'wpgmza_stats', 'a:4:{s:15:\"list_maps_basic\";a:3:{s:5:\"views\";i:9;s:13:\"last_accessed\";s:19:\"2018-10-03 16:54:01\";s:14:\"first_accessed\";s:19:\"2018-10-03 16:10:17\";}s:9:\"dashboard\";a:3:{s:5:\"views\";i:7;s:13:\"last_accessed\";s:19:\"2018-10-03 16:51:33\";s:14:\"first_accessed\";s:19:\"2018-10-03 16:14:04\";}s:14:\"settings_basic\";a:3:{s:5:\"views\";i:3;s:13:\"last_accessed\";s:19:\"2018-10-03 16:46:43\";s:14:\"first_accessed\";s:19:\"2018-10-03 16:24:24\";}s:13:\"support_basic\";a:3:{s:5:\"views\";i:1;s:13:\"last_accessed\";s:19:\"2018-10-03 16:24:34\";s:14:\"first_accessed\";s:19:\"2018-10-03 16:24:34\";}}', 'yes'),
(420, 'wpgmza_google_maps_api_key', 'AIzaSyBJwhGfcaYrCG_vNmICCmAWUScHR43TM_I', 'yes'),
(421, 'WPGMZA_SETTINGS', 'a:10:{s:24:\"map_default_starting_lat\";s:19:\"-33.367358107149805\";s:24:\"map_default_starting_lng\";s:17:\"-70.7258573971003\";s:18:\"map_default_height\";s:3:\"400\";s:17:\"map_default_width\";s:3:\"100\";s:16:\"map_default_zoom\";i:16;s:20:\"map_default_max_zoom\";i:1;s:16:\"map_default_type\";i:4;s:21:\"map_default_alignment\";i:1;s:22:\"map_default_width_type\";s:2:\"\\%\";s:23:\"map_default_height_type\";s:2:\"px\";}', 'yes'),
(423, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1538611368;s:7:\"checked\";a:4:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.7.7\";s:19:\"akismet/akismet.php\";s:5:\"4.0.8\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.0.4\";s:9:\"hello.php\";s:3:\"1.7\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.7.7\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.7.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.0.4\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.0.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(437, '_site_transient_timeout_theme_roots', '1538613167', 'no'),
(438, '_site_transient_theme_roots', 'a:4:{s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:9:\"vegariano\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `dl_postmeta`
--

CREATE TABLE `dl_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `dl_postmeta`
--

INSERT INTO `dl_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 2, '_edit_lock', '1536105627:1'),
(4, 5, '_wp_attached_file', '2018/09/logo-vegariano6.png'),
(5, 5, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:189;s:6:\"height\";i:189;s:4:\"file\";s:27:\"2018/09/logo-vegariano6.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"logo-vegariano6-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(6, 6, '_wp_trash_meta_status', 'publish'),
(7, 6, '_wp_trash_meta_time', '1536115564'),
(8, 7, '_wp_trash_meta_status', 'publish'),
(9, 7, '_wp_trash_meta_time', '1536620574'),
(10, 8, '_wp_trash_meta_status', 'publish'),
(11, 8, '_wp_trash_meta_time', '1536620598'),
(30, 11, '_edit_last', '1'),
(31, 11, '_edit_lock', '1536716935:1'),
(32, 13, '_edit_last', '1'),
(33, 13, '_edit_lock', '1536715805:1'),
(34, 15, '_edit_last', '1'),
(35, 15, '_edit_lock', '1536715986:1'),
(36, 18, '_edit_last', '1'),
(37, 18, '_edit_lock', '1536716038:1'),
(38, 20, '_edit_last', '1'),
(39, 20, '_edit_lock', '1538588306:1'),
(40, 22, '_menu_item_type', 'post_type'),
(41, 22, '_menu_item_menu_item_parent', '0'),
(42, 22, '_menu_item_object_id', '20'),
(43, 22, '_menu_item_object', 'page'),
(44, 22, '_menu_item_target', ''),
(45, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(46, 22, '_menu_item_xfn', ''),
(47, 22, '_menu_item_url', ''),
(49, 23, '_menu_item_type', 'post_type'),
(50, 23, '_menu_item_menu_item_parent', '0'),
(51, 23, '_menu_item_object_id', '18'),
(52, 23, '_menu_item_object', 'page'),
(53, 23, '_menu_item_target', ''),
(54, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(55, 23, '_menu_item_xfn', ''),
(56, 23, '_menu_item_url', ''),
(67, 25, '_menu_item_type', 'post_type'),
(68, 25, '_menu_item_menu_item_parent', '0'),
(69, 25, '_menu_item_object_id', '13'),
(70, 25, '_menu_item_object', 'page'),
(71, 25, '_menu_item_target', ''),
(72, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(73, 25, '_menu_item_xfn', ''),
(74, 25, '_menu_item_url', ''),
(76, 26, '_menu_item_type', 'post_type'),
(77, 26, '_menu_item_menu_item_parent', '0'),
(78, 26, '_menu_item_object_id', '11'),
(79, 26, '_menu_item_object', 'page'),
(80, 26, '_menu_item_target', ''),
(81, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(82, 26, '_menu_item_xfn', ''),
(83, 26, '_menu_item_url', ''),
(93, 31, '_wp_trash_meta_status', 'publish'),
(94, 31, '_wp_trash_meta_time', '1537914519'),
(95, 33, '_menu_item_type', 'custom'),
(96, 33, '_menu_item_menu_item_parent', '34'),
(97, 33, '_menu_item_object_id', '33'),
(98, 33, '_menu_item_object', 'custom'),
(99, 33, '_menu_item_target', ''),
(100, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(101, 33, '_menu_item_xfn', ''),
(102, 33, '_menu_item_url', '#'),
(104, 34, '_menu_item_type', 'post_type'),
(105, 34, '_menu_item_menu_item_parent', '0'),
(106, 34, '_menu_item_object_id', '15'),
(107, 34, '_menu_item_object', 'page'),
(108, 34, '_menu_item_target', ''),
(109, 34, '_menu_item_classes', 'a:1:{i:0;s:8:\"dropdown\";}'),
(110, 34, '_menu_item_xfn', ''),
(111, 34, '_menu_item_url', ''),
(113, 35, '_menu_item_type', 'custom'),
(114, 35, '_menu_item_menu_item_parent', '34'),
(115, 35, '_menu_item_object_id', '35'),
(116, 35, '_menu_item_object', 'custom'),
(117, 35, '_menu_item_target', ''),
(118, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(119, 35, '_menu_item_xfn', ''),
(120, 35, '_menu_item_url', '#'),
(121, 36, '_wp_attached_file', '2018/09/favicon.ico'),
(122, 37, '_edit_lock', '1538166546:1'),
(123, 37, '_wp_trash_meta_status', 'publish'),
(124, 37, '_wp_trash_meta_time', '1538166550'),
(125, 38, '_wp_attached_file', '2018/09/favicon-16x16.png'),
(126, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:16;s:6:\"height\";i:16;s:4:\"file\";s:25:\"2018/09/favicon-16x16.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(127, 39, '_wp_attached_file', '2018/09/logo-vegariano6-1.png'),
(128, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:189;s:6:\"height\";i:189;s:4:\"file\";s:29:\"2018/09/logo-vegariano6-1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"logo-vegariano6-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(129, 40, '_wp_trash_meta_status', 'publish'),
(130, 40, '_wp_trash_meta_time', '1538200032'),
(131, 41, '_edit_lock', '1538433947:1'),
(132, 41, '_wp_trash_meta_status', 'publish'),
(133, 41, '_wp_trash_meta_time', '1538433954'),
(134, 43, '_edit_last', '1'),
(135, 43, '_edit_lock', '1538538893:1'),
(136, 50, '_edit_last', '1'),
(137, 50, '_edit_lock', '1538537919:1'),
(138, 51, '_wp_attached_file', '2018/10/legumbres.jpg'),
(139, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:622;s:4:\"file\";s:21:\"2018/10/legumbres.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"legumbres-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"legumbres-300x194.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:194;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"legumbres-768x498.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:498;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"destacada\";a:4:{s:4:\"file\";s:21:\"legumbres-847x400.jpg\";s:5:\"width\";i:847;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:21:\"legumbres-420x420.jpg\";s:5:\"width\";i:420;s:6:\"height\";i:420;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"post-custom-size\";a:4:{s:4:\"file\";s:21:\"legumbres-268x177.jpg\";s:5:\"width\";i:268;s:6:\"height\";i:177;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"custom-size-blog\";a:4:{s:4:\"file\";s:21:\"legumbres-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(140, 52, '_wp_attached_file', '2018/10/lentejas.jpg'),
(141, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:622;s:4:\"file\";s:20:\"2018/10/lentejas.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"lentejas-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"lentejas-300x194.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:194;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"lentejas-768x498.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:498;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"destacada\";a:4:{s:4:\"file\";s:20:\"lentejas-847x400.jpg\";s:5:\"width\";i:847;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:20:\"lentejas-420x420.jpg\";s:5:\"width\";i:420;s:6:\"height\";i:420;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"post-custom-size\";a:4:{s:4:\"file\";s:20:\"lentejas-268x177.jpg\";s:5:\"width\";i:268;s:6:\"height\";i:177;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"custom-size-blog\";a:4:{s:4:\"file\";s:20:\"lentejas-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(142, 52, '_wp_attachment_image_alt', 'lentejas'),
(144, 50, 'imagen_1', ''),
(145, 50, '_imagen_1', 'field_5bb3a3467534e'),
(146, 50, 'titulo_1', 'Sabias Que...'),
(147, 50, '_titulo_1', 'field_5bb2b51f3b350'),
(148, 50, 'descripcion_1', 'Las lentejas estimulan el buen funcionamiento del sistema nervioso, combaten la retencioÌn de liÌquidos y ayudan a prevenir la anemia.'),
(149, 50, '_descripcion_1', 'field_5bb2b6f759924'),
(150, 50, 'enlace_1', 'Leer mÃ¡s...'),
(151, 50, '_enlace_1', 'field_5bb2bec4cfb69'),
(153, 54, '_edit_last', '1'),
(154, 54, '_edit_lock', '1538493601:1'),
(155, 54, 'titulo_1', ''),
(156, 54, '_titulo_1', 'field_5bb2b51f3b350'),
(157, 54, 'descripcion_1', 'Hay muchos alimentos que no son de origen animal que contienen calcio, y otras propiedades que benefician el organismo. Â¡No harÃ¡ falta suplementos de calcio!'),
(158, 54, '_descripcion_1', 'field_5bb2b6f759924'),
(159, 54, 'enlace_1', 'Leer mÃ¡s...'),
(160, 54, '_enlace_1', 'field_5bb2bec4cfb69'),
(161, 55, '_edit_last', '1'),
(162, 55, '_edit_lock', '1538502644:1'),
(163, 54, 'descripcion_2', 'Hay muchos alimentos que no son de origen animal que contienen calcio, y otras propiedades que benefician el organismo. Â¡No harÃ¡ falta suplementos de calcio!'),
(164, 54, '_descripcion_2', 'field_5bb3880bdae5e'),
(165, 54, 'enlace_2', 'Leer mÃ¡s...'),
(166, 54, '_enlace_2', 'field_5bb38867dae5f'),
(167, 50, '_wp_old_slug', 'lentejas'),
(168, 50, 'descripcion_2', 'Hay muchos alimentos que no son de origen animal que contienen calcio, y otras propiedades que benefician el organismo. Â¡No harÃ¡ falta suplementos de calcio!'),
(169, 50, '_descripcion_2', 'field_5bb3880bdae5e'),
(170, 50, 'enlace_2', 'Leer mÃ¡s...'),
(171, 50, '_enlace_2', 'field_5bb38867dae5f'),
(172, 54, '_wp_old_slug', 'tarjeta-2'),
(173, 58, '_edit_last', '1'),
(174, 58, '_edit_lock', '1538497796:1'),
(175, 59, '_edit_last', '1'),
(176, 59, '_edit_lock', '1538502667:1'),
(177, 62, '_wp_attached_file', '2018/10/chia.jpg'),
(178, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:622;s:4:\"file\";s:16:\"2018/10/chia.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"chia-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"chia-300x194.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:194;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"chia-768x498.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:498;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"destacada\";a:4:{s:4:\"file\";s:16:\"chia-847x400.jpg\";s:5:\"width\";i:847;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:16:\"chia-420x420.jpg\";s:5:\"width\";i:420;s:6:\"height\";i:420;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"post-custom-size\";a:4:{s:4:\"file\";s:16:\"chia-268x177.jpg\";s:5:\"width\";i:268;s:6:\"height\";i:177;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"custom-size-blog\";a:4:{s:4:\"file\";s:16:\"chia-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(179, 62, '_wp_attachment_image_alt', 'chia'),
(180, 58, '_thumbnail_id', '62'),
(181, 58, 'descripcion_3', 'La Chia tiene mÃ¡s calcio que la leche, nos aporta el triple de antioxidantes y contiene las mismas fibras que la avena y aporta 2 veces mÃ¡s potasio que el plÃ¡tano.'),
(182, 58, '_descripcion_3', 'field_5bb39c5776932'),
(183, 58, 'enlace_3', 'Leer mÃ¡s...'),
(184, 58, '_enlace_3', 'field_5bb38dd483ef7'),
(185, 54, '_wp_trash_meta_status', 'publish'),
(186, 54, '_wp_trash_meta_time', '1538498133'),
(187, 54, '_wp_desired_post_slug', 'tarjeta2'),
(188, 58, '_wp_trash_meta_status', 'publish'),
(189, 58, '_wp_trash_meta_time', '1538498137'),
(190, 58, '_wp_desired_post_slug', 'tarjeta3'),
(191, 66, '_edit_lock', '1538502684:1'),
(192, 66, '_edit_last', '1'),
(193, 71, '_edit_lock', '1538502704:1'),
(194, 71, '_edit_last', '1'),
(195, 76, '_edit_lock', '1538502722:1'),
(196, 76, '_edit_last', '1'),
(197, 79, '_edit_lock', '1538502738:1'),
(198, 79, '_edit_last', '1'),
(199, 82, '_edit_last', '1'),
(200, 82, '_edit_lock', '1538503504:1'),
(201, 50, 'imagen_3', '84'),
(202, 50, '_imagen_3', 'field_5bb3a3d7b23bd'),
(203, 50, 'titulo_3', 'Ejercicio y una dieta balanceada.'),
(204, 50, '_titulo_3', 'field_5bb3a3bfb23bc'),
(205, 50, 'descripcion_3', 'â€œlas dietas vegetarianas adecuadamente  planificadas, incluidas las dietas totalmente  vegetarianas o veganas, son saludables, nutricionalmente adecuadas,  y pueden proporcionar  beneficios para la saludâ€.'),
(206, 50, '_descripcion_3', 'field_5bb39c5776932'),
(207, 50, 'enlace_3', 'Leer mÃ¡s...'),
(208, 50, '_enlace_3', 'field_5bb38dd483ef7'),
(209, 50, 'imagen_4', '85'),
(210, 50, '_imagen_4', 'field_5bb3a542ea175'),
(211, 50, 'titulo_4', 'Germinados.'),
(212, 50, '_titulo_4', 'field_5bb3a542ea55d'),
(213, 50, 'descripcion_4', 'Se imaginan un multivitamÃ­nico 100% Natural, EcolÃ³gico y Medicinal, bueno eso son los germinados son pequeÃ±as plantas en su primera etapa de crecimiento tienen un inmenso poder nutricional, es un alimento vivo que incrementa sus propiedades hasta el mismo minuto de su consumo.'),
(214, 50, '_descripcion_4', 'field_5bb3a542ea945'),
(215, 50, 'enlace_4', 'Leer mÃ¡s...'),
(216, 50, '_enlace_4', 'field_5bb3a542ead2d'),
(217, 50, 'imagen_5', ''),
(218, 50, '_imagen_5', 'field_5bb3a5893a121'),
(219, 50, 'titulo_5', ''),
(220, 50, '_titulo_5', 'field_5bb3a5893a509'),
(221, 50, 'descripcion_5', ''),
(222, 50, '_descripcion_5', 'field_5bb3a5893a8f1'),
(223, 50, 'enlace_5', ''),
(224, 50, '_enlace_5', 'field_5bb3a5893acd9'),
(225, 50, 'imagen_8', ''),
(226, 50, '_imagen_8', 'field_5bb3a65124c37'),
(227, 84, '_wp_attached_file', '2018/10/pesas.jpg'),
(228, 84, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:426;s:4:\"file\";s:17:\"2018/10/pesas.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"pesas-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"pesas-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"destacada\";a:4:{s:4:\"file\";s:17:\"pesas-640x400.jpg\";s:5:\"width\";i:640;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:17:\"pesas-420x420.jpg\";s:5:\"width\";i:420;s:6:\"height\";i:420;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"post-custom-size\";a:4:{s:4:\"file\";s:17:\"pesas-268x177.jpg\";s:5:\"width\";i:268;s:6:\"height\";i:177;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"custom-size-blog\";a:4:{s:4:\"file\";s:17:\"pesas-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:2:\"14\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:10:\"NIKON D750\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"98\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:3:\"0.1\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(229, 85, '_wp_attached_file', '2018/10/germinados.jpg'),
(230, 85, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:426;s:4:\"file\";s:22:\"2018/10/germinados.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"germinados-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"germinados-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"destacada\";a:4:{s:4:\"file\";s:22:\"germinados-640x400.jpg\";s:5:\"width\";i:640;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:22:\"germinados-420x420.jpg\";s:5:\"width\";i:420;s:6:\"height\";i:420;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"post-custom-size\";a:4:{s:4:\"file\";s:22:\"germinados-268x177.jpg\";s:5:\"width\";i:268;s:6:\"height\";i:177;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"custom-size-blog\";a:4:{s:4:\"file\";s:22:\"germinados-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"5.6\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:11:\"NIKON D7200\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"140\";s:3:\"iso\";s:3:\"250\";s:13:\"shutter_speed\";s:17:\"0.016666666666667\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(231, 85, '_wp_attachment_image_alt', 'germinados'),
(232, 50, 'descripcion_6', 'â€œNada beneficiarÃ¡ tanto la salud humana e incrementarÃ¡ las posibilidades de supervivencia de la vida sobre la Tierra, como la evoluciÃ³n hacia una dieta vegetarianaâ€œ.'),
(233, 50, '_descripcion_6', 'field_5bb3a5dcdd592'),
(234, 50, 'enlace_6', 'Leer mÃ¡s...'),
(235, 50, '_enlace_6', 'field_5bb3a5dcdd97b'),
(236, 50, 'descripcion_7', ''),
(237, 50, '_descripcion_7', 'field_5bb3a608e1a00'),
(238, 50, 'enlace_7', ''),
(239, 50, '_enlace_7', 'field_5bb3a608e1de8'),
(240, 87, '_edit_last', '1'),
(241, 87, 'imagen_3', ''),
(242, 87, '_imagen_3', 'field_5bb3a3d7b23bd'),
(243, 87, 'titulo_3', 'hola'),
(244, 87, '_titulo_3', 'field_5bb3a3bfb23bc'),
(245, 87, 'descripcion_3', '<?php if ( is_active_sidebar( \'sidebar-widget\' ) ) { ?>     <?php dynamic_sidebar( \'sidebar-widget\' ); ?> <?php }; ?>'),
(246, 87, '_descripcion_3', 'field_5bb39c5776932'),
(247, 87, 'enlace_3', ''),
(248, 87, '_enlace_3', 'field_5bb38dd483ef7'),
(249, 87, 'imagen_4', ''),
(250, 87, '_imagen_4', 'field_5bb3a542ea175'),
(251, 87, 'titulo_4', ''),
(252, 87, '_titulo_4', 'field_5bb3a542ea55d'),
(253, 87, 'descripcion_4', ''),
(254, 87, '_descripcion_4', 'field_5bb3a542ea945'),
(255, 87, 'enlace_4', ''),
(256, 87, '_enlace_4', 'field_5bb3a542ead2d'),
(257, 87, 'imagen_5', ''),
(258, 87, '_imagen_5', 'field_5bb3a5893a121'),
(259, 87, 'titulo_5', ''),
(260, 87, '_titulo_5', 'field_5bb3a5893a509'),
(261, 87, 'descripcion_5', ''),
(262, 87, '_descripcion_5', 'field_5bb3a5893a8f1'),
(263, 87, 'enlace_5', ''),
(264, 87, '_enlace_5', 'field_5bb3a5893acd9'),
(265, 87, '_edit_lock', '1538511043:1'),
(266, 88, '_edit_last', '1'),
(267, 88, 'imagen_3', ''),
(268, 88, '_imagen_3', 'field_5bb3a3d7b23bd'),
(269, 88, 'titulo_3', ''),
(270, 88, '_titulo_3', 'field_5bb3a3bfb23bc'),
(271, 88, 'descripcion_3', ''),
(272, 88, '_descripcion_3', 'field_5bb39c5776932'),
(273, 88, 'enlace_3', ''),
(274, 88, '_enlace_3', 'field_5bb38dd483ef7'),
(275, 88, 'imagen_4', ''),
(276, 88, '_imagen_4', 'field_5bb3a542ea175'),
(277, 88, 'titulo_4', ''),
(278, 88, '_titulo_4', 'field_5bb3a542ea55d'),
(279, 88, 'descripcion_4', ''),
(280, 88, '_descripcion_4', 'field_5bb3a542ea945'),
(281, 88, 'enlace_4', ''),
(282, 88, '_enlace_4', 'field_5bb3a542ead2d'),
(283, 88, 'imagen_5', ''),
(284, 88, '_imagen_5', 'field_5bb3a5893a121'),
(285, 88, 'titulo_5', ''),
(286, 88, '_titulo_5', 'field_5bb3a5893a509'),
(287, 88, 'descripcion_5', ''),
(288, 88, '_descripcion_5', 'field_5bb3a5893a8f1'),
(289, 88, 'enlace_5', ''),
(290, 88, '_enlace_5', 'field_5bb3a5893acd9'),
(291, 88, '_edit_lock', '1538507900:1'),
(292, 89, '_edit_last', '1'),
(293, 89, 'imagen_3', ''),
(294, 89, '_imagen_3', 'field_5bb3a3d7b23bd'),
(295, 89, 'titulo_3', ''),
(296, 89, '_titulo_3', 'field_5bb3a3bfb23bc'),
(297, 89, 'descripcion_3', ''),
(298, 89, '_descripcion_3', 'field_5bb39c5776932'),
(299, 89, 'enlace_3', ''),
(300, 89, '_enlace_3', 'field_5bb38dd483ef7'),
(301, 89, 'imagen_4', ''),
(302, 89, '_imagen_4', 'field_5bb3a542ea175'),
(303, 89, 'titulo_4', ''),
(304, 89, '_titulo_4', 'field_5bb3a542ea55d'),
(305, 89, 'descripcion_4', ''),
(306, 89, '_descripcion_4', 'field_5bb3a542ea945'),
(307, 89, 'enlace_4', ''),
(308, 89, '_enlace_4', 'field_5bb3a542ead2d'),
(309, 89, 'imagen_5', ''),
(310, 89, '_imagen_5', 'field_5bb3a5893a121'),
(311, 89, 'titulo_5', ''),
(312, 89, '_titulo_5', 'field_5bb3a5893a509'),
(313, 89, 'descripcion_5', ''),
(314, 89, '_descripcion_5', 'field_5bb3a5893a8f1'),
(315, 89, 'enlace_5', ''),
(316, 89, '_enlace_5', 'field_5bb3a5893acd9'),
(317, 89, '_edit_lock', '1538510781:1'),
(318, 90, '_edit_last', '1'),
(319, 90, '_edit_lock', '1538507652:1'),
(320, 90, 'imagen_3', ''),
(321, 90, '_imagen_3', 'field_5bb3a3d7b23bd'),
(322, 90, 'titulo_3', ''),
(323, 90, '_titulo_3', 'field_5bb3a3bfb23bc'),
(324, 90, 'descripcion_3', ''),
(325, 90, '_descripcion_3', 'field_5bb39c5776932'),
(326, 90, 'enlace_3', ''),
(327, 90, '_enlace_3', 'field_5bb38dd483ef7'),
(328, 90, 'imagen_4', ''),
(329, 90, '_imagen_4', 'field_5bb3a542ea175'),
(330, 90, 'titulo_4', ''),
(331, 90, '_titulo_4', 'field_5bb3a542ea55d'),
(332, 90, 'descripcion_4', ''),
(333, 90, '_descripcion_4', 'field_5bb3a542ea945'),
(334, 90, 'enlace_4', ''),
(335, 90, '_enlace_4', 'field_5bb3a542ead2d'),
(336, 90, 'imagen_5', ''),
(337, 90, '_imagen_5', 'field_5bb3a5893a121'),
(338, 90, 'titulo_5', ''),
(339, 90, '_titulo_5', 'field_5bb3a5893a509'),
(340, 90, 'descripcion_5', ''),
(341, 90, '_descripcion_5', 'field_5bb3a5893a8f1'),
(342, 90, 'enlace_5', ''),
(343, 90, '_enlace_5', 'field_5bb3a5893acd9'),
(344, 91, '_edit_last', '1'),
(345, 91, 'imagen_3', ''),
(346, 91, '_imagen_3', 'field_5bb3a3d7b23bd'),
(347, 91, 'titulo_3', ''),
(348, 91, '_titulo_3', 'field_5bb3a3bfb23bc'),
(349, 91, 'descripcion_3', ''),
(350, 91, '_descripcion_3', 'field_5bb39c5776932'),
(351, 91, 'enlace_3', ''),
(352, 91, '_enlace_3', 'field_5bb38dd483ef7'),
(353, 91, 'imagen_4', ''),
(354, 91, '_imagen_4', 'field_5bb3a542ea175'),
(355, 91, 'titulo_4', ''),
(356, 91, '_titulo_4', 'field_5bb3a542ea55d'),
(357, 91, 'descripcion_4', ''),
(358, 91, '_descripcion_4', 'field_5bb3a542ea945'),
(359, 91, 'enlace_4', ''),
(360, 91, '_enlace_4', 'field_5bb3a542ead2d'),
(361, 91, 'imagen_5', ''),
(362, 91, '_imagen_5', 'field_5bb3a5893a121'),
(363, 91, 'titulo_5', ''),
(364, 91, '_titulo_5', 'field_5bb3a5893a509'),
(365, 91, 'descripcion_5', ''),
(366, 91, '_descripcion_5', 'field_5bb3a5893a8f1'),
(367, 91, 'enlace_5', ''),
(368, 91, '_enlace_5', 'field_5bb3a5893acd9'),
(369, 91, '_edit_lock', '1538506483:1'),
(370, 92, '_edit_last', '1'),
(371, 92, 'imagen_3', ''),
(372, 92, '_imagen_3', 'field_5bb3a3d7b23bd'),
(373, 92, 'titulo_3', ''),
(374, 92, '_titulo_3', 'field_5bb3a3bfb23bc'),
(375, 92, 'descripcion_3', ''),
(376, 92, '_descripcion_3', 'field_5bb39c5776932'),
(377, 92, 'enlace_3', ''),
(378, 92, '_enlace_3', 'field_5bb38dd483ef7'),
(379, 92, 'imagen_4', ''),
(380, 92, '_imagen_4', 'field_5bb3a542ea175'),
(381, 92, 'titulo_4', ''),
(382, 92, '_titulo_4', 'field_5bb3a542ea55d'),
(383, 92, 'descripcion_4', ''),
(384, 92, '_descripcion_4', 'field_5bb3a542ea945'),
(385, 92, 'enlace_4', ''),
(386, 92, '_enlace_4', 'field_5bb3a542ead2d'),
(387, 92, 'imagen_5', ''),
(388, 92, '_imagen_5', 'field_5bb3a5893a121'),
(389, 92, 'titulo_5', ''),
(390, 92, '_titulo_5', 'field_5bb3a5893a509'),
(391, 92, 'descripcion_5', ''),
(392, 92, '_descripcion_5', 'field_5bb3a5893a8f1'),
(393, 92, 'enlace_5', ''),
(394, 92, '_enlace_5', 'field_5bb3a5893acd9'),
(395, 92, '_edit_lock', '1538506512:1'),
(396, 93, '_edit_last', '1'),
(397, 93, 'imagen_3', ''),
(398, 93, '_imagen_3', 'field_5bb3a3d7b23bd'),
(399, 93, 'titulo_3', ''),
(400, 93, '_titulo_3', 'field_5bb3a3bfb23bc'),
(401, 93, 'descripcion_3', ''),
(402, 93, '_descripcion_3', 'field_5bb39c5776932'),
(403, 93, 'enlace_3', ''),
(404, 93, '_enlace_3', 'field_5bb38dd483ef7'),
(405, 93, 'imagen_4', ''),
(406, 93, '_imagen_4', 'field_5bb3a542ea175'),
(407, 93, 'titulo_4', ''),
(408, 93, '_titulo_4', 'field_5bb3a542ea55d'),
(409, 93, 'descripcion_4', ''),
(410, 93, '_descripcion_4', 'field_5bb3a542ea945'),
(411, 93, 'enlace_4', ''),
(412, 93, '_enlace_4', 'field_5bb3a542ead2d'),
(413, 93, 'imagen_5', ''),
(414, 93, '_imagen_5', 'field_5bb3a5893a121'),
(415, 93, 'titulo_5', ''),
(416, 93, '_titulo_5', 'field_5bb3a5893a509'),
(417, 93, 'descripcion_5', ''),
(418, 93, '_descripcion_5', 'field_5bb3a5893a8f1'),
(419, 93, 'enlace_5', ''),
(420, 93, '_enlace_5', 'field_5bb3a5893acd9'),
(421, 93, '_edit_lock', '1538510617:1'),
(422, 94, '_wp_attached_file', '2018/10/vitamina.jpg'),
(423, 94, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:423;s:4:\"file\";s:20:\"2018/10/vitamina.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"vitamina-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"vitamina-300x198.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:198;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"destacada\";a:4:{s:4:\"file\";s:20:\"vitamina-640x400.jpg\";s:5:\"width\";i:640;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:20:\"vitamina-420x420.jpg\";s:5:\"width\";i:420;s:6:\"height\";i:420;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"post-custom-size\";a:4:{s:4:\"file\";s:20:\"vitamina-268x177.jpg\";s:5:\"width\";i:268;s:6:\"height\";i:177;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"custom-size-blog\";a:4:{s:4:\"file\";s:20:\"vitamina-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"5.6\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:12:\"PENTAX K-500\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:4:\"37.5\";s:3:\"iso\";s:4:\"3200\";s:13:\"shutter_speed\";s:5:\"0.025\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(424, 94, '_wp_attachment_image_alt', 'vitamina'),
(425, 93, 'imagen_8', '94'),
(426, 93, '_imagen_8', 'field_5bb3a65124c37'),
(429, 96, '_edit_last', '1'),
(430, 96, '_edit_lock', '1538505552:1'),
(431, 87, 'descripcion_2', ''),
(432, 87, '_descripcion_2', 'field_5bb3880bdae5e'),
(433, 87, 'enlace_2', 'Leer mÃ¡s...'),
(434, 87, '_enlace_2', 'field_5bb38867dae5f'),
(435, 96, 'imagen_8', '94'),
(436, 96, '_imagen_8', 'field_5bb3a65124c37'),
(439, 96, '_thumbnail_id', '94'),
(440, 50, '_thumbnail_id', '52'),
(441, 55, '_wp_trash_meta_status', 'publish'),
(442, 55, '_wp_trash_meta_time', '1538506211'),
(443, 55, '_wp_desired_post_slug', 'group_5bb3880858581'),
(444, 56, '_wp_trash_meta_status', 'publish'),
(445, 56, '_wp_trash_meta_time', '1538506211'),
(446, 56, '_wp_desired_post_slug', 'field_5bb3880bdae5e'),
(447, 57, '_wp_trash_meta_status', 'publish'),
(448, 57, '_wp_trash_meta_time', '1538506211'),
(449, 57, '_wp_desired_post_slug', 'field_5bb38867dae5f'),
(450, 59, '_wp_trash_meta_status', 'publish'),
(451, 59, '_wp_trash_meta_time', '1538506211'),
(452, 59, '_wp_desired_post_slug', 'group_5bb38dcd8cb5d'),
(453, 64, '_wp_trash_meta_status', 'publish'),
(454, 64, '_wp_trash_meta_time', '1538506211'),
(455, 64, '_wp_desired_post_slug', 'field_5bb3a3d7b23bd'),
(456, 65, '_wp_trash_meta_status', 'publish'),
(457, 65, '_wp_trash_meta_time', '1538506211'),
(458, 65, '_wp_desired_post_slug', 'field_5bb3a3bfb23bc'),
(459, 61, '_wp_trash_meta_status', 'publish'),
(460, 61, '_wp_trash_meta_time', '1538506212'),
(461, 61, '_wp_desired_post_slug', 'field_5bb39c5776932'),
(462, 60, '_wp_trash_meta_status', 'publish'),
(463, 60, '_wp_trash_meta_time', '1538506212'),
(464, 60, '_wp_desired_post_slug', 'field_5bb38dd483ef7'),
(465, 66, '_wp_trash_meta_status', 'publish'),
(466, 66, '_wp_trash_meta_time', '1538506212'),
(467, 66, '_wp_desired_post_slug', 'group_5bb3a542d2e58'),
(468, 67, '_wp_trash_meta_status', 'publish'),
(469, 67, '_wp_trash_meta_time', '1538506212'),
(470, 67, '_wp_desired_post_slug', 'field_5bb3a542ea175'),
(471, 68, '_wp_trash_meta_status', 'publish'),
(472, 68, '_wp_trash_meta_time', '1538506212'),
(473, 68, '_wp_desired_post_slug', 'field_5bb3a542ea55d'),
(474, 69, '_wp_trash_meta_status', 'publish'),
(475, 69, '_wp_trash_meta_time', '1538506213'),
(476, 69, '_wp_desired_post_slug', 'field_5bb3a542ea945'),
(477, 70, '_wp_trash_meta_status', 'publish'),
(478, 70, '_wp_trash_meta_time', '1538506213'),
(479, 70, '_wp_desired_post_slug', 'field_5bb3a542ead2d'),
(480, 71, '_wp_trash_meta_status', 'publish'),
(481, 71, '_wp_trash_meta_time', '1538506213'),
(482, 71, '_wp_desired_post_slug', 'group_5bb3a5890f57f'),
(483, 72, '_wp_trash_meta_status', 'publish'),
(484, 72, '_wp_trash_meta_time', '1538506213'),
(485, 72, '_wp_desired_post_slug', 'field_5bb3a5893a121'),
(486, 73, '_wp_trash_meta_status', 'publish'),
(487, 73, '_wp_trash_meta_time', '1538506213'),
(488, 73, '_wp_desired_post_slug', 'field_5bb3a5893a509'),
(489, 74, '_wp_trash_meta_status', 'publish'),
(490, 74, '_wp_trash_meta_time', '1538506213'),
(491, 74, '_wp_desired_post_slug', 'field_5bb3a5893a8f1'),
(492, 75, '_wp_trash_meta_status', 'publish'),
(493, 75, '_wp_trash_meta_time', '1538506213'),
(494, 75, '_wp_desired_post_slug', 'field_5bb3a5893acd9'),
(495, 76, '_wp_trash_meta_status', 'publish'),
(496, 76, '_wp_trash_meta_time', '1538506214'),
(497, 76, '_wp_desired_post_slug', 'group_5bb3a5dcc1454'),
(498, 77, '_wp_trash_meta_status', 'publish'),
(499, 77, '_wp_trash_meta_time', '1538506214'),
(500, 77, '_wp_desired_post_slug', 'field_5bb3a5dcdd592'),
(501, 78, '_wp_trash_meta_status', 'publish'),
(502, 78, '_wp_trash_meta_time', '1538506214'),
(503, 78, '_wp_desired_post_slug', 'field_5bb3a5dcdd97b'),
(504, 79, '_wp_trash_meta_status', 'publish'),
(505, 79, '_wp_trash_meta_time', '1538506214'),
(506, 79, '_wp_desired_post_slug', 'group_5bb3a608cdd93'),
(507, 80, '_wp_trash_meta_status', 'publish'),
(508, 80, '_wp_trash_meta_time', '1538506214'),
(509, 80, '_wp_desired_post_slug', 'field_5bb3a608e1a00'),
(510, 81, '_wp_trash_meta_status', 'publish'),
(511, 81, '_wp_trash_meta_time', '1538506214'),
(512, 81, '_wp_desired_post_slug', 'field_5bb3a608e1de8'),
(513, 82, '_wp_trash_meta_status', 'publish'),
(514, 82, '_wp_trash_meta_time', '1538506214'),
(515, 82, '_wp_desired_post_slug', 'group_5bb3a64987381'),
(516, 83, '_wp_trash_meta_status', 'publish'),
(517, 83, '_wp_trash_meta_time', '1538506215'),
(518, 83, '_wp_desired_post_slug', 'field_5bb3a65124c37'),
(519, 87, 'enlace_1', 'Leer mÃ¡s...'),
(520, 87, '_enlace_1', 'field_5bb2bec4cfb69'),
(521, 93, '_thumbnail_id', '62'),
(522, 93, 'enlace_1', 'Leer mÃ¡s...'),
(523, 93, '_enlace_1', 'field_5bb2bec4cfb69'),
(524, 92, 'enlace_1', 'Leer mÃ¡s...'),
(525, 92, '_enlace_1', 'field_5bb2bec4cfb69'),
(526, 91, '_thumbnail_id', '94'),
(527, 91, 'enlace_1', ''),
(528, 91, '_enlace_1', 'field_5bb2bec4cfb69'),
(532, 92, '_thumbnail_id', '94'),
(533, 90, '_thumbnail_id', '85'),
(534, 90, 'enlace_1', 'Leer mÃ¡s...'),
(535, 90, '_enlace_1', 'field_5bb2bec4cfb69'),
(536, 89, '_thumbnail_id', '84'),
(537, 89, 'enlace_1', 'Leer mÃ¡s...'),
(538, 89, '_enlace_1', 'field_5bb2bec4cfb69'),
(539, 88, '_wp_trash_meta_status', 'draft'),
(540, 88, '_wp_trash_meta_time', '1538508051'),
(541, 88, '_wp_desired_post_slug', 'tarjeta-3'),
(542, 50, '_wp_old_slug', 'tarjeta1'),
(549, 92, '_wp_trash_meta_status', 'publish'),
(550, 92, '_wp_trash_meta_time', '1538511255'),
(551, 92, '_wp_desired_post_slug', '92'),
(552, 93, '_wp_trash_meta_status', 'publish'),
(553, 93, '_wp_trash_meta_time', '1538511255'),
(554, 93, '_wp_desired_post_slug', 'tarjeta-8'),
(555, 87, '_wp_trash_meta_status', 'publish'),
(556, 87, '_wp_trash_meta_time', '1538511256'),
(557, 87, '_wp_desired_post_slug', 'tarjeta-2'),
(558, 98, '_edit_last', '1'),
(559, 98, 'enlace_1', 'Leer mÃ¡s...'),
(560, 98, '_enlace_1', 'field_5bb2bec4cfb69'),
(561, 98, '_edit_lock', '1538519151:1'),
(565, 99, '_edit_last', '1'),
(566, 99, '_edit_lock', '1538537878:1'),
(567, 99, '_thumbnail_id', '62'),
(568, 99, 'enlace_1', 'Leer mÃ¡s...'),
(569, 99, '_enlace_1', 'field_5bb2bec4cfb69'),
(570, 100, '_menu_item_type', 'post_type'),
(571, 100, '_menu_item_menu_item_parent', '0'),
(572, 100, '_menu_item_object_id', '20'),
(573, 100, '_menu_item_object', 'page'),
(574, 100, '_menu_item_target', ''),
(575, 100, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(576, 100, '_menu_item_xfn', ''),
(577, 100, '_menu_item_url', ''),
(579, 101, '_menu_item_type', 'post_type'),
(580, 101, '_menu_item_menu_item_parent', '0'),
(581, 101, '_menu_item_object_id', '18'),
(582, 101, '_menu_item_object', 'page'),
(583, 101, '_menu_item_target', ''),
(584, 101, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(585, 101, '_menu_item_xfn', ''),
(586, 101, '_menu_item_url', ''),
(588, 102, '_menu_item_type', 'post_type'),
(589, 102, '_menu_item_menu_item_parent', '0'),
(590, 102, '_menu_item_object_id', '15'),
(591, 102, '_menu_item_object', 'page'),
(592, 102, '_menu_item_target', ''),
(593, 102, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(594, 102, '_menu_item_xfn', ''),
(595, 102, '_menu_item_url', ''),
(597, 103, '_menu_item_type', 'post_type'),
(598, 103, '_menu_item_menu_item_parent', '0'),
(599, 103, '_menu_item_object_id', '13'),
(600, 103, '_menu_item_object', 'page'),
(601, 103, '_menu_item_target', ''),
(602, 103, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(603, 103, '_menu_item_xfn', ''),
(604, 103, '_menu_item_url', ''),
(606, 104, '_menu_item_type', 'post_type'),
(607, 104, '_menu_item_menu_item_parent', '0'),
(608, 104, '_menu_item_object_id', '11'),
(609, 104, '_menu_item_object', 'page'),
(610, 104, '_menu_item_target', ''),
(611, 104, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(612, 104, '_menu_item_xfn', ''),
(613, 104, '_menu_item_url', ''),
(615, 90, '_wp_old_slug', 'germinados__trashed'),
(616, 89, '_wp_old_slug', 'ejercicio-y-una-dieta-balanceada__trashed'),
(617, 91, '_wp_old_slug', '91__trashed'),
(618, 105, '_form', '<form>\n                  <div class=\"form-row ml-2\">\n                    <div class=\"form-group col-md-6\">\n                      <label for=\"Firstname\"></label>\n                      <input type=\"text\" class=\"form-control\" id=\"inputname\" placeholder=\"Nombre\">\n                    </div>\n\n                    <div class=\"form-group col-md-6\">\n                      <label for=\"inputlastname\"></label>\n                      <input type=\"text\" class=\"form-control\" id=\"inputlastname\" placeholder=\"ApellÃ­do\">\n                    </div>\n                  </div>\n\n                  <div class=\"form-group col-md-12\">\n                    <label for=\"inputEmail4\"></label>\n                    <input type=\"email\" class=\"form-control\" id=\"inputEmail4\" placeholder=\"Email\">\n                  </div>\n\n                  <div class=\"form-group col-md-6\">\n                    <label for=\"inputphone\"></label>\n                    <input type=\"text\" class=\"form-control\" id=\"inputphone\" placeholder=\"TelÃ©fono\">\n                  </div>\n\n                  <div class=\"form-group col-md-6\">\n                    <label for=\"inputAffair\"></label>\n                    <input type=\"text\" class=\"form-control\" id=\"inputAffair\" placeholder=\"Asunto\">\n                  </div>\n\n                  <div class=\"form-group col-sm\">\n                    <label for=\"inputAffair\"></label>\n                    <textarea class=\"form-control\" aria-label=\"With textarea\"  \n                     placeholder=\"Mensaje\"></textarea>\n                    \n                  </div>\n\n                  <button type=\"submit\" class=\"btn btn-success ml-4 pl-5 pr-5\">Enviar</button>\n                </form>'),
(619, 105, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:38:\"Quilicura | Vegariano \"[your-subject]\"\";s:6:\"sender\";s:34:\"[your-name] <elemon20@hotmail.com>\";s:9:\"recipient\";s:20:\"elemon20@hotmail.com\";s:4:\"body\";s:202:\"De: [your-name] <[your-email]>\nAsunto: [your-subject]\n\nCuerpo del mensaje:\n[your-message]\n\n-- \nEste mensaje se ha enviado desde un formulario de contacto en Quilicura | Vegariano (http://localhost:8080)\";s:18:\"additional_headers\";s:20:\"elemon20@hotmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(620, 105, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:38:\"Quilicura | Vegariano \"[your-subject]\"\";s:6:\"sender\";s:44:\"Quilicura | Vegariano <elemon20@hotmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:147:\"Cuerpo del mensaje:\n[your-message]\n\n-- \nEste mensaje se ha enviado desde un formulario de contacto en Quilicura | Vegariano (http://localhost:8080)\";s:18:\"additional_headers\";s:30:\"Reply-To: elemon20@hotmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(621, 105, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:40:\"Gracias por tu mensaje. Ha sido enviado.\";s:12:\"mail_sent_ng\";s:85:\"Hubo un error intentando enviar tu mensaje. Por favor intÃ©ntalo de nuevo mÃ¡s tarde.\";s:16:\"validation_error\";s:74:\"Uno o mÃ¡s campos tienen un error. Por favor revisa e intÃ©ntalo de nuevo.\";s:4:\"spam\";s:85:\"Hubo un error intentando enviar tu mensaje. Por favor intÃ©ntalo de nuevo mÃ¡s tarde.\";s:12:\"accept_terms\";s:69:\"Debes aceptar los tÃ©rminos y condiciones antes de enviar tu mensaje.\";s:16:\"invalid_required\";s:24:\"El campo es obligatorio.\";s:16:\"invalid_too_long\";s:28:\"El campo es demasiado largo.\";s:17:\"invalid_too_short\";s:28:\"El campo es demasiado corto.\";s:12:\"invalid_date\";s:34:\"El formato de fecha es incorrecto.\";s:14:\"date_too_early\";s:50:\"La fecha es anterior a la mÃ¡s temprana permitida.\";s:13:\"date_too_late\";s:50:\"La fecha es posterior a la mÃ¡s tardÃ­a permitida.\";s:13:\"upload_failed\";s:46:\"Hubo un error desconocido subiendo el archivo.\";s:24:\"upload_file_type_invalid\";s:52:\"No tienes permisos para subir archivos de este tipo.\";s:21:\"upload_file_too_large\";s:31:\"El archivo es demasiado grande.\";s:23:\"upload_failed_php_error\";s:43:\"Se ha producido un error subiendo la imagen\";s:14:\"invalid_number\";s:36:\"El formato de nÃºmero no es vÃ¡lido.\";s:16:\"number_too_small\";s:45:\"El nÃºmero es menor que el mÃ­nimo permitido.\";s:16:\"number_too_large\";s:45:\"El nÃºmero es mayor que el mÃ¡ximo permitido.\";s:23:\"quiz_answer_not_correct\";s:44:\"La respuesta al cuestionario no es correcta.\";s:17:\"captcha_not_match\";s:37:\"El cÃ³digo introducido es incorrecto.\";s:13:\"invalid_email\";s:71:\"La direcciÃ³n de correo electrÃ³nico que has introducido no es vÃ¡lida.\";s:11:\"invalid_url\";s:21:\"La URL no es vÃ¡lida.\";s:11:\"invalid_tel\";s:38:\"El nÃºmero de telÃ©fono no es vÃ¡lido.\";}'),
(622, 105, '_additional_settings', ''),
(623, 105, '_locale', 'es_ES'),
(624, 108, '_menu_item_type', 'custom'),
(625, 108, '_menu_item_menu_item_parent', '0'),
(626, 108, '_menu_item_object_id', '108'),
(627, 108, '_menu_item_object', 'custom'),
(628, 108, '_menu_item_target', ''),
(629, 108, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(630, 108, '_menu_item_xfn', ''),
(631, 108, '_menu_item_url', 'http://localhost:8080/'),
(633, 50, '_wp_old_slug', 'sabias-que__trashed'),
(634, 99, '_wp_trash_meta_status', 'publish'),
(635, 99, '_wp_trash_meta_time', '1538538075'),
(636, 99, '_wp_desired_post_slug', 'sabias-que'),
(637, 98, '_wp_trash_meta_status', 'publish'),
(638, 98, '_wp_trash_meta_time', '1538538075'),
(639, 98, '_wp_desired_post_slug', '98'),
(640, 89, '_wp_trash_meta_status', 'publish'),
(641, 89, '_wp_trash_meta_time', '1538538075'),
(642, 89, '_wp_desired_post_slug', 'ejercicio-y-una-dieta-balanceada'),
(643, 90, '_wp_trash_meta_status', 'publish'),
(644, 90, '_wp_trash_meta_time', '1538538076'),
(645, 90, '_wp_desired_post_slug', 'germinados'),
(646, 91, '_wp_trash_meta_status', 'publish'),
(647, 91, '_wp_trash_meta_time', '1538538076'),
(648, 91, '_wp_desired_post_slug', '91'),
(649, 112, '_edit_last', '1'),
(650, 112, '_edit_lock', '1538542779:1'),
(651, 114, '_edit_last', '1'),
(652, 114, '_edit_lock', '1538538738:1'),
(653, 114, 'enlace_2', 'Leer mÃ¡s...'),
(654, 114, '_enlace_2', 'field_5bb43c8f60f87'),
(655, 114, 'enlace_1', ''),
(656, 114, '_enlace_1', 'field_5bb2bec4cfb69'),
(657, 114, '_wp_trash_meta_status', 'publish'),
(658, 114, '_wp_trash_meta_time', '1538538900'),
(659, 114, '_wp_desired_post_slug', 'tarjeta-2'),
(660, 116, '_edit_last', '1'),
(661, 116, '_edit_lock', '1538541172:1'),
(662, 116, 'enlace_2', 'Leer mÃ¡s...'),
(663, 116, '_enlace_2', 'field_5bb43c8f60f87'),
(664, 116, 'texto_2', 'Hay muchos alimentos que no son de origen animal que contienen calcio, y otras propiedades que benefician el organismo. Â¡No harÃ¡ falta suplementos de calcio!'),
(665, 116, '_texto_2', 'field_5bb43fdb65f7f'),
(666, 117, '_edit_last', '1'),
(667, 117, '_edit_lock', '1538543273:1'),
(668, 118, '_edit_lock', '1538544930:1'),
(669, 118, '_edit_last', '1'),
(670, 117, '_thumbnail_id', '84'),
(671, 117, 'enlace_2', ''),
(672, 117, '_enlace_2', 'field_5bb43c8f60f87'),
(673, 117, 'texto_2', ''),
(674, 117, '_texto_2', 'field_5bb43fdb65f7f'),
(675, 117, 'enlace_3', 'Leer mÃ¡s...'),
(676, 117, '_enlace_3', 'field_5bb4457f8faa5'),
(677, 117, 'texto_3', 'â€œlas  dietas  vegetarianas adecuadamente  planificadas, incluidas las dietas totalmente  vegetarianas o veganas, son saludables, nutricionalmente adecuadas,  y pueden proporcionar  beneficios para la saludâ€.'),
(678, 117, '_texto_3', 'field_5bb4457f8fe8d'),
(679, 117, '_wp_old_slug', 'tarjeta-3'),
(680, 117, 'titulo_3', 'Ejercicio y una dieta balanceada.'),
(681, 117, '_titulo_3', 'field_5bb447340ff8d'),
(682, 123, '_edit_last', '1'),
(683, 123, '_edit_lock', '1538543725:1'),
(684, 123, '_thumbnail_id', '84'),
(685, 123, 'enlace_3', 'Leer mÃ¡s...'),
(686, 123, '_enlace_3', 'field_5bb4457f8faa5'),
(687, 123, 'texto_3', 'â€œlas  dietas  vegetarianas adecuadamente  planificadas, incluidas las dietas totalmente  vegetarianas o veganas, son saludables, nutricionalmente adecuadas,  y pueden proporcionar  beneficios para la saludâ€.'),
(688, 123, '_texto_3', 'field_5bb4457f8fe8d'),
(689, 123, 'titulo_3', 'Ejercicio y una dieta balanceada.'),
(690, 123, '_titulo_3', 'field_5bb447340ff8d'),
(691, 124, '_edit_last', '1'),
(692, 124, '_edit_lock', '1538544857:1'),
(693, 125, '_edit_lock', '1538544329:1'),
(694, 125, '_edit_last', '1'),
(695, 124, 'enlace_4', ''),
(696, 124, '_enlace_4', 'field_5bb451d669030'),
(697, 124, 'texto_4', 'â€œNada beneficiarÃ¡ tanto la salud humana e incrementarÃ¡ las posibilidades de supervivencia de la vida sobre la Tierra, como la evoluciÃ³n hacia una dieta vegetarianaâ€œ. '),
(698, 124, '_texto_4', 'field_5bb451d669418'),
(699, 124, 'cita', 'Albert Einstein.'),
(700, 124, '_cita', 'field_5bb4533cd3b31'),
(701, 130, '_edit_last', '1'),
(702, 130, '_edit_lock', '1538545486:1'),
(703, 131, '_edit_lock', '1538545099:1'),
(704, 131, '_edit_last', '1'),
(705, 130, '_thumbnail_id', '85'),
(706, 130, 'enlace_5', 'Leer mÃ¡s...'),
(707, 130, '_enlace_5', 'field_5bb455b6c28d8'),
(708, 130, 'texto_5', 'Se imaginan un multivitamÃ­nico 100% Natural, EcolÃ³gico y Medicinal, bueno eso son los germinados son pequeÃ±as plantas en su primera etapa de crecimiento tienen un inmenso poder nutricional, es un alimento vivo que incrementa sus propiedades hasta el mismo minuto de su consumo.'),
(709, 130, '_texto_5', 'field_5bb455b6c2cc0'),
(710, 130, 'titulo_5', 'Germinados.'),
(711, 130, '_titulo_5', 'field_5bb455b6c30a8'),
(712, 135, '_edit_last', '1'),
(713, 135, '_thumbnail_id', '94'),
(714, 135, 'enlace_5', ''),
(715, 135, '_enlace_5', 'field_5bb455b6c28d8'),
(716, 135, 'texto_5', ''),
(717, 135, '_texto_5', 'field_5bb455b6c2cc0'),
(718, 135, 'titulo_5', ''),
(719, 135, '_titulo_5', 'field_5bb455b6c30a8'),
(720, 135, '_edit_lock', '1538545341:1'),
(721, 135, '_wp_trash_meta_status', 'publish'),
(722, 135, '_wp_trash_meta_time', '1538545490'),
(723, 135, '_wp_desired_post_slug', '135'),
(724, 136, '_edit_last', '1'),
(725, 136, '_edit_lock', '1538572882:1'),
(726, 136, '_thumbnail_id', '94'),
(731, 105, '_config_errors', 'a:1:{s:23:\"mail.additional_headers\";a:1:{i:0;a:2:{s:4:\"code\";i:108;s:4:\"args\";a:3:{s:7:\"message\";s:0:\"\";s:6:\"params\";a:0:{}s:4:\"link\";s:65:\"https://contactform7.com/configuration-errors/invalid-mail-header\";}}}}'),
(732, 138, '_edit_last', '1'),
(733, 138, '_edit_lock', '1538590136:1'),
(734, 20, 'mapa', ''),
(735, 20, '_mapa', 'field_5bb4ef62e659b'),
(736, 140, 'mapa', ''),
(737, 140, '_mapa', 'field_5bb4ef62e659b'),
(738, 141, 'mapa', ''),
(739, 141, '_mapa', 'field_5bb4ef62e659b'),
(740, 143, '_edit_last', '1'),
(741, 143, '_edit_lock', '1538611215:1'),
(742, 143, '_thumbnail_id', '52'),
(745, 1, '_edit_lock', '1538607040:1'),
(746, 1, '_edit_last', '1'),
(749, 1, '_wp_old_slug', 'hola-mundo'),
(750, 147, '_wp_attached_file', '2018/09/writing-pad.jpg'),
(751, 147, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:904;s:4:\"file\";s:23:\"2018/09/writing-pad.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"writing-pad-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"writing-pad-300x212.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:212;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"writing-pad-768x542.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:542;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"writing-pad-1024x723.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:723;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"destacada\";a:4:{s:4:\"file\";s:23:\"writing-pad-847x400.jpg\";s:5:\"width\";i:847;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:23:\"writing-pad-420x420.jpg\";s:5:\"width\";i:420;s:6:\"height\";i:420;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"post-custom-size\";a:4:{s:4:\"file\";s:23:\"writing-pad-268x177.jpg\";s:5:\"width\";i:268;s:6:\"height\";i:177;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"custom-size-blog\";a:4:{s:4:\"file\";s:23:\"writing-pad-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(752, 1, '_thumbnail_id', '147');

-- --------------------------------------------------------

--
-- Table structure for table `dl_posts`
--

CREATE TABLE `dl_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `dl_posts`
--

INSERT INTO `dl_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-09-04 23:50:31', '2018-09-04 23:50:31', '<strong>Luki Limitada.</strong>\r\nAv. Matta 1106\r\nReferencia: Av. Matta con Av. Las Torres\r\nQuilicura, Santiago, Chile\r\nCÃ³digo Postal: 8720767\r\nTelÃ©fono: (+56) 2 2583 2658\r\n\r\nHorarios de atenciÃ³n\r\nLunes 10:00 - 19:00\r\nMartes 10:00 - 19:00\r\nMiÃ©rcoles 16:00 - 19:00\r\nJueves 10:00 - 19:00\r\nViernes 10:00 - 19:00\r\n\r\n<strong>LA CASA DEL VEGAN</strong>\r\nHORARIO:\r\nNuestro horario de atenciÃ³n es:\r\nLunes a SÃ¡bado: 9am-5:30pm\r\nDomingo: 9am-2:30pm\r\n\r\nUBICACIÃ“N:\r\nEstamos ubicados en la Vega Central, Recoleta, RM, Chile.\r\nAntonia LÃ³pez de Bello 743, Local 688.', 'Donde Comprar', '', 'publish', 'open', 'open', '', 'donde-comprar', '', '', '2018-10-03 22:52:32', '2018-10-03 22:52:32', '', 0, 'http://localhost:8080/?p=1', 0, 'post', '', 1),
(2, 1, '2018-09-04 23:50:31', '2018-09-04 23:50:31', 'Esta es una pÃ¡gina de ejemplo, Es diferente a una entrada de blog porque se mantiene estÃ¡tica y se mostrarÃ¡ en la barra de navegaciÃ³n (en la mayorÃ­a de temas). Casi todo el mundo comienza con una pÃ¡gina Acerca de mÃ­ para presentarse a los potenciales visitantes. PodrÃ­a ser algo asÃ­:\n\n<blockquote>Â¡Hola!: Soy mensajero por el dÃ­a, aspirante a actor por la noche y esta es mi web. Vivo en Madrid, tengo perrazo llamado Juan y me encantan las piÃ±as coladas (y que me pille un chaparrÃ³n)</blockquote>\n\nâ€¦ o algo asÃ­:\n\n<blockquote>La empresa Calcetines XYZ se fundÃ³ en 1971, y ha estado produciendo calcetines de calidad para sus clientes desde entonces. Ubicada en Gothan, la empresa XYZ tiene mÃ¡s de 2.000 empleados e intenta ayudar en lo que puede para mejorar la vida en Gothan</blockquote>\n\nSi eres nuevo en WordPress deberÃ­as ir a <a href=\"http://localhost:8080/wp-admin/\">tu escritorio</a> para borrar esta pÃ¡gina y crear algunas nuevas con tu contenido. Â¡PÃ¡salo bien!', 'PÃ¡gina de ejemplo', '', 'publish', 'closed', 'open', '', 'pagina-ejemplo', '', '', '2018-09-04 23:50:31', '2018-09-04 23:50:31', '', 0, 'http://localhost:8080/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-09-04 23:50:31', '2018-09-04 23:50:31', '<h2>QuiÃ©nes somos</h2><p>La direcciÃ³n de nuestra web es: http://localhost:8080.</p><h2>QuÃ© datos personales recogemos y por quÃ© los recogemos</h2><h3>Comentarios</h3><p>Cuando los visitantes dejan comentarios en la web, recopilamos los datos que se muestran en el formulario de comentarios, asÃ­ como la direcciÃ³n IP del visitante y la cadena de agentes de usuario del navegador para ayudar a la detecciÃ³n de spam.</p><p>Una cadena anÃ³nima creada a partir de tu direcciÃ³n de correo electrÃ³nico (tambiÃ©n llamada hash) puede ser proporcionada al servicio de Gravatar para ver si la estÃ¡s usando. La polÃ­tica de privacidad del servicio Gravatar estÃ¡ disponible aquÃ­: https://automattic.com/privacy/. DespuÃ©s de la aprobaciÃ³n de tu comentario, la imagen de tu perfil es visible para el pÃºblico en el contexto de su comentario.</p><h3>Medios</h3><p>Si subes imÃ¡genes a la web deberÃ­as evitar subir imÃ¡genes con datos de ubicaciÃ³n (GPS EXIF) incluidos. Los visitantes de la web pueden descargar y extraer cualquier dato de localizaciÃ³n de las imÃ¡genes de la web.</p><h3>Formularios de contacto</h3><h3>Cookies</h3><p>Si dejas un comentario en nuestro sitio puedes elegir guardar tu nombre, direcciÃ³n de correo electrÃ³nico y web en cookies. Esto es para tu comodidad, para que no tengas que volver a rellenar tus datos cuando dejes otro comentario. Estas cookies tendrÃ¡n una duraciÃ³n de un aÃ±o.</p><p>Si tienes una cuenta y te conectas a este sitio, instalaremos una cookie temporal para determinar si tu navegador acepta cookies. Esta cookie no contiene datos personales y se elimina al cerrar el navegador.</p><p>Cuando inicias sesiÃ³n, tambiÃ©n instalaremos varias cookies para guardar tu informaciÃ³n de inicio de sesiÃ³n y tus opciones de visualizaciÃ³n de pantalla. Las cookies de inicio de sesiÃ³n duran dos dÃ­as, y las cookies de opciones de pantalla duran un aÃ±o. Si seleccionas &quot;Recordarme&quot;, tu inicio de sesiÃ³n perdurarÃ¡ durante dos semanas. Si sales de tu cuenta, las cookies de inicio de sesiÃ³n se eliminarÃ¡n.</p><p>Si editas o publicas un artÃ­culo se guardarÃ¡ una cookie adicional en tu navegador. Esta cookie no incluye datos personales y simplemente indica el ID del artÃ­culo que acabas de editar. Caduca despuÃ©s de 1 dÃ­a.</p><h3>Contenido incrustado de otros sitios web</h3><p>Los artÃ­culos de este sitio pueden incluir contenido incrustado (por ejemplo, vÃ­deos, imÃ¡genes, artÃ­culos, etc.). El contenido incrustado de otras web se comporta exactamente de la misma manera que si el visitante hubiera visitado la otra web.</p><p>Estas web pueden recopilar datos sobre ti, utilizar cookies, incrustar un seguimiento adicional de terceros, y supervisar tu interacciÃ³n con ese contenido incrustado, incluido el seguimiento de tu interacciÃ³n con el contenido incrustado si tienes una cuenta y estÃ¡s conectado a esa web.</p><h3>AnalÃ­tica</h3><h2>Con quiÃ©n compartimos tus datos</h2><h2>CuÃ¡nto tiempo conservamos tus datos</h2><p>Si dejas un comentario, el comentario y sus metadatos se conservan indefinidamente. Esto es para que podamos reconocer y aprobar comentarios sucesivos automÃ¡ticamente en lugar de mantenerlos en una cola de moderaciÃ³n.</p><p>De los usuarios que se registran en nuestra web (si los hay), tambiÃ©n almacenamos la informaciÃ³n personal que proporcionan en su perfil de usuario. Todos los usuarios pueden ver, editar o eliminar su informaciÃ³n personal en cualquier momento (excepto que no pueden cambiar su nombre de usuario). Los administradores de la web tambiÃ©n pueden ver y editar esa informaciÃ³n.</p><h2>QuÃ© derechos tienes sobre tus datos</h2><p>Si tienes una cuenta o has dejado comentarios en esta web, puedes solicitar recibir un archivo de exportaciÃ³n de los datos personales que tenemos sobre ti, incluyendo cualquier dato que nos hayas proporcionado. TambiÃ©n puedes solicitar que eliminemos cualquier dato personal que tengamos sobre ti. Esto no incluye ningÃºn dato que estemos obligados a conservar con fines administrativos, legales o de seguridad.</p><h2>DÃ³nde enviamos tus datos</h2><p>Los comentarios de los visitantes puede que los revise un servicio de detecciÃ³n automÃ¡tica de spam.</p><h2>Tu informaciÃ³n de contacto</h2><h2>InformaciÃ³n adicional</h2><h3>CÃ³mo protegemos tus datos</h3><h3>QuÃ© procedimientos utilizamos contra las brechas de datos</h3><h3>De quÃ© terceros recibimos datos</h3><h3>QuÃ© tipo de toma de decisiones automatizada y/o perfilado hacemos con los datos del usuario</h3><h3>Requerimientos regulatorios de revelaciÃ³n de informaciÃ³n del sector</h3>', 'PolÃ­tica de privacidad', '', 'draft', 'closed', 'open', '', 'politica-privacidad', '', '', '2018-09-04 23:50:31', '2018-09-04 23:50:31', '', 0, 'http://localhost:8080/?page_id=3', 0, 'page', '', 0),
(5, 1, '2018-09-05 02:45:41', '2018-09-05 02:45:41', '', 'logo-vegariano6', '', 'inherit', 'open', 'closed', '', 'logo-vegariano6', '', '', '2018-09-05 02:45:41', '2018-09-05 02:45:41', '', 0, 'http://localhost:8080/wp-content/uploads/2018/09/logo-vegariano6.png', 0, 'attachment', 'image/png', 0),
(6, 1, '2018-09-05 02:46:04', '2018-09-05 02:46:04', '{\n    \"vegariano::custom_logo\": {\n        \"value\": 5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-05 02:46:04\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9b44d207-d9c1-4585-a41f-4b6cb2f1d074', '', '', '2018-09-05 02:46:04', '2018-09-05 02:46:04', '', 0, 'http://localhost:8080/2018/09/05/9b44d207-d9c1-4585-a41f-4b6cb2f1d074/', 0, 'customize_changeset', '', 0),
(7, 1, '2018-09-10 23:02:54', '2018-09-10 23:02:54', '{\n    \"vegariano::custom_logo\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-10 23:02:54\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ce92bb98-db44-48a2-9539-ab6934f36897', '', '', '2018-09-10 23:02:54', '2018-09-10 23:02:54', '', 0, 'http://localhost:8080/2018/09/10/ce92bb98-db44-48a2-9539-ab6934f36897/', 0, 'customize_changeset', '', 0),
(8, 1, '2018-09-10 23:03:18', '2018-09-10 23:03:18', '{\n    \"vegariano::custom_logo\": {\n        \"value\": 5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-10 23:03:18\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '66eb503b-70d3-4fb1-ab5d-ec93e363b289', '', '', '2018-09-10 23:03:18', '2018-09-10 23:03:18', '', 0, 'http://localhost:8080/2018/09/10/66eb503b-70d3-4fb1-ab5d-ec93e363b289/', 0, 'customize_changeset', '', 0),
(11, 1, '2018-09-12 01:30:54', '2018-09-12 01:30:54', '', 'ConÃ³cenos', '', 'publish', 'closed', 'closed', '', 'conocenos', '', '', '2018-09-12 01:51:14', '2018-09-12 01:51:14', '', 0, 'http://localhost:8080/?page_id=11', 0, 'page', '', 0),
(12, 1, '2018-09-12 01:30:54', '2018-09-12 01:30:54', '', 'conocenos', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-09-12 01:30:54', '2018-09-12 01:30:54', '', 11, 'http://localhost:8080/2018/09/12/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2018-09-12 01:31:34', '2018-09-12 01:31:34', '', 'Nutrientes', '', 'publish', 'closed', 'closed', '', 'nutrientes', '', '', '2018-09-12 01:31:34', '2018-09-12 01:31:34', '', 0, 'http://localhost:8080/?page_id=13', 0, 'page', '', 0),
(14, 1, '2018-09-12 01:31:34', '2018-09-12 01:31:34', '', 'Nutrientes', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-09-12 01:31:34', '2018-09-12 01:31:34', '', 13, 'http://localhost:8080/2018/09/12/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2018-09-12 01:33:41', '2018-09-12 01:33:41', '', 'Nutrirecetas', '', 'publish', 'closed', 'closed', '', 'nutrirecetas', '', '', '2018-09-12 01:33:51', '2018-09-12 01:33:51', '', 0, 'http://localhost:8080/?page_id=15', 0, 'page', '', 0),
(16, 1, '2018-09-12 01:33:41', '2018-09-12 01:33:41', '', 'nutrirecetas', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-09-12 01:33:41', '2018-09-12 01:33:41', '', 15, 'http://localhost:8080/2018/09/12/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2018-09-12 01:33:51', '2018-09-12 01:33:51', '', 'Nutrirecetas', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-09-12 01:33:51', '2018-09-12 01:33:51', '', 15, 'http://localhost:8080/2018/09/12/15-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2018-09-12 01:35:38', '2018-09-12 01:35:38', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2018-09-12 01:35:38', '2018-09-12 01:35:38', '', 0, 'http://localhost:8080/?page_id=18', 0, 'page', '', 0),
(19, 1, '2018-09-12 01:35:38', '2018-09-12 01:35:38', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2018-09-12 01:35:38', '2018-09-12 01:35:38', '', 18, 'http://localhost:8080/2018/09/12/18-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2018-09-12 01:36:35', '2018-09-12 01:36:35', '', 'Contacto', '', 'publish', 'closed', 'closed', '', 'contacto', '', '', '2018-10-03 17:40:47', '2018-10-03 17:40:47', '', 0, 'http://localhost:8080/?page_id=20', 0, 'page', '', 0),
(21, 1, '2018-09-12 01:36:35', '2018-09-12 01:36:35', '', 'Contacto', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2018-09-12 01:36:35', '2018-09-12 01:36:35', '', 20, 'http://localhost:8080/2018/09/12/20-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2018-09-12 01:44:26', '2018-09-12 01:44:26', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2018-10-01 23:16:59', '2018-10-01 23:16:59', '', 0, 'http://localhost:8080/?p=22', 7, 'nav_menu_item', '', 0),
(23, 1, '2018-09-12 01:44:26', '2018-09-12 01:44:26', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2018-10-01 23:16:59', '2018-10-01 23:16:59', '', 0, 'http://localhost:8080/?p=23', 6, 'nav_menu_item', '', 0),
(25, 1, '2018-09-12 01:44:25', '2018-09-12 01:44:25', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2018-10-01 23:16:59', '2018-10-01 23:16:59', '', 0, 'http://localhost:8080/?p=25', 2, 'nav_menu_item', '', 0),
(26, 1, '2018-09-12 01:44:25', '2018-09-12 01:44:25', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2018-10-01 23:16:59', '2018-10-01 23:16:59', '', 0, 'http://localhost:8080/?p=26', 1, 'nav_menu_item', '', 0),
(27, 1, '2018-09-12 01:45:36', '2018-09-12 01:45:36', '', 'Conocenos', '', 'inherit', 'closed', 'closed', '', '11-autosave-v1', '', '', '2018-09-12 01:45:36', '2018-09-12 01:45:36', '', 11, 'http://localhost:8080/2018/09/12/11-autosave-v1/', 0, 'revision', '', 0),
(28, 1, '2018-09-12 01:51:14', '2018-09-12 01:51:14', '', 'ConÃ³cenos', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-09-12 01:51:14', '2018-09-12 01:51:14', '', 11, 'http://localhost:8080/2018/09/12/11-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2018-09-25 22:28:38', '2018-09-25 22:28:38', '{\n    \"nav_menu_item[30]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-25 22:28:38\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1ec4db19-3466-4060-924b-e2ba6c18e068', '', '', '2018-09-25 22:28:38', '2018-09-25 22:28:38', '', 0, 'http://localhost:8080/2018/09/25/1ec4db19-3466-4060-924b-e2ba6c18e068/', 0, 'customize_changeset', '', 0),
(33, 1, '2018-09-26 22:50:14', '2018-09-26 22:50:14', '', 'Veganas', '', 'publish', 'closed', 'closed', '', 'nutri', '', '', '2018-10-01 23:16:59', '2018-10-01 23:16:59', '', 0, 'http://localhost:8080/?p=33', 4, 'nav_menu_item', '', 0),
(34, 1, '2018-09-26 23:36:06', '2018-09-26 23:36:06', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2018-10-01 23:16:59', '2018-10-01 23:16:59', '', 0, 'http://localhost:8080/?p=34', 3, 'nav_menu_item', '', 0),
(35, 1, '2018-09-26 23:36:06', '2018-09-26 23:36:06', '', 'Vegetarianas', '', 'publish', 'closed', 'closed', '', 'vegetarianas', '', '', '2018-10-01 23:16:59', '2018-10-01 23:16:59', '', 0, 'http://localhost:8080/?p=35', 5, 'nav_menu_item', '', 0),
(36, 1, '2018-09-28 20:00:21', '2018-09-28 20:00:21', '', 'favicon', '', 'inherit', 'open', 'closed', '', 'favicon', '', '', '2018-09-28 20:00:21', '2018-09-28 20:00:21', '', 0, 'http://localhost:8080/wp-content/uploads/2018/09/favicon.ico', 0, 'attachment', 'image/x-icon', 0),
(37, 1, '2018-09-28 20:29:10', '2018-09-28 20:29:10', '{\n    \"blogname\": {\n        \"value\": \"Quilicura | Vegariano\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-28 20:05:16\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'fbe80a7f-ec37-4a1e-97f9-e46e3cb4b273', '', '', '2018-09-28 20:29:10', '2018-09-28 20:29:10', '', 0, 'http://localhost:8080/?p=37', 0, 'customize_changeset', '', 0),
(38, 1, '2018-09-29 05:46:41', '2018-09-29 05:46:41', '', 'favicon-16x16', '', 'inherit', 'open', 'closed', '', 'favicon-16x16', '', '', '2018-09-29 05:46:41', '2018-09-29 05:46:41', '', 0, 'http://localhost:8080/wp-content/uploads/2018/09/favicon-16x16.png', 0, 'attachment', 'image/png', 0),
(39, 1, '2018-09-29 05:47:01', '2018-09-29 05:47:01', '', 'logo-vegariano6', '', 'inherit', 'open', 'closed', '', 'logo-vegariano6-2', '', '', '2018-09-29 05:47:01', '2018-09-29 05:47:01', '', 0, 'http://localhost:8080/wp-content/uploads/2018/09/logo-vegariano6-1.png', 0, 'attachment', 'image/png', 0),
(40, 1, '2018-09-29 05:47:12', '2018-09-29 05:47:12', '{\n    \"site_icon\": {\n        \"value\": 39,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-29 05:47:12\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1a983b03-456d-4ec6-ba19-17652de08768', '', '', '2018-09-29 05:47:12', '2018-09-29 05:47:12', '', 0, 'http://localhost:8080/2018/09/29/1a983b03-456d-4ec6-ba19-17652de08768/', 0, 'customize_changeset', '', 0),
(41, 1, '2018-10-01 22:45:53', '2018-10-01 22:45:53', '{\n    \"blogdescription\": {\n        \"value\": \"Un Sitio Para Nuestros Vecinos\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-01 22:45:47\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '34d4ed09-23e8-4387-b621-c8953d33d6fe', '', '', '2018-10-01 22:45:53', '2018-10-01 22:45:53', '', 0, 'http://localhost:8080/?p=41', 0, 'customize_changeset', '', 0),
(42, 1, '2018-10-01 22:47:25', '0000-00-00 00:00:00', '', 'Borrador automÃ¡tico', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-01 22:47:25', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/?post_type=acf-field-group&p=42', 0, 'acf-field-group', '', 0),
(43, 1, '2018-10-02 00:04:53', '2018-10-02 00:04:53', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"cards\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Tarjeta1', 'tarjeta1', 'publish', 'closed', 'closed', '', 'group_5bb2b4d72925f', '', '', '2018-10-02 18:49:49', '2018-10-02 18:49:49', '', 0, 'http://localhost:8080/?post_type=acf-field-group&#038;p=43', 0, 'acf-field-group', '', 0),
(47, 1, '2018-10-02 00:43:20', '2018-10-02 00:43:20', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Enlace 1', 'enlace_1', 'publish', 'closed', 'closed', '', 'field_5bb2bec4cfb69', '', '', '2018-10-02 18:49:49', '2018-10-02 18:49:49', '', 43, 'http://localhost:8080/?post_type=acf-field&#038;p=47', 0, 'acf-field', '', 0),
(48, 1, '2018-10-02 00:43:32', '0000-00-00 00:00:00', '', 'Borrador automÃ¡tico', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-02 00:43:32', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/?post_type=cards&p=48', 0, 'cards', '', 0),
(49, 1, '2018-10-02 00:52:06', '0000-00-00 00:00:00', '', 'Borrador automÃ¡tico', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-02 00:52:06', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/?post_type=cards&p=49', 0, 'cards', '', 0),
(50, 1, '2018-10-02 17:04:52', '2018-10-02 17:04:52', 'Las lentejas estimulan el buen funcionamiento del sistema nervioso, combaten la retencioÌn de liÌquidos y ayudan a prevenir la anemia.', 'Sabias Que...', '', 'publish', 'closed', 'closed', '', 'sabias-que-2', '', '', '2018-10-03 03:40:49', '2018-10-03 03:40:49', '', 0, 'http://localhost:8080/?post_type=cards&#038;p=50', 0, 'cards', '', 0),
(51, 1, '2018-10-02 14:03:52', '2018-10-02 14:03:52', '', 'legumbres', '', 'inherit', 'open', 'closed', '', 'legumbres', '', '', '2018-10-02 14:03:52', '2018-10-02 14:03:52', '', 50, 'http://localhost:8080/wp-content/uploads/2018/10/legumbres.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2018-10-02 14:04:06', '2018-10-02 14:04:06', '', 'lentejas', '', 'inherit', 'open', 'closed', '', 'lentejas', '', '', '2018-10-02 14:04:16', '2018-10-02 14:04:16', '', 50, 'http://localhost:8080/wp-content/uploads/2018/10/lentejas.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2018-10-02 18:15:23', '2018-10-02 18:15:23', 'Las lentejas estimulan el buen funcionamiento del sistema nervioso, combaten la retencioÌn de liÌquidos y ayudan a prevenir la anemia.', 'Sabias Que...', '', 'inherit', 'closed', 'closed', '', '50-autosave-v1', '', '', '2018-10-02 18:15:23', '2018-10-02 18:15:23', '', 50, 'http://localhost:8080/50-autosave-v1/', 0, 'revision', '', 0),
(54, 1, '2018-10-02 15:00:10', '2018-10-02 15:00:10', '', 'Tarjeta2', '', 'trash', 'closed', 'closed', '', 'tarjeta2__trashed', '', '', '2018-10-02 16:35:33', '2018-10-02 16:35:33', '', 0, 'http://localhost:8080/?post_type=cards&#038;p=54', 0, 'cards', '', 0),
(55, 1, '2018-10-02 15:02:29', '2018-10-02 15:02:29', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"post\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"87\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'tarjeta2', 'tarjeta2', 'trash', 'closed', 'closed', '', 'group_5bb3880858581__trashed', '', '', '2018-10-02 18:50:11', '2018-10-02 18:50:11', '', 0, 'http://localhost:8080/?post_type=acf-field-group&#038;p=55', 0, 'acf-field-group', '', 0),
(56, 1, '2018-10-02 15:02:29', '2018-10-02 15:02:29', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:23:\"Ingrese la descripciÃ³n\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'DescripciÃ³n 2', 'descripcion_2', 'trash', 'closed', 'closed', '', 'field_5bb3880bdae5e__trashed', '', '', '2018-10-02 18:50:11', '2018-10-02 18:50:11', '', 55, 'http://localhost:8080/?post_type=acf-field&#038;p=56', 0, 'acf-field', '', 0),
(57, 1, '2018-10-02 15:02:29', '2018-10-02 15:02:29', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Enlace 2', 'enlace_2', 'trash', 'closed', 'closed', '', 'field_5bb38867dae5f__trashed', '', '', '2018-10-02 18:50:11', '2018-10-02 18:50:11', '', 55, 'http://localhost:8080/?post_type=acf-field&#038;p=57', 1, 'acf-field', '', 0),
(58, 1, '2018-10-02 16:30:28', '2018-10-02 16:30:28', '', 'Tarjeta3', '', 'trash', 'closed', 'closed', '', 'tarjeta3__trashed', '', '', '2018-10-02 16:35:37', '2018-10-02 16:35:37', '', 0, 'http://localhost:8080/?post_type=cards&#038;p=58', 0, 'cards', '', 0),
(59, 1, '2018-10-02 15:25:41', '2018-10-02 15:25:41', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"post\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"88\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'tarjeta3', 'tarjeta3', 'trash', 'closed', 'closed', '', 'group_5bb38dcd8cb5d__trashed', '', '', '2018-10-02 18:50:11', '2018-10-02 18:50:11', '', 0, 'http://localhost:8080/?post_type=acf-field-group&#038;p=59', 0, 'acf-field-group', '', 0),
(60, 1, '2018-10-02 15:25:41', '2018-10-02 15:25:41', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Enlace 3', 'enlace_3', 'trash', 'closed', 'closed', '', 'field_5bb38dd483ef7__trashed', '', '', '2018-10-02 18:50:12', '2018-10-02 18:50:12', '', 59, 'http://localhost:8080/?post_type=acf-field&#038;p=60', 3, 'acf-field', '', 0),
(61, 1, '2018-10-02 16:27:39', '2018-10-02 16:27:39', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'DescripciÃ³n 3', 'descripcion_3', 'trash', 'closed', 'closed', '', 'field_5bb39c5776932__trashed', '', '', '2018-10-02 18:50:12', '2018-10-02 18:50:12', '', 59, 'http://localhost:8080/?post_type=acf-field&#038;p=61', 2, 'acf-field', '', 0),
(62, 1, '2018-10-02 16:29:00', '2018-10-02 16:29:00', '', 'chia', '', 'inherit', 'open', 'closed', '', 'chia', '', '', '2018-10-02 16:29:11', '2018-10-02 16:29:11', '', 58, 'http://localhost:8080/wp-content/uploads/2018/10/chia.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2018-10-02 16:59:34', '2018-10-02 16:59:34', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagen 3', 'imagen_3', 'trash', 'closed', 'closed', '', 'field_5bb3a3d7b23bd__trashed', '', '', '2018-10-02 18:50:11', '2018-10-02 18:50:11', '', 59, 'http://localhost:8080/?post_type=acf-field&#038;p=64', 0, 'acf-field', '', 0),
(65, 1, '2018-10-02 16:59:34', '2018-10-02 16:59:34', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Titulo 3', 'titulo_3', 'trash', 'closed', 'closed', '', 'field_5bb3a3bfb23bc__trashed', '', '', '2018-10-02 18:50:11', '2018-10-02 18:50:11', '', 59, 'http://localhost:8080/?post_type=acf-field&#038;p=65', 1, 'acf-field', '', 0),
(66, 1, '2018-10-02 17:05:06', '2018-10-02 17:05:06', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"post\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"89\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'tarjeta4', 'tarjeta4', 'trash', 'closed', 'closed', '', 'group_5bb3a542d2e58__trashed', '', '', '2018-10-02 18:50:12', '2018-10-02 18:50:12', '', 0, 'http://localhost:8080/?post_type=acf-field-group&#038;p=66', 0, 'acf-field-group', '', 0),
(67, 1, '2018-10-02 17:05:06', '2018-10-02 17:05:06', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagen 4', 'imagen_4', 'trash', 'closed', 'closed', '', 'field_5bb3a542ea175__trashed', '', '', '2018-10-02 18:50:12', '2018-10-02 18:50:12', '', 66, 'http://localhost:8080/?post_type=acf-field&#038;p=67', 0, 'acf-field', '', 0),
(68, 1, '2018-10-02 17:05:07', '2018-10-02 17:05:07', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Titulo 4', 'titulo_4', 'trash', 'closed', 'closed', '', 'field_5bb3a542ea55d__trashed', '', '', '2018-10-02 18:50:12', '2018-10-02 18:50:12', '', 66, 'http://localhost:8080/?post_type=acf-field&#038;p=68', 1, 'acf-field', '', 0),
(69, 1, '2018-10-02 17:05:07', '2018-10-02 17:05:07', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'DescripciÃ³n 4', 'descripcion_4', 'trash', 'closed', 'closed', '', 'field_5bb3a542ea945__trashed', '', '', '2018-10-02 18:50:13', '2018-10-02 18:50:13', '', 66, 'http://localhost:8080/?post_type=acf-field&#038;p=69', 2, 'acf-field', '', 0),
(70, 1, '2018-10-02 17:05:07', '2018-10-02 17:05:07', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Enlace 4', 'enlace_4', 'trash', 'closed', 'closed', '', 'field_5bb3a542ead2d__trashed', '', '', '2018-10-02 18:50:13', '2018-10-02 18:50:13', '', 66, 'http://localhost:8080/?post_type=acf-field&#038;p=70', 3, 'acf-field', '', 0),
(71, 1, '2018-10-02 17:06:17', '2018-10-02 17:06:17', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"post\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"90\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'tarjeta5', 'tarjeta5', 'trash', 'closed', 'closed', '', 'group_5bb3a5890f57f__trashed', '', '', '2018-10-02 18:50:13', '2018-10-02 18:50:13', '', 0, 'http://localhost:8080/?post_type=acf-field-group&#038;p=71', 0, 'acf-field-group', '', 0),
(72, 1, '2018-10-02 17:06:17', '2018-10-02 17:06:17', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagen 5', 'imagen_5', 'trash', 'closed', 'closed', '', 'field_5bb3a5893a121__trashed', '', '', '2018-10-02 18:50:13', '2018-10-02 18:50:13', '', 71, 'http://localhost:8080/?post_type=acf-field&#038;p=72', 0, 'acf-field', '', 0),
(73, 1, '2018-10-02 17:06:17', '2018-10-02 17:06:17', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Titulo 5', 'titulo_5', 'trash', 'closed', 'closed', '', 'field_5bb3a5893a509__trashed', '', '', '2018-10-02 18:50:13', '2018-10-02 18:50:13', '', 71, 'http://localhost:8080/?post_type=acf-field&#038;p=73', 1, 'acf-field', '', 0),
(74, 1, '2018-10-02 17:06:17', '2018-10-02 17:06:17', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'DescripciÃ³n 5', 'descripcion_5', 'trash', 'closed', 'closed', '', 'field_5bb3a5893a8f1__trashed', '', '', '2018-10-02 18:50:13', '2018-10-02 18:50:13', '', 71, 'http://localhost:8080/?post_type=acf-field&#038;p=74', 2, 'acf-field', '', 0),
(75, 1, '2018-10-02 17:06:17', '2018-10-02 17:06:17', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Enlace 5', 'enlace_5', 'trash', 'closed', 'closed', '', 'field_5bb3a5893acd9__trashed', '', '', '2018-10-02 18:50:13', '2018-10-02 18:50:13', '', 71, 'http://localhost:8080/?post_type=acf-field&#038;p=75', 3, 'acf-field', '', 0),
(76, 1, '2018-10-02 17:07:40', '2018-10-02 17:07:40', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"post\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"91\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'tarjeta6', 'tarjeta6', 'trash', 'closed', 'closed', '', 'group_5bb3a5dcc1454__trashed', '', '', '2018-10-02 18:50:14', '2018-10-02 18:50:14', '', 0, 'http://localhost:8080/?post_type=acf-field-group&#038;p=76', 0, 'acf-field-group', '', 0),
(77, 1, '2018-10-02 17:07:40', '2018-10-02 17:07:40', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:23:\"Ingrese la descripciÃ³n\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'DescripciÃ³n 6', 'descripcion_6', 'trash', 'closed', 'closed', '', 'field_5bb3a5dcdd592__trashed', '', '', '2018-10-02 18:50:14', '2018-10-02 18:50:14', '', 76, 'http://localhost:8080/?post_type=acf-field&#038;p=77', 0, 'acf-field', '', 0),
(78, 1, '2018-10-02 17:07:40', '2018-10-02 17:07:40', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Enlace 6', 'enlace_6', 'trash', 'closed', 'closed', '', 'field_5bb3a5dcdd97b__trashed', '', '', '2018-10-02 18:50:14', '2018-10-02 18:50:14', '', 76, 'http://localhost:8080/?post_type=acf-field&#038;p=78', 1, 'acf-field', '', 0),
(79, 1, '2018-10-02 17:08:24', '2018-10-02 17:08:24', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"post\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"92\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'tarjeta7', 'tarjeta7', 'trash', 'closed', 'closed', '', 'group_5bb3a608cdd93__trashed', '', '', '2018-10-02 18:50:14', '2018-10-02 18:50:14', '', 0, 'http://localhost:8080/?post_type=acf-field-group&#038;p=79', 0, 'acf-field-group', '', 0),
(80, 1, '2018-10-02 17:08:24', '2018-10-02 17:08:24', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:23:\"Ingrese la descripciÃ³n\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'DescripciÃ³n 7', 'descripcion_7', 'trash', 'closed', 'closed', '', 'field_5bb3a608e1a00__trashed', '', '', '2018-10-02 18:50:14', '2018-10-02 18:50:14', '', 79, 'http://localhost:8080/?post_type=acf-field&#038;p=80', 0, 'acf-field', '', 0),
(81, 1, '2018-10-02 17:08:24', '2018-10-02 17:08:24', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Enlace 7', 'enlace_7', 'trash', 'closed', 'closed', '', 'field_5bb3a608e1de8__trashed', '', '', '2018-10-02 18:50:14', '2018-10-02 18:50:14', '', 79, 'http://localhost:8080/?post_type=acf-field&#038;p=81', 1, 'acf-field', '', 0),
(82, 1, '2018-10-02 17:10:19', '2018-10-02 17:10:19', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"cards8\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'tarjeta8', 'tarjeta8', 'trash', 'closed', 'closed', '', 'group_5bb3a64987381__trashed', '', '', '2018-10-02 18:50:14', '2018-10-02 18:50:14', '', 0, 'http://localhost:8080/?post_type=acf-field-group&#038;p=82', 0, 'acf-field-group', '', 0),
(83, 1, '2018-10-02 17:10:19', '2018-10-02 17:10:19', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagen 8', 'imagen_8', 'trash', 'closed', 'closed', '', 'field_5bb3a65124c37__trashed', '', '', '2018-10-02 18:50:15', '2018-10-02 18:50:15', '', 82, 'http://localhost:8080/?post_type=acf-field&#038;p=83', 0, 'acf-field', '', 0),
(84, 1, '2018-10-02 17:17:28', '2018-10-02 17:17:28', '', 'pesas', '', 'inherit', 'open', 'closed', '', 'pesas', '', '', '2018-10-02 17:17:28', '2018-10-02 17:17:28', '', 50, 'http://localhost:8080/wp-content/uploads/2018/10/pesas.jpg', 0, 'attachment', 'image/jpeg', 0),
(85, 1, '2018-10-02 17:31:25', '2018-10-02 17:31:25', '', 'germinados', '', 'inherit', 'open', 'closed', '', 'germinados', '', '', '2018-10-02 17:31:37', '2018-10-02 17:31:37', '', 50, 'http://localhost:8080/wp-content/uploads/2018/10/germinados.jpg', 0, 'attachment', 'image/jpeg', 0),
(86, 1, '2018-10-02 17:36:21', '0000-00-00 00:00:00', '', 'Borrador automÃ¡tico', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-02 17:36:21', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/?post_type=cards&p=86', 0, 'cards', '', 0),
(87, 1, '2018-10-02 17:12:08', '2018-10-02 17:12:08', 'Hay muchos alimentos que no son de origen animal que contienen calcio, y otras propiedades que benefician el organismo. Â¡No harÃ¡ falta suplementos de calcio!', '', '', 'trash', 'closed', 'closed', '', 'tarjeta-2__trashed', '', '', '2018-10-02 20:14:16', '2018-10-02 20:14:16', '', 0, 'http://localhost:8080/?post_type=cards&#038;p=87', 0, 'cards', '', 0),
(88, 1, '2018-10-02 17:51:16', '2018-10-02 17:51:16', '', 'Tarjeta 3', '', 'trash', 'closed', 'closed', '', 'tarjeta-3__trashed', '', '', '2018-10-02 19:20:51', '2018-10-02 19:20:51', '', 0, 'http://localhost:8080/?post_type=cards&#038;p=88', 0, 'cards', '', 0),
(89, 1, '2018-10-02 19:19:12', '2018-10-02 19:19:12', 'â€œlas dietas vegetarianas adecuadamente planificadas, incluidas las dietas totalmente vegetarianas o veganas, son saludables, nutricionalmente adecuadas, y pueden proporcionar beneficios para la saludâ€.', 'Ejercicio y una dieta balanceada.', '', 'trash', 'closed', 'closed', '', 'ejercicio-y-una-dieta-balanceada__trashed', '', '', '2018-10-03 03:41:15', '2018-10-03 03:41:15', '', 0, 'http://localhost:8080/?post_type=cards&#038;p=89', 0, 'cards', '', 0),
(90, 1, '2018-10-02 18:59:06', '2018-10-02 18:59:06', 'Se imaginan un multivitamÃ­nico 100% Natural, EcolÃ³gico y Medicinal, bueno eso son los germinados son pequeÃ±as plantas en su primera etapa de crecimiento tienen un inmenso poder nutricional, es un alimento vivo que incrementa sus propiedades hasta el mismo minuto de su consumo.', 'Germinados.', '', 'trash', 'closed', 'closed', '', 'germinados__trashed', '', '', '2018-10-03 03:41:16', '2018-10-03 03:41:16', '', 0, 'http://localhost:8080/?post_type=cards&#038;p=90', 0, 'cards', '', 0),
(91, 1, '2018-10-02 18:56:12', '2018-10-02 18:56:12', '', '', '', 'trash', 'closed', 'closed', '', '91__trashed', '', '', '2018-10-03 03:41:16', '2018-10-03 03:41:16', '', 0, 'http://localhost:8080/?post_type=cards&#038;p=91', 0, 'cards', '', 0),
(92, 1, '2018-10-02 18:55:19', '2018-10-02 18:55:19', 'En este invierno es muy importante que aumentes el consumo de productos ricos en Vitamina C. Limones, naranja, mandarinas, entre otras son frutas que te ayudarÃ¡n a proteger tu salud.', '', '', 'trash', 'closed', 'closed', '', '92__trashed', '', '', '2018-10-02 20:14:15', '2018-10-02 20:14:15', '', 0, 'http://localhost:8080/?post_type=cards&#038;p=92', 0, 'cards', '', 0),
(93, 1, '2018-10-02 17:57:42', '2018-10-02 17:57:42', 'La Chia tiene mÃ¡s calcio que la leche, nos aporta el triple de antioxidantes y contiene las mismas fibras que la avena y aporta 2 veces mÃ¡s potasio que el plÃ¡tano.', 'Sabias Que...', '', 'trash', 'closed', 'closed', '', 'tarjeta-8__trashed', '', '', '2018-10-02 20:14:15', '2018-10-02 20:14:15', '', 0, 'http://localhost:8080/?post_type=cards&#038;p=93', 0, 'cards', '', 0),
(94, 1, '2018-10-02 17:55:32', '2018-10-02 17:55:32', '', 'vitamina', '', 'inherit', 'open', 'closed', '', 'vitamina', '', '', '2018-10-02 17:55:42', '2018-10-02 17:55:42', '', 93, 'http://localhost:8080/wp-content/uploads/2018/10/vitamina.jpg', 0, 'attachment', 'image/jpeg', 0),
(96, 1, '2018-10-02 18:08:27', '2018-10-02 18:08:27', '', 'tarjeta8', '', 'publish', 'closed', 'closed', '', 'tarjeta8', '', '', '2018-10-02 18:16:20', '2018-10-02 18:16:20', '', 0, 'http://localhost:8080/?post_type=cards8&#038;p=96', 0, 'cards8', '', 0),
(98, 1, '2018-10-02 20:15:27', '2018-10-02 20:15:27', 'Hay muchos alimentos que no son de origen animal que contienen calcio, y otras propiedades que benefician el organismo. Â¡No harÃ¡ falta suplementos de calcio!', '', '', 'trash', 'closed', 'closed', '', '98__trashed', '', '', '2018-10-03 03:41:15', '2018-10-03 03:41:15', '', 0, 'http://localhost:8080/?post_type=cards&#038;p=98', 0, 'cards', '', 0),
(99, 1, '2018-10-02 20:30:46', '2018-10-02 20:30:46', 'La Chia tiene mÃ¡s calcio que la leche, nos aporta el triple de antioxidantes y contiene las mismas fibras que la avena y aporta 2 veces mÃ¡s potasio que el plÃ¡tano.', 'Sabias Que...', '', 'trash', 'closed', 'closed', '', 'sabias-que__trashed', '', '', '2018-10-03 03:41:15', '2018-10-03 03:41:15', '', 0, 'http://localhost:8080/?post_type=cards&#038;p=99', 0, 'cards', '', 0),
(100, 1, '2018-10-02 20:40:42', '2018-10-02 20:40:42', ' ', '', '', 'publish', 'closed', 'closed', '', '100', '', '', '2018-10-03 01:45:34', '2018-10-03 01:45:34', '', 0, 'http://localhost:8080/?p=100', 6, 'nav_menu_item', '', 0),
(101, 1, '2018-10-02 20:40:42', '2018-10-02 20:40:42', ' ', '', '', 'publish', 'closed', 'closed', '', '101', '', '', '2018-10-03 01:45:34', '2018-10-03 01:45:34', '', 0, 'http://localhost:8080/?p=101', 5, 'nav_menu_item', '', 0),
(102, 1, '2018-10-02 20:40:42', '2018-10-02 20:40:42', ' ', '', '', 'publish', 'closed', 'closed', '', '102', '', '', '2018-10-03 01:45:34', '2018-10-03 01:45:34', '', 0, 'http://localhost:8080/?p=102', 4, 'nav_menu_item', '', 0),
(103, 1, '2018-10-02 20:40:41', '2018-10-02 20:40:41', ' ', '', '', 'publish', 'closed', 'closed', '', '103', '', '', '2018-10-03 01:45:34', '2018-10-03 01:45:34', '', 0, 'http://localhost:8080/?p=103', 3, 'nav_menu_item', '', 0),
(104, 1, '2018-10-02 20:40:41', '2018-10-02 20:40:41', ' ', '', '', 'publish', 'closed', 'closed', '', '104', '', '', '2018-10-03 01:45:34', '2018-10-03 01:45:34', '', 0, 'http://localhost:8080/?p=104', 2, 'nav_menu_item', '', 0),
(105, 1, '2018-10-02 22:42:18', '2018-10-02 22:42:18', '<form>\r\n                  <div class=\"form-row ml-2\">\r\n                    <div class=\"form-group col-md-6\">\r\n                      <label for=\"Firstname\"></label>\r\n                      <input type=\"text\" class=\"form-control\" id=\"inputname\" placeholder=\"Nombre\">\r\n                    </div>\r\n\r\n                    <div class=\"form-group col-md-6\">\r\n                      <label for=\"inputlastname\"></label>\r\n                      <input type=\"text\" class=\"form-control\" id=\"inputlastname\" placeholder=\"ApellÃ­do\">\r\n                    </div>\r\n                  </div>\r\n\r\n                  <div class=\"form-group col-md-12\">\r\n                    <label for=\"inputEmail4\"></label>\r\n                    <input type=\"email\" class=\"form-control\" id=\"inputEmail4\" placeholder=\"Email\">\r\n                  </div>\r\n\r\n                  <div class=\"form-group col-md-6\">\r\n                    <label for=\"inputphone\"></label>\r\n                    <input type=\"text\" class=\"form-control\" id=\"inputphone\" placeholder=\"TelÃ©fono\">\r\n                  </div>\r\n\r\n                  <div class=\"form-group col-md-6\">\r\n                    <label for=\"inputAffair\"></label>\r\n                    <input type=\"text\" class=\"form-control\" id=\"inputAffair\" placeholder=\"Asunto\">\r\n                  </div>\r\n\r\n                  <div class=\"form-group col-sm\">\r\n                    <label for=\"inputAffair\"></label>\r\n                    <textarea class=\"form-control\" aria-label=\"With textarea\"  \r\n                     placeholder=\"Mensaje\"></textarea>\r\n                    \r\n                  </div>\r\n\r\n                  <button type=\"submit\" class=\"btn btn-success ml-4 pl-5 pr-5\">Enviar</button>\r\n                </form>\n1\nQuilicura | Vegariano \"[your-subject]\"\n[your-name] <elemon20@hotmail.com>\nelemon20@hotmail.com\nDe: [your-name] <[your-email]>\r\nAsunto: [your-subject]\r\n\r\nCuerpo del mensaje:\r\n[your-message]\r\n\r\n-- \r\nEste mensaje se ha enviado desde un formulario de contacto en Quilicura | Vegariano (http://localhost:8080)\nelemon20@hotmail.com\n\n\n\n\nQuilicura | Vegariano \"[your-subject]\"\nQuilicura | Vegariano <elemon20@hotmail.com>\n[your-email]\nCuerpo del mensaje:\r\n[your-message]\r\n\r\n-- \r\nEste mensaje se ha enviado desde un formulario de contacto en Quilicura | Vegariano (http://localhost:8080)\nReply-To: elemon20@hotmail.com\n\n\n\nGracias por tu mensaje. Ha sido enviado.\nHubo un error intentando enviar tu mensaje. Por favor intÃ©ntalo de nuevo mÃ¡s tarde.\nUno o mÃ¡s campos tienen un error. Por favor revisa e intÃ©ntalo de nuevo.\nHubo un error intentando enviar tu mensaje. Por favor intÃ©ntalo de nuevo mÃ¡s tarde.\nDebes aceptar los tÃ©rminos y condiciones antes de enviar tu mensaje.\nEl campo es obligatorio.\nEl campo es demasiado largo.\nEl campo es demasiado corto.\nEl formato de fecha es incorrecto.\nLa fecha es anterior a la mÃ¡s temprana permitida.\nLa fecha es posterior a la mÃ¡s tardÃ­a permitida.\nHubo un error desconocido subiendo el archivo.\nNo tienes permisos para subir archivos de este tipo.\nEl archivo es demasiado grande.\nSe ha producido un error subiendo la imagen\nEl formato de nÃºmero no es vÃ¡lido.\nEl nÃºmero es menor que el mÃ­nimo permitido.\nEl nÃºmero es mayor que el mÃ¡ximo permitido.\nLa respuesta al cuestionario no es correcta.\nEl cÃ³digo introducido es incorrecto.\nLa direcciÃ³n de correo electrÃ³nico que has introducido no es vÃ¡lida.\nLa URL no es vÃ¡lida.\nEl nÃºmero de telÃ©fono no es vÃ¡lido.', 'Formulario de contacto 1', '', 'publish', 'closed', 'closed', '', 'formulario-de-contacto-1', '', '', '2018-10-03 14:31:30', '2018-10-03 14:31:30', '', 0, 'http://localhost:8080/?post_type=wpcf7_contact_form&#038;p=105', 0, 'wpcf7_contact_form', '', 0),
(106, 1, '2018-10-02 23:54:17', '2018-10-02 23:54:17', '[contact-form-7 id=\"105\" title=\"Formulario de contacto 1\"]', 'Contacto', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2018-10-02 23:54:17', '2018-10-02 23:54:17', '', 20, 'http://localhost:8080/20-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2018-10-03 16:32:15', '2018-10-03 16:32:15', '[wpgmza id=\"1\"]', 'Contacto', '', 'inherit', 'closed', 'closed', '', '20-autosave-v1', '', '', '2018-10-03 16:32:15', '2018-10-03 16:32:15', '', 20, 'http://localhost:8080/20-autosave-v1/', 0, 'revision', '', 0),
(108, 1, '2018-10-03 01:45:34', '2018-10-03 01:45:34', '', 'Inicio', '', 'publish', 'closed', 'closed', '', 'inicio', '', '', '2018-10-03 01:45:34', '2018-10-03 01:45:34', '', 0, 'http://localhost:8080/?p=108', 1, 'nav_menu_item', '', 0);
INSERT INTO `dl_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(109, 1, '2018-10-03 02:12:37', '2018-10-03 02:12:37', '                <form>\r\n                  <div class=\"form-row ml-2\">\r\n                    <div class=\"form-group col-md-6\">\r\n                      <label for=\"Firstname\"></label>\r\n                      <input type=\"text\" class=\"form-control\" id=\"inputname\" placeholder=\"Nombre\">\r\n                    </div>\r\n\r\n                    <div class=\"form-group col-md-6\">\r\n                      <label for=\"inputlastname\"></label>\r\n                      <input type=\"text\" class=\"form-control\" id=\"inputlastname\" placeholder=\"ApellÃ­do\">\r\n                    </div>\r\n                   </div>\r\n\r\n                   <div class=\"form-group col-md-12\">\r\n                    <label for=\"inputEmail4\"></label>\r\n                    <input type=\"email\" class=\"form-control\" id=\"inputEmail4\" placeholder=\"Email\">\r\n                  </div>\r\n\r\n                  <div class=\"form-group col-md-6\">\r\n                    <label for=\"inputphone\"></label>\r\n                    <input type=\"text\" class=\"form-control\" id=\"inputphone\" placeholder=\"TelÃ©fono\">\r\n                  </div>\r\n\r\n                  <div class=\"form-group col-md-6\">\r\n                    <label for=\"inputAffair\"></label>\r\n                    <input type=\"text\" class=\"form-control\" id=\"inputAffair\" placeholder=\"Asunto\">\r\n                  </div>\r\n\r\n                  <div class=\"form-group col-sm\">\r\n                    <label for=\"inputAffair\"></label>\r\n                    <textarea class=\"form-control\" aria-label=\"With textarea\"  placeholder=\"Mensaje\"></textarea>\r\n                    \r\n                  </div>\r\n\r\n                  <button type=\"submit\" class=\"btn btn-success ml-4 pl-5 pr-5\">Enviar</button>\r\n                </form>', 'Contacto', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2018-10-03 02:12:37', '2018-10-03 02:12:37', '', 20, 'http://localhost:8080/20-revision-v1/', 0, 'revision', '', 0),
(110, 1, '2018-10-03 02:17:59', '2018-10-03 02:17:59', '<form>\r\n<div class=\"form-row ml-2\">\r\n<div class=\"form-group col-md-6\"><label for=\"Firstname\"></label>\r\n<input id=\"inputname\" class=\"form-control\" type=\"text\" placeholder=\"Nombre\" /></div>\r\n<div class=\"form-group col-md-6\"><label for=\"inputlastname\"></label>\r\n<input id=\"inputlastname\" class=\"form-control\" type=\"text\" placeholder=\"ApellÃ­do\" /></div>\r\n</div>\r\n<div class=\"form-group col-md-12\"><label for=\"inputEmail4\"></label>\r\n<input id=\"inputEmail4\" class=\"form-control\" type=\"email\" placeholder=\"Email\" /></div>\r\n<div class=\"form-group col-md-6\"><label for=\"inputphone\"></label>\r\n<input id=\"inputphone\" class=\"form-control\" type=\"text\" placeholder=\"TelÃ©fono\" /></div>\r\n<div class=\"form-group col-md-6\"><label for=\"inputAffair\"></label>\r\n<input id=\"inputAffair\" class=\"form-control\" type=\"text\" placeholder=\"Asunto\" /></div>\r\n<div class=\"form-group col-sm\"><label for=\"inputAffair\"></label>\r\n<textarea class=\"form-control\" placeholder=\"Mensaje\" aria-label=\"With textarea\"></textarea></div>\r\n<button class=\"btn btn-success ml-4 pl-5 pr-5\" type=\"submit\">Enviar</button>\r\n\r\n</form>', 'Contacto', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2018-10-03 02:17:59', '2018-10-03 02:17:59', '', 20, 'http://localhost:8080/20-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2018-10-03 03:42:52', '0000-00-00 00:00:00', '', 'Borrador automÃ¡tico', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-10-03 03:42:52', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/?p=111', 0, 'post', '', 0),
(112, 1, '2018-10-03 03:51:37', '2018-10-03 03:51:37', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"post\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"116\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'tarjeta 2', 'tarjeta-2', 'publish', 'closed', 'closed', '', 'group_5bb43c87651a7', '', '', '2018-10-03 04:55:51', '2018-10-03 04:55:51', '', 0, 'http://localhost:8080/?post_type=acf-field-group&#038;p=112', 0, 'acf-field-group', '', 0),
(113, 1, '2018-10-03 03:51:38', '2018-10-03 03:51:38', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Enlace 2', 'enlace_2', 'publish', 'closed', 'closed', '', 'field_5bb43c8f60f87', '', '', '2018-10-03 03:51:38', '2018-10-03 03:51:38', '', 112, 'http://localhost:8080/?post_type=acf-field&p=113', 0, 'acf-field', '', 0),
(114, 1, '2018-10-03 03:54:02', '2018-10-03 03:54:02', 'Hay muchos alimentos que no son de origen animal que contienen calcio, y otras propiedades que benefician el organismo. Â¡No harÃ¡ falta suplementos de calcio!', 'tarjeta 2', '', 'trash', 'closed', 'closed', '', 'tarjeta-2__trashed-2', '', '', '2018-10-03 03:55:00', '2018-10-03 03:55:00', '', 0, 'http://localhost:8080/?post_type=cards&#038;p=114', 0, 'cards', '', 0),
(115, 1, '2018-10-03 04:05:31', '2018-10-03 04:05:31', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'texto 2', 'texto_2', 'publish', 'closed', 'closed', '', 'field_5bb43fdb65f7f', '', '', '2018-10-03 04:05:31', '2018-10-03 04:05:31', '', 112, 'http://localhost:8080/?post_type=acf-field&p=115', 1, 'acf-field', '', 0),
(116, 1, '2018-10-03 04:06:34', '2018-10-03 04:06:34', '', 'tarjeta 2', '', 'publish', 'closed', 'closed', '', 'tarjeta-2', '', '', '2018-10-03 04:06:34', '2018-10-03 04:06:34', '', 0, 'http://localhost:8080/?post_type=cards2&#038;p=116', 0, 'cards2', '', 0),
(117, 1, '2018-10-03 04:34:30', '2018-10-03 04:34:30', '', 'Ejercicio y dieta balanceada', '', 'draft', 'closed', 'closed', '', 'ejercicio-y-dieta-balanceada', '', '', '2018-10-03 05:02:31', '2018-10-03 05:02:31', '', 0, 'http://localhost:8080/?post_type=cards2&#038;p=117', 0, 'cards2', '', 0),
(118, 1, '2018-10-03 04:28:47', '2018-10-03 04:28:47', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"cards3\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'tarjeta 3', 'tarjeta-3', 'publish', 'closed', 'closed', '', 'group_5bb4457f6cc04', '', '', '2018-10-03 05:11:54', '2018-10-03 05:11:54', '', 0, 'http://localhost:8080/?post_type=acf-field-group&#038;p=118', 0, 'acf-field-group', '', 0),
(119, 1, '2018-10-03 04:28:47', '2018-10-03 04:28:47', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Enlace 3', 'enlace_3', 'publish', 'closed', 'closed', '', 'field_5bb4457f8faa5', '', '', '2018-10-03 04:31:12', '2018-10-03 04:31:12', '', 118, 'http://localhost:8080/?post_type=acf-field&#038;p=119', 0, 'acf-field', '', 0),
(120, 1, '2018-10-03 04:28:47', '2018-10-03 04:28:47', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'texto 3', 'texto_3', 'publish', 'closed', 'closed', '', 'field_5bb4457f8fe8d', '', '', '2018-10-03 04:31:12', '2018-10-03 04:31:12', '', 118, 'http://localhost:8080/?post_type=acf-field&#038;p=120', 1, 'acf-field', '', 0),
(121, 1, '2018-10-03 04:36:15', '2018-10-03 04:36:15', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'titulo 3', 'titulo_3', 'publish', 'closed', 'closed', '', 'field_5bb447340ff8d', '', '', '2018-10-03 04:36:15', '2018-10-03 04:36:15', '', 118, 'http://localhost:8080/?post_type=acf-field&p=121', 2, 'acf-field', '', 0),
(122, 1, '2018-10-03 04:38:20', '2018-10-03 04:38:20', '', 'Ejercic', '', 'inherit', 'closed', 'closed', '', '117-autosave-v1', '', '', '2018-10-03 04:38:20', '2018-10-03 04:38:20', '', 117, 'http://localhost:8080/117-autosave-v1/', 0, 'revision', '', 0),
(123, 1, '2018-10-03 05:12:22', '2018-10-03 05:12:22', '', 'Ejercicio y una dieta balanceada.', '', 'publish', 'closed', 'closed', '', 'ejercicio-y-una-dieta-balanceada', '', '', '2018-10-03 05:12:22', '2018-10-03 05:12:22', '', 0, 'http://localhost:8080/?post_type=cards3&#038;p=123', 0, 'cards3', '', 0),
(124, 1, '2018-10-03 05:19:14', '2018-10-03 05:19:14', '', 'frase', '', 'publish', 'closed', 'closed', '', 'frase', '', '', '2018-10-03 05:31:32', '2018-10-03 05:31:32', '', 0, 'http://localhost:8080/?post_type=cards4&#038;p=124', 0, 'cards4', '', 0),
(125, 1, '2018-10-03 05:21:26', '2018-10-03 05:21:26', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"cards4\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'tarjeta 4', 'tarjeta-4', 'publish', 'closed', 'closed', '', 'group_5bb451d63e876', '', '', '2018-10-03 05:27:51', '2018-10-03 05:27:51', '', 0, 'http://localhost:8080/?post_type=acf-field-group&#038;p=125', 0, 'acf-field-group', '', 0),
(126, 1, '2018-10-03 05:21:26', '2018-10-03 05:21:26', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Enlace 4', 'enlace_4', 'publish', 'closed', 'closed', '', 'field_5bb451d669030', '', '', '2018-10-03 05:22:13', '2018-10-03 05:22:13', '', 125, 'http://localhost:8080/?post_type=acf-field&#038;p=126', 0, 'acf-field', '', 0),
(127, 1, '2018-10-03 05:21:26', '2018-10-03 05:21:26', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'texto 4', 'texto_4', 'publish', 'closed', 'closed', '', 'field_5bb451d669418', '', '', '2018-10-03 05:22:13', '2018-10-03 05:22:13', '', 125, 'http://localhost:8080/?post_type=acf-field&#038;p=127', 1, 'acf-field', '', 0),
(128, 1, '2018-10-03 05:23:29', '2018-10-03 05:23:29', '', 'frase', '', 'inherit', 'closed', 'closed', '', '124-autosave-v1', '', '', '2018-10-03 05:23:29', '2018-10-03 05:23:29', '', 124, 'http://localhost:8080/124-autosave-v1/', 0, 'revision', '', 0),
(129, 1, '2018-10-03 05:27:51', '2018-10-03 05:27:51', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'cita', 'cita', 'publish', 'closed', 'closed', '', 'field_5bb4533cd3b31', '', '', '2018-10-03 05:27:51', '2018-10-03 05:27:51', '', 125, 'http://localhost:8080/?post_type=acf-field&p=129', 2, 'acf-field', '', 0),
(130, 1, '2018-10-03 05:42:53', '2018-10-03 05:42:53', '', 'germinados', '', 'publish', 'closed', 'closed', '', 'germinados', '', '', '2018-10-03 05:42:53', '2018-10-03 05:42:53', '', 0, 'http://localhost:8080/?post_type=cards5&#038;p=130', 0, 'cards5', '', 0),
(131, 1, '2018-10-03 05:37:58', '2018-10-03 05:37:58', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"cards5\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'tarjeta 5', 'tarjeta-5', 'publish', 'closed', 'closed', '', 'group_5bb455b690034', '', '', '2018-10-03 05:40:35', '2018-10-03 05:40:35', '', 0, 'http://localhost:8080/?post_type=acf-field-group&#038;p=131', 0, 'acf-field-group', '', 0),
(132, 1, '2018-10-03 05:37:58', '2018-10-03 05:37:58', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Enlace 5', 'enlace_5', 'publish', 'closed', 'closed', '', 'field_5bb455b6c28d8', '', '', '2018-10-03 05:40:35', '2018-10-03 05:40:35', '', 131, 'http://localhost:8080/?post_type=acf-field&#038;p=132', 0, 'acf-field', '', 0),
(133, 1, '2018-10-03 05:37:58', '2018-10-03 05:37:58', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:23:\"ingrese la descripciÃ³n\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:2:\"br\";}', 'texto 5', 'texto_5', 'publish', 'closed', 'closed', '', 'field_5bb455b6c2cc0', '', '', '2018-10-03 05:40:35', '2018-10-03 05:40:35', '', 131, 'http://localhost:8080/?post_type=acf-field&#038;p=133', 1, 'acf-field', '', 0),
(134, 1, '2018-10-03 05:37:58', '2018-10-03 05:37:58', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'titulo 5', 'titulo_5', 'publish', 'closed', 'closed', '', 'field_5bb455b6c30a8', '', '', '2018-10-03 05:40:35', '2018-10-03 05:40:35', '', 131, 'http://localhost:8080/?post_type=acf-field&#038;p=134', 2, 'acf-field', '', 0),
(135, 1, '2018-10-03 05:44:28', '2018-10-03 05:44:28', '', '', '', 'trash', 'closed', 'closed', '', '135__trashed', '', '', '2018-10-03 05:44:50', '2018-10-03 05:44:50', '', 0, 'http://localhost:8080/?post_type=cards5&#038;p=135', 0, 'cards5', '', 0),
(136, 1, '2018-10-03 05:51:41', '2018-10-03 05:51:41', '', 'vitaminas', '', 'publish', 'closed', 'closed', '', 'vitaminas', '', '', '2018-10-03 05:51:41', '2018-10-03 05:51:41', '', 0, 'http://localhost:8080/?post_type=cards6&#038;p=136', 0, 'cards6', '', 0),
(137, 1, '2018-10-03 16:32:17', '2018-10-03 16:32:17', '[wpgmza id=\"1\"]', 'Contacto', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2018-10-03 16:32:17', '2018-10-03 16:32:17', '', 20, 'http://localhost:8080/20-revision-v1/', 0, 'revision', '', 0),
(138, 1, '2018-10-03 16:38:08', '2018-10-03 16:38:08', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"20\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'mapa', 'mapa', 'publish', 'closed', 'closed', '', 'group_5bb4ef5ed8bb5', '', '', '2018-10-03 18:11:12', '2018-10-03 18:11:12', '', 0, 'http://localhost:8080/?post_type=acf-field-group&#038;p=138', 0, 'acf-field-group', '', 0),
(139, 1, '2018-10-03 16:38:08', '2018-10-03 16:38:08', 'a:9:{s:4:\"type\";s:10:\"google_map\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:10:\"center_lat\";s:11:\"-33.3673029\";s:10:\"center_lng\";s:11:\"-70.7332069\";s:4:\"zoom\";i:10;s:6:\"height\";i:400;}', 'mapa', 'mapa', 'publish', 'closed', 'closed', '', 'field_5bb4ef62e659b', '', '', '2018-10-03 16:38:08', '2018-10-03 16:38:08', '', 138, 'http://localhost:8080/?post_type=acf-field&p=139', 0, 'acf-field', '', 0),
(140, 1, '2018-10-03 16:39:32', '2018-10-03 16:39:32', '[wpgmza id=\"1\"]', 'Contacto', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2018-10-03 16:39:32', '2018-10-03 16:39:32', '', 20, 'http://localhost:8080/20-revision-v1/', 0, 'revision', '', 0),
(141, 1, '2018-10-03 17:40:47', '2018-10-03 17:40:47', '', 'Contacto', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2018-10-03 17:40:47', '2018-10-03 17:40:47', '', 20, 'http://localhost:8080/20-revision-v1/', 0, 'revision', '', 0),
(142, 1, '2018-10-03 18:00:06', '0000-00-00 00:00:00', '', 'Borrador automÃ¡tico', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-03 18:00:06', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/?post_type=cards&p=142', 0, 'cards', '', 0),
(143, 1, '2018-10-03 22:03:32', '2018-10-03 22:03:32', 'Las lentejas estimulan el buen funcionamiento del sistema nervioso, combaten la retencioÌn de liÌquidos y ayudan a prevenir la anemia.\r\n		<br>\r\n		<br>\r\n		Las lentejas ademÃ¡s de ser saludables, son extremadamente versÃ¡tiles en la cocina, por lo que puedes consumirlas sin aburrirte nunca. Si incluyes las lentejas en tu alimentaciÃ³n te beneficiarÃ¡s tanto a corto como a largo plazo, sigue leyendo este artÃ­culo para conocer los beneficios:\r\n		<br>\r\n		<br>\r\n		<strong>Fibra dietÃ©tica</strong>\r\n		<br>\r\n		<br>\r\n		Una sola taza de lentejas cocidas contiene 16 gramos de fibra dietÃ©tica, o 63% de la cantidad diaria recomendada de fibra por el Departamento de Agricultura de Los Estados Unidos para una mujer u hombre adulto con una dieta de 2000 calorÃ­as. Â¡Las lentejas son una excelente fuente de fibras solubles!\r\n		<br>\r\n		<br>\r\n		Una dieta que incluya buenas fibras solubles puede regular las deposiciones, promover la salud del sistema digestivo y ademÃ¡s puede disminuir significativamente el riesgo de desarrollar cÃ¡ncer de color, garganta, mama y esÃ³fago.\r\n		<br>\r\n		<br>\r\n		Los alimentos ricos en fibra como las lentejas pueden tambiÃ©n ayudar a prevenir derrames cerebrales, enfermedades del corazÃ³n, diabetes, niveles altos de colesterol en la sangre e hipertensiÃ³n.\r\n		<br>\r\n		<br>\r\n		<strong>ProteÃ­na magra</strong>\r\n		<br>\r\n		<br>\r\n		Las lentejas cocidas proporcionan 18 gramos de proteÃ­na por taza con menos de 1 gramo de grasa, muy poca grasa saturada y nada de colesterol.\r\n		<br>\r\n		<br>\r\n		En comparaciÃ³n con las carnes rojas, las aves de corral y el pescado que son buenas fuentes de proteÃ­na pero con alto contenido de grasas saturadas y colesterol, las lentejas son una mejor opciÃ³n de proteÃ­nas.\r\n		<br>\r\n		<br>\r\n		Sustituir la proteÃ­na animal por granos podrÃ­a reducir tu riesgo de fallecer por alguna enfermedad, incluyendo el cÃ¡ncer y los ataques al corazÃ³n. Es importante tener en cuenta tambiÃ©n que las lentejas no incluyen todos los aminoÃ¡cidos que el cuerpo requiere para sintetizar las proteÃ­nas.\r\n		<br>\r\n		<br>\r\n		CombÃ­nalas con cereales como el arroz o pan de trigo integral para tener una ingesta de proteÃ­na mÃ¡s completa.\r\n		<br>\r\n		<br>\r\n		<strong>Folato</strong>\r\n		<br>\r\n		<br>\r\n		Cada taza de lentejas cocidas tiene 358 microgramos de folato. Esta cantidad suministra casi el 100 por ciento de los 400 gramos de folato que se requieren a diario. El folato, tambiÃ©n conocido como Ã¡cido fÃ³lico o vitamina B-9, respalda la salud del sistema nervioso, ayuda en el metabolismo energÃ©tico y es necesario para la sÃ­ntesis del ADN, ARN (Ã¡cido ribunocleico) y glÃ³bulos rojos.\r\n		<br>\r\n		<br>\r\n		Si a tu dieta le falta folato, tienes mÃ¡s probabilidades de desarrollar cÃ¡ncer, depresiÃ³n, enfermedades del corazÃ³n, pÃ©rdida de la visiÃ³n o la audiciÃ³n debido a la edad. Es especialmente importante para las mujeres en gestaciÃ³n incluir alimentos ricos en folato como las lentejas.\r\n		<br>\r\n		<br>\r\n		Todas aquÃ©llas mujeres en gestaciÃ³n que consumen al menos 600 microgramos de folato diariamente disminuyen el riesgo de que el bebÃ© nazca con algÃºn defecto.\r\n		<br>\r\n		<br>\r\n		<strong>Hierro</strong>\r\n		<br>\r\n		<br>\r\n		Tan solo una taza de lentejas proporciona 87 por ciento del hierro que los hombres necesitan diariamente, y el 38 por ciento que las mujeres necesitan. Recuerda que el cuerpo usa hierro para producir glÃ³bulos rojos y trifosfato de adenosina (ATP).\r\n		<br>\r\n		<br>\r\n		Las personas que tienen deficiencia de hierro pueden desarrollar anemia o problemas neurolÃ³gicos como dÃ©ficit de atenciÃ³n e hiperactividad. El hierro en alimentos de origen vegetal, como las lentejas, es el hierro no hemo, una forma de hierro que no se absorbe fÃ¡cilmente como el hierro hemo encontrado en las carnes rojas, las aves de corral y el pescado.\r\n		<br>\r\n		<br>\r\n		Sin embargo, puedes incrementar la cantidad de hierro obtenida de las lentejas si las combinas con carne o con alguna fuente rica en vitamina. Prepara las lentejas en sopa o en estofados, o mÃ©zclalas en ensaladas con verduras de hojas verdes.\r\n		<br>\r\n		<br>\r\n		Las lentejas no son solo legumbres deliciosas y versÃ¡tiles de preparar, son una fuente de vida para todo el que las consuma: estÃ¡n llenas de fibra dietÃ©tica, proteÃ­na magra, folato y hierro. Si no eres fanÃ¡tico de estos granos es hora de que comiences a incluirlos en tu dieta.\r\n		<br>\r\n		<br>\r\n		Claro estÃ¡ que no tiene que ser a diario, lo importante es que coas las lentejas en algÃºn momento. Prueba prepararlas como albÃ³ndigas, hamburguesas, croquetas, sopas, etc. hasta que encuentres la manera en la que mÃ¡s te guste consumirlas. Â¿EstÃ¡s listo para consumir mÃ¡s lentejas y mejorar tu salud?', 'Beneficios de las lentejas.', '', 'publish', 'open', 'open', '', 'beneficios-de-las-lentejas', '', '', '2018-10-03 22:03:32', '2018-10-03 22:03:32', '', 0, 'http://localhost:8080/?p=143', 0, 'post', '', 0),
(144, 1, '2018-10-03 22:03:32', '2018-10-03 22:03:32', 'Las lentejas estimulan el buen funcionamiento del sistema nervioso, combaten la retencioÌn de liÌquidos y ayudan a prevenir la anemia.\r\n		<br>\r\n		<br>\r\n		Las lentejas ademÃ¡s de ser saludables, son extremadamente versÃ¡tiles en la cocina, por lo que puedes consumirlas sin aburrirte nunca. Si incluyes las lentejas en tu alimentaciÃ³n te beneficiarÃ¡s tanto a corto como a largo plazo, sigue leyendo este artÃ­culo para conocer los beneficios:\r\n		<br>\r\n		<br>\r\n		<strong>Fibra dietÃ©tica</strong>\r\n		<br>\r\n		<br>\r\n		Una sola taza de lentejas cocidas contiene 16 gramos de fibra dietÃ©tica, o 63% de la cantidad diaria recomendada de fibra por el Departamento de Agricultura de Los Estados Unidos para una mujer u hombre adulto con una dieta de 2000 calorÃ­as. Â¡Las lentejas son una excelente fuente de fibras solubles!\r\n		<br>\r\n		<br>\r\n		Una dieta que incluya buenas fibras solubles puede regular las deposiciones, promover la salud del sistema digestivo y ademÃ¡s puede disminuir significativamente el riesgo de desarrollar cÃ¡ncer de color, garganta, mama y esÃ³fago.\r\n		<br>\r\n		<br>\r\n		Los alimentos ricos en fibra como las lentejas pueden tambiÃ©n ayudar a prevenir derrames cerebrales, enfermedades del corazÃ³n, diabetes, niveles altos de colesterol en la sangre e hipertensiÃ³n.\r\n		<br>\r\n		<br>\r\n		<strong>ProteÃ­na magra</strong>\r\n		<br>\r\n		<br>\r\n		Las lentejas cocidas proporcionan 18 gramos de proteÃ­na por taza con menos de 1 gramo de grasa, muy poca grasa saturada y nada de colesterol.\r\n		<br>\r\n		<br>\r\n		En comparaciÃ³n con las carnes rojas, las aves de corral y el pescado que son buenas fuentes de proteÃ­na pero con alto contenido de grasas saturadas y colesterol, las lentejas son una mejor opciÃ³n de proteÃ­nas.\r\n		<br>\r\n		<br>\r\n		Sustituir la proteÃ­na animal por granos podrÃ­a reducir tu riesgo de fallecer por alguna enfermedad, incluyendo el cÃ¡ncer y los ataques al corazÃ³n. Es importante tener en cuenta tambiÃ©n que las lentejas no incluyen todos los aminoÃ¡cidos que el cuerpo requiere para sintetizar las proteÃ­nas.\r\n		<br>\r\n		<br>\r\n		CombÃ­nalas con cereales como el arroz o pan de trigo integral para tener una ingesta de proteÃ­na mÃ¡s completa.\r\n		<br>\r\n		<br>\r\n		<strong>Folato</strong>\r\n		<br>\r\n		<br>\r\n		Cada taza de lentejas cocidas tiene 358 microgramos de folato. Esta cantidad suministra casi el 100 por ciento de los 400 gramos de folato que se requieren a diario. El folato, tambiÃ©n conocido como Ã¡cido fÃ³lico o vitamina B-9, respalda la salud del sistema nervioso, ayuda en el metabolismo energÃ©tico y es necesario para la sÃ­ntesis del ADN, ARN (Ã¡cido ribunocleico) y glÃ³bulos rojos.\r\n		<br>\r\n		<br>\r\n		Si a tu dieta le falta folato, tienes mÃ¡s probabilidades de desarrollar cÃ¡ncer, depresiÃ³n, enfermedades del corazÃ³n, pÃ©rdida de la visiÃ³n o la audiciÃ³n debido a la edad. Es especialmente importante para las mujeres en gestaciÃ³n incluir alimentos ricos en folato como las lentejas.\r\n		<br>\r\n		<br>\r\n		Todas aquÃ©llas mujeres en gestaciÃ³n que consumen al menos 600 microgramos de folato diariamente disminuyen el riesgo de que el bebÃ© nazca con algÃºn defecto.\r\n		<br>\r\n		<br>\r\n		<strong>Hierro</strong>\r\n		<br>\r\n		<br>\r\n		Tan solo una taza de lentejas proporciona 87 por ciento del hierro que los hombres necesitan diariamente, y el 38 por ciento que las mujeres necesitan. Recuerda que el cuerpo usa hierro para producir glÃ³bulos rojos y trifosfato de adenosina (ATP).\r\n		<br>\r\n		<br>\r\n		Las personas que tienen deficiencia de hierro pueden desarrollar anemia o problemas neurolÃ³gicos como dÃ©ficit de atenciÃ³n e hiperactividad. El hierro en alimentos de origen vegetal, como las lentejas, es el hierro no hemo, una forma de hierro que no se absorbe fÃ¡cilmente como el hierro hemo encontrado en las carnes rojas, las aves de corral y el pescado.\r\n		<br>\r\n		<br>\r\n		Sin embargo, puedes incrementar la cantidad de hierro obtenida de las lentejas si las combinas con carne o con alguna fuente rica en vitamina. Prepara las lentejas en sopa o en estofados, o mÃ©zclalas en ensaladas con verduras de hojas verdes.\r\n		<br>\r\n		<br>\r\n		Las lentejas no son solo legumbres deliciosas y versÃ¡tiles de preparar, son una fuente de vida para todo el que las consuma: estÃ¡n llenas de fibra dietÃ©tica, proteÃ­na magra, folato y hierro. Si no eres fanÃ¡tico de estos granos es hora de que comiences a incluirlos en tu dieta.\r\n		<br>\r\n		<br>\r\n		Claro estÃ¡ que no tiene que ser a diario, lo importante es que coas las lentejas en algÃºn momento. Prueba prepararlas como albÃ³ndigas, hamburguesas, croquetas, sopas, etc. hasta que encuentres la manera en la que mÃ¡s te guste consumirlas. Â¿EstÃ¡s listo para consumir mÃ¡s lentejas y mejorar tu salud?', 'Beneficios de las lentejas.', '', 'inherit', 'closed', 'closed', '', '143-revision-v1', '', '', '2018-10-03 22:03:32', '2018-10-03 22:03:32', '', 143, 'http://localhost:8080/143-revision-v1/', 0, 'revision', '', 0),
(145, 1, '2018-10-03 22:48:11', '2018-10-03 22:48:11', '<strong>Luki Limitada.</strong>\nAv. Matta 1106\nReferencia: Av. Matta con Av. Las Torres\nQuilicura, Santiago, Chile\nCÃ³digo Postal: 8720767\nTelÃ©fono: (+56) 2 2583 2658\n\nHorarios de atenciÃ³n\nLunes 10:00 - 19:00\nMartes 10:00 - 19:00\nMiÃ©rcoles 16:00 - 19:00\nJueves 10:00 - 19:00\nViernes 10:00 - 19:00\n\n<strong>LA CASA DEL VEGAN</strong>\nHORARIO:\nNuestro horario de atenciÃ³n es:\nLunes a SÃ¡bado: 9am-5:30pm\nDomingo: 9am-2:30pm\n\nUBICACIÃ“N:\nEstamos ubicados en la Vega Central, Recoleta, RM, Chile.\nAntonia LÃ³pez de Bello 743, Local 688.', 'Donde Comprar', '', 'inherit', 'closed', 'closed', '', '1-autosave-v1', '', '', '2018-10-03 22:48:11', '2018-10-03 22:48:11', '', 1, 'http://localhost:8080/1-autosave-v1/', 0, 'revision', '', 0),
(146, 1, '2018-10-03 22:49:36', '2018-10-03 22:49:36', '<strong>Luki Limitada.</strong>\r\nAv. Matta 1106\r\nReferencia: Av. Matta con Av. Las Torres\r\nQuilicura, Santiago, Chile\r\nCÃ³digo Postal: 8720767\r\nTelÃ©fono: (+56) 2 2583 2658\r\n\r\nHorarios de atenciÃ³n\r\nLunes 10:00 - 19:00\r\nMartes 10:00 - 19:00\r\nMiÃ©rcoles 16:00 - 19:00\r\nJueves 10:00 - 19:00\r\nViernes 10:00 - 19:00\r\n\r\n<strong>LA CASA DEL VEGAN</strong>\r\nHORARIO:\r\nNuestro horario de atenciÃ³n es:\r\nLunes a SÃ¡bado: 9am-5:30pm\r\nDomingo: 9am-2:30pm\r\n\r\nUBICACIÃ“N:\r\nEstamos ubicados en la Vega Central, Recoleta, RM, Chile.\r\nAntonia LÃ³pez de Bello 743, Local 688.', 'Donde Comprar', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-10-03 22:49:36', '2018-10-03 22:49:36', '', 1, 'http://localhost:8080/1-revision-v1/', 0, 'revision', '', 0),
(147, 1, '2018-10-03 22:52:21', '2018-10-03 22:52:21', '', 'writing-pad', '', 'inherit', 'open', 'closed', '', 'writing-pad', '', '', '2018-10-03 22:52:21', '2018-10-03 22:52:21', '', 1, 'http://localhost:8080/wp-content/uploads/2018/09/writing-pad.jpg', 0, 'attachment', 'image/jpeg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dl_termmeta`
--

CREATE TABLE `dl_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dl_terms`
--

CREATE TABLE `dl_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `dl_terms`
--

INSERT INTO `dl_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categorÃ­a', 'sin-categoria', 0),
(2, 'MenÃº', 'menu', 0),
(3, 'menu2', 'menu2', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dl_term_relationships`
--

CREATE TABLE `dl_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `dl_term_relationships`
--

INSERT INTO `dl_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(22, 2, 0),
(23, 2, 0),
(25, 2, 0),
(26, 2, 0),
(33, 2, 0),
(34, 2, 0),
(35, 2, 0),
(100, 3, 0),
(101, 3, 0),
(102, 3, 0),
(103, 3, 0),
(104, 3, 0),
(108, 3, 0),
(143, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dl_term_taxonomy`
--

CREATE TABLE `dl_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `dl_term_taxonomy`
--

INSERT INTO `dl_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'nav_menu', '', 0, 7),
(3, 3, 'nav_menu', '', 0, 6);

-- --------------------------------------------------------

--
-- Table structure for table `dl_usermeta`
--

CREATE TABLE `dl_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `dl_usermeta`
--

INSERT INTO `dl_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'elemon20'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'false'),
(11, 1, 'locale', ''),
(12, 1, 'dl_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'dl_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"a0e6a0f8d64d361f881d953a9fa6c50ce526f07bb41f8b84c54cd4808195e19e\";a:4:{s:10:\"expiration\";i:1538713800;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36\";s:5:\"login\";i:1538541000;}}'),
(17, 1, 'dl_user-settings', 'libraryContent=browse&editor=tinymce'),
(18, 1, 'dl_user-settings-time', '1538606973'),
(19, 1, 'dl_dashboard_quick_press_last_post_id', '111'),
(20, 1, 'closedpostboxes_page', 'a:0:{}'),
(21, 1, 'metaboxhidden_page', 'a:4:{i:0;s:16:\"commentstatusdiv\";i:1;s:11:\"commentsdiv\";i:2;s:7:\"slugdiv\";i:3;s:9:\"authordiv\";}'),
(22, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:\"link-target\";i:1;s:15:\"title-attribute\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}'),
(23, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(24, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(25, 1, 'nav_menu_recently_edited', '3'),
(26, 1, 'wpcf7_hide_welcome_panel_on', 'a:1:{i:0;s:3:\"5.0\";}');

-- --------------------------------------------------------

--
-- Table structure for table `dl_users`
--

CREATE TABLE `dl_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `dl_users`
--

INSERT INTO `dl_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'elemon20', '$P$BRSuCEA/8g2cBgn58DAudFS0kPnOWp/', 'elemon20', 'elemon20@hotmail.com', '', '2018-09-04 23:50:30', '', 0, 'elemon20');

-- --------------------------------------------------------

--
-- Table structure for table `dl_wpgmza`
--

CREATE TABLE `dl_wpgmza` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `address` varchar(700) NOT NULL,
  `description` mediumtext NOT NULL,
  `pic` varchar(700) NOT NULL,
  `link` varchar(700) NOT NULL,
  `icon` varchar(700) NOT NULL,
  `lat` varchar(100) NOT NULL,
  `lng` varchar(100) NOT NULL,
  `anim` varchar(3) NOT NULL,
  `title` varchar(700) NOT NULL,
  `infoopen` varchar(3) NOT NULL,
  `category` varchar(500) NOT NULL,
  `approved` tinyint(1) DEFAULT '1',
  `retina` tinyint(1) DEFAULT '0',
  `type` tinyint(1) DEFAULT '0',
  `did` varchar(500) NOT NULL,
  `other_data` longtext NOT NULL,
  `latlng` point DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dl_wpgmza`
--

INSERT INTO `dl_wpgmza` (`id`, `map_id`, `address`, `description`, `pic`, `link`, `icon`, `lat`, `lng`, `anim`, `title`, `infoopen`, `category`, `approved`, `retina`, `type`, `did`, `other_data`, `latlng`) VALUES
(2, 1, '-33.36733571430847, -70.73132490506397', '', '', '', '', '-33.367336', '-70.731325', '2', '', '0', '', 1, 0, 0, '', '', '\0\0\0\0\0\0\0ÈÍOÛ¯@À€ùÎ®QÀ');

-- --------------------------------------------------------

--
-- Table structure for table `dl_wpgmza_categories`
--

CREATE TABLE `dl_wpgmza_categories` (
  `id` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `category_icon` varchar(700) NOT NULL,
  `retina` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dl_wpgmza_category_maps`
--

CREATE TABLE `dl_wpgmza_category_maps` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dl_wpgmza_circles`
--

CREATE TABLE `dl_wpgmza_circles` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `name` text,
  `center` point DEFAULT NULL,
  `radius` float DEFAULT NULL,
  `color` varchar(16) DEFAULT NULL,
  `opacity` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dl_wpgmza_maps`
--

CREATE TABLE `dl_wpgmza_maps` (
  `id` int(11) NOT NULL,
  `map_title` varchar(55) NOT NULL,
  `map_width` varchar(6) NOT NULL,
  `map_height` varchar(6) NOT NULL,
  `map_start_lat` varchar(700) NOT NULL,
  `map_start_lng` varchar(700) NOT NULL,
  `map_start_location` varchar(700) NOT NULL,
  `map_start_zoom` int(10) NOT NULL,
  `default_marker` varchar(700) NOT NULL,
  `type` int(10) NOT NULL,
  `alignment` int(10) NOT NULL,
  `directions_enabled` int(10) NOT NULL,
  `styling_enabled` int(10) NOT NULL,
  `styling_json` mediumtext NOT NULL,
  `active` int(1) NOT NULL,
  `kml` varchar(700) NOT NULL,
  `bicycle` int(10) NOT NULL,
  `traffic` int(10) NOT NULL,
  `dbox` int(10) NOT NULL,
  `dbox_width` varchar(10) NOT NULL,
  `listmarkers` int(10) NOT NULL,
  `listmarkers_advanced` int(10) NOT NULL,
  `filterbycat` tinyint(1) NOT NULL,
  `ugm_enabled` int(10) NOT NULL,
  `ugm_category_enabled` tinyint(1) NOT NULL,
  `fusion` varchar(100) NOT NULL,
  `map_width_type` varchar(3) NOT NULL,
  `map_height_type` varchar(3) NOT NULL,
  `mass_marker_support` int(10) NOT NULL,
  `ugm_access` int(10) NOT NULL,
  `order_markers_by` int(10) NOT NULL,
  `order_markers_choice` int(10) NOT NULL,
  `show_user_location` int(3) NOT NULL,
  `default_to` varchar(700) NOT NULL,
  `other_settings` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dl_wpgmza_maps`
--

INSERT INTO `dl_wpgmza_maps` (`id`, `map_title`, `map_width`, `map_height`, `map_start_lat`, `map_start_lng`, `map_start_location`, `map_start_zoom`, `default_marker`, `type`, `alignment`, `directions_enabled`, `styling_enabled`, `styling_json`, `active`, `kml`, `bicycle`, `traffic`, `dbox`, `dbox_width`, `listmarkers`, `listmarkers_advanced`, `filterbycat`, `ugm_enabled`, `ugm_category_enabled`, `fusion`, `map_width_type`, `map_height_type`, `mass_marker_support`, `ugm_access`, `order_markers_by`, `order_markers_choice`, `show_user_location`, `default_to`, `other_settings`) VALUES
(1, 'Mi primer mapa', '100', '400', '-33.367358', '-70.725857', '-33.367358107149805,-70.7258573971003', 16, '0', 4, 1, 1, 0, '', 0, '', 2, 2, 1, '100', 0, 0, 0, 0, 0, '', '\\%', 'px', 1, 0, 1, 2, 0, '', 'a:13:{s:21:\"store_locator_enabled\";i:2;s:22:\"store_locator_distance\";i:2;s:28:\"store_locator_default_radius\";s:2:\"10\";s:31:\"store_locator_not_found_message\";s:52:\"No results found in this location. Please try again.\";s:20:\"store_locator_bounce\";i:1;s:26:\"store_locator_query_string\";s:33:\"ZIP / CÃ³digo Postal / DirecciÃ³n\";s:29:\"store_locator_default_address\";s:0:\"\";s:29:\"wpgmza_store_locator_restrict\";s:0:\"\";s:19:\"store_locator_style\";s:6:\"modern\";s:33:\"wpgmza_store_locator_radius_style\";s:6:\"modern\";s:12:\"map_max_zoom\";s:1:\"1\";s:15:\"transport_layer\";i:2;s:30:\"wpgmza_show_points_of_interest\";i:0;}');

-- --------------------------------------------------------

--
-- Table structure for table `dl_wpgmza_nominatim_geocode_cache`
--

CREATE TABLE `dl_wpgmza_nominatim_geocode_cache` (
  `id` int(11) NOT NULL,
  `query` varchar(512) DEFAULT NULL,
  `response` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dl_wpgmza_polygon`
--

CREATE TABLE `dl_wpgmza_polygon` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `polydata` longtext NOT NULL,
  `innerpolydata` longtext NOT NULL,
  `linecolor` varchar(7) NOT NULL,
  `lineopacity` varchar(7) NOT NULL,
  `fillcolor` varchar(7) NOT NULL,
  `opacity` varchar(3) NOT NULL,
  `title` varchar(250) NOT NULL,
  `link` varchar(700) NOT NULL,
  `ohfillcolor` varchar(7) NOT NULL,
  `ohlinecolor` varchar(7) NOT NULL,
  `ohopacity` varchar(3) NOT NULL,
  `polyname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dl_wpgmza_polylines`
--

CREATE TABLE `dl_wpgmza_polylines` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `polydata` longtext NOT NULL,
  `linecolor` varchar(7) NOT NULL,
  `linethickness` varchar(3) NOT NULL,
  `opacity` varchar(3) NOT NULL,
  `polyname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dl_wpgmza_rectangles`
--

CREATE TABLE `dl_wpgmza_rectangles` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `name` text,
  `cornerA` point DEFAULT NULL,
  `cornerB` point DEFAULT NULL,
  `color` varchar(16) DEFAULT NULL,
  `opacity` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dl_commentmeta`
--
ALTER TABLE `dl_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `dl_comments`
--
ALTER TABLE `dl_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `dl_links`
--
ALTER TABLE `dl_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `dl_options`
--
ALTER TABLE `dl_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `dl_postmeta`
--
ALTER TABLE `dl_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `dl_posts`
--
ALTER TABLE `dl_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `dl_termmeta`
--
ALTER TABLE `dl_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `dl_terms`
--
ALTER TABLE `dl_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `dl_term_relationships`
--
ALTER TABLE `dl_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `dl_term_taxonomy`
--
ALTER TABLE `dl_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `dl_usermeta`
--
ALTER TABLE `dl_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `dl_users`
--
ALTER TABLE `dl_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `dl_wpgmza`
--
ALTER TABLE `dl_wpgmza`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dl_wpgmza_categories`
--
ALTER TABLE `dl_wpgmza_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dl_wpgmza_category_maps`
--
ALTER TABLE `dl_wpgmza_category_maps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dl_wpgmza_circles`
--
ALTER TABLE `dl_wpgmza_circles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dl_wpgmza_maps`
--
ALTER TABLE `dl_wpgmza_maps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dl_wpgmza_nominatim_geocode_cache`
--
ALTER TABLE `dl_wpgmza_nominatim_geocode_cache`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dl_wpgmza_polygon`
--
ALTER TABLE `dl_wpgmza_polygon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dl_wpgmza_polylines`
--
ALTER TABLE `dl_wpgmza_polylines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dl_wpgmza_rectangles`
--
ALTER TABLE `dl_wpgmza_rectangles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dl_commentmeta`
--
ALTER TABLE `dl_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dl_comments`
--
ALTER TABLE `dl_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dl_links`
--
ALTER TABLE `dl_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dl_options`
--
ALTER TABLE `dl_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=440;
--
-- AUTO_INCREMENT for table `dl_postmeta`
--
ALTER TABLE `dl_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=753;
--
-- AUTO_INCREMENT for table `dl_posts`
--
ALTER TABLE `dl_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;
--
-- AUTO_INCREMENT for table `dl_termmeta`
--
ALTER TABLE `dl_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dl_terms`
--
ALTER TABLE `dl_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `dl_term_taxonomy`
--
ALTER TABLE `dl_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `dl_usermeta`
--
ALTER TABLE `dl_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `dl_users`
--
ALTER TABLE `dl_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dl_wpgmza`
--
ALTER TABLE `dl_wpgmza`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `dl_wpgmza_categories`
--
ALTER TABLE `dl_wpgmza_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dl_wpgmza_category_maps`
--
ALTER TABLE `dl_wpgmza_category_maps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dl_wpgmza_circles`
--
ALTER TABLE `dl_wpgmza_circles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dl_wpgmza_maps`
--
ALTER TABLE `dl_wpgmza_maps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dl_wpgmza_nominatim_geocode_cache`
--
ALTER TABLE `dl_wpgmza_nominatim_geocode_cache`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dl_wpgmza_polygon`
--
ALTER TABLE `dl_wpgmza_polygon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dl_wpgmza_polylines`
--
ALTER TABLE `dl_wpgmza_polylines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dl_wpgmza_rectangles`
--
ALTER TABLE `dl_wpgmza_rectangles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
