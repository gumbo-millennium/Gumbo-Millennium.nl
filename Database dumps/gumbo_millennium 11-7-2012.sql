-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Machine: localhost
-- Genereertijd: 11 jul 2012 om 16:42
-- Serverversie: 5.5.16
-- PHP-Versie: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gumbo_millennium`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_acl_groups`
--

CREATE TABLE IF NOT EXISTS `dc_acl_groups` (
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_option_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_role_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_setting` tinyint(2) NOT NULL DEFAULT '0',
  KEY `group_id` (`group_id`),
  KEY `auth_opt_id` (`auth_option_id`),
  KEY `auth_role_id` (`auth_role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Gegevens worden uitgevoerd voor tabel `dc_acl_groups`
--

INSERT INTO `dc_acl_groups` (`group_id`, `forum_id`, `auth_option_id`, `auth_role_id`, `auth_setting`) VALUES
(1, 0, 85, 0, 1),
(1, 0, 93, 0, 1),
(1, 0, 111, 0, 1),
(5, 0, 0, 5, 0),
(5, 0, 0, 1, 0),
(2, 0, 0, 6, 0),
(3, 0, 0, 6, 0),
(4, 0, 0, 5, 0),
(1, 1, 0, 17, 0),
(2, 1, 0, 17, 0),
(3, 1, 0, 17, 0),
(6, 1, 0, 17, 0),
(1, 2, 0, 17, 0),
(2, 2, 0, 15, 0),
(3, 2, 0, 15, 0),
(4, 2, 0, 21, 0),
(5, 2, 0, 14, 0),
(5, 2, 0, 10, 0),
(6, 2, 0, 19, 0),
(7, 2, 0, 24, 0),
(4, 0, 0, 10, 0),
(9, 0, 0, 6, 0),
(9, 1, 0, 17, 0),
(9, 2, 0, 15, 0),
(7, 0, 86, 0, 0),
(7, 0, 88, 0, 0),
(7, 0, 93, 0, 0),
(7, 0, 110, 0, 0),
(7, 0, 115, 0, 0),
(7, 0, 87, 0, 0),
(7, 0, 90, 0, 0),
(7, 0, 117, 0, 0),
(7, 0, 94, 0, 0),
(7, 0, 95, 0, 0),
(7, 0, 111, 0, 0),
(7, 0, 112, 0, 0),
(7, 0, 113, 0, 0),
(7, 0, 116, 0, 0),
(7, 0, 96, 0, 0),
(7, 0, 97, 0, 0),
(7, 0, 98, 0, 0),
(7, 0, 99, 0, 0),
(7, 0, 100, 0, 0),
(7, 0, 101, 0, 0),
(7, 0, 102, 0, 0),
(7, 0, 103, 0, 0),
(7, 0, 104, 0, 0),
(7, 0, 105, 0, 0),
(7, 0, 106, 0, 0),
(7, 0, 107, 0, 0),
(7, 0, 108, 0, 0),
(7, 0, 109, 0, 0),
(7, 0, 114, 0, 0),
(10, 0, 0, 6, 0),
(10, 1, 0, 17, 0),
(10, 2, 0, 15, 0),
(11, 0, 0, 6, 0),
(11, 1, 0, 17, 0),
(11, 2, 0, 15, 0),
(13, 0, 0, 25, 0),
(2, 8, 0, 16, 0),
(2, 10, 0, 16, 0),
(5, 10, 0, 17, 0),
(6, 11, 0, 16, 0),
(4, 11, 0, 16, 0),
(1, 11, 0, 16, 0),
(7, 11, 0, 16, 0),
(2, 11, 0, 16, 0),
(11, 11, 0, 16, 0),
(14, 11, 0, 16, 0),
(13, 11, 0, 16, 0),
(9, 11, 0, 16, 0),
(10, 11, 0, 16, 0),
(5, 11, 0, 14, 0),
(5, 12, 0, 14, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_acl_options`
--

CREATE TABLE IF NOT EXISTS `dc_acl_options` (
  `auth_option_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `auth_option` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `is_global` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_local` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `founder_only` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`auth_option_id`),
  UNIQUE KEY `auth_option` (`auth_option`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=128 ;

--
-- Gegevens worden uitgevoerd voor tabel `dc_acl_options`
--

INSERT INTO `dc_acl_options` (`auth_option_id`, `auth_option`, `is_global`, `is_local`, `founder_only`) VALUES
(1, 'f_', 0, 1, 0),
(2, 'f_announce', 0, 1, 0),
(3, 'f_attach', 0, 1, 0),
(4, 'f_bbcode', 0, 1, 0),
(5, 'f_bump', 0, 1, 0),
(6, 'f_delete', 0, 1, 0),
(7, 'f_download', 0, 1, 0),
(8, 'f_edit', 0, 1, 0),
(9, 'f_email', 0, 1, 0),
(10, 'f_flash', 0, 1, 0),
(11, 'f_icons', 0, 1, 0),
(12, 'f_ignoreflood', 0, 1, 0),
(13, 'f_img', 0, 1, 0),
(14, 'f_list', 0, 1, 0),
(15, 'f_noapprove', 0, 1, 0),
(16, 'f_poll', 0, 1, 0),
(17, 'f_post', 0, 1, 0),
(18, 'f_postcount', 0, 1, 0),
(19, 'f_print', 0, 1, 0),
(20, 'f_read', 0, 1, 0),
(21, 'f_reply', 0, 1, 0),
(22, 'f_report', 0, 1, 0),
(23, 'f_search', 0, 1, 0),
(24, 'f_sigs', 0, 1, 0),
(25, 'f_smilies', 0, 1, 0),
(26, 'f_sticky', 0, 1, 0),
(27, 'f_subscribe', 0, 1, 0),
(28, 'f_user_lock', 0, 1, 0),
(29, 'f_vote', 0, 1, 0),
(30, 'f_votechg', 0, 1, 0),
(31, 'm_', 1, 1, 0),
(32, 'm_approve', 1, 1, 0),
(33, 'm_chgposter', 1, 1, 0),
(34, 'm_delete', 1, 1, 0),
(35, 'm_edit', 1, 1, 0),
(36, 'm_info', 1, 1, 0),
(37, 'm_lock', 1, 1, 0),
(38, 'm_merge', 1, 1, 0),
(39, 'm_move', 1, 1, 0),
(40, 'm_report', 1, 1, 0),
(41, 'm_split', 1, 1, 0),
(42, 'm_ban', 1, 0, 0),
(43, 'm_warn', 1, 0, 0),
(44, 'a_', 1, 1, 0),
(45, 'a_aauth', 1, 0, 0),
(46, 'a_attach', 1, 0, 0),
(47, 'a_authgroups', 1, 0, 0),
(48, 'a_authusers', 1, 0, 0),
(49, 'a_backup', 1, 0, 0),
(50, 'a_ban', 1, 0, 0),
(51, 'a_bbcode', 1, 0, 0),
(52, 'a_board', 1, 0, 0),
(53, 'a_bots', 1, 0, 0),
(54, 'a_clearlogs', 1, 0, 0),
(55, 'a_email', 1, 0, 0),
(56, 'a_fauth', 1, 0, 0),
(57, 'a_forum', 1, 0, 0),
(58, 'a_forumadd', 1, 0, 0),
(59, 'a_forumdel', 1, 0, 0),
(60, 'a_group', 1, 0, 0),
(61, 'a_groupadd', 1, 0, 0),
(62, 'a_groupdel', 1, 0, 0),
(63, 'a_icons', 1, 0, 0),
(64, 'a_jabber', 1, 0, 0),
(65, 'a_language', 1, 0, 0),
(66, 'a_mauth', 1, 0, 0),
(67, 'a_modules', 1, 0, 0),
(68, 'a_names', 1, 0, 0),
(69, 'a_phpinfo', 1, 0, 0),
(70, 'a_profile', 1, 0, 0),
(71, 'a_prune', 1, 0, 0),
(72, 'a_ranks', 1, 0, 0),
(73, 'a_reasons', 1, 0, 0),
(74, 'a_roles', 1, 0, 0),
(75, 'a_search', 1, 0, 0),
(76, 'a_server', 1, 0, 0),
(77, 'a_styles', 1, 0, 0),
(78, 'a_switchperm', 1, 0, 0),
(79, 'a_uauth', 1, 0, 0),
(80, 'a_user', 1, 0, 0),
(81, 'a_userdel', 1, 0, 0),
(82, 'a_viewauth', 1, 0, 0),
(83, 'a_viewlogs', 1, 0, 0),
(84, 'a_words', 1, 0, 0),
(85, 'u_', 1, 0, 0),
(86, 'u_attach', 1, 0, 0),
(87, 'u_chgavatar', 1, 0, 0),
(88, 'u_chgcensors', 1, 0, 0),
(89, 'u_chgemail', 1, 0, 0),
(90, 'u_chggrp', 1, 0, 0),
(91, 'u_chgname', 1, 0, 0),
(92, 'u_chgpasswd', 1, 0, 0),
(93, 'u_download', 1, 0, 0),
(94, 'u_hideonline', 1, 0, 0),
(95, 'u_ignoreflood', 1, 0, 0),
(96, 'u_masspm', 1, 0, 0),
(97, 'u_masspm_group', 1, 0, 0),
(98, 'u_pm_attach', 1, 0, 0),
(99, 'u_pm_bbcode', 1, 0, 0),
(100, 'u_pm_delete', 1, 0, 0),
(101, 'u_pm_download', 1, 0, 0),
(102, 'u_pm_edit', 1, 0, 0),
(103, 'u_pm_emailpm', 1, 0, 0),
(104, 'u_pm_flash', 1, 0, 0),
(105, 'u_pm_forward', 1, 0, 0),
(106, 'u_pm_img', 1, 0, 0),
(107, 'u_pm_printpm', 1, 0, 0),
(108, 'u_pm_smilies', 1, 0, 0),
(109, 'u_readpm', 1, 0, 0),
(110, 'u_savedrafts', 1, 0, 0),
(111, 'u_search', 1, 0, 0),
(112, 'u_sendemail', 1, 0, 0),
(113, 'u_sendim', 1, 0, 0),
(114, 'u_sendpm', 1, 0, 0),
(115, 'u_sig', 1, 0, 0),
(116, 'u_viewonline', 1, 0, 0),
(117, 'u_viewprofile', 1, 0, 0),
(118, 'b_', 1, 0, 0),
(119, 'b_view', 1, 0, 0),
(120, 'bug_view', 1, 0, 0),
(121, 'bug_', 1, 0, 0),
(122, 'f_survey_design', 0, 1, 0),
(123, 'f_survey_takeforothers', 0, 1, 0),
(124, 'f_survey_viewhiddenresults', 0, 1, 0),
(125, 'a_survey_design', 0, 1, 0),
(126, 'a_survey_takeforothers', 0, 1, 0),
(127, 'a_survey_viewhiddenresults', 0, 1, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_acl_roles`
--

CREATE TABLE IF NOT EXISTS `dc_acl_roles` (
  `role_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `role_description` text COLLATE utf8_bin NOT NULL,
  `role_type` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `role_order` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`role_id`),
  KEY `role_type` (`role_type`),
  KEY `role_order` (`role_order`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=26 ;

--
-- Gegevens worden uitgevoerd voor tabel `dc_acl_roles`
--

INSERT INTO `dc_acl_roles` (`role_id`, `role_name`, `role_description`, `role_type`, `role_order`) VALUES
(1, 'ROLE_ADMIN_STANDARD', 0x524f4c455f4445534352495054494f4e5f41444d494e5f5354414e44415244, 'a_', 1),
(2, 'ROLE_ADMIN_FORUM', 0x524f4c455f4445534352495054494f4e5f41444d494e5f464f52554d, 'a_', 3),
(3, 'ROLE_ADMIN_USERGROUP', 0x524f4c455f4445534352495054494f4e5f41444d494e5f5553455247524f5550, 'a_', 4),
(4, 'ROLE_ADMIN_FULL', 0x524f4c455f4445534352495054494f4e5f41444d494e5f46554c4c, 'a_', 2),
(5, 'ROLE_USER_FULL', 0x524f4c455f4445534352495054494f4e5f555345525f46554c4c, 'u_', 3),
(6, 'ROLE_USER_STANDARD', 0x524f4c455f4445534352495054494f4e5f555345525f5354414e44415244, 'u_', 1),
(7, 'ROLE_USER_LIMITED', 0x524f4c455f4445534352495054494f4e5f555345525f4c494d49544544, 'u_', 2),
(8, 'ROLE_USER_NOPM', 0x524f4c455f4445534352495054494f4e5f555345525f4e4f504d, 'u_', 4),
(9, 'ROLE_USER_NOAVATAR', 0x524f4c455f4445534352495054494f4e5f555345525f4e4f415641544152, 'u_', 5),
(10, 'ROLE_MOD_FULL', 0x524f4c455f4445534352495054494f4e5f4d4f445f46554c4c, 'm_', 3),
(11, 'ROLE_MOD_STANDARD', 0x524f4c455f4445534352495054494f4e5f4d4f445f5354414e44415244, 'm_', 1),
(12, 'ROLE_MOD_SIMPLE', 0x524f4c455f4445534352495054494f4e5f4d4f445f53494d504c45, 'm_', 2),
(13, 'ROLE_MOD_QUEUE', 0x524f4c455f4445534352495054494f4e5f4d4f445f5155455545, 'm_', 4),
(14, 'ROLE_FORUM_FULL', 0x524f4c455f4445534352495054494f4e5f464f52554d5f46554c4c, 'f_', 7),
(15, 'ROLE_FORUM_STANDARD', 0x524f4c455f4445534352495054494f4e5f464f52554d5f5354414e44415244, 'f_', 5),
(16, 'ROLE_FORUM_NOACCESS', 0x524f4c455f4445534352495054494f4e5f464f52554d5f4e4f414343455353, 'f_', 1),
(17, 'ROLE_FORUM_READONLY', 0x524f4c455f4445534352495054494f4e5f464f52554d5f524541444f4e4c59, 'f_', 2),
(18, 'ROLE_FORUM_LIMITED', 0x524f4c455f4445534352495054494f4e5f464f52554d5f4c494d49544544, 'f_', 3),
(19, 'ROLE_FORUM_BOT', 0x524f4c455f4445534352495054494f4e5f464f52554d5f424f54, 'f_', 9),
(20, 'ROLE_FORUM_ONQUEUE', 0x524f4c455f4445534352495054494f4e5f464f52554d5f4f4e5155455545, 'f_', 8),
(21, 'ROLE_FORUM_POLLS', 0x524f4c455f4445534352495054494f4e5f464f52554d5f504f4c4c53, 'f_', 6),
(22, 'ROLE_FORUM_LIMITED_POLLS', 0x524f4c455f4445534352495054494f4e5f464f52554d5f4c494d495445445f504f4c4c53, 'f_', 4),
(23, 'ROLE_USER_NEW_MEMBER', 0x524f4c455f4445534352495054494f4e5f555345525f4e45575f4d454d424552, 'u_', 6),
(24, 'ROLE_FORUM_NEW_MEMBER', 0x524f4c455f4445534352495054494f4e5f464f52554d5f4e45575f4d454d424552, 'f_', 10),
(25, 'Bestuur', '', 'a_', 5);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_acl_roles_data`
--

CREATE TABLE IF NOT EXISTS `dc_acl_roles_data` (
  `role_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_option_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_setting` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`role_id`,`auth_option_id`),
  KEY `ath_op_id` (`auth_option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Gegevens worden uitgevoerd voor tabel `dc_acl_roles_data`
--

INSERT INTO `dc_acl_roles_data` (`role_id`, `auth_option_id`, `auth_setting`) VALUES
(1, 44, 1),
(1, 46, 1),
(1, 47, 1),
(1, 48, 1),
(1, 50, 1),
(1, 51, 1),
(1, 52, 1),
(1, 56, 1),
(1, 57, 1),
(1, 58, 1),
(1, 59, 1),
(1, 60, 1),
(1, 61, 1),
(1, 62, 1),
(1, 63, 1),
(1, 66, 1),
(1, 68, 1),
(1, 70, 1),
(1, 71, 1),
(1, 72, 1),
(1, 73, 1),
(1, 79, 1),
(1, 80, 1),
(1, 81, 1),
(1, 82, 1),
(1, 83, 1),
(1, 84, 1),
(2, 44, 1),
(2, 47, 1),
(2, 48, 1),
(2, 56, 1),
(2, 57, 1),
(2, 58, 1),
(2, 59, 1),
(2, 66, 1),
(2, 71, 1),
(2, 79, 1),
(2, 82, 1),
(2, 83, 1),
(3, 44, 1),
(3, 47, 1),
(3, 48, 1),
(3, 50, 1),
(3, 60, 1),
(3, 61, 1),
(3, 62, 1),
(3, 72, 1),
(3, 79, 1),
(3, 80, 1),
(3, 82, 1),
(3, 83, 1),
(4, 44, 1),
(4, 45, 1),
(4, 46, 1),
(4, 47, 1),
(4, 48, 1),
(4, 49, 1),
(4, 50, 1),
(4, 51, 1),
(4, 52, 1),
(4, 53, 1),
(4, 54, 1),
(4, 55, 1),
(4, 56, 1),
(4, 57, 1),
(4, 58, 1),
(4, 59, 1),
(4, 60, 1),
(4, 61, 1),
(4, 62, 1),
(4, 63, 1),
(4, 64, 1),
(4, 65, 1),
(4, 66, 1),
(4, 67, 1),
(4, 68, 1),
(4, 69, 1),
(4, 70, 1),
(4, 71, 1),
(4, 72, 1),
(4, 73, 1),
(4, 74, 1),
(4, 75, 1),
(4, 76, 1),
(4, 77, 1),
(4, 78, 1),
(4, 79, 1),
(4, 80, 1),
(4, 81, 1),
(4, 82, 1),
(4, 83, 1),
(4, 84, 1),
(5, 85, 1),
(5, 86, 1),
(5, 87, 1),
(5, 88, 1),
(5, 89, 1),
(5, 90, 1),
(5, 91, 1),
(5, 92, 1),
(5, 93, 1),
(5, 94, 1),
(5, 95, 1),
(5, 96, 1),
(5, 97, 1),
(5, 98, 1),
(5, 99, 1),
(5, 100, 1),
(5, 101, 1),
(5, 102, 1),
(5, 103, 1),
(5, 104, 1),
(5, 105, 1),
(5, 106, 1),
(5, 107, 1),
(5, 108, 1),
(5, 109, 1),
(5, 110, 1),
(5, 111, 1),
(5, 112, 1),
(5, 113, 1),
(5, 114, 1),
(5, 115, 1),
(5, 116, 1),
(5, 117, 1),
(6, 85, 1),
(6, 86, 1),
(6, 87, 1),
(6, 88, 1),
(6, 89, 1),
(6, 92, 1),
(6, 93, 1),
(6, 94, 1),
(6, 96, 1),
(6, 97, 1),
(6, 98, 1),
(6, 99, 1),
(6, 100, 1),
(6, 101, 1),
(6, 102, 1),
(6, 103, 1),
(6, 106, 1),
(6, 107, 1),
(6, 108, 1),
(6, 109, 1),
(6, 110, 1),
(6, 111, 1),
(6, 112, 1),
(6, 113, 1),
(6, 114, 1),
(6, 115, 1),
(6, 117, 1),
(7, 85, 1),
(7, 87, 1),
(7, 88, 1),
(7, 89, 1),
(7, 92, 1),
(7, 93, 1),
(7, 94, 1),
(7, 99, 1),
(7, 100, 1),
(7, 101, 1),
(7, 102, 1),
(7, 105, 1),
(7, 106, 1),
(7, 107, 1),
(7, 108, 1),
(7, 109, 1),
(7, 114, 1),
(7, 115, 1),
(7, 117, 1),
(8, 85, 1),
(8, 87, 1),
(8, 88, 1),
(8, 89, 1),
(8, 92, 1),
(8, 93, 1),
(8, 94, 1),
(8, 96, 0),
(8, 97, 0),
(8, 109, 0),
(8, 114, 0),
(8, 115, 1),
(8, 117, 1),
(9, 85, 1),
(9, 87, 0),
(9, 88, 1),
(9, 89, 1),
(9, 92, 1),
(9, 93, 1),
(9, 94, 1),
(9, 99, 1),
(9, 100, 1),
(9, 101, 1),
(9, 102, 1),
(9, 105, 1),
(9, 106, 1),
(9, 107, 1),
(9, 108, 1),
(9, 109, 1),
(9, 114, 1),
(9, 115, 1),
(9, 117, 1),
(10, 31, 1),
(10, 32, 1),
(10, 33, 1),
(10, 34, 1),
(10, 35, 1),
(10, 36, 1),
(10, 37, 1),
(10, 38, 1),
(10, 39, 1),
(10, 40, 1),
(10, 41, 1),
(10, 42, 1),
(10, 43, 1),
(11, 31, 1),
(11, 32, 1),
(11, 34, 1),
(11, 35, 1),
(11, 36, 1),
(11, 37, 1),
(11, 38, 1),
(11, 39, 1),
(11, 40, 1),
(11, 41, 1),
(11, 43, 1),
(12, 31, 1),
(12, 34, 1),
(12, 35, 1),
(12, 36, 1),
(12, 40, 1),
(13, 31, 1),
(13, 32, 1),
(13, 35, 1),
(14, 1, 1),
(14, 2, 1),
(14, 3, 1),
(14, 4, 1),
(14, 5, 1),
(14, 6, 1),
(14, 7, 1),
(14, 8, 1),
(14, 9, 1),
(14, 10, 1),
(14, 11, 1),
(14, 12, 1),
(14, 13, 1),
(14, 14, 1),
(14, 15, 1),
(14, 16, 1),
(14, 17, 1),
(14, 18, 1),
(14, 19, 1),
(14, 20, 1),
(14, 21, 1),
(14, 22, 1),
(14, 23, 1),
(14, 24, 1),
(14, 25, 1),
(14, 26, 1),
(14, 27, 1),
(14, 28, 1),
(14, 29, 1),
(14, 30, 1),
(15, 1, 1),
(15, 3, 1),
(15, 4, 1),
(15, 5, 1),
(15, 6, 1),
(15, 7, 1),
(15, 8, 1),
(15, 9, 1),
(15, 11, 1),
(15, 13, 1),
(15, 14, 1),
(15, 15, 1),
(15, 17, 1),
(15, 18, 1),
(15, 19, 1),
(15, 20, 1),
(15, 21, 1),
(15, 22, 1),
(15, 23, 1),
(15, 24, 1),
(15, 25, 1),
(15, 27, 1),
(15, 29, 1),
(15, 30, 1),
(16, 1, 0),
(17, 1, 1),
(17, 7, 1),
(17, 14, 1),
(17, 19, 1),
(17, 20, 1),
(17, 23, 1),
(17, 27, 1),
(18, 1, 1),
(18, 4, 1),
(18, 7, 1),
(18, 8, 1),
(18, 9, 1),
(18, 13, 1),
(18, 14, 1),
(18, 15, 1),
(18, 17, 1),
(18, 18, 1),
(18, 19, 1),
(18, 20, 1),
(18, 21, 1),
(18, 22, 1),
(18, 23, 1),
(18, 24, 1),
(18, 25, 1),
(18, 27, 1),
(18, 29, 1),
(19, 1, 1),
(19, 7, 1),
(19, 14, 1),
(19, 19, 1),
(19, 20, 1),
(20, 1, 1),
(20, 3, 1),
(20, 4, 1),
(20, 7, 1),
(20, 8, 1),
(20, 9, 1),
(20, 13, 1),
(20, 14, 1),
(20, 15, 0),
(20, 17, 1),
(20, 18, 1),
(20, 19, 1),
(20, 20, 1),
(20, 21, 1),
(20, 22, 1),
(20, 23, 1),
(20, 24, 1),
(20, 25, 1),
(20, 27, 1),
(20, 29, 1),
(21, 1, 1),
(21, 3, 1),
(21, 4, 1),
(21, 5, 1),
(21, 6, 1),
(21, 7, 1),
(21, 8, 1),
(21, 9, 1),
(21, 11, 1),
(21, 13, 1),
(21, 14, 1),
(21, 15, 1),
(21, 16, 1),
(21, 17, 1),
(21, 18, 1),
(21, 19, 1),
(21, 20, 1),
(21, 21, 1),
(21, 22, 1),
(21, 23, 1),
(21, 24, 1),
(21, 25, 1),
(21, 27, 1),
(21, 29, 1),
(21, 30, 1),
(22, 1, 1),
(22, 4, 1),
(22, 7, 1),
(22, 8, 1),
(22, 9, 1),
(22, 13, 1),
(22, 14, 1),
(22, 15, 1),
(22, 16, 1),
(22, 17, 1),
(22, 18, 1),
(22, 19, 1),
(22, 20, 1),
(22, 21, 1),
(22, 22, 1),
(22, 23, 1),
(22, 24, 1),
(22, 25, 1),
(22, 27, 1),
(22, 29, 1),
(23, 96, 0),
(23, 97, 0),
(23, 114, 0),
(24, 15, 0),
(25, 44, 1),
(25, 46, 1),
(25, 47, 1),
(25, 48, 1),
(25, 50, 1),
(25, 51, 1),
(25, 57, 1),
(25, 58, 1),
(25, 59, 1),
(25, 60, 1),
(25, 61, 1),
(25, 62, 1),
(25, 63, 1),
(25, 71, 1),
(25, 78, 1),
(25, 79, 1),
(25, 80, 1),
(25, 82, 1),
(25, 84, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_acl_users`
--

CREATE TABLE IF NOT EXISTS `dc_acl_users` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_option_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_role_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_setting` tinyint(2) NOT NULL DEFAULT '0',
  KEY `user_id` (`user_id`),
  KEY `auth_option_id` (`auth_option_id`),
  KEY `auth_role_id` (`auth_role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Gegevens worden uitgevoerd voor tabel `dc_acl_users`
--

INSERT INTO `dc_acl_users` (`user_id`, `forum_id`, `auth_option_id`, `auth_role_id`, `auth_setting`) VALUES
(2, 0, 0, 5, 0),
(54, 0, 111, 0, 1),
(54, 0, 85, 0, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_activity`
--

CREATE TABLE IF NOT EXISTS `dc_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL,
  `start_datetime` datetime NOT NULL,
  `stop_datetime` datetime DEFAULT NULL,
  `enroll` tinyint(4) NOT NULL DEFAULT '0',
  `enroll_datetime` datetime DEFAULT NULL,
  `enroll_max` int(11) NOT NULL DEFAULT '0',
  `price` decimal(10,2) DEFAULT NULL,
  `price_member` decimal(10,2) DEFAULT NULL,
  `location` text COLLATE utf8_bin NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `category` int(11) DEFAULT NULL,
  `pay_options` set('ideal','contant') COLLATE utf8_bin NOT NULL DEFAULT 'contant',
  `commission` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `user_ip` varchar(45) COLLATE utf8_bin NOT NULL,
  `datetime_created` timestamp NULL DEFAULT NULL,
  `datetime_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_uid` varchar(8) COLLATE utf8_bin NOT NULL,
  `bbcode_options` mediumint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=10 ;

--
-- Gegevens worden uitgevoerd voor tabel `dc_activity`
--

INSERT INTO `dc_activity` (`id`, `name`, `description`, `start_datetime`, `stop_datetime`, `enroll`, `enroll_datetime`, `enroll_max`, `price`, `price_member`, `location`, `active`, `category`, `pay_options`, `commission`, `user_id`, `user_ip`, `datetime_created`, `datetime_updated`, `bbcode_bitfield`, `bbcode_uid`, `bbcode_options`) VALUES
(1, 'vissen eten geven', 0x5769652077696c20646974206e6f75206e6965743f, '2012-02-01 00:00:00', '2012-01-31 18:48:43', 1, '2012-01-30 00:00:00', 0, 10.50, 7.50, 0x62696a20686574206d656572, 1, 1, 'contant', 1, 1, '192.168.178.13', '2012-01-26 13:04:05', '2012-01-26 13:04:05', '', '', 0),
(2, 'we gaan naar henk', 0x42696a2068656e6b206f702062657a6f656b, '2012-02-01 00:00:00', '2012-02-01 00:00:00', 1, '2012-02-01 00:00:00', 0, 5.00, 3.00, 0x6f6d6461742068656e6b2065656e2068656e6b206973, 1, 1, 'contant', 1, 1, '192.168.178.13', '2012-01-26 13:05:36', '2012-01-26 13:05:36', '', '', 0),
(3, 'iets in het verleden', 0x646974206b6f6d742075697420686574207665726c6564656e, '2012-01-02 08:11:36', '2012-01-09 08:23:25', 1, '2012-01-02 08:11:36', 0, 10.50, 3.00, 0x62696a206c6d64, 1, 1, 'contant', 1, 1, '192.168.178.13', '2012-01-28 14:45:22', '2012-01-28 14:45:22', '', '', 0),
(4, 'OP een terasje wat drinken', 0x4269657221, '2012-03-26 00:00:00', '2012-03-26 00:00:00', 0, '2012-03-26 00:00:00', 1, 10.50, 10.00, 0x455267656e7320696e20646520737461642121, 1, 1, 'contant', 5, 2, '192.168.178.13', '2012-03-26 13:10:50', '2012-03-26 13:10:50', '', '', 0),
(5, 'Zet de bank maar op het terras', 0x5765206761616e206d6574207a6520616c6c656e2064652062616e6b2070616b6b656e20656e2064616e206c6f70656e207765206572206d6565207765672e206765776f6f6e206f6d64617420686574206b616e2121, '2013-05-05 00:00:00', '2013-06-05 00:00:00', 1, '2013-04-05 00:00:00', 0, 60.70, 0.00, 0x4f70206865742062616c6b6f6e2062696a20706c617a61, 0, 5, '', 5, 2, '127.0.0.1', '0000-00-00 00:00:00', '2012-03-28 15:45:36', '0', '0', 7),
(6, 'Zet de bank maar op het terras', 0x5765206761616e206d6574207a6520616c6c656e2064652062616e6b2070616b6b656e20656e2064616e206c6f70656e207765206572206d6565207765672e206765776f6f6e206f6d64617420686574206b616e2121, '2013-05-05 00:00:00', '2013-06-05 00:00:00', 1, '2013-04-05 00:00:00', 0, 60.70, 0.00, 0x4f70206865742062616c6b6f6e2062696a20706c617a61, 0, 5, '', 5, 2, '127.0.0.1', '2012-03-28 15:55:39', '2012-03-28 15:55:39', '0', '0', 7),
(7, 'Naar mijn ouders', 0x5b623a72766372306d33305d47617475732068656e6b21215b2f623a72766372306d33305d203c212d2d20733a6576696c3a202d2d3e3c696d67207372633d227b534d494c4945535f504154487d2f69636f6e5f6576696c2e6769662220616c743d223a6576696c3a22207469746c653d22536c65636874206f66206865656c206b7761616422202f3e3c212d2d20733a6576696c3a202d2d3e20203c212d2d20733a6c6f6c3a202d2d3e3c696d67207372633d227b534d494c4945535f504154487d2f69636f6e5f6c6f6c2e6769662220616c743d223a6c6f6c3a22207469746c653d224c616368656e6422202f3e3c212d2d20733a6c6f6c3a202d2d3e20203c212d2d20733a726f6c6c3a202d2d3e3c696d67207372633d227b534d494c4945535f504154487d2f69636f6e5f726f6c6c657965732e6769662220616c743d223a726f6c6c3a22207469746c653d22526f6c6c656e6465206f67656e22202f3e3c212d2d20733a726f6c6c3a202d2d3e20203c212d2d20733a3f3a202d2d3e3c696d67207372633d227b534d494c4945535f504154487d2f69636f6e5f7175657374696f6e2e6769662220616c743d223a3f3a22207469746c653d22567261616722202f3e3c212d2d20733a3f3a202d2d3e20203c212d2d20733a696465613a202d2d3e3c696d67207372633d227b534d494c4945535f504154487d2f69636f6e5f696465612e6769662220616c743d223a696465613a22207469746c653d224964656522202f3e3c212d2d20733a696465613a202d2d3e20205b75726c5d6772617475732068656e6b5b2f75726c5d0d0a656e20686965722068656262656e207765206e6f672065656e20656e74657220656e206e6f672077656174206d6565720d0a0d0a0d0a0d0a2068616c6c6f20636f6f6c2064697421, '2013-05-05 00:00:00', '2013-06-05 00:00:00', 1, '2013-04-05 00:00:00', 0, 60.70, 10.00, 0x4f70206865742062616c6b6f6e2062696a20706c617a61, 0, 5, '', 5, 1, '192.168.2.35', '2012-03-31 14:11:32', '2012-03-31 14:11:32', '0', '0', 7),
(8, 'Naar mijn ouders', 0x5b623a326f6638703868395d47617475732068656e6b21215b2f623a326f6638703868395d203c212d2d20733a6576696c3a202d2d3e3c696d67207372633d227b534d494c4945535f504154487d2f69636f6e5f6576696c2e6769662220616c743d223a6576696c3a22207469746c653d22536c65636874206f66206865656c206b7761616422202f3e3c212d2d20733a6576696c3a202d2d3e20203c212d2d20733a6c6f6c3a202d2d3e3c696d67207372633d227b534d494c4945535f504154487d2f69636f6e5f6c6f6c2e6769662220616c743d223a6c6f6c3a22207469746c653d224c616368656e6422202f3e3c212d2d20733a6c6f6c3a202d2d3e20203c212d2d20733a726f6c6c3a202d2d3e3c696d67207372633d227b534d494c4945535f504154487d2f69636f6e5f726f6c6c657965732e6769662220616c743d223a726f6c6c3a22207469746c653d22526f6c6c656e6465206f67656e22202f3e3c212d2d20733a726f6c6c3a202d2d3e20203c212d2d20733a3f3a202d2d3e3c696d67207372633d227b534d494c4945535f504154487d2f69636f6e5f7175657374696f6e2e6769662220616c743d223a3f3a22207469746c653d22567261616722202f3e3c212d2d20733a3f3a202d2d3e20203c212d2d20733a696465613a202d2d3e3c696d67207372633d227b534d494c4945535f504154487d2f69636f6e5f696465612e6769662220616c743d223a696465613a22207469746c653d224964656522202f3e3c212d2d20733a696465613a202d2d3e20205b75726c5d6772617475732068656e6b5b2f75726c5d0d0a656e20686965722068656262656e207765206e6f672065656e20656e74657220656e206e6f672077656174206d6565720d0a0d0a0d0a0d0a2068616c6c6f20636f6f6c2064697421, '2013-05-05 00:00:00', '2013-06-05 00:00:00', 1, '2013-04-05 00:00:00', 0, 60.70, 10.00, 0x4f70206865742062616c6b6f6e2062696a20706c617a61, 0, 5, '', 5, 1, '192.168.2.35', '2012-03-31 14:14:24', '2012-03-31 14:14:24', 'UA==', '2of8p8h9', 7),
(9, 'De google website', 0x5b623a336e6636753077365d47617475732068656e6b21215b2f623a336e6636753077365d203c212d2d20733a6576696c3a202d2d3e3c696d67207372633d227b534d494c4945535f504154487d2f69636f6e5f6576696c2e6769662220616c743d223a6576696c3a22207469746c653d22536c65636874206f66206865656c206b7761616422202f3e3c212d2d20733a6576696c3a202d2d3e20203c212d2d20733a6c6f6c3a202d2d3e3c696d67207372633d227b534d494c4945535f504154487d2f69636f6e5f6c6f6c2e6769662220616c743d223a6c6f6c3a22207469746c653d224c616368656e6422202f3e3c212d2d20733a6c6f6c3a202d2d3e20203c212d2d20733a726f6c6c3a202d2d3e3c696d67207372633d227b534d494c4945535f504154487d2f69636f6e5f726f6c6c657965732e6769662220616c743d223a726f6c6c3a22207469746c653d22526f6c6c656e6465206f67656e22202f3e3c212d2d20733a726f6c6c3a202d2d3e20203c212d2d20733a3f3a202d2d3e3c696d67207372633d227b534d494c4945535f504154487d2f69636f6e5f7175657374696f6e2e6769662220616c743d223a3f3a22207469746c653d22567261616722202f3e3c212d2d20733a3f3a202d2d3e20203c212d2d20733a696465613a202d2d3e3c696d67207372633d227b534d494c4945535f504154487d2f69636f6e5f696465612e6769662220616c743d223a696465613a22207469746c653d224964656522202f3e3c212d2d20733a696465613a202d2d3e2020205b75726c3d68747470262335383b2f2f777777262334363b676f6f676c65262334363b6e6c3a336e6636753077365d6772617475732068656e6b5b2f75726c3a336e6636753077365d0d0a656e20686965722068656262656e207765206e6f672065656e20656e74657220656e206e6f672077656174206d6565720d0a0d0a0d0a0d0a2068616c6c6f20636f6f6c2064697421, '2013-05-05 00:00:00', '2013-06-05 00:00:00', 1, '2013-04-05 00:00:00', 0, 60.70, 10.00, 0x4f70206865742062616c6b6f6e2062696a20706c617a61, 1, 5, '', 5, 1, '192.168.2.35', '2012-03-31 14:21:43', '2012-04-02 07:22:09', 'UA==', '3nf6u0w6', 7);

--
-- Triggers `dc_activity`
--
DROP TRIGGER IF EXISTS `dc_activity_before_insert`;
DELIMITER //
CREATE TRIGGER `dc_activity_before_insert` BEFORE INSERT ON `dc_activity`
 FOR EACH ROW BEGIN
		SET NEW.datetime_updated = NOW();
	END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_activity_chancelog`
--

CREATE TABLE IF NOT EXISTS `dc_activity_chancelog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modification` varchar(100) NOT NULL,
  `user_ip` varchar(45) NOT NULL,
  KEY `activity_id` (`id`),
  KEY `fk_Activity_chance_Activity1` (`activity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Gegevens worden uitgevoerd voor tabel `dc_activity_chancelog`
--

INSERT INTO `dc_activity_chancelog` (`id`, `activity_id`, `user_id`, `datetime`, `modification`, `user_ip`) VALUES
(5, 1, 1, '2012-03-24 13:02:57', 'dit is een test of deze fucntie werkt !@#$%^&amp;*():|{}?&gt;&lt;,./', '192.168.178.14'),
(6, 1, 1, '2012-03-24 13:09:20', 'dit is een test of deze fucntie werkt !@#$%^&amp;*():|{}?&gt;&lt;,./', '192.168.178.14');

-- --------------------------------------------------------

--
-- Stand-in structuur voor view `dc_activity_comming_active`
--
CREATE TABLE IF NOT EXISTS `dc_activity_comming_active` (
`id` int(11)
,`name` varchar(100)
,`startdate` datetime
);
-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_activity_enroll`
--

CREATE TABLE IF NOT EXISTS `dc_activity_enroll` (
  `activity_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_ip` varchar(45) NOT NULL,
  `comments` text NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `price_payed` decimal(10,2) NOT NULL DEFAULT '0.00',
  `status` enum('yes','no','maybe') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`activity_id`,`user_id`),
  KEY `fk_enroll_user_Activity1` (`activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden uitgevoerd voor tabel `dc_activity_enroll`
--

INSERT INTO `dc_activity_enroll` (`activity_id`, `user_id`, `user_ip`, `comments`, `datetime`, `price`, `price_payed`, `status`) VALUES
(1, 1, '192', 'hallo dit is henk '', henk = henk', '2012-03-31 10:17:04', 7.50, 0.00, 'yes'),
(1, 2, '192', 'hallo dit is henk', '2012-03-27 18:34:04', 7.50, 0.00, 'no'),
(1, 54, '1111111', 'hallo dit is henk', '2012-02-18 14:24:34', 7.50, 0.00, 'yes'),
(4, 1, '127', 'hallo dit is henk', '2012-03-28 13:38:16', 10.00, 0.00, 'no'),
(9, 1, '127.0.0.1', '', '2012-04-07 13:48:18', 60.70, 0.00, 'yes'),
(9, 2, '127.0.0.1', 'Doe toch maar iets anders', '2012-06-26 22:47:56', 10.00, 0.00, 'no'),
(9, 3, '192.168.2.30', 'met geratus henk', '2012-04-01 13:10:41', 0.00, 0.00, 'yes'),
(9, 6, '192.168.2.30', 'met geratus henk', '2012-04-01 13:57:08', 0.00, 0.00, 'yes'),
(9, 7, '192.168.2.30', 'met geratus henk', '2012-04-01 13:57:14', 0.00, 0.00, 'yes'),
(9, 8, '192.168.2.30', 'met geratus henk', '2012-04-01 13:57:24', 0.00, 0.00, 'yes');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_activity_errorlog`
--

CREATE TABLE IF NOT EXISTS `dc_activity_errorlog` (
  `activity_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_ip` varchar(45) NOT NULL,
  `error` varchar(100) NOT NULL,
  KEY `activity_id` (`activity_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden uitgevoerd voor tabel `dc_activity_errorlog`
--

INSERT INTO `dc_activity_errorlog` (`activity_id`, `user_id`, `datetime`, `user_ip`, `error`) VALUES
(1, 2, '2012-03-24 17:32:27', '192.168.178.14', 'Function: get_user_manage_list; User already this status'),
(1, 2, '2012-03-24 17:33:17', '192.168.178.14', 'Function: user_change_status; User already this status'),
(1, 2, '2012-03-24 17:33:27', '192.168.178.14', 'Function: user_change_status; User already this status'),
(1, 2, '2012-03-24 17:33:33', '192.168.178.14', 'Function: get_user_manage_list; User already this status'),
(1, 2, '2012-03-24 17:33:47', '192.168.178.14', 'Function: get_user_manage_list; User already this status'),
(1, 2, '2012-03-24 17:34:01', '192.168.178.14', 'Function: get_group_acces_list; User already this status'),
(1, 1, '2012-03-24 21:29:08', '192.168.178.14', 'Function: get_group_acces_list; User already this status'),
(1, 1, '2012-03-27 10:04:43', '127.0.0.1', 'Function: get_user_manage_list; User already this status'),
(1, 2, '2012-03-27 18:34:13', '192.168.178.14', 'Function: get_user_manage_list; User already this status'),
(1, 2, '2012-03-27 18:34:44', '192.168.178.14', 'Function: get_group_acces_list; User already this status'),
(1, 2, '2012-03-27 19:10:38', '192.168.178.14', 'Function: get_group_acces_list; User already this status'),
(4, 1, '2012-03-28 13:21:14', '127.0.0.1', 'Function: user_change_status; User already this status'),
(1, 1, '2012-03-28 17:46:29', '127.0.0.1', 'Function: user_change_status; User already this status'),
(1, 1, '2012-03-31 10:16:50', '192.168.2.35', 'Function: user_change_status; User already this status'),
(1, 1, '2012-03-31 10:23:09', '192.168.2.35', 'Function: get_user_manage_list; User already this status'),
(1, 1, '2012-04-01 16:36:14', '192.168.2.35', 'Function: user_change_status; Activity is in the past'),
(1, 1, '2012-04-01 16:37:08', '192.168.2.35', 'Function: user_change_status; Activity is in the past'),
(1, 1, '2012-04-01 16:37:13', '192.168.2.35', 'Function: user_change_status; Activity is in the past'),
(1, 1, '2012-04-01 16:37:48', '192.168.2.35', 'Function: user_change_status; Activity is in the past'),
(1, 1, '2012-04-01 16:59:48', '192.168.2.35', 'Function: get_group_acces_list; User already this status'),
(1, 1, '2012-04-01 17:02:33', '192.168.2.35', 'Function: change_group_acces; Activity is in the past'),
(1, 1, '2012-04-01 17:02:41', '192.168.2.35', 'Function: change_user_manage; Activity is in the past'),
(1, 1, '2012-04-01 17:02:50', '192.168.2.35', 'Function: user_change_status; Activity is in the past'),
(9, 2, '2012-04-07 10:03:47', '192.168.2.35', 'Function: user_change_status; User already this status'),
(9, 2, '2012-04-07 11:53:18', '192.168.2.35', 'Function: user_change_status; User already this status');

-- --------------------------------------------------------

--
-- Stand-in structuur voor view `dc_activity_full_list_active`
--
CREATE TABLE IF NOT EXISTS `dc_activity_full_list_active` (
`id` int(11)
,`name` varchar(100)
,`startdate` datetime
);
-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_activity_groupacces`
--

CREATE TABLE IF NOT EXISTS `dc_activity_groupacces` (
  `activity_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `disabled` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`activity_id`,`group_id`),
  KEY `fk_Activity_show_Activity1` (`activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden uitgevoerd voor tabel `dc_activity_groupacces`
--

INSERT INTO `dc_activity_groupacces` (`activity_id`, `group_id`, `created`, `disabled`) VALUES
(1, 1, '2012-03-24 13:39:59', 0),
(1, 5, '2012-03-31 07:57:51', 1),
(1, 7, '2012-04-09 11:42:34', 0),
(1, 9, '2012-04-09 11:42:34', 0),
(2, 5, '2012-04-09 13:20:45', 0),
(2, 7, '2012-04-09 11:43:49', 0),
(2, 9, '2012-04-09 11:43:49', 0),
(3, 5, '2012-04-09 13:20:45', 0),
(4, 5, '2012-04-09 13:20:45', 0),
(5, 5, '2012-04-09 13:20:45', 0),
(6, 5, '2012-04-09 13:20:45', 0),
(7, 5, '2012-04-09 13:20:45', 0),
(8, 5, '2012-04-09 13:20:45', 1),
(9, 5, '2012-04-09 13:20:45', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_activity_read`
--

CREATE TABLE IF NOT EXISTS `dc_activity_read` (
  `activity_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`activity_id`,`user_id`),
  KEY `fk_Activaty_read_Activity1` (`activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden uitgevoerd voor tabel `dc_activity_read`
--

INSERT INTO `dc_activity_read` (`activity_id`, `user_id`, `datetime`) VALUES
(1, 2, '2012-03-28 11:33:55'),
(1, 3, '2012-03-28 11:36:53'),
(1, 18, '2012-03-28 11:37:17'),
(1, 20, '2012-03-28 11:37:08'),
(1, 50, '2012-03-28 11:36:59'),
(2, 15, '2012-03-28 11:37:51'),
(2, 16, '2012-03-28 11:37:51'),
(2, 19, '2012-03-28 11:38:10'),
(2, 25, '2012-03-28 11:38:10');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_activity_user_manage`
--

CREATE TABLE IF NOT EXISTS `dc_activity_user_manage` (
  `activity_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `disabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`activity_id`,`user_id`),
  KEY `fk_Activity_show_Activity1` (`activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden uitgevoerd voor tabel `dc_activity_user_manage`
--

INSERT INTO `dc_activity_user_manage` (`activity_id`, `user_id`, `created`, `disabled`) VALUES
(1, 1, '2012-03-17 15:11:20', 1),
(1, 20, '2012-02-19 14:25:19', 0),
(2, 2, '2012-02-19 14:25:19', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_attachments`
--

CREATE TABLE IF NOT EXISTS `dc_attachments` (
  `attach_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `post_msg_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `in_message` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `poster_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `is_orphan` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `physical_filename` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `real_filename` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `download_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `attach_comment` text COLLATE utf8_bin NOT NULL,
  `extension` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `mimetype` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `filesize` int(20) unsigned NOT NULL DEFAULT '0',
  `filetime` int(11) unsigned NOT NULL DEFAULT '0',
  `thumbnail` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`attach_id`),
  KEY `filetime` (`filetime`),
  KEY `post_msg_id` (`post_msg_id`),
  KEY `topic_id` (`topic_id`),
  KEY `poster_id` (`poster_id`),
  KEY `is_orphan` (`is_orphan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_banlist`
--

CREATE TABLE IF NOT EXISTS `dc_banlist` (
  `ban_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ban_userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ban_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ban_email` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ban_start` int(11) unsigned NOT NULL DEFAULT '0',
  `ban_end` int(11) unsigned NOT NULL DEFAULT '0',
  `ban_exclude` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ban_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ban_give_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`ban_id`),
  KEY `ban_end` (`ban_end`),
  KEY `ban_user` (`ban_userid`,`ban_exclude`),
  KEY `ban_email` (`ban_email`,`ban_exclude`),
  KEY `ban_ip` (`ban_ip`,`ban_exclude`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_bbcodes`
--

CREATE TABLE IF NOT EXISTS `dc_bbcodes` (
  `bbcode_id` smallint(4) unsigned NOT NULL DEFAULT '0',
  `bbcode_tag` varchar(16) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_helpline` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_on_posting` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `bbcode_match` text COLLATE utf8_bin NOT NULL,
  `bbcode_tpl` mediumtext COLLATE utf8_bin NOT NULL,
  `first_pass_match` mediumtext COLLATE utf8_bin NOT NULL,
  `first_pass_replace` mediumtext COLLATE utf8_bin NOT NULL,
  `second_pass_match` mediumtext COLLATE utf8_bin NOT NULL,
  `second_pass_replace` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`bbcode_id`),
  KEY `display_on_post` (`display_on_posting`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_bookmarks`
--

CREATE TABLE IF NOT EXISTS `dc_bookmarks` (
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`topic_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_bots`
--

CREATE TABLE IF NOT EXISTS `dc_bots` (
  `bot_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `bot_active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `bot_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `bot_agent` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bot_ip` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`bot_id`),
  KEY `bot_active` (`bot_active`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=52 ;

--
-- Gegevens worden uitgevoerd voor tabel `dc_bots`
--

INSERT INTO `dc_bots` (`bot_id`, `bot_active`, `bot_name`, `user_id`, `bot_agent`, `bot_ip`) VALUES
(1, 1, 'AdsBot [Google]', 3, 'AdsBot-Google', ''),
(2, 1, 'Alexa [Bot]', 4, 'ia_archiver', ''),
(3, 1, 'Alta Vista [Bot]', 5, 'Scooter/', ''),
(4, 1, 'Ask Jeeves [Bot]', 6, 'Ask Jeeves', ''),
(5, 1, 'Baidu [Spider]', 7, 'Baiduspider+(', ''),
(6, 1, 'Bing [Bot]', 8, 'bingbot/', ''),
(7, 1, 'Exabot [Bot]', 9, 'Exabot/', ''),
(8, 1, 'FAST Enterprise [Crawler]', 10, 'FAST Enterprise Crawler', ''),
(9, 1, 'FAST WebCrawler [Crawler]', 11, 'FAST-WebCrawler/', ''),
(10, 1, 'Francis [Bot]', 12, 'http://www.neomo.de/', ''),
(11, 1, 'Gigabot [Bot]', 13, 'Gigabot/', ''),
(12, 1, 'Google Adsense [Bot]', 14, 'Mediapartners-Google', ''),
(13, 1, 'Google Desktop', 15, 'Google Desktop', ''),
(14, 1, 'Google Feedfetcher', 16, 'Feedfetcher-Google', ''),
(15, 1, 'Google [Bot]', 17, 'Googlebot', ''),
(16, 1, 'Heise IT-Markt [Crawler]', 18, 'heise-IT-Markt-Crawler', ''),
(17, 1, 'Heritrix [Crawler]', 19, 'heritrix/1.', ''),
(18, 1, 'IBM Research [Bot]', 20, 'ibm.com/cs/crawler', ''),
(19, 1, 'ICCrawler - ICjobs', 21, 'ICCrawler - ICjobs', ''),
(20, 1, 'ichiro [Crawler]', 22, 'ichiro/', ''),
(21, 1, 'Majestic-12 [Bot]', 23, 'MJ12bot/', ''),
(22, 1, 'Metager [Bot]', 24, 'MetagerBot/', ''),
(23, 1, 'MSN NewsBlogs', 25, 'msnbot-NewsBlogs/', ''),
(24, 1, 'MSN [Bot]', 26, 'msnbot/', ''),
(25, 1, 'MSNbot Media', 27, 'msnbot-media/', ''),
(26, 1, 'NG-Search [Bot]', 28, 'NG-Search/', ''),
(27, 1, 'Nutch [Bot]', 29, 'http://lucene.apache.org/nutch/', ''),
(28, 1, 'Nutch/CVS [Bot]', 30, 'NutchCVS/', ''),
(29, 1, 'OmniExplorer [Bot]', 31, 'OmniExplorer_Bot/', ''),
(30, 1, 'Online link [Validator]', 32, 'online link validator', ''),
(31, 1, 'psbot [Picsearch]', 33, 'psbot/0', ''),
(32, 1, 'Seekport [Bot]', 34, 'Seekbot/', ''),
(33, 1, 'Sensis [Crawler]', 35, 'Sensis Web Crawler', ''),
(34, 1, 'SEO Crawler', 36, 'SEO search Crawler/', ''),
(35, 1, 'Seoma [Crawler]', 37, 'Seoma [SEO Crawler]', ''),
(36, 1, 'SEOSearch [Crawler]', 38, 'SEOsearch/', ''),
(37, 1, 'Snappy [Bot]', 39, 'Snappy/1.1 ( http://www.urltrends.com/ )', ''),
(38, 1, 'Steeler [Crawler]', 40, 'http://www.tkl.iis.u-tokyo.ac.jp/~crawler/', ''),
(39, 1, 'Synoo [Bot]', 41, 'SynooBot/', ''),
(40, 1, 'Telekom [Bot]', 42, 'crawleradmin.t-info@telekom.de', ''),
(41, 1, 'TurnitinBot [Bot]', 43, 'TurnitinBot/', ''),
(42, 1, 'Voyager [Bot]', 44, 'voyager/1.0', ''),
(43, 1, 'W3 [Sitesearch]', 45, 'W3 SiteSearch Crawler', ''),
(44, 1, 'W3C [Linkcheck]', 46, 'W3C-checklink/', ''),
(45, 1, 'W3C [Validator]', 47, 'W3C_*Validator', ''),
(46, 1, 'WiseNut [Bot]', 48, 'http://www.WISEnutbot.com', ''),
(47, 1, 'YaCy [Bot]', 49, 'yacybot', ''),
(48, 1, 'Yahoo MMCrawler [Bot]', 50, 'Yahoo-MMCrawler/', ''),
(49, 1, 'Yahoo Slurp [Bot]', 51, 'Yahoo! DE Slurp', ''),
(50, 1, 'Yahoo [Bot]', 52, 'Yahoo! Slurp', ''),
(51, 1, 'YahooSeeker [Bot]', 53, 'YahooSeeker/', '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_config`
--

CREATE TABLE IF NOT EXISTS `dc_config` (
  `config_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `config_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `is_dynamic` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`config_name`),
  KEY `is_dynamic` (`is_dynamic`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Gegevens worden uitgevoerd voor tabel `dc_config`
--

INSERT INTO `dc_config` (`config_name`, `config_value`, `is_dynamic`) VALUES
('active_sessions', '0', 0),
('allow_attachments', '1', 0),
('allow_autologin', '1', 0),
('allow_avatar', '0', 0),
('allow_avatar_local', '0', 0),
('allow_avatar_remote', '0', 0),
('allow_avatar_remote_upload', '0', 0),
('allow_avatar_upload', '0', 0),
('allow_bbcode', '1', 0),
('allow_birthdays', '1', 0),
('allow_bookmarks', '1', 0),
('allow_emailreuse', '0', 0),
('allow_forum_notify', '1', 0),
('allow_mass_pm', '1', 0),
('allow_name_chars', 'USERNAME_CHARS_ANY', 0),
('allow_namechange', '0', 0),
('allow_nocensors', '0', 0),
('allow_pm_attach', '0', 0),
('allow_pm_report', '1', 0),
('allow_post_flash', '1', 0),
('allow_post_links', '1', 0),
('allow_privmsg', '1', 0),
('allow_quick_reply', '1', 0),
('allow_sig', '1', 0),
('allow_sig_bbcode', '1', 0),
('allow_sig_flash', '0', 0),
('allow_sig_img', '1', 0),
('allow_sig_links', '1', 0),
('allow_sig_pm', '1', 0),
('allow_sig_smilies', '1', 0),
('allow_smilies', '1', 0),
('allow_topic_notify', '1', 0),
('attachment_quota', '52428800', 0),
('auth_bbcode_pm', '1', 0),
('auth_flash_pm', '0', 0),
('auth_img_pm', '1', 0),
('auth_method', 'db', 0),
('auth_smilies_pm', '1', 0),
('avatar_filesize', '6144', 0),
('avatar_gallery_path', 'images/avatars/gallery', 0),
('avatar_max_height', '90', 0),
('avatar_max_width', '90', 0),
('avatar_min_height', '20', 0),
('avatar_min_width', '20', 0),
('avatar_path', 'images/avatars/upload', 0),
('avatar_salt', '374fc5cf477d91e260ffef56655f973f', 0),
('board_contact', 'gercoversloot@gmail.com', 0),
('board_disable', '0', 0),
('board_disable_msg', '', 0),
('board_dst', '0', 0),
('board_email', 'gercoversloot@gmail.com', 0),
('board_email_form', '0', 0),
('board_email_sig', 'Met vriendelijke groeten, De Digitale commissie van gumbo millennium.nl nog een test', 0),
('board_hide_emails', '1', 0),
('board_startdate', '1327581813', 0),
('board_timezone', '0', 0),
('browser_check', '1', 0),
('bump_interval', '10', 0),
('bump_type', 'd', 0),
('cache_gc', '7200', 0),
('cache_last_gc', '1342006605', 1),
('captcha_gd', '1', 0),
('captcha_gd_3d_noise', '1', 0),
('captcha_gd_fonts', '1', 0),
('captcha_gd_foreground_noise', '0', 0),
('captcha_gd_wave', '0', 0),
('captcha_gd_x_grid', '25', 0),
('captcha_gd_y_grid', '25', 0),
('captcha_plugin', 'phpbb_captcha_gd', 0),
('check_attachment_content', '1', 0),
('check_dnsbl', '0', 0),
('chg_passforce', '0', 0),
('confirm_refresh', '1', 0),
('cookie_domain', '192.168.178.13', 0),
('cookie_name', 'phpbb3_agjnk', 0),
('cookie_path', '/', 0),
('cookie_secure', '0', 0),
('coppa_enable', '0', 0),
('coppa_fax', '', 0),
('coppa_mail', '', 0),
('cron_lock', '0', 1),
('database_gc', '604800', 0),
('database_last_gc', '1341429717', 1),
('dbms_version', '5.5.16', 0),
('default_dateformat', 'D d M Y, H:i', 0),
('default_lang', 'en', 0),
('default_style', '1', 0),
('delete_time', '0', 0),
('description', '', 0),
('display_last_edited', '1', 0),
('display_order', '0', 0),
('edit_time', '0', 0),
('email_check_mx', '1', 0),
('email_enable', '1', 0),
('email_function_name', 'mail', 0),
('email_max_chunk_size', '50', 0),
('email_package_size', '20', 0),
('enable_confirm', '1', 0),
('enable_pm_icons', '1', 0),
('enable_post_confirm', '1', 0),
('feed_enable', '0', 0),
('feed_forum', '1', 0),
('feed_http_auth', '0', 0),
('feed_item_statistics', '1', 0),
('feed_limit_post', '15', 0),
('feed_limit_topic', '10', 0),
('feed_overall', '1', 0),
('feed_overall_forums', '0', 0),
('feed_topic', '1', 0),
('feed_topics_active', '0', 0),
('feed_topics_new', '1', 0),
('flood_interval', '15', 0),
('force_server_vars', '0', 0),
('form_token_lifetime', '7200', 0),
('form_token_mintime', '0', 0),
('form_token_sid_guests', '1', 0),
('forward_pm', '1', 0),
('forwarded_for_check', '0', 0),
('full_folder_action', '2', 0),
('fulltext_mysql_max_word_len', '254', 0),
('fulltext_mysql_min_word_len', '4', 0),
('fulltext_native_common_thres', '5', 0),
('fulltext_native_load_upd', '1', 0),
('fulltext_native_max_chars', '14', 0),
('fulltext_native_min_chars', '3', 0),
('gzip_compress', '0', 0),
('hot_threshold', '25', 0),
('icons_path', 'images/icons', 0),
('img_create_thumbnail', '0', 0),
('img_display_inlined', '1', 0),
('img_imagick', '', 0),
('img_link_height', '0', 0),
('img_link_width', '0', 0),
('img_max_height', '0', 0),
('img_max_thumb_width', '400', 0),
('img_max_width', '0', 0),
('img_min_thumb_filesize', '12000', 0),
('ip_check', '3', 0),
('ip_login_limit_max', '50', 0),
('ip_login_limit_time', '21600', 0),
('ip_login_limit_use_forwarded', '0', 0),
('jab_enable', '0', 0),
('jab_host', '', 0),
('jab_package_size', '20', 0),
('jab_password', '', 0),
('jab_port', '5222', 0),
('jab_use_ssl', '0', 0),
('jab_username', '', 0),
('last_queue_run', '1341925496', 1),
('ldap_base_dn', '', 0),
('ldap_email', '', 0),
('ldap_password', '', 0),
('ldap_port', '', 0),
('ldap_server', '', 0),
('ldap_uid', '', 0),
('ldap_user', '', 0),
('ldap_user_filter', '', 0),
('limit_load', '0', 0),
('limit_search_load', '0', 0),
('load_anon_lastread', '0', 0),
('load_birthdays', '1', 0),
('load_cpf_memberlist', '0', 0),
('load_cpf_viewprofile', '1', 0),
('load_cpf_viewtopic', '0', 0),
('load_db_lastread', '1', 0),
('load_db_track', '1', 0),
('load_jumpbox', '1', 0),
('load_moderators', '1', 0),
('load_online', '1', 0),
('load_online_guests', '1', 0),
('load_online_time', '5', 0),
('load_onlinetrack', '1', 0),
('load_search', '1', 0),
('load_tplcompile', '1', 0),
('load_unreads_search', '1', 0),
('load_user_activity', '1', 0),
('max_attachments', '3', 0),
('max_attachments_pm', '1', 0),
('max_autologin_time', '0', 0),
('max_filesize', '262144', 0),
('max_filesize_pm', '262144', 0),
('max_login_attempts', '3', 0),
('max_name_chars', '20', 0),
('max_num_search_keywords', '10', 0),
('max_pass_chars', '100', 0),
('max_poll_options', '10', 0),
('max_post_chars', '60000', 0),
('max_post_font_size', '200', 0),
('max_post_img_height', '0', 0),
('max_post_img_width', '0', 0),
('max_post_smilies', '0', 0),
('max_post_urls', '0', 0),
('max_quote_depth', '3', 0),
('max_reg_attempts', '5', 0),
('max_sig_chars', '255', 0),
('max_sig_font_size', '200', 0),
('max_sig_img_height', '0', 0),
('max_sig_img_width', '0', 0),
('max_sig_smilies', '0', 0),
('max_sig_urls', '5', 0),
('mime_triggers', 'body|head|html|img|plaintext|a href|pre|script|table|title', 0),
('min_name_chars', '3', 0),
('min_pass_chars', '6', 0),
('min_post_chars', '1', 0),
('min_search_author_chars', '3', 0),
('name', '1', 0),
('new_member_group_default', '0', 0),
('new_member_post_limit', '3', 0),
('newest_user_colour', 'AA0000', 1),
('newest_user_id', '56', 1),
('newest_username', 'DigitaleCommissie', 1),
('num_files', '0', 1),
('num_posts', '6', 1),
('num_topics', '4', 1),
('num_users', '4', 1),
('override_user_style', '0', 0),
('pass_complex', 'PASS_TYPE_ANY', 0),
('pm_edit_time', '0', 0),
('pm_max_boxes', '4', 0),
('pm_max_msgs', '50', 0),
('pm_max_recipients', '0', 0),
('posts_per_page', '10', 0),
('print_pm', '1', 0),
('questionnaire_unique_id', '890ac0b68f091aaf', 0),
('queue_interval', '60', 0),
('rand_seed', '8e02e48d6c89bacacac8c718a0b55a9c', 1),
('rand_seed_last_update', '1342012499', 1),
('ranks_path', 'images/ranks', 0),
('record_online_date', '1332190823', 1),
('record_online_users', '4', 1),
('referer_validation', '1', 0),
('require_activation', '0', 0),
('script_path', '/Gumbo Millennium', 0),
('search_anonymous_interval', '0', 0),
('search_block_size', '250', 0),
('search_gc', '7200', 0),
('search_indexing_state', '', 1),
('search_interval', '0', 0),
('search_last_gc', '1342006610', 1),
('search_store_results', '1800', 0),
('search_type', 'fulltext_native', 0),
('secure_allow_deny', '1', 0),
('secure_allow_empty_referer', '1', 0),
('secure_downloads', '0', 0),
('server_name', '192.168.178.13', 0),
('server_port', '80', 0),
('server_protocol', 'http://', 0),
('session_gc', '3600', 0),
('session_last_gc', '1342012491', 1),
('session_length', '3600', 0),
('site_desc', 'Een korte tekst om je forum te beschrijven', 0),
('sitename', 'mijndomein.nl', 0),
('smilies_path', 'images/smilies', 0),
('smilies_per_page', '50', 0),
('smtp_auth_method', 'PLAIN', 0),
('smtp_delivery', '0', 0),
('smtp_host', '', 0),
('smtp_password', '', 0),
('smtp_port', '25', 0),
('smtp_username', '', 0),
('topics_per_page', '25', 0),
('tpl_allow_php', '0', 0),
('upload_dir_size', '0', 1),
('upload_icons_path', 'images/upload_icons', 0),
('upload_path', 'files', 0),
('version', '3.0.10', 0),
('warnings_expire_days', '90', 0),
('warnings_gc', '14400', 0),
('warnings_last_gc', '1342012486', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_confirm`
--

CREATE TABLE IF NOT EXISTS `dc_confirm` (
  `confirm_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `confirm_type` tinyint(3) NOT NULL DEFAULT '0',
  `code` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `seed` int(10) unsigned NOT NULL DEFAULT '0',
  `attempts` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`session_id`,`confirm_id`),
  KEY `confirm_type` (`confirm_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_disallow`
--

CREATE TABLE IF NOT EXISTS `dc_disallow` (
  `disallow_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `disallow_username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`disallow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_drafts`
--

CREATE TABLE IF NOT EXISTS `dc_drafts` (
  `draft_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `save_time` int(11) unsigned NOT NULL DEFAULT '0',
  `draft_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `draft_message` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`draft_id`),
  KEY `save_time` (`save_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_extensions`
--

CREATE TABLE IF NOT EXISTS `dc_extensions` (
  `extension_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `extension` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`extension_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=67 ;

--
-- Gegevens worden uitgevoerd voor tabel `dc_extensions`
--

INSERT INTO `dc_extensions` (`extension_id`, `group_id`, `extension`) VALUES
(1, 1, 'gif'),
(2, 1, 'png'),
(3, 1, 'jpeg'),
(4, 1, 'jpg'),
(5, 1, 'tif'),
(6, 1, 'tiff'),
(7, 1, 'tga'),
(8, 2, 'gtar'),
(9, 2, 'gz'),
(10, 2, 'tar'),
(11, 2, 'zip'),
(12, 2, 'rar'),
(13, 2, 'ace'),
(14, 2, 'torrent'),
(15, 2, 'tgz'),
(16, 2, 'bz2'),
(17, 2, '7z'),
(18, 3, 'txt'),
(19, 3, 'c'),
(20, 3, 'h'),
(21, 3, 'cpp'),
(22, 3, 'hpp'),
(23, 3, 'diz'),
(24, 3, 'csv'),
(25, 3, 'ini'),
(26, 3, 'log'),
(27, 3, 'js'),
(28, 3, 'xml'),
(29, 4, 'xls'),
(30, 4, 'xlsx'),
(31, 4, 'xlsm'),
(32, 4, 'xlsb'),
(33, 4, 'doc'),
(34, 4, 'docx'),
(35, 4, 'docm'),
(36, 4, 'dot'),
(37, 4, 'dotx'),
(38, 4, 'dotm'),
(39, 4, 'pdf'),
(40, 4, 'ai'),
(41, 4, 'ps'),
(42, 4, 'ppt'),
(43, 4, 'pptx'),
(44, 4, 'pptm'),
(45, 4, 'odg'),
(46, 4, 'odp'),
(47, 4, 'ods'),
(48, 4, 'odt'),
(49, 4, 'rtf'),
(50, 5, 'rm'),
(51, 5, 'ram'),
(52, 6, 'wma'),
(53, 6, 'wmv'),
(54, 7, 'swf'),
(55, 8, 'mov'),
(56, 8, 'm4v'),
(57, 8, 'm4a'),
(58, 8, 'mp4'),
(59, 8, '3gp'),
(60, 8, '3g2'),
(61, 8, 'qt'),
(62, 9, 'mpeg'),
(63, 9, 'mpg'),
(64, 9, 'mp3'),
(65, 9, 'ogg'),
(66, 9, 'ogm');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_extension_groups`
--

CREATE TABLE IF NOT EXISTS `dc_extension_groups` (
  `group_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `cat_id` tinyint(2) NOT NULL DEFAULT '0',
  `allow_group` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `download_mode` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `upload_icon` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `max_filesize` int(20) unsigned NOT NULL DEFAULT '0',
  `allowed_forums` text COLLATE utf8_bin NOT NULL,
  `allow_in_pm` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=10 ;

--
-- Gegevens worden uitgevoerd voor tabel `dc_extension_groups`
--

INSERT INTO `dc_extension_groups` (`group_id`, `group_name`, `cat_id`, `allow_group`, `download_mode`, `upload_icon`, `max_filesize`, `allowed_forums`, `allow_in_pm`) VALUES
(1, 'IMAGES', 1, 1, 1, '', 0, '', 0),
(2, 'ARCHIVES', 0, 1, 1, '', 0, '', 0),
(3, 'PLAIN_TEXT', 0, 0, 1, '', 0, '', 0),
(4, 'DOCUMENTS', 0, 0, 1, '', 0, '', 0),
(5, 'REAL_MEDIA', 3, 0, 1, '', 0, '', 0),
(6, 'WINDOWS_MEDIA', 2, 0, 1, '', 0, '', 0),
(7, 'FLASH_FILES', 5, 0, 1, '', 0, '', 0),
(8, 'QUICKTIME_MEDIA', 6, 0, 1, '', 0, '', 0),
(9, 'DOWNLOADABLE_FILES', 0, 0, 1, '', 0, '', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_forums`
--

CREATE TABLE IF NOT EXISTS `dc_forums` (
  `forum_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `left_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `right_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_parents` mediumtext COLLATE utf8_bin NOT NULL,
  `forum_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_desc` text COLLATE utf8_bin NOT NULL,
  `forum_desc_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_desc_options` int(11) unsigned NOT NULL DEFAULT '7',
  `forum_desc_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_link` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_password` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_style` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_image` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_rules` text COLLATE utf8_bin NOT NULL,
  `forum_rules_link` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_rules_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_rules_options` int(11) unsigned NOT NULL DEFAULT '7',
  `forum_rules_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_topics_per_page` tinyint(4) NOT NULL DEFAULT '0',
  `forum_type` tinyint(4) NOT NULL DEFAULT '0',
  `forum_status` tinyint(4) NOT NULL DEFAULT '0',
  `forum_posts` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_topics` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_topics_real` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_last_post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_last_poster_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_last_post_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_last_post_time` int(11) unsigned NOT NULL DEFAULT '0',
  `forum_last_poster_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_last_poster_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_flags` tinyint(4) NOT NULL DEFAULT '32',
  `forum_options` int(20) unsigned NOT NULL DEFAULT '0',
  `display_subforum_list` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `display_on_index` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_indexing` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_icons` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_prune` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `prune_next` int(11) unsigned NOT NULL DEFAULT '0',
  `prune_days` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `prune_viewed` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `prune_freq` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`forum_id`),
  KEY `left_right_id` (`left_id`,`right_id`),
  KEY `forum_lastpost_id` (`forum_last_post_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=13 ;

--
-- Gegevens worden uitgevoerd voor tabel `dc_forums`
--

INSERT INTO `dc_forums` (`forum_id`, `parent_id`, `left_id`, `right_id`, `forum_parents`, `forum_name`, `forum_desc`, `forum_desc_bitfield`, `forum_desc_options`, `forum_desc_uid`, `forum_link`, `forum_password`, `forum_style`, `forum_image`, `forum_rules`, `forum_rules_link`, `forum_rules_bitfield`, `forum_rules_options`, `forum_rules_uid`, `forum_topics_per_page`, `forum_type`, `forum_status`, `forum_posts`, `forum_topics`, `forum_topics_real`, `forum_last_post_id`, `forum_last_poster_id`, `forum_last_post_subject`, `forum_last_post_time`, `forum_last_poster_name`, `forum_last_poster_colour`, `forum_flags`, `forum_options`, `display_subforum_list`, `display_on_index`, `enable_indexing`, `enable_icons`, `enable_prune`, `prune_next`, `prune_days`, `prune_viewed`, `prune_freq`) VALUES
(1, 0, 1, 4, '', 'Je eerste categorie', '', '', 7, '', '', '', 0, '', '', '', '', 7, '', 0, 0, 0, 1, 1, 1, 1, 2, '', 1327581813, 'nyxus', 'AA0000', 32, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(2, 1, 2, 3, 0x613a313a7b693a313b613a323a7b693a303b733a31393a224a65206565727374652063617465676f726965223b693a313b693a303b7d7d, 'Je eerste forum', 0x4f6d73636872696a76696e672076616e206a652065657273746520666f72756d2e, '', 7, '', '', '', 0, '', '', '', '', 7, '', 0, 1, 0, 4, 2, 2, 5, 2, 'Re: gatus test', 1341251804, 'nyxus', 'AA0000', 48, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(8, 0, 5, 6, '', 'Project groepen', '', '', 7, '', '', '', 0, '', '', '', '', 7, '', 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', '', 48, 0, 1, 0, 1, 0, 0, 0, 7, 7, 1),
(10, 0, 7, 10, '', 'Commissies', '', '', 7, '', '', '', 0, '', '', '', '', 7, '', 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', '', 32, 0, 1, 0, 1, 0, 0, 0, 7, 7, 1),
(11, 10, 8, 9, 0x613a313a7b693a31303b613a323a7b693a303b733a31303a22436f6d6d697373696573223b693a313b693a303b7d7d, 'Digitale Commissie', 0x45656e20737065636961616c20666f72756d20616c6c65656e20766f6f72206c6564656e2076616e206465206469676974616c6520636f6d6d69736965, '', 7, '', '', '', 0, '', '', '', '', 7, '', 0, 1, 0, 2, 2, 2, 8, 2, 'Toekomst muziek activiteiten systeem', 1341999658, 'nyxus', 'AA0000', 48, 0, 1, 0, 1, 0, 0, 0, 7, 7, 1),
(12, 0, 11, 12, '', 'Test forum', 0x4d65742064697420666f72756d20776f7264656e2074657374656e2067656461616e, '', 7, '', '', '', 0, '', '', '', '', 7, '', 0, 1, 1, 0, 0, 0, 0, 0, '', 0, '', '', 32, 0, 0, 0, 0, 0, 0, 0, 7, 7, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_forums_access`
--

CREATE TABLE IF NOT EXISTS `dc_forums_access` (
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`forum_id`,`user_id`,`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_forums_track`
--

CREATE TABLE IF NOT EXISTS `dc_forums_track` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `mark_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`forum_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Gegevens worden uitgevoerd voor tabel `dc_forums_track`
--

INSERT INTO `dc_forums_track` (`user_id`, `forum_id`, `mark_time`) VALUES
(2, 2, 1341486740),
(2, 11, 1341999658);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_forums_watch`
--

CREATE TABLE IF NOT EXISTS `dc_forums_watch` (
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `notify_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  KEY `forum_id` (`forum_id`),
  KEY `user_id` (`user_id`),
  KEY `notify_stat` (`notify_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_groups`
--

CREATE TABLE IF NOT EXISTS `dc_groups` (
  `group_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `group_type` tinyint(4) NOT NULL DEFAULT '1',
  `group_founder_manage` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `group_skip_auth` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `group_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_desc` text COLLATE utf8_bin NOT NULL,
  `group_desc_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_desc_options` int(11) unsigned NOT NULL DEFAULT '7',
  `group_desc_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_display` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `group_avatar` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_avatar_type` tinyint(2) NOT NULL DEFAULT '0',
  `group_avatar_width` smallint(4) unsigned NOT NULL DEFAULT '0',
  `group_avatar_height` smallint(4) unsigned NOT NULL DEFAULT '0',
  `group_rank` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_sig_chars` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_receive_pm` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `group_message_limit` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_max_recipients` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_legend` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`group_id`),
  KEY `group_legend_name` (`group_legend`,`group_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=15 ;

--
-- Gegevens worden uitgevoerd voor tabel `dc_groups`
--

INSERT INTO `dc_groups` (`group_id`, `group_type`, `group_founder_manage`, `group_skip_auth`, `group_name`, `group_desc`, `group_desc_bitfield`, `group_desc_options`, `group_desc_uid`, `group_display`, `group_avatar`, `group_avatar_type`, `group_avatar_width`, `group_avatar_height`, `group_rank`, `group_colour`, `group_sig_chars`, `group_receive_pm`, `group_message_limit`, `group_max_recipients`, `group_legend`) VALUES
(1, 3, 0, 0, 'GUESTS', '', '', 7, '', 0, '', 0, 0, 0, 0, '', 0, 0, 0, 5, 0),
(2, 3, 0, 0, 'REGISTERED', '', '', 7, '', 0, '', 0, 0, 0, 0, '', 0, 0, 0, 5, 0),
(3, 3, 0, 0, 'REGISTERED_COPPA', '', '', 7, '', 0, '', 0, 0, 0, 0, '', 0, 0, 0, 5, 0),
(4, 3, 0, 0, 'GLOBAL_MODERATORS', '', '', 7, '', 0, '', 0, 0, 0, 0, '00AA00', 0, 0, 0, 0, 1),
(5, 3, 1, 0, 'ADMINISTRATORS', '', '', 7, '', 0, '', 0, 0, 0, 0, 'AA0000', 0, 0, 0, 0, 1),
(6, 3, 0, 0, 'BOTS', '', '', 7, '', 0, '', 0, 0, 0, 0, '9E8DA7', 0, 0, 0, 5, 0),
(7, 3, 0, 0, 'NEWLY_REGISTERED', '', '', 7, '', 0, '', 0, 0, 0, 0, '', 0, 0, 0, 5, 0),
(9, 1, 0, 0, 'Leden', '', '', 7, '', 0, '', 0, 0, 0, 0, '', 0, 0, 0, 0, 1),
(10, 1, 0, 0, 'Oud leden', '', '', 7, '', 0, '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(11, 1, 0, 0, 'A-Leden', '', '', 7, '', 0, '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(13, 1, 0, 0, 'Bestuur', '', '', 7, '', 0, '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(14, 1, 0, 0, 'AC', '', '', 7, '', 0, '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_icons`
--

CREATE TABLE IF NOT EXISTS `dc_icons` (
  `icons_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `icons_url` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `icons_width` tinyint(4) NOT NULL DEFAULT '0',
  `icons_height` tinyint(4) NOT NULL DEFAULT '0',
  `icons_order` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `display_on_posting` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`icons_id`),
  KEY `display_on_posting` (`display_on_posting`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=11 ;

--
-- Gegevens worden uitgevoerd voor tabel `dc_icons`
--

INSERT INTO `dc_icons` (`icons_id`, `icons_url`, `icons_width`, `icons_height`, `icons_order`, `display_on_posting`) VALUES
(1, 'misc/fire.gif', 16, 16, 1, 1),
(2, 'smile/redface.gif', 16, 16, 9, 1),
(3, 'smile/mrgreen.gif', 16, 16, 10, 1),
(4, 'misc/heart.gif', 16, 16, 4, 1),
(5, 'misc/star.gif', 16, 16, 2, 1),
(6, 'misc/radioactive.gif', 16, 16, 3, 1),
(7, 'misc/thinking.gif', 16, 16, 5, 1),
(8, 'smile/info.gif', 16, 16, 8, 1),
(9, 'smile/question.gif', 16, 16, 6, 1),
(10, 'smile/alert.gif', 16, 16, 7, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_lang`
--

CREATE TABLE IF NOT EXISTS `dc_lang` (
  `lang_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `lang_iso` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_dir` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_english_name` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_local_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_author` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`lang_id`),
  KEY `lang_iso` (`lang_iso`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Gegevens worden uitgevoerd voor tabel `dc_lang`
--

INSERT INTO `dc_lang` (`lang_id`, `lang_iso`, `lang_dir`, `lang_english_name`, `lang_local_name`, `lang_author`) VALUES
(1, 'en', 'en', 'British English', 'British English', 'phpBB Group'),
(2, 'nl', 'nl', 'Dutch (Casual Honorifics)‎', 'Nederlands (Informeel)', 'phpBB.nl');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_log`
--

CREATE TABLE IF NOT EXISTS `dc_log` (
  `log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `log_type` tinyint(4) NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `reportee_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `log_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `log_time` int(11) unsigned NOT NULL DEFAULT '0',
  `log_operation` text COLLATE utf8_bin NOT NULL,
  `log_data` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `log_type` (`log_type`),
  KEY `forum_id` (`forum_id`),
  KEY `topic_id` (`topic_id`),
  KEY `reportee_id` (`reportee_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=290 ;

--
-- Gegevens worden uitgevoerd voor tabel `dc_log`
--

INSERT INTO `dc_log` (`log_id`, `log_type`, `user_id`, `forum_id`, `topic_id`, `reportee_id`, `log_ip`, `log_time`, `log_operation`, `log_data`) VALUES
(1, 2, 2, 0, 0, 0, '192.168.178.17', 1327581830, 0x4c4f475f4552524f525f454d41494c, 0x613a313a7b693a303b733a3432373a223c7374726f6e673e454d41494c2f5048502f6d61696c28293c2f7374726f6e673e3c6272202f3e3c656d3e2f47756d626f204d696c6c656e6e69756d2f696e7374616c6c2f696e6465782e7068703c2f656d3e3c6272202f3e3c6272202f3e3c623e5b70687042422044656275675d20504850205761726e696e673c2f623e3a20696e2066696c65203c623e2f696e636c756465732f66756e6374696f6e735f6d657373656e6765722e7068703c2f623e206f6e206c696e65203c623e313632313c2f623e3a203c623e6d61696c2829205b3c6120687265663d2766756e6374696f6e2e6d61696c273e66756e6374696f6e2e6d61696c3c2f613e5d3a204661696c656420746f20636f6e6e65637420746f206d61696c736572766572206174202671756f743b6c6f63616c686f73742671756f743b20706f72742032352c2076657269667920796f7572202671756f743b534d54502671756f743b20616e64202671756f743b736d74705f706f72742671756f743b2073657474696e6720696e207068702e696e69206f722075736520696e695f73657428293c2f623e3c6272202f3e0a3c6272202f3e223b7d),
(2, 0, 2, 0, 0, 0, '192.168.178.17', 1327581830, 0x4c4f475f494e5354414c4c5f494e5354414c4c4544, 0x613a313a7b693a303b733a353a22332e302e39223b7d),
(3, 0, 2, 0, 0, 0, '192.168.178.17', 1327581859, 0x4c4f475f434f4e4649475f4c4f4144, ''),
(4, 2, 1, 0, 0, 0, '192.168.178.17', 1327933309, 0x4c4f475f4552524f525f454d41494c, 0x613a313a7b693a303b733a3431373a223c7374726f6e673e454d41494c2f5048502f6d61696c28293c2f7374726f6e673e3c6272202f3e3c656d3e2f47756d626f204d696c6c656e6e69756d2f7563702e7068703c2f656d3e3c6272202f3e3c6272202f3e3c623e5b70687042422044656275675d20504850205761726e696e673c2f623e3a20696e2066696c65203c623e2f696e636c756465732f66756e6374696f6e735f6d657373656e6765722e7068703c2f623e206f6e206c696e65203c623e313632313c2f623e3a203c623e6d61696c2829205b3c6120687265663d2766756e6374696f6e2e6d61696c273e66756e6374696f6e2e6d61696c3c2f613e5d3a204661696c656420746f20636f6e6e65637420746f206d61696c736572766572206174202671756f743b6c6f63616c686f73742671756f743b20706f72742032352c2076657269667920796f7572202671756f743b534d54502671756f743b20616e64202671756f743b736d74705f706f72742671756f743b2073657474696e6720696e207068702e696e69206f722075736520696e695f73657428293c2f623e3c6272202f3e0a3c6272202f3e223b7d),
(5, 0, 2, 0, 0, 0, '192.168.178.17', 1328176221, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(6, 0, 2, 0, 0, 0, '192.168.178.17', 1328176591, 0x4c4f475f47524f55505f43524541544544, 0x613a313a7b693a303b733a32323a2241637469766974656974656e20636f6d6d6973736965223b7d),
(7, 0, 2, 0, 0, 0, '192.168.178.17', 1328180234, 0x4c4f475f50555247455f4341434845, ''),
(8, 0, 2, 0, 0, 0, '127.0.0.1', 1328190141, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(9, 0, 2, 0, 0, 0, '127.0.0.1', 1328190158, 0x4c4f475f434f4e4649475f53455454494e4753, ''),
(10, 0, 2, 0, 0, 0, '127.0.0.1', 1328190498, 0x4c4f475f41434c5f4144445f555345525f474c4f42414c5f555f, 0x613a313a7b693a303b733a343a2274657374223b7d),
(11, 0, 2, 0, 0, 0, '127.0.0.1', 1328190942, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(12, 0, 2, 0, 0, 0, '127.0.0.1', 1328191414, 0x4c4f475f50555247455f4341434845, ''),
(13, 0, 2, 0, 0, 0, '127.0.0.1', 1328193433, 0x4c4f475f50555247455f4341434845, ''),
(14, 0, 2, 0, 0, 0, '127.0.0.1', 1328193587, 0x4c4f475f50555247455f4341434845, ''),
(15, 0, 2, 0, 0, 0, '127.0.0.1', 1328193677, 0x4c4f475f50555247455f4341434845, ''),
(16, 0, 2, 0, 0, 0, '192.168.178.17', 1328348139, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(17, 0, 2, 0, 0, 0, '192.168.178.17', 1328348349, 0x4c4f475f41434c5f4144445f4d4f445f474c4f42414c5f4d5f, 0x613a313a7b693a303b733a34333a223c7370616e20636c6173733d22736570223e476c6f62616c65206d6f64657261746f72733c2f7370616e3e223b7d),
(18, 0, 2, 0, 0, 0, '192.168.178.17', 1328350366, 0x4c4f475f434f4e4649475f4c4f4144, ''),
(19, 0, 2, 0, 0, 0, '192.168.178.17', 1328350376, 0x4c4f475f50555247455f4341434845, ''),
(20, 0, 2, 0, 0, 0, '192.168.178.17', 1328350666, 0x4c4f475f50555247455f4341434845, ''),
(21, 0, 2, 0, 0, 0, '192.168.178.17', 1328350916, 0x4c4f475f50555247455f4341434845, ''),
(22, 0, 2, 0, 0, 0, '192.168.178.17', 1328351427, 0x4c4f475f50555247455f4341434845, ''),
(23, 0, 2, 0, 0, 0, '127.0.0.1', 1329569219, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(24, 0, 2, 0, 0, 0, '127.0.0.1', 1329569666, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(25, 0, 2, 0, 0, 0, '192.168.178.14', 1332187708, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(26, 2, 1, 0, 0, 0, '192.168.178.20', 1332187748, 0x4c4f475f4552524f525f454d41494c, 0x613a313a7b693a303b733a3431373a223c7374726f6e673e454d41494c2f5048502f6d61696c28293c2f7374726f6e673e3c6272202f3e3c656d3e2f47756d626f204d696c6c656e6e69756d2f7563702e7068703c2f656d3e3c6272202f3e3c6272202f3e3c623e5b70687042422044656275675d20504850205761726e696e673c2f623e3a20696e2066696c65203c623e2f696e636c756465732f66756e6374696f6e735f6d657373656e6765722e7068703c2f623e206f6e206c696e65203c623e313632313c2f623e3a203c623e6d61696c2829205b3c6120687265663d2766756e6374696f6e2e6d61696c273e66756e6374696f6e2e6d61696c3c2f613e5d3a204661696c656420746f20636f6e6e65637420746f206d61696c736572766572206174202671756f743b6c6f63616c686f73742671756f743b20706f72742032352c2076657269667920796f7572202671756f743b534d54502671756f743b20616e64202671756f743b736d74705f706f72742671756f743b2073657474696e6720696e207068702e696e69206f722075736520696e695f73657428293c2f623e3c6272202f3e0a3c6272202f3e223b7d),
(27, 0, 2, 0, 0, 0, '192.168.178.14', 1332188240, 0x4c4f475f55534552535f4144444544, 0x613a323a7b693a303b733a31343a2241646d696e6973747261746f7273223b693a313b733a31303a22777264616c6c696e6761223b7d),
(28, 0, 55, 0, 0, 0, '192.168.178.20', 1332188260, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(29, 0, 55, 0, 0, 0, '192.168.178.20', 1332188473, 0x4c4f475f50524f46494c455f4649454c445f435245415445, 0x613a313a7b693a303b733a31393a2267756d626f5f7374617475733a537461747573223b7d),
(30, 0, 55, 0, 0, 0, '192.168.178.20', 1332188547, 0x4c4f475f50524f46494c455f4649454c445f435245415445, 0x613a313a7b693a303b733a32333a2267756d626f5f66616365626f6f6b3a46616365626f6f6b223b7d),
(31, 0, 55, 0, 0, 0, '192.168.178.20', 1332189414, 0x4c4f475f47524f55505f43524541544544, 0x613a313a7b693a303b733a353a224c6564656e223b7d),
(32, 0, 55, 0, 0, 0, '192.168.178.20', 1332189468, 0x4c4f475f52414e4b5f4144444544, 0x613a313a7b693a303b733a373a2242657374757572223b7d),
(33, 0, 55, 0, 0, 0, '192.168.178.20', 1332189838, 0x4c4f475f41434c5f4144445f47524f55505f474c4f42414c5f555f, 0x613a313a7b693a303b733a34373a223c7370616e20636c6173733d22736570223e4e65776c7920726567697374657265642075736572733c2f7370616e3e223b7d),
(34, 0, 55, 0, 0, 0, '192.168.178.20', 1332189903, 0x4c4f475f47524f55505f43524541544544, 0x613a313a7b693a303b733a393a224f7564206c6564656e223b7d),
(35, 0, 55, 0, 0, 0, '192.168.178.20', 1332190141, 0x4c4f475f47524f55505f43524541544544, 0x613a313a7b693a303b733a373a22412d4c6564656e223b7d),
(36, 0, 55, 0, 0, 0, '192.168.178.20', 1332190202, 0x4c4f475f52414e4b5f55504441544544, 0x613a313a7b693a303b733a373a2242657374757572223b7d),
(37, 0, 55, 0, 0, 0, '192.168.178.20', 1332190250, 0x4c4f475f47524f55505f43524541544544, 0x613a313a7b693a303b733a373a2242657374757572223b7d),
(38, 0, 55, 0, 0, 0, '192.168.178.20', 1332190295, 0x4c4f475f41434c5f4144445f47524f55505f474c4f42414c5f555f, 0x613a313a7b693a303b733a373a2242657374757572223b7d),
(39, 0, 55, 0, 0, 0, '192.168.178.20', 1332190519, 0x4c4f475f41434c5f4144445f47524f55505f474c4f42414c5f4d5f, 0x613a313a7b693a303b733a373a2242657374757572223b7d),
(40, 0, 55, 0, 0, 0, '192.168.178.20', 1332190677, 0x4c4f475f47524f55505f44454c455445, 0x613a313a7b693a303b733a373a2242657374757572223b7d),
(41, 0, 55, 0, 0, 0, '192.168.178.20', 1332190696, 0x4c4f475f47524f55505f43524541544544, 0x613a313a7b693a303b733a373a2242657374757572223b7d),
(42, 0, 2, 0, 0, 0, '192.168.178.14', 1332190744, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(43, 0, 2, 0, 0, 0, '192.168.178.14', 1332190772, 0x4c4f475f47524f55505f50524f4d4f544544, 0x613a323a7b693a303b733a31343a2241646d696e6973747261746f7273223b693a313b733a31303a22777264616c6c696e6761223b7d),
(44, 0, 2, 0, 0, 0, '192.168.178.14', 1332190789, 0x4c4f475f47524f55505f44454641554c5453, 0x613a323a7b693a303b733a31343a2241646d696e6973747261746f7273223b693a313b733a31303a22777264616c6c696e6761223b7d),
(45, 0, 55, 0, 0, 0, '192.168.178.20', 1332190820, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(46, 0, 2, 0, 0, 0, '192.168.178.14', 1332190888, 0x4c4f475f555345525f555345525f555044415445, 0x613a313a7b693a303b733a31303a22777264616c6c696e6761223b7d),
(47, 0, 55, 0, 0, 0, '192.168.178.20', 1332191076, 0x4c4f475f415f524f4c455f414444, 0x613a313a7b693a303b733a373a2242657374757572223b7d),
(48, 0, 55, 0, 0, 0, '192.168.178.20', 1332191107, 0x4c4f475f41434c5f4144445f41444d494e5f474c4f42414c5f415f, 0x613a313a7b693a303b733a373a2242657374757572223b7d),
(49, 0, 55, 0, 0, 0, '192.168.178.20', 1332191221, 0x4c4f475f47524f55505f44454c455445, 0x613a313a7b693a303b733a32323a2241637469766974656974656e20636f6d6d6973736965223b7d),
(50, 0, 55, 0, 0, 0, '192.168.178.20', 1332191234, 0x4c4f475f47524f55505f43524541544544, 0x613a313a7b693a303b733a323a224143223b7d),
(51, 0, 1, 0, 0, 0, '192.168.178.14', 1332192159, 0x4c4f475f5550444154455f4441544142415345, 0x613a323a7b693a303b733a353a22332e302e39223b693a313b733a363a22332e302e3130223b7d),
(52, 0, 55, 0, 0, 0, '192.168.178.20', 1332192736, 0x4c4f475f464f52554d5f414444, 0x613a313a7b693a303b733a353a224c48575047223b7d),
(53, 0, 55, 0, 0, 0, '192.168.178.20', 1332192794, 0x4c4f475f41434c5f4144445f464f52554d5f4c4f43414c5f465f, 0x613a323a7b693a303b733a353a224c48575047223b693a313b733a343a2274657374223b7d),
(54, 0, 55, 0, 0, 0, '192.168.178.20', 1332192808, 0x4c4f475f41434c5f4144445f464f52554d5f4c4f43414c5f465f, 0x613a323a7b693a303b733a353a224c48575047223b693a313b733a34313a223c7370616e20636c6173733d22736570223e526567697374657265642075736572733c2f7370616e3e223b7d),
(55, 0, 55, 0, 0, 0, '192.168.178.20', 1332192843, 0x4c4f475f464f52554d5f414444, 0x613a313a7b693a303b733a383a2254656d706c617465223b7d),
(56, 0, 55, 0, 0, 0, '192.168.178.20', 1332192852, 0x4c4f475f41434c5f4144445f464f52554d5f4c4f43414c5f465f, 0x613a323a7b693a303b733a383a2254656d706c617465223b693a313b733a34313a223c7370616e20636c6173733d22736570223e526567697374657265642075736572733c2f7370616e3e223b7d),
(57, 0, 55, 0, 0, 0, '192.168.178.20', 1332192904, 0x4c4f475f464f52554d5f53594e43, 0x613a313a7b693a303b733a383a2254656d706c617465223b7d),
(58, 0, 55, 0, 0, 0, '192.168.178.20', 1332192947, 0x4c4f475f464f52554d5f414444, 0x613a313a7b693a303b733a323a225047223b7d),
(59, 0, 55, 0, 0, 0, '192.168.178.20', 1332193093, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(60, 0, 55, 0, 0, 0, '192.168.178.20', 1332193223, 0x4c4f475f464f52554d5f44454c5f504f535453, 0x613a313a7b693a303b733a353a224c48575047223b7d),
(61, 0, 55, 0, 0, 0, '192.168.178.20', 1332193229, 0x4c4f475f464f52554d5f44454c5f504f535453, 0x613a313a7b693a303b733a383a2254656d706c617465223b7d),
(62, 0, 55, 0, 0, 0, '192.168.178.20', 1332193233, 0x4c4f475f464f52554d5f44454c5f504f535453, 0x613a313a7b693a303b733a323a225047223b7d),
(63, 0, 55, 0, 0, 0, '192.168.178.20', 1332193285, 0x4c4f475f464f52554d5f414444, 0x613a313a7b693a303b733a31353a2250726f6a6563742067726f6570656e223b7d),
(64, 0, 55, 0, 0, 0, '192.168.178.20', 1332193312, 0x4c4f475f464f52554d5f414444, 0x613a313a7b693a303b733a353a224c48575047223b7d),
(65, 0, 55, 0, 0, 0, '192.168.178.20', 1332193323, 0x4c4f475f464f52554d5f4d4f56455f5550, 0x613a323a7b693a303b733a353a224c48575047223b693a313b733a31353a2250726f6a6563742067726f6570656e223b7d),
(66, 0, 55, 0, 0, 0, '192.168.178.20', 1332193337, 0x4c4f475f464f52554d5f44454c5f464f52554d, 0x613a313a7b693a303b733a31353a2250726f6a6563742067726f6570656e223b7d),
(67, 0, 55, 0, 0, 0, '192.168.178.20', 1332193342, 0x4c4f475f464f52554d5f44454c5f504f535453, 0x613a313a7b693a303b733a353a224c48575047223b7d),
(68, 0, 55, 0, 0, 0, '192.168.178.20', 1332193763, 0x4c4f475f464f52554d5f414444, 0x613a313a7b693a303b733a31353a2250726f6a6563742067726f6570656e223b7d),
(69, 0, 55, 0, 0, 0, '192.168.178.20', 1332193781, 0x4c4f475f464f52554d5f4d4f56455f5550, 0x613a323a7b693a303b733a31353a2250726f6a6563742067726f6570656e223b693a313b733a31393a224a65206565727374652063617465676f726965223b7d),
(70, 0, 55, 0, 0, 0, '192.168.178.20', 1332193783, 0x4c4f475f464f52554d5f4d4f56455f444f574e, 0x613a323a7b693a303b733a31353a2250726f6a6563742067726f6570656e223b693a313b733a31393a224a65206565727374652063617465676f726965223b7d),
(71, 0, 55, 0, 0, 0, '192.168.178.20', 1332193808, 0x4c4f475f464f52554d5f414444, 0x613a313a7b693a303b733a353a224c48575047223b7d),
(72, 0, 55, 0, 0, 0, '192.168.178.20', 1332193851, 0x4c4f475f464f52554d5f44454c5f504f535453, 0x613a313a7b693a303b733a353a224c48575047223b7d),
(73, 0, 55, 0, 0, 0, '192.168.178.20', 1332193893, 0x4c4f475f464f52554d5f45444954, 0x613a313a7b693a303b733a31353a2250726f6a6563742067726f6570656e223b7d),
(74, 0, 55, 0, 0, 0, '192.168.178.20', 1332193914, 0x4c4f475f41434c5f4144445f464f52554d5f4c4f43414c5f465f, 0x613a323a7b693a303b733a31353a2250726f6a6563742067726f6570656e223b693a313b733a34313a223c7370616e20636c6173733d22736570223e526567697374657265642075736572733c2f7370616e3e223b7d),
(75, 0, 55, 0, 0, 0, '192.168.178.20', 1332193926, 0x4c4f475f41434c5f4144445f464f52554d5f4c4f43414c5f465f, 0x613a323a7b693a303b733a31353a2250726f6a6563742067726f6570656e223b693a313b733a34313a223c7370616e20636c6173733d22736570223e526567697374657265642075736572733c2f7370616e3e223b7d),
(76, 0, 55, 0, 0, 0, '192.168.178.20', 1332194939, 0x4c4f475f464f52554d5f414444, 0x613a313a7b693a303b733a31303a22436f6d6d697373696573223b7d),
(77, 0, 55, 0, 0, 0, '192.168.178.20', 1332194958, 0x4c4f475f41434c5f4144445f464f52554d5f4c4f43414c5f465f, 0x613a323a7b693a303b733a31303a22436f6d6d697373696573223b693a313b733a34313a223c7370616e20636c6173733d22736570223e526567697374657265642075736572733c2f7370616e3e223b7d),
(78, 0, 55, 0, 0, 0, '192.168.178.20', 1332194968, 0x4c4f475f41434c5f4144445f464f52554d5f4c4f43414c5f465f, 0x613a323a7b693a303b733a31303a22436f6d6d697373696573223b693a313b733a33393a223c7370616e20636c6173733d22736570223e41646d696e6973747261746f72733c2f7370616e3e223b7d),
(79, 0, 2, 0, 0, 0, '192.168.178.14', 1332590008, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(80, 0, 2, 0, 0, 0, '192.168.178.14', 1332591466, 0x4c4f475f5550444154455f5048504242, 0x613a323a7b693a303b733a353a22332e302e39223b693a313b733a363a22332e302e3130223b7d),
(81, 0, 2, 0, 0, 0, '192.168.178.14', 1332596341, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(82, 0, 2, 0, 0, 0, '192.168.178.14', 1332607934, 0x4c4f475f50555247455f4341434845, ''),
(83, 0, 2, 0, 0, 0, '192.168.178.14', 1332607973, 0x4c4f475f50555247455f4341434845, ''),
(84, 0, 2, 0, 0, 0, '192.168.178.14', 1332608020, 0x4c4f475f50555247455f4341434845, ''),
(85, 0, 2, 0, 0, 0, '192.168.178.14', 1332608089, 0x4c4f475f50555247455f4341434845, ''),
(86, 0, 2, 0, 0, 0, '192.168.178.14', 1332608399, 0x4c4f475f50555247455f4341434845, ''),
(87, 0, 2, 0, 0, 0, '192.168.178.14', 1332608737, 0x4c4f475f50555247455f4341434845, ''),
(88, 0, 2, 0, 0, 0, '127.0.0.1', 1333802891, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(89, 0, 2, 0, 0, 0, '127.0.0.1', 1333803013, 0x4c4f475f4d4f44554c455f414444, 0x613a313a7b693a303b733a31303a2241637469766974696573223b7d),
(90, 0, 2, 0, 0, 0, '127.0.0.1', 1333803091, 0x4c4f475f4d4f44554c455f414444, 0x613a313a7b693a303b733a31323a22416464206163746976697479223b7d),
(91, 0, 2, 0, 0, 0, '127.0.0.1', 1333803305, 0x4c4f475f4d4f44554c455f414444, 0x613a313a7b693a303b733a31323a224d616e616765207573657273223b7d),
(92, 0, 2, 0, 0, 0, '127.0.0.1', 1333803314, 0x4c4f475f4d4f44554c455f454e41424c45, 0x613a313a7b693a303b733a31323a224d616e616765207573657273223b7d),
(93, 0, 2, 0, 0, 0, '127.0.0.1', 1333803408, 0x4c4f475f55534552535f4144444544, 0x613a323a7b693a303b733a353a224c6564656e223b693a313b733a353a226e79787573223b7d),
(94, 0, 2, 0, 0, 0, '127.0.0.1', 1333808419, 0x4c4f475f4d4f44554c455f414444, 0x613a313a7b693a303b733a393a22466f6f20496e646578223b7d),
(95, 0, 2, 0, 0, 0, '127.0.0.1', 1333808424, 0x4c4f475f4d4f44554c455f454e41424c45, 0x613a313a7b693a303b733a393a22466f6f20496e646578223b7d),
(96, 0, 2, 0, 0, 0, '127.0.0.1', 1333808454, 0x4c4f475f4d4f44554c455f44495341424c45, 0x613a313a7b693a303b733a31323a224d616e616765207573657273223b7d),
(97, 0, 2, 0, 0, 0, '127.0.0.1', 1333808455, 0x4c4f475f4d4f44554c455f44495341424c45, 0x613a313a7b693a303b733a31323a22416464206163746976697479223b7d),
(98, 0, 2, 0, 0, 0, '127.0.0.1', 1333808475, 0x4c4f475f4d4f44554c455f45444954, 0x613a313a7b693a303b733a393a22466f6f20496e646578223b7d),
(99, 0, 2, 0, 0, 0, '127.0.0.1', 1333808737, 0x4c4f475f4d4f44554c455f45444954, 0x613a313a7b693a303b733a31323a224d616e616765207573657273223b7d),
(100, 0, 2, 0, 0, 0, '127.0.0.1', 1333809154, 0x4c4f475f4d4f44554c455f414444, 0x613a313a7b693a303b733a393a22466f6f20496e646578223b7d),
(101, 0, 2, 0, 0, 0, '127.0.0.1', 1333809161, 0x4c4f475f4d4f44554c455f454e41424c45, 0x613a313a7b693a303b733a393a22466f6f20496e646578223b7d),
(102, 0, 2, 0, 0, 0, '127.0.0.1', 1333809312, 0x4c4f475f4d4f44554c455f52454d4f564544, 0x613a313a7b693a303b733a393a22466f6f20496e646578223b7d),
(103, 0, 2, 0, 0, 0, '127.0.0.1', 1333809319, 0x4c4f475f4d4f44554c455f52454d4f564544, 0x613a313a7b693a303b733a31323a224d616e616765207573657273223b7d),
(104, 0, 2, 0, 0, 0, '127.0.0.1', 1333809325, 0x4c4f475f4d4f44554c455f52454d4f564544, 0x613a313a7b693a303b733a31323a22416464206163746976697479223b7d),
(105, 0, 2, 0, 0, 0, '127.0.0.1', 1333809397, 0x4c4f475f4d4f44554c455f414444, 0x613a313a7b693a303b733a393a22466f6f20496e646578223b7d),
(106, 0, 2, 0, 0, 0, '127.0.0.1', 1333809406, 0x4c4f475f4d4f44554c455f52454d4f564544, 0x613a313a7b693a303b733a393a22466f6f20496e646578223b7d),
(107, 0, 2, 0, 0, 0, '127.0.0.1', 1333809413, 0x4c4f475f4d4f44554c455f52454d4f564544, 0x613a313a7b693a303b733a393a22466f6f20496e646578223b7d),
(108, 0, 2, 0, 0, 0, '127.0.0.1', 1333809520, 0x4c4f475f4d4f44554c455f52454d4f564544, 0x613a313a7b693a303b733a31303a2241637469766974696573223b7d),
(109, 0, 2, 0, 0, 0, '127.0.0.1', 1333809542, 0x4c4f475f4d4f44554c455f414444, 0x613a313a7b693a303b733a393a22466f6f20496e646578223b7d),
(110, 0, 2, 0, 0, 0, '127.0.0.1', 1333809547, 0x4c4f475f4d4f44554c455f454e41424c45, 0x613a313a7b693a303b733a393a22466f6f20496e646578223b7d),
(111, 0, 2, 0, 0, 0, '127.0.0.1', 1333810381, 0x4c4f475f4d4f44554c455f414444, 0x613a313a7b693a303b733a393a2254656d706c61746573223b7d),
(112, 0, 2, 0, 0, 0, '127.0.0.1', 1333810413, 0x4c4f475f4d4f44554c455f52454d4f564544, 0x613a313a7b693a303b733a393a2254656d706c61746573223b7d),
(113, 0, 2, 0, 0, 0, '127.0.0.1', 1333810428, 0x4c4f475f4d4f44554c455f414444, 0x613a313a7b693a303b733a393a22466f6f20496e646578223b7d),
(114, 0, 2, 0, 0, 0, '127.0.0.1', 1333810501, 0x4c4f475f4d4f44554c455f414444, 0x613a313a7b693a303b733a31343a22416e206f74686572207469746c65223b7d),
(115, 0, 2, 0, 0, 0, '127.0.0.1', 1333810733, 0x4c4f475f4d4f44554c455f454e41424c45, 0x613a313a7b693a303b733a393a22466f6f20496e646578223b7d),
(116, 0, 2, 0, 0, 0, '127.0.0.1', 1333810734, 0x4c4f475f4d4f44554c455f454e41424c45, 0x613a313a7b693a303b733a31343a22416e206f74686572207469746c65223b7d),
(117, 0, 2, 0, 0, 0, '127.0.0.1', 1333810788, 0x4c4f475f4d4f44554c455f414444, 0x613a313a7b693a303b733a31343a22416e206f74686572207469746c65223b7d),
(118, 0, 2, 0, 0, 0, '127.0.0.1', 1333810793, 0x4c4f475f4d4f44554c455f454e41424c45, 0x613a313a7b693a303b733a31343a22416e206f74686572207469746c65223b7d),
(119, 0, 2, 0, 0, 0, '127.0.0.1', 1333964249, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(120, 0, 2, 0, 0, 0, '127.0.0.1', 1333964336, 0x4c4f475f4d4f44554c455f44495341424c45, 0x613a313a7b693a303b733a31343a22416e206f74686572207469746c65223b7d),
(121, 0, 2, 0, 0, 0, '127.0.0.1', 1333964343, 0x4c4f475f4d4f44554c455f44495341424c45, 0x613a313a7b693a303b733a393a22466f6f20496e646578223b7d),
(122, 0, 2, 0, 0, 0, '127.0.0.1', 1333964366, 0x4c4f475f4d4f44554c455f52454d4f564544, 0x613a313a7b693a303b733a31343a22416e206f74686572207469746c65223b7d),
(123, 0, 2, 0, 0, 0, '127.0.0.1', 1333964377, 0x4c4f475f4d4f44554c455f52454d4f564544, 0x613a313a7b693a303b733a31343a22416e206f74686572207469746c65223b7d),
(124, 0, 2, 0, 0, 0, '127.0.0.1', 1333964393, 0x4c4f475f4d4f44554c455f454e41424c45, 0x613a313a7b693a303b733a393a22466f6f20496e646578223b7d),
(125, 0, 2, 0, 0, 0, '127.0.0.1', 1333964422, 0x4c4f475f4d4f44554c455f414444, 0x613a313a7b693a303b733a393a2241646d696e206c6f67223b7d),
(126, 0, 2, 0, 0, 0, '127.0.0.1', 1333964428, 0x4c4f475f4d4f44554c455f454e41424c45, 0x613a313a7b693a303b733a393a2241646d696e206c6f67223b7d),
(127, 0, 2, 0, 0, 0, '127.0.0.1', 1333964474, 0x4c4f475f4d4f44554c455f414444, 0x613a313a7b693a303b733a31343a22416e206f74686572207469746c65223b7d),
(128, 0, 2, 0, 0, 0, '127.0.0.1', 1333964480, 0x4c4f475f4d4f44554c455f454e41424c45, 0x613a313a7b693a303b733a31343a22416e206f74686572207469746c65223b7d),
(129, 0, 2, 0, 0, 0, '127.0.0.1', 1333964498, 0x4c4f475f4d4f44554c455f414444, 0x613a313a7b693a303b733a31323a224d616e6167652072616e6b73223b7d),
(130, 0, 2, 0, 0, 0, '127.0.0.1', 1333964503, 0x4c4f475f4d4f44554c455f454e41424c45, 0x613a313a7b693a303b733a31323a224d616e6167652072616e6b73223b7d),
(131, 0, 2, 0, 0, 0, '192.168.2.35', 1333965050, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(132, 0, 2, 0, 0, 0, '127.0.0.1', 1333965217, 0x4c4f475f4d4f44554c455f414444, 0x613a313a7b693a303b733a31343a22416e206f74686572207469746c65223b7d),
(133, 0, 2, 0, 0, 0, '127.0.0.1', 1333965232, 0x4c4f475f4d4f44554c455f454e41424c45, 0x613a313a7b693a303b733a31343a22416e206f74686572207469746c65223b7d),
(134, 0, 2, 0, 0, 0, '127.0.0.1', 1333965329, 0x4c4f475f4d4f44554c455f414444, 0x613a313a7b693a303b733a393a22466f6f20496e646578223b7d),
(135, 0, 2, 0, 0, 0, '127.0.0.1', 1333965334, 0x4c4f475f4d4f44554c455f454e41424c45, 0x613a313a7b693a303b733a393a22466f6f20496e646578223b7d),
(136, 0, 2, 0, 0, 0, '127.0.0.1', 1333966772, 0x4c4f475f4d4f44554c455f52454d4f564544, 0x613a313a7b693a303b733a393a2241646d696e206c6f67223b7d),
(137, 0, 2, 0, 0, 0, '127.0.0.1', 1333966798, 0x4c4f475f4d4f44554c455f414444, 0x613a313a7b693a303b733a393a22466f6f20496e646578223b7d),
(138, 0, 2, 0, 0, 0, '127.0.0.1', 1333966803, 0x4c4f475f4d4f44554c455f454e41424c45, 0x613a313a7b693a303b733a393a22466f6f20496e646578223b7d),
(139, 0, 2, 0, 0, 0, '127.0.0.1', 1333966869, 0x4c4f475f4d4f44554c455f414444, 0x613a313a7b693a303b733a32323a224469742069732069657473206865656c2068656e6b73223b7d),
(140, 0, 2, 0, 0, 0, '127.0.0.1', 1333966900, 0x4c4f475f4d4f44554c455f52454d4f564544, 0x613a313a7b693a303b733a32323a224469742069732069657473206865656c2068656e6b73223b7d),
(141, 0, 2, 0, 0, 0, '127.0.0.1', 1333966979, 0x4c4f475f4d4f44554c455f414444, 0x613a313a7b693a303b733a393a22686965722068656e6b223b7d),
(142, 0, 2, 0, 0, 0, '127.0.0.1', 1333967012, 0x4c4f475f4d4f44554c455f52454d4f564544, 0x613a313a7b693a303b733a393a22686965722068656e6b223b7d),
(143, 0, 2, 0, 0, 0, '127.0.0.1', 1333967261, 0x4c4f475f4d4f44554c455f52454d4f564544, 0x613a313a7b693a303b733a31343a22416e206f74686572207469746c65223b7d),
(144, 0, 2, 0, 0, 0, '127.0.0.1', 1333967267, 0x4c4f475f4d4f44554c455f52454d4f564544, 0x613a313a7b693a303b733a393a22466f6f20496e646578223b7d),
(145, 0, 2, 0, 0, 0, '127.0.0.1', 1333967277, 0x4c4f475f4d4f44554c455f52454d4f564544, 0x613a313a7b693a303b733a393a22466f6f20496e646578223b7d),
(146, 0, 2, 0, 0, 0, '127.0.0.1', 1333967290, 0x4c4f475f4d4f44554c455f52454d4f564544, 0x613a313a7b693a303b733a31323a224d616e6167652072616e6b73223b7d),
(147, 0, 2, 0, 0, 0, '127.0.0.1', 1333967298, 0x4c4f475f4d4f44554c455f52454d4f564544, 0x613a313a7b693a303b733a393a22466f6f20496e646578223b7d),
(148, 0, 2, 0, 0, 0, '127.0.0.1', 1333967304, 0x4c4f475f4d4f44554c455f52454d4f564544, 0x613a313a7b693a303b733a31343a22416e206f74686572207469746c65223b7d),
(149, 0, 2, 0, 0, 0, '127.0.0.1', 1333967319, 0x4c4f475f4d4f44554c455f414444, 0x613a313a7b693a303b733a393a225469746c6520626172223b7d),
(150, 0, 2, 0, 0, 0, '127.0.0.1', 1333967323, 0x4c4f475f4d4f44554c455f454e41424c45, 0x613a313a7b693a303b733a393a225469746c6520626172223b7d),
(151, 0, 2, 0, 0, 0, '127.0.0.1', 1333967336, 0x4c4f475f4d4f44554c455f414444, 0x613a313a7b693a303b733a393a22466f6f20496e646578223b7d),
(152, 0, 2, 0, 0, 0, '127.0.0.1', 1333967354, 0x4c4f475f4d4f44554c455f414444, 0x613a313a7b693a303b733a31343a22416e206f74686572207469746c65223b7d),
(153, 0, 2, 0, 0, 0, '127.0.0.1', 1333967378, 0x4c4f475f4d4f44554c455f454e41424c45, 0x613a313a7b693a303b733a393a22466f6f20496e646578223b7d),
(154, 0, 2, 0, 0, 0, '127.0.0.1', 1333967380, 0x4c4f475f4d4f44554c455f454e41424c45, 0x613a313a7b693a303b733a31343a22416e206f74686572207469746c65223b7d),
(155, 0, 2, 0, 0, 0, '127.0.0.1', 1333967505, 0x4c4f475f4d4f44554c455f52454d4f564544, 0x613a313a7b693a303b733a31343a22416e206f74686572207469746c65223b7d),
(156, 0, 2, 0, 0, 0, '127.0.0.1', 1333967529, 0x4c4f475f4d4f44554c455f414444, 0x613a313a7b693a303b733a31343a22416e206f74686572207469746c65223b7d),
(157, 0, 2, 0, 0, 0, '127.0.0.1', 1333967533, 0x4c4f475f4d4f44554c455f454e41424c45, 0x613a313a7b693a303b733a31343a22416e206f74686572207469746c65223b7d),
(158, 0, 2, 0, 0, 0, '::1', 1340059471, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(159, 0, 2, 0, 0, 0, '192.168.178.12', 1340446196, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(160, 0, 2, 0, 0, 0, '192.168.178.12', 1340446242, 0x4c4f475f50555247455f4341434845, ''),
(161, 0, 2, 0, 0, 0, '192.168.178.12', 1340446309, 0x4c4f475f4d4f44554c455f52454d4f564544, 0x613a313a7b693a303b733a31343a22416e206f74686572207469746c65223b7d),
(162, 0, 2, 0, 0, 0, '192.168.178.12', 1340446313, 0x4c4f475f4d4f44554c455f52454d4f564544, 0x613a313a7b693a303b733a393a22466f6f20496e646578223b7d),
(163, 0, 2, 0, 0, 0, '192.168.178.12', 1340446320, 0x4c4f475f4d4f44554c455f52454d4f564544, 0x613a313a7b693a303b733a393a225469746c6520626172223b7d),
(164, 0, 2, 0, 0, 0, '192.168.178.12', 1340446325, 0x4c4f475f4d4f44554c455f52454d4f564544, 0x613a313a7b693a303b733a393a22466f6f20496e646578223b7d),
(165, 0, 2, 0, 0, 0, '192.168.178.12', 1340446353, 0x4c4f475f4d4f44554c455f414444, 0x613a313a7b693a303b733a31353a2241435449564954592053595354454d223b7d),
(166, 0, 2, 0, 0, 0, '192.168.178.12', 1340446386, 0x4c4f475f4d4f44554c455f45444954, 0x613a313a7b693a303b733a31353a2241637469766974792073797374656d223b7d),
(167, 0, 2, 0, 0, 0, '192.168.178.12', 1340446450, 0x4c4f475f4d4f44554c455f414444, 0x613a313a7b693a303b733a363a224576656e7473223b7d),
(168, 0, 2, 0, 0, 0, '192.168.178.12', 1340446502, 0x4c4f475f4d4f44554c455f414444, 0x613a313a7b693a303b733a393a2246696e616e6369616c223b7d),
(169, 0, 2, 0, 0, 0, '192.168.178.12', 1340446527, 0x4c4f475f4d4f44554c455f414444, 0x613a313a7b693a303b733a393a224e6577206576656e74223b7d),
(170, 0, 2, 0, 0, 0, '192.168.178.12', 1340446531, 0x4c4f475f4d4f44554c455f454e41424c45, 0x613a313a7b693a303b733a393a224e6577206576656e74223b7d),
(171, 0, 2, 0, 0, 0, '192.168.178.12', 1340446541, 0x4c4f475f4d4f44554c455f414444, 0x613a313a7b693a303b733a383a224f76657276696577223b7d),
(172, 0, 2, 0, 0, 0, '192.168.178.12', 1340446544, 0x4c4f475f4d4f44554c455f454e41424c45, 0x613a313a7b693a303b733a383a224f76657276696577223b7d),
(173, 0, 2, 0, 0, 0, '192.168.178.12', 1340446554, 0x4c4f475f4d4f44554c455f414444, 0x613a313a7b693a303b733a31363a2246696e642075736572206576656e7473223b7d),
(174, 0, 2, 0, 0, 0, '192.168.178.12', 1340446563, 0x4c4f475f4d4f44554c455f454e41424c45, 0x613a313a7b693a303b733a31363a2246696e642075736572206576656e7473223b7d),
(175, 0, 2, 0, 0, 0, '192.168.178.12', 1340446589, 0x4c4f475f4d4f44554c455f414444, 0x613a313a7b693a303b733a31343a225573657273206e6f742070616964223b7d),
(176, 0, 2, 0, 0, 0, '192.168.178.12', 1340446593, 0x4c4f475f4d4f44554c455f454e41424c45, 0x613a313a7b693a303b733a31343a225573657273206e6f742070616964223b7d),
(177, 0, 2, 0, 0, 0, '192.168.178.12', 1340446605, 0x4c4f475f4d4f44554c455f414444, 0x613a313a7b693a303b733a31393a224368616e63652075736572207061796d656e74223b7d),
(178, 0, 2, 0, 0, 0, '192.168.178.12', 1340446609, 0x4c4f475f4d4f44554c455f454e41424c45, 0x613a313a7b693a303b733a31393a224368616e63652075736572207061796d656e74223b7d),
(179, 0, 2, 0, 0, 0, '192.168.178.12', 1340448500, 0x4c4f475f4d4f44554c455f414444, 0x613a313a7b693a303b733a383a224f76657276696577223b7d),
(180, 0, 2, 0, 0, 0, '192.168.178.12', 1340448503, 0x4c4f475f4d4f44554c455f454e41424c45, 0x613a313a7b693a303b733a383a224f76657276696577223b7d),
(181, 0, 2, 0, 0, 0, '192.168.178.12', 1340448534, 0x4c4f475f4d4f44554c455f414444, 0x613a313a7b693a303b733a31363a2246696e642075736572206576656e7473223b7d),
(182, 0, 2, 0, 0, 0, '192.168.178.12', 1340448536, 0x4c4f475f4d4f44554c455f454e41424c45, 0x613a313a7b693a303b733a31363a2246696e642075736572206576656e7473223b7d),
(183, 0, 2, 0, 0, 0, '192.168.178.12', 1340448566, 0x4c4f475f4d4f44554c455f52454d4f564544, 0x613a313a7b693a303b733a31363a2246696e642075736572206576656e7473223b7d),
(184, 0, 2, 0, 0, 0, '192.168.178.12', 1340448569, 0x4c4f475f4d4f44554c455f52454d4f564544, 0x613a313a7b693a303b733a383a224f76657276696577223b7d),
(185, 1, 2, 2, 3, 0, '192.168.178.12', 1340448758, 0x4c4f475f44454c4554455f544f504943, 0x613a323a7b693a303b733a31353a2241637469766974792073797374656d223b693a313b733a353a226e79787573223b7d),
(186, 0, 2, 0, 0, 0, '127.0.0.1', 1340750745, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(187, 2, 1, 0, 0, 0, '127.0.0.1', 1340751051, 0x4c4f475f4552524f525f454d41494c, 0x613a313a7b693a303b733a3336313a223c7374726f6e673e454d41494c2f5048502f6d61696c28293c2f7374726f6e673e3c6272202f3e3c656d3e2f47756d626f204d696c6c656e6e69756d2f7563702e7068703c2f656d3e3c6272202f3e3c6272202f3e4572726e6f20323a206d61696c2829205b3c6120687265663d2766756e6374696f6e2e6d61696c273e66756e6374696f6e2e6d61696c3c2f613e5d3a204661696c656420746f20636f6e6e65637420746f206d61696c736572766572206174202671756f743b6c6f63616c686f73742671756f743b20706f72742032352c2076657269667920796f7572202671756f743b534d54502671756f743b20616e64202671756f743b736d74705f706f72742671756f743b2073657474696e6720696e207068702e696e69206f722075736520696e695f7365742829206174205b524f4f545d2f696e636c756465732f66756e6374696f6e735f6d657373656e6765722e706870206c696e6520313635313c6272202f3e223b7d),
(188, 0, 2, 0, 0, 0, '127.0.0.1', 1340751085, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(189, 0, 2, 0, 0, 0, '127.0.0.1', 1340751113, 0x4c4f475f41434c5f5452414e534645525f5045524d495353494f4e53, 0x613a313a7b693a303b733a31373a226469676974616c65636f6d6d6973736965223b7d),
(190, 0, 2, 0, 0, 0, '127.0.0.1', 1340751163, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(191, 0, 2, 0, 0, 0, '127.0.0.1', 1340751168, 0x4c4f475f41434c5f524553544f52455f5045524d495353494f4e53, 0x613a313a7b693a303b733a31373a226469676974616c65636f6d6d6973736965223b7d),
(192, 3, 2, 0, 0, 56, '127.0.0.1', 1340751193, 0x4c4f475f555345525f5550444154455f4e414d45, 0x613a323a7b693a303b733a31373a226469676974616c65636f6d6d6973736965223b693a313b733a31373a224469676974616c65436f6d6d6973736965223b7d),
(193, 0, 2, 0, 0, 0, '127.0.0.1', 1340751193, 0x4c4f475f555345525f555345525f555044415445, 0x613a313a7b693a303b733a31373a224469676974616c65436f6d6d6973736965223b7d),
(194, 0, 2, 0, 0, 0, '127.0.0.1', 1340751246, 0x4c4f475f47524f55505f44454641554c5453, 0x613a323a7b693a303b733a31343a2241646d696e6973747261746f7273223b693a313b733a31373a224469676974616c65436f6d6d6973736965223b7d),
(195, 0, 2, 0, 0, 0, '127.0.0.1', 1340751246, 0x4c4f475f4d4f44535f4144444544, 0x613a323a7b693a303b733a31343a2241646d696e6973747261746f7273223b693a313b733a31373a226469676974616c65636f6d6d6973736965223b7d),
(196, 0, 56, 0, 0, 0, '127.0.0.1', 1340751738, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(197, 0, 2, 0, 0, 0, '::1', 1340753791, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(198, 0, 2, 0, 0, 0, '::1', 1340753970, 0x4c4f475f434f4e4649475f4c4f4144, ''),
(199, 0, 2, 0, 0, 0, '::1', 1341022486, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(200, 0, 2, 0, 0, 0, '::1', 1341023394, 0x4c4f475f50555247455f4341434845, ''),
(201, 0, 2, 0, 0, 0, '::1', 1341023516, 0x4c4f475f434f4e4649475f4c4f4144, ''),
(202, 0, 2, 0, 0, 0, '::1', 1341152354, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(203, 0, 2, 0, 0, 0, '::1', 1341152446, 0x4c4f475f5354594c455f454449545f44455441494c53, 0x613a313a7b693a303b733a393a2270726f73696c766572223b7d),
(204, 0, 2, 0, 0, 0, '::1', 1341152529, 0x4c4f475f4242434f44455f414444, 0x613a313a7b693a303b733a31303a22686967686c696768743d223b7d),
(205, 0, 2, 0, 0, 0, '::1', 1341249846, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(206, 0, 2, 0, 0, 0, '::1', 1341250604, 0x4c4f475f434f4e4649475f434f4f4b4945, ''),
(207, 0, 2, 0, 0, 0, '::1', 1341251492, 0x4c4f475f4242434f44455f44454c455445, 0x613a313a7b693a303b733a31303a22686967686c696768743d223b7d),
(208, 0, 2, 0, 0, 0, '::1', 1341251560, 0x4c4f475f464f52554d5f414444, 0x613a313a7b693a303b733a31383a224469676974616c6520436f6d6d6973736965223b7d),
(209, 0, 2, 0, 0, 0, '::1', 1341251560, 0x4c4f475f464f52554d5f434f504945445f5045524d495353494f4e53, 0x613a323a7b693a303b733a31303a22436f6d6d697373696573223b693a313b733a31383a224469676974616c6520436f6d6d6973736965223b7d),
(210, 0, 2, 0, 0, 0, '::1', 1341251603, 0x4c4f475f41434c5f44454c5f464f52554d5f4c4f43414c5f465f, 0x613a323a7b693a303b733a31383a224469676974616c6520436f6d6d6973736965223b693a313b733a34313a223c7370616e20636c6173733d22736570223e526567697374657265642075736572733c2f7370616e3e223b7d),
(211, 0, 2, 0, 0, 0, '::1', 1341251654, 0x4c4f475f41434c5f4144445f464f52554d5f4c4f43414c5f465f, 0x613a323a7b693a303b733a31383a224469676974616c6520436f6d6d6973736965223b693a313b733a3233383a223c7370616e20636c6173733d22736570223e4775657374733c2f7370616e3e2c203c7370616e20636c6173733d22736570223e526567697374657265642075736572733c2f7370616e3e2c203c7370616e20636c6173733d22736570223e476c6f62616c206d6f64657261746f72733c2f7370616e3e2c203c7370616e20636c6173733d22736570223e426f74733c2f7370616e3e2c203c7370616e20636c6173733d22736570223e4e65776c7920726567697374657265642075736572733c2f7370616e3e2c204c6564656e2c204f7564206c6564656e2c20412d4c6564656e2c20426573747575722c204143223b7d),
(212, 0, 2, 0, 0, 0, '::1', 1341251681, 0x4c4f475f41434c5f4144445f464f52554d5f4c4f43414c5f465f, 0x613a323a7b693a303b733a31383a224469676974616c6520436f6d6d6973736965223b693a313b733a33393a223c7370616e20636c6173733d22736570223e41646d696e6973747261746f72733c2f7370616e3e223b7d),
(213, 0, 2, 0, 0, 0, '::1', 1341251784, 0x4c4f475f41434c5f5452414e534645525f5045524d495353494f4e53, 0x613a313a7b693a303b733a343a2274657374223b7d),
(214, 0, 2, 0, 0, 0, '::1', 1341251812, 0x4c4f475f41434c5f524553544f52455f5045524d495353494f4e53, 0x613a313a7b693a303b733a343a2274657374223b7d),
(215, 1, 2, 2, 2, 0, '::1', 1341251829, 0x4c4f475f504f53545f415050524f564544, 0x613a313a7b693a303b733a31343a2252653a2067617475732074657374223b7d),
(216, 0, 2, 0, 0, 0, '::1', 1341257611, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(217, 2, 2, 0, 0, 0, '::1', 1341257732, 0x4c4f475f47454e4552414c5f4552524f52, 0x613a323a7b693a303b733a31333a2247656e6572616c204572726f72223b693a313b733a37333a2274656d706c6174652d3e5f74706c5f6c6f61645f66696c6528293a2046696c65202e2f7374796c652f2e68746d6c20646f6573206e6f74206578697374206f7220697320656d707479223b7d),
(218, 2, 2, 0, 0, 0, '::1', 1341257893, 0x4c4f475f47454e4552414c5f4552524f52, 0x613a323a7b693a303b733a31333a2247656e6572616c204572726f72223b693a313b733a37333a2274656d706c6174652d3e5f74706c5f6c6f61645f66696c6528293a2046696c65202e2f7374796c652f2e68746d6c20646f6573206e6f74206578697374206f7220697320656d707479223b7d),
(219, 0, 2, 0, 0, 0, '::1', 1341260248, 0x4c4f475f434f4e4649475f434f4f4b4945, ''),
(220, 0, 2, 0, 0, 0, '::1', 1341260254, 0x4c4f475f434f4e4649475f434f4f4b4945, ''),
(221, 0, 2, 0, 0, 0, '::1', 1341260273, 0x4c4f475f434f4e4649475f53455454494e4753, ''),
(222, 0, 2, 0, 0, 0, '::1', 1341260282, 0x4c4f475f434f4e4649475f53455454494e4753, ''),
(223, 0, 2, 0, 0, 0, '::1', 1341260611, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(224, 0, 2, 0, 0, 0, '::1', 1341260666, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(225, 0, 2, 0, 0, 0, '192.168.178.12', 1341429733, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(226, 0, 2, 0, 0, 0, '192.168.178.12', 1341431778, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(227, 2, 2, 0, 0, 0, '192.168.178.12', 1341432180, 0x4c4f475f4552524f525f454d41494c, 0x613a313a7b693a303b733a3336373a223c7374726f6e673e454d41494c2f5048502f6d61696c28293c2f7374726f6e673e3c6272202f3e3c656d3e2f47756d626f204d696c6c656e6e69756d2f61646d2f696e6465782e7068703c2f656d3e3c6272202f3e3c6272202f3e4572726e6f20323a206d61696c2829205b3c6120687265663d2766756e6374696f6e2e6d61696c273e66756e6374696f6e2e6d61696c3c2f613e5d3a204661696c656420746f20636f6e6e65637420746f206d61696c736572766572206174202671756f743b6c6f63616c686f73742671756f743b20706f72742032352c2076657269667920796f7572202671756f743b534d54502671756f743b20616e64202671756f743b736d74705f706f72742671756f743b2073657474696e6720696e207068702e696e69206f722075736520696e695f7365742829206174205b524f4f545d2f696e636c756465732f66756e6374696f6e735f6d657373656e6765722e706870206c696e6520313635313c6272202f3e223b7d),
(228, 0, 2, 0, 0, 0, '192.168.178.12', 1341432180, 0x4c4f475f4d4153535f454d41494c, 0x613a313a7b693a303b733a343a2274657374223b7d),
(229, 0, 2, 0, 0, 0, '192.168.178.12', 1341433396, 0x4c4f475f434f4e4649475f4e45575f4556454e54, ''),
(230, 0, 2, 0, 0, 0, '192.168.178.12', 1341435304, 0x4c4f475f434f4e4649475f4e45575f4556454e54, ''),
(231, 0, 2, 0, 0, 0, '192.168.178.12', 1341435463, 0x4c4f475f434f4e4649475f4e45575f4556454e54, ''),
(232, 0, 2, 0, 0, 0, '192.168.178.12', 1341435471, 0x4c4f475f434f4e4649475f4e45575f4556454e54, ''),
(233, 0, 2, 0, 0, 0, '192.168.178.12', 1341435527, 0x4c4f475f434f4e4649475f4e45575f4556454e54, ''),
(234, 0, 2, 0, 0, 0, '192.168.178.12', 1341436869, 0x4c4f475f434f4e4649475f4e45575f4556454e54, ''),
(235, 0, 2, 0, 0, 0, '192.168.178.12', 1341436911, 0x4c4f475f434f4e4649475f4e45575f4556454e54, ''),
(236, 0, 2, 0, 0, 0, '192.168.178.12', 1341436923, 0x4c4f475f434f4e4649475f4e45575f4556454e54, ''),
(237, 0, 2, 0, 0, 0, '192.168.178.12', 1341437035, 0x4c4f475f434f4e4649475f4e45575f4556454e54, ''),
(238, 0, 2, 0, 0, 0, '192.168.178.12', 1341437429, 0x4c4f475f434f4e4649475f4e45575f4556454e54, ''),
(239, 0, 2, 0, 0, 0, '192.168.178.12', 1341486688, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(240, 0, 2, 0, 0, 0, '192.168.178.12', 1341490181, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(241, 0, 2, 0, 0, 0, '192.168.178.12', 1341492306, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(242, 0, 2, 0, 0, 0, '192.168.178.12', 1341566518, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(243, 0, 2, 0, 0, 0, '192.168.178.12', 1341567287, 0x4c4f475f434f4e4649475f4e45575f4556454e54, ''),
(244, 0, 2, 0, 0, 0, '192.168.178.12', 1341568053, 0x4c4f475f434f4e4649475f4e45575f4556454e54, ''),
(245, 0, 2, 0, 0, 0, '192.168.178.12', 1341568082, 0x4c4f475f434f4e4649475f4e45575f4556454e54, ''),
(246, 0, 2, 0, 0, 0, '192.168.178.12', 1341568240, 0x4c4f475f434f4e4649475f4e45575f4556454e54, ''),
(247, 0, 2, 0, 0, 0, '192.168.178.12', 1341568707, 0x4c4f475f434f4e4649475f4e45575f4556454e54, ''),
(248, 0, 2, 0, 0, 0, '::1', 1341584220, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(249, 0, 2, 0, 0, 0, '::1', 1341584981, 0x4c4f475f434f4e4649475f4e45575f4556454e54, ''),
(250, 0, 2, 0, 0, 0, '::1', 1341585055, 0x4c4f475f434f4e4649475f4e45575f4556454e54, ''),
(251, 0, 2, 0, 0, 0, '::1', 1341585066, 0x4c4f475f434f4e4649475f4e45575f4556454e54, ''),
(252, 0, 2, 0, 0, 0, '::1', 1341585428, 0x4c4f475f434f4e4649475f4e45575f4556454e54, ''),
(253, 0, 2, 0, 0, 0, '::1', 1341586883, 0x4c4f475f434f4e4649475f4e45575f4556454e54, ''),
(254, 0, 2, 0, 0, 0, '::1', 1341586913, 0x4c4f475f434f4e4649475f4e45575f4556454e54, ''),
(255, 0, 2, 0, 0, 0, '::1', 1341586988, 0x4c4f475f434f4e4649475f4e45575f4556454e54, ''),
(256, 0, 2, 0, 0, 0, '::1', 1341587011, 0x4c4f475f434f4e4649475f4e45575f4556454e54, ''),
(257, 0, 2, 0, 0, 0, '::1', 1341655905, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(258, 0, 2, 0, 0, 0, '::1', 1341657234, 0x4c4f475f434f4e4649475f4e45575f4556454e54, ''),
(259, 0, 2, 0, 0, 0, '::1', 1341657287, 0x4c4f475f434f4e4649475f4e45575f4556454e54, ''),
(260, 0, 2, 0, 0, 0, '::1', 1341657566, 0x4c4f475f434f4e4649475f4e45575f4556454e54, ''),
(261, 0, 2, 0, 0, 0, '::1', 1341662856, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(262, 0, 2, 0, 0, 0, '::1', 1341666499, 0x4c4f475f434f4e4649475f4e45575f4556454e54, ''),
(263, 0, 2, 0, 0, 0, '::1', 1341666586, 0x4c4f475f434f4e4649475f4e45575f4556454e54, ''),
(264, 0, 2, 0, 0, 0, '::1', 1341669254, 0x4c4f475f434f4e4649475f4e45575f4556454e54, ''),
(265, 0, 2, 0, 0, 0, '::1', 1341669269, 0x4c4f475f434f4e4649475f4e45575f4556454e54, ''),
(266, 0, 2, 0, 0, 0, '::1', 1341669337, 0x4c4f475f434f4e4649475f4e45575f4556454e54, ''),
(267, 0, 2, 0, 0, 0, '::1', 1341669377, 0x4c4f475f434f4e4649475f4e45575f4556454e54, ''),
(268, 0, 2, 0, 0, 0, '::1', 1341669413, 0x4c4f475f434f4e4649475f4e45575f4556454e54, ''),
(269, 0, 2, 0, 0, 0, '::1', 1341669467, 0x4c4f475f434f4e4649475f4e45575f4556454e54, ''),
(270, 0, 2, 0, 0, 0, '::1', 1341669549, 0x4c4f475f434f4e4649475f4e45575f4556454e54, ''),
(271, 0, 2, 0, 0, 0, '192.168.178.12', 1341908910, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(272, 0, 2, 0, 0, 0, '192.168.178.12', 1341909753, 0x4c4f475f434f4e4649475f4e45575f4556454e54, ''),
(273, 0, 2, 0, 0, 0, '192.168.178.12', 1341910226, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(274, 0, 2, 0, 0, 0, '192.168.178.12', 1341916992, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(275, 0, 2, 0, 0, 0, '192.168.178.12', 1341920277, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(276, 0, 2, 0, 0, 0, '192.168.178.12', 1341924384, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(277, 1, 56, 2, 4, 0, '192.168.178.12', 1341925227, 0x4c4f475f544f5049435f415050524f564544, 0x613a313a7b693a303b733a31313a22756e726561642074657374223b7d),
(278, 2, 1, 0, 0, 0, '192.168.178.12', 1341925497, 0x4c4f475f4552524f525f454d41494c, 0x613a313a7b693a303b733a3336323a223c7374726f6e673e454d41494c2f5048502f6d61696c28293c2f7374726f6e673e3c6272202f3e3c656d3e2f47756d626f204d696c6c656e6e69756d2f63726f6e2e7068703c2f656d3e3c6272202f3e3c6272202f3e4572726e6f20323a206d61696c2829205b3c6120687265663d2766756e6374696f6e2e6d61696c273e66756e6374696f6e2e6d61696c3c2f613e5d3a204661696c656420746f20636f6e6e65637420746f206d61696c736572766572206174202671756f743b6c6f63616c686f73742671756f743b20706f72742032352c2076657269667920796f7572202671756f743b534d54502671756f743b20616e64202671756f743b736d74705f706f72742671756f743b2073657474696e6720696e207068702e696e69206f722075736520696e695f7365742829206174205b524f4f545d2f696e636c756465732f66756e6374696f6e735f6d657373656e6765722e706870206c696e6520313635313c6272202f3e223b7d),
(279, 0, 2, 0, 0, 0, '192.168.178.12', 1341997541, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(280, 1, 2, 2, 4, 0, '192.168.178.12', 1341999489, 0x4c4f475f44454c4554455f544f504943, 0x613a323a7b693a303b733a31313a22756e726561642074657374223b693a313b733a343a2274657374223b7d),
(281, 1, 2, 2, 5, 0, '192.168.178.12', 1341999489, 0x4c4f475f44454c4554455f544f504943, 0x613a323a7b693a303b733a31343a226e6f672065656e20746573746a65223b693a313b733a31373a224469676974616c65436f6d6d6973736965223b7d),
(282, 0, 2, 0, 0, 0, '192.168.178.12', 1341999830, 0x4c4f475f50555247455f53455353494f4e53, ''),
(283, 0, 2, 0, 0, 0, '192.168.178.12', 1341999834, 0x4c4f475f50555247455f4341434845, ''),
(284, 0, 2, 0, 0, 0, '192.168.178.12', 1342000947, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(285, 0, 2, 0, 0, 0, '192.168.178.12', 1342001116, 0x4c4f475f464f52554d5f414444, 0x613a313a7b693a303b733a31303a225465737420666f72756d223b7d),
(286, 0, 2, 0, 0, 0, '192.168.178.12', 1342001145, 0x4c4f475f41434c5f4144445f464f52554d5f4c4f43414c5f465f, 0x613a323a7b693a303b733a31303a225465737420666f72756d223b693a313b733a33393a223c7370616e20636c6173733d22736570223e41646d696e6973747261746f72733c2f7370616e3e223b7d),
(287, 0, 2, 0, 0, 0, '192.168.178.12', 1342001157, 0x4c4f475f41434c5f4144445f464f52554d5f4c4f43414c5f465f, 0x613a323a7b693a303b733a31303a225465737420666f72756d223b693a313b733a33393a223c7370616e20636c6173733d22736570223e41646d696e6973747261746f72733c2f7370616e3e223b7d),
(288, 0, 2, 0, 0, 0, '::1', 1342006613, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(289, 0, 2, 0, 0, 0, '::1', 1342012501, 0x4c4f475f41444d494e5f415554485f53554343455353, '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_login_attempts`
--

CREATE TABLE IF NOT EXISTS `dc_login_attempts` (
  `attempt_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `attempt_browser` varchar(150) COLLATE utf8_bin NOT NULL DEFAULT '',
  `attempt_forwarded_for` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `attempt_time` int(11) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `username_clean` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '0',
  KEY `att_ip` (`attempt_ip`,`attempt_time`),
  KEY `att_for` (`attempt_forwarded_for`,`attempt_time`),
  KEY `att_time` (`attempt_time`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_moderator_cache`
--

CREATE TABLE IF NOT EXISTS `dc_moderator_cache` (
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_on_index` tinyint(1) unsigned NOT NULL DEFAULT '1',
  KEY `disp_idx` (`display_on_index`),
  KEY `forum_id` (`forum_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_modules`
--

CREATE TABLE IF NOT EXISTS `dc_modules` (
  `module_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `module_enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `module_display` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `module_basename` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `module_class` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `left_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `right_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `module_langname` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `module_mode` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `module_auth` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`module_id`),
  KEY `left_right_id` (`left_id`,`right_id`),
  KEY `module_enabled` (`module_enabled`),
  KEY `class_left_id` (`module_class`,`left_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=230 ;

--
-- Gegevens worden uitgevoerd voor tabel `dc_modules`
--

INSERT INTO `dc_modules` (`module_id`, `module_enabled`, `module_display`, `module_basename`, `module_class`, `parent_id`, `left_id`, `right_id`, `module_langname`, `module_mode`, `module_auth`) VALUES
(1, 1, 1, '', 'acp', 0, 1, 64, 'ACP_CAT_GENERAL', '', ''),
(2, 1, 1, '', 'acp', 1, 4, 17, 'ACP_QUICK_ACCESS', '', ''),
(3, 1, 1, '', 'acp', 1, 18, 41, 'ACP_BOARD_CONFIGURATION', '', ''),
(4, 1, 1, '', 'acp', 1, 42, 49, 'ACP_CLIENT_COMMUNICATION', '', ''),
(5, 1, 1, '', 'acp', 1, 50, 63, 'ACP_SERVER_CONFIGURATION', '', ''),
(6, 1, 1, '', 'acp', 0, 65, 84, 'ACP_CAT_FORUMS', '', ''),
(7, 1, 1, '', 'acp', 6, 66, 71, 'ACP_MANAGE_FORUMS', '', ''),
(8, 1, 1, '', 'acp', 6, 72, 83, 'ACP_FORUM_BASED_PERMISSIONS', '', ''),
(9, 1, 1, '', 'acp', 0, 85, 110, 'ACP_CAT_POSTING', '', ''),
(10, 1, 1, '', 'acp', 9, 86, 99, 'ACP_MESSAGES', '', ''),
(11, 1, 1, '', 'acp', 9, 100, 109, 'ACP_ATTACHMENTS', '', ''),
(12, 1, 1, '', 'acp', 0, 111, 166, 'ACP_CAT_USERGROUP', '', ''),
(13, 1, 1, '', 'acp', 12, 112, 145, 'ACP_CAT_USERS', '', ''),
(14, 1, 1, '', 'acp', 12, 146, 153, 'ACP_GROUPS', '', ''),
(15, 1, 1, '', 'acp', 12, 154, 165, 'ACP_USER_SECURITY', '', ''),
(16, 1, 1, '', 'acp', 0, 167, 216, 'ACP_CAT_PERMISSIONS', '', ''),
(17, 1, 1, '', 'acp', 16, 170, 179, 'ACP_GLOBAL_PERMISSIONS', '', ''),
(18, 1, 1, '', 'acp', 16, 180, 191, 'ACP_FORUM_BASED_PERMISSIONS', '', ''),
(19, 1, 1, '', 'acp', 16, 192, 201, 'ACP_PERMISSION_ROLES', '', ''),
(20, 1, 1, '', 'acp', 16, 202, 215, 'ACP_PERMISSION_MASKS', '', ''),
(21, 1, 1, '', 'acp', 0, 217, 230, 'ACP_CAT_STYLES', '', ''),
(22, 1, 1, '', 'acp', 21, 218, 221, 'ACP_STYLE_MANAGEMENT', '', ''),
(23, 1, 1, '', 'acp', 21, 222, 229, 'ACP_STYLE_COMPONENTS', '', ''),
(24, 1, 1, '', 'acp', 0, 231, 250, 'ACP_CAT_MAINTENANCE', '', ''),
(25, 1, 1, '', 'acp', 24, 232, 241, 'ACP_FORUM_LOGS', '', ''),
(26, 1, 1, '', 'acp', 24, 242, 249, 'ACP_CAT_DATABASE', '', ''),
(27, 1, 1, '', 'acp', 0, 251, 276, 'ACP_CAT_SYSTEM', '', ''),
(28, 1, 1, '', 'acp', 27, 252, 255, 'ACP_AUTOMATION', '', ''),
(29, 1, 1, '', 'acp', 27, 256, 267, 'ACP_GENERAL_TASKS', '', ''),
(30, 1, 1, '', 'acp', 27, 268, 275, 'ACP_MODULE_MANAGEMENT', '', ''),
(31, 1, 1, '', 'acp', 0, 277, 278, 'ACP_CAT_DOT_MODS', '', ''),
(32, 1, 1, 'attachments', 'acp', 3, 19, 20, 'ACP_ATTACHMENT_SETTINGS', 'attach', 'acl_a_attach'),
(33, 1, 1, 'attachments', 'acp', 11, 101, 102, 'ACP_ATTACHMENT_SETTINGS', 'attach', 'acl_a_attach'),
(34, 1, 1, 'attachments', 'acp', 11, 103, 104, 'ACP_MANAGE_EXTENSIONS', 'extensions', 'acl_a_attach'),
(35, 1, 1, 'attachments', 'acp', 11, 105, 106, 'ACP_EXTENSION_GROUPS', 'ext_groups', 'acl_a_attach'),
(36, 1, 1, 'attachments', 'acp', 11, 107, 108, 'ACP_ORPHAN_ATTACHMENTS', 'orphan', 'acl_a_attach'),
(37, 1, 1, 'ban', 'acp', 15, 155, 156, 'ACP_BAN_EMAILS', 'email', 'acl_a_ban'),
(38, 1, 1, 'ban', 'acp', 15, 157, 158, 'ACP_BAN_IPS', 'ip', 'acl_a_ban'),
(39, 1, 1, 'ban', 'acp', 15, 159, 160, 'ACP_BAN_USERNAMES', 'user', 'acl_a_ban'),
(40, 1, 1, 'bbcodes', 'acp', 10, 87, 88, 'ACP_BBCODES', 'bbcodes', 'acl_a_bbcode'),
(41, 1, 1, 'board', 'acp', 3, 21, 22, 'ACP_BOARD_SETTINGS', 'settings', 'acl_a_board'),
(42, 1, 1, 'board', 'acp', 3, 23, 24, 'ACP_BOARD_FEATURES', 'features', 'acl_a_board'),
(43, 1, 1, 'board', 'acp', 3, 25, 26, 'ACP_AVATAR_SETTINGS', 'avatar', 'acl_a_board'),
(44, 1, 1, 'board', 'acp', 3, 27, 28, 'ACP_MESSAGE_SETTINGS', 'message', 'acl_a_board'),
(45, 1, 1, 'board', 'acp', 10, 89, 90, 'ACP_MESSAGE_SETTINGS', 'message', 'acl_a_board'),
(46, 1, 1, 'board', 'acp', 3, 29, 30, 'ACP_POST_SETTINGS', 'post', 'acl_a_board'),
(47, 1, 1, 'board', 'acp', 10, 91, 92, 'ACP_POST_SETTINGS', 'post', 'acl_a_board'),
(48, 1, 1, 'board', 'acp', 3, 31, 32, 'ACP_SIGNATURE_SETTINGS', 'signature', 'acl_a_board'),
(49, 1, 1, 'board', 'acp', 3, 33, 34, 'ACP_FEED_SETTINGS', 'feed', 'acl_a_board'),
(50, 1, 1, 'board', 'acp', 3, 35, 36, 'ACP_REGISTER_SETTINGS', 'registration', 'acl_a_board'),
(51, 1, 1, 'board', 'acp', 4, 43, 44, 'ACP_AUTH_SETTINGS', 'auth', 'acl_a_server'),
(52, 1, 1, 'board', 'acp', 4, 45, 46, 'ACP_EMAIL_SETTINGS', 'email', 'acl_a_server'),
(53, 1, 1, 'board', 'acp', 5, 51, 52, 'ACP_COOKIE_SETTINGS', 'cookie', 'acl_a_server'),
(54, 1, 1, 'board', 'acp', 5, 53, 54, 'ACP_SERVER_SETTINGS', 'server', 'acl_a_server'),
(55, 1, 1, 'board', 'acp', 5, 55, 56, 'ACP_SECURITY_SETTINGS', 'security', 'acl_a_server'),
(56, 1, 1, 'board', 'acp', 5, 57, 58, 'ACP_LOAD_SETTINGS', 'load', 'acl_a_server'),
(57, 1, 1, 'bots', 'acp', 29, 257, 258, 'ACP_BOTS', 'bots', 'acl_a_bots'),
(58, 1, 1, 'captcha', 'acp', 3, 37, 38, 'ACP_VC_SETTINGS', 'visual', 'acl_a_board'),
(59, 1, 0, 'captcha', 'acp', 3, 39, 40, 'ACP_VC_CAPTCHA_DISPLAY', 'img', 'acl_a_board'),
(60, 1, 1, 'database', 'acp', 26, 243, 244, 'ACP_BACKUP', 'backup', 'acl_a_backup'),
(61, 1, 1, 'database', 'acp', 26, 245, 246, 'ACP_RESTORE', 'restore', 'acl_a_backup'),
(62, 1, 1, 'disallow', 'acp', 15, 161, 162, 'ACP_DISALLOW_USERNAMES', 'usernames', 'acl_a_names'),
(63, 1, 1, 'email', 'acp', 29, 259, 260, 'ACP_MASS_EMAIL', 'email', 'acl_a_email && cfg_email_enable'),
(64, 1, 1, 'forums', 'acp', 7, 67, 68, 'ACP_MANAGE_FORUMS', 'manage', 'acl_a_forum'),
(65, 1, 1, 'groups', 'acp', 14, 147, 148, 'ACP_GROUPS_MANAGE', 'manage', 'acl_a_group'),
(66, 1, 1, 'icons', 'acp', 10, 93, 94, 'ACP_ICONS', 'icons', 'acl_a_icons'),
(67, 1, 1, 'icons', 'acp', 10, 95, 96, 'ACP_SMILIES', 'smilies', 'acl_a_icons'),
(68, 1, 1, 'inactive', 'acp', 13, 115, 116, 'ACP_INACTIVE_USERS', 'list', 'acl_a_user'),
(69, 1, 1, 'jabber', 'acp', 4, 47, 48, 'ACP_JABBER_SETTINGS', 'settings', 'acl_a_jabber'),
(70, 1, 1, 'language', 'acp', 29, 261, 262, 'ACP_LANGUAGE_PACKS', 'lang_packs', 'acl_a_language'),
(71, 1, 1, 'logs', 'acp', 25, 233, 234, 'ACP_ADMIN_LOGS', 'admin', 'acl_a_viewlogs'),
(72, 1, 1, 'logs', 'acp', 25, 235, 236, 'ACP_MOD_LOGS', 'mod', 'acl_a_viewlogs'),
(73, 1, 1, 'logs', 'acp', 25, 237, 238, 'ACP_USERS_LOGS', 'users', 'acl_a_viewlogs'),
(74, 1, 1, 'logs', 'acp', 25, 239, 240, 'ACP_CRITICAL_LOGS', 'critical', 'acl_a_viewlogs'),
(75, 1, 1, 'main', 'acp', 1, 2, 3, 'ACP_INDEX', 'main', ''),
(76, 1, 1, 'modules', 'acp', 30, 269, 270, 'ACP', 'acp', 'acl_a_modules'),
(77, 1, 1, 'modules', 'acp', 30, 271, 272, 'UCP', 'ucp', 'acl_a_modules'),
(78, 1, 1, 'modules', 'acp', 30, 273, 274, 'MCP', 'mcp', 'acl_a_modules'),
(79, 1, 1, 'permission_roles', 'acp', 19, 193, 194, 'ACP_ADMIN_ROLES', 'admin_roles', 'acl_a_roles && acl_a_aauth'),
(80, 1, 1, 'permission_roles', 'acp', 19, 195, 196, 'ACP_USER_ROLES', 'user_roles', 'acl_a_roles && acl_a_uauth'),
(81, 1, 1, 'permission_roles', 'acp', 19, 197, 198, 'ACP_MOD_ROLES', 'mod_roles', 'acl_a_roles && acl_a_mauth'),
(82, 1, 1, 'permission_roles', 'acp', 19, 199, 200, 'ACP_FORUM_ROLES', 'forum_roles', 'acl_a_roles && acl_a_fauth'),
(83, 1, 1, 'permissions', 'acp', 16, 168, 169, 'ACP_PERMISSIONS', 'intro', 'acl_a_authusers || acl_a_authgroups || acl_a_viewauth'),
(84, 1, 0, 'permissions', 'acp', 20, 203, 204, 'ACP_PERMISSION_TRACE', 'trace', 'acl_a_viewauth'),
(85, 1, 1, 'permissions', 'acp', 18, 181, 182, 'ACP_FORUM_PERMISSIONS', 'setting_forum_local', 'acl_a_fauth && (acl_a_authusers || acl_a_authgroups)'),
(86, 1, 1, 'permissions', 'acp', 18, 183, 184, 'ACP_FORUM_PERMISSIONS_COPY', 'setting_forum_copy', 'acl_a_fauth && acl_a_authusers && acl_a_authgroups && acl_a_mauth'),
(87, 1, 1, 'permissions', 'acp', 18, 185, 186, 'ACP_FORUM_MODERATORS', 'setting_mod_local', 'acl_a_mauth && (acl_a_authusers || acl_a_authgroups)'),
(88, 1, 1, 'permissions', 'acp', 17, 171, 172, 'ACP_USERS_PERMISSIONS', 'setting_user_global', 'acl_a_authusers && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),
(89, 1, 1, 'permissions', 'acp', 13, 117, 118, 'ACP_USERS_PERMISSIONS', 'setting_user_global', 'acl_a_authusers && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),
(90, 1, 1, 'permissions', 'acp', 18, 187, 188, 'ACP_USERS_FORUM_PERMISSIONS', 'setting_user_local', 'acl_a_authusers && (acl_a_mauth || acl_a_fauth)'),
(91, 1, 1, 'permissions', 'acp', 13, 119, 120, 'ACP_USERS_FORUM_PERMISSIONS', 'setting_user_local', 'acl_a_authusers && (acl_a_mauth || acl_a_fauth)'),
(92, 1, 1, 'permissions', 'acp', 17, 173, 174, 'ACP_GROUPS_PERMISSIONS', 'setting_group_global', 'acl_a_authgroups && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),
(93, 1, 1, 'permissions', 'acp', 14, 149, 150, 'ACP_GROUPS_PERMISSIONS', 'setting_group_global', 'acl_a_authgroups && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),
(94, 1, 1, 'permissions', 'acp', 18, 189, 190, 'ACP_GROUPS_FORUM_PERMISSIONS', 'setting_group_local', 'acl_a_authgroups && (acl_a_mauth || acl_a_fauth)'),
(95, 1, 1, 'permissions', 'acp', 14, 151, 152, 'ACP_GROUPS_FORUM_PERMISSIONS', 'setting_group_local', 'acl_a_authgroups && (acl_a_mauth || acl_a_fauth)'),
(96, 1, 1, 'permissions', 'acp', 17, 175, 176, 'ACP_ADMINISTRATORS', 'setting_admin_global', 'acl_a_aauth && (acl_a_authusers || acl_a_authgroups)'),
(97, 1, 1, 'permissions', 'acp', 17, 177, 178, 'ACP_GLOBAL_MODERATORS', 'setting_mod_global', 'acl_a_mauth && (acl_a_authusers || acl_a_authgroups)'),
(98, 1, 1, 'permissions', 'acp', 20, 205, 206, 'ACP_VIEW_ADMIN_PERMISSIONS', 'view_admin_global', 'acl_a_viewauth'),
(99, 1, 1, 'permissions', 'acp', 20, 207, 208, 'ACP_VIEW_USER_PERMISSIONS', 'view_user_global', 'acl_a_viewauth'),
(100, 1, 1, 'permissions', 'acp', 20, 209, 210, 'ACP_VIEW_GLOBAL_MOD_PERMISSIONS', 'view_mod_global', 'acl_a_viewauth'),
(101, 1, 1, 'permissions', 'acp', 20, 211, 212, 'ACP_VIEW_FORUM_MOD_PERMISSIONS', 'view_mod_local', 'acl_a_viewauth'),
(102, 1, 1, 'permissions', 'acp', 20, 213, 214, 'ACP_VIEW_FORUM_PERMISSIONS', 'view_forum_local', 'acl_a_viewauth'),
(103, 1, 1, 'php_info', 'acp', 29, 263, 264, 'ACP_PHP_INFO', 'info', 'acl_a_phpinfo'),
(104, 1, 1, 'profile', 'acp', 13, 121, 122, 'ACP_CUSTOM_PROFILE_FIELDS', 'profile', 'acl_a_profile'),
(105, 1, 1, 'prune', 'acp', 7, 69, 70, 'ACP_PRUNE_FORUMS', 'forums', 'acl_a_prune'),
(106, 1, 1, 'prune', 'acp', 15, 163, 164, 'ACP_PRUNE_USERS', 'users', 'acl_a_userdel'),
(107, 1, 1, 'ranks', 'acp', 13, 123, 124, 'ACP_MANAGE_RANKS', 'ranks', 'acl_a_ranks'),
(108, 1, 1, 'reasons', 'acp', 29, 265, 266, 'ACP_MANAGE_REASONS', 'main', 'acl_a_reasons'),
(109, 1, 1, 'search', 'acp', 5, 59, 60, 'ACP_SEARCH_SETTINGS', 'settings', 'acl_a_search'),
(110, 1, 1, 'search', 'acp', 26, 247, 248, 'ACP_SEARCH_INDEX', 'index', 'acl_a_search'),
(111, 1, 1, 'send_statistics', 'acp', 5, 61, 62, 'ACP_SEND_STATISTICS', 'send_statistics', 'acl_a_server'),
(112, 1, 1, 'styles', 'acp', 22, 219, 220, 'ACP_STYLES', 'style', 'acl_a_styles'),
(113, 1, 1, 'styles', 'acp', 23, 223, 224, 'ACP_TEMPLATES', 'template', 'acl_a_styles'),
(114, 1, 1, 'styles', 'acp', 23, 225, 226, 'ACP_THEMES', 'theme', 'acl_a_styles'),
(115, 1, 1, 'styles', 'acp', 23, 227, 228, 'ACP_IMAGESETS', 'imageset', 'acl_a_styles'),
(116, 1, 1, 'update', 'acp', 28, 253, 254, 'ACP_VERSION_CHECK', 'version_check', 'acl_a_board'),
(117, 1, 1, 'users', 'acp', 13, 113, 114, 'ACP_MANAGE_USERS', 'overview', 'acl_a_user'),
(118, 1, 0, 'users', 'acp', 13, 125, 126, 'ACP_USER_FEEDBACK', 'feedback', 'acl_a_user'),
(119, 1, 0, 'users', 'acp', 13, 127, 128, 'ACP_USER_WARNINGS', 'warnings', 'acl_a_user'),
(120, 1, 0, 'users', 'acp', 13, 129, 130, 'ACP_USER_PROFILE', 'profile', 'acl_a_user'),
(121, 1, 0, 'users', 'acp', 13, 131, 132, 'ACP_USER_PREFS', 'prefs', 'acl_a_user'),
(122, 1, 0, 'users', 'acp', 13, 133, 134, 'ACP_USER_AVATAR', 'avatar', 'acl_a_user'),
(123, 1, 0, 'users', 'acp', 13, 135, 136, 'ACP_USER_RANK', 'rank', 'acl_a_user'),
(124, 1, 0, 'users', 'acp', 13, 137, 138, 'ACP_USER_SIG', 'sig', 'acl_a_user'),
(125, 1, 0, 'users', 'acp', 13, 139, 140, 'ACP_USER_GROUPS', 'groups', 'acl_a_user && acl_a_group'),
(126, 1, 0, 'users', 'acp', 13, 141, 142, 'ACP_USER_PERM', 'perm', 'acl_a_user && acl_a_viewauth'),
(127, 1, 0, 'users', 'acp', 13, 143, 144, 'ACP_USER_ATTACH', 'attach', 'acl_a_user'),
(128, 1, 1, 'words', 'acp', 10, 97, 98, 'ACP_WORDS', 'words', 'acl_a_words'),
(129, 1, 1, 'users', 'acp', 2, 5, 6, 'ACP_MANAGE_USERS', 'overview', 'acl_a_user'),
(130, 1, 1, 'groups', 'acp', 2, 7, 8, 'ACP_GROUPS_MANAGE', 'manage', 'acl_a_group'),
(131, 1, 1, 'forums', 'acp', 2, 9, 10, 'ACP_MANAGE_FORUMS', 'manage', 'acl_a_forum'),
(132, 1, 1, 'logs', 'acp', 2, 11, 12, 'ACP_MOD_LOGS', 'mod', 'acl_a_viewlogs'),
(133, 1, 1, 'bots', 'acp', 2, 13, 14, 'ACP_BOTS', 'bots', 'acl_a_bots'),
(134, 1, 1, 'php_info', 'acp', 2, 15, 16, 'ACP_PHP_INFO', 'info', 'acl_a_phpinfo'),
(135, 1, 1, 'permissions', 'acp', 8, 73, 74, 'ACP_FORUM_PERMISSIONS', 'setting_forum_local', 'acl_a_fauth && (acl_a_authusers || acl_a_authgroups)'),
(136, 1, 1, 'permissions', 'acp', 8, 75, 76, 'ACP_FORUM_PERMISSIONS_COPY', 'setting_forum_copy', 'acl_a_fauth && acl_a_authusers && acl_a_authgroups && acl_a_mauth'),
(137, 1, 1, 'permissions', 'acp', 8, 77, 78, 'ACP_FORUM_MODERATORS', 'setting_mod_local', 'acl_a_mauth && (acl_a_authusers || acl_a_authgroups)'),
(138, 1, 1, 'permissions', 'acp', 8, 79, 80, 'ACP_USERS_FORUM_PERMISSIONS', 'setting_user_local', 'acl_a_authusers && (acl_a_mauth || acl_a_fauth)'),
(139, 1, 1, 'permissions', 'acp', 8, 81, 82, 'ACP_GROUPS_FORUM_PERMISSIONS', 'setting_group_local', 'acl_a_authgroups && (acl_a_mauth || acl_a_fauth)'),
(140, 1, 1, '', 'mcp', 0, 1, 10, 'MCP_MAIN', '', ''),
(141, 1, 1, '', 'mcp', 0, 11, 18, 'MCP_QUEUE', '', ''),
(142, 1, 1, '', 'mcp', 0, 19, 32, 'MCP_REPORTS', '', ''),
(143, 1, 1, '', 'mcp', 0, 33, 38, 'MCP_NOTES', '', ''),
(144, 1, 1, '', 'mcp', 0, 39, 48, 'MCP_WARN', '', ''),
(145, 1, 1, '', 'mcp', 0, 49, 56, 'MCP_LOGS', '', ''),
(146, 1, 1, '', 'mcp', 0, 57, 64, 'MCP_BAN', '', ''),
(147, 1, 1, 'ban', 'mcp', 146, 58, 59, 'MCP_BAN_USERNAMES', 'user', 'acl_m_ban'),
(148, 1, 1, 'ban', 'mcp', 146, 60, 61, 'MCP_BAN_IPS', 'ip', 'acl_m_ban'),
(149, 1, 1, 'ban', 'mcp', 146, 62, 63, 'MCP_BAN_EMAILS', 'email', 'acl_m_ban'),
(150, 1, 1, 'logs', 'mcp', 145, 50, 51, 'MCP_LOGS_FRONT', 'front', 'acl_m_ || aclf_m_'),
(151, 1, 1, 'logs', 'mcp', 145, 52, 53, 'MCP_LOGS_FORUM_VIEW', 'forum_logs', 'acl_m_,$id'),
(152, 1, 1, 'logs', 'mcp', 145, 54, 55, 'MCP_LOGS_TOPIC_VIEW', 'topic_logs', 'acl_m_,$id'),
(153, 1, 1, 'main', 'mcp', 140, 2, 3, 'MCP_MAIN_FRONT', 'front', ''),
(154, 1, 1, 'main', 'mcp', 140, 4, 5, 'MCP_MAIN_FORUM_VIEW', 'forum_view', 'acl_m_,$id'),
(155, 1, 1, 'main', 'mcp', 140, 6, 7, 'MCP_MAIN_TOPIC_VIEW', 'topic_view', 'acl_m_,$id'),
(156, 1, 1, 'main', 'mcp', 140, 8, 9, 'MCP_MAIN_POST_DETAILS', 'post_details', 'acl_m_,$id || (!$id && aclf_m_)'),
(157, 1, 1, 'notes', 'mcp', 143, 34, 35, 'MCP_NOTES_FRONT', 'front', ''),
(158, 1, 1, 'notes', 'mcp', 143, 36, 37, 'MCP_NOTES_USER', 'user_notes', ''),
(159, 1, 1, 'pm_reports', 'mcp', 142, 20, 21, 'MCP_PM_REPORTS_OPEN', 'pm_reports', 'aclf_m_report'),
(160, 1, 1, 'pm_reports', 'mcp', 142, 22, 23, 'MCP_PM_REPORTS_CLOSED', 'pm_reports_closed', 'aclf_m_report'),
(161, 1, 1, 'pm_reports', 'mcp', 142, 24, 25, 'MCP_PM_REPORT_DETAILS', 'pm_report_details', 'aclf_m_report'),
(162, 1, 1, 'queue', 'mcp', 141, 12, 13, 'MCP_QUEUE_UNAPPROVED_TOPICS', 'unapproved_topics', 'aclf_m_approve'),
(163, 1, 1, 'queue', 'mcp', 141, 14, 15, 'MCP_QUEUE_UNAPPROVED_POSTS', 'unapproved_posts', 'aclf_m_approve'),
(164, 1, 1, 'queue', 'mcp', 141, 16, 17, 'MCP_QUEUE_APPROVE_DETAILS', 'approve_details', 'acl_m_approve,$id || (!$id && aclf_m_approve)'),
(165, 1, 1, 'reports', 'mcp', 142, 26, 27, 'MCP_REPORTS_OPEN', 'reports', 'aclf_m_report'),
(166, 1, 1, 'reports', 'mcp', 142, 28, 29, 'MCP_REPORTS_CLOSED', 'reports_closed', 'aclf_m_report'),
(167, 1, 1, 'reports', 'mcp', 142, 30, 31, 'MCP_REPORT_DETAILS', 'report_details', 'acl_m_report,$id || (!$id && aclf_m_report)'),
(168, 1, 1, 'warn', 'mcp', 144, 40, 41, 'MCP_WARN_FRONT', 'front', 'aclf_m_warn'),
(169, 1, 1, 'warn', 'mcp', 144, 42, 43, 'MCP_WARN_LIST', 'list', 'aclf_m_warn'),
(170, 1, 1, 'warn', 'mcp', 144, 44, 45, 'MCP_WARN_USER', 'warn_user', 'aclf_m_warn'),
(171, 1, 1, 'warn', 'mcp', 144, 46, 47, 'MCP_WARN_POST', 'warn_post', 'acl_m_warn && acl_f_read,$id'),
(172, 1, 1, '', 'ucp', 0, 1, 12, 'UCP_MAIN', '', ''),
(173, 1, 1, '', 'ucp', 0, 13, 22, 'UCP_PROFILE', '', ''),
(174, 1, 1, '', 'ucp', 0, 23, 30, 'UCP_PREFS', '', ''),
(175, 1, 1, '', 'ucp', 0, 31, 42, 'UCP_PM', '', ''),
(176, 1, 1, '', 'ucp', 0, 43, 48, 'UCP_USERGROUPS', '', ''),
(177, 1, 1, '', 'ucp', 0, 49, 54, 'UCP_ZEBRA', '', ''),
(178, 1, 1, 'attachments', 'ucp', 172, 10, 11, 'UCP_MAIN_ATTACHMENTS', 'attachments', 'acl_u_attach'),
(179, 1, 1, 'groups', 'ucp', 176, 44, 45, 'UCP_USERGROUPS_MEMBER', 'membership', ''),
(180, 1, 1, 'groups', 'ucp', 176, 46, 47, 'UCP_USERGROUPS_MANAGE', 'manage', ''),
(181, 1, 1, 'main', 'ucp', 172, 2, 3, 'UCP_MAIN_FRONT', 'front', ''),
(182, 1, 1, 'main', 'ucp', 172, 4, 5, 'UCP_MAIN_SUBSCRIBED', 'subscribed', ''),
(183, 1, 1, 'main', 'ucp', 172, 6, 7, 'UCP_MAIN_BOOKMARKS', 'bookmarks', 'cfg_allow_bookmarks'),
(184, 1, 1, 'main', 'ucp', 172, 8, 9, 'UCP_MAIN_DRAFTS', 'drafts', ''),
(185, 1, 0, 'pm', 'ucp', 175, 32, 33, 'UCP_PM_VIEW', 'view', 'cfg_allow_privmsg'),
(186, 1, 1, 'pm', 'ucp', 175, 34, 35, 'UCP_PM_COMPOSE', 'compose', 'cfg_allow_privmsg'),
(187, 1, 1, 'pm', 'ucp', 175, 36, 37, 'UCP_PM_DRAFTS', 'drafts', 'cfg_allow_privmsg'),
(188, 1, 1, 'pm', 'ucp', 175, 38, 39, 'UCP_PM_OPTIONS', 'options', 'cfg_allow_privmsg'),
(189, 1, 0, 'pm', 'ucp', 175, 40, 41, 'UCP_PM_POPUP_TITLE', 'popup', 'cfg_allow_privmsg'),
(190, 1, 1, 'prefs', 'ucp', 174, 24, 25, 'UCP_PREFS_PERSONAL', 'personal', ''),
(191, 1, 1, 'prefs', 'ucp', 174, 26, 27, 'UCP_PREFS_POST', 'post', ''),
(192, 1, 1, 'prefs', 'ucp', 174, 28, 29, 'UCP_PREFS_VIEW', 'view', ''),
(193, 1, 1, 'profile', 'ucp', 173, 14, 15, 'UCP_PROFILE_PROFILE_INFO', 'profile_info', ''),
(194, 1, 1, 'profile', 'ucp', 173, 16, 17, 'UCP_PROFILE_SIGNATURE', 'signature', ''),
(195, 1, 1, 'profile', 'ucp', 173, 18, 19, 'UCP_PROFILE_AVATAR', 'avatar', 'cfg_allow_avatar && (cfg_allow_avatar_local || cfg_allow_avatar_remote || cfg_allow_avatar_upload || cfg_allow_avatar_remote_upload)'),
(196, 1, 1, 'profile', 'ucp', 173, 20, 21, 'UCP_PROFILE_REG_DETAILS', 'reg_details', ''),
(197, 1, 1, 'zebra', 'ucp', 177, 50, 51, 'UCP_ZEBRA_FRIENDS', 'friends', ''),
(198, 1, 1, 'zebra', 'ucp', 177, 52, 53, 'UCP_ZEBRA_FOES', 'foes', ''),
(222, 1, 1, '', 'acp', 0, 279, 294, 'Activity system', '', ''),
(223, 1, 1, '', 'acp', 222, 280, 287, 'Events', '', ''),
(224, 1, 1, '', 'acp', 222, 288, 293, 'Financial', '', ''),
(225, 1, 1, 'dc_activity_management', 'acp', 223, 281, 282, 'New event', 'new_event', 'acl_a_'),
(226, 1, 1, 'dc_activity_management', 'acp', 223, 283, 284, 'Overview', 'overview', 'acl_a_'),
(227, 1, 1, 'dc_activity_management', 'acp', 223, 285, 286, 'Find user events', 'find_user_events', 'acl_a_'),
(228, 1, 1, 'dc_activity_management', 'acp', 224, 289, 290, 'Users not paid', 'users_not_paid', 'acl_a_'),
(229, 1, 1, 'dc_activity_management', 'acp', 224, 291, 292, 'Chance user payment', 'chance_user_payment', 'acl_a_');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_poll_options`
--

CREATE TABLE IF NOT EXISTS `dc_poll_options` (
  `poll_option_id` tinyint(4) NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `poll_option_text` text COLLATE utf8_bin NOT NULL,
  `poll_option_total` mediumint(8) unsigned NOT NULL DEFAULT '0',
  KEY `poll_opt_id` (`poll_option_id`),
  KEY `topic_id` (`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_poll_votes`
--

CREATE TABLE IF NOT EXISTS `dc_poll_votes` (
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `poll_option_id` tinyint(4) NOT NULL DEFAULT '0',
  `vote_user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `vote_user_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  KEY `topic_id` (`topic_id`),
  KEY `vote_user_id` (`vote_user_id`),
  KEY `vote_user_ip` (`vote_user_ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_posts`
--

CREATE TABLE IF NOT EXISTS `dc_posts` (
  `post_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `poster_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `icon_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `poster_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_time` int(11) unsigned NOT NULL DEFAULT '0',
  `post_approved` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `post_reported` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `enable_bbcode` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_smilies` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_magic_url` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_sig` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `post_username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_subject` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_text` mediumtext COLLATE utf8_bin NOT NULL,
  `post_checksum` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_attachment` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_postcount` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `post_edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  `post_edit_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_edit_user` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `post_edit_count` smallint(4) unsigned NOT NULL DEFAULT '0',
  `post_edit_locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`post_id`),
  KEY `forum_id` (`forum_id`),
  KEY `topic_id` (`topic_id`),
  KEY `poster_ip` (`poster_ip`),
  KEY `poster_id` (`poster_id`),
  KEY `post_approved` (`post_approved`),
  KEY `post_username` (`post_username`),
  KEY `tid_post_time` (`topic_id`,`post_time`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=9 ;

--
-- Gegevens worden uitgevoerd voor tabel `dc_posts`
--

INSERT INTO `dc_posts` (`post_id`, `topic_id`, `forum_id`, `poster_id`, `icon_id`, `poster_ip`, `post_time`, `post_approved`, `post_reported`, `enable_bbcode`, `enable_smilies`, `enable_magic_url`, `enable_sig`, `post_username`, `post_subject`, `post_text`, `post_checksum`, `post_attachment`, `bbcode_bitfield`, `bbcode_uid`, `post_postcount`, `post_edit_time`, `post_edit_reason`, `post_edit_user`, `post_edit_count`, `post_edit_locked`) VALUES
(1, 1, 2, 2, 0, '192.168.178.17', 1327581813, 1, 0, 1, 1, 1, 1, '', 'Welkom bij phpBB3', 0x4469742069732065656e20766f6f726265656c646265726963687420696e206a652070687042423320696e7374616c6c617469652e20416c6c6573206c696a6b7420636f72726563742074652066756e6374696f6e6572656e2e204a65206d61672064697420626572696368742c20696e6469656e20676577656e73742c2076657277696a646572656e20656e20766572646572206761616e206d65742068657420696e7374656c6c656e2076616e206a6520666f72756d2e2054696a64656e7320646520696e7374616c6c617469652077657264656e2065656e2061616e74616c207065726d69737369657320766f6f7220646520766f6f726765646566696e696565726465206765627275696b65727367726f6570656e2028626568656572646572732c20626f74732c20676c6f62616c65206d6f64657261746f72732c2067617374656e2c206765726567697374726565726465206765627275696b65727320656e20676572656769737472656572646520434f505041206765627275696b657273292061616e206a65206565727374652063617465676f72696520656e20666f72756d20746f65676577657a656e2e204865742069732061616e20746520726164656e206a65206565727374652063617465676f72696520656e20666f72756d207465206865726e6f656d656e20656e206e616469656e206465207065726d697373696573206f766572207465206e656d656e20616c73206a652065656e206e69657577652063617465676f726965206f6620666f72756d2061616e6d61616b742e20416c73206a6520657220746f636820766f6f72206b69657374206f6d206a65206565727374652063617465676f72696520656e20666f72756d2074652076657277696a646572656e2c20766572676565742064616e206e696574207065726d69737369657320746f652074652077696a7a656e2061616e2064657a65206765627275696b65727367726f6570656e2074656c6b656e73206a652065656e206e69657577652063617465676f726965206f6620666f72756d2061616e6d61616b742e205665656c20706c657a69657221, '5dd683b17f641daf84c040bfefc58ce9', 0, '', '', 1, 0, '', 0, 0, 0),
(2, 2, 2, 2, 0, '192.168.178.14', 1332762423, 1, 0, 1, 1, 1, 1, '', 'gatus test', 0x5b623a326a72306d6c756d5d47617475732068656e6b21215b2f623a326a72306d6c756d5d203c212d2d20733a6576696c3a202d2d3e3c696d67207372633d227b534d494c4945535f504154487d2f69636f6e5f6576696c2e6769662220616c743d223a6576696c3a22207469746c653d22536c65636874206f66206865656c206b7761616422202f3e3c212d2d20733a6576696c3a202d2d3e20203c212d2d20733a6c6f6c3a202d2d3e3c696d67207372633d227b534d494c4945535f504154487d2f69636f6e5f6c6f6c2e6769662220616c743d223a6c6f6c3a22207469746c653d224c616368656e6422202f3e3c212d2d20733a6c6f6c3a202d2d3e20203c212d2d20733a726f6c6c3a202d2d3e3c696d67207372633d227b534d494c4945535f504154487d2f69636f6e5f726f6c6c657965732e6769662220616c743d223a726f6c6c3a22207469746c653d22526f6c6c656e6465206f67656e22202f3e3c212d2d20733a726f6c6c3a202d2d3e20203c212d2d20733a3f3a202d2d3e3c696d67207372633d227b534d494c4945535f504154487d2f69636f6e5f7175657374696f6e2e6769662220616c743d223a3f3a22207469746c653d22567261616722202f3e3c212d2d20733a3f3a202d2d3e20203c212d2d20733a696465613a202d2d3e3c696d67207372633d227b534d494c4945535f504154487d2f69636f6e5f696465612e6769662220616c743d223a696465613a22207469746c653d224964656522202f3e3c212d2d20733a696465613a202d2d3e20205b75726c3d68747470262335383b2f2f777777262334363b676f6f676c65262334363b6e6c3a326a72306d6c756d5d6772617475732068656e6b5b2f75726c3a326a72306d6c756d5d0a656e20686965722068656262656e207765206e6f672065656e20656e74657220656e206e6f672077656174206d6565720a0a0a0a2068616c6c6f20636f6f6c2064697421, '23f32c1622257377d2e8d49604c60c48', 0, 'UA==', '2jr0mlum', 1, 0, '', 0, 0, 0),
(3, 2, 2, 2, 0, '127.0.0.1', 1333200650, 1, 0, 1, 1, 1, 1, '', 'Re: gatus test', 0x65656e205b623a317470667a636a725d5b693a317470667a636a725d65787472615b2f693a317470667a636a725d20706f7374205b2f623a317470667a636a725d202020203c212d2d20733a6372793a202d2d3e3c696d67207372633d227b534d494c4945535f504154487d2f69636f6e5f6372792e6769662220616c743d223a6372793a22207469746c653d224875696c656e64206f66207a6565722064726f6576696722202f3e3c212d2d20733a6372793a202d2d3e20203c212d2d20733a747769737465643a202d2d3e3c696d67207372633d227b534d494c4945535f504154487d2f69636f6e5f747769737465642e6769662220616c743d223a747769737465643a22207469746c653d2247656e696570696720736c6563687422202f3e3c212d2d20733a747769737465643a202d2d3e20203c212d2d20733a73686f636b3a202d2d3e3c696d67207372633d227b534d494c4945535f504154487d2f69636f6e5f65656b2e6769662220616c743d223a73686f636b3a22207469746c653d22476563686f71756565726422202f3e3c212d2d20733a73686f636b3a202d2d3e200a68656e6b200a0a68656e6b2068656e6b, '273a697cd1d7cf2a51e04d461a6617eb', 0, 'YA==', '1tpfzcjr', 1, 0, '', 0, 0, 0),
(4, 3, 11, 2, 0, '::1', 1341251743, 1, 0, 1, 1, 1, 1, '', 'Toepassen in het live systeem', 0x5b73697a653d3135303a6732686a62746e6e5d54616b656e20766f6f7220476572636f5b2f73697a653a6732686a62746e6e5d0a2d2667743b20696e2064652066756e637469653a206765745f616c6c5f737461747573282920656e206765745f757365725f6d616e6167655f6c69737428292020646520757365726e616d652061616e70617373656e206e616172206563687465206e61616d2076616e206465206765627275696b6572210a202020202020202d2076657267656574206461617262696a206e69657420696e202061637469766974792e706870207465206b696a6b656e206f662064652066756e637469657320676f65642070617273656e0a0a2d2667743b2065656e206578747261206373732061616e6d616b656e206f662064697420746f65766f6567656e2061616e20636f6d6d656e2e63737320656e2064617420676f656420646f63756d656e746572656e212121212121210a5b636f64653a6732686a62746e6e5d2f2a207370656369616c20666f722064632061637469766974792a2f0a2361637469766974795f656e726f6c6c65645f776170706572207b0a09096d617267696e262335383b30206175746f3b0a09097769647468262335383b203530253b0a0909666c6f6174262335383b63656e7465723b0a09090a7d0a0a2361637469766974795f656e726f6c6c65645f626c6f636b31207b0a0909666c6f6174262335383b6c6566743b0a09097769647468262335383b203530253b0a09090a09090a7d0a2361637469766974795f656e726f6c6c65645f626c6f636b32207b0a0909666c6f6174262335383b72696768743b0a0909746578742d616c69676e262335383b206c6566743b0a09097769647468262335383b203530253b0a7d5b2f636f64653a6732686a62746e6e5d0a0a2d2d2667743b206f707a6f656b656e2077656c6b2069642064652067756d626f206d656d6265722067726f657020697320656e2064617420696e20646520636f6e7374616e74653a204d454d4245525f47524f55505f494420696e2064635f61637469766974795f636c617373207a657474656e0a0a2d2d2667743b20757365722065656e206d61696c2073747572656e2c206b616e20696b206e75206e69657420646f656e206f6d64617420696b206765656e206d61696c736572766572206865620a0a2d2d2667743b205048506262207569742064656275672068616c656e3a202064697420696e20636f6d6d656e7473207a657474656e3a20696e20636f6e6669672e7068700a40646566696e6528274445425547272c2074727565293b0a40646566696e65282744454255475f4558545241272c2074727565293b, '2da132b32e251e1251c9be67dee6205e', 0, 'BIA=', 'g2hjbtnn', 1, 0, '', 0, 0, 0),
(5, 2, 2, 2, 0, '::1', 1341251804, 1, 0, 1, 1, 1, 0, '', 'Re: gatus test', 0x68616c6c6f2074657374206a65, '40ab7708058eec09b58b45331185ad45', 0, '', '3obnbi46', 1, 0, '', 0, 0, 0),
(8, 6, 11, 2, 0, '192.168.178.12', 1341999658, 1, 0, 1, 1, 1, 1, '', 'Toekomst muziek activiteiten systeem', 0x2d2065656e20616374697669746569742061616e2065656e206361746f6772696520746f65766f6567656e0a2d20496e20646520616369746976656974656e206c696a73742064652067656c657a656e2f6f6e67656c657a656e2061616e7a657474656e20285a697474656e207761742062756720696e3f29, 'a31c4df53216c44738409ba6ee533698', 0, '', '2ft314xh', 1, 0, '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_privmsgs`
--

CREATE TABLE IF NOT EXISTS `dc_privmsgs` (
  `msg_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `root_level` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `icon_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_time` int(11) unsigned NOT NULL DEFAULT '0',
  `enable_bbcode` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_smilies` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_magic_url` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_sig` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `message_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_text` mediumtext COLLATE utf8_bin NOT NULL,
  `message_edit_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_edit_user` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `message_attachment` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  `message_edit_count` smallint(4) unsigned NOT NULL DEFAULT '0',
  `to_address` text COLLATE utf8_bin NOT NULL,
  `bcc_address` text COLLATE utf8_bin NOT NULL,
  `message_reported` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`msg_id`),
  KEY `author_ip` (`author_ip`),
  KEY `message_time` (`message_time`),
  KEY `author_id` (`author_id`),
  KEY `root_level` (`root_level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_privmsgs_folder`
--

CREATE TABLE IF NOT EXISTS `dc_privmsgs_folder` (
  `folder_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `folder_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pm_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`folder_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_privmsgs_rules`
--

CREATE TABLE IF NOT EXISTS `dc_privmsgs_rules` (
  `rule_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_check` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_connection` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_string` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `rule_user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_action` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_folder_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rule_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_privmsgs_to`
--

CREATE TABLE IF NOT EXISTS `dc_privmsgs_to` (
  `msg_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pm_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pm_new` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `pm_unread` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `pm_replied` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pm_marked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pm_forwarded` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `folder_id` int(11) NOT NULL DEFAULT '0',
  KEY `msg_id` (`msg_id`),
  KEY `author_id` (`author_id`),
  KEY `usr_flder_id` (`user_id`,`folder_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_profile_fields`
--

CREATE TABLE IF NOT EXISTS `dc_profile_fields` (
  `field_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `field_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_type` tinyint(4) NOT NULL DEFAULT '0',
  `field_ident` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_length` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_minlen` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_maxlen` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_novalue` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_default_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_validation` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_show_on_reg` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_show_on_vt` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_show_profile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_hide` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_no_view` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_order` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`field_id`),
  KEY `fld_type` (`field_type`),
  KEY `fld_ordr` (`field_order`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Gegevens worden uitgevoerd voor tabel `dc_profile_fields`
--

INSERT INTO `dc_profile_fields` (`field_id`, `field_name`, `field_type`, `field_ident`, `field_length`, `field_minlen`, `field_maxlen`, `field_novalue`, `field_default_value`, `field_validation`, `field_required`, `field_show_on_reg`, `field_show_on_vt`, `field_show_profile`, `field_hide`, `field_no_view`, `field_active`, `field_order`) VALUES
(1, 'gumbo_status', 1, 'gumbo_status', '5', '0', '100', '0', '0', '', 1, 0, 1, 0, 0, 0, 1, 1),
(2, 'gumbo_facebook', 1, 'gumbo_facebook', '5', '0', '100', '0', '', '', 0, 1, 0, 1, 0, 1, 1, 2);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_profile_fields_data`
--

CREATE TABLE IF NOT EXISTS `dc_profile_fields_data` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pf_gumbo_status` bigint(20) DEFAULT NULL,
  `pf_gumbo_facebook` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Gegevens worden uitgevoerd voor tabel `dc_profile_fields_data`
--

INSERT INTO `dc_profile_fields_data` (`user_id`, `pf_gumbo_status`, `pf_gumbo_facebook`) VALUES
(56, 0, NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_profile_fields_lang`
--

CREATE TABLE IF NOT EXISTS `dc_profile_fields_lang` (
  `field_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lang_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `option_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `field_type` tinyint(4) NOT NULL DEFAULT '0',
  `lang_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`field_id`,`lang_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_profile_lang`
--

CREATE TABLE IF NOT EXISTS `dc_profile_lang` (
  `field_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lang_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lang_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_explain` text COLLATE utf8_bin NOT NULL,
  `lang_default_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`field_id`,`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Gegevens worden uitgevoerd voor tabel `dc_profile_lang`
--

INSERT INTO `dc_profile_lang` (`field_id`, `lang_id`, `lang_name`, `lang_explain`, `lang_default_value`) VALUES
(1, 1, 'Status', 0x4a652068756964696765207374617475732062696e6e656e20646520766572656e6967696e67, ''),
(1, 2, 'Status', 0x4a652068756964696765207374617475732062696e6e656e20646520766572656e6967696e67, ''),
(2, 1, 'Facebook', 0x46616365626f6f6b206163636f756e74, ''),
(2, 2, 'Facebook', 0x46616365626f6f6b206163636f756e74, '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_ranks`
--

CREATE TABLE IF NOT EXISTS `dc_ranks` (
  `rank_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `rank_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `rank_min` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rank_special` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `rank_image` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`rank_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Gegevens worden uitgevoerd voor tabel `dc_ranks`
--

INSERT INTO `dc_ranks` (`rank_id`, `rank_title`, `rank_min`, `rank_special`, `rank_image`) VALUES
(1, 'Beheerder', 0, 1, ''),
(2, 'Bestuur', 0, 1, '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_reports`
--

CREATE TABLE IF NOT EXISTS `dc_reports` (
  `report_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `reason_id` smallint(4) unsigned NOT NULL DEFAULT '0',
  `post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pm_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_notify` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `report_closed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `report_time` int(11) unsigned NOT NULL DEFAULT '0',
  `report_text` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`report_id`),
  KEY `post_id` (`post_id`),
  KEY `pm_id` (`pm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_reports_reasons`
--

CREATE TABLE IF NOT EXISTS `dc_reports_reasons` (
  `reason_id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `reason_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `reason_description` mediumtext COLLATE utf8_bin NOT NULL,
  `reason_order` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`reason_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=5 ;

--
-- Gegevens worden uitgevoerd voor tabel `dc_reports_reasons`
--

INSERT INTO `dc_reports_reasons` (`reason_id`, `reason_title`, `reason_description`, `reason_order`) VALUES
(1, 'warez', 0x4469742062657269636874206265766174206c696e6b73206e61617220696c6c6567616c652f6f6e72656368746d61746967207665726b726567656e20736f6674776172652e, 1),
(2, 'spam', 0x446974206265726963687420686565667420616c7320656e69676520646f656c207265636c616d65207465206d616b656e20766f6f722065656e2077656273697465206f662070726f647563742e, 2),
(3, 'off_topic', 0x446974206265726963687420646f6574206e69657420746572207a616b6520696e20686574206f6e646572776572702e, 3),
(4, 'other', 0x44697420626572696368742070617374206e6965742062696e6e656e2065656e2063617465676f7269652c206765627275696b206865742074656b737476656c6420766f6f72207665726465726520696e666f726d617469652e, 4);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_search_results`
--

CREATE TABLE IF NOT EXISTS `dc_search_results` (
  `search_key` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_time` int(11) unsigned NOT NULL DEFAULT '0',
  `search_keywords` mediumtext COLLATE utf8_bin NOT NULL,
  `search_authors` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`search_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_search_wordlist`
--

CREATE TABLE IF NOT EXISTS `dc_search_wordlist` (
  `word_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `word_text` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `word_common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `word_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`word_id`),
  UNIQUE KEY `wrd_txt` (`word_text`),
  KEY `wrd_cnt` (`word_count`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=238 ;

--
-- Gegevens worden uitgevoerd voor tabel `dc_search_wordlist`
--

INSERT INTO `dc_search_wordlist` (`word_id`, `word_text`, `word_common`, `word_count`) VALUES
(1, 'dit', 0, 3),
(2, 'een', 0, 5),
(3, 'voorbeeldbericht', 0, 1),
(4, 'phpbb3', 0, 2),
(5, 'installatie', 0, 1),
(6, 'alles', 0, 1),
(7, 'lijkt', 0, 1),
(8, 'correct', 0, 1),
(9, 'functioneren', 0, 1),
(10, 'mag', 0, 1),
(11, 'bericht', 0, 1),
(12, 'indien', 0, 1),
(13, 'gewenst', 0, 1),
(14, 'verwijderen', 0, 1),
(15, 'verder', 0, 1),
(16, 'gaan', 0, 1),
(17, 'met', 0, 1),
(18, 'het', 0, 2),
(19, 'instellen', 0, 1),
(20, 'van', 0, 2),
(21, 'forum', 0, 1),
(22, 'tijdens', 0, 1),
(23, 'werden', 0, 1),
(24, 'aantal', 0, 1),
(25, 'permissies', 0, 1),
(26, 'voor', 0, 2),
(27, 'voorgedefinieerde', 0, 1),
(28, 'gebruikersgroepen', 0, 1),
(29, 'beheerders', 0, 1),
(30, 'bots', 0, 1),
(31, 'globale', 0, 1),
(32, 'moderators', 0, 1),
(33, 'gasten', 0, 1),
(34, 'geregistreerde', 0, 1),
(35, 'gebruikers', 0, 1),
(36, 'coppa', 0, 1),
(37, 'aan', 0, 3),
(38, 'eerste', 0, 1),
(39, 'categorie', 0, 1),
(40, 'toegewezen', 0, 1),
(41, 'raden', 0, 1),
(42, 'hernoemen', 0, 1),
(43, 'nadien', 0, 1),
(44, 'over', 0, 1),
(45, 'nemen', 0, 1),
(46, 'als', 0, 1),
(47, 'nieuwe', 0, 1),
(48, 'aanmaakt', 0, 1),
(49, 'toch', 0, 1),
(50, 'kiest', 0, 1),
(51, 'vergeet', 0, 2),
(52, 'dan', 0, 1),
(53, 'niet', 0, 2),
(54, 'toe', 0, 1),
(55, 'wijzen', 0, 1),
(56, 'deze', 0, 1),
(57, 'telkens', 0, 1),
(58, 'veel', 0, 1),
(59, 'plezier', 0, 1),
(60, 'welkom', 0, 1),
(61, 'bij', 0, 1),
(62, 'gatus', 0, 4),
(63, 'henk', 0, 2),
(64, 'test', 0, 4),
(65, 'url', 0, 0),
(66, 'gratus', 0, 1),
(67, 'hier', 0, 1),
(68, 'hebben', 0, 1),
(69, 'nog', 0, 1),
(70, 'enter', 0, 1),
(71, 'weat', 0, 1),
(72, 'meer', 0, 1),
(73, 'hallo', 0, 2),
(74, 'cool', 0, 1),
(75, 'extra', 0, 2),
(76, 'post', 0, 1),
(77, 'http', 0, 0),
(78, 'www', 0, 0),
(79, 'google', 0, 0),
(80, 'back', 0, 0),
(81, 'end', 0, 0),
(82, 'wat', 0, 1),
(83, 'dik', 0, 0),
(84, 'gedrukt', 0, 0),
(85, 'beheer', 0, 0),
(86, 'maken', 0, 0),
(87, 'activiteit', 0, 1),
(88, 'wijzig', 0, 0),
(89, 'maak', 0, 0),
(90, 'zichtbaar', 0, 0),
(91, 'verwijder', 0, 0),
(92, 'geef', 0, 0),
(93, 'overzicht', 0, 0),
(94, 'preview', 0, 0),
(95, 'inschrijving', 0, 0),
(96, 'wie', 0, 0),
(97, 'betaalt', 0, 0),
(98, 'mogelijk', 0, 0),
(99, 'beheerder', 0, 0),
(100, 'stuur', 0, 0),
(101, 'mail', 0, 1),
(102, 'betaling', 0, 0),
(103, 'categorieën', 0, 0),
(104, 'toevoegen', 0, 2),
(105, 'user', 0, 1),
(106, 'ophalen', 0, 0),
(107, 'lijst', 0, 1),
(108, 'activiteiten', 0, 1),
(109, 'objecten', 0, 0),
(110, 'datum', 0, 0),
(111, 'vandaag', 0, 0),
(112, 'lees', 0, 0),
(113, 'inschrijven', 0, 0),
(114, 'uitschrijven', 0, 0),
(115, 'betaal', 0, 0),
(116, 'alleen', 0, 0),
(117, 'maar', 0, 0),
(118, 'contact', 0, 0),
(119, 'ideal', 0, 0),
(120, 'geïmplementeerd', 0, 0),
(121, 'zoeken', 0, 0),
(122, 'gelezen', 0, 1),
(123, 'zetten', 0, 1),
(124, 'ical', 0, 0),
(125, 'sturen', 0, 1),
(126, 'naar', 0, 1),
(127, 'gebruiker', 0, 1),
(128, 'dat', 0, 1),
(129, 'die', 0, 0),
(130, 'ingeschreven', 0, 0),
(131, 'front', 0, 0),
(132, 'gedeelte', 0, 0),
(133, 'gedaan', 0, 0),
(134, 'moet', 0, 0),
(135, 'worden', 0, 0),
(136, 'rood', 0, 0),
(137, 'afzijn', 0, 0),
(138, 'voordat', 0, 0),
(139, 'systeem', 0, 2),
(140, 'live', 0, 1),
(141, 'kan', 0, 1),
(142, 'basic', 0, 0),
(143, 'functions', 0, 0),
(144, 'new', 0, 0),
(145, 'event', 0, 0),
(146, 'find', 0, 0),
(147, 'overview', 0, 0),
(148, 'events', 0, 0),
(149, 'activate', 0, 0),
(150, 'edit', 0, 0),
(151, 'managers', 0, 0),
(152, 'acces', 0, 0),
(153, 'groep', 0, 1),
(154, 'view', 0, 0),
(155, 'subcripson', 0, 0),
(156, 'yes', 0, 0),
(157, 'maybe', 0, 0),
(158, 'order', 0, 0),
(159, 'name', 0, 0),
(160, 'start', 0, 0),
(161, 'date', 0, 0),
(162, 'subscripons', 0, 0),
(163, 'active', 0, 0),
(164, 'comming', 0, 0),
(165, 'all', 0, 1),
(166, 'add', 0, 0),
(167, 'payments', 0, 0),
(168, 'who', 0, 0),
(169, 'not', 0, 0),
(170, 'paid', 0, 0),
(171, 'chance', 0, 0),
(172, 'payment', 0, 0),
(173, 'zien', 0, 0),
(174, 'zijn', 0, 0),
(175, 'mensen', 0, 0),
(176, 'mee', 0, 0),
(177, 'misschien', 0, 0),
(178, 'bug', 0, 1),
(179, 'tracker', 0, 0),
(180, 'activity', 0, 1),
(181, 'anonymous', 0, 0),
(182, 'probleem', 0, 0),
(183, 'opgelost', 0, 0),
(184, 'system', 0, 0),
(185, 'taken', 0, 1),
(186, 'gerco', 0, 1),
(187, 'functie', 0, 1),
(188, 'get', 0, 1),
(189, 'status', 0, 1),
(190, 'manage', 0, 1),
(191, 'list', 0, 1),
(192, 'username', 0, 1),
(193, 'aanpassen', 0, 1),
(194, 'echte', 0, 1),
(195, 'naam', 0, 1),
(196, 'daarbij', 0, 1),
(197, 'php', 0, 1),
(198, 'kijken', 0, 1),
(199, 'functies', 0, 1),
(200, 'goed', 0, 1),
(201, 'parsen', 0, 1),
(202, 'css', 0, 1),
(203, 'aanmaken', 0, 1),
(204, 'commen', 0, 1),
(205, 'documenteren', 0, 1),
(206, 'opzoeken', 0, 1),
(207, 'welk', 0, 1),
(208, 'gumbo', 0, 1),
(209, 'member', 0, 1),
(210, 'constante', 0, 1),
(211, 'group', 0, 1),
(212, 'class', 0, 1),
(213, 'doen', 0, 1),
(214, 'omdat', 0, 1),
(215, 'geen', 0, 1),
(216, 'mailserver', 0, 1),
(217, 'heb', 0, 1),
(218, 'phpbb', 0, 1),
(219, 'uit', 0, 1),
(220, 'debug', 0, 1),
(221, 'halen', 0, 1),
(222, 'comments', 0, 1),
(223, 'config', 0, 1),
(224, 'define', 0, 1),
(225, 'true', 0, 1),
(226, 'toepassen', 0, 1),
(227, 'mooi', 0, 0),
(228, 'testje', 0, 0),
(229, 'unread', 0, 0),
(230, 'toeh', 0, 0),
(231, 'catogrie', 0, 1),
(232, 'toekomst', 0, 1),
(233, 'muziek', 0, 1),
(234, 'acitiveiten', 0, 1),
(235, 'ongelezen', 0, 1),
(236, 'aanzetten', 0, 1),
(237, 'zitten', 0, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_search_wordmatch`
--

CREATE TABLE IF NOT EXISTS `dc_search_wordmatch` (
  `post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `word_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title_match` tinyint(1) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `unq_mtch` (`word_id`,`post_id`,`title_match`),
  KEY `word_id` (`word_id`),
  KEY `post_id` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Gegevens worden uitgevoerd voor tabel `dc_search_wordmatch`
--

INSERT INTO `dc_search_wordmatch` (`post_id`, `word_id`, `title_match`) VALUES
(1, 1, 0),
(2, 1, 0),
(4, 1, 0),
(1, 2, 0),
(2, 2, 0),
(3, 2, 0),
(4, 2, 0),
(8, 2, 0),
(1, 3, 0),
(1, 4, 0),
(1, 4, 1),
(1, 5, 0),
(1, 6, 0),
(1, 7, 0),
(1, 8, 0),
(1, 9, 0),
(1, 10, 0),
(1, 11, 0),
(1, 12, 0),
(1, 13, 0),
(1, 14, 0),
(1, 15, 0),
(1, 16, 0),
(1, 17, 0),
(1, 18, 0),
(4, 18, 1),
(1, 19, 0),
(1, 20, 0),
(4, 20, 0),
(1, 21, 0),
(1, 22, 0),
(1, 23, 0),
(1, 24, 0),
(1, 25, 0),
(1, 26, 0),
(4, 26, 0),
(1, 27, 0),
(1, 28, 0),
(1, 29, 0),
(1, 30, 0),
(1, 31, 0),
(1, 32, 0),
(1, 33, 0),
(1, 34, 0),
(1, 35, 0),
(1, 36, 0),
(1, 37, 0),
(4, 37, 0),
(8, 37, 0),
(1, 38, 0),
(1, 39, 0),
(1, 40, 0),
(1, 41, 0),
(1, 42, 0),
(1, 43, 0),
(1, 44, 0),
(1, 45, 0),
(1, 46, 0),
(1, 47, 0),
(1, 48, 0),
(1, 49, 0),
(1, 50, 0),
(1, 51, 0),
(4, 51, 0),
(1, 52, 0),
(1, 53, 0),
(4, 53, 0),
(1, 54, 0),
(1, 55, 0),
(1, 56, 0),
(1, 57, 0),
(1, 58, 0),
(1, 59, 0),
(1, 60, 1),
(1, 61, 1),
(2, 62, 0),
(2, 62, 1),
(3, 62, 1),
(5, 62, 1),
(2, 63, 0),
(3, 63, 0),
(2, 64, 1),
(3, 64, 1),
(5, 64, 0),
(5, 64, 1),
(2, 66, 0),
(2, 67, 0),
(2, 68, 0),
(2, 69, 0),
(2, 70, 0),
(2, 71, 0),
(2, 72, 0),
(2, 73, 0),
(5, 73, 0),
(2, 74, 0),
(3, 75, 0),
(4, 75, 0),
(3, 76, 0),
(8, 82, 0),
(8, 87, 0),
(4, 101, 0),
(4, 104, 0),
(8, 104, 0),
(4, 105, 0),
(8, 107, 0),
(8, 108, 1),
(8, 122, 0),
(4, 123, 0),
(4, 125, 0),
(4, 126, 0),
(4, 127, 0),
(4, 128, 0),
(4, 139, 1),
(8, 139, 1),
(4, 140, 1),
(4, 141, 0),
(4, 153, 0),
(4, 165, 0),
(8, 178, 0),
(4, 180, 0),
(4, 185, 0),
(4, 186, 0),
(4, 187, 0),
(4, 188, 0),
(4, 189, 0),
(4, 190, 0),
(4, 191, 0),
(4, 192, 0),
(4, 193, 0),
(4, 194, 0),
(4, 195, 0),
(4, 196, 0),
(4, 197, 0),
(4, 198, 0),
(4, 199, 0),
(4, 200, 0),
(4, 201, 0),
(4, 202, 0),
(4, 203, 0),
(4, 204, 0),
(4, 205, 0),
(4, 206, 0),
(4, 207, 0),
(4, 208, 0),
(4, 209, 0),
(4, 210, 0),
(4, 211, 0),
(4, 212, 0),
(4, 213, 0),
(4, 214, 0),
(4, 215, 0),
(4, 216, 0),
(4, 217, 0),
(4, 218, 0),
(4, 219, 0),
(4, 220, 0),
(4, 221, 0),
(4, 222, 0),
(4, 223, 0),
(4, 224, 0),
(4, 225, 0),
(4, 226, 1),
(8, 231, 0),
(8, 232, 1),
(8, 233, 1),
(8, 234, 0),
(8, 235, 0),
(8, 236, 0),
(8, 237, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_sessions`
--

CREATE TABLE IF NOT EXISTS `dc_sessions` (
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `session_forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `session_last_visit` int(11) unsigned NOT NULL DEFAULT '0',
  `session_start` int(11) unsigned NOT NULL DEFAULT '0',
  `session_time` int(11) unsigned NOT NULL DEFAULT '0',
  `session_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_browser` varchar(150) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_forwarded_for` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_page` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_viewonline` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `session_autologin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `session_admin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`session_id`),
  KEY `session_time` (`session_time`),
  KEY `session_user_id` (`session_user_id`),
  KEY `session_fid` (`session_forum_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Gegevens worden uitgevoerd voor tabel `dc_sessions`
--

INSERT INTO `dc_sessions` (`session_id`, `session_user_id`, `session_forum_id`, `session_last_visit`, `session_start`, `session_time`, `session_ip`, `session_browser`, `session_forwarded_for`, `session_page`, `session_viewonline`, `session_autologin`, `session_admin`) VALUES
('09dcc86c2fcadc1df3250c9550c0aa87', 2, 0, 1342002531, 1342012501, 1342013489, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:13.0) Gecko/20100101 Firefox/13.0.1', '', 'adm/index.php?i=222', 1, 0, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_sessions_keys`
--

CREATE TABLE IF NOT EXISTS `dc_sessions_keys` (
  `key_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `last_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `last_login` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`key_id`,`user_id`),
  KEY `last_login` (`last_login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Gegevens worden uitgevoerd voor tabel `dc_sessions_keys`
--

INSERT INTO `dc_sessions_keys` (`key_id`, `user_id`, `last_ip`, `last_login`) VALUES
('817eddd9fa20ad84892859ac723be513', 2, '::1', 1341249842),
('974bb174b167c80f9e5e7fe374310c0b', 2, '192.168.178.12', 1341429728);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_sitelist`
--

CREATE TABLE IF NOT EXISTS `dc_sitelist` (
  `site_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `site_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `site_hostname` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ip_exclude` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_smilies`
--

CREATE TABLE IF NOT EXISTS `dc_smilies` (
  `smiley_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `emotion` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `smiley_url` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `smiley_width` smallint(4) unsigned NOT NULL DEFAULT '0',
  `smiley_height` smallint(4) unsigned NOT NULL DEFAULT '0',
  `smiley_order` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `display_on_posting` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`smiley_id`),
  KEY `display_on_post` (`display_on_posting`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=43 ;

--
-- Gegevens worden uitgevoerd voor tabel `dc_smilies`
--

INSERT INTO `dc_smilies` (`smiley_id`, `code`, `emotion`, `smiley_url`, `smiley_width`, `smiley_height`, `smiley_order`, `display_on_posting`) VALUES
(1, ':D', 'Zeer gelukkig', 'icon_e_biggrin.gif', 15, 17, 1, 1),
(2, ':-D', 'Zeer gelukkig', 'icon_e_biggrin.gif', 15, 17, 2, 1),
(3, ':grin:', 'Zeer gelukkig', 'icon_e_biggrin.gif', 15, 17, 3, 1),
(4, ':)', 'Lach', 'icon_e_smile.gif', 15, 17, 4, 1),
(5, ':-)', 'Lach', 'icon_e_smile.gif', 15, 17, 5, 1),
(6, ':smile:', 'Lach', 'icon_e_smile.gif', 15, 17, 6, 1),
(7, ';)', 'Knipoog', 'icon_e_wink.gif', 15, 17, 7, 1),
(8, ';-)', 'Knipoog', 'icon_e_wink.gif', 15, 17, 8, 1),
(9, ':wink:', 'Knipoog', 'icon_e_wink.gif', 15, 17, 9, 1),
(10, ':(', 'Droevig', 'icon_e_sad.gif', 15, 17, 10, 1),
(11, ':-(', 'Droevig', 'icon_e_sad.gif', 15, 17, 11, 1),
(12, ':sad:', 'Droevig', 'icon_e_sad.gif', 15, 17, 12, 1),
(13, ':o', 'Verbaasd', 'icon_e_surprised.gif', 15, 17, 13, 1),
(14, ':-o', 'Verbaasd', 'icon_e_surprised.gif', 15, 17, 14, 1),
(15, ':eek:', 'Verbaasd', 'icon_e_surprised.gif', 15, 17, 15, 1),
(16, ':shock:', 'Gechoqueerd', 'icon_eek.gif', 15, 17, 16, 1),
(17, ':?', 'Verstrooid', 'icon_e_confused.gif', 15, 17, 17, 1),
(18, ':-?', 'Verstrooid', 'icon_e_confused.gif', 15, 17, 18, 1),
(19, ':???:', 'Verstrooid', 'icon_e_confused.gif', 15, 17, 19, 1),
(20, '8-)', 'Cool', 'icon_cool.gif', 15, 17, 20, 1),
(21, ':cool:', 'Cool', 'icon_cool.gif', 15, 17, 21, 1),
(22, ':lol:', 'Lachend', 'icon_lol.gif', 15, 17, 22, 1),
(23, ':x', 'Kwaad', 'icon_mad.gif', 15, 17, 23, 1),
(24, ':-x', 'Kwaad', 'icon_mad.gif', 15, 17, 24, 1),
(25, ':mad:', 'Kwaad', 'icon_mad.gif', 15, 17, 25, 1),
(26, ':P', 'Razz', 'icon_razz.gif', 15, 17, 26, 1),
(27, ':-P', 'Razz', 'icon_razz.gif', 15, 17, 27, 1),
(28, ':razz:', 'Razz', 'icon_razz.gif', 15, 17, 28, 1),
(29, ':oops:', 'Beschaamd', 'icon_redface.gif', 15, 17, 29, 1),
(30, ':cry:', 'Huilend of zeer droevig', 'icon_cry.gif', 15, 17, 30, 1),
(31, ':evil:', 'Slecht of heel kwaad', 'icon_evil.gif', 15, 17, 31, 1),
(32, ':twisted:', 'Geniepig slecht', 'icon_twisted.gif', 15, 17, 32, 1),
(33, ':roll:', 'Rollende ogen', 'icon_rolleyes.gif', 15, 17, 33, 1),
(34, ':!:', 'Uitroepingsteken', 'icon_exclaim.gif', 15, 17, 34, 1),
(35, ':?:', 'Vraag', 'icon_question.gif', 15, 17, 35, 1),
(36, ':idea:', 'Idee', 'icon_idea.gif', 15, 17, 36, 1),
(37, ':arrow:', 'Pijl', 'icon_arrow.gif', 15, 17, 37, 1),
(38, ':|', 'Neutraal', 'icon_neutral.gif', 15, 17, 38, 1),
(39, ':-|', 'Neutraal', 'icon_neutral.gif', 15, 17, 39, 1),
(40, ':mrgreen:', 'Mr. Green', 'icon_mrgreen.gif', 15, 17, 40, 1),
(41, ':geek:', 'Sul', 'icon_e_geek.gif', 17, 17, 41, 1),
(42, ':ugeek:', 'Über nerd', 'icon_e_ugeek.gif', 17, 18, 42, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_styles`
--

CREATE TABLE IF NOT EXISTS `dc_styles` (
  `style_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `style_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `style_copyright` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `style_active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `template_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `theme_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `imageset_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`style_id`),
  UNIQUE KEY `style_name` (`style_name`),
  KEY `template_id` (`template_id`),
  KEY `theme_id` (`theme_id`),
  KEY `imageset_id` (`imageset_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Gegevens worden uitgevoerd voor tabel `dc_styles`
--

INSERT INTO `dc_styles` (`style_id`, `style_name`, `style_copyright`, `style_active`, `template_id`, `theme_id`, `imageset_id`) VALUES
(1, 'prosilver', '© phpBB Group', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_styles_imageset`
--

CREATE TABLE IF NOT EXISTS `dc_styles_imageset` (
  `imageset_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `imageset_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `imageset_copyright` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `imageset_path` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`imageset_id`),
  UNIQUE KEY `imgset_nm` (`imageset_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Gegevens worden uitgevoerd voor tabel `dc_styles_imageset`
--

INSERT INTO `dc_styles_imageset` (`imageset_id`, `imageset_name`, `imageset_copyright`, `imageset_path`) VALUES
(1, 'prosilver', '&copy; phpBB Group', 'prosilver');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_styles_imageset_data`
--

CREATE TABLE IF NOT EXISTS `dc_styles_imageset_data` (
  `image_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `image_name` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT '',
  `image_filename` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT '',
  `image_lang` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `image_height` smallint(4) unsigned NOT NULL DEFAULT '0',
  `image_width` smallint(4) unsigned NOT NULL DEFAULT '0',
  `imageset_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`image_id`),
  KEY `i_d` (`imageset_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=89 ;

--
-- Gegevens worden uitgevoerd voor tabel `dc_styles_imageset_data`
--

INSERT INTO `dc_styles_imageset_data` (`image_id`, `image_name`, `image_filename`, `image_lang`, `image_height`, `image_width`, `imageset_id`) VALUES
(1, 'site_logo', 'site_logo.gif', '', 52, 139, 1),
(2, 'forum_link', 'forum_link.gif', '', 27, 27, 1),
(3, 'forum_read', 'forum_read.gif', '', 27, 27, 1),
(4, 'forum_read_locked', 'forum_read_locked.gif', '', 27, 27, 1),
(5, 'forum_read_subforum', 'forum_read_subforum.gif', '', 27, 27, 1),
(6, 'forum_unread', 'forum_unread.gif', '', 27, 27, 1),
(7, 'forum_unread_locked', 'forum_unread_locked.gif', '', 27, 27, 1),
(8, 'forum_unread_subforum', 'forum_unread_subforum.gif', '', 27, 27, 1),
(9, 'topic_moved', 'topic_moved.gif', '', 27, 27, 1),
(10, 'topic_read', 'topic_read.gif', '', 27, 27, 1),
(11, 'topic_read_mine', 'topic_read_mine.gif', '', 27, 27, 1),
(12, 'topic_read_hot', 'topic_read_hot.gif', '', 27, 27, 1),
(13, 'topic_read_hot_mine', 'topic_read_hot_mine.gif', '', 27, 27, 1),
(14, 'topic_read_locked', 'topic_read_locked.gif', '', 27, 27, 1),
(15, 'topic_read_locked_mine', 'topic_read_locked_mine.gif', '', 27, 27, 1),
(16, 'topic_unread', 'topic_unread.gif', '', 27, 27, 1),
(17, 'topic_unread_mine', 'topic_unread_mine.gif', '', 27, 27, 1),
(18, 'topic_unread_hot', 'topic_unread_hot.gif', '', 27, 27, 1),
(19, 'topic_unread_hot_mine', 'topic_unread_hot_mine.gif', '', 27, 27, 1),
(20, 'topic_unread_locked', 'topic_unread_locked.gif', '', 27, 27, 1),
(21, 'topic_unread_locked_mine', 'topic_unread_locked_mine.gif', '', 27, 27, 1),
(22, 'sticky_read', 'sticky_read.gif', '', 27, 27, 1),
(23, 'sticky_read_mine', 'sticky_read_mine.gif', '', 27, 27, 1),
(24, 'sticky_read_locked', 'sticky_read_locked.gif', '', 27, 27, 1),
(25, 'sticky_read_locked_mine', 'sticky_read_locked_mine.gif', '', 27, 27, 1),
(26, 'sticky_unread', 'sticky_unread.gif', '', 27, 27, 1),
(27, 'sticky_unread_mine', 'sticky_unread_mine.gif', '', 27, 27, 1),
(28, 'sticky_unread_locked', 'sticky_unread_locked.gif', '', 27, 27, 1),
(29, 'sticky_unread_locked_mine', 'sticky_unread_locked_mine.gif', '', 27, 27, 1),
(30, 'announce_read', 'announce_read.gif', '', 27, 27, 1),
(31, 'announce_read_mine', 'announce_read_mine.gif', '', 27, 27, 1),
(32, 'announce_read_locked', 'announce_read_locked.gif', '', 27, 27, 1),
(33, 'announce_read_locked_mine', 'announce_read_locked_mine.gif', '', 27, 27, 1),
(34, 'announce_unread', 'announce_unread.gif', '', 27, 27, 1),
(35, 'announce_unread_mine', 'announce_unread_mine.gif', '', 27, 27, 1),
(36, 'announce_unread_locked', 'announce_unread_locked.gif', '', 27, 27, 1),
(37, 'announce_unread_locked_mine', 'announce_unread_locked_mine.gif', '', 27, 27, 1),
(38, 'global_read', 'announce_read.gif', '', 27, 27, 1),
(39, 'global_read_mine', 'announce_read_mine.gif', '', 27, 27, 1),
(40, 'global_read_locked', 'announce_read_locked.gif', '', 27, 27, 1),
(41, 'global_read_locked_mine', 'announce_read_locked_mine.gif', '', 27, 27, 1),
(42, 'global_unread', 'announce_unread.gif', '', 27, 27, 1),
(43, 'global_unread_mine', 'announce_unread_mine.gif', '', 27, 27, 1),
(44, 'global_unread_locked', 'announce_unread_locked.gif', '', 27, 27, 1),
(45, 'global_unread_locked_mine', 'announce_unread_locked_mine.gif', '', 27, 27, 1),
(46, 'pm_read', 'topic_read.gif', '', 27, 27, 1),
(47, 'pm_unread', 'topic_unread.gif', '', 27, 27, 1),
(48, 'icon_back_top', 'icon_back_top.gif', '', 11, 11, 1),
(49, 'icon_contact_aim', 'icon_contact_aim.gif', '', 20, 20, 1),
(50, 'icon_contact_email', 'icon_contact_email.gif', '', 20, 20, 1),
(51, 'icon_contact_icq', 'icon_contact_icq.gif', '', 20, 20, 1),
(52, 'icon_contact_jabber', 'icon_contact_jabber.gif', '', 20, 20, 1),
(53, 'icon_contact_msnm', 'icon_contact_msnm.gif', '', 20, 20, 1),
(54, 'icon_contact_www', 'icon_contact_www.gif', '', 20, 20, 1),
(55, 'icon_contact_yahoo', 'icon_contact_yahoo.gif', '', 20, 20, 1),
(56, 'icon_post_delete', 'icon_post_delete.gif', '', 20, 20, 1),
(57, 'icon_post_info', 'icon_post_info.gif', '', 20, 20, 1),
(58, 'icon_post_report', 'icon_post_report.gif', '', 20, 20, 1),
(59, 'icon_post_target', 'icon_post_target.gif', '', 9, 11, 1),
(60, 'icon_post_target_unread', 'icon_post_target_unread.gif', '', 9, 11, 1),
(61, 'icon_topic_attach', 'icon_topic_attach.gif', '', 10, 7, 1),
(62, 'icon_topic_latest', 'icon_topic_latest.gif', '', 9, 11, 1),
(63, 'icon_topic_newest', 'icon_topic_newest.gif', '', 9, 11, 1),
(64, 'icon_topic_reported', 'icon_topic_reported.gif', '', 14, 16, 1),
(65, 'icon_topic_unapproved', 'icon_topic_unapproved.gif', '', 14, 16, 1),
(66, 'icon_user_warn', 'icon_user_warn.gif', '', 20, 20, 1),
(67, 'subforum_read', 'subforum_read.gif', '', 9, 11, 1),
(68, 'subforum_unread', 'subforum_unread.gif', '', 9, 11, 1),
(69, 'icon_contact_pm', 'icon_contact_pm.gif', 'en', 20, 28, 1),
(70, 'icon_post_edit', 'icon_post_edit.gif', 'en', 20, 42, 1),
(71, 'icon_post_quote', 'icon_post_quote.gif', 'en', 20, 54, 1),
(72, 'icon_user_online', 'icon_user_online.gif', 'en', 58, 58, 1),
(73, 'button_pm_forward', 'button_pm_forward.gif', 'en', 25, 96, 1),
(74, 'button_pm_new', 'button_pm_new.gif', 'en', 25, 84, 1),
(75, 'button_pm_reply', 'button_pm_reply.gif', 'en', 25, 96, 1),
(76, 'button_topic_locked', 'button_topic_locked.gif', 'en', 25, 88, 1),
(77, 'button_topic_new', 'button_topic_new.gif', 'en', 25, 96, 1),
(78, 'button_topic_reply', 'button_topic_reply.gif', 'en', 25, 96, 1),
(79, 'icon_contact_pm', 'icon_contact_pm.gif', 'nl', 20, 28, 1),
(80, 'icon_post_edit', 'icon_post_edit.gif', 'nl', 20, 58, 1),
(81, 'icon_post_quote', 'icon_post_quote.gif', 'nl', 20, 54, 1),
(82, 'icon_user_online', 'icon_user_online.gif', 'nl', 58, 58, 1),
(83, 'button_pm_forward', 'button_pm_forward.gif', 'nl', 25, 120, 1),
(84, 'button_pm_new', 'button_pm_new.gif', 'nl', 25, 91, 1),
(85, 'button_pm_reply', 'button_pm_reply.gif', 'nl', 25, 119, 1),
(86, 'button_topic_locked', 'button_topic_locked.gif', 'nl', 25, 103, 1),
(87, 'button_topic_new', 'button_topic_new.gif', 'nl', 25, 152, 1),
(88, 'button_topic_reply', 'button_topic_reply.gif', 'nl', 25, 123, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_styles_template`
--

CREATE TABLE IF NOT EXISTS `dc_styles_template` (
  `template_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `template_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `template_copyright` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `template_path` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT 'kNg=',
  `template_storedb` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `template_inherits_id` int(4) unsigned NOT NULL DEFAULT '0',
  `template_inherit_path` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`template_id`),
  UNIQUE KEY `tmplte_nm` (`template_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Gegevens worden uitgevoerd voor tabel `dc_styles_template`
--

INSERT INTO `dc_styles_template` (`template_id`, `template_name`, `template_copyright`, `template_path`, `bbcode_bitfield`, `template_storedb`, `template_inherits_id`, `template_inherit_path`) VALUES
(1, 'prosilver', '&copy; phpBB Group', 'prosilver', 'lNg=', 0, 0, '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_styles_template_data`
--

CREATE TABLE IF NOT EXISTS `dc_styles_template_data` (
  `template_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `template_filename` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `template_included` text COLLATE utf8_bin NOT NULL,
  `template_mtime` int(11) unsigned NOT NULL DEFAULT '0',
  `template_data` mediumtext COLLATE utf8_bin NOT NULL,
  KEY `tid` (`template_id`),
  KEY `tfn` (`template_filename`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_styles_theme`
--

CREATE TABLE IF NOT EXISTS `dc_styles_theme` (
  `theme_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `theme_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `theme_copyright` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `theme_path` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `theme_storedb` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `theme_mtime` int(11) unsigned NOT NULL DEFAULT '0',
  `theme_data` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`theme_id`),
  UNIQUE KEY `theme_name` (`theme_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Gegevens worden uitgevoerd voor tabel `dc_styles_theme`
--

INSERT INTO `dc_styles_theme` (`theme_id`, `theme_name`, `theme_copyright`, `theme_path`, `theme_storedb`, `theme_mtime`, `theme_data`) VALUES
(1, 'prosilver', '&copy; phpBB Group', 'prosilver', 1, 1333302358, 0x2f2a2020706870424233205374796c652053686565740a202020202d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d0a095374796c65206e616d653a09090970726f73696c76657220287468652064656661756c7420706870424220332e302e78207374796c65290a094261736564206f6e207374796c653a09090a094f726967696e616c20617574686f723a09546f6d2042656464617264202820687474703a2f2f7777772e737562626c75652e636f6d2f20290a094d6f6469666965642062793a090970687042422047726f7570202820687474703a2f2f7777772e70687062622e636f6d2f20290a202020202d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d0a2a2f0a0a2f2a2047656e6572616c204d61726b7570205374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a2a207b0a092f2a2052657365742062726f77736572732064656661756c74206d617267696e2c2070616464696e6720616e6420666f6e742073697a6573202a2f0a096d617267696e3a20303b0a0970616464696e673a20303b0a7d0a0a68746d6c207b0a09666f6e742d73697a653a20313030253b0a092f2a20416c776179732073686f772061207363726f6c6c62617220666f722073686f7274207061676573202d2073746f707320746865206a756d70207768656e20746865207363726f6c6c62617220617070656172732e206e6f6e2d49452062726f7773657273202a2f0a096865696768743a20313031253b0a7d0a0a626f6479207b0a092f2a20546578742d53697a696e67207769746820656d733a20687474703a2f2f7777772e636c61676e75742e636f6d2f626c6f672f3334382f202a2f0a09666f6e742d66616d696c793a2056657264616e612c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0a09636f6c6f723a20233832383238323b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a092f2a666f6e742d73697a653a2036322e35253b09090920546869732073657473207468652064656661756c7420666f6e742073697a6520746f206265206571756976616c656e7420746f2031307078202a2f0a09666f6e742d73697a653a20313070783b0a096d617267696e3a20303b0a0970616464696e673a203132707820303b0a7d0a0a6831207b0a092f2a20466f72756d206e616d65202a2f0a09666f6e742d66616d696c793a2022547265627563686574204d53222c20417269616c2c2048656c7665746963612c2073616e732d73657269663b0a096d617267696e2d72696768743a2032303070783b0a09636f6c6f723a20234646464646463b0a096d617267696e2d746f703a20313570783b0a09666f6e742d7765696768743a20626f6c643b0a09666f6e742d73697a653a2032656d3b0a7d0a0a6832207b0a092f2a20466f72756d20686561646572207469746c6573202a2f0a09666f6e742d66616d696c793a2022547265627563686574204d53222c20417269616c2c2048656c7665746963612c2073616e732d73657269663b0a09666f6e742d7765696768743a206e6f726d616c3b0a09636f6c6f723a20233366336633663b0a09666f6e742d73697a653a2032656d3b0a096d617267696e3a20302e38656d203020302e32656d20303b0a7d0a0a68322e736f6c6f207b0a096d617267696e2d626f74746f6d3a2031656d3b0a7d0a0a6833207b0a092f2a205375622d686561646572732028616c736f207573656420617320706f737420686561646572732c2062757420646566696e6564206c6174657229202a2f0a09666f6e742d66616d696c793a20417269616c2c2048656c7665746963612c2073616e732d73657269663b0a09666f6e742d7765696768743a20626f6c643b0a09746578742d7472616e73666f726d3a207570706572636173653b0a09626f726465722d626f74746f6d3a2031707820736f6c696420234343434343433b0a096d617267696e2d626f74746f6d3a203370783b0a0970616464696e672d626f74746f6d3a203270783b0a09666f6e742d73697a653a20312e3035656d3b0a09636f6c6f723a20233938393839383b0a096d617267696e2d746f703a20323070783b0a7d0a0a6834207b0a092f2a20466f72756d20616e6420746f706963206c697374207469746c6573202a2f0a09666f6e742d66616d696c793a2022547265627563686574204d53222c2056657264616e612c2048656c7665746963612c20417269616c2c2053616e732d73657269663b0a09666f6e742d73697a653a20312e33656d3b0a7d0a0a70207b0a096c696e652d6865696768743a20312e33656d3b0a09666f6e742d73697a653a20312e31656d3b0a096d617267696e2d626f74746f6d3a20312e35656d3b0a7d0a0a696d67207b0a09626f726465722d77696474683a20303b0a7d0a0a6872207b0a092f2a20416c736f2073656520747765616b732e637373202a2f0a09626f726465723a2030206e6f6e6520234646464646463b0a09626f726465722d746f703a2031707820736f6c696420234343434343433b0a096865696768743a203170783b0a096d617267696e3a2035707820303b0a09646973706c61793a20626c6f636b3b0a09636c6561723a20626f74683b0a7d0a0a68722e646173686564207b0a09626f726465722d746f703a203170782064617368656420234343434343433b0a096d617267696e3a203130707820303b0a7d0a0a68722e64697669646572207b0a09646973706c61793a206e6f6e653b0a7d0a0a702e7269676874207b0a09746578742d616c69676e3a2072696768743b0a7d0a0a2f2a204d61696e20626c6f636b730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a2377726170207b0a0970616464696e673a203020323070783b0a096d696e2d77696474683a2036353070783b0a7d0a0a2373696d706c652d77726170207b0a0970616464696e673a2036707820313070783b0a7d0a0a23706167652d626f6479207b0a096d617267696e3a2034707820303b0a09636c6561723a20626f74683b0a7d0a0a23706167652d666f6f746572207b0a09636c6561723a20626f74683b0a7d0a0a23706167652d666f6f746572206833207b0a096d617267696e2d746f703a20323070783b0a7d0a0a236c6f676f207b0a09666c6f61743a206c6566743b0a0977696474683a206175746f3b0a0970616464696e673a20313070782031337078203020313070783b0a7d0a0a61236c6f676f3a686f766572207b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a7d0a0a2f2a2053656172636820626f780a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a237365617263682d626f78207b0a09636f6c6f723a20234646464646463b0a09706f736974696f6e3a2072656c61746976653b0a096d617267696e2d746f703a20333070783b0a096d617267696e2d72696768743a203570783b0a09646973706c61793a20626c6f636b3b0a09666c6f61743a2072696768743b0a09746578742d616c69676e3a2072696768743b0a0977686974652d73706163653a206e6f777261703b202f2a20466f72204f70657261202a2f0a7d0a0a237365617263682d626f7820236b6579776f726473207b0a0977696474683a20393570783b0a096261636b67726f756e642d636f6c6f723a20234646463b0a7d0a0a237365617263682d626f7820696e707574207b0a09626f726465723a2031707820736f6c696420236230623062303b0a7d0a0a2f2a202e627574746f6e31207374796c6520646566696e6564206c617465722c206a75737420612066657720747765616b7320666f72207468652073656172636820627574746f6e2076657273696f6e202a2f0a237365617263682d626f7820696e7075742e627574746f6e31207b0a0970616464696e673a20317078203570783b0a7d0a0a237365617263682d626f78206c69207b0a09746578742d616c69676e3a2072696768743b0a096d617267696e2d746f703a203470783b0a7d0a0a237365617263682d626f7820696d67207b0a09766572746963616c2d616c69676e3a206d6964646c653b0a096d617267696e2d72696768743a203370783b0a7d0a0a2f2a2053697465206465736372697074696f6e20616e64206c6f676f202a2f0a23736974652d6465736372697074696f6e207b0a09666c6f61743a206c6566743b0a0977696474683a203730253b0a7d0a0a23736974652d6465736372697074696f6e206831207b0a096d617267696e2d72696768743a20303b0a7d0a0a2f2a20526f756e6420636f726e6572656420626f78657320616e64206261636b67726f756e64730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a2e686561646572626172207b0a096261636b67726f756e643a2023656265626562206e6f6e65207265706561742d78203020303b0a09636f6c6f723a20234646464646463b0a096d617267696e2d626f74746f6d3a203470783b0a0970616464696e673a2030203570783b0a7d0a0a2e6e6176626172207b0a096261636b67726f756e642d636f6c6f723a20236562656265623b0a0970616464696e673a203020313070783b0a7d0a0a2e666f72616267207b0a096261636b67726f756e643a2023623162316231206e6f6e65207265706561742d78203020303b0a096d617267696e2d626f74746f6d3a203470783b0a0970616464696e673a2030203570783b0a09636c6561723a20626f74683b0a7d0a0a2e666f72756d6267207b0a096261636b67726f756e643a2023656265626562206e6f6e65207265706561742d78203020303b0a096d617267696e2d626f74746f6d3a203470783b0a0970616464696e673a2030203570783b0a09636c6561723a20626f74683b0a7d0a0a2e70616e656c207b0a096d617267696e2d626f74746f6d3a203470783b0a0970616464696e673a203020313070783b0a096261636b67726f756e642d636f6c6f723a20236633663366333b0a09636f6c6f723a20233366336633663b0a7d0a0a2e706f7374207b0a0970616464696e673a203020313070783b0a096d617267696e2d626f74746f6d3a203470783b0a096261636b67726f756e642d7265706561743a206e6f2d7265706561743b0a096261636b67726f756e642d706f736974696f6e3a203130302520303b0a7d0a0a2e706f73743a746172676574202e636f6e74656e74207b0a09636f6c6f723a20233030303030303b0a7d0a0a2e706f73743a7461726765742068332061207b0a09636f6c6f723a20233030303030303b0a7d0a0a2e626731097b206261636b67726f756e642d636f6c6f723a20236637663766373b7d0a2e626732097b206261636b67726f756e642d636f6c6f723a20236632663266323b207d0a2e626733097b206261636b67726f756e642d636f6c6f723a20236562656265623b207d0a0a2e726f776267207b0a096d617267696e3a203570782035707820327078203570783b0a7d0a0a2e756370726f776267207b0a096261636b67726f756e642d636f6c6f723a20236532653265323b0a7d0a0a2e6669656c64736267207b0a092f2a626f726465723a20317078202344424445453220736f6c69643b2a2f0a096261636b67726f756e642d636f6c6f723a20236561656165613b0a7d0a0a7370616e2e636f726e6572732d746f702c207370616e2e636f726e6572732d626f74746f6d2c207370616e2e636f726e6572732d746f70207370616e2c207370616e2e636f726e6572732d626f74746f6d207370616e207b0a09666f6e742d73697a653a203170783b0a096c696e652d6865696768743a203170783b0a09646973706c61793a20626c6f636b3b0a096865696768743a203570783b0a096261636b67726f756e642d7265706561743a206e6f2d7265706561743b0a7d0a0a7370616e2e636f726e6572732d746f70207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a096261636b67726f756e642d706f736974696f6e3a203020303b0a096d617267696e3a2030202d3570783b0a7d0a0a7370616e2e636f726e6572732d746f70207370616e207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a096261636b67726f756e642d706f736974696f6e3a203130302520303b0a7d0a0a7370616e2e636f726e6572732d626f74746f6d207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a096261636b67726f756e642d706f736974696f6e3a203020313030253b0a096d617267696e3a2030202d3570783b0a09636c6561723a20626f74683b0a7d0a0a7370616e2e636f726e6572732d626f74746f6d207370616e207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a096261636b67726f756e642d706f736974696f6e3a203130302520313030253b0a7d0a0a2e686561646267207370616e2e636f726e6572732d626f74746f6d207b0a096d617267696e2d626f74746f6d3a202d3170783b0a7d0a0a2e706f7374207370616e2e636f726e6572732d746f702c202e706f7374207370616e2e636f726e6572732d626f74746f6d2c202e70616e656c207370616e2e636f726e6572732d746f702c202e70616e656c207370616e2e636f726e6572732d626f74746f6d2c202e6e6176626172207370616e2e636f726e6572732d746f702c202e6e6176626172207370616e2e636f726e6572732d626f74746f6d207b0a096d617267696e3a2030202d313070783b0a7d0a0a2e72756c6573207370616e2e636f726e6572732d746f70207b0a096d617267696e3a2030202d3130707820357078202d313070783b0a7d0a0a2e72756c6573207370616e2e636f726e6572732d626f74746f6d207b0a096d617267696e3a20357078202d313070782030202d313070783b0a7d0a0a2f2a20486f72697a6f6e74616c206c697374730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a756c2e6c696e6b6c697374207b0a09646973706c61793a20626c6f636b3b0a096d617267696e3a20303b0a7d0a0a756c2e6c696e6b6c697374206c69207b0a09646973706c61793a20626c6f636b3b0a096c6973742d7374796c652d747970653a206e6f6e653b0a09666c6f61743a206c6566743b0a0977696474683a206175746f3b0a096d617267696e2d72696768743a203570783b0a09666f6e742d73697a653a20312e31656d3b0a096c696e652d6865696768743a20322e32656d3b0a7d0a0a756c2e6c696e6b6c697374206c692e7269676874736964652c20702e726967687473696465207b0a09666c6f61743a2072696768743b0a096d617267696e2d72696768743a20303b0a096d617267696e2d6c6566743a203570783b0a09746578742d616c69676e3a2072696768743b0a7d0a0a756c2e6e61766c696e6b73207b0a0970616464696e672d626f74746f6d3a203170783b0a096d617267696e2d626f74746f6d3a203170783b0a09626f726465722d626f74746f6d3a2031707820736f6c696420234646464646463b0a09666f6e742d7765696768743a20626f6c643b0a7d0a0a756c2e6c65667473696465207b0a09666c6f61743a206c6566743b0a096d617267696e2d6c6566743a20303b0a096d617267696e2d72696768743a203570783b0a09746578742d616c69676e3a206c6566743b0a7d0a0a756c2e726967687473696465207b0a09666c6f61743a2072696768743b0a096d617267696e2d6c6566743a203570783b0a096d617267696e2d72696768743a202d3570783b0a09746578742d616c69676e3a2072696768743b0a7d0a0a2f2a205461626c65207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a7461626c652e7461626c6531207b0a092f2a2053656520747765616b732e637373202a2f0a7d0a0a237563702d6d61696e207461626c652e7461626c6531207b0a0970616464696e673a203270783b0a7d0a0a7461626c652e7461626c6531207468656164207468207b0a09666f6e742d7765696768743a206e6f726d616c3b0a09746578742d7472616e73666f726d3a207570706572636173653b0a09636f6c6f723a20234646464646463b0a096c696e652d6865696768743a20312e33656d3b0a09666f6e742d73697a653a2031656d3b0a0970616464696e673a2030203020347078203370783b0a7d0a0a7461626c652e7461626c6531207468656164207468207370616e207b0a0970616464696e672d6c6566743a203770783b0a7d0a0a7461626c652e7461626c65312074626f6479207472207b0a09626f726465723a2031707820736f6c696420236366636663663b0a7d0a0a7461626c652e7461626c65312074626f64792074723a686f7665722c207461626c652e7461626c65312074626f64792074722e686f766572207b0a096261636b67726f756e642d636f6c6f723a20236636663666363b0a09636f6c6f723a20233030303b0a7d0a0a7461626c652e7461626c6531207464207b0a09636f6c6f723a20233661366136613b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a7461626c652e7461626c65312074626f6479207464207b0a0970616464696e673a203570783b0a09626f726465722d746f703a2031707820736f6c696420234641464146413b0a7d0a0a7461626c652e7461626c65312074626f6479207468207b0a0970616464696e673a203570783b0a09626f726465722d626f74746f6d3a2031707820736f6c696420233030303030303b0a09746578742d616c69676e3a206c6566743b0a09636f6c6f723a20233333333333333b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a7d0a0a2f2a20537065636966696320636f6c756d6e207374796c6573202a2f0a7461626c652e7461626c6531202e6e616d6509097b20746578742d616c69676e3a206c6566743b207d0a7461626c652e7461626c6531202e706f73747309097b20746578742d616c69676e3a2063656e7465722021696d706f7274616e743b2077696474683a2037253b207d0a7461626c652e7461626c6531202e6a6f696e6564097b20746578742d616c69676e3a206c6566743b2077696474683a203135253b207d0a7461626c652e7461626c6531202e616374697665097b20746578742d616c69676e3a206c6566743b2077696474683a203135253b207d0a7461626c652e7461626c6531202e6d61726b09097b20746578742d616c69676e3a2063656e7465723b2077696474683a2037253b207d0a7461626c652e7461626c6531202e696e666f09097b20746578742d616c69676e3a206c6566743b2077696474683a203330253b207d0a7461626c652e7461626c6531202e696e666f20646976097b2077696474683a20313030253b2077686974652d73706163653a206e6f726d616c3b206f766572666c6f773a2068696464656e3b207d0a7461626c652e7461626c6531202e6175746f636f6c097b206c696e652d6865696768743a2032656d3b2077686974652d73706163653a206e6f777261703b207d0a7461626c652e7461626c6531207468656164202e6175746f636f6c207b2070616464696e672d6c6566743a2031656d3b207d0a0a7461626c652e7461626c6531207370616e2e72616e6b2d696d67207b0a09666c6f61743a2072696768743b0a0977696474683a206175746f3b0a7d0a0a7461626c652e696e666f207464207b0a0970616464696e673a203370783b0a7d0a0a7461626c652e696e666f2074626f6479207468207b0a0970616464696e673a203370783b0a09746578742d616c69676e3a2072696768743b0a09766572746963616c2d616c69676e3a20746f703b0a09636f6c6f723a20233030303030303b0a09666f6e742d7765696768743a206e6f726d616c3b0a7d0a0a2e666f72756d6267207461626c652e7461626c6531207b0a096d617267696e3a2030202d327078202d317078202d3170783b0a7d0a0a2f2a204d697363206c61796f7574207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a2f2a20636f6c756d6e5b312d325d207374796c65732061726520636f6e7461696e65727320666f722074776f20636f6c756d6e206c61796f757473200a202020416c736f2073656520747765616b732e637373202a2f0a2e636f6c756d6e31207b0a09666c6f61743a206c6566743b0a09636c6561723a206c6566743b0a0977696474683a203439253b0a7d0a0a2e636f6c756d6e32207b0a09666c6f61743a2072696768743b0a09636c6561723a2072696768743b0a0977696474683a203439253b0a7d0a0a2f2a2047656e6572616c20636c617373657320666f7220706c6163696e6720666c6f6174696e6720626c6f636b73202a2f0a2e6c6566742d626f78207b0a09666c6f61743a206c6566743b0a0977696474683a206175746f3b0a09746578742d616c69676e3a206c6566743b0a7d0a0a2e72696768742d626f78207b0a09666c6f61743a2072696768743b0a0977696474683a206175746f3b0a09746578742d616c69676e3a2072696768743b0a7d0a0a646c2e64657461696c73207b0a092f2a666f6e742d66616d696c793a20224c7563696461204772616e6465222c2056657264616e612c2048656c7665746963612c20417269616c2c2073616e732d73657269663b2a2f0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a646c2e64657461696c73206474207b0a09666c6f61743a206c6566743b0a09636c6561723a206c6566743b0a0977696474683a203330253b0a09746578742d616c69676e3a2072696768743b0a09636f6c6f723a20233030303030303b0a09646973706c61793a20626c6f636b3b0a7d0a0a646c2e64657461696c73206464207b0a096d617267696e2d6c6566743a20303b0a0970616464696e672d6c6566743a203570783b0a096d617267696e2d626f74746f6d3a203570783b0a09636f6c6f723a20233832383238323b0a09666c6f61743a206c6566743b0a0977696474683a203635253b0a7d0a0a2f2a20506167696e6174696f6e0a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a2e706167696e6174696f6e207b0a096865696768743a2031253b202f2a20494520747765616b2028686f6c6c79206861636b29202a2f0a0977696474683a206175746f3b0a09746578742d616c69676e3a2072696768743b0a096d617267696e2d746f703a203570783b0a09666c6f61743a2072696768743b0a7d0a0a2e706167696e6174696f6e207370616e2e706167652d736570207b0a09646973706c61793a206e6f6e653b0a7d0a0a6c692e706167696e6174696f6e207b0a096d617267696e2d746f703a20303b0a7d0a0a2e706167696e6174696f6e207374726f6e672c202e706167696e6174696f6e2062207b0a09666f6e742d7765696768743a206e6f726d616c3b0a7d0a0a2e706167696e6174696f6e207370616e207374726f6e67207b0a0970616464696e673a2030203270783b0a096d617267696e3a2030203270783b0a09666f6e742d7765696768743a206e6f726d616c3b0a09636f6c6f723a20234646464646463b0a096261636b67726f756e642d636f6c6f723a20236266626662663b0a09626f726465723a2031707820736f6c696420236266626662663b0a09666f6e742d73697a653a20302e39656d3b0a7d0a0a2e706167696e6174696f6e207370616e20612c202e706167696e6174696f6e207370616e20613a6c696e6b2c202e706167696e6174696f6e207370616e20613a766973697465642c202e706167696e6174696f6e207370616e20613a616374697665207b0a09666f6e742d7765696768743a206e6f726d616c3b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a09636f6c6f723a20233734373437343b0a096d617267696e3a2030203270783b0a0970616464696e673a2030203270783b0a096261636b67726f756e642d636f6c6f723a20236565656565653b0a09626f726465723a2031707820736f6c696420236261626162613b0a09666f6e742d73697a653a20302e39656d3b0a096c696e652d6865696768743a20312e35656d3b0a7d0a0a2e706167696e6174696f6e207370616e20613a686f766572207b0a09626f726465722d636f6c6f723a20236432643264323b0a096261636b67726f756e642d636f6c6f723a20236432643264323b0a09636f6c6f723a20234646463b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a7d0a0a2e706167696e6174696f6e20696d67207b0a09766572746963616c2d616c69676e3a206d6964646c653b0a7d0a0a2f2a20506167696e6174696f6e20696e2076696577666f72756d20666f72206d756c74697061676520746f70696373202a2f0a2e726f77202e706167696e6174696f6e207b0a09646973706c61793a20626c6f636b3b0a09666c6f61743a2072696768743b0a0977696474683a206175746f3b0a096d617267696e2d746f703a20303b0a0970616464696e673a2031707820302031707820313570783b0a09666f6e742d73697a653a20302e39656d3b0a096261636b67726f756e643a206e6f6e65203020353025206e6f2d7265706561743b0a7d0a0a2e726f77202e706167696e6174696f6e207370616e20612c206c692e706167696e6174696f6e207370616e2061207b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a7d0a0a2e726f77202e706167696e6174696f6e207370616e20613a686f7665722c206c692e706167696e6174696f6e207370616e20613a686f766572207b0a096261636b67726f756e642d636f6c6f723a20236432643264323b0a7d0a0a2f2a204d697363656c6c616e656f7573207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a23666f72756d2d7065726d697373696f6e73207b0a09666c6f61743a2072696768743b0a0977696474683a206175746f3b0a0970616464696e672d6c6566743a203570783b0a096d617267696e2d6c6566743a203570783b0a096d617267696e2d746f703a20313070783b0a09746578742d616c69676e3a2072696768743b0a7d0a0a2e636f70797269676874207b0a0970616464696e673a203570783b0a09746578742d616c69676e3a2063656e7465723b0a09636f6c6f723a20233535353535353b0a7d0a0a2e736d616c6c207b0a09666f6e742d73697a653a20302e39656d2021696d706f7274616e743b0a7d0a0a2e7469746c657370616365207b0a096d617267696e2d626f74746f6d3a20313570783b0a7d0a0a2e6865616465727370616365207b0a096d617267696e2d746f703a20323070783b0a7d0a0a2e6572726f72207b0a09636f6c6f723a20236263626362633b0a09666f6e742d7765696768743a20626f6c643b0a09666f6e742d73697a653a2031656d3b0a7d0a0a2e7265706f72746564207b0a096261636b67726f756e642d636f6c6f723a20236637663766373b0a7d0a0a6c692e7265706f727465643a686f766572207b0a096261636b67726f756e642d636f6c6f723a20236563656365633b0a7d0a0a6469762e72756c6573207b0a096261636b67726f756e642d636f6c6f723a20236563656365633b0a09636f6c6f723a20236263626362633b0a0970616464696e673a203020313070783b0a096d617267696e3a203130707820303b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a6469762e72756c657320756c2c206469762e72756c6573206f6c207b0a096d617267696e2d6c6566743a20323070783b0a7d0a0a702e72756c6573207b0a096261636b67726f756e642d636f6c6f723a20236563656365633b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a0970616464696e673a203570783b0a7d0a0a702e72756c657320696d67207b0a09766572746963616c2d616c69676e3a206d6964646c653b0a0970616464696e672d746f703a203570783b0a7d0a0a702e72756c65732061207b0a09766572746963616c2d616c69676e3a206d6964646c653b0a09636c6561723a20626f74683b0a7d0a0a23746f70207b0a09706f736974696f6e3a206162736f6c7574653b0a09746f703a202d323070783b0a7d0a0a2e636c656172207b0a09646973706c61793a20626c6f636b3b0a09636c6561723a20626f74683b0a09666f6e742d73697a653a203170783b0a096c696e652d6865696768743a203170783b0a096261636b67726f756e643a207472616e73706172656e743b0a7d0a2f2a204c696e6b205374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a2f2a204c696e6b732061646a7573746d656e7420746f20636f72726563746c7920646973706c617920616e206f72646572206f662072746c2f6c7472206d6978656420636f6e74656e74202a2f0a61207b0a09646972656374696f6e3a206c74723b0a09756e69636f64652d626964693a20656d6265643b0a7d0a0a613a6c696e6b097b20636f6c6f723a20233839383938393b20746578742d6465636f726174696f6e3a206e6f6e653b207d0a613a76697369746564097b20636f6c6f723a20233839383938393b20746578742d6465636f726174696f6e3a206e6f6e653b207d0a613a686f766572097b20636f6c6f723a20236433643364333b20746578742d6465636f726174696f6e3a20756e6465726c696e653b207d0a613a616374697665097b20636f6c6f723a20236432643264323b20746578742d6465636f726174696f6e3a206e6f6e653b207d0a0a2f2a20436f6c6f7572656420757365726e616d6573202a2f0a2e757365726e616d652d636f6c6f75726564207b0a09666f6e742d7765696768743a20626f6c643b0a09646973706c61793a20696e6c696e652021696d706f7274616e743b0a0970616464696e673a20302021696d706f7274616e743b0a7d0a0a2f2a204c696e6b73206f6e206772616469656e74206261636b67726f756e6473202a2f0a237365617263682d626f7820613a6c696e6b2c202e6e6176626720613a6c696e6b2c202e666f72756d6267202e68656164657220613a6c696e6b2c202e666f72616267202e68656164657220613a6c696e6b2c20746820613a6c696e6b207b0a09636f6c6f723a20234646464646463b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a7d0a0a237365617263682d626f7820613a766973697465642c202e6e6176626720613a766973697465642c202e666f72756d6267202e68656164657220613a766973697465642c202e666f72616267202e68656164657220613a766973697465642c20746820613a76697369746564207b0a09636f6c6f723a20234646464646463b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a7d0a0a237365617263682d626f7820613a686f7665722c202e6e6176626720613a686f7665722c202e666f72756d6267202e68656164657220613a686f7665722c202e666f72616267202e68656164657220613a686f7665722c20746820613a686f766572207b0a09636f6c6f723a20236666666666663b0a09746578742d6465636f726174696f6e3a20756e6465726c696e653b0a7d0a0a237365617263682d626f7820613a6163746976652c202e6e6176626720613a6163746976652c202e666f72756d6267202e68656164657220613a6163746976652c202e666f72616267202e68656164657220613a6163746976652c20746820613a616374697665207b0a09636f6c6f723a20236666666666663b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a7d0a0a2f2a204c696e6b7320666f7220666f72756d2f746f706963206c69737473202a2f0a612e666f72756d7469746c65207b0a09666f6e742d66616d696c793a2022547265627563686574204d53222c2048656c7665746963612c20417269616c2c2053616e732d73657269663b0a09666f6e742d73697a653a20312e32656d3b0a09666f6e742d7765696768743a20626f6c643b0a09636f6c6f723a20233839383938393b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a7d0a0a2f2a20612e666f72756d7469746c653a76697369746564207b20636f6c6f723a20233839383938393b207d202a2f0a0a612e666f72756d7469746c653a686f766572207b0a09636f6c6f723a20236263626362633b0a09746578742d6465636f726174696f6e3a20756e6465726c696e653b0a7d0a0a612e666f72756d7469746c653a616374697665207b0a09636f6c6f723a20233839383938393b0a7d0a0a612e746f7069637469746c65207b0a09666f6e742d66616d696c793a2022547265627563686574204d53222c2048656c7665746963612c20417269616c2c2053616e732d73657269663b0a09666f6e742d73697a653a20312e32656d3b0a09666f6e742d7765696768743a20626f6c643b0a09636f6c6f723a20233839383938393b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a7d0a0a2f2a20612e746f7069637469746c653a76697369746564207b20636f6c6f723a20236432643264323b207d202a2f0a0a612e746f7069637469746c653a686f766572207b0a09636f6c6f723a20236263626362633b0a09746578742d6465636f726174696f6e3a20756e6465726c696e653b0a7d0a0a612e746f7069637469746c653a616374697665207b0a09636f6c6f723a20233839383938393b0a7d0a0a2f2a20506f737420626f6479206c696e6b73202a2f0a2e706f73746c696e6b207b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a09636f6c6f723a20236432643264323b0a09626f726465722d626f74746f6d3a2031707820736f6c696420236432643264323b0a0970616464696e672d626f74746f6d3a20303b0a7d0a0a2f2a202e706f73746c696e6b3a76697369746564207b20636f6c6f723a20236264626462643b207d202a2f0a0a2e706f73746c696e6b3a616374697665207b0a09636f6c6f723a20236432643264323b0a7d0a0a2e706f73746c696e6b3a686f766572207b0a096261636b67726f756e642d636f6c6f723a20236636663666363b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a09636f6c6f723a20233430343034303b0a7d0a0a2e7369676e617475726520612c202e7369676e617475726520613a766973697465642c202e7369676e617475726520613a686f7665722c202e7369676e617475726520613a616374697665207b0a09626f726465723a206e6f6e653b0a09746578742d6465636f726174696f6e3a20756e6465726c696e653b0a096261636b67726f756e642d636f6c6f723a207472616e73706172656e743b0a7d0a0a2f2a2050726f66696c65206c696e6b73202a2f0a2e706f737470726f66696c6520613a6c696e6b2c202e706f737470726f66696c6520613a766973697465642c202e706f737470726f66696c652064742e617574686f722061207b0a09666f6e742d7765696768743a20626f6c643b0a09636f6c6f723a20233839383938393b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a7d0a0a2e706f737470726f66696c6520613a686f7665722c202e706f737470726f66696c652064742e617574686f7220613a686f766572207b0a09746578742d6465636f726174696f6e3a20756e6465726c696e653b0a09636f6c6f723a20236433643364333b0a7d0a0a2f2a20435353207370656320726571756972657320613a6c696e6b2c20613a766973697465642c20613a686f76657220616e6420613a6163746976652072756c657320746f2062652073706563696669656420696e2074686973206f726465722e202a2f0a2f2a2053656520687474703a2f2f7777772e70687062622e636f6d2f627567732f7068706262332f3539363835202a2f0a2e706f737470726f66696c6520613a616374697665207b0a09666f6e742d7765696768743a20626f6c643b0a09636f6c6f723a20233839383938393b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a7d0a0a0a2f2a2050726f66696c6520736561726368726573756c7473202a2f090a2e736561726368202e706f737470726f66696c652061207b0a09636f6c6f723a20233839383938393b0a09746578742d6465636f726174696f6e3a206e6f6e653b200a09666f6e742d7765696768743a206e6f726d616c3b0a7d0a0a2e736561726368202e706f737470726f66696c6520613a686f766572207b0a09636f6c6f723a20236433643364333b0a09746578742d6465636f726174696f6e3a20756e6465726c696e653b200a7d0a0a2f2a204261636b20746f20746f70206f662070616765202a2f0a2e6261636b32746f70207b0a09636c6561723a20626f74683b0a096865696768743a20313170783b0a09746578742d616c69676e3a2072696768743b0a7d0a0a612e746f70207b0a096261636b67726f756e643a206e6f6e65206e6f2d72657065617420746f70206c6566743b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a0977696474683a207b494d475f49434f4e5f4241434b5f544f505f57494454487d70783b0a096865696768743a207b494d475f49434f4e5f4241434b5f544f505f4845494748547d70783b0a09646973706c61793a20626c6f636b3b0a09666c6f61743a2072696768743b0a096f766572666c6f773a2068696464656e3b0a096c65747465722d73706163696e673a203130303070783b0a09746578742d696e64656e743a20313170783b0a7d0a0a612e746f7032207b0a096261636b67726f756e643a206e6f6e65206e6f2d7265706561742030203530253b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a0970616464696e672d6c6566743a20313570783b0a7d0a0a2f2a204172726f77206c696e6b7320202a2f0a612e757009097b206261636b67726f756e643a206e6f6e65206e6f2d726570656174206c6566742063656e7465723b207d0a612e646f776e09097b206261636b67726f756e643a206e6f6e65206e6f2d7265706561742072696768742063656e7465723b207d0a612e6c65667409097b206261636b67726f756e643a206e6f6e65206e6f2d72657065617420337078203630253b207d0a612e726967687409097b206261636b67726f756e643a206e6f6e65206e6f2d72657065617420393525203630253b207d0a0a612e75702c20612e75703a6c696e6b2c20612e75703a6163746976652c20612e75703a76697369746564207b0a0970616464696e672d6c6566743a20313070783b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a09626f726465722d626f74746f6d2d77696474683a20303b0a7d0a0a612e75703a686f766572207b0a096261636b67726f756e642d706f736974696f6e3a206c65667420746f703b0a096261636b67726f756e642d636f6c6f723a207472616e73706172656e743b0a7d0a0a612e646f776e2c20612e646f776e3a6c696e6b2c20612e646f776e3a6163746976652c20612e646f776e3a76697369746564207b0a0970616464696e672d72696768743a20313070783b0a7d0a0a612e646f776e3a686f766572207b0a096261636b67726f756e642d706f736974696f6e3a20726967687420626f74746f6d3b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a7d0a0a612e6c6566742c20612e6c6566743a6163746976652c20612e6c6566743a76697369746564207b0a0970616464696e672d6c6566743a20313270783b0a7d0a0a612e6c6566743a686f766572207b0a09636f6c6f723a20236432643264323b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a096261636b67726f756e642d706f736974696f6e3a2030203630253b0a7d0a0a612e72696768742c20612e72696768743a6163746976652c20612e72696768743a76697369746564207b0a0970616464696e672d72696768743a20313270783b0a7d0a0a612e72696768743a686f766572207b0a09636f6c6f723a20236432643264323b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a096261636b67726f756e642d706f736974696f6e3a2031303025203630253b0a7d0a0a2f2a20696e76697369626c6520736b6970206c696e6b2c207573656420666f72206163636573736962696c69747920202a2f0a2e736b69706c696e6b207b0a09706f736974696f6e3a206162736f6c7574653b0a096c6566743a202d39393970783b0a0977696474683a2039393070783b0a7d0a0a2f2a20466565642069636f6e20696e20666f72756d6c6973745f626f64792e68746d6c202a2f0a612e666565642d69636f6e2d666f72756d207b0a09666c6f61743a2072696768743b0a096d617267696e3a203370783b0a7d0a2f2a20436f6e74656e74205374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a756c2e746f7069636c697374207b0a09646973706c61793a20626c6f636b3b0a096c6973742d7374796c652d747970653a206e6f6e653b0a096d617267696e3a20303b0a7d0a0a756c2e666f72756d73207b0a096261636b67726f756e643a2023663966396639206e6f6e65207265706561742d78203020303b0a7d0a0a756c2e746f7069636c697374206c69207b0a09646973706c61793a20626c6f636b3b0a096c6973742d7374796c652d747970653a206e6f6e653b0a09636f6c6f723a20233737373737373b0a096d617267696e3a20303b0a7d0a0a756c2e746f7069636c69737420646c207b0a09706f736974696f6e3a2072656c61746976653b0a7d0a0a756c2e746f7069636c697374206c692e726f7720646c207b0a0970616464696e673a2032707820303b0a7d0a0a756c2e746f7069636c697374206474207b0a09646973706c61793a20626c6f636b3b0a09666c6f61743a206c6566743b0a0977696474683a203530253b0a09666f6e742d73697a653a20312e31656d3b0a0970616464696e672d6c6566743a203570783b0a0970616464696e672d72696768743a203570783b0a7d0a0a756c2e746f7069636c697374206464207b0a09646973706c61793a20626c6f636b3b0a09666c6f61743a206c6566743b0a09626f726465722d6c6566743a2031707820736f6c696420234646464646463b0a0970616464696e673a2034707820303b0a7d0a0a756c2e746f7069636c6973742064666e207b0a092f2a204c6162656c7320666f7220706f73742f7669657720636f756e7473202a2f0a09706f736974696f6e3a206162736f6c7574653b0a096c6566743a202d39393970783b0a0977696474683a2039393070783b0a7d0a0a756c2e746f7069636c697374206c692e726f7720647420612e737562666f72756d207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a096261636b67726f756e642d706f736974696f6e3a2030203530253b0a096261636b67726f756e642d7265706561743a206e6f2d7265706561743b0a09706f736974696f6e3a2072656c61746976653b0a0977686974652d73706163653a206e6f777261703b0a0970616464696e673a20302030203020313270783b0a7d0a0a2e666f72756d2d696d616765207b0a09666c6f61743a206c6566743b0a0970616464696e672d746f703a203570783b0a096d617267696e2d72696768743a203570783b0a7d0a0a6c692e726f77207b0a09626f726465722d746f703a2031707820736f6c696420234646464646463b0a09626f726465722d626f74746f6d3a2031707820736f6c696420233866386638663b0a7d0a0a6c692e726f77207374726f6e67207b0a09666f6e742d7765696768743a206e6f726d616c3b0a09636f6c6f723a20233030303030303b0a7d0a0a6c692e726f773a686f766572207b0a096261636b67726f756e642d636f6c6f723a20236636663666363b0a7d0a0a6c692e726f773a686f766572206464207b0a09626f726465722d6c6566742d636f6c6f723a20234343434343433b0a7d0a0a6c692e6865616465722064742c206c692e686561646572206464207b0a096c696e652d6865696768743a2031656d3b0a09626f726465722d6c6566742d77696474683a20303b0a096d617267696e3a2032707820302034707820303b0a09636f6c6f723a20234646464646463b0a0970616464696e672d746f703a203270783b0a0970616464696e672d626f74746f6d3a203270783b0a09666f6e742d73697a653a2031656d3b0a09666f6e742d66616d696c793a20417269616c2c2048656c7665746963612c2073616e732d73657269663b0a09746578742d7472616e73666f726d3a207570706572636173653b0a7d0a0a6c692e686561646572206474207b0a09666f6e742d7765696768743a20626f6c643b0a7d0a0a6c692e686561646572206464207b0a096d617267696e2d6c6566743a203170783b0a7d0a0a6c692e68656164657220646c2e69636f6e207b0a096d696e2d6865696768743a20303b0a7d0a0a6c692e68656164657220646c2e69636f6e206474207b0a092f2a20547765616b20666f72206865616465727320616c69676e6d656e74207768656e20666f6c6465722069636f6e2075736564202a2f0a0970616464696e672d6c6566743a20303b0a0970616464696e672d72696768743a20353070783b0a7d0a0a2f2a20466f72756d206c69737420636f6c756d6e207374796c6573202a2f0a646c2e69636f6e207b0a096d696e2d6865696768743a20333570783b0a096261636b67726f756e642d706f736974696f6e3a2031307078203530253b09092f2a20506f736974696f6e206f6620666f6c6465722069636f6e202a2f0a096261636b67726f756e642d7265706561743a206e6f2d7265706561743b0a7d0a0a646c2e69636f6e206474207b0a0970616464696e672d6c6566743a20343570783b09090909092f2a20537061636520666f7220666f6c6465722069636f6e202a2f0a096261636b67726f756e642d7265706561743a206e6f2d7265706561743b0a096261636b67726f756e642d706f736974696f6e3a20357078203935253b09092f2a20506f736974696f6e206f6620746f7069632069636f6e202a2f0a7d0a0a64642e706f7374732c2064642e746f706963732c2064642e7669657773207b0a0977696474683a2038253b0a09746578742d616c69676e3a2063656e7465723b0a096c696e652d6865696768743a20322e32656d3b0a09666f6e742d73697a653a20312e32656d3b0a7d0a0a2f2a204c69737420696e20666f72756d206465736372697074696f6e202a2f0a646c2e69636f6e206474206f6c2c0a646c2e69636f6e20647420756c207b0a096c6973742d7374796c652d706f736974696f6e3a20696e736964653b0a096d617267696e2d6c6566743a2031656d3b0a7d0a0a646c2e69636f6e206474206c69207b0a09646973706c61793a206c6973742d6974656d3b0a096c6973742d7374796c652d747970653a20696e68657269743b0a7d0a0a64642e6c617374706f7374207b0a0977696474683a203235253b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a64642e7265646972656374207b0a09666f6e742d73697a653a20312e31656d3b0a096c696e652d6865696768743a20322e35656d3b0a7d0a0a64642e6d6f6465726174696f6e207b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a64642e6c617374706f7374207370616e2c20756c2e746f7069636c6973742064642e7365617263686279207370616e2c20756c2e746f7069636c6973742064642e696e666f207370616e2c20756c2e746f7069636c6973742064642e74696d65207370616e2c2064642e7265646972656374207370616e2c2064642e6d6f6465726174696f6e207370616e207b0a09646973706c61793a20626c6f636b3b0a0970616464696e672d6c6566743a203570783b0a7d0a0a64642e74696d65207b0a0977696474683a206175746f3b0a096c696e652d6865696768743a20323030253b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a64642e6578747261207b0a0977696474683a203132253b0a096c696e652d6865696768743a20323030253b0a09746578742d616c69676e3a2063656e7465723b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a64642e6d61726b207b0a09666c6f61743a2072696768742021696d706f7274616e743b0a0977696474683a2039253b0a09746578742d616c69676e3a2063656e7465723b0a096c696e652d6865696768743a20323030253b0a09666f6e742d73697a653a20312e32656d3b0a7d0a0a64642e696e666f207b0a0977696474683a203330253b0a7d0a0a64642e6f7074696f6e207b0a0977696474683a203135253b0a096c696e652d6865696768743a20323030253b0a09746578742d616c69676e3a2063656e7465723b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a64642e7365617263686279207b0a0977696474683a203437253b0a09666f6e742d73697a653a20312e31656d3b0a096c696e652d6865696768743a2031656d3b0a7d0a0a756c2e746f7069636c6973742064642e7365617263686578747261207b0a096d617267696e2d6c6566743a203570783b0a0970616464696e673a20302e32656d20303b0a09666f6e742d73697a653a20312e31656d3b0a09636f6c6f723a20233333333333333b0a09626f726465722d6c6566743a206e6f6e653b0a09636c6561723a20626f74683b0a0977696474683a203938253b0a096f766572666c6f773a2068696464656e3b0a7d0a0a2f2a20436f6e7461696e657220666f7220706f73742f7265706c7920627574746f6e7320616e6420706167696e6174696f6e202a2f0a2e746f7069632d616374696f6e73207b0a096d617267696e2d626f74746f6d3a203370783b0a09666f6e742d73697a653a20312e31656d3b0a096865696768743a20323870783b0a096d696e2d6865696768743a20323870783b0a7d0a6469765b636c6173735d2e746f7069632d616374696f6e73207b0a096865696768743a206175746f3b0a7d0a0a2f2a20506f737420626f6479207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2e706f7374626f6479207b0a0970616464696e673a20303b0a096c696e652d6865696768743a20312e3438656d3b0a09636f6c6f723a20233333333333333b0a0977696474683a203736253b0a09666c6f61743a206c6566743b0a09636c6561723a20626f74683b0a7d0a0a2e706f7374626f6479202e69676e6f7265207b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a2e706f7374626f64792068332e6669727374207b0a092f2a2054686520666972737420706f7374206f6e20746865207061676520757365732074686973202a2f0a09666f6e742d73697a653a20312e37656d3b0a7d0a0a2e706f7374626f6479206833207b0a092f2a20506f7374626f6479207265717569726573206120646966666572656e7420683320666f726d6174202d20736f206368616e67652069742068657265202a2f0a09666f6e742d73697a653a20312e35656d3b0a0970616464696e673a203270782030203020303b0a096d617267696e3a2030203020302e33656d20302021696d706f7274616e743b0a09746578742d7472616e73666f726d3a206e6f6e653b0a09626f726465723a206e6f6e653b0a09666f6e742d66616d696c793a2022547265627563686574204d53222c2056657264616e612c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0a096c696e652d6865696768743a20313235253b0a7d0a0a2e706f7374626f647920683320696d67207b0a092f2a20416c736f2073656520747765616b732e637373202a2f0a09766572746963616c2d616c69676e3a20626f74746f6d3b0a7d0a0a2e706f7374626f6479202e636f6e74656e74207b0a09666f6e742d73697a653a20312e33656d3b0a7d0a0a2e736561726368202e706f7374626f6479207b0a0977696474683a203638250a7d0a0a2f2a20546f706963207265766965772070616e656c0a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a23726576696577207b0a096d617267696e2d746f703a2032656d3b0a7d0a0a23746f706963726576696577207b0a0970616464696e672d72696768743a203570783b0a096f766572666c6f773a206175746f3b0a096865696768743a2033303070783b0a7d0a0a23746f706963726576696577202e706f7374626f6479207b0a0977696474683a206175746f3b0a09666c6f61743a206e6f6e653b0a096d617267696e3a20303b0a096865696768743a206175746f3b0a7d0a0a23746f706963726576696577202e706f7374207b0a096865696768743a206175746f3b0a7d0a0a23746f706963726576696577206832207b0a09626f726465722d626f74746f6d2d77696474683a20303b0a7d0a0a2e706f73742d69676e6f7265202e706f7374626f6479207b0a09646973706c61793a206e6f6e653b0a7d0a0a2f2a204d435020506f73742064657461696c730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a23706f73745f64657461696c730a7b0a092f2a20546869732077696c6c206f6e6c7920776f726b20696e204945372b2c20706c757320746865206f7468657273202a2f0a096f766572666c6f773a206175746f3b0a096d61782d6865696768743a2033303070783b0a7d0a0a23657870616e640a7b0a09636c6561723a20626f74683b0a7d0a0a2f2a20436f6e74656e7420636f6e7461696e6572207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2e636f6e74656e74207b0a096d696e2d6865696768743a2033656d3b0a096f766572666c6f773a2068696464656e3b0a096c696e652d6865696768743a20312e34656d3b0a09666f6e742d66616d696c793a20224c7563696461204772616e6465222c2022547265627563686574204d53222c2056657264616e612c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0a09666f6e742d73697a653a2031656d3b0a09636f6c6f723a20233333333333333b0a0970616464696e672d626f74746f6d3a203170783b0a7d0a0a2e636f6e74656e742068322c202e70616e656c206832207b0a09666f6e742d7765696768743a206e6f726d616c3b0a09636f6c6f723a20233938393839383b0a09626f726465722d626f74746f6d3a2031707820736f6c696420234343434343433b0a09666f6e742d73697a653a20312e36656d3b0a096d617267696e2d746f703a20302e35656d3b0a096d617267696e2d626f74746f6d3a20302e35656d3b0a0970616464696e672d626f74746f6d3a20302e35656d3b0a7d0a0a2e70616e656c206833207b0a096d617267696e3a20302e35656d20303b0a7d0a0a2e70616e656c2070207b0a09666f6e742d73697a653a20312e32656d3b0a096d617267696e2d626f74746f6d3a2031656d3b0a096c696e652d6865696768743a20312e34656d3b0a7d0a0a2e636f6e74656e742070207b0a09666f6e742d66616d696c793a20224c7563696461204772616e6465222c2022547265627563686574204d53222c2056657264616e612c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0a09666f6e742d73697a653a20312e32656d3b0a096d617267696e2d626f74746f6d3a2031656d3b0a096c696e652d6865696768743a20312e34656d3b0a7d0a0a646c2e666171207b0a09666f6e742d66616d696c793a20224c7563696461204772616e6465222c2056657264616e612c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0a09666f6e742d73697a653a20312e31656d3b0a096d617267696e2d746f703a2031656d3b0a096d617267696e2d626f74746f6d3a2032656d3b0a096c696e652d6865696768743a20312e34656d3b0a7d0a0a646c2e666171206474207b0a09666f6e742d7765696768743a20626f6c643b0a09636f6c6f723a20233333333333333b0a7d0a0a2e636f6e74656e7420646c2e666171207b0a09666f6e742d73697a653a20312e32656d3b0a096d617267696e2d626f74746f6d3a20302e35656d3b0a7d0a0a2e636f6e74656e74206c69207b0a096c6973742d7374796c652d747970653a20696e68657269743b0a7d0a0a2e636f6e74656e7420756c2c202e636f6e74656e74206f6c207b0a096d617267696e2d626f74746f6d3a2031656d3b0a096d617267696e2d6c6566743a2033656d3b0a7d0a0a2e706f737468696c6974207b0a096261636b67726f756e642d636f6c6f723a20236633663366333b0a09636f6c6f723a20234243424342433b0a0970616464696e673a20302032707820317078203270783b0a7d0a0a2e616e6e6f756e63652c202e756e72656164706f7374207b0a092f2a20486967686c696768742074686520616e6e6f756e63656d656e7473202620756e7265616420706f73747320626f78202a2f0a09626f726465722d6c6566742d636f6c6f723a20234243424342433b0a09626f726465722d72696768742d636f6c6f723a20234243424342433b0a7d0a0a2f2a20506f737420617574686f72202a2f0a702e617574686f72207b0a096d617267696e3a2030203135656d20302e36656d20303b0a0970616464696e673a203020302035707820303b0a09666f6e742d66616d696c793a2056657264616e612c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0a09666f6e742d73697a653a2031656d3b0a096c696e652d6865696768743a20312e32656d3b0a7d0a0a2f2a20506f7374207369676e6174757265202a2f0a2e7369676e6174757265207b0a096d617267696e2d746f703a20312e35656d3b0a0970616464696e672d746f703a20302e32656d3b0a09666f6e742d73697a653a20312e31656d3b0a09626f726465722d746f703a2031707820736f6c696420234343434343433b0a09636c6561723a206c6566743b0a096c696e652d6865696768743a20313430253b0a096f766572666c6f773a2068696464656e3b0a0977696474683a20313030253b0a7d0a0a6464202e7369676e6174757265207b0a096d617267696e3a20303b0a0970616464696e673a20303b0a09636c6561723a206e6f6e653b0a09626f726465723a206e6f6e653b0a7d0a0a2e7369676e6174757265206c69207b0a096c6973742d7374796c652d747970653a20696e68657269743b0a7d0a0a2e7369676e617475726520756c2c202e7369676e6174757265206f6c207b0a096d617267696e2d626f74746f6d3a2031656d3b0a096d617267696e2d6c6566743a2033656d3b0a7d0a0a2f2a20506f7374206e6f746963696573202a2f0a2e6e6f74696365207b0a09666f6e742d66616d696c793a20224c7563696461204772616e6465222c2056657264616e612c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0a0977696474683a206175746f3b0a096d617267696e2d746f703a20312e35656d3b0a0970616464696e672d746f703a20302e32656d3b0a09666f6e742d73697a653a2031656d3b0a09626f726465722d746f703a203170782064617368656420234343434343433b0a09636c6561723a206c6566743b0a096c696e652d6865696768743a20313330253b0a7d0a0a2f2a204a756d7020746f20706f7374206c696e6b20666f72206e6f77202a2f0a756c2e736561726368726573756c7473207b0a096c6973742d7374796c653a206e6f6e653b0a09746578742d616c69676e3a2072696768743b0a09636c6561723a20626f74683b0a7d0a0a2f2a20424220436f6465207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2f2a2051756f746520626c6f636b202a2f0a626c6f636b71756f7465207b0a096261636b67726f756e643a2023656265626562206e6f6e652036707820387078206e6f2d7265706561743b0a09626f726465723a2031707820736f6c696420236462646264623b0a09666f6e742d73697a653a20302e3935656d3b0a096d617267696e3a20302e35656d20317078203020323570783b0a096f766572666c6f773a2068696464656e3b0a0970616464696e673a203570783b0a7d0a0a626c6f636b71756f746520626c6f636b71756f7465207b0a092f2a204e65737465642071756f746573202a2f0a096261636b67726f756e642d636f6c6f723a20236261626162613b0a09666f6e742d73697a653a2031656d3b0a096d617267696e3a20302e35656d20317078203020313570783b090a7d0a0a626c6f636b71756f746520626c6f636b71756f746520626c6f636b71756f7465207b0a092f2a204e65737465642071756f746573202a2f0a096261636b67726f756e642d636f6c6f723a20236534653465343b0a7d0a0a626c6f636b71756f74652063697465207b0a092f2a20557365726e616d652f736f75726365206f662071756f746572202a2f0a09666f6e742d7374796c653a206e6f726d616c3b0a09666f6e742d7765696768743a20626f6c643b0a096d617267696e2d6c6566743a20323070783b0a09646973706c61793a20626c6f636b3b0a09666f6e742d73697a653a20302e39656d3b0a7d0a0a626c6f636b71756f746520636974652063697465207b0a09666f6e742d73697a653a2031656d3b0a7d0a0a626c6f636b71756f74652e756e6369746564207b0a0970616464696e672d746f703a20323570783b0a7d0a0a2f2a20436f646520626c6f636b202a2f0a646c2e636f6465626f78207b0a0970616464696e673a203370783b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a09626f726465723a2031707820736f6c696420236438643864383b0a09666f6e742d73697a653a2031656d3b0a7d0a0a646c2e636f6465626f78206474207b0a09746578742d7472616e73666f726d3a207570706572636173653b0a09626f726465722d626f74746f6d3a2031707820736f6c696420234343434343433b0a096d617267696e2d626f74746f6d3a203370783b0a09666f6e742d73697a653a20302e38656d3b0a09666f6e742d7765696768743a20626f6c643b0a09646973706c61793a20626c6f636b3b0a7d0a0a626c6f636b71756f746520646c2e636f6465626f78207b0a096d617267696e2d6c6566743a20303b0a7d0a0a646c2e636f6465626f7820636f6465207b0a092f2a20416c736f2073656520747765616b732e637373202a2f0a096f766572666c6f773a206175746f3b0a09646973706c61793a20626c6f636b3b0a096865696768743a206175746f3b0a096d61782d6865696768743a2032303070783b0a0977686974652d73706163653a206e6f726d616c3b0a0970616464696e672d746f703a203570783b0a09666f6e743a20302e39656d204d6f6e61636f2c2022416e64616c65204d6f6e6f222c22436f7572696572204e6577222c20436f75726965722c206d6f6e6f3b0a096c696e652d6865696768743a20312e33656d3b0a09636f6c6f723a20233862386238623b0a096d617267696e3a2032707820303b0a7d0a0a2e73796e746178626709097b20636f6c6f723a20234646464646463b207d0a2e73796e746178636f6d6d656e74097b20636f6c6f723a20233030303030303b207d0a2e73796e74617864656661756c74097b20636f6c6f723a20236263626362633b207d0a2e73796e74617868746d6c09097b20636f6c6f723a20233030303030303b207d0a2e73796e7461786b6579776f7264097b20636f6c6f723a20233538353835383b207d0a2e73796e746178737472696e67097b20636f6c6f723a20236137613761373b207d0a0a2f2a204174746163686d656e74730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2e617474616368626f78207b0a09666c6f61743a206c6566743b0a0977696474683a206175746f3b200a096d617267696e3a20357078203570782035707820303b0a0970616464696e673a203670783b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a09626f726465723a203170782064617368656420236438643864383b0a09636c6561723a206c6566743b0a7d0a0a2e706d2d6d657373616765202e617474616368626f78207b0a096261636b67726f756e642d636f6c6f723a20236633663366333b0a7d0a0a2e617474616368626f78206474207b0a09666f6e742d66616d696c793a20417269616c2c2048656c7665746963612c2073616e732d73657269663b0a09746578742d7472616e73666f726d3a207570706572636173653b0a7d0a0a2e617474616368626f78206464207b0a096d617267696e2d746f703a203470783b0a0970616464696e672d746f703a203470783b0a09636c6561723a206c6566743b0a09626f726465722d746f703a2031707820736f6c696420236438643864383b0a7d0a0a2e617474616368626f78206464206464207b0a09626f726465723a206e6f6e653b0a7d0a0a2e617474616368626f782070207b0a096c696e652d6865696768743a20313130253b0a09636f6c6f723a20233636363636363b0a09666f6e742d7765696768743a206e6f726d616c3b0a09636c6561723a206c6566743b0a7d0a0a2e617474616368626f7820702e73746174730a7b0a096c696e652d6865696768743a20313130253b0a09636f6c6f723a20233636363636363b0a09666f6e742d7765696768743a206e6f726d616c3b0a09636c6561723a206c6566743b0a7d0a0a2e6174746163682d696d616765207b0a096d617267696e3a2033707820303b0a0977696474683a20313030253b0a096d61782d6865696768743a2033353070783b0a096f766572666c6f773a206175746f3b0a7d0a0a2e6174746163682d696d61676520696d67207b0a09626f726465723a2031707820736f6c696420233939393939393b0a2f2a09637572736f723a206d6f76653b202a2f0a09637572736f723a2064656661756c743b0a7d0a0a2f2a20496e6c696e6520696d616765207468756d626e61696c73202a2f0a6469762e696e6c696e652d6174746163686d656e7420646c2e7468756d626e61696c2c206469762e696e6c696e652d6174746163686d656e7420646c2e66696c65207b0a09646973706c61793a20626c6f636b3b0a096d617267696e2d626f74746f6d3a203470783b0a7d0a0a6469762e696e6c696e652d6174746163686d656e742070207b0a09666f6e742d73697a653a20313030253b0a7d0a0a646c2e66696c65207b0a09666f6e742d66616d696c793a2056657264616e612c20417269616c2c2048656c7665746963612c2073616e732d73657269663b0a09646973706c61793a20626c6f636b3b0a7d0a0a646c2e66696c65206474207b0a09746578742d7472616e73666f726d3a206e6f6e653b0a096d617267696e3a20303b0a0970616464696e673a20303b0a09666f6e742d7765696768743a20626f6c643b0a09666f6e742d66616d696c793a2056657264616e612c20417269616c2c2048656c7665746963612c2073616e732d73657269663b0a7d0a0a646c2e66696c65206464207b0a09636f6c6f723a20233636363636363b0a096d617267696e3a20303b0a0970616464696e673a20303b090a7d0a0a646c2e7468756d626e61696c20696d67207b0a0970616464696e673a203370783b0a09626f726465723a2031707820736f6c696420233636363636363b0a096261636b67726f756e642d636f6c6f723a20234646463b0a7d0a0a646c2e7468756d626e61696c206464207b0a09636f6c6f723a20233636363636363b0a09666f6e742d7374796c653a206974616c69633b0a09666f6e742d66616d696c793a2056657264616e612c20417269616c2c2048656c7665746963612c2073616e732d73657269663b0a7d0a0a2e617474616368626f7820646c2e7468756d626e61696c206464207b0a09666f6e742d73697a653a20313030253b0a7d0a0a646c2e7468756d626e61696c20647420613a686f766572207b0a096261636b67726f756e642d636f6c6f723a20234545454545453b0a7d0a0a646c2e7468756d626e61696c20647420613a686f76657220696d67207b0a09626f726465723a2031707820736f6c696420236432643264323b0a7d0a0a2f2a20506f737420706f6c6c207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a6669656c647365742e706f6c6c73207b0a09666f6e742d66616d696c793a2022547265627563686574204d53222c2056657264616e612c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0a7d0a0a6669656c647365742e706f6c6c7320646c207b0a096d617267696e2d746f703a203570783b0a09626f726465722d746f703a2031707820736f6c696420236532653265323b0a0970616464696e673a203570782030203020303b0a096c696e652d6865696768743a20313230253b0a09636f6c6f723a20233636363636363b0a7d0a0a6669656c647365742e706f6c6c7320646c2e766f746564207b0a09666f6e742d7765696768743a20626f6c643b0a09636f6c6f723a20233030303030303b0a7d0a0a6669656c647365742e706f6c6c73206474207b0a09746578742d616c69676e3a206c6566743b0a09666c6f61743a206c6566743b0a09646973706c61793a20626c6f636b3b0a0977696474683a203330253b0a09626f726465722d72696768743a206e6f6e653b0a0970616464696e673a20303b0a096d617267696e3a20303b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a6669656c647365742e706f6c6c73206464207b0a09666c6f61743a206c6566743b0a0977696474683a203130253b0a09626f726465722d6c6566743a206e6f6e653b0a0970616464696e673a2030203570783b0a096d617267696e2d6c6566743a20303b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a6669656c647365742e706f6c6c732064642e726573756c74626172207b0a0977696474683a203530253b0a7d0a0a6669656c647365742e706f6c6c7320646420696e707574207b0a096d617267696e3a2032707820303b0a7d0a0a6669656c647365742e706f6c6c7320646420646976207b0a09746578742d616c69676e3a2072696768743b0a09666f6e742d66616d696c793a20417269616c2c2048656c7665746963612c2073616e732d73657269663b0a09636f6c6f723a20234646464646463b0a09666f6e742d7765696768743a20626f6c643b0a0970616464696e673a2030203270783b0a096f766572666c6f773a2076697369626c653b0a096d696e2d77696474683a2032253b0a7d0a0a2e706f6c6c62617231207b0a096261636b67726f756e642d636f6c6f723a20236161616161613b0a09626f726465722d626f74746f6d3a2031707820736f6c696420233734373437343b0a09626f726465722d72696768743a2031707820736f6c696420233734373437343b0a7d0a0a2e706f6c6c62617232207b0a096261636b67726f756e642d636f6c6f723a20236265626562653b0a09626f726465722d626f74746f6d3a2031707820736f6c696420233863386338633b0a09626f726465722d72696768743a2031707820736f6c696420233863386338633b0a7d0a0a2e706f6c6c62617233207b0a096261636b67726f756e642d636f6c6f723a20234431443144313b0a09626f726465722d626f74746f6d3a2031707820736f6c696420236161616161613b0a09626f726465722d72696768743a2031707820736f6c696420236161616161613b0a7d0a0a2e706f6c6c62617234207b0a096261636b67726f756e642d636f6c6f723a20236534653465343b0a09626f726465722d626f74746f6d3a2031707820736f6c696420236265626562653b0a09626f726465722d72696768743a2031707820736f6c696420236265626562653b0a7d0a0a2e706f6c6c62617235207b0a096261636b67726f756e642d636f6c6f723a20236638663866383b0a09626f726465722d626f74746f6d3a2031707820736f6c696420234431443144313b0a09626f726465722d72696768743a2031707820736f6c696420234431443144313b0a7d0a0a2f2a20506f737465722070726f66696c6520626c6f636b0a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2e706f737470726f66696c65207b0a092f2a20416c736f2073656520747765616b732e637373202a2f0a096d617267696e3a203570782030203130707820303b0a096d696e2d6865696768743a20383070783b0a09636f6c6f723a20233636363636363b0a09626f726465722d6c6566743a2031707820736f6c696420234646464646463b0a0977696474683a203232253b0a09666c6f61743a2072696768743b0a09646973706c61793a20696e6c696e653b0a7d0a2e706d202e706f737470726f66696c65207b0a09626f726465722d6c6566743a2031707820736f6c696420234444444444443b0a7d0a0a2e706f737470726f66696c652064642c202e706f737470726f66696c65206474207b0a096c696e652d6865696768743a20312e32656d3b0a096d617267696e2d6c6566743a203870783b0a7d0a0a2e706f737470726f66696c65207374726f6e67207b0a09666f6e742d7765696768743a206e6f726d616c3b0a09636f6c6f723a20233030303030303b0a7d0a0a2e617661746172207b0a09626f726465723a206e6f6e653b0a096d617267696e2d626f74746f6d3a203370783b0a7d0a0a2e6f6e6c696e65207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a096261636b67726f756e642d706f736974696f6e3a203130302520303b0a096261636b67726f756e642d7265706561743a206e6f2d7265706561743b0a7d0a0a2f2a20506f737465722070726f66696c652075736564206279207365617263682a2f0a2e736561726368202e706f737470726f66696c65207b0a0977696474683a203330253b0a7d0a0a2f2a20706d206c69737420696e20636f6d706f7365206d657373616765206966206d61737320706d20697320656e61626c6564202a2f0a646c2e706d6c697374206474207b0a0977696474683a203630252021696d706f7274616e743b0a7d0a0a646c2e706d6c697374206474207465787461726561207b0a0977696474683a203935253b0a7d0a0a646c2e706d6c697374206464207b0a096d617267696e2d6c6566743a203631252021696d706f7274616e743b0a096d617267696e2d626f74746f6d3a203270783b0a7d0a0a2f2a207370656369616c20666f722064632061637469766974792a2f0a2361637469766974795f656e726f6c6c65645f776170706572207b0a09096d617267696e3a30206175746f3b0a090977696474683a203530253b0a0909666c6f61743a63656e7465723b0a09090a7d0a0a2361637469766974795f656e726f6c6c65645f626c6f636b31207b0a0909666c6f61743a6c6566743b0a090977696474683a203530253b0a09090a09090a7d0a2361637469766974795f656e726f6c6c65645f626c6f636b32207b0a0909666c6f61743a72696768743b0a0909746578742d616c69676e3a206c6566743b0a090977696474683a203530253b0a7d0a2f2a20427574746f6e205374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a2f2a20526f6c6c6f76657220627574746f6e730a2020204261736564206f6e3a20687474703a2f2f77656c6c7374796c65642e636f6d2f6373732d6e6f7072656c6f61642d726f6c6c6f766572732e68746d6c0a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2e627574746f6e73207b0a09666c6f61743a206c6566743b0a0977696474683a206175746f3b0a096865696768743a206175746f3b0a7d0a0a2f2a20526f6c6c6f766572207374617465202a2f0a2e627574746f6e7320646976207b0a09666c6f61743a206c6566743b0a096d617267696e3a203020357078203020303b0a096261636b67726f756e642d706f736974696f6e3a203020313030253b0a7d0a0a2f2a20526f6c6c6f6666207374617465202a2f0a2e627574746f6e73206469762061207b0a09646973706c61793a20626c6f636b3b0a0977696474683a20313030253b0a096865696768743a20313030253b0a096261636b67726f756e642d706f736974696f6e3a203020303b0a09706f736974696f6e3a2072656c61746976653b0a096f766572666c6f773a2068696464656e3b0a7d0a0a2f2a2048696465203c613e207465787420616e642068696465206f66662d737461746520696d616765207768656e20726f6c6c696e67206f766572202870726576656e747320666c69636b657220696e20494529202a2f0a2f2a2e627574746f6e7320646976207370616e09097b20646973706c61793a206e6f6e653b207d2a2f0a2f2a2e627574746f6e732064697620613a686f766572097b206261636b67726f756e642d696d6167653a206e6f6e653b207d2a2f0a2e627574746f6e7320646976207370616e0909097b20706f736974696f6e3a206162736f6c7574653b2077696474683a20313030253b206865696768743a20313030253b20637572736f723a20706f696e7465723b7d0a2e627574746f6e732064697620613a686f766572207370616e097b206261636b67726f756e642d706f736974696f6e3a203020313030253b207d0a0a2f2a2042696720627574746f6e20696d61676573202a2f0a2e7265706c792d69636f6e207370616e097b206261636b67726f756e643a207472616e73706172656e74206e6f6e6520302030206e6f2d7265706561743b207d0a2e706f73742d69636f6e207370616e09097b206261636b67726f756e643a207472616e73706172656e74206e6f6e6520302030206e6f2d7265706561743b207d0a2e6c6f636b65642d69636f6e207370616e097b206261636b67726f756e643a207472616e73706172656e74206e6f6e6520302030206e6f2d7265706561743b207d0a2e706d7265706c792d69636f6e207370616e097b206261636b67726f756e643a206e6f6e6520302030206e6f2d7265706561743b207d0a2e6e6577706d2d69636f6e207370616e20097b206261636b67726f756e643a206e6f6e6520302030206e6f2d7265706561743b207d0a2e666f7277617264706d2d69636f6e207370616e20097b206261636b67726f756e643a206e6f6e6520302030206e6f2d7265706561743b207d0a0a2f2a205365742062696720627574746f6e2064696d656e73696f6e73202a2f0a2e627574746f6e73206469762e7265706c792d69636f6e09097b2077696474683a207b494d475f425554544f4e5f544f5049435f5245504c595f57494454487d70783b206865696768743a207b494d475f425554544f4e5f544f5049435f5245504c595f4845494748547d70783b207d0a2e627574746f6e73206469762e706f73742d69636f6e09097b2077696474683a207b494d475f425554544f4e5f544f5049435f4e45575f57494454487d70783b206865696768743a207b494d475f425554544f4e5f544f5049435f4e45575f4845494748547d70783b207d0a2e627574746f6e73206469762e6c6f636b65642d69636f6e097b2077696474683a207b494d475f425554544f4e5f544f5049435f4c4f434b45445f57494454487d70783b206865696768743a207b494d475f425554544f4e5f544f5049435f4c4f434b45445f4845494748547d70783b207d0a2e627574746f6e73206469762e706d7265706c792d69636f6e097b2077696474683a207b494d475f425554544f4e5f504d5f5245504c595f57494454487d70783b206865696768743a207b494d475f425554544f4e5f504d5f5245504c595f4845494748547d70783b207d0a2e627574746f6e73206469762e6e6577706d2d69636f6e09097b2077696474683a207b494d475f425554544f4e5f504d5f4e45575f57494454487d70783b206865696768743a207b494d475f425554544f4e5f504d5f4e45575f4845494748547d70783b207d0a2e627574746f6e73206469762e666f7277617264706d2d69636f6e097b2077696474683a207b494d475f425554544f4e5f504d5f464f52574152445f57494454487d70783b206865696768743a207b494d475f425554544f4e5f504d5f464f52574152445f4845494748547d70783b207d0a0a2f2a205375622d68656164657220286e617669676174696f6e20626172290a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a612e7072696e742c20612e73656e64656d61696c2c20612e666f6e7473697a65207b0a09646973706c61793a20626c6f636b3b0a096f766572666c6f773a2068696464656e3b0a096865696768743a20313870783b0a09746578742d696e64656e743a202d3530303070783b0a09746578742d616c69676e3a206c6566743b0a096261636b67726f756e642d7265706561743a206e6f2d7265706561743b0a7d0a0a612e7072696e74207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a0977696474683a20323270783b0a7d0a0a612e73656e64656d61696c207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a0977696474683a20323270783b0a7d0a0a612e666f6e7473697a65207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a096261636b67726f756e642d706f736974696f6e3a2030202d3170783b0a0977696474683a20323970783b0a7d0a0a612e666f6e7473697a653a686f766572207b0a096261636b67726f756e642d706f736974696f6e3a2030202d323070783b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a7d0a0a2f2a2049636f6e20696d616765730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a2e73697465686f6d652c202e69636f6e2d6661712c202e69636f6e2d6d656d626572732c202e69636f6e2d686f6d652c202e69636f6e2d7563702c202e69636f6e2d72656769737465722c202e69636f6e2d6c6f676f75742c0a2e69636f6e2d626f6f6b6d61726b2c202e69636f6e2d62756d702c202e69636f6e2d7375627363726962652c202e69636f6e2d756e7375627363726962652c202e69636f6e2d70616765732c202e69636f6e2d736561726368207b0a096261636b67726f756e642d706f736974696f6e3a2030203530253b0a096261636b67726f756e642d7265706561743a206e6f2d7265706561743b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a0970616464696e673a203170782030203020313770783b0a7d0a0a2f2a20506f737465722070726f66696c652069636f6e730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a756c2e70726f66696c652d69636f6e73207b0a0970616464696e672d746f703a20313070783b0a096c6973742d7374796c653a206e6f6e653b0a7d0a0a2f2a20526f6c6c6f766572207374617465202a2f0a756c2e70726f66696c652d69636f6e73206c69207b0a09666c6f61743a206c6566743b0a096d617267696e3a2030203670782033707820303b0a096261636b67726f756e642d706f736974696f6e3a203020313030253b0a7d0a0a2f2a20526f6c6c6f6666207374617465202a2f0a756c2e70726f66696c652d69636f6e73206c692061207b0a09646973706c61793a20626c6f636b3b0a0977696474683a20313030253b0a096865696768743a20313030253b0a096261636b67726f756e642d706f736974696f6e3a203020303b0a7d0a0a2f2a2048696465203c613e207465787420616e642068696465206f66662d737461746520696d616765207768656e20726f6c6c696e67206f766572202870726576656e747320666c69636b657220696e20494529202a2f0a756c2e70726f66696c652d69636f6e73206c69207370616e207b20646973706c61793a6e6f6e653b207d0a756c2e70726f66696c652d69636f6e73206c6920613a686f766572207b206261636b67726f756e643a206e6f6e653b207d0a0a2f2a20506f736974696f6e696e67206f66206d6f64657261746f722069636f6e73202a2f0a2e706f7374626f647920756c2e70726f66696c652d69636f6e73207b0a09666c6f61743a2072696768743b0a0977696474683a206175746f3b0a0970616464696e673a20303b0a7d0a0a2e706f7374626f647920756c2e70726f66696c652d69636f6e73206c69207b0a096d617267696e3a2030203370783b0a7d0a0a2f2a2050726f66696c652026206e617669676174696f6e2069636f6e73202a2f0a2e656d61696c2d69636f6e2c202e656d61696c2d69636f6e206109097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a2e61696d2d69636f6e2c202e61696d2d69636f6e20610909097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a2e7961686f6f2d69636f6e2c202e7961686f6f2d69636f6e206109097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a2e7765622d69636f6e2c202e7765622d69636f6e20610909097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a2e6d736e6d2d69636f6e2c202e6d736e6d2d69636f6e20610909097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a2e6963712d69636f6e2c202e6963712d69636f6e20610909097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a2e6a61626265722d69636f6e2c202e6a61626265722d69636f6e206109097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a2e706d2d69636f6e2c202e706d2d69636f6e2061090909097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a2e71756f74652d69636f6e2c202e71756f74652d69636f6e206109097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a0a2f2a204d6f64657261746f722069636f6e73202a2f0a2e7265706f72742d69636f6e2c202e7265706f72742d69636f6e206109097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a2e7761726e2d69636f6e2c202e7761726e2d69636f6e20610909097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a2e656469742d69636f6e2c202e656469742d69636f6e20610909097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a2e64656c6574652d69636f6e2c202e64656c6574652d69636f6e206109097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a2e696e666f2d69636f6e2c202e696e666f2d69636f6e20610909097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a0a2f2a205365742070726f66696c652069636f6e2064696d656e73696f6e73202a2f0a756c2e70726f66696c652d69636f6e73206c692e656d61696c2d69636f6e09097b2077696474683a207b494d475f49434f4e5f434f4e544143545f454d41494c5f57494454487d70783b206865696768743a207b494d475f49434f4e5f434f4e544143545f454d41494c5f4845494748547d70783b207d0a756c2e70726f66696c652d69636f6e73206c692e61696d2d69636f6e097b2077696474683a207b494d475f49434f4e5f434f4e544143545f41494d5f57494454487d70783b206865696768743a207b494d475f49434f4e5f434f4e544143545f41494d5f4845494748547d70783b207d0a756c2e70726f66696c652d69636f6e73206c692e7961686f6f2d69636f6e097b2077696474683a207b494d475f49434f4e5f434f4e544143545f5941484f4f5f57494454487d70783b206865696768743a207b494d475f49434f4e5f434f4e544143545f5941484f4f5f4845494748547d70783b207d0a756c2e70726f66696c652d69636f6e73206c692e7765622d69636f6e097b2077696474683a207b494d475f49434f4e5f434f4e544143545f5757575f57494454487d70783b206865696768743a207b494d475f49434f4e5f434f4e544143545f5757575f4845494748547d70783b207d0a756c2e70726f66696c652d69636f6e73206c692e6d736e6d2d69636f6e097b2077696474683a207b494d475f49434f4e5f434f4e544143545f4d534e4d5f57494454487d70783b206865696768743a207b494d475f49434f4e5f434f4e544143545f4d534e4d5f4845494748547d70783b207d0a756c2e70726f66696c652d69636f6e73206c692e6963712d69636f6e097b2077696474683a207b494d475f49434f4e5f434f4e544143545f4943515f57494454487d70783b206865696768743a207b494d475f49434f4e5f434f4e544143545f4943515f4845494748547d70783b207d0a756c2e70726f66696c652d69636f6e73206c692e6a61626265722d69636f6e097b2077696474683a207b494d475f49434f4e5f434f4e544143545f4a41424245525f57494454487d70783b206865696768743a207b494d475f49434f4e5f434f4e544143545f4a41424245525f4845494748547d70783b207d0a756c2e70726f66696c652d69636f6e73206c692e706d2d69636f6e09097b2077696474683a207b494d475f49434f4e5f434f4e544143545f504d5f57494454487d70783b206865696768743a207b494d475f49434f4e5f434f4e544143545f504d5f4845494748547d70783b207d0a756c2e70726f66696c652d69636f6e73206c692e71756f74652d69636f6e097b2077696474683a207b494d475f49434f4e5f504f53545f51554f54455f57494454487d70783b206865696768743a207b494d475f49434f4e5f504f53545f51554f54455f4845494748547d70783b207d0a756c2e70726f66696c652d69636f6e73206c692e7265706f72742d69636f6e097b2077696474683a207b494d475f49434f4e5f504f53545f5245504f52545f57494454487d70783b206865696768743a207b494d475f49434f4e5f504f53545f5245504f52545f4845494748547d70783b207d0a756c2e70726f66696c652d69636f6e73206c692e656469742d69636f6e097b2077696474683a207b494d475f49434f4e5f504f53545f454449545f57494454487d70783b206865696768743a207b494d475f49434f4e5f504f53545f454449545f4845494748547d70783b207d0a756c2e70726f66696c652d69636f6e73206c692e64656c6574652d69636f6e097b2077696474683a207b494d475f49434f4e5f504f53545f44454c4554455f57494454487d70783b206865696768743a207b494d475f49434f4e5f504f53545f44454c4554455f4845494748547d70783b207d0a756c2e70726f66696c652d69636f6e73206c692e696e666f2d69636f6e097b2077696474683a207b494d475f49434f4e5f504f53545f494e464f5f57494454487d70783b206865696768743a207b494d475f49434f4e5f504f53545f494e464f5f4845494748547d70783b207d0a756c2e70726f66696c652d69636f6e73206c692e7761726e2d69636f6e097b2077696474683a207b494d475f49434f4e5f555345525f5741524e5f57494454487d70783b206865696768743a207b494d475f49434f4e5f555345525f5741524e5f4845494748547d70783b207d0a0a2f2a204669782070726f66696c652069636f6e2064656661756c74206d617267696e73202a2f0a756c2e70726f66696c652d69636f6e73206c692e656469742d69636f6e097b206d617267696e3a203020302030203370783b207d0a756c2e70726f66696c652d69636f6e73206c692e71756f74652d69636f6e097b206d617267696e3a20302030203020313070783b207d0a756c2e70726f66696c652d69636f6e73206c692e696e666f2d69636f6e2c20756c2e70726f66696c652d69636f6e73206c692e7265706f72742d69636f6e097b206d617267696e3a203020337078203020303b207d0a2f2a20436f6e74726f6c2050616e656c205374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a0a2f2a204d61696e20435020626f780a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2363702d6d656e75207b0a09666c6f61743a6c6566743b0a0977696474683a203139253b0a096d617267696e2d746f703a2031656d3b0a096d617267696e2d626f74746f6d3a203570783b0a7d0a0a2363702d6d61696e207b0a09666c6f61743a206c6566743b0a0977696474683a203831253b0a7d0a0a2363702d6d61696e202e636f6e74656e74207b0a0970616464696e673a20303b0a7d0a0a2363702d6d61696e2068332c202363702d6d61696e2068722c202363702d6d656e75206872207b0a09626f726465722d636f6c6f723a20236266626662663b0a7d0a0a2363702d6d61696e202e70616e656c2070207b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a2363702d6d61696e202e70616e656c206f6c207b0a096d617267696e2d6c6566743a2032656d3b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a2363702d6d61696e202e70616e656c206c692e726f77207b0a09626f726465722d626f74746f6d3a2031707820736f6c696420236362636263623b0a09626f726465722d746f703a2031707820736f6c696420234639463946393b0a7d0a0a756c2e63706c697374207b0a096d617267696e2d626f74746f6d3a203570783b0a09626f726465722d746f703a2031707820736f6c696420236362636263623b0a7d0a0a2363702d6d61696e202e70616e656c206c692e6865616465722064642c202363702d6d61696e202e70616e656c206c692e686561646572206474207b0a09636f6c6f723a20233030303030303b0a096d617267696e2d626f74746f6d3a203270783b0a7d0a0a2363702d6d61696e207461626c652e7461626c6531207b0a096d617267696e2d626f74746f6d3a2031656d3b0a7d0a0a2363702d6d61696e207461626c652e7461626c6531207468656164207468207b0a09636f6c6f723a20233333333333333b0a09666f6e742d7765696768743a20626f6c643b0a09626f726465722d626f74746f6d3a2031707820736f6c696420233333333333333b0a0970616464696e673a203570783b0a7d0a0a2363702d6d61696e207461626c652e7461626c65312074626f6479207468207b0a09666f6e742d7374796c653a206974616c69633b0a096261636b67726f756e642d636f6c6f723a207472616e73706172656e742021696d706f7274616e743b0a09626f726465722d626f74746f6d3a206e6f6e653b0a7d0a0a2363702d6d61696e202e706167696e6174696f6e207b0a09666c6f61743a2072696768743b0a0977696474683a206175746f3b0a0970616464696e672d746f703a203170783b0a7d0a0a2363702d6d61696e202e706f7374626f64792070207b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a2363702d6d61696e202e706d2d6d657373616765207b0a09626f726465723a2031707820736f6c696420236532653265323b0a096d617267696e3a203130707820303b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a0977696474683a206175746f3b0a09666c6f61743a206e6f6e653b0a7d0a0a2e706d2d6d657373616765206832207b0a0970616464696e672d626f74746f6d3a203570783b0a7d0a0a2363702d6d61696e202e706f7374626f64792068332c202363702d6d61696e202e626f7832206833207b0a096d617267696e2d746f703a20303b0a7d0a0a2363702d6d61696e202e627574746f6e73207b0a096d617267696e2d6c6566743a20303b0a7d0a0a2363702d6d61696e20756c2e6c696e6b6c697374207b0a096d617267696e3a20303b0a7d0a0a2f2a204d435020537065636966696320747765616b73202a2f0a2e6d63702d6d61696e202e706f7374626f6479207b0a0977696474683a20313030253b0a7d0a0a2f2a20435020746162626564206d656e750a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2374616273207b0a096c696e652d6865696768743a206e6f726d616c3b0a096d617267696e3a20323070782030202d317078203770783b0a096d696e2d77696474683a2035373070783b0a7d0a0a237461627320756c207b0a096d617267696e3a303b0a0970616464696e673a20303b0a096c6973742d7374796c653a206e6f6e653b0a7d0a0a2374616273206c69207b0a09646973706c61793a20696e6c696e653b0a096d617267696e3a20303b0a0970616464696e673a20303b0a09666f6e742d73697a653a2031656d3b0a09666f6e742d7765696768743a20626f6c643b0a7d0a0a23746162732061207b0a09666c6f61743a206c6566743b0a096261636b67726f756e643a206e6f6e65206e6f2d726570656174203025202d333570783b0a096d617267696e3a203020317078203020303b0a0970616464696e673a203020302030203570783b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a09706f736974696f6e3a2072656c61746976653b0a09637572736f723a20706f696e7465723b0a7d0a0a23746162732061207370616e207b0a09666c6f61743a206c6566743b0a09646973706c61793a20626c6f636b3b0a096261636b67726f756e643a206e6f6e65206e6f2d7265706561742031303025202d333570783b0a0970616464696e673a20367078203130707820367078203570783b0a09636f6c6f723a20233832383238323b0a0977686974652d73706163653a206e6f777261703b0a7d0a0a237461627320613a686f766572207370616e207b0a09636f6c6f723a20236263626362633b0a7d0a0a2374616273202e6163746976657461622061207b0a096261636b67726f756e642d706f736974696f6e3a203020303b0a09626f726465722d626f74746f6d3a2031707820736f6c696420236562656265623b0a7d0a0a2374616273202e6163746976657461622061207370616e207b0a096261636b67726f756e642d706f736974696f6e3a203130302520303b0a0970616464696e672d626f74746f6d3a203770783b0a09636f6c6f723a20233333333333333b0a7d0a0a237461627320613a686f766572207b0a096261636b67726f756e642d706f736974696f6e3a2030202d373070783b0a7d0a0a237461627320613a686f766572207370616e207b0a096261636b67726f756e642d706f736974696f6e3a31303025202d373070783b0a7d0a0a2374616273202e61637469766574616220613a686f766572207b0a096261636b67726f756e642d706f736974696f6e3a203020303b0a7d0a0a2374616273202e61637469766574616220613a686f766572207370616e207b0a09636f6c6f723a20233030303030303b0a096261636b67726f756e642d706f736974696f6e3a203130302520303b0a7d0a0a2f2a204d696e6920746162626564206d656e75207573656420696e204d43500a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a236d696e6974616273207b0a096c696e652d6865696768743a206e6f726d616c3b0a096d617267696e3a202d3230707820377078203020303b0a7d0a0a236d696e697461627320756c207b0a096d617267696e3a303b0a0970616464696e673a20303b0a096c6973742d7374796c653a206e6f6e653b0a7d0a0a236d696e6974616273206c69207b0a09646973706c61793a20626c6f636b3b0a09666c6f61743a2072696768743b0a0970616464696e673a203020313070782034707820313070783b0a09666f6e742d73697a653a2031656d3b0a09666f6e742d7765696768743a20626f6c643b0a096261636b67726f756e642d636f6c6f723a20236632663266323b0a096d617267696e2d6c6566743a203270783b0a7d0a0a236d696e69746162732061207b0a7d0a0a236d696e697461627320613a686f766572207b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a7d0a0a236d696e6974616273206c692e616374697665746162207b0a096261636b67726f756e642d636f6c6f723a20234639463946393b0a7d0a0a236d696e6974616273206c692e61637469766574616220612c20236d696e6974616273206c692e61637469766574616220613a686f766572207b0a09636f6c6f723a20233333333333333b0a7d0a0a2f2a20554350206e617669676174696f6e206d656e750a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2f2a20436f6e7461696e657220666f72207375622d6e617669676174696f6e206c697374202a2f0a236e617669676174696f6e207b0a0977696474683a20313030253b0a0970616464696e672d746f703a20333670783b0a7d0a0a236e617669676174696f6e20756c207b0a096c6973742d7374796c653a6e6f6e653b0a7d0a0a2f2a2044656661756c74206c697374207374617465202a2f0a236e617669676174696f6e206c69207b0a096d617267696e3a2031707820303b0a0970616464696e673a20303b0a09666f6e742d7765696768743a20626f6c643b0a09646973706c61793a20696e6c696e653b0a7d0a0a2f2a204c696e6b207374796c657320666f7220746865207375622d73656374696f6e206c696e6b73202a2f0a236e617669676174696f6e2061207b0a09646973706c61793a20626c6f636b3b0a0970616464696e673a203570783b0a096d617267696e3a2031707820303b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a09666f6e742d7765696768743a20626f6c643b0a09636f6c6f723a20233333333b0a096261636b67726f756e643a2023636663666366206e6f6e65207265706561742d79203130302520303b0a7d0a0a236e617669676174696f6e20613a686f766572207b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a096261636b67726f756e642d636f6c6f723a20236336633663363b0a09636f6c6f723a20236263626362633b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a7d0a0a236e617669676174696f6e20236163746976652d73756273656374696f6e2061207b0a09646973706c61793a20626c6f636b3b0a09636f6c6f723a20236433643364333b0a096261636b67726f756e642d636f6c6f723a20234639463946393b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a7d0a0a236e617669676174696f6e20236163746976652d73756273656374696f6e20613a686f766572207b0a09636f6c6f723a20236433643364333b0a7d0a0a2f2a20507265666572656e6365732070616e65206c61796f75740a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2363702d6d61696e206832207b0a09626f726465722d626f74746f6d3a206e6f6e653b0a0970616464696e673a20303b0a096d617267696e2d6c6566743a20313070783b0a09636f6c6f723a20233333333333333b0a7d0a0a2363702d6d61696e202e70616e656c207b0a096261636b67726f756e642d636f6c6f723a20234639463946393b0a7d0a0a2363702d6d61696e202e706d207b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a7d0a0a2363702d6d61696e207370616e2e636f726e6572732d746f702c202363702d6d656e75207370616e2e636f726e6572732d746f70207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a7d0a0a2363702d6d61696e207370616e2e636f726e6572732d746f70207370616e2c202363702d6d656e75207370616e2e636f726e6572732d746f70207370616e207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a7d0a0a2363702d6d61696e207370616e2e636f726e6572732d626f74746f6d2c202363702d6d656e75207370616e2e636f726e6572732d626f74746f6d207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a7d0a0a2363702d6d61696e207370616e2e636f726e6572732d626f74746f6d207370616e2c202363702d6d656e75207370616e2e636f726e6572732d626f74746f6d207370616e207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a7d0a0a2f2a20546f706963726576696577202a2f0a2363702d6d61696e202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d746f702c202363702d6d656e75202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d746f70207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a7d0a0a2363702d6d61696e202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d746f70207370616e2c202363702d6d656e75202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d746f70207370616e207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a7d0a0a2363702d6d61696e202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d626f74746f6d2c202363702d6d656e75202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d626f74746f6d207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a7d0a0a2363702d6d61696e202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d626f74746f6d207370616e2c202363702d6d656e75202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d626f74746f6d207370616e207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a7d0a0a2f2a20467269656e6473206c697374202a2f0a2e63702d6d696e69207b0a096261636b67726f756e642d636f6c6f723a20236639663966393b0a0970616464696e673a2030203570783b0a096d617267696e3a203130707820313570782031307078203570783b0a7d0a0a2e63702d6d696e69207370616e2e636f726e6572732d746f702c202e63702d6d696e69207370616e2e636f726e6572732d626f74746f6d207b0a096d617267696e3a2030202d3570783b0a7d0a0a646c2e6d696e69206474207b0a09666f6e742d7765696768743a20626f6c643b0a09636f6c6f723a20233637363736373b0a7d0a0a646c2e6d696e69206464207b0a0970616464696e672d746f703a203470783b0a7d0a0a2e667269656e642d6f6e6c696e65207b0a09666f6e742d7765696768743a20626f6c643b0a7d0a0a2e667269656e642d6f66666c696e65207b0a09666f6e742d7374796c653a206974616c69633b0a7d0a0a2f2a20504d205374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a23706d2d6d656e75207b0a096c696e652d6865696768743a20322e35656d3b0a7d0a0a2f2a20504d2070616e656c2061646a7573746d656e7473202a2f0a2e706d2d70616e656c2d686561646572207b0a096d617267696e3a20303b200a0970616464696e672d626f74746f6d3a20313070783b200a09626f726465722d626f74746f6d3a203170782064617368656420234134423342463b0a7d0a0a2e7265706c792d616c6c207b0a09646973706c61793a20626c6f636b3b200a0970616464696e672d746f703a203470783b200a09636c6561723a20626f74683b0a09666c6f61743a206c6566743b0a7d0a0a2e706d2d70616e656c2d6d657373616765207b0a0970616464696e672d746f703a20313070783b0a7d0a0a2e706d2d72657475726e2d746f207b0a0970616464696e672d746f703a20323370783b0a7d0a0a2363702d6d61696e202e706d2d6d6573736167652d6e6176207b0a096d617267696e3a20303b200a0970616464696e673a2032707820313070782035707820313070783b200a09626f726465722d626f74746f6d3a203170782064617368656420234134423342463b0a7d0a0a2f2a20504d204d65737361676520686973746f7279202a2f0a2e63757272656e74207b0a09636f6c6f723a20233939393939393b0a7d0a0a2f2a20446566696e65642072756c6573206c69737420666f7220504d206f7074696f6e73202a2f0a6f6c2e6465662d72756c6573207b0a0970616464696e672d6c6566743a20303b0a7d0a0a6f6c2e6465662d72756c6573206c69207b0a096c696e652d6865696768743a20313830253b0a0970616464696e673a203170783b0a7d0a0a2f2a20504d206d61726b696e6720636f6c6f757273202a2f0a2e706d6c697374206c692e626731207b0a0970616464696e673a2030203370783b0a7d0a0a2e706d6c697374206c692e626732207b0a0970616464696e673a2030203370783b0a7d0a0a2e706d6c697374206c692e706d5f6d6573736167655f7265706f727465645f636f6c6f75722c202e706d5f6d6573736167655f7265706f727465645f636f6c6f7572207b0a09626f726465722d6c6566742d636f6c6f723a20236263626362633b0a09626f726465722d72696768742d636f6c6f723a20236263626362633b0a7d0a0a2e706d6c697374206c692e706d5f6d61726b65645f636f6c6f75722c202e706d5f6d61726b65645f636f6c6f7572207b0a0970616464696e673a20303b0a09626f726465723a20736f6c69642033707820236666666666663b0a09626f726465722d77696474683a2030203370783b0a7d0a0a2e706d6c697374206c692e706d5f7265706c6965645f636f6c6f75722c202e706d5f7265706c6965645f636f6c6f7572207b0a0970616464696e673a20303b0a09626f726465723a20736f6c69642033707820236332633263323b0a09626f726465722d77696474683a2030203370783b0a7d0a0a2e706d6c697374206c692e706d5f667269656e645f636f6c6f75722c202e706d5f667269656e645f636f6c6f7572207b0a0970616464696e673a20303b0a09626f726465723a20736f6c69642033707820236264626462643b0a09626f726465722d77696474683a2030203370783b0a7d0a0a2e706d6c697374206c692e706d5f666f655f636f6c6f75722c202e706d5f666f655f636f6c6f7572207b0a0970616464696e673a20303b0a09626f726465723a20736f6c69642033707820233030303030303b0a09626f726465722d77696474683a2030203370783b0a7d0a0a2e706d2d6c6567656e64207b0a09626f726465722d6c6566742d77696474683a20313070783b0a09626f726465722d6c6566742d7374796c653a20736f6c69643b0a09626f726465722d72696768742d77696474683a20303b0a096d617267696e2d626f74746f6d3a203370783b0a0970616464696e672d6c6566743a203370783b0a7d0a0a2f2a204176617461722067616c6c657279202a2f0a2367616c6c657279206c6162656c207b0a09706f736974696f6e3a2072656c61746976653b0a09666c6f61743a206c6566743b0a096d617267696e3a20313070783b0a0970616464696e673a203570783b0a0977696474683a206175746f3b0a096261636b67726f756e643a20234646464646463b0a09626f726465723a2031707820736f6c696420234343433b0a09746578742d616c69676e3a2063656e7465723b0a7d0a0a2367616c6c657279206c6162656c3a686f766572207b0a096261636b67726f756e642d636f6c6f723a20234545453b0a7d0a2f2a20466f726d205374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a2f2a2047656e6572616c20666f726d207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a6669656c64736574207b0a09626f726465722d77696474683a20303b0a09666f6e742d66616d696c793a2056657264616e612c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a696e707574207b0a09666f6e742d7765696768743a206e6f726d616c3b0a09637572736f723a20706f696e7465723b0a09766572746963616c2d616c69676e3a206d6964646c653b0a0970616464696e673a2030203370783b0a09666f6e742d73697a653a2031656d3b0a09666f6e742d66616d696c793a2056657264616e612c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0a7d0a0a73656c656374207b0a09666f6e742d66616d696c793a2056657264616e612c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0a09666f6e742d7765696768743a206e6f726d616c3b0a09637572736f723a20706f696e7465723b0a09766572746963616c2d616c69676e3a206d6964646c653b0a09626f726465723a2031707820736f6c696420233636363636363b0a0970616464696e673a203170783b0a096261636b67726f756e642d636f6c6f723a20234641464146413b0a09666f6e742d73697a653a2031656d3b0a7d0a0a6f7074696f6e207b0a0970616464696e672d72696768743a2031656d3b0a7d0a0a6f7074696f6e2e64697361626c65642d6f7074696f6e207b0a09636f6c6f723a2067726179746578743b0a7d0a0a7465787461726561207b0a09666f6e742d66616d696c793a20224c7563696461204772616e6465222c2056657264616e612c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0a0977696474683a203630253b0a0970616464696e673a203270783b0a09666f6e742d73697a653a2031656d3b0a096c696e652d6865696768743a20312e34656d3b0a7d0a0a6c6162656c207b0a09637572736f723a2064656661756c743b0a0970616464696e672d72696768743a203570783b0a09636f6c6f723a20233637363736373b0a7d0a0a6c6162656c20696e707574207b0a09766572746963616c2d616c69676e3a206d6964646c653b0a7d0a0a6c6162656c20696d67207b0a09766572746963616c2d616c69676e3a206d6964646c653b0a7d0a0a2f2a20446566696e6974696f6e206c697374206c61796f757420666f7220666f726d730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a6669656c6473657420646c207b0a0970616464696e673a2034707820303b0a7d0a0a6669656c64736574206474207b0a09666c6f61743a206c6566743b090a0977696474683a203430253b0a09746578742d616c69676e3a206c6566743b0a09646973706c61793a20626c6f636b3b0a7d0a0a6669656c64736574206464207b0a096d617267696e2d6c6566743a203431253b0a09766572746963616c2d616c69676e3a20746f703b0a096d617267696e2d626f74746f6d3a203370783b0a7d0a0a2f2a205370656369666963206c61796f75742031202a2f0a6669656c647365742e6669656c647331206474207b0a0977696474683a203135656d3b0a09626f726465722d72696768742d77696474683a20303b0a7d0a0a6669656c647365742e6669656c647331206464207b0a096d617267696e2d6c6566743a203135656d3b0a09626f726465722d6c6566742d77696474683a20303b0a7d0a0a6669656c647365742e6669656c647331207b0a096261636b67726f756e642d636f6c6f723a207472616e73706172656e743b0a7d0a0a6669656c647365742e6669656c64733120646976207b0a096d617267696e2d626f74746f6d3a203370783b0a7d0a0a2f2a20536574206974206261636b20746f2030707820666f72207468652072654361707463686120646976733a205048504242332d39353837202a2f0a6669656c647365742e6669656c64733120237265636170746368615f7769646765745f64697620646976207b0a096d617267696e2d626f74746f6d3a20303b0a7d0a0a2f2a205370656369666963206c61796f75742032202a2f0a6669656c647365742e6669656c647332206474207b0a0977696474683a203135656d3b0a09626f726465722d72696768742d77696474683a20303b0a7d0a0a6669656c647365742e6669656c647332206464207b0a096d617267696e2d6c6566743a203136656d3b0a09626f726465722d6c6566742d77696474683a20303b0a7d0a0a2f2a20466f726d20656c656d656e7473202a2f0a6474206c6162656c207b0a09666f6e742d7765696768743a20626f6c643b0a09746578742d616c69676e3a206c6566743b0a7d0a0a6464206c6162656c207b0a0977686974652d73706163653a206e6f777261703b0a09636f6c6f723a20233333333b0a7d0a0a646420696e7075742c206464207465787461726561207b0a096d617267696e2d72696768743a203370783b0a7d0a0a64642073656c656374207b0a0977696474683a206175746f3b0a7d0a0a6464207465787461726561207b0a0977696474683a203835253b0a7d0a0a2f2a20486f7665722065666665637473202a2f0a6669656c6473657420646c3a686f766572206474206c6162656c207b0a09636f6c6f723a20233030303030303b0a7d0a0a6669656c647365742e6669656c64733220646c3a686f766572206474206c6162656c207b0a09636f6c6f723a20696e68657269743b0a7d0a0a2374696d657a6f6e65207b0a0977696474683a203935253b0a7d0a0a2a2068746d6c202374696d657a6f6e65207b0a0977696474683a203530253b0a7d0a0a2f2a20517569636b2d6c6f67696e206f6e20696e6465782070616765202a2f0a6669656c647365742e717569636b2d6c6f67696e207b0a096d617267696e2d746f703a203570783b0a7d0a0a6669656c647365742e717569636b2d6c6f67696e20696e707574207b0a0977696474683a206175746f3b0a7d0a0a6669656c647365742e717569636b2d6c6f67696e20696e7075742e696e707574626f78207b0a0977696474683a203135253b0a09766572746963616c2d616c69676e3a206d6964646c653b0a096d617267696e2d72696768743a203570783b0a096261636b67726f756e642d636f6c6f723a20236633663366333b0a7d0a0a6669656c647365742e717569636b2d6c6f67696e206c6162656c207b0a0977686974652d73706163653a206e6f777261703b0a0970616464696e672d72696768743a203270783b0a7d0a0a2f2a20446973706c6179206f7074696f6e73206f6e2076696577746f7069632f76696577666f72756d20706167657320202a2f0a6669656c647365742e646973706c61792d6f7074696f6e73207b0a09746578742d616c69676e3a2063656e7465723b0a096d617267696e3a2033707820302035707820303b0a7d0a0a6669656c647365742e646973706c61792d6f7074696f6e73206c6162656c207b0a0977686974652d73706163653a206e6f777261703b0a0970616464696e672d72696768743a203270783b0a7d0a0a6669656c647365742e646973706c61792d6f7074696f6e732061207b0a096d617267696e2d746f703a203370783b0a7d0a0a2f2a20446973706c617920616374696f6e7320666f722075637020616e64206d6370207061676573202a2f0a6669656c647365742e646973706c61792d616374696f6e73207b0a09746578742d616c69676e3a2072696768743b0a096c696e652d6865696768743a2032656d3b0a0977686974652d73706163653a206e6f777261703b0a0970616464696e672d72696768743a2031656d3b0a7d0a0a6669656c647365742e646973706c61792d616374696f6e73206c6162656c207b0a0977686974652d73706163653a206e6f777261703b0a0970616464696e672d72696768743a203270783b0a7d0a0a6669656c647365742e736f72742d6f7074696f6e73207b0a096c696e652d6865696768743a2032656d3b0a7d0a0a2f2a204d435020666f72756d2073656c656374696f6e2a2f0a6669656c647365742e666f72756d2d73656c656374696f6e207b0a096d617267696e3a2035707820302033707820303b0a09666c6f61743a2072696768743b0a7d0a0a6669656c647365742e666f72756d2d73656c656374696f6e32207b0a096d617267696e3a203133707820302033707820303b0a09666c6f61743a2072696768743b0a7d0a0a2f2a204a756d70626f78202a2f0a6669656c647365742e6a756d70626f78207b0a09746578742d616c69676e3a2072696768743b0a096d617267696e2d746f703a20313570783b0a096865696768743a20322e35656d3b0a7d0a0a6669656c647365742e717569636b6d6f64207b0a0977696474683a203530253b0a09666c6f61743a2072696768743b0a09746578742d616c69676e3a2072696768743b0a096865696768743a20322e35656d3b0a7d0a0a2f2a205375626d697420627574746f6e206669656c64736574202a2f0a6669656c647365742e7375626d69742d627574746f6e73207b0a09746578742d616c69676e3a2063656e7465723b0a09766572746963616c2d616c69676e3a206d6964646c653b0a096d617267696e3a2035707820303b0a7d0a0a6669656c647365742e7375626d69742d627574746f6e7320696e707574207b0a09766572746963616c2d616c69676e3a206d6964646c653b0a0970616464696e672d746f703a203370783b0a0970616464696e672d626f74746f6d3a203370783b0a7d0a0a2f2a20506f7374696e672070616765207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a0a2f2a20427574746f6e73207573656420696e2074686520656469746f72202a2f0a23666f726d61742d627574746f6e73207b0a096d617267696e3a203135707820302032707820303b0a7d0a0a23666f726d61742d627574746f6e7320696e7075742c2023666f726d61742d627574746f6e732073656c656374207b0a09766572746963616c2d616c69676e3a206d6964646c653b0a7d0a0a2f2a204d61696e206d65737361676520626f78202a2f0a236d6573736167652d626f78207b0a0977696474683a203830253b0a7d0a0a236d6573736167652d626f78207465787461726561207b0a09666f6e742d66616d696c793a2022547265627563686574204d53222c2056657264616e612c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0a0977696474683a2034353070783b0a096865696768743a2032373070783b0a096d696e2d77696474683a20313030253b0a096d61782d77696474683a20313030253b0a09666f6e742d73697a653a20312e32656d3b0a09636f6c6f723a20233333333333333b0a7d0a0a2f2a20456d6f7469636f6e732070616e656c202a2f0a23736d696c65792d626f78207b0a0977696474683a203138253b0a09666c6f61743a2072696768743b0a7d0a0a23736d696c65792d626f7820696d67207b0a096d617267696e3a203370783b0a7d0a0a2f2a20496e707574206669656c64207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a2e696e707574626f78207b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a09626f726465723a2031707820736f6c696420236330633063303b0a09636f6c6f723a20233333333333333b0a0970616464696e673a203270783b0a09637572736f723a20746578743b0a7d0a0a2e696e707574626f783a686f766572207b0a09626f726465723a2031707820736f6c696420236561656165613b0a7d0a0a2e696e707574626f783a666f637573207b0a09626f726465723a2031707820736f6c696420236561656165613b0a09636f6c6f723a20233462346234623b0a7d0a0a696e7075742e696e707574626f78097b2077696474683a203835253b207d0a696e7075742e6d656469756d097b2077696474683a203530253b207d0a696e7075742e6e6172726f77097b2077696474683a203235253b207d0a696e7075742e74696e7909097b2077696474683a2031323570783b207d0a0a74657874617265612e696e707574626f78207b0a0977696474683a203835253b0a7d0a0a2e6175746f7769647468207b0a0977696474683a206175746f2021696d706f7274616e743b0a7d0a0a2f2a20466f726d20627574746f6e207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a696e7075742e627574746f6e312c20696e7075742e627574746f6e32207b0a09666f6e742d73697a653a2031656d3b0a7d0a0a612e627574746f6e312c20696e7075742e627574746f6e312c20696e7075742e627574746f6e332c20612e627574746f6e322c20696e7075742e627574746f6e32207b0a0977696474683a206175746f2021696d706f7274616e743b0a0970616464696e672d746f703a203170783b0a0970616464696e672d626f74746f6d3a203170783b0a09666f6e742d66616d696c793a20224c7563696461204772616e6465222c2056657264616e612c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0a09636f6c6f723a20233030303b0a096261636b67726f756e643a2023464146414641206e6f6e65207265706561742d7820746f70206c6566743b0a7d0a0a612e627574746f6e312c20696e7075742e627574746f6e31207b0a09666f6e742d7765696768743a20626f6c643b0a09626f726465723a2031707820736f6c696420233636363636363b0a7d0a0a696e7075742e627574746f6e33207b0a0970616464696e673a20303b0a096d617267696e3a20303b0a096c696e652d6865696768743a203570783b0a096865696768743a20313270783b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a09666f6e742d76617269616e743a20736d616c6c2d636170733b0a7d0a0a2f2a20416c7465726e617469766520627574746f6e202a2f0a612e627574746f6e322c20696e7075742e627574746f6e322c20696e7075742e627574746f6e33207b0a09626f726465723a2031707820736f6c696420233636363636363b0a7d0a0a2f2a203c613e20627574746f6e20696e20746865207374796c65206f662074686520666f726d20627574746f6e73202a2f0a612e627574746f6e312c20612e627574746f6e313a6c696e6b2c20612e627574746f6e313a766973697465642c20612e627574746f6e313a6163746976652c20612e627574746f6e322c20612e627574746f6e323a6c696e6b2c20612e627574746f6e323a766973697465642c20612e627574746f6e323a616374697665207b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a09636f6c6f723a20233030303030303b0a0970616464696e673a20327078203870783b0a096c696e652d6865696768743a20323530253b0a09766572746963616c2d616c69676e3a20746578742d626f74746f6d3b0a096261636b67726f756e642d706f736974696f6e3a2030203170783b0a7d0a0a2f2a20486f76657220737461746573202a2f0a612e627574746f6e313a686f7665722c20696e7075742e627574746f6e313a686f7665722c20612e627574746f6e323a686f7665722c20696e7075742e627574746f6e323a686f7665722c20696e7075742e627574746f6e333a686f766572207b0a09626f726465723a2031707820736f6c696420234243424342433b0a096261636b67726f756e642d706f736974696f6e3a203020313030253b0a09636f6c6f723a20234243424342433b0a7d0a0a696e7075742e64697361626c6564207b0a09666f6e742d7765696768743a206e6f726d616c3b0a09636f6c6f723a20233636363636363b0a7d0a0a2f2a20546f70696320616e6420666f72756d20536561726368202a2f0a2e7365617263682d626f78207b0a096d617267696e2d746f703a203370783b0a096d617267696e2d6c6566743a203570783b0a09666c6f61743a206c6566743b0a7d0a0a2e7365617263682d626f7820696e707574207b0a7d0a0a696e7075742e736561726368207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a096261636b67726f756e642d7265706561743a206e6f2d7265706561743b0a096261636b67726f756e642d706f736974696f6e3a206c656674203170783b0a0970616464696e672d6c6566743a20313770783b0a7d0a0a2e66756c6c207b2077696474683a203935253b207d0a2e6d656469756d207b2077696474683a203530253b7d0a2e6e6172726f77207b2077696474683a203235253b7d0a2e74696e79207b2077696474683a203130253b7d0a2f2a205374796c6520536865657420547765616b730a0a5468657365207374796c6520646566696e6974696f6e7320617265206d61696e6c79204945207370656369666963200a747765616b732072657175697265642064756520746f2069747320706f6f722043535320737570706f72742e0a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a0a2a2068746d6c207461626c652c202a2068746d6c2073656c6563742c202a2068746d6c20696e707574207b20666f6e742d73697a653a20313030253b207d0a2a2068746d6c206872207b206d617267696e3a20303b207d0a2a2068746d6c207370616e2e636f726e6572732d746f702c202a2068746d6c207370616e2e636f726e6572732d626f74746f6d207b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f6c6566742e67696622293b207d0a2a2068746d6c207370616e2e636f726e6572732d746f70207370616e2c202a2068746d6c207370616e2e636f726e6572732d626f74746f6d207370616e207b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f72696768742e67696622293b207d0a0a7461626c652e7461626c6531207b0a0977696474683a203939253b09092f2a204945203c20362062726f7773657273202a2f0a092f2a2054616e74656b206861636b202a2f0a09766f6963652d66616d696c793a20225c227d5c22223b0a09766f6963652d66616d696c793a20696e68657269743b0a0977696474683a20313030253b0a7d0a68746d6c3e626f6479207461626c652e7461626c6531207b2077696474683a20313030253b207d092f2a205265736574203130302520666f72206f70657261202a2f0a0a2a2068746d6c20756c2e746f7069636c697374206c69207b20706f736974696f6e3a2072656c61746976653b207d0a2a2068746d6c202e706f7374626f647920683320696d67207b20766572746963616c2d616c69676e3a206d6964646c653b207d0a0a2f2a20466f726d207374796c6573202a2f0a68746d6c3e626f6479206464206c6162656c20696e707574207b20766572746963616c2d616c69676e3a20746578742d626f74746f6d3b207d092f2a20416c69676e20636865636b626f7865732f726164696f20627574746f6e73206e6963656c79202a2f0a0a2a2068746d6c20696e7075742e627574746f6e312c202a2068746d6c20696e7075742e627574746f6e32207b0a0970616464696e672d626f74746f6d3a20303b0a096d617267696e2d626f74746f6d3a203170783b0a7d0a0a2f2a204d697363206c61796f7574207374796c6573202a2f0a2a2068746d6c202e636f6c756d6e312c202a2068746d6c202e636f6c756d6e32207b2077696474683a203435253b207d0a0a2f2a204e696365206d6574686f6420666f7220636c656172696e6720666c6f6174656420626c6f636b7320776974686f757420686176696e6720746f20696e7365727420616e79206578747261206d61726b757020286c696b65207370616365722061626f7665290a20202046726f6d20687474703a2f2f7777772e706f736974696f6e697365766572797468696e672e6e65742f65617379636c656172696e672e68746d6c200a23746162733a61667465722c20236d696e69746162733a61667465722c202e706f73743a61667465722c202e6e61766261723a61667465722c206669656c6473657420646c3a61667465722c20756c2e746f7069636c69737420646c3a61667465722c20756c2e6c696e6b6c6973743a61667465722c20646c2e706f6c6c733a6166746572207b0a09636f6e74656e743a20222e223b200a09646973706c61793a20626c6f636b3b200a096865696768743a20303b200a09636c6561723a20626f74683b200a097669736962696c6974793a2068696464656e3b0a7d2a2f0a0a2e636c6561726669782c2023746162732c20236d696e69746162732c206669656c6473657420646c2c20756c2e746f7069636c69737420646c2c20646c2e706f6c6c73207b0a096865696768743a2031253b0a096f766572666c6f773a2068696464656e3b0a7d0a0a2f2a2076696577746f70696320666978202a2f0a2a2068746d6c202e706f7374207b0a096865696768743a203235253b0a096f766572666c6f773a2068696464656e3b0a7d0a0a2f2a206e617662617220666978202a2f0a2a2068746d6c202e636c6561726669782c202a2068746d6c202e6e61766261722c20756c2e6c696e6b6c697374207b0a096865696768743a2034253b0a096f766572666c6f773a2068696464656e3b0a7d0a0a2f2a2053696d706c652066697820736f20666f72756d20616e6420746f706963206c6973747320616c7761797320686176652061206d696e2d686569676874207365742c206576656e20696e204945360a0946726f6d20687474703a2f2f7777772e64757374696e6469617a2e636f6d2f6d696e2d6865696768742d666173742d6861636b202a2f0a646c2e69636f6e207b0a096d696e2d6865696768743a20333570783b0a096865696768743a206175746f2021696d706f7274616e743b0a096865696768743a20333570783b0a7d0a0a2a2068746d6c206c692e726f7720646c2e69636f6e206474207b0a096865696768743a20333570783b0a096f766572666c6f773a2076697369626c653b0a7d0a0a2a2068746d6c20237365617263682d626f78207b0a0977696474683a203235253b0a7d0a0a2f2a20436f72726563746c7920636c65617220666c6f6174696e6720666f722064657461696c73206f6e2070726f66696c652076696577202a2f0a2a3a66697273742d6368696c642b68746d6c20646c2e64657461696c73206464207b0a096d617267696e2d6c6566743a203330253b0a09666c6f61743a206e6f6e653b0a7d0a0a2a2068746d6c20646c2e64657461696c73206464207b0a096d617267696e2d6c6566743a203330253b0a09666c6f61743a206e6f6e653b0a7d0a0a2a2068746d6c202e666f72756d6267207461626c652e7461626c6531207b0a096d617267696e3a2030202d32707820307078202d3170783b0a7d0a0a2f2a20486561646572626172206865696768742066697820666f722049453720616e642062656c6f77202a2f0a2a2068746d6c2023736974652d6465736372697074696f6e2070207b0a096d617267696e2d626f74746f6d3a20312e30656d3b0a7d0a0a2a3a66697273742d6368696c642b68746d6c2023736974652d6465736372697074696f6e2070207b0a096d617267696e2d626f74746f6d3a20312e30656d3b0a7d0a2f2a2020090a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d0a436f6c6f75727320616e64206261636b67726f756e647320666f7220636f6d6d6f6e2e6373730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a68746d6c2c20626f6479207b0a09636f6c6f723a20233533363438323b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a7d0a0a6831207b0a09636f6c6f723a20234646464646463b0a7d0a0a6832207b0a09636f6c6f723a20233238333133463b0a7d0a0a6833207b0a09626f726465722d626f74746f6d2d636f6c6f723a20234343434343433b0a09636f6c6f723a20233131353039383b0a7d0a0a6872207b0a09626f726465722d636f6c6f723a20234646464646463b0a09626f726465722d746f702d636f6c6f723a20234343434343433b0a7d0a0a68722e646173686564207b0a09626f726465722d746f702d636f6c6f723a20234343434343433b0a7d0a0a2f2a2053656172636820626f780a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a237365617263682d626f78207b0a09636f6c6f723a20234646464646463b0a7d0a0a237365617263682d626f7820236b6579776f726473207b0a096261636b67726f756e642d636f6c6f723a20234646463b0a7d0a0a237365617263682d626f7820696e707574207b0a09626f726465722d636f6c6f723a20233030373542303b0a7d0a0a2f2a20526f756e6420636f726e6572656420626f78657320616e64206261636b67726f756e64730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a2e686561646572626172207b0a096261636b67726f756e642d636f6c6f723a20233132413345423b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f62675f6865616465722e67696622293b0a09636f6c6f723a20234646464646463b0a7d0a0a2e6e6176626172207b0a096261636b67726f756e642d636f6c6f723a20236361646365623b0a7d0a0a2e666f72616267207b0a096261636b67726f756e642d636f6c6f723a20233030373662313b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f62675f6c6973742e67696622293b0a7d0a0a2e666f72756d6267207b0a096261636b67726f756e642d636f6c6f723a20233132413345423b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f62675f6865616465722e67696622293b0a7d0a0a2e70616e656c207b0a096261636b67726f756e642d636f6c6f723a20234543463146333b0a09636f6c6f723a20233238333133463b0a7d0a0a2e706f73743a746172676574202e636f6e74656e74207b0a09636f6c6f723a20233030303030303b0a7d0a0a2e706f73743a7461726765742068332061207b0a09636f6c6f723a20233030303030303b0a7d0a0a2e626731097b206261636b67726f756e642d636f6c6f723a20234543463346373b207d0a2e626732097b206261636b67726f756e642d636f6c6f723a20236531656266323b20207d0a2e626733097b206261636b67726f756e642d636f6c6f723a20236361646365623b207d0a0a2e756370726f776267207b0a096261636b67726f756e642d636f6c6f723a20234443444545323b0a7d0a0a2e6669656c64736267207b0a096261636b67726f756e642d636f6c6f723a20234537453845413b0a7d0a0a7370616e2e636f726e6572732d746f70207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f6c6566742e706e6722293b0a7d0a0a7370616e2e636f726e6572732d746f70207370616e207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f72696768742e706e6722293b0a7d0a0a7370616e2e636f726e6572732d626f74746f6d207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f6c6566742e706e6722293b0a7d0a0a7370616e2e636f726e6572732d626f74746f6d207370616e207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f72696768742e706e6722293b0a7d0a0a2f2a20486f72697a6f6e74616c206c697374730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a0a756c2e6e61766c696e6b73207b0a09626f726465722d626f74746f6d2d636f6c6f723a20234646464646463b0a7d0a0a2f2a205461626c65207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a7461626c652e7461626c6531207468656164207468207b0a09636f6c6f723a20234646464646463b0a7d0a0a7461626c652e7461626c65312074626f6479207472207b0a09626f726465722d636f6c6f723a20234246433143463b0a7d0a0a7461626c652e7461626c65312074626f64792074723a686f7665722c207461626c652e7461626c65312074626f64792074722e686f766572207b0a096261636b67726f756e642d636f6c6f723a20234346453146363b0a09636f6c6f723a20233030303b0a7d0a0a7461626c652e7461626c6531207464207b0a09636f6c6f723a20233533363438323b0a7d0a0a7461626c652e7461626c65312074626f6479207464207b0a09626f726465722d746f702d636f6c6f723a20234641464146413b0a7d0a0a7461626c652e7461626c65312074626f6479207468207b0a09626f726465722d626f74746f6d2d636f6c6f723a20233030303030303b0a09636f6c6f723a20233333333333333b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a7d0a0a7461626c652e696e666f2074626f6479207468207b0a09636f6c6f723a20233030303030303b0a7d0a0a2f2a204d697363206c61796f7574207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a646c2e64657461696c73206474207b0a09636f6c6f723a20233030303030303b0a7d0a0a646c2e64657461696c73206464207b0a09636f6c6f723a20233533363438323b0a7d0a0a2e736570207b0a09636f6c6f723a20233131393844393b0a7d0a0a2f2a20506167696e6174696f6e0a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a2e706167696e6174696f6e207370616e207374726f6e67207b0a09636f6c6f723a20234646464646463b0a096261636b67726f756e642d636f6c6f723a20233436393242463b0a09626f726465722d636f6c6f723a20233436393242463b0a7d0a0a2e706167696e6174696f6e207370616e20612c202e706167696e6174696f6e207370616e20613a6c696e6b2c202e706167696e6174696f6e207370616e20613a76697369746564207b0a09636f6c6f723a20233543373538433b0a096261636b67726f756e642d636f6c6f723a20234543454445453b0a09626f726465722d636f6c6f723a20234234424143303b0a7d0a0a2e706167696e6174696f6e207370616e20613a686f766572207b0a09626f726465722d636f6c6f723a20233336384144323b0a096261636b67726f756e642d636f6c6f723a20233336384144323b0a09636f6c6f723a20234646463b0a7d0a0a2e706167696e6174696f6e207370616e20613a616374697665207b0a09636f6c6f723a20233543373538433b0a096261636b67726f756e642d636f6c6f723a20234543454445453b0a09626f726465722d636f6c6f723a20234234424143303b0a7d0a0a2f2a20506167696e6174696f6e20696e2076696577666f72756d20666f72206d756c74697061676520746f70696373202a2f0a2e726f77202e706167696e6174696f6e207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f70616765732e67696622293b0a7d0a0a2e726f77202e706167696e6174696f6e207370616e20612c206c692e706167696e6174696f6e207370616e2061207b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a7d0a0a2e726f77202e706167696e6174696f6e207370616e20613a686f7665722c206c692e706167696e6174696f6e207370616e20613a686f766572207b0a096261636b67726f756e642d636f6c6f723a20233336384144323b0a7d0a0a2f2a204d697363656c6c616e656f7573207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a2e636f70797269676874207b0a09636f6c6f723a20233535353535353b0a7d0a0a2e6572726f72207b0a09636f6c6f723a20234243324134443b0a7d0a0a2e7265706f72746564207b0a096261636b67726f756e642d636f6c6f723a20234637454345463b0a7d0a0a6c692e7265706f727465643a686f766572207b0a096261636b67726f756e642d636f6c6f723a20234543443544382021696d706f7274616e743b0a7d0a2e737469636b792c202e616e6e6f756e6365207b0a092f2a20796f752063616e206164642061206261636b67726f756e6420666f7220737469636b69657320616e6420616e6e6f756e63656d656e74732a2f0a7d0a0a6469762e72756c6573207b0a096261636b67726f756e642d636f6c6f723a20234543443544383b0a09636f6c6f723a20234243324134443b0a7d0a0a702e72756c6573207b0a096261636b67726f756e642d636f6c6f723a20234543443544383b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a7d0a0a2f2a2020090a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d0a436f6c6f75727320616e64206261636b67726f756e647320666f72206c696e6b732e6373730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a613a6c696e6b097b20636f6c6f723a20233130353238393b207d0a613a76697369746564097b20636f6c6f723a20233130353238393b207d0a613a686f766572097b20636f6c6f723a20234433313134313b207d0a613a616374697665097b20636f6c6f723a20233336384144323b207d0a0a2f2a204c696e6b73206f6e206772616469656e74206261636b67726f756e6473202a2f0a237365617263682d626f7820613a6c696e6b2c202e6e6176626720613a6c696e6b2c202e666f72756d6267202e68656164657220613a6c696e6b2c202e666f72616267202e68656164657220613a6c696e6b2c20746820613a6c696e6b207b0a09636f6c6f723a20234646464646463b0a7d0a0a237365617263682d626f7820613a766973697465642c202e6e6176626720613a766973697465642c202e666f72756d6267202e68656164657220613a766973697465642c202e666f72616267202e68656164657220613a766973697465642c20746820613a76697369746564207b0a09636f6c6f723a20234646464646463b0a7d0a0a237365617263682d626f7820613a686f7665722c202e6e6176626720613a686f7665722c202e666f72756d6267202e68656164657220613a686f7665722c202e666f72616267202e68656164657220613a686f7665722c20746820613a686f766572207b0a09636f6c6f723a20234138443846463b0a7d0a0a237365617263682d626f7820613a6163746976652c202e6e6176626720613a6163746976652c202e666f72756d6267202e68656164657220613a6163746976652c202e666f72616267202e68656164657220613a6163746976652c20746820613a616374697665207b0a09636f6c6f723a20234338453646463b0a7d0a0a2f2a204c696e6b7320666f7220666f72756d2f746f706963206c69737473202a2f0a612e666f72756d7469746c65207b0a09636f6c6f723a20233130353238393b0a7d0a0a2f2a20612e666f72756d7469746c653a76697369746564207b20636f6c6f723a20233130353238393b207d202a2f0a0a612e666f72756d7469746c653a686f766572207b0a09636f6c6f723a20234243324134443b0a7d0a0a612e666f72756d7469746c653a616374697665207b0a09636f6c6f723a20233130353238393b0a7d0a0a612e746f7069637469746c65207b0a09636f6c6f723a20233130353238393b0a7d0a0a2f2a20612e746f7069637469746c653a76697369746564207b20636f6c6f723a20233336384144323b207d202a2f0a0a612e746f7069637469746c653a686f766572207b0a09636f6c6f723a20234243324134443b0a7d0a0a612e746f7069637469746c653a616374697665207b0a09636f6c6f723a20233130353238393b0a7d0a0a2f2a20506f737420626f6479206c696e6b73202a2f0a2e706f73746c696e6b207b0a09636f6c6f723a20233336384144323b0a09626f726465722d626f74746f6d2d636f6c6f723a20233336384144323b0a7d0a0a2e706f73746c696e6b3a76697369746564207b0a09636f6c6f723a20233544384642443b0a09626f726465722d626f74746f6d2d636f6c6f723a20233544384642443b0a7d0a0a2e706f73746c696e6b3a616374697665207b0a09636f6c6f723a20233336384144323b0a7d0a0a2e706f73746c696e6b3a686f766572207b0a096261636b67726f756e642d636f6c6f723a20234430453446363b0a09636f6c6f723a20233044343437333b0a7d0a0a2e7369676e617475726520612c202e7369676e617475726520613a766973697465642c202e7369676e617475726520613a686f7665722c202e7369676e617475726520613a616374697665207b0a096261636b67726f756e642d636f6c6f723a207472616e73706172656e743b0a7d0a0a2f2a2050726f66696c65206c696e6b73202a2f0a2e706f737470726f66696c6520613a6c696e6b2c202e706f737470726f66696c6520613a766973697465642c202e706f737470726f66696c652064742e617574686f722061207b0a09636f6c6f723a20233130353238393b0a7d0a0a2e706f737470726f66696c6520613a686f7665722c202e706f737470726f66696c652064742e617574686f7220613a686f766572207b0a09636f6c6f723a20234433313134313b0a7d0a0a2e706f737470726f66696c6520613a616374697665207b0a09636f6c6f723a20233130353238393b0a7d0a0a2f2a2050726f66696c6520736561726368726573756c7473202a2f090a2e736561726368202e706f737470726f66696c652061207b0a09636f6c6f723a20233130353238393b0a7d0a0a2e736561726368202e706f737470726f66696c6520613a686f766572207b0a09636f6c6f723a20234433313134313b0a7d0a0a2f2a204261636b20746f20746f70206f662070616765202a2f0a612e746f70207b0a096261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f4241434b5f544f505f5352437d22293b0a7d0a0a612e746f7032207b0a096261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f4241434b5f544f505f5352437d22293b0a7d0a0a2f2a204172726f77206c696e6b7320202a2f0a612e757009097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f6172726f775f75702e6769662229207d0a612e646f776e09097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f6172726f775f646f776e2e6769662229207d0a612e6c65667409097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f6172726f775f6c6566742e6769662229207d0a612e726967687409097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f6172726f775f72696768742e6769662229207d0a0a612e75703a686f766572207b0a096261636b67726f756e642d636f6c6f723a207472616e73706172656e743b0a7d0a0a612e6c6566743a686f766572207b0a09636f6c6f723a20233336384144323b0a7d0a0a612e72696768743a686f766572207b0a09636f6c6f723a20233336384144323b0a7d0a0a0a2f2a2020090a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d0a436f6c6f75727320616e64206261636b67726f756e647320666f7220636f6e74656e742e6373730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a756c2e666f72756d73207b0a096261636b67726f756e642d636f6c6f723a20236565663566393b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f6772616469656e742e67696622293b0a7d0a0a756c2e746f7069636c697374206c69207b0a09636f6c6f723a20233443354437373b0a7d0a0a756c2e746f7069636c697374206464207b0a09626f726465722d6c6566742d636f6c6f723a20234646464646463b0a7d0a0a2e72746c20756c2e746f7069636c697374206464207b0a09626f726465722d72696768742d636f6c6f723a20236666663b0a09626f726465722d6c6566742d636f6c6f723a207472616e73706172656e743b0a7d0a0a756c2e746f7069636c697374206c692e726f7720647420612e737562666f72756d2e72656164207b0a096261636b67726f756e642d696d6167653a2075726c28227b494d475f535542464f52554d5f524541445f5352437d22293b0a7d0a0a756c2e746f7069636c697374206c692e726f7720647420612e737562666f72756d2e756e72656164207b0a096261636b67726f756e642d696d6167653a2075726c28227b494d475f535542464f52554d5f554e524541445f5352437d22293b0a7d0a0a6c692e726f77207b0a09626f726465722d746f702d636f6c6f723a2020234646464646463b0a09626f726465722d626f74746f6d2d636f6c6f723a20233030363038463b0a7d0a0a6c692e726f77207374726f6e67207b0a09636f6c6f723a20233030303030303b0a7d0a0a6c692e726f773a686f766572207b0a096261636b67726f756e642d636f6c6f723a20234636463444303b0a7d0a0a6c692e726f773a686f766572206464207b0a09626f726465722d6c6566742d636f6c6f723a20234343434343433b0a7d0a0a2e72746c206c692e726f773a686f766572206464207b0a09626f726465722d72696768742d636f6c6f723a20234343434343433b0a09626f726465722d6c6566742d636f6c6f723a207472616e73706172656e743b0a7d0a0a6c692e6865616465722064742c206c692e686561646572206464207b0a09636f6c6f723a20234646464646463b0a7d0a0a2f2a20466f72756d206c69737420636f6c756d6e207374796c6573202a2f0a756c2e746f7069636c6973742064642e7365617263686578747261207b0a09636f6c6f723a20233333333333333b0a7d0a0a2f2a20506f737420626f6479207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2e706f7374626f6479207b0a09636f6c6f723a20233333333333333b0a7d0a0a2f2a20436f6e74656e7420636f6e7461696e6572207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2e636f6e74656e74207b0a09636f6c6f723a20233333333333333b0a7d0a0a2e636f6e74656e742068322c202e70616e656c206832207b0a09636f6c6f723a20233131353039383b0a09626f726465722d626f74746f6d2d636f6c6f723a2020234343434343433b0a7d0a0a646c2e666171206474207b0a09636f6c6f723a20233333333333333b0a7d0a0a2e706f737468696c6974207b0a096261636b67726f756e642d636f6c6f723a20234633424643433b0a09636f6c6f723a20234243324134443b0a7d0a0a2f2a20506f7374207369676e6174757265202a2f0a2e7369676e6174757265207b0a09626f726465722d746f702d636f6c6f723a20234343434343433b0a7d0a0a2f2a20506f7374206e6f746963696573202a2f0a2e6e6f74696365207b0a09626f726465722d746f702d636f6c6f723a2020234343434343433b0a7d0a0a2f2a20424220436f6465207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2f2a2051756f746520626c6f636b202a2f0a626c6f636b71756f7465207b0a096261636b67726f756e642d636f6c6f723a20234542454144443b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f71756f74652e67696622293b0a09626f726465722d636f6c6f723a234442444243453b0a7d0a0a2e72746c20626c6f636b71756f7465207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f71756f74655f72746c2e67696622293b0a7d0a0a626c6f636b71756f746520626c6f636b71756f7465207b0a092f2a204e65737465642071756f746573202a2f0a096261636b67726f756e642d636f6c6f723a234546454544393b0a7d0a0a626c6f636b71756f746520626c6f636b71756f746520626c6f636b71756f7465207b0a092f2a204e65737465642071756f746573202a2f0a096261636b67726f756e642d636f6c6f723a20234542454144443b0a7d0a0a2f2a20436f646520626c6f636b202a2f0a646c2e636f6465626f78207b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a09626f726465722d636f6c6f723a20234339443244383b0a7d0a0a646c2e636f6465626f78206474207b0a09626f726465722d626f74746f6d2d636f6c6f723a2020234343434343433b0a7d0a0a646c2e636f6465626f7820636f6465207b0a09636f6c6f723a20233245384235373b0a7d0a0a2e73796e746178626709097b20636f6c6f723a20234646464646463b207d0a2e73796e746178636f6d6d656e74097b20636f6c6f723a20234646383030303b207d0a2e73796e74617864656661756c74097b20636f6c6f723a20233030303042423b207d0a2e73796e74617868746d6c09097b20636f6c6f723a20233030303030303b207d0a2e73796e7461786b6579776f7264097b20636f6c6f723a20233030373730303b207d0a2e73796e746178737472696e67097b20636f6c6f723a20234444303030303b207d0a0a2f2a204174746163686d656e74730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2e617474616368626f78207b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a09626f726465722d636f6c6f723a2020234339443244383b0a7d0a0a2e706d2d6d657373616765202e617474616368626f78207b0a096261636b67726f756e642d636f6c6f723a20234632463346333b0a7d0a0a2e617474616368626f78206464207b0a09626f726465722d746f702d636f6c6f723a20234339443244383b0a7d0a0a2e617474616368626f782070207b0a09636f6c6f723a20233636363636363b0a7d0a0a2e617474616368626f7820702e7374617473207b0a09636f6c6f723a20233636363636363b0a7d0a0a2e6174746163682d696d61676520696d67207b0a09626f726465722d636f6c6f723a20233939393939393b0a7d0a0a2f2a20496e6c696e6520696d616765207468756d626e61696c73202a2f0a0a646c2e66696c65206464207b0a09636f6c6f723a20233636363636363b0a7d0a0a646c2e7468756d626e61696c20696d67207b0a09626f726465722d636f6c6f723a20233636363636363b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a7d0a0a646c2e7468756d626e61696c206464207b0a09636f6c6f723a20233636363636363b0a7d0a0a646c2e7468756d626e61696c20647420613a686f766572207b0a096261636b67726f756e642d636f6c6f723a20234545454545453b0a7d0a0a646c2e7468756d626e61696c20647420613a686f76657220696d67207b0a09626f726465722d636f6c6f723a20233336384144323b0a7d0a0a2f2a20506f737420706f6c6c207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a0a6669656c647365742e706f6c6c7320646c207b0a09626f726465722d746f702d636f6c6f723a20234443444545323b0a09636f6c6f723a20233636363636363b0a7d0a0a6669656c647365742e706f6c6c7320646c2e766f746564207b0a09636f6c6f723a20233030303030303b0a7d0a0a6669656c647365742e706f6c6c7320646420646976207b0a09636f6c6f723a20234646464646463b0a7d0a0a2e72746c202e706f6c6c626172312c202e72746c202e706f6c6c626172322c202e72746c202e706f6c6c626172332c202e72746c202e706f6c6c626172342c202e72746c202e706f6c6c62617235207b0a09626f726465722d72696768742d636f6c6f723a207472616e73706172656e743b0a7d0a0a2e706f6c6c62617231207b0a096261636b67726f756e642d636f6c6f723a20234141323334363b0a09626f726465722d626f74746f6d2d636f6c6f723a20233734313632433b0a09626f726465722d72696768742d636f6c6f723a20233734313632433b0a7d0a0a2e72746c202e706f6c6c62617231207b0a09626f726465722d6c6566742d636f6c6f723a20233734313632433b0a7d0a0a2e706f6c6c62617232207b0a096261636b67726f756e642d636f6c6f723a20234245314534413b0a09626f726465722d626f74746f6d2d636f6c6f723a20233843314333383b0a09626f726465722d72696768742d636f6c6f723a20233843314333383b0a7d0a0a2e72746c202e706f6c6c62617232207b0a09626f726465722d6c6566742d636f6c6f723a20233843314333383b0a7d0a0a2e706f6c6c62617233207b0a096261636b67726f756e642d636f6c6f723a20234431314134453b0a09626f726465722d626f74746f6d2d636f6c6f723a20234141323334363b0a09626f726465722d72696768742d636f6c6f723a20234141323334363b0a7d0a0a2e72746c202e706f6c6c62617233207b0a09626f726465722d6c6566742d636f6c6f723a20234141323334363b0a7d0a0a2e706f6c6c62617234207b0a096261636b67726f756e642d636f6c6f723a20234534313635333b0a09626f726465722d626f74746f6d2d636f6c6f723a20234245314534413b0a09626f726465722d72696768742d636f6c6f723a20234245314534413b0a7d0a0a2e72746c202e706f6c6c62617234207b0a09626f726465722d6c6566742d636f6c6f723a20234245314534413b0a7d0a0a2e706f6c6c62617235207b0a096261636b67726f756e642d636f6c6f723a20234638313135373b0a09626f726465722d626f74746f6d2d636f6c6f723a20234431314134453b0a09626f726465722d72696768742d636f6c6f723a20234431314134453b0a7d0a0a2e72746c202e706f6c6c62617235207b0a09626f726465722d6c6566742d636f6c6f723a20234431314134453b0a7d0a0a2f2a20506f737465722070726f66696c6520626c6f636b0a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2e706f737470726f66696c65207b0a09636f6c6f723a20233636363636363b0a09626f726465722d6c6566742d636f6c6f723a20234646464646463b0a7d0a0a2e72746c202e706f737470726f66696c65207b0a09626f726465722d72696768742d636f6c6f723a20234646464646463b0a09626f726465722d6c6566742d636f6c6f723a207472616e73706172656e743b0a7d0a0a2e706d202e706f737470726f66696c65207b0a09626f726465722d6c6566742d636f6c6f723a20234444444444443b0a7d0a0a2e72746c202e706d202e706f737470726f66696c65207b0a09626f726465722d72696768742d636f6c6f723a20234444444444443b0a09626f726465722d6c6566742d636f6c6f723a207472616e73706172656e743b0a7d0a0a2e706f737470726f66696c65207374726f6e67207b0a09636f6c6f723a20233030303030303b0a7d0a0a2e6f6e6c696e65207b0a096261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f555345525f4f4e4c494e455f5352437d22293b0a7d0a0a2f2a2020090a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d0a436f6c6f75727320616e64206261636b67726f756e647320666f7220627574746f6e732e6373730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a2f2a2042696720627574746f6e20696d61676573202a2f0a2e7265706c792d69636f6e207370616e097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f425554544f4e5f544f5049435f5245504c595f5352437d22293b207d0a2e706f73742d69636f6e207370616e09097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f425554544f4e5f544f5049435f4e45575f5352437d22293b207d0a2e6c6f636b65642d69636f6e207370616e097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f425554544f4e5f544f5049435f4c4f434b45445f5352437d22293b207d0a2e706d7265706c792d69636f6e207370616e097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f425554544f4e5f504d5f5245504c595f5352437d2229203b7d0a2e6e6577706d2d69636f6e207370616e20097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f425554544f4e5f504d5f4e45575f5352437d2229203b7d0a2e666f7277617264706d2d69636f6e207370616e097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f425554544f4e5f504d5f464f52574152445f5352437d2229203b7d0a0a612e7072696e74207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f7072696e742e67696622293b0a7d0a0a612e73656e64656d61696c207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f73656e64656d61696c2e67696622293b0a7d0a0a612e666f6e7473697a65207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f666f6e7473697a652e67696622293b0a7d0a0a2f2a2049636f6e20696d616765730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a2e73697465686f6d650909090909097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f686f6d652e67696622293b207d0a2e69636f6e2d6661710909090909097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f6661712e67696622293b207d0a2e69636f6e2d6d656d6265727309090909097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f6d656d626572732e67696622293b207d0a2e69636f6e2d686f6d650909090909097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f686f6d652e67696622293b207d0a2e69636f6e2d7563700909090909097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f7563702e67696622293b207d0a2e69636f6e2d726567697374657209090909097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f72656769737465722e67696622293b207d0a2e69636f6e2d6c6f676f757409090909097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f6c6f676f75742e67696622293b207d0a2e69636f6e2d626f6f6b6d61726b09090909097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f626f6f6b6d61726b2e67696622293b207d0a2e69636f6e2d62756d700909090909097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f62756d702e67696622293b207d0a2e69636f6e2d73756273637269626509090909097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f7375627363726962652e67696622293b207d0a2e69636f6e2d756e737562736372696265090909097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f756e7375627363726962652e67696622293b207d0a2e69636f6e2d70616765730909090909097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f70616765732e67696622293b207d0a2e69636f6e2d73656172636809090909097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f7365617263682e67696622293b207d0a0a2f2a2050726f66696c652026206e617669676174696f6e2069636f6e73202a2f0a2e656d61696c2d69636f6e2c202e656d61696c2d69636f6e206109097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f434f4e544143545f454d41494c5f5352437d22293b207d0a2e61696d2d69636f6e2c202e61696d2d69636f6e20610909097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f434f4e544143545f41494d5f5352437d22293b207d0a2e7961686f6f2d69636f6e2c202e7961686f6f2d69636f6e206109097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f434f4e544143545f5941484f4f5f5352437d22293b207d0a2e7765622d69636f6e2c202e7765622d69636f6e20610909097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f434f4e544143545f5757575f5352437d22293b207d0a2e6d736e6d2d69636f6e2c202e6d736e6d2d69636f6e20610909097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f434f4e544143545f4d534e4d5f5352437d22293b207d0a2e6963712d69636f6e2c202e6963712d69636f6e20610909097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f434f4e544143545f4943515f5352437d22293b207d0a2e6a61626265722d69636f6e2c202e6a61626265722d69636f6e206109097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f434f4e544143545f4a41424245525f5352437d22293b207d0a2e706d2d69636f6e2c202e706d2d69636f6e2061090909097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f434f4e544143545f504d5f5352437d22293b207d0a2e71756f74652d69636f6e2c202e71756f74652d69636f6e206109097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f504f53545f51554f54455f5352437d22293b207d0a0a2f2a204d6f64657261746f722069636f6e73202a2f0a2e7265706f72742d69636f6e2c202e7265706f72742d69636f6e206109097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f504f53545f5245504f52545f5352437d22293b207d0a2e656469742d69636f6e2c202e656469742d69636f6e20610909097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f504f53545f454449545f5352437d22293b207d0a2e64656c6574652d69636f6e2c202e64656c6574652d69636f6e206109097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f504f53545f44454c4554455f5352437d22293b207d0a2e696e666f2d69636f6e2c202e696e666f2d69636f6e20610909097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f504f53545f494e464f5f5352437d22293b207d0a2e7761726e2d69636f6e2c202e7761726e2d69636f6e20610909097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f555345525f5741524e5f5352437d22293b207d202f2a204e6565642075706461746564207761726e2069636f6e202a2f0a0a2f2a2020090a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d0a436f6c6f75727320616e64206261636b67726f756e647320666f722063702e6373730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a2f2a204d61696e20435020626f780a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a0a2363702d6d61696e2068332c202363702d6d61696e2068722c202363702d6d656e75206872207b0a09626f726465722d636f6c6f723a20234134423342463b0a7d0a0a2363702d6d61696e202e70616e656c206c692e726f77207b0a09626f726465722d626f74746f6d2d636f6c6f723a20234235433143423b0a09626f726465722d746f702d636f6c6f723a20234639463946393b0a7d0a0a756c2e63706c697374207b0a09626f726465722d746f702d636f6c6f723a20234235433143423b0a7d0a0a2363702d6d61696e202e70616e656c206c692e6865616465722064642c202363702d6d61696e202e70616e656c206c692e686561646572206474207b0a09636f6c6f723a20233030303030303b0a7d0a0a2363702d6d61696e207461626c652e7461626c6531207468656164207468207b0a09636f6c6f723a20233333333333333b0a09626f726465722d626f74746f6d2d636f6c6f723a20233333333333333b0a7d0a0a2363702d6d61696e202e706d2d6d657373616765207b0a09626f726465722d636f6c6f723a20234442444545323b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a7d0a0a2f2a20435020746162626564206d656e750a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a23746162732061207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f62675f74616273312e67696622293b0a7d0a0a23746162732061207370616e207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f62675f74616273322e67696622293b0a09636f6c6f723a20233533363438323b0a7d0a0a237461627320613a686f766572207370616e207b0a09636f6c6f723a20234243324134443b0a7d0a0a2374616273202e6163746976657461622061207b0a09626f726465722d626f74746f6d2d636f6c6f723a20234341444345423b0a7d0a0a2374616273202e6163746976657461622061207370616e207b0a09636f6c6f723a20233333333333333b0a7d0a0a2374616273202e61637469766574616220613a686f766572207370616e207b0a09636f6c6f723a20233030303030303b0a7d0a0a2f2a204d696e6920746162626564206d656e75207573656420696e204d43500a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a236d696e6974616273206c69207b0a096261636b67726f756e642d636f6c6f723a20234531454246323b0a7d0a0a236d696e6974616273206c692e616374697665746162207b0a096261636b67726f756e642d636f6c6f723a20234639463946393b0a7d0a0a236d696e6974616273206c692e61637469766574616220612c20236d696e6974616273206c692e61637469766574616220613a686f766572207b0a09636f6c6f723a20233333333333333b0a7d0a0a2f2a20554350206e617669676174696f6e206d656e750a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a0a2f2a204c696e6b207374796c657320666f7220746865207375622d73656374696f6e206c696e6b73202a2f0a236e617669676174696f6e2061207b0a09636f6c6f723a20233333333b0a096261636b67726f756e642d636f6c6f723a20234232433243463b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f62675f6d656e752e67696622293b0a7d0a0a2e72746c20236e617669676174696f6e2061207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f62675f6d656e755f72746c2e67696622293b0a096261636b67726f756e642d706f736974696f6e3a203020313030253b0a7d0a0a236e617669676174696f6e20613a686f766572207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a096261636b67726f756e642d636f6c6f723a20236161626163363b0a09636f6c6f723a20234243324134443b0a7d0a0a236e617669676174696f6e20236163746976652d73756273656374696f6e2061207b0a09636f6c6f723a20234433313134313b0a096261636b67726f756e642d636f6c6f723a20234639463946393b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a7d0a0a236e617669676174696f6e20236163746976652d73756273656374696f6e20613a686f766572207b0a09636f6c6f723a20234433313134313b0a7d0a0a2f2a20507265666572656e6365732070616e65206c61796f75740a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2363702d6d61696e206832207b0a09636f6c6f723a20233333333333333b0a7d0a0a2363702d6d61696e202e70616e656c207b0a096261636b67726f756e642d636f6c6f723a20234639463946393b0a7d0a0a2363702d6d61696e202e706d207b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a7d0a0a2363702d6d61696e207370616e2e636f726e6572732d746f702c202363702d6d656e75207370616e2e636f726e6572732d746f70207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f6c656674322e67696622293b0a7d0a0a2363702d6d61696e207370616e2e636f726e6572732d746f70207370616e2c202363702d6d656e75207370616e2e636f726e6572732d746f70207370616e207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f7269676874322e67696622293b0a7d0a0a2363702d6d61696e207370616e2e636f726e6572732d626f74746f6d2c202363702d6d656e75207370616e2e636f726e6572732d626f74746f6d207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f6c656674322e67696622293b0a7d0a0a2363702d6d61696e207370616e2e636f726e6572732d626f74746f6d207370616e2c202363702d6d656e75207370616e2e636f726e6572732d626f74746f6d207370616e207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f7269676874322e67696622293b0a7d0a0a2f2a20546f706963726576696577202a2f0a2363702d6d61696e202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d746f702c202363702d6d656e75202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d746f70207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f6c6566742e67696622293b0a7d0a0a2363702d6d61696e202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d746f70207370616e2c202363702d6d656e75202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d746f70207370616e207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f72696768742e67696622293b0a7d0a0a2363702d6d61696e202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d626f74746f6d2c202363702d6d656e75202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d626f74746f6d207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f6c6566742e67696622293b0a7d0a0a2363702d6d61696e202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d626f74746f6d207370616e2c202363702d6d656e75202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d626f74746f6d207370616e207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f72696768742e67696622293b0a7d0a0a2f2a20467269656e6473206c697374202a2f0a2e63702d6d696e69207b0a096261636b67726f756e642d636f6c6f723a20236565663566393b0a7d0a0a646c2e6d696e69206474207b0a09636f6c6f723a20233432353036373b0a7d0a0a2f2a20504d205374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2f2a20504d204d65737361676520686973746f7279202a2f0a2e63757272656e74207b0a09636f6c6f723a20233030303030302021696d706f7274616e743b0a7d0a0a2f2a20504d2070616e656c2061646a7573746d656e7473202a2f0a2e706d2d70616e656c2d6865616465722c0a2363702d6d61696e202e706d2d6d6573736167652d6e6176207b0a09626f726465722d626f74746f6d2d636f6c6f723a20234134423342463b0a7d0a0a2f2a20504d206d61726b696e6720636f6c6f757273202a2f0a2e706d6c697374206c692e706d5f6d6573736167655f7265706f727465645f636f6c6f75722c202e706d5f6d6573736167655f7265706f727465645f636f6c6f7572207b0a09626f726465722d6c6566742d636f6c6f723a20234243324134443b0a09626f726465722d72696768742d636f6c6f723a20234243324134443b0a7d0a0a2e706d6c697374206c692e706d5f6d61726b65645f636f6c6f75722c202e706d5f6d61726b65645f636f6c6f7572207b0a09626f726465722d636f6c6f723a20234646363630303b0a7d0a0a2e706d6c697374206c692e706d5f7265706c6965645f636f6c6f75722c202e706d5f7265706c6965645f636f6c6f7572207b0a09626f726465722d636f6c6f723a20234139423843323b0a7d0a0a2e706d6c697374206c692e706d5f667269656e645f636f6c6f75722c202e706d5f667269656e645f636f6c6f7572207b0a09626f726465722d636f6c6f723a20233544384642443b0a7d0a0a2e706d6c697374206c692e706d5f666f655f636f6c6f75722c202e706d5f666f655f636f6c6f7572207b0a09626f726465722d636f6c6f723a20233030303030303b0a7d0a0a2f2a204176617461722067616c6c657279202a2f0a2367616c6c657279206c6162656c207b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a09626f726465722d636f6c6f723a20234343433b0a7d0a0a2367616c6c657279206c6162656c3a686f766572207b0a096261636b67726f756e642d636f6c6f723a20234545453b0a7d0a0a2f2a2020090a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d0a436f6c6f75727320616e64206261636b67726f756e647320666f7220666f726d732e6373730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a2f2a2047656e6572616c20666f726d207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a73656c656374207b0a09626f726465722d636f6c6f723a20233636363636363b0a096261636b67726f756e642d636f6c6f723a20234641464146413b0a09636f6c6f723a20233030303b0a7d0a0a6c6162656c207b0a09636f6c6f723a20233432353036373b0a7d0a0a6f7074696f6e2e64697361626c65642d6f7074696f6e207b0a09636f6c6f723a2067726179746578743b0a7d0a0a2f2a20446566696e6974696f6e206c697374206c61796f757420666f7220666f726d730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a6464206c6162656c207b0a09636f6c6f723a20233333333b0a7d0a0a2f2a20486f7665722065666665637473202a2f0a6669656c6473657420646c3a686f766572206474206c6162656c207b0a09636f6c6f723a20233030303030303b0a7d0a0a6669656c647365742e6669656c64733220646c3a686f766572206474206c6162656c207b0a09636f6c6f723a20696e68657269743b0a7d0a0a2f2a20517569636b2d6c6f67696e206f6e20696e6465782070616765202a2f0a6669656c647365742e717569636b2d6c6f67696e20696e7075742e696e707574626f78207b0a096261636b67726f756e642d636f6c6f723a20234632463346333b0a7d0a0a2f2a20506f7374696e672070616765207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a0a236d6573736167652d626f78207465787461726561207b0a09636f6c6f723a20233333333333333b0a7d0a0a2f2a20496e707574206669656c64207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a2e696e707574626f78207b0a096261636b67726f756e642d636f6c6f723a20234646464646463b200a09626f726465722d636f6c6f723a20234234424143303b0a09636f6c6f723a20233333333333333b0a7d0a0a2e696e707574626f783a686f766572207b0a09626f726465722d636f6c6f723a20233131413345413b0a7d0a0a2e696e707574626f783a666f637573207b0a09626f726465722d636f6c6f723a20233131413345413b0a09636f6c6f723a20233046343938373b0a7d0a0a2f2a20466f726d20627574746f6e207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a612e627574746f6e312c20696e7075742e627574746f6e312c20696e7075742e627574746f6e332c20612e627574746f6e322c20696e7075742e627574746f6e32207b0a09636f6c6f723a20233030303b0a096261636b67726f756e642d636f6c6f723a20234641464146413b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f62675f627574746f6e2e67696622293b0a7d0a0a612e627574746f6e312c20696e7075742e627574746f6e31207b0a09626f726465722d636f6c6f723a20233636363636363b0a7d0a0a696e7075742e627574746f6e33207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a7d0a0a2f2a20416c7465726e617469766520627574746f6e202a2f0a612e627574746f6e322c20696e7075742e627574746f6e322c20696e7075742e627574746f6e33207b0a09626f726465722d636f6c6f723a20233636363636363b0a7d0a0a2f2a203c613e20627574746f6e20696e20746865207374796c65206f662074686520666f726d20627574746f6e73202a2f0a612e627574746f6e312c20612e627574746f6e313a6c696e6b2c20612e627574746f6e313a766973697465642c20612e627574746f6e313a6163746976652c20612e627574746f6e322c20612e627574746f6e323a6c696e6b2c20612e627574746f6e323a766973697465642c20612e627574746f6e323a616374697665207b0a09636f6c6f723a20233030303030303b0a7d0a0a2f2a20486f76657220737461746573202a2f0a612e627574746f6e313a686f7665722c20696e7075742e627574746f6e313a686f7665722c20612e627574746f6e323a686f7665722c20696e7075742e627574746f6e323a686f7665722c20696e7075742e627574746f6e333a686f766572207b0a09626f726465722d636f6c6f723a20234243324134443b0a09636f6c6f723a20234243324134443b0a7d0a0a696e7075742e736561726368207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f74657874626f785f7365617263682e67696622293b0a7d0a0a696e7075742e64697361626c6564207b0a09636f6c6f723a20233636363636363b0a7d0a);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_topics`
--

CREATE TABLE IF NOT EXISTS `dc_topics` (
  `topic_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `icon_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_attachment` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `topic_approved` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `topic_reported` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `topic_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `topic_poster` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_time` int(11) unsigned NOT NULL DEFAULT '0',
  `topic_time_limit` int(11) unsigned NOT NULL DEFAULT '0',
  `topic_views` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_replies` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_replies_real` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_status` tinyint(3) NOT NULL DEFAULT '0',
  `topic_type` tinyint(3) NOT NULL DEFAULT '0',
  `topic_first_post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_first_poster_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_first_poster_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_last_poster_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_last_poster_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_poster_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_post_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_post_time` int(11) unsigned NOT NULL DEFAULT '0',
  `topic_last_view_time` int(11) unsigned NOT NULL DEFAULT '0',
  `topic_moved_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_bumped` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `topic_bumper` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `poll_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `poll_start` int(11) unsigned NOT NULL DEFAULT '0',
  `poll_length` int(11) unsigned NOT NULL DEFAULT '0',
  `poll_max_options` tinyint(4) NOT NULL DEFAULT '1',
  `poll_last_vote` int(11) unsigned NOT NULL DEFAULT '0',
  `poll_vote_change` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`topic_id`),
  KEY `forum_id` (`forum_id`),
  KEY `forum_id_type` (`forum_id`,`topic_type`),
  KEY `last_post_time` (`topic_last_post_time`),
  KEY `topic_approved` (`topic_approved`),
  KEY `forum_appr_last` (`forum_id`,`topic_approved`,`topic_last_post_id`),
  KEY `fid_time_moved` (`forum_id`,`topic_last_post_time`,`topic_moved_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=7 ;

--
-- Gegevens worden uitgevoerd voor tabel `dc_topics`
--

INSERT INTO `dc_topics` (`topic_id`, `forum_id`, `icon_id`, `topic_attachment`, `topic_approved`, `topic_reported`, `topic_title`, `topic_poster`, `topic_time`, `topic_time_limit`, `topic_views`, `topic_replies`, `topic_replies_real`, `topic_status`, `topic_type`, `topic_first_post_id`, `topic_first_poster_name`, `topic_first_poster_colour`, `topic_last_post_id`, `topic_last_poster_id`, `topic_last_poster_name`, `topic_last_poster_colour`, `topic_last_post_subject`, `topic_last_post_time`, `topic_last_view_time`, `topic_moved_id`, `topic_bumped`, `topic_bumper`, `poll_title`, `poll_start`, `poll_length`, `poll_max_options`, `poll_last_vote`, `poll_vote_change`) VALUES
(1, 2, 0, 0, 1, 0, 'Welkom bij phpBB3', 2, 1327581813, 0, 3, 0, 0, 0, 0, 1, 'nyxus', 'AA0000', 1, 2, 'nyxus', 'AA0000', 'Welkom bij phpBB3', 1327581813, 1341251213, 0, 0, 0, '', 0, 0, 1, 0, 0),
(2, 2, 0, 0, 1, 0, 'gatus test', 2, 1332762423, 0, 16, 2, 2, 0, 0, 2, 'nyxus', 'AA0000', 5, 2, 'nyxus', 'AA0000', 'Re: gatus test', 1341251804, 1341487219, 0, 0, 0, '', 0, 0, 0, 0, 0),
(3, 11, 0, 0, 1, 0, 'Toepassen in het live systeem', 2, 1341251743, 0, 3, 0, 0, 0, 0, 4, 'nyxus', 'AA0000', 4, 2, 'nyxus', 'AA0000', 'Toepassen in het live systeem', 1341251743, 1342000701, 0, 0, 0, '', 0, 0, 1, 0, 0),
(6, 11, 0, 0, 1, 0, 'Toekomst muziek activiteiten systeem', 2, 1341999658, 0, 2, 0, 0, 0, 0, 8, 'nyxus', 'AA0000', 8, 2, 'nyxus', 'AA0000', 'Toekomst muziek activiteiten systeem', 1341999658, 1342000778, 0, 0, 0, '', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_topics_posted`
--

CREATE TABLE IF NOT EXISTS `dc_topics_posted` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_posted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Gegevens worden uitgevoerd voor tabel `dc_topics_posted`
--

INSERT INTO `dc_topics_posted` (`user_id`, `topic_id`, `topic_posted`) VALUES
(2, 1, 1),
(2, 2, 1),
(2, 3, 1),
(2, 6, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_topics_track`
--

CREATE TABLE IF NOT EXISTS `dc_topics_track` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `mark_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`topic_id`),
  KEY `topic_id` (`topic_id`),
  KEY `forum_id` (`forum_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Gegevens worden uitgevoerd voor tabel `dc_topics_track`
--

INSERT INTO `dc_topics_track` (`user_id`, `topic_id`, `forum_id`, `mark_time`) VALUES
(2, 6, 11, 1342000778);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_topics_watch`
--

CREATE TABLE IF NOT EXISTS `dc_topics_watch` (
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `notify_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  KEY `topic_id` (`topic_id`),
  KEY `user_id` (`user_id`),
  KEY `notify_stat` (`notify_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_users`
--

CREATE TABLE IF NOT EXISTS `dc_users` (
  `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_type` tinyint(2) NOT NULL DEFAULT '0',
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '3',
  `user_permissions` mediumtext COLLATE utf8_bin NOT NULL,
  `user_perm_from` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_regdate` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `username_clean` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_password` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_passchg` int(11) unsigned NOT NULL DEFAULT '0',
  `user_pass_convert` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `user_email` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_email_hash` bigint(20) NOT NULL DEFAULT '0',
  `user_birthday` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_lastvisit` int(11) unsigned NOT NULL DEFAULT '0',
  `user_lastmark` int(11) unsigned NOT NULL DEFAULT '0',
  `user_lastpost_time` int(11) unsigned NOT NULL DEFAULT '0',
  `user_lastpage` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_last_confirm_key` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_last_search` int(11) unsigned NOT NULL DEFAULT '0',
  `user_warnings` tinyint(4) NOT NULL DEFAULT '0',
  `user_last_warning` int(11) unsigned NOT NULL DEFAULT '0',
  `user_login_attempts` tinyint(4) NOT NULL DEFAULT '0',
  `user_inactive_reason` tinyint(2) NOT NULL DEFAULT '0',
  `user_inactive_time` int(11) unsigned NOT NULL DEFAULT '0',
  `user_posts` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_lang` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_timezone` decimal(5,2) NOT NULL DEFAULT '0.00',
  `user_dst` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `user_dateformat` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT 'd M Y H:i',
  `user_style` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_rank` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_new_privmsg` int(4) NOT NULL DEFAULT '0',
  `user_unread_privmsg` int(4) NOT NULL DEFAULT '0',
  `user_last_privmsg` int(11) unsigned NOT NULL DEFAULT '0',
  `user_message_rules` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `user_full_folder` int(11) NOT NULL DEFAULT '-3',
  `user_emailtime` int(11) unsigned NOT NULL DEFAULT '0',
  `user_topic_show_days` smallint(4) unsigned NOT NULL DEFAULT '0',
  `user_topic_sortby_type` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 't',
  `user_topic_sortby_dir` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'd',
  `user_post_show_days` smallint(4) unsigned NOT NULL DEFAULT '0',
  `user_post_sortby_type` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 't',
  `user_post_sortby_dir` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'a',
  `user_notify` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `user_notify_pm` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_notify_type` tinyint(4) NOT NULL DEFAULT '0',
  `user_allow_pm` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_allow_viewonline` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_allow_viewemail` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_allow_massemail` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_options` int(11) unsigned NOT NULL DEFAULT '230271',
  `user_avatar` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_avatar_type` tinyint(2) NOT NULL DEFAULT '0',
  `user_avatar_width` smallint(4) unsigned NOT NULL DEFAULT '0',
  `user_avatar_height` smallint(4) unsigned NOT NULL DEFAULT '0',
  `user_sig` mediumtext COLLATE utf8_bin NOT NULL,
  `user_sig_bbcode_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_sig_bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_from` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_icq` varchar(15) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_aim` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_yim` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_msnm` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_jabber` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_website` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_occ` text COLLATE utf8_bin NOT NULL,
  `user_interests` text COLLATE utf8_bin NOT NULL,
  `user_actkey` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_newpasswd` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_form_salt` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_new` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_reminded` tinyint(4) NOT NULL DEFAULT '0',
  `user_reminded_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username_clean` (`username_clean`),
  KEY `user_birthday` (`user_birthday`),
  KEY `user_email_hash` (`user_email_hash`),
  KEY `user_type` (`user_type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=57 ;

--
-- Gegevens worden uitgevoerd voor tabel `dc_users`
--

INSERT INTO `dc_users` (`user_id`, `user_type`, `group_id`, `user_permissions`, `user_perm_from`, `user_ip`, `user_regdate`, `username`, `username_clean`, `user_password`, `user_passchg`, `user_pass_convert`, `user_email`, `user_email_hash`, `user_birthday`, `user_lastvisit`, `user_lastmark`, `user_lastpost_time`, `user_lastpage`, `user_last_confirm_key`, `user_last_search`, `user_warnings`, `user_last_warning`, `user_login_attempts`, `user_inactive_reason`, `user_inactive_time`, `user_posts`, `user_lang`, `user_timezone`, `user_dst`, `user_dateformat`, `user_style`, `user_rank`, `user_colour`, `user_new_privmsg`, `user_unread_privmsg`, `user_last_privmsg`, `user_message_rules`, `user_full_folder`, `user_emailtime`, `user_topic_show_days`, `user_topic_sortby_type`, `user_topic_sortby_dir`, `user_post_show_days`, `user_post_sortby_type`, `user_post_sortby_dir`, `user_notify`, `user_notify_pm`, `user_notify_type`, `user_allow_pm`, `user_allow_viewonline`, `user_allow_viewemail`, `user_allow_massemail`, `user_options`, `user_avatar`, `user_avatar_type`, `user_avatar_width`, `user_avatar_height`, `user_sig`, `user_sig_bbcode_uid`, `user_sig_bbcode_bitfield`, `user_from`, `user_icq`, `user_aim`, `user_yim`, `user_msnm`, `user_jabber`, `user_website`, `user_occ`, `user_interests`, `user_actkey`, `user_newpasswd`, `user_form_salt`, `user_new`, `user_reminded`, `user_reminded_time`) VALUES
(1, 2, 1, 0x30303030303030303030336b687261336e6b0a6931636a796f3030303030300a6931636a796f3030303030300a0a0a0a0a0a0a0a0a303030303030303030303030, 0, '', 1327581813, 'Anonymous', 'anonymous', '', 0, 0, '', 0, '', 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 0.00, 0, 'd M Y H:i', 1, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'd7b106f0bfe70d14', 1, 0, 0),
(2, 3, 5, 0x7a696b307a6a7a696b307a6a7a696b3078730a6931636a796f3030303030300a7a696b307a6a7a68623274630a0a0a0a0a0a3030303030303030303030300a0a6931636a796f3030303030300a7a696b307a693030303030300a7a696b307a69303030303030, 0, '192.168.178.17', 1327581813, 'nyxus', 'nyxus', '$H$9t7EaCr75Bc4dUu4X1lVKcM5cxuI8q1', 0, 0, 'gercoversloot@gmail.com', 245388321323, '', 1342002531, 0, 1341999658, 'adm/index.php?i=permissions&icat=16&mode=setting_user_local', '', 0, 0, 0, 0, 0, 0, 6, 'en', 1.00, 1, 'D d M Y, H:i', 1, 1, 'AA0000', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'def744de000a17dd', 0, 0, 0),
(3, 2, 6, '', 0, '', 1327581827, 'AdsBot [Google]', 'adsbot [google]', '', 1327581827, 0, '', 0, '', 0, 1327581827, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', 0.00, 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0dc67ce8e3a21993', 0, 0, 0),
(4, 2, 6, '', 0, '', 1327581827, 'Alexa [Bot]', 'alexa [bot]', '', 1327581827, 0, '', 0, '', 0, 1327581827, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', 0.00, 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '7e70edc6d5c26ebd', 0, 0, 0),
(5, 2, 6, '', 0, '', 1327581827, 'Alta Vista [Bot]', 'alta vista [bot]', '', 1327581827, 0, '', 0, '', 0, 1327581827, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', 0.00, 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'db73d733ad7d6ea1', 0, 0, 0),
(6, 2, 6, '', 0, '', 1327581827, 'Ask Jeeves [Bot]', 'ask jeeves [bot]', '', 1327581827, 0, '', 0, '', 0, 1327581827, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', 0.00, 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'c870dcc09f25a670', 0, 0, 0),
(7, 2, 6, '', 0, '', 1327581827, 'Baidu [Spider]', 'baidu [spider]', '', 1327581827, 0, '', 0, '', 0, 1327581827, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', 0.00, 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20b68beee5a1ecf6', 0, 0, 0),
(8, 2, 6, '', 0, '', 1327581827, 'Bing [Bot]', 'bing [bot]', '', 1327581827, 0, '', 0, '', 0, 1327581827, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', 0.00, 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '8e46bd70091c18a0', 0, 0, 0),
(9, 2, 6, '', 0, '', 1327581827, 'Exabot [Bot]', 'exabot [bot]', '', 1327581827, 0, '', 0, '', 0, 1327581827, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', 0.00, 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'fdc552030fe73461', 0, 0, 0),
(10, 2, 6, '', 0, '', 1327581827, 'FAST Enterprise [Crawler]', 'fast enterprise [crawler]', '', 1327581827, 0, '', 0, '', 0, 1327581827, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', 0.00, 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'b6229c60dfc64741', 0, 0, 0),
(11, 2, 6, '', 0, '', 1327581828, 'FAST WebCrawler [Crawler]', 'fast webcrawler [crawler]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', 0.00, 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '07affed6fc6b6fe8', 0, 0, 0),
(12, 2, 6, '', 0, '', 1327581828, 'Francis [Bot]', 'francis [bot]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', 0.00, 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '9b56e3e6caa96147', 0, 0, 0),
(13, 2, 6, '', 0, '', 1327581828, 'Gigabot [Bot]', 'gigabot [bot]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', 0.00, 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '900f557d4521c38c', 0, 0, 0),
(14, 2, 6, '', 0, '', 1327581828, 'Google Adsense [Bot]', 'google adsense [bot]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', 0.00, 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'b19789acff6c8bb6', 0, 0, 0),
(15, 2, 6, '', 0, '', 1327581828, 'Google Desktop', 'google desktop', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', 0.00, 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '7645994dfb3b6437', 0, 0, 0),
(16, 2, 6, '', 0, '', 1327581828, 'Google Feedfetcher', 'google feedfetcher', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', 0.00, 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'efad5c4cd3bfa7e4', 0, 0, 0),
(17, 2, 6, '', 0, '', 1327581828, 'Google [Bot]', 'google [bot]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', 0.00, 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '5f15b503dfcb4a1b', 0, 0, 0),
(18, 2, 6, '', 0, '', 1327581828, 'Heise IT-Markt [Crawler]', 'heise it-markt [crawler]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', 0.00, 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'c2a2441491488227', 0, 0, 0),
(19, 2, 6, '', 0, '', 1327581828, 'Heritrix [Crawler]', 'heritrix [crawler]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', 0.00, 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '5f5aa7d2b8f96d99', 0, 0, 0),
(20, 2, 6, '', 0, '', 1327581828, 'IBM Research [Bot]', 'ibm research [bot]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', 0.00, 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '47ff0d7e1ead181d', 0, 0, 0),
(21, 2, 6, '', 0, '', 1327581828, 'ICCrawler - ICjobs', 'iccrawler - icjobs', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', 0.00, 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '49f76cf98033c2e2', 0, 0, 0),
(22, 2, 6, '', 0, '', 1327581828, 'ichiro [Crawler]', 'ichiro [crawler]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', 0.00, 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'f1d471ba630b9758', 0, 0, 0),
(23, 2, 6, '', 0, '', 1327581828, 'Majestic-12 [Bot]', 'majestic-12 [bot]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', 0.00, 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '3da661edd831d6ec', 0, 0, 0),
(24, 2, 6, '', 0, '', 1327581828, 'Metager [Bot]', 'metager [bot]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', 0.00, 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '874c7b9a5b8e45b0', 0, 0, 0),
(25, 2, 6, '', 0, '', 1327581828, 'MSN NewsBlogs', 'msn newsblogs', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', 0.00, 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2788c40feab60312', 0, 0, 0),
(26, 2, 6, '', 0, '', 1327581828, 'MSN [Bot]', 'msn [bot]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', 0.00, 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'c9341b13dfa5aa1d', 0, 0, 0),
(27, 2, 6, '', 0, '', 1327581828, 'MSNbot Media', 'msnbot media', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', 0.00, 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'af65427f9def6694', 0, 0, 0),
(28, 2, 6, '', 0, '', 1327581828, 'NG-Search [Bot]', 'ng-search [bot]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', 0.00, 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1529c2a1e30e4927', 0, 0, 0),
(29, 2, 6, '', 0, '', 1327581828, 'Nutch [Bot]', 'nutch [bot]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', 0.00, 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '15504ff16a6b83b8', 0, 0, 0),
(30, 2, 6, '', 0, '', 1327581828, 'Nutch/CVS [Bot]', 'nutch/cvs [bot]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', 0.00, 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'b7b14984a5fb8dd0', 0, 0, 0),
(31, 2, 6, '', 0, '', 1327581828, 'OmniExplorer [Bot]', 'omniexplorer [bot]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', 0.00, 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '84a1cf6b8a0a7591', 0, 0, 0),
(32, 2, 6, '', 0, '', 1327581828, 'Online link [Validator]', 'online link [validator]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', 0.00, 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '27cfdc3bbe47adc2', 0, 0, 0),
(33, 2, 6, '', 0, '', 1327581828, 'psbot [Picsearch]', 'psbot [picsearch]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', 0.00, 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '9b8681ef84586210', 0, 0, 0),
(34, 2, 6, '', 0, '', 1327581828, 'Seekport [Bot]', 'seekport [bot]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', 0.00, 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1c71f14091970790', 0, 0, 0),
(35, 2, 6, '', 0, '', 1327581828, 'Sensis [Crawler]', 'sensis [crawler]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', 0.00, 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '65ca9fa8aa0d61cf', 0, 0, 0),
(36, 2, 6, '', 0, '', 1327581828, 'SEO Crawler', 'seo crawler', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', 0.00, 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'edf2fd498638ec96', 0, 0, 0),
(37, 2, 6, '', 0, '', 1327581828, 'Seoma [Crawler]', 'seoma [crawler]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', 0.00, 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '82ff21b571055127', 0, 0, 0),
(38, 2, 6, '', 0, '', 1327581828, 'SEOSearch [Crawler]', 'seosearch [crawler]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', 0.00, 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '576dc795a5726807', 0, 0, 0),
(39, 2, 6, '', 0, '', 1327581828, 'Snappy [Bot]', 'snappy [bot]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', 0.00, 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'f43b216a515d8522', 0, 0, 0),
(40, 2, 6, '', 0, '', 1327581828, 'Steeler [Crawler]', 'steeler [crawler]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', 0.00, 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '6646935abf66c24e', 0, 0, 0),
(41, 2, 6, '', 0, '', 1327581828, 'Synoo [Bot]', 'synoo [bot]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', 0.00, 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '44b2e3fecfc4414b', 0, 0, 0),
(42, 2, 6, '', 0, '', 1327581828, 'Telekom [Bot]', 'telekom [bot]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', 0.00, 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ace5f550f005363f', 0, 0, 0),
(43, 2, 6, '', 0, '', 1327581828, 'TurnitinBot [Bot]', 'turnitinbot [bot]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', 0.00, 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'a7c154d936bfb440', 0, 0, 0),
(44, 2, 6, '', 0, '', 1327581828, 'Voyager [Bot]', 'voyager [bot]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', 0.00, 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ae84e9c3bb746577', 0, 0, 0),
(45, 2, 6, '', 0, '', 1327581828, 'W3 [Sitesearch]', 'w3 [sitesearch]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', 0.00, 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0347c328e1097eb1', 0, 0, 0),
(46, 2, 6, '', 0, '', 1327581828, 'W3C [Linkcheck]', 'w3c [linkcheck]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', 0.00, 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '3c011b69125e90f2', 0, 0, 0),
(47, 2, 6, '', 0, '', 1327581828, 'W3C [Validator]', 'w3c [validator]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', 0.00, 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '158d4de273447a98', 0, 0, 0),
(48, 2, 6, '', 0, '', 1327581828, 'WiseNut [Bot]', 'wisenut [bot]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', 0.00, 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'e6cb80c9e6c48966', 0, 0, 0),
(49, 2, 6, '', 0, '', 1327581828, 'YaCy [Bot]', 'yacy [bot]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', 0.00, 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '4848640ca6672d88', 0, 0, 0),
(50, 2, 6, '', 0, '', 1327581828, 'Yahoo MMCrawler [Bot]', 'yahoo mmcrawler [bot]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', 0.00, 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'e3edd4db707fc6a1', 0, 0, 0),
(51, 2, 6, '', 0, '', 1327581828, 'Yahoo Slurp [Bot]', 'yahoo slurp [bot]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', 0.00, 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '9e471537392d294e', 0, 0, 0),
(52, 2, 6, '', 0, '', 1327581828, 'Yahoo [Bot]', 'yahoo [bot]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', 0.00, 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'cd0c8aa7abf125d7', 0, 0, 0),
(53, 2, 6, '', 0, '', 1327581829, 'YahooSeeker [Bot]', 'yahooseeker [bot]', '', 1327581829, 0, '', 0, '', 0, 1327581829, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', 0.00, 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'b7c9ee68e45e9877', 0, 0, 0),
(54, 0, 2, '', 0, '192.168.178.17', 1327933308, 'test', 'test', '$H$9.FVdBvUUGyvGoWARrXxP9uTDohrL31', 1327933308, 0, 'test@test.com', 67648593413, '', 1341925199, 1327933308, 1341925197, 'memberlist.php?mode=viewprofile&u=54', '', 0, 0, 0, 0, 0, 0, 0, 'nl', 1.00, 0, 'D d M Y, H:i', 1, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '13560766ac23d315', 1, 0, 0),
(55, 3, 5, '', 0, '192.168.178.20', 1332187746, 'wrdallinga', 'wrdallinga', '$H$9LNcLYLH7ZHFlDXjCXtiXvieNBzqD11', 1332187746, 0, 'w.r.dallinga@gmail.com', 65577414522, '', 1332192949, 1332187746, 0, 'adm/index.php?i=forums&icat=7&mode=manage&parent_id=0', '', 0, 0, 0, 0, 0, 0, 0, 'en', 1.00, 0, 'D d M Y, H:i', 1, 0, 'AA0000', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'bf203ad33551960e', 1, 0, 0),
(56, 3, 5, '', 0, '127.0.0.1', 1340751050, 'DigitaleCommissie', 'digitalecommissie', '$H$9h/kT6jQHfxsF/6TfXTc.sIbWtXyYH.', 1340751050, 0, 'dc@gumbo-millennium.nl', 45545798822, '', 1341925253, 1340751050, 1341925251, 'viewforum.php?f=2', '', 0, 0, 0, 0, 0, 0, 0, 'en', 0.00, 0, 'D d M Y, H:i', 1, 0, 'AA0000', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'c1e8e821981653f3', 1, 0, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_user_group`
--

CREATE TABLE IF NOT EXISTS `dc_user_group` (
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_leader` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `user_pending` tinyint(1) unsigned NOT NULL DEFAULT '1',
  KEY `group_id` (`group_id`),
  KEY `user_id` (`user_id`),
  KEY `group_leader` (`group_leader`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Gegevens worden uitgevoerd voor tabel `dc_user_group`
--

INSERT INTO `dc_user_group` (`group_id`, `user_id`, `group_leader`, `user_pending`) VALUES
(1, 1, 0, 0),
(2, 2, 0, 0),
(4, 2, 0, 0),
(5, 2, 1, 0),
(6, 3, 0, 0),
(6, 4, 0, 0),
(6, 5, 0, 0),
(6, 6, 0, 0),
(6, 7, 0, 0),
(6, 8, 0, 0),
(6, 9, 0, 0),
(6, 10, 0, 0),
(6, 11, 0, 0),
(6, 12, 0, 0),
(6, 13, 0, 0),
(6, 14, 0, 0),
(6, 15, 0, 0),
(6, 16, 0, 0),
(6, 17, 0, 0),
(6, 18, 0, 0),
(6, 19, 0, 0),
(6, 20, 0, 0),
(6, 21, 0, 0),
(6, 22, 0, 0),
(6, 23, 0, 0),
(6, 24, 0, 0),
(6, 25, 0, 0),
(6, 26, 0, 0),
(6, 27, 0, 0),
(6, 28, 0, 0),
(6, 29, 0, 0),
(6, 30, 0, 0),
(6, 31, 0, 0),
(6, 32, 0, 0),
(6, 33, 0, 0),
(6, 34, 0, 0),
(6, 35, 0, 0),
(6, 36, 0, 0),
(6, 37, 0, 0),
(6, 38, 0, 0),
(6, 39, 0, 0),
(6, 40, 0, 0),
(6, 41, 0, 0),
(6, 42, 0, 0),
(6, 43, 0, 0),
(6, 44, 0, 0),
(6, 45, 0, 0),
(6, 46, 0, 0),
(6, 47, 0, 0),
(6, 48, 0, 0),
(6, 49, 0, 0),
(6, 50, 0, 0),
(6, 51, 0, 0),
(6, 52, 0, 0),
(6, 53, 0, 0),
(2, 54, 0, 0),
(7, 54, 0, 0),
(2, 55, 0, 0),
(7, 55, 0, 0),
(5, 55, 1, 0),
(9, 2, 0, 0),
(2, 56, 0, 0),
(7, 56, 0, 0),
(5, 56, 1, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_warnings`
--

CREATE TABLE IF NOT EXISTS `dc_warnings` (
  `warning_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `log_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `warning_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`warning_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_words`
--

CREATE TABLE IF NOT EXISTS `dc_words` (
  `word_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `word` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `replacement` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`word_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dc_zebra`
--

CREATE TABLE IF NOT EXISTS `dc_zebra` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `zebra_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `friend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `foe` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`zebra_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structuur voor de view `dc_activity_comming_active`
--
DROP TABLE IF EXISTS `dc_activity_comming_active`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `dc_activity_comming_active` AS select `a`.`id` AS `id`,`a`.`name` AS `name`,`a`.`start_datetime` AS `startdate` from `dc_activity` `a` where ((`a`.`start_datetime` >= now()) and (`a`.`active` = 1));

-- --------------------------------------------------------

--
-- Structuur voor de view `dc_activity_full_list_active`
--
DROP TABLE IF EXISTS `dc_activity_full_list_active`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `dc_activity_full_list_active` AS select `a`.`id` AS `id`,`a`.`name` AS `name`,`a`.`start_datetime` AS `startdate` from `dc_activity` `a` where (`a`.`active` = 1);

--
-- Beperkingen voor gedumpte tabellen
--

--
-- Beperkingen voor tabel `dc_activity_chancelog`
--
ALTER TABLE `dc_activity_chancelog`
  ADD CONSTRAINT `fk_Activity_chance_Activity1` FOREIGN KEY (`activity_id`) REFERENCES `dc_activity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `dc_activity_enroll`
--
ALTER TABLE `dc_activity_enroll`
  ADD CONSTRAINT `fk_enroll_user_Activity1` FOREIGN KEY (`activity_id`) REFERENCES `dc_activity` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `dc_activity_errorlog`
--
ALTER TABLE `dc_activity_errorlog`
  ADD CONSTRAINT `fk_Activity_Error_Activity1` FOREIGN KEY (`activity_id`) REFERENCES `dc_activity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `dc_activity_groupacces`
--
ALTER TABLE `dc_activity_groupacces`
  ADD CONSTRAINT `fk_Activity_show_Activity1` FOREIGN KEY (`activity_id`) REFERENCES `dc_activity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `dc_activity_read`
--
ALTER TABLE `dc_activity_read`
  ADD CONSTRAINT `fk_Activaty_read_Activity1` FOREIGN KEY (`activity_id`) REFERENCES `dc_activity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `dc_activity_user_manage`
--
ALTER TABLE `dc_activity_user_manage`
  ADD CONSTRAINT `fk_Activity_show_Activity10` FOREIGN KEY (`activity_id`) REFERENCES `dc_activity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
